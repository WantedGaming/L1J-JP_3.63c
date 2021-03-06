/*
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

package jp.l1j.server.packets.client;

import java.util.Calendar;
import java.util.logging.Logger;
import jp.l1j.server.ClientThread;
import jp.l1j.server.datatables.CastleTable;
import jp.l1j.server.model.instance.L1PcInstance;
import jp.l1j.server.model.L1Clan;
import jp.l1j.server.model.L1World;
import jp.l1j.server.packets.server.S_WarTime;
import jp.l1j.server.templates.L1Castle;

// Referenced classes of package jp.l1j.server.clientpackets:
// ClientBasePacket

public class C_ChangeWarTime extends ClientBasePacket {

	private static final String C_CHANGE_WAR_TIME = "[C] C_ChangeWarTime";
	private static Logger _log = Logger.getLogger(C_ChangeWarTime.class
			.getName());

	public C_ChangeWarTime(byte abyte0[], ClientThread clientthread)
			throws Exception {
		super(abyte0);

		L1PcInstance player = clientthread.getActiveChar();

		L1Clan clan = L1World.getInstance().getClan(player.getClanName());
		if (clan != null) {
			int castle_id = clan.getCastleId();
			if (castle_id != 0) { // 城主クラン
				L1Castle l1castle = CastleTable.getInstance().getCastleTable(
						castle_id);
				Calendar cal = l1castle.getWarTime();
				player.sendPackets(new S_WarTime(cal));
			}
		}
	}

	@Override
	public String getType() {
		return C_CHANGE_WAR_TIME;
	}

}
