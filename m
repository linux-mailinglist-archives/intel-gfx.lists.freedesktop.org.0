Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1343051B637
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 04:57:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D590A10F557;
	Thu,  5 May 2022 02:57:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C847210F546;
 Thu,  5 May 2022 02:57:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C8ED1AA01E;
 Thu,  5 May 2022 02:57:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 05 May 2022 02:57:15 -0000
Message-ID: <165171943578.7658.13825561853192365927@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Make_fastset_not_suck_and_allow_seamless_M/N_ch?=
 =?utf-8?q?anges_=28rev4=29?=
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

Series: drm/i915: Make fastset not suck and allow seamless M/N changes (rev4)
URL   : https://patchwork.freedesktop.org/series/103491/
State : warning

== Summary ==

Error: dim checkpatch failed
c22b28cfffd3 drm/i915: Split shared dpll .get_dplls() into compute and get phases
-:194: CHECK:CAMELCASE: Avoid CamelCase: <SPLL_FREQ_1350MHz>
#194: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:1063:
+		SPLL_PLL_ENABLE | SPLL_FREQ_1350MHz | SPLL_REF_MUXED_SSC;

total: 0 errors, 0 warnings, 1 checks, 516 lines checked
879cc74477fa drm/i915: Do .crtc_compute_clock() earlier
35d18170c1ab drm/i915: Clean up DPLL related debugs
bd06d6413c61 drm/i915: Reassign DPLLs only for crtcs going throug .compute_config()
60c9a564c630 drm/i915: Extract PIPE_CONF_CHECK_TIMINGS()
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
6de8ad90b89b drm/i915: Extract PIPE_CONF_CHECK_RECT()
-:21: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#21: FILE: drivers/gpu/drm/i915/display/intel_display.c:6091:
+#define PIPE_CONF_CHECK_RECT(name) do { \
+	PIPE_CONF_CHECK_I(name.x1); \
+	PIPE_CONF_CHECK_I(name.x2); \
+	PIPE_CONF_CHECK_I(name.y1); \
+	PIPE_CONF_CHECK_I(name.y2); \
+} while (0)

total: 0 errors, 0 warnings, 1 checks, 40 lines checked
514a77ad0c48 drm/i915: Adjust intel_modeset_pipe_config() & co. calling convention
-:81: CHECK:SPACING: No space is necessary after a cast
#81: FILE: drivers/gpu/drm/i915/display/intel_display.c:5649:
+	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;

total: 0 errors, 0 warnings, 1 checks, 127 lines checked
99f57f1bbfb6 drm/i915: s/pipe_config/crtc_state/
-:92: CHECK:SPACING: No space is necessary after a cast
#92: FILE: drivers/gpu/drm/i915/display/intel_display.c:5649:
+	crtc_state->cpu_transcoder = (enum transcoder) crtc->pipe;

-:190: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#190: FILE: drivers/gpu/drm/i915/display/intel_display.c:5767:
+	crtc_state->dither = (crtc_state->pipe_bpp == 6*3) &&
 	                                               ^

total: 0 errors, 0 warnings, 2 checks, 169 lines checked
24b44ff8d3cc drm/i915: Improve modeset debugs
6736bc609e67 drm/i915: Extract intel_crtc_dotclock()
cf4444c0b6db drm/i915: Introduce struct iclkip_params
5f9ecd0a3455 drm/i915: Feed the DPLL output freq back into crtc_state
-:36: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#36: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:933:
+int intel_crtc_dotclock(const struct intel_crtc_state *crtc_state);

-:181: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#181: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1460:
+int intel_calculate_dotclock(const struct intel_crtc_state *crtc_state);

total: 0 errors, 2 warnings, 0 checks, 261 lines checked
b99e6189702a drm/i915: Compute clocks earlier
90e0b8e479b7 drm/i915: Skip FDI vs. dotclock sanity check during readout
b1ba2dd163dc drm/i915: Make M/N checks non-fuzzy
a21379dc8365 drm/i915: Make all clock checks non-fuzzy
c310a1210f63 drm/i915: Set active dpll early for icl+
86fafa6d29d8 drm/i915: Nuke fastet state copy hacks
9811567591ac drm/i915: Skip intel_modeset_pipe_config_late() if the pipe is not enabled
2c1626fe0bbb drm/i915: Check hw.enable and hw.active in intel_pipe_config_compare()
d699f5d194c8 drm/i915: Add intel_panel_highest_mode()
190d3ba0aa1f drm/i915: Allow M/N change during fastset on bdw+
d686b8dfd9db drm/i915: Require an exact DP link freq match for the DG2 PLL
b470ae0f272b drm/i915: Use a fixed N value always
fd6a9551796d drm/i915: Round to closest in M/N calculations
7b1987f4581b drm/i915: Round TMDS clock to nearest


