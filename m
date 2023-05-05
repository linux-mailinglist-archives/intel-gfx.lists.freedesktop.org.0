Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BADA26F8BC0
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 23:59:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5360F10E031;
	Fri,  5 May 2023 21:59:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 533D210E031;
 Fri,  5 May 2023 21:59:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4F5B8A00CC;
 Fri,  5 May 2023 21:59:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 05 May 2023 21:59:29 -0000
Message-ID: <168332396932.5019.1424503145072255051@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230503231048.432368-1-imre.deak@intel.com>
In-Reply-To: <20230503231048.432368-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/tc=3A_Add_a_workaround_for_an_IOM/TCSS_firmware_ha?=
 =?utf-8?q?ng_issue_=28rev10=29?=
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

Series: drm/i915/tc: Add a workaround for an IOM/TCSS firmware hang issue (rev10)
URL   : https://patchwork.freedesktop.org/series/117004/
State : warning

== Summary ==

Error: dim checkpatch failed
2da4ae991f31 drm/i915: Fix PIPEDMC disabling for a bigjoiner configuration
9291fb098130 drm/i915: Make the CRTC state consistent during sanitize-disabling
4c0426c4a41c drm/i915: Update connector atomic state before crtc sanitize-disabling
a5df2034ec26 drm/i915: Separate intel_crtc_disable_noatomic_begin/complete()
9cf778a8e13c drm/i915: Factor out set_encoder_for_connector()
799efd3afbc2 drm/i915: Add support for disabling any CRTCs during HW readout/sanitization
7c125d5e06b6 drm/i915/dp: Add link training debug and error printing helpers
-:34: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#34: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:30:
+#define LT_MSG_ARGS(_intel_dp, _dp_phy)	(_intel_dp)->attached_connector->base.base.id, \
+					(_intel_dp)->attached_connector->base.name, \
+					dp_to_dig_port(_intel_dp)->base.base.base.id, \
+					dp_to_dig_port(_intel_dp)->base.base.name, \
+					drm_dp_phy_name(_dp_phy)

-:34: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_intel_dp' - possible side-effects?
#34: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:30:
+#define LT_MSG_ARGS(_intel_dp, _dp_phy)	(_intel_dp)->attached_connector->base.base.id, \
+					(_intel_dp)->attached_connector->base.name, \
+					dp_to_dig_port(_intel_dp)->base.base.base.id, \
+					dp_to_dig_port(_intel_dp)->base.base.name, \
+					drm_dp_phy_name(_dp_phy)

-:40: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_intel_dp' - possible side-effects?
#40: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:36:
+#define lt_dbg(_intel_dp, _dp_phy, _format, ...) \
+	drm_dbg_kms(&dp_to_i915(_intel_dp)->drm, \
+		    LT_MSG_PREFIX _format, \
+		    LT_MSG_ARGS(_intel_dp, _dp_phy), ## __VA_ARGS__)

-:45: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_intel_dp' - possible side-effects?
#45: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:41:
+#define lt_err(_intel_dp, _dp_phy, _format, ...) \
+	drm_err(&dp_to_i915(_intel_dp)->drm, \
+		LT_MSG_PREFIX _format, \
+		LT_MSG_ARGS(_intel_dp, _dp_phy), ## __VA_ARGS__)

total: 1 errors, 0 warnings, 3 checks, 758 lines checked
131d3aed3ef4 drm/i915/dp: Convert link training error to debug message on disconnected sink
-:38: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_intel_dp' - possible side-effects?
#38: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:41:
+#define lt_err(_intel_dp, _dp_phy, _format, ...) do { \
+	if (intel_digital_port_connected(&dp_to_dig_port(_intel_dp)->base)) \
+		drm_err(&dp_to_i915(_intel_dp)->drm, \
+			LT_MSG_PREFIX _format, \
+			LT_MSG_ARGS(_intel_dp, _dp_phy), ## __VA_ARGS__); \
+	else \
+		lt_dbg(_intel_dp, _dp_phy, "Sink disconnected: " _format, ## __VA_ARGS__); \
+} while (0)

-:38: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_dp_phy' - possible side-effects?
#38: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:41:
+#define lt_err(_intel_dp, _dp_phy, _format, ...) do { \
+	if (intel_digital_port_connected(&dp_to_dig_port(_intel_dp)->base)) \
+		drm_err(&dp_to_i915(_intel_dp)->drm, \
+			LT_MSG_PREFIX _format, \
+			LT_MSG_ARGS(_intel_dp, _dp_phy), ## __VA_ARGS__); \
+	else \
+		lt_dbg(_intel_dp, _dp_phy, "Sink disconnected: " _format, ## __VA_ARGS__); \
+} while (0)

-:38: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_format' - possible side-effects?
#38: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:41:
+#define lt_err(_intel_dp, _dp_phy, _format, ...) do { \
+	if (intel_digital_port_connected(&dp_to_dig_port(_intel_dp)->base)) \
+		drm_err(&dp_to_i915(_intel_dp)->drm, \
+			LT_MSG_PREFIX _format, \
+			LT_MSG_ARGS(_intel_dp, _dp_phy), ## __VA_ARGS__); \
+	else \
+		lt_dbg(_intel_dp, _dp_phy, "Sink disconnected: " _format, ## __VA_ARGS__); \
+} while (0)

total: 0 errors, 0 warnings, 3 checks, 18 lines checked
b6f8b7b97812 drm/i915/dp: Prevent link training fallback on disconnected port
b4c2db0a9931 drm/i915/dp: Factor out intel_dp_get_active_pipes()
81d0a120e652 drm/i915: Factor out a helper for handling atomic modeset locks/state
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
https://lore.kernel.org/all/20210715184954.7794-2-ville.syrjala@linux.intel.com/

-:86: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#86: 
new file mode 100644

-:174: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ctx' - possible side-effects?
#174: FILE: drivers/gpu/drm/i915/display/intel_modeset_lock.h:28:
+#define intel_modeset_lock_ctx_retry(ctx, state, flags, ret) \
+	for (_intel_modeset_lock_begin((ctx), (state), (flags), &(ret)); \
+	     _intel_modeset_lock_loop(&(ret)); \
+	     _intel_modeset_lock_end((ctx), (state), &(ret)))

-:174: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'state' - possible side-effects?
#174: FILE: drivers/gpu/drm/i915/display/intel_modeset_lock.h:28:
+#define intel_modeset_lock_ctx_retry(ctx, state, flags, ret) \
+	for (_intel_modeset_lock_begin((ctx), (state), (flags), &(ret)); \
+	     _intel_modeset_lock_loop(&(ret)); \
+	     _intel_modeset_lock_end((ctx), (state), &(ret)))

-:174: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'ret' - possible side-effects?
#174: FILE: drivers/gpu/drm/i915/display/intel_modeset_lock.h:28:
+#define intel_modeset_lock_ctx_retry(ctx, state, flags, ret) \
+	for (_intel_modeset_lock_begin((ctx), (state), (flags), &(ret)); \
+	     _intel_modeset_lock_loop(&(ret)); \
+	     _intel_modeset_lock_end((ctx), (state), &(ret)))

total: 0 errors, 2 warnings, 3 checks, 125 lines checked
1743b7722aa8 drm/i915/tc: Reset TypeC PHYs left enabled in DP-alt mode after the sink disconnects
-:70: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'Closes:', use 'Link:' instead
#70: 
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5860

total: 0 errors, 1 warnings, 0 checks, 463 lines checked


