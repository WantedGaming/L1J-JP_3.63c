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

package jp.l1j.server.model.skill.executor;

import jp.l1j.server.model.L1Character;

public class L1Berserkers extends L1BuffSkillExecutorImpl {
	private static final int AC = 10;
	private static final int DMGUP = 5;
	private static final int HITUP = 2;

	@Override
	public void addEffect(L1Character user, L1Character target, int durationSeconds) {
		target.addAc(AC);
		target.addDmgup(DMGUP);
		target.addHitup(HITUP);
	}

	@Override
	public void removeEffect(L1Character target) {
		target.addAc(-AC);
		target.addDmgup(-DMGUP);
		target.addHitup(-HITUP);
	}
}
