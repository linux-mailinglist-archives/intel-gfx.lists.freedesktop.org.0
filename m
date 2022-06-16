Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2319054E158
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 15:03:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 600FB11A595;
	Thu, 16 Jun 2022 13:03:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 382B011A594;
 Thu, 16 Jun 2022 13:03:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2EE0FA0003;
 Thu, 16 Jun 2022 13:03:17 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 16 Jun 2022 13:03:17 -0000
Message-ID: <165538459716.17456.7252586930841805926@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1655372759.git.jani.nikula@intel.com>
In-Reply-To: <cover.1655372759.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_drm/i915/display=3A_split_out_verification=2C_h?=
 =?utf-8?q?w_readout_and_dump_from_intel=5Fdisplay=2Ec?=
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

Series: drm/i915: drm/i915/display: split out verification, hw readout and dump from intel_display.c
URL   : https://patchwork.freedesktop.org/series/105220/
State : warning

== Summary ==

Error: dim checkpatch failed
ab29d65b77e1 drm/i915/wm: move wm state verification to intel_pm.c
d7c89dd74933 drm/i915/dpll: move shared dpll state verification to intel_dpll_mgr.c
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
v2: intel_shared_dpll_verify_state -> intel_shared_dpll_state_verify (Ville)

total: 0 errors, 1 warnings, 0 checks, 215 lines checked
3fb0167385c7 drm/i915/mpllb: use I915_STATE_WARN() for state mismatch warnings
-:32: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__name' - possible side-effects?
#32: FILE: drivers/gpu/drm/i915/display/intel_display.c:6604:
+#define MPLLB_CHECK(__name)						\
+	I915_STATE_WARN(mpllb_sw_state->__name != mpllb_hw_state.__name,	\
+			"[CRTC:%d:%s] mismatch in MPLLB: %s (expected 0x%08x, found 0x%08x)", \
+			crtc->base.base.id, crtc->base.name,		\
+			__stringify(__name),				\
+			mpllb_sw_state->__name, mpllb_hw_state.__name)

-:32: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '__name' may be better as '(__name)' to avoid precedence issues
#32: FILE: drivers/gpu/drm/i915/display/intel_display.c:6604:
+#define MPLLB_CHECK(__name)						\
+	I915_STATE_WARN(mpllb_sw_state->__name != mpllb_hw_state.__name,	\
+			"[CRTC:%d:%s] mismatch in MPLLB: %s (expected 0x%08x, found 0x%08x)", \
+			crtc->base.base.id, crtc->base.name,		\
+			__stringify(__name),				\
+			mpllb_sw_state->__name, mpllb_hw_state.__name)

total: 0 errors, 0 warnings, 2 checks, 20 lines checked
2c6e11c59640 drm/i915/mpllb: move mpllb state check to intel_snps_phy.c
-:108: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__name' - possible side-effects?
#108: FILE: drivers/gpu/drm/i915/display/intel_snps_phy.c:835:
+#define MPLLB_CHECK(__name)						\
+	I915_STATE_WARN(mpllb_sw_state->__name != mpllb_hw_state.__name,	\
+			"[CRTC:%d:%s] mismatch in MPLLB: %s (expected 0x%08x, found 0x%08x)", \
+			crtc->base.base.id, crtc->base.name,		\
+			__stringify(__name),				\
+			mpllb_sw_state->__name, mpllb_hw_state.__name)

-:108: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '__name' may be better as '(__name)' to avoid precedence issues
#108: FILE: drivers/gpu/drm/i915/display/intel_snps_phy.c:835:
+#define MPLLB_CHECK(__name)						\
+	I915_STATE_WARN(mpllb_sw_state->__name != mpllb_hw_state.__name,	\
+			"[CRTC:%d:%s] mismatch in MPLLB: %s (expected 0x%08x, found 0x%08x)", \
+			crtc->base.base.id, crtc->base.name,		\
+			__stringify(__name),				\
+			mpllb_sw_state->__name, mpllb_hw_state.__name)

total: 0 errors, 0 warnings, 2 checks, 121 lines checked
2dc25c9664a8 drm/i915/display: split out modeset verification code
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:365: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#365: 
new file mode 100644

-:459: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#459: FILE: drivers/gpu/drm/i915/display/intel_modeset_verify.c:90:
+		int fdi_dotclock = intel_dotclock_calculate(intel_fdi_link_freq(dev_priv, pipe_config),

total: 0 errors, 2 warnings, 0 checks, 585 lines checked
7ed4eeeef068 drm/i915/display: split out crtc state dump to a separate file
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:27: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#27: 
new file mode 100644

-:90: ERROR:BRACKET_SPACE: space prohibited before open square bracket '['
#90: FILE: drivers/gpu/drm/i915/display/intel_crtc_state_dump.c:59:
+#define OUTPUT_TYPE(x) [INTEL_OUTPUT_ ## x] = #x

total: 1 errors, 1 warnings, 0 checks, 708 lines checked
6001a929f514 drm/i915/display: change who adds [] around crtc state dump context string
24883fc54e92 drm/i915/display: rename dev_priv -> i915 in crtc state dump
b8c70fc5cfcd drm/i915/display: split out hw state readout and sanitize
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:283: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#283: FILE: drivers/gpu/drm/i915/display/intel_display.c:7532:
+			intel_modeset_get_crtc_power_domains(new_crtc_state, &put_domains[crtc->pipe]);

-:913: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#913: 
new file mode 100644

-:1388: WARNING:LONG_LINE: line length of 112 exceeds 100 columns
#1388: FILE: drivers/gpu/drm/i915/display/intel_modeset_setup.c:471:
+								 intel_crtc_bigjoiner_slave_pipes(crtc_state)) {

-:1391: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#1391: FILE: drivers/gpu/drm/i915/display/intel_modeset_setup.c:474:
+					slave_crtc_state = to_intel_crtc_state(slave_crtc->base.state);

total: 0 errors, 4 warnings, 0 checks, 1609 lines checked
5a3aa1448abb drm/i915/display: some struct drm_i915_private *i915 conversions
bb615290f6ce drm/i915/display: convert modeset setup to struct drm_i915_private *i915


