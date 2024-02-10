Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66AED850483
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Feb 2024 14:32:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBB1810E60D;
	Sat, 10 Feb 2024 13:32:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 934DE10E60D;
 Sat, 10 Feb 2024 13:32:19 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_PLL_stat?=
 =?utf-8?q?e_check_stuff_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 10 Feb 2024 13:32:19 -0000
Message-ID: <170757193960.1129907.2438565134985903681@5338d5abeb45>
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

Series: drm/i915: PLL state check stuff (rev2)
URL   : https://patchwork.freedesktop.org/series/129735/
State : warning

== Summary ==

Error: dim checkpatch failed
6787bc9cd454 drm/i915: Fix PLL state check for gmch platforms
987dac5d8550 drm/i915: Include the CRTC name in the ELD buffer mismatch
69f42808f533 drm/i915: Reuse ibx_dump_hw_state() for gmch platforms
5c9498f06b0e drm/i915: Add PLL .compare_hw_state() vfunc
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
54a518629e96 drm/i915: Enable fastboot across the board


