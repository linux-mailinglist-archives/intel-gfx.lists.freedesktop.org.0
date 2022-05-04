Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DF651A32D
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 17:07:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4865C10ECE2;
	Wed,  4 May 2022 15:07:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9E15A10ED11;
 Wed,  4 May 2022 15:07:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9B3D0A00FD;
 Wed,  4 May 2022 15:07:18 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 04 May 2022 15:07:18 -0000
Message-ID: <165167683863.677.9436180010403668650@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Make_fastset_not_suck_and_allow_seamless_M/N_ch?=
 =?utf-8?q?anges_=28rev2=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Make fastset not suck and allow seamless M/N changes (rev2)
URL   : https://patchwork.freedesktop.org/series/103491/
State : warning

== Summary ==

Error: dim checkpatch failed
e071bdd7839d drm/i915: Split shared dpll .get_dplls() into compute and get phases
-:194: CHECK:CAMELCASE: Avoid CamelCase: <SPLL_FREQ_1350MHz>
#194: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:1063:
+		SPLL_PLL_ENABLE | SPLL_FREQ_1350MHz | SPLL_REF_MUXED_SSC;

total: 0 errors, 0 warnings, 1 checks, 516 lines checked
c986a8eec081 drm/i915: Do .crtc_compute_clock() earlier
af15247e6cc6 drm/i915: Clean up DPLL related debugs
5524d78e52c7 drm/i915: Reassign DPLLs only for crtcs going throug .compute_config()
19a1131cf0b7 drm/i915: Extract PIPE_CONF_CHECK_TIMINGS()
-:21: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#21: FILE: drivers/gpu/drm/i915/display/intel_display.c:6076:
+#define PIPE_CONF_CHECK_TIMINGS(name) do { \
+	PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
+	PIPE_CONF_CHECK_I(name.crtc_htotal); \
+	PIPE_CONF_CHECK_I(name.crtc_hblank_start); \
+	PIPE_CONF_CHECK_I(name.crtc_hblank_end); \
+	PIPE_CONF_CHECK_I(name.crtc_hsync_start); \
+	PIPE_CONF_CHECK_I(name.crtc_hsync_end); \
+	PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
+	PIPE_CONF_CHECK_I(name.crtc_vtotal); \
+	PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
+	PIPE_CONF_CHECK_I(name.crtc_vblank_end); \
+	PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
+	PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
+} while (0)

total: 0 errors, 0 warnings, 1 checks, 63 lines checked
f124e0c495ef drm/i915: Extract PIPE_CONF_CHECK_RECT()
-:21: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#21: FILE: drivers/gpu/drm/i915/display/intel_display.c:6091:
+#define PIPE_CONF_CHECK_RECT(name) do { \
+	PIPE_CONF_CHECK_I(name.x1); \
+	PIPE_CONF_CHECK_I(name.x2); \
+	PIPE_CONF_CHECK_I(name.y1); \
+	PIPE_CONF_CHECK_I(name.y2); \
+} while (0)

total: 0 errors, 0 warnings, 1 checks, 40 lines checked
bf14ee24645d drm/i915: Adjust intel_modeset_pipe_config() & co. calling convention
-:81: CHECK:SPACING: No space is necessary after a cast
#81: FILE: drivers/gpu/drm/i915/display/intel_display.c:5649:
+	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;

total: 0 errors, 0 warnings, 1 checks, 127 lines checked
9c1f612c7a53 drm/i915: s/pipe_config/crtc_state/
-:92: CHECK:SPACING: No space is necessary after a cast
#92: FILE: drivers/gpu/drm/i915/display/intel_display.c:5649:
+	crtc_state->cpu_transcoder = (enum transcoder) crtc->pipe;

-:190: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#190: FILE: drivers/gpu/drm/i915/display/intel_display.c:5767:
+	crtc_state->dither = (crtc_state->pipe_bpp == 6*3) &&
 	                                               ^

total: 0 errors, 0 warnings, 2 checks, 169 lines checked
0b3d6909d086 drm/i915: Improve modeset debugs
a34799f2c9d5 drm/i915: Extract intel_crtc_dotclock()
ca638562f4a7 drm/i915: Introduce struct iclkip_params
3d3e8c895f11 drm/i915: Feed the DPLL output freq back into crtc_state
-:36: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#36: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:933:
+int intel_crtc_dotclock(const struct intel_crtc_state *crtc_state);

-:181: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#181: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1460:
+int intel_calculate_dotclock(const struct intel_crtc_state *crtc_state);

total: 0 errors, 2 warnings, 0 checks, 261 lines checked
daeb16028fe9 drm/i915: Compute clocks earlier
da303a89e10e drm/i915: Skip FDI vs. dotclock sanity check during readout
2d347b951e01 drm/i915: Make M/N checks non-fuzzy
a758ec2669c5 drm/i915: Make all clock checks non-fuzzy
9796263531df drm/i915: Set active dpll early for icl+
5eeb6716be8f drm/i915: Nuke fastet state copy hacks
4afe7158b868 drm/i915: Skip intel_modeset_pipe_config_late() if the pipe is not enabled
5e4f5952612c drm/i915: Check hw.enable and hw.active in intel_pipe_config_compare()
5f9c7c33e952 drm/i915: Add intel_panel_highest_mode()
a83f45006a03 drm/i915: Allow M/N change during fastset on bdw+
ce552dfa0ce1 drm/i915: Require an exact DP link freq match for the DG2 PLL
36dcfffc51fd drm/i915: Use a fixed N value always
fe0376ddca68 drm/i915: Round to closest in M/N calculations
f82c7d74a445 drm/i915: Round TMDS clock to nearest


