Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E2784FD3A
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 20:57:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D819E10EAE5;
	Fri,  9 Feb 2024 19:57:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F354210E1D2;
 Fri,  9 Feb 2024 19:57:06 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_PLL_stat?=
 =?utf-8?q?e_check_stuff?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 09 Feb 2024 19:57:06 -0000
Message-ID: <170750862699.1129906.927649290297291961@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240209183809.16887-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240209183809.16887-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: PLL state check stuff
URL   : https://patchwork.freedesktop.org/series/129735/
State : warning

== Summary ==

Error: dim checkpatch failed
40b158c2ea84 drm/i915: Fix PLL state check for gmch platforms
c9b044f993a8 drm/i915: Include the CRTC name in the ELD buffer mismatch
61f1c4fa93b0 drm/i915: Reuse ibx_dump_hw_state() for gmch platforms
a6768a7eee59 drm/i915: Add PLL .compare_hw_state() vfunc
-:62: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#62: FILE: drivers/gpu/drm/i915/display/intel_display.c:5050:
+#define PIPE_CONF_CHECK_PLL(name) do { \
+	if (!intel_dpll_compare_hw_state(dev_priv, &current_config->name, \
+					 &pipe_config->name)) { \
+		pipe_config_pll_mismatch(fastset, crtc, __stringify(name), \
+					 &current_config->name, \
+					 &pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)

-:62: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#62: FILE: drivers/gpu/drm/i915/display/intel_display.c:5050:
+#define PIPE_CONF_CHECK_PLL(name) do { \
+	if (!intel_dpll_compare_hw_state(dev_priv, &current_config->name, \
+					 &pipe_config->name)) { \
+		pipe_config_pll_mismatch(fastset, crtc, __stringify(name), \
+					 &current_config->name, \
+					 &pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)

-:72: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#72: FILE: drivers/gpu/drm/i915/display/intel_display.c:5060:
+#define PIPE_CONF_CHECK_TIMINGS(name) do {     \
 	PIPE_CONF_CHECK_I(name.crtc_hdisplay); \
 	PIPE_CONF_CHECK_I(name.crtc_htotal); \
 	PIPE_CONF_CHECK_I(name.crtc_hblank_start); \

-:333: WARNING:UNNECESSARY_ELSE: else is not generally useful after a break or return
#333: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:4552:
+		return i915->display.dpll.mgr->compare_hw_state(a, b);
+	} else {

total: 0 errors, 1 warnings, 3 checks, 308 lines checked
8444ed41ce37 drm/i915: Enable fastboot across the board


