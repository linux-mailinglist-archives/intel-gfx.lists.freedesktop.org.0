Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4658254C9CB
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jun 2022 15:30:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97FD210E990;
	Wed, 15 Jun 2022 13:30:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1DECF10E965;
 Wed, 15 Jun 2022 13:30:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0339FA00A0;
 Wed, 15 Jun 2022 13:30:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 15 Jun 2022 13:30:14 -0000
Message-ID: <165529981498.14600.1896510365961705604@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1655297182.git.jani.nikula@intel.com>
In-Reply-To: <cover.1655297182.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_split_out_verifation=2C_compare_and_dum?=
 =?utf-8?q?p_from_intel=5Fdisplay=2Ec?=
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

Series: drm/i915/display: split out verifation, compare and dump from intel_display.c
URL   : https://patchwork.freedesktop.org/series/105156/
State : warning

== Summary ==

Error: dim checkpatch failed
e82e76f8105d drm/i915/wm: move wm state verification to intel_pm.c
63ac5d8ed86c drm/i915/dpll: move shared dpll state verification to intel_dpll_mgr.c
2e52ab5d8db4 drm/i915/mpllb: use I915_STATE_WARN() for state mismatch warnings
-:28: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__name' - possible side-effects?
#28: FILE: drivers/gpu/drm/i915/display/intel_display.c:6604:
+#define MPLLB_CHECK(__name)						\
+	I915_STATE_WARN(mpllb_sw_state->__name != mpllb_hw_state.__name,	\
+			"[CRTC:%d:%s] mismatch in MPLLB: %s (expected 0x%08x, found 0x%08x)", \
+			crtc->base.base.id, crtc->base.name,		\
+			__stringify(__name),				\
+			mpllb_sw_state->__name, mpllb_hw_state.__name)

-:28: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '__name' may be better as '(__name)' to avoid precedence issues
#28: FILE: drivers/gpu/drm/i915/display/intel_display.c:6604:
+#define MPLLB_CHECK(__name)						\
+	I915_STATE_WARN(mpllb_sw_state->__name != mpllb_hw_state.__name,	\
+			"[CRTC:%d:%s] mismatch in MPLLB: %s (expected 0x%08x, found 0x%08x)", \
+			crtc->base.base.id, crtc->base.name,		\
+			__stringify(__name),				\
+			mpllb_sw_state->__name, mpllb_hw_state.__name)

total: 0 errors, 0 warnings, 2 checks, 20 lines checked
97bfe3a05e43 drm/i915/mpllb: move mpllb state check to intel_snps_phy.c
-:102: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__name' - possible side-effects?
#102: FILE: drivers/gpu/drm/i915/display/intel_snps_phy.c:835:
+#define MPLLB_CHECK(__name)						\
+	I915_STATE_WARN(mpllb_sw_state->__name != mpllb_hw_state.__name,	\
+			"[CRTC:%d:%s] mismatch in MPLLB: %s (expected 0x%08x, found 0x%08x)", \
+			crtc->base.base.id, crtc->base.name,		\
+			__stringify(__name),				\
+			mpllb_sw_state->__name, mpllb_hw_state.__name)

-:102: CHECK:MACRO_ARG_PRECEDENCE: Macro argument '__name' may be better as '(__name)' to avoid precedence issues
#102: FILE: drivers/gpu/drm/i915/display/intel_snps_phy.c:835:
+#define MPLLB_CHECK(__name)						\
+	I915_STATE_WARN(mpllb_sw_state->__name != mpllb_hw_state.__name,	\
+			"[CRTC:%d:%s] mismatch in MPLLB: %s (expected 0x%08x, found 0x%08x)", \
+			crtc->base.base.id, crtc->base.name,		\
+			__stringify(__name),				\
+			mpllb_sw_state->__name, mpllb_hw_state.__name)

total: 0 errors, 0 warnings, 2 checks, 121 lines checked
874079603084 drm/i915/display: split out modeset verification code
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:359: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#359: 
new file mode 100644

-:453: WARNING:LONG_LINE: line length of 103 exceeds 100 columns
#453: FILE: drivers/gpu/drm/i915/display/intel_modeset_verify.c:90:
+		int fdi_dotclock = intel_dotclock_calculate(intel_fdi_link_freq(dev_priv, pipe_config),

total: 0 errors, 2 warnings, 0 checks, 585 lines checked
c55b940f4017 drm/i915/display: split out pipe config compare to a separate file
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:640: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#640: 
new file mode 100644

-:822: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#822: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:178:
+#define PIPE_CONF_CHECK_X(name) do { \
+	if (current_config->name != pipe_config->name) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected 0x%08x, found 0x%08x)", \
+				     current_config->name, \
+				     pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)

-:822: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#822: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:178:
+#define PIPE_CONF_CHECK_X(name) do { \
+	if (current_config->name != pipe_config->name) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected 0x%08x, found 0x%08x)", \
+				     current_config->name, \
+				     pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)

-:832: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#832: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:188:
+#define PIPE_CONF_CHECK_X_WITH_MASK(name, mask) do { \
+	if ((current_config->name & (mask)) != (pipe_config->name & (mask))) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected 0x%08x, found 0x%08x)", \
+				     current_config->name & (mask), \
+				     pipe_config->name & (mask)); \
+		ret = false; \
+	} \
+} while (0)

-:832: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#832: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:188:
+#define PIPE_CONF_CHECK_X_WITH_MASK(name, mask) do { \
+	if ((current_config->name & (mask)) != (pipe_config->name & (mask))) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected 0x%08x, found 0x%08x)", \
+				     current_config->name & (mask), \
+				     pipe_config->name & (mask)); \
+		ret = false; \
+	} \
+} while (0)

-:832: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'mask' - possible side-effects?
#832: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:188:
+#define PIPE_CONF_CHECK_X_WITH_MASK(name, mask) do { \
+	if ((current_config->name & (mask)) != (pipe_config->name & (mask))) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected 0x%08x, found 0x%08x)", \
+				     current_config->name & (mask), \
+				     pipe_config->name & (mask)); \
+		ret = false; \
+	} \
+} while (0)

-:842: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#842: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:198:
+#define PIPE_CONF_CHECK_I(name) do { \
+	if (current_config->name != pipe_config->name) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected %i, found %i)", \
+				     current_config->name, \
+				     pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)

-:842: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#842: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:198:
+#define PIPE_CONF_CHECK_I(name) do { \
+	if (current_config->name != pipe_config->name) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected %i, found %i)", \
+				     current_config->name, \
+				     pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)

-:852: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#852: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:208:
+#define PIPE_CONF_CHECK_BOOL(name) do { \
+	if (current_config->name != pipe_config->name) { \
+		pipe_config_mismatch(fastset, crtc,  __stringify(name), \
+				     "(expected %s, found %s)", \
+				     str_yes_no(current_config->name), \
+				     str_yes_no(pipe_config->name)); \
+		ret = false; \
+	} \
+} while (0)

-:852: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#852: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:208:
+#define PIPE_CONF_CHECK_BOOL(name) do { \
+	if (current_config->name != pipe_config->name) { \
+		pipe_config_mismatch(fastset, crtc,  __stringify(name), \
+				     "(expected %s, found %s)", \
+				     str_yes_no(current_config->name), \
+				     str_yes_no(pipe_config->name)); \
+		ret = false; \
+	} \
+} while (0)

-:867: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#867: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:223:
+#define PIPE_CONF_CHECK_BOOL_INCOMPLETE(name) do { \
+	if (!fixup_inherited || (!current_config->name && !pipe_config->name)) { \
+		PIPE_CONF_CHECK_BOOL(name); \
+	} else { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "unable to verify whether state matches exactly, forcing modeset (expected %s, found %s)", \
+				     str_yes_no(current_config->name), \
+				     str_yes_no(pipe_config->name)); \
+		ret = false; \
+	} \
+} while (0)

-:867: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#867: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:223:
+#define PIPE_CONF_CHECK_BOOL_INCOMPLETE(name) do { \
+	if (!fixup_inherited || (!current_config->name && !pipe_config->name)) { \
+		PIPE_CONF_CHECK_BOOL(name); \
+	} else { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "unable to verify whether state matches exactly, forcing modeset (expected %s, found %s)", \
+				     str_yes_no(current_config->name), \
+				     str_yes_no(pipe_config->name)); \
+		ret = false; \
+	} \
+} while (0)

-:872: WARNING:LONG_LINE: line length of 129 exceeds 100 columns
#872: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:228:
+				     "unable to verify whether state matches exactly, forcing modeset (expected %s, found %s)", \

-:879: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#879: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:235:
+#define PIPE_CONF_CHECK_P(name) do { \
+	if (current_config->name != pipe_config->name) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected %p, found %p)", \
+				     current_config->name, \
+				     pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)

-:879: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#879: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:235:
+#define PIPE_CONF_CHECK_P(name) do { \
+	if (current_config->name != pipe_config->name) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected %p, found %p)", \
+				     current_config->name, \
+				     pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)

-:889: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#889: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:245:
+#define PIPE_CONF_CHECK_M_N(name) do { \
+	if (!intel_compare_link_m_n(&current_config->name, \
+				    &pipe_config->name,\
+				    !fastset)) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected tu %i data %i/%i link %i/%i, " \
+				     "found tu %i, data %i/%i link %i/%i)", \
+				     current_config->name.tu, \
+				     current_config->name.data_m, \
+				     current_config->name.data_n, \
+				     current_config->name.link_m, \
+				     current_config->name.link_n, \
+				     pipe_config->name.tu, \
+				     pipe_config->name.data_m, \
+				     pipe_config->name.data_n, \
+				     pipe_config->name.link_m, \
+				     pipe_config->name.link_n); \
+		ret = false; \
+	} \
+} while (0)

-:889: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#889: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:245:
+#define PIPE_CONF_CHECK_M_N(name) do { \
+	if (!intel_compare_link_m_n(&current_config->name, \
+				    &pipe_config->name,\
+				    !fastset)) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected tu %i data %i/%i link %i/%i, " \
+				     "found tu %i, data %i/%i link %i/%i)", \
+				     current_config->name.tu, \
+				     current_config->name.data_m, \
+				     current_config->name.data_n, \
+				     current_config->name.link_m, \
+				     current_config->name.link_n, \
+				     pipe_config->name.tu, \
+				     pipe_config->name.data_m, \
+				     pipe_config->name.data_n, \
+				     pipe_config->name.link_m, \
+				     pipe_config->name.link_n); \
+		ret = false; \
+	} \
+} while (0)

-:910: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#910: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:266:
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

-:925: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#925: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:281:
+#define PIPE_CONF_CHECK_RECT(name) do { \
+	PIPE_CONF_CHECK_I(name.x1); \
+	PIPE_CONF_CHECK_I(name.x2); \
+	PIPE_CONF_CHECK_I(name.y1); \
+	PIPE_CONF_CHECK_I(name.y2); \
+} while (0)

-:937: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#937: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:293:
+#define PIPE_CONF_CHECK_M_N_ALT(name, alt_name) do { \
+	if (!intel_compare_link_m_n(&current_config->name, \
+				    &pipe_config->name, !fastset) && \
+	    !intel_compare_link_m_n(&current_config->alt_name, \
+				    &pipe_config->name, !fastset)) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected tu %i data %i/%i link %i/%i, " \
+				     "or tu %i data %i/%i link %i/%i, " \
+				     "found tu %i, data %i/%i link %i/%i)", \
+				     current_config->name.tu, \
+				     current_config->name.data_m, \
+				     current_config->name.data_n, \
+				     current_config->name.link_m, \
+				     current_config->name.link_n, \
+				     current_config->alt_name.tu, \
+				     current_config->alt_name.data_m, \
+				     current_config->alt_name.data_n, \
+				     current_config->alt_name.link_m, \
+				     current_config->alt_name.link_n, \
+				     pipe_config->name.tu, \
+				     pipe_config->name.data_m, \
+				     pipe_config->name.data_n, \
+				     pipe_config->name.link_m, \
+				     pipe_config->name.link_n); \
+		ret = false; \
+	} \
+} while (0)

-:937: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#937: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:293:
+#define PIPE_CONF_CHECK_M_N_ALT(name, alt_name) do { \
+	if (!intel_compare_link_m_n(&current_config->name, \
+				    &pipe_config->name, !fastset) && \
+	    !intel_compare_link_m_n(&current_config->alt_name, \
+				    &pipe_config->name, !fastset)) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected tu %i data %i/%i link %i/%i, " \
+				     "or tu %i data %i/%i link %i/%i, " \
+				     "found tu %i, data %i/%i link %i/%i)", \
+				     current_config->name.tu, \
+				     current_config->name.data_m, \
+				     current_config->name.data_n, \
+				     current_config->name.link_m, \
+				     current_config->name.link_n, \
+				     current_config->alt_name.tu, \
+				     current_config->alt_name.data_m, \
+				     current_config->alt_name.data_n, \
+				     current_config->alt_name.link_m, \
+				     current_config->alt_name.link_n, \
+				     pipe_config->name.tu, \
+				     pipe_config->name.data_m, \
+				     pipe_config->name.data_n, \
+				     pipe_config->name.link_m, \
+				     pipe_config->name.link_n); \
+		ret = false; \
+	} \
+} while (0)

-:937: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'alt_name' - possible side-effects?
#937: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:293:
+#define PIPE_CONF_CHECK_M_N_ALT(name, alt_name) do { \
+	if (!intel_compare_link_m_n(&current_config->name, \
+				    &pipe_config->name, !fastset) && \
+	    !intel_compare_link_m_n(&current_config->alt_name, \
+				    &pipe_config->name, !fastset)) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected tu %i data %i/%i link %i/%i, " \
+				     "or tu %i data %i/%i link %i/%i, " \
+				     "found tu %i, data %i/%i link %i/%i)", \
+				     current_config->name.tu, \
+				     current_config->name.data_m, \
+				     current_config->name.data_n, \
+				     current_config->name.link_m, \
+				     current_config->name.link_n, \
+				     current_config->alt_name.tu, \
+				     current_config->alt_name.data_m, \
+				     current_config->alt_name.data_n, \
+				     current_config->alt_name.link_m, \
+				     current_config->alt_name.link_n, \
+				     pipe_config->name.tu, \
+				     pipe_config->name.data_m, \
+				     pipe_config->name.data_n, \
+				     pipe_config->name.link_m, \
+				     pipe_config->name.link_n); \
+		ret = false; \
+	} \
+} while (0)

-:937: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'alt_name' may be better as '(alt_name)' to avoid precedence issues
#937: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:293:
+#define PIPE_CONF_CHECK_M_N_ALT(name, alt_name) do { \
+	if (!intel_compare_link_m_n(&current_config->name, \
+				    &pipe_config->name, !fastset) && \
+	    !intel_compare_link_m_n(&current_config->alt_name, \
+				    &pipe_config->name, !fastset)) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected tu %i data %i/%i link %i/%i, " \
+				     "or tu %i data %i/%i link %i/%i, " \
+				     "found tu %i, data %i/%i link %i/%i)", \
+				     current_config->name.tu, \
+				     current_config->name.data_m, \
+				     current_config->name.data_n, \
+				     current_config->name.link_m, \
+				     current_config->name.link_n, \
+				     current_config->alt_name.tu, \
+				     current_config->alt_name.data_m, \
+				     current_config->alt_name.data_n, \
+				     current_config->alt_name.link_m, \
+				     current_config->alt_name.link_n, \
+				     pipe_config->name.tu, \
+				     pipe_config->name.data_m, \
+				     pipe_config->name.data_n, \
+				     pipe_config->name.link_m, \
+				     pipe_config->name.link_n); \
+		ret = false; \
+	} \
+} while (0)

-:965: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#965: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:321:
+#define PIPE_CONF_CHECK_FLAGS(name, mask) do { \
+	if ((current_config->name ^ pipe_config->name) & (mask)) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(%x) (expected %i, found %i)", \
+				     (mask), \
+				     current_config->name & (mask), \
+				     pipe_config->name & (mask)); \
+		ret = false; \
+	} \
+} while (0)

-:965: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#965: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:321:
+#define PIPE_CONF_CHECK_FLAGS(name, mask) do { \
+	if ((current_config->name ^ pipe_config->name) & (mask)) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(%x) (expected %i, found %i)", \
+				     (mask), \
+				     current_config->name & (mask), \
+				     pipe_config->name & (mask)); \
+		ret = false; \
+	} \
+} while (0)

-:965: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'mask' - possible side-effects?
#965: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:321:
+#define PIPE_CONF_CHECK_FLAGS(name, mask) do { \
+	if ((current_config->name ^ pipe_config->name) & (mask)) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(%x) (expected %i, found %i)", \
+				     (mask), \
+				     current_config->name & (mask), \
+				     pipe_config->name & (mask)); \
+		ret = false; \
+	} \
+} while (0)

-:976: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#976: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:332:
+#define PIPE_CONF_CHECK_CLOCK_FUZZY(name) do { \
+	if (!intel_fuzzy_clock_check(current_config->name, pipe_config->name)) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected %i, found %i)", \
+				     current_config->name, \
+				     pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)

-:976: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name' may be better as '(name)' to avoid precedence issues
#976: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:332:
+#define PIPE_CONF_CHECK_CLOCK_FUZZY(name) do { \
+	if (!intel_fuzzy_clock_check(current_config->name, pipe_config->name)) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name), \
+				     "(expected %i, found %i)", \
+				     current_config->name, \
+				     pipe_config->name); \
+		ret = false; \
+	} \
+} while (0)

-:986: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#986: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:342:
+#define PIPE_CONF_CHECK_INFOFRAME(name) do { \
+	if (!intel_compare_infoframe(&current_config->infoframes.name, \
+				     &pipe_config->infoframes.name)) { \
+		pipe_config_infoframe_mismatch(dev_priv, fastset, __stringify(name), \
+					       &current_config->infoframes.name, \
+					       &pipe_config->infoframes.name); \
+		ret = false; \
+	} \
+} while (0)

-:996: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name' - possible side-effects?
#996: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:352:
+#define PIPE_CONF_CHECK_DP_VSC_SDP(name) do { \
+	if (!current_config->has_psr && !pipe_config->has_psr && \
+	    !intel_compare_dp_vsc_sdp(&current_config->infoframes.name, \
+				      &pipe_config->infoframes.name)) { \
+		pipe_config_dp_vsc_sdp_mismatch(dev_priv, fastset, __stringify(name), \
+						&current_config->infoframes.name, \
+						&pipe_config->infoframes.name); \
+		ret = false; \
+	} \
+} while (0)

-:1007: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name1' - possible side-effects?
#1007: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:363:
+#define PIPE_CONF_CHECK_COLOR_LUT(name1, name2, bit_precision) do { \
+	if (current_config->name1 != pipe_config->name1) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name1), \
+				"(expected %i, found %i, won't compare lut values)", \
+				current_config->name1, \
+				pipe_config->name1); \
+		ret = false;\
+	} else { \
+		if (!intel_color_lut_equal(current_config->name2, \
+					pipe_config->name2, pipe_config->name1, \
+					bit_precision)) { \
+			pipe_config_mismatch(fastset, crtc, __stringify(name2), \
+					"hw_state doesn't match sw_state"); \
+			ret = false; \
+		} \
+	} \
+} while (0)

-:1007: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name1' may be better as '(name1)' to avoid precedence issues
#1007: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:363:
+#define PIPE_CONF_CHECK_COLOR_LUT(name1, name2, bit_precision) do { \
+	if (current_config->name1 != pipe_config->name1) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name1), \
+				"(expected %i, found %i, won't compare lut values)", \
+				current_config->name1, \
+				pipe_config->name1); \
+		ret = false;\
+	} else { \
+		if (!intel_color_lut_equal(current_config->name2, \
+					pipe_config->name2, pipe_config->name1, \
+					bit_precision)) { \
+			pipe_config_mismatch(fastset, crtc, __stringify(name2), \
+					"hw_state doesn't match sw_state"); \
+			ret = false; \
+		} \
+	} \
+} while (0)

-:1007: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'name2' - possible side-effects?
#1007: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:363:
+#define PIPE_CONF_CHECK_COLOR_LUT(name1, name2, bit_precision) do { \
+	if (current_config->name1 != pipe_config->name1) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name1), \
+				"(expected %i, found %i, won't compare lut values)", \
+				current_config->name1, \
+				pipe_config->name1); \
+		ret = false;\
+	} else { \
+		if (!intel_color_lut_equal(current_config->name2, \
+					pipe_config->name2, pipe_config->name1, \
+					bit_precision)) { \
+			pipe_config_mismatch(fastset, crtc, __stringify(name2), \
+					"hw_state doesn't match sw_state"); \
+			ret = false; \
+		} \
+	} \
+} while (0)

-:1007: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'name2' may be better as '(name2)' to avoid precedence issues
#1007: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_compare.c:363:
+#define PIPE_CONF_CHECK_COLOR_LUT(name1, name2, bit_precision) do { \
+	if (current_config->name1 != pipe_config->name1) { \
+		pipe_config_mismatch(fastset, crtc, __stringify(name1), \
+				"(expected %i, found %i, won't compare lut values)", \
+				current_config->name1, \
+				pipe_config->name1); \
+		ret = false;\
+	} else { \
+		if (!intel_color_lut_equal(current_config->name2, \
+					pipe_config->name2, pipe_config->name1, \
+					bit_precision)) { \
+			pipe_config_mismatch(fastset, crtc, __stringify(name2), \
+					"hw_state doesn't match sw_state"); \
+			ret = false; \
+		} \
+	} \
+} while (0)

total: 0 errors, 2 warnings, 32 checks, 1204 lines checked
7acf4374c30b drm/i915/display: split out pipe config dump to a separate file
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:412: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#412: 
new file mode 100644

-:475: ERROR:BRACKET_SPACE: space prohibited before open square bracket '['
#475: FILE: drivers/gpu/drm/i915/display/intel_pipe_config_dump.c:59:
+#define OUTPUT_TYPE(x) [INTEL_OUTPUT_ ## x] = #x

total: 1 errors, 1 warnings, 0 checks, 704 lines checked


