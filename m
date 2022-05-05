Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDE851B532
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 03:21:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4B5F10F973;
	Thu,  5 May 2022 01:21:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5722810F973;
 Thu,  5 May 2022 01:21:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 55597AADD5;
 Thu,  5 May 2022 01:21:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 05 May 2022 01:21:09 -0000
Message-ID: <165171366932.7659.16914887322336933338@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Make_fastset_not_suck_and_allow_seamless_M/N_ch?=
 =?utf-8?q?anges_=28rev3=29?=
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

Series: drm/i915: Make fastset not suck and allow seamless M/N changes (rev3)
URL   : https://patchwork.freedesktop.org/series/103491/
State : warning

== Summary ==

Error: dim checkpatch failed
231785cfe6ad drm/i915: Split shared dpll .get_dplls() into compute and get phases
-:194: CHECK:CAMELCASE: Avoid CamelCase: <SPLL_FREQ_1350MHz>
#194: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:1063:
+		SPLL_PLL_ENABLE | SPLL_FREQ_1350MHz | SPLL_REF_MUXED_SSC;

total: 0 errors, 0 warnings, 1 checks, 516 lines checked
149c650e3c92 drm/i915: Do .crtc_compute_clock() earlier
fa07341e9078 drm/i915: Clean up DPLL related debugs
cd38c6f33ca7 drm/i915: Reassign DPLLs only for crtcs going throug .compute_config()
2bfa7d6f7335 drm/i915: Extract PIPE_CONF_CHECK_TIMINGS()
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
ff6cab1d620b drm/i915: Extract PIPE_CONF_CHECK_RECT()
-:21: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#21: FILE: drivers/gpu/drm/i915/display/intel_display.c:6091:
+#define PIPE_CONF_CHECK_RECT(name) do { \
+	PIPE_CONF_CHECK_I(name.x1); \
+	PIPE_CONF_CHECK_I(name.x2); \
+	PIPE_CONF_CHECK_I(name.y1); \
+	PIPE_CONF_CHECK_I(name.y2); \
+} while (0)

total: 0 errors, 0 warnings, 1 checks, 40 lines checked
fb7078b9e786 drm/i915: Adjust intel_modeset_pipe_config() & co. calling convention
-:81: CHECK:SPACING: No space is necessary after a cast
#81: FILE: drivers/gpu/drm/i915/display/intel_display.c:5649:
+	pipe_config->cpu_transcoder = (enum transcoder) crtc->pipe;

total: 0 errors, 0 warnings, 1 checks, 127 lines checked
fc7e80cb709d drm/i915: s/pipe_config/crtc_state/
-:92: CHECK:SPACING: No space is necessary after a cast
#92: FILE: drivers/gpu/drm/i915/display/intel_display.c:5649:
+	crtc_state->cpu_transcoder = (enum transcoder) crtc->pipe;

-:190: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#190: FILE: drivers/gpu/drm/i915/display/intel_display.c:5767:
+	crtc_state->dither = (crtc_state->pipe_bpp == 6*3) &&
 	                                               ^

total: 0 errors, 0 warnings, 2 checks, 169 lines checked
27b6922af13b drm/i915: Improve modeset debugs
38e979baf682 drm/i915: Extract intel_crtc_dotclock()
8b15f2405ad0 drm/i915: Introduce struct iclkip_params
f61c5b50fa28 drm/i915: Feed the DPLL output freq back into crtc_state
-:36: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#36: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:933:
+int intel_crtc_dotclock(const struct intel_crtc_state *crtc_state);

-:181: WARNING:AVOID_EXTERNS: externs should be avoided in .c files
#181: FILE: drivers/gpu/drm/i915/display/intel_dpll.c:1460:
+int intel_calculate_dotclock(const struct intel_crtc_state *crtc_state);

total: 0 errors, 2 warnings, 0 checks, 261 lines checked
07c0d384f102 drm/i915: Compute clocks earlier
ccbe5abf3ae6 drm/i915: Skip FDI vs. dotclock sanity check during readout
83ec228a297a drm/i915: Make M/N checks non-fuzzy
91e845fa1ecd drm/i915: Make all clock checks non-fuzzy
c27f33a67564 drm/i915: Set active dpll early for icl+
d9544b07e2ba drm/i915: Nuke fastet state copy hacks
477d1ccd6fac drm/i915: Skip intel_modeset_pipe_config_late() if the pipe is not enabled
5827bb6bd270 drm/i915: Check hw.enable and hw.active in intel_pipe_config_compare()
5c18a117f889 drm/i915: Add intel_panel_highest_mode()
7e294526263c drm/i915: Allow M/N change during fastset on bdw+
0d94627a7bee drm/i915: Require an exact DP link freq match for the DG2 PLL
13b567379cec drm/i915: Use a fixed N value always
47089a91ef2e drm/i915: Round to closest in M/N calculations
4776e9b1dc55 drm/i915: Round TMDS clock to nearest


