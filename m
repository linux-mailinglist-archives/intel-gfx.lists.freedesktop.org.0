Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EFF398E36C
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2024 21:29:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6860E10E0F6;
	Wed,  2 Oct 2024 19:29:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1539510E0F6;
 Wed,  2 Oct 2024 19:29:11 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm=3A_Treewide_plan?=
 =?utf-8?q?e/crtc_legacy_state_sweeping?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 02 Oct 2024 19:29:11 -0000
Message-ID: <172789735108.1165098.15034335927333331939@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241002182200.15363-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241002182200.15363-1-ville.syrjala@linux.intel.com>
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Reply-To: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm: Treewide plane/crtc legacy state sweeping
URL   : https://patchwork.freedesktop.org/series/139445/
State : warning

== Summary ==

Error: dim checkpatch failed
7a2c47a03bf1 drm: Move plane->{fb, old_fb, crtc} to legacy sub-structure
-:403: CHECK:BRACES: braces {} should be used on all arms of this statement
#403: FILE: drivers/gpu/drm/drm_crtc_helper.c:644:
+		if (set->crtc->primary->legacy.fb == NULL) {
[...]
-		} else if (set->fb->format != set->crtc->primary->fb->format) {
[...]
 			mode_changed = true;
[...]

-:403: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!set->crtc->primary->legacy.fb"
#403: FILE: drivers/gpu/drm/drm_crtc_helper.c:644:
+		if (set->crtc->primary->legacy.fb == NULL) {

-:529: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#529: FILE: drivers/gpu/drm/drm_plane.c:843:
+	else if (!plane->state && plane->legacy.crtc && drm_lease_held(file_priv, plane->legacy.crtc->base.id))

-:597: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "plane->legacy.crtc"
#597: FILE: drivers/gpu/drm/drm_plane.c:1181:
+	WARN_ON(plane->legacy.crtc != crtc && plane->legacy.crtc != NULL);

-:663: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!crtc->primary->legacy.fb"
#663: FILE: drivers/gpu/drm/gma500/cdv_intel_display.c:465:
+	if (crtc->primary->legacy.fb == NULL || !gma_crtc->active)

-:782: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "!crtc->primary->legacy.fb"
#782: FILE: drivers/gpu/drm/gma500/psb_intel_display.c:115:
+	if (crtc->primary->legacy.fb == NULL) {

total: 0 errors, 1 warnings, 5 checks, 1006 lines checked
e2357259a1b8 drm: Move crtc->{x, y, mode, enabled} to legacy sub-structure
-:113: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'crtc->legacy.mode.clock == test_crtc->legacy.mode.clock'
#113: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_pll.c:351:
+			if ((crtc->legacy.mode.clock == test_crtc->legacy.mode.clock) &&
 			    (adjusted_clock == test_adjusted_clock) &&
 			    (amdgpu_crtc->ss_enabled == test_amdgpu_crtc->ss_enabled) &&
 			    (test_amdgpu_crtc->pll_id != ATOM_PPLL_INVALID))

-:113: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'adjusted_clock == test_adjusted_clock'
#113: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_pll.c:351:
+			if ((crtc->legacy.mode.clock == test_crtc->legacy.mode.clock) &&
 			    (adjusted_clock == test_adjusted_clock) &&
 			    (amdgpu_crtc->ss_enabled == test_amdgpu_crtc->ss_enabled) &&
 			    (test_amdgpu_crtc->pll_id != ATOM_PPLL_INVALID))

-:113: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'amdgpu_crtc->ss_enabled == test_amdgpu_crtc->ss_enabled'
#113: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_pll.c:351:
+			if ((crtc->legacy.mode.clock == test_crtc->legacy.mode.clock) &&
 			    (adjusted_clock == test_adjusted_clock) &&
 			    (amdgpu_crtc->ss_enabled == test_amdgpu_crtc->ss_enabled) &&
 			    (test_amdgpu_crtc->pll_id != ATOM_PPLL_INVALID))

-:113: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'test_amdgpu_crtc->pll_id != ATOM_PPLL_INVALID'
#113: FILE: drivers/gpu/drm/amd/amdgpu/amdgpu_pll.c:351:
+			if ((crtc->legacy.mode.clock == test_crtc->legacy.mode.clock) &&
 			    (adjusted_clock == test_adjusted_clock) &&
 			    (amdgpu_crtc->ss_enabled == test_amdgpu_crtc->ss_enabled) &&
 			    (test_amdgpu_crtc->pll_id != ATOM_PPLL_INVALID))

-:338: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#338: FILE: drivers/gpu/drm/amd/amdgpu/dce_v6_0.c:1095:
+		mode1 = &adev->mode_info.crtcs[i+1]->base.legacy.mode;
 		                                ^

-:456: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#456: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:8502:
+	if (!(old_conn_state->crtc && old_conn_state->crtc->legacy.enabled) &&
+		new_conn_state->crtc && new_conn_state->crtc->legacy.enabled &&

-:481: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#481: FILE: drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c:9884:
+			update_stream_scaling_settings(&dm_new_con_state->base.crtc->legacy.mode,
 					dm_new_con_state, dm_new_crtc_state->stream);

-:506: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#506: FILE: drivers/gpu/drm/amd/pm/amdgpu_dpm_internal.c:61:
+			if (crtc->legacy.enabled && amdgpu_crtc->enabled && amdgpu_crtc->hw_mode.clock) {

-:515: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#515: FILE: drivers/gpu/drm/amd/pm/amdgpu_dpm_internal.c:87:
+			if (crtc->legacy.enabled && amdgpu_crtc->enabled && amdgpu_crtc->hw_mode.clock) {

-:978: WARNING:LONG_LINE: line length of 111 exceeds 100 columns
#978: FILE: drivers/gpu/drm/gma500/cdv_intel_hdmi.c:194:
+							      encoder->crtc->legacy.x, encoder->crtc->legacy.y,

-:1138: ERROR:CODE_INDENT: code indent should use tabs where possible
#1138: FILE: drivers/gpu/drm/imx/lcdc/imx-lcdc.c:162:
+^I^I               crtc->legacy.mode.hdisplay >> 4) |$

-:1138: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1138: FILE: drivers/gpu/drm/imx/lcdc/imx-lcdc.c:162:
+	framesize = FIELD_PREP(IMX21LCDC_LSR_XMAX,
+		               crtc->legacy.mode.hdisplay >> 4) |

-:1147: ERROR:CODE_INDENT: code indent should use tabs where possible
#1147: FILE: drivers/gpu/drm/imx/lcdc/imx-lcdc.c:168:
+^I^I          crtc->legacy.mode.hsync_start - crtc->legacy.mode.hdisplay - 1) |$

-:1147: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1147: FILE: drivers/gpu/drm/imx/lcdc/imx-lcdc.c:168:
+	lhcr = FIELD_PREP(IMX21LCDC_LHCR_HFPORCH,
+		          crtc->legacy.mode.hsync_start - crtc->legacy.mode.hdisplay - 1) |

-:1149: ERROR:CODE_INDENT: code indent should use tabs where possible
#1149: FILE: drivers/gpu/drm/imx/lcdc/imx-lcdc.c:170:
+^I^I           crtc->legacy.mode.hsync_end - crtc->legacy.mode.hsync_start - 1) |$

-:1151: ERROR:CODE_INDENT: code indent should use tabs where possible
#1151: FILE: drivers/gpu/drm/imx/lcdc/imx-lcdc.c:172:
+^I^I           crtc->legacy.mode.htotal - crtc->legacy.mode.hsync_end - 3);$

-:1159: ERROR:CODE_INDENT: code indent should use tabs where possible
#1159: FILE: drivers/gpu/drm/imx/lcdc/imx-lcdc.c:177:
+^I^I          crtc->legacy.mode.vsync_start - crtc->legacy.mode.vdisplay) |$

-:1159: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1159: FILE: drivers/gpu/drm/imx/lcdc/imx-lcdc.c:177:
+	lvcr = FIELD_PREP(IMX21LCDC_LVCR_VFPORCH,
+		          crtc->legacy.mode.vsync_start - crtc->legacy.mode.vdisplay) |

-:1161: ERROR:CODE_INDENT: code indent should use tabs where possible
#1161: FILE: drivers/gpu/drm/imx/lcdc/imx-lcdc.c:179:
+^I^I           crtc->legacy.mode.vsync_end - crtc->legacy.mode.vsync_start) |$

-:1163: ERROR:CODE_INDENT: code indent should use tabs where possible
#1163: FILE: drivers/gpu/drm/imx/lcdc/imx-lcdc.c:181:
+^I^I           crtc->legacy.mode.vtotal - crtc->legacy.mode.vsync_end);$

-:1283: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1283: FILE: drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c:223:
+		if (tmp_crtc->legacy.enabled &&
 			curr_client_type ==

-:1384: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#1384: FILE: drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c:845:
+	uint32_t xres = crtc->legacy.mode.hdisplay;

-:1385: CHECK:PREFER_KERNEL_TYPES: Prefer kernel type 'u32' over 'uint32_t'
#1385: FILE: drivers/gpu/drm/msm/disp/mdp5/mdp5_crtc.c:846:
+	uint32_t yres = crtc->legacy.mode.vdisplay;

-:1545: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'crtc->legacy.mode.clock == test_crtc->legacy.mode.clock'
#1545: FILE: drivers/gpu/drm/radeon/atombios_crtc.c:1815:
+			if ((crtc->legacy.mode.clock == test_crtc->legacy.mode.clock) &&
 			    (adjusted_clock == test_adjusted_clock) &&
 			    (radeon_crtc->ss_enabled == test_radeon_crtc->ss_enabled) &&
 			    (test_radeon_crtc->pll_id != ATOM_PPLL_INVALID))

-:1545: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'adjusted_clock == test_adjusted_clock'
#1545: FILE: drivers/gpu/drm/radeon/atombios_crtc.c:1815:
+			if ((crtc->legacy.mode.clock == test_crtc->legacy.mode.clock) &&
 			    (adjusted_clock == test_adjusted_clock) &&
 			    (radeon_crtc->ss_enabled == test_radeon_crtc->ss_enabled) &&
 			    (test_radeon_crtc->pll_id != ATOM_PPLL_INVALID))

-:1545: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'radeon_crtc->ss_enabled == test_radeon_crtc->ss_enabled'
#1545: FILE: drivers/gpu/drm/radeon/atombios_crtc.c:1815:
+			if ((crtc->legacy.mode.clock == test_crtc->legacy.mode.clock) &&
 			    (adjusted_clock == test_adjusted_clock) &&
 			    (radeon_crtc->ss_enabled == test_radeon_crtc->ss_enabled) &&
 			    (test_radeon_crtc->pll_id != ATOM_PPLL_INVALID))

-:1545: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'test_radeon_crtc->pll_id != ATOM_PPLL_INVALID'
#1545: FILE: drivers/gpu/drm/radeon/atombios_crtc.c:1815:
+			if ((crtc->legacy.mode.clock == test_crtc->legacy.mode.clock) &&
 			    (adjusted_clock == test_adjusted_clock) &&
 			    (radeon_crtc->ss_enabled == test_radeon_crtc->ss_enabled) &&
 			    (test_radeon_crtc->pll_id != ATOM_PPLL_INVALID))

-:1717: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#1717: FILE: drivers/gpu/drm/radeon/r600_dpm.c:165:
+			if (crtc->legacy.enabled && radeon_crtc->enabled && radeon_crtc->hw_mode.clock) {

-:1726: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#1726: FILE: drivers/gpu/drm/radeon/r600_dpm.c:191:
+			if (crtc->legacy.enabled && radeon_crtc->enabled && radeon_crtc->hw_mode.clock) {

-:1847: WARNING:LONG_LINE: line length of 132 exceeds 100 columns
#1847: FILE: drivers/gpu/drm/radeon/radeon_display.c:556:
+				int tile_addr = (((crtc->legacy.y >> 3) * pitch_pixels +  crtc->legacy.x) >> (8 - byteshift)) << 11;

-:1848: WARNING:LONG_LINE: line length of 120 exceeds 100 columns
#1848: FILE: drivers/gpu/drm/radeon/radeon_display.c:557:
+				base += tile_addr + ((crtc->legacy.x << byteshift) % 256) + ((crtc->legacy.y % 8) << 8);

-:1848: WARNING:LINE_SPACING: Missing a blank line after declarations
#1848: FILE: drivers/gpu/drm/radeon/radeon_display.c:557:
+				int tile_addr = (((crtc->legacy.y >> 3) * pitch_pixels +  crtc->legacy.x) >> (8 - byteshift)) << 11;
+				base += tile_addr + ((crtc->legacy.x << byteshift) % 256) + ((crtc->legacy.y % 8) << 8);

-:1927: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'radeon_crtc->crtc_id == 1'
#1927: FILE: drivers/gpu/drm/radeon/radeon_legacy_encoders.c:1541:
+		if ((radeon_crtc->crtc_id == 1) && crtc->legacy.enabled) {

total: 7 errors, 8 warnings, 18 checks, 2123 lines checked


