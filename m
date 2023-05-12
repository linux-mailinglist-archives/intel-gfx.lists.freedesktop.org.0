Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4C57010CE
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 23:17:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF87D10E055;
	Fri, 12 May 2023 21:17:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8EE9F10E055;
 Fri, 12 May 2023 21:17:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 87ABCA47E9;
 Fri, 12 May 2023 21:17:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 12 May 2023 21:17:07 -0000
Message-ID: <168392622752.26099.1051128739576577575@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230510103131.1618266-1-imre.deak@intel.com>
In-Reply-To: <20230510103131.1618266-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/tc=3A_Add_a_workaround_for_an_IOM/TCSS_firmware_ha?=
 =?utf-8?q?ng_issue_=28rev13=29?=
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

Series: drm/i915/tc: Add a workaround for an IOM/TCSS firmware hang issue (rev13)
URL   : https://patchwork.freedesktop.org/series/117004/
State : warning

== Summary ==

Error: dim checkpatch failed
60bf22a36d66 drm/i915: Fix PIPEDMC disabling for a bigjoiner configuration
27a983bdef3f drm/i915: Add helpers to reference/unreference a DPLL for a CRTC
67301cdfc6bc drm/i915: Make the CRTC state consistent during sanitize-disabling
623cdeeb6183 drm/i915: Update connector atomic state before crtc sanitize-disabling
d81c1ac81d72 drm/i915: Separate intel_crtc_disable_noatomic_begin/complete()
99046a224e99 drm/i915: Factor out set_encoder_for_connector()
7e41b9a1010b drm/i915: Add support for disabling any CRTCs during HW readout/sanitization
86bba6efdb76 drm/i915/dp: Add link training debug and error printing helpers
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
faf11aab775b drm/i915/dp: Convert link training error to debug message on disconnected sink
-:39: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_intel_dp' - possible side-effects?
#39: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:41:
+#define lt_err(_intel_dp, _dp_phy, _format, ...) do { \
+	if (intel_digital_port_connected(&dp_to_dig_port(_intel_dp)->base)) \
+		drm_err(&dp_to_i915(_intel_dp)->drm, \
+			LT_MSG_PREFIX _format, \
+			LT_MSG_ARGS(_intel_dp, _dp_phy), ## __VA_ARGS__); \
+	else \
+		lt_dbg(_intel_dp, _dp_phy, "Sink disconnected: " _format, ## __VA_ARGS__); \
+} while (0)

-:39: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_dp_phy' - possible side-effects?
#39: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:41:
+#define lt_err(_intel_dp, _dp_phy, _format, ...) do { \
+	if (intel_digital_port_connected(&dp_to_dig_port(_intel_dp)->base)) \
+		drm_err(&dp_to_i915(_intel_dp)->drm, \
+			LT_MSG_PREFIX _format, \
+			LT_MSG_ARGS(_intel_dp, _dp_phy), ## __VA_ARGS__); \
+	else \
+		lt_dbg(_intel_dp, _dp_phy, "Sink disconnected: " _format, ## __VA_ARGS__); \
+} while (0)

-:39: CHECK:MACRO_ARG_REUSE: Macro argument reuse '_format' - possible side-effects?
#39: FILE: drivers/gpu/drm/i915/display/intel_dp_link_training.c:41:
+#define lt_err(_intel_dp, _dp_phy, _format, ...) do { \
+	if (intel_digital_port_connected(&dp_to_dig_port(_intel_dp)->base)) \
+		drm_err(&dp_to_i915(_intel_dp)->drm, \
+			LT_MSG_PREFIX _format, \
+			LT_MSG_ARGS(_intel_dp, _dp_phy), ## __VA_ARGS__); \
+	else \
+		lt_dbg(_intel_dp, _dp_phy, "Sink disconnected: " _format, ## __VA_ARGS__); \
+} while (0)

total: 0 errors, 0 warnings, 3 checks, 18 lines checked
98e16a313580 drm/i915/dp: Prevent link training fallback on disconnected port
3af810d57bfe drm/i915/dp: Factor out intel_dp_get_active_pipes()
85ba493a190a drm/i915: Factor out a helper for handling atomic modeset locks/state
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
04de39421d4c drm/i915/tc: Call TypeC port flush_work/cleanup without modeset locks held
19bc19f6003a drm/i915/tc: Reset TypeC PHYs left enabled in DP-alt mode after the sink disconnects


