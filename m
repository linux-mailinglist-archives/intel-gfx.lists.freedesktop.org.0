Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B1B8398AF
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 19:52:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9218810E44C;
	Tue, 23 Jan 2024 18:52:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 381BD10E073;
 Tue, 23 Jan 2024 18:52:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Add_Disp?=
 =?utf-8?q?lay_Port_tunnel_BW_allocation_support?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 23 Jan 2024 18:52:15 -0000
Message-ID: <170603593522.683882.13537884523131179124@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240123102850.390126-1-imre.deak@intel.com>
In-Reply-To: <20240123102850.390126-1-imre.deak@intel.com>
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

Series: drm/i915: Add Display Port tunnel BW allocation support
URL   : https://patchwork.freedesktop.org/series/129082/
State : warning

== Summary ==

Error: dim checkpatch failed
26db77226283 drm/dp: Add drm_dp_max_dprx_data_rate()
12093a39bda8 drm/dp: Add support for DP tunneling
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:79: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#79: 
new file mode 100644

-:109: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#109: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:26:
+#define for_each_new_group_in_state(__state, __new_group_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_private_objs; \
+	     (__i)++) \
+		for_each_if ((__state)->private_objs[__i].ptr && \
+			     is_dp_tunnel_private_obj((__state)->private_objs[__i].ptr) && \
+			     ((__new_group_state) = \
+				to_group_state((__state)->private_objs[__i].new_state), 1))

-:109: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__state' - possible side-effects?
#109: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:26:
+#define for_each_new_group_in_state(__state, __new_group_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_private_objs; \
+	     (__i)++) \
+		for_each_if ((__state)->private_objs[__i].ptr && \
+			     is_dp_tunnel_private_obj((__state)->private_objs[__i].ptr) && \
+			     ((__new_group_state) = \
+				to_group_state((__state)->private_objs[__i].new_state), 1))

-:109: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i' - possible side-effects?
#109: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:26:
+#define for_each_new_group_in_state(__state, __new_group_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_private_objs; \
+	     (__i)++) \
+		for_each_if ((__state)->private_objs[__i].ptr && \
+			     is_dp_tunnel_private_obj((__state)->private_objs[__i].ptr) && \
+			     ((__new_group_state) = \
+				to_group_state((__state)->private_objs[__i].new_state), 1))

-:113: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#113: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:30:
+		for_each_if ((__state)->private_objs[__i].ptr && \

-:118: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#118: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:35:
+#define for_each_old_group_in_state(__state, __old_group_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_private_objs; \
+	     (__i)++) \
+		for_each_if ((__state)->private_objs[__i].ptr && \
+			     is_dp_tunnel_private_obj((__state)->private_objs[__i].ptr) && \
+			     ((__old_group_state) = \
+				to_group_state((__state)->private_objs[__i].old_state), 1))

-:118: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__state' - possible side-effects?
#118: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:35:
+#define for_each_old_group_in_state(__state, __old_group_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_private_objs; \
+	     (__i)++) \
+		for_each_if ((__state)->private_objs[__i].ptr && \
+			     is_dp_tunnel_private_obj((__state)->private_objs[__i].ptr) && \
+			     ((__old_group_state) = \
+				to_group_state((__state)->private_objs[__i].old_state), 1))

-:118: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i' - possible side-effects?
#118: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:35:
+#define for_each_old_group_in_state(__state, __old_group_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_private_objs; \
+	     (__i)++) \
+		for_each_if ((__state)->private_objs[__i].ptr && \
+			     is_dp_tunnel_private_obj((__state)->private_objs[__i].ptr) && \
+			     ((__old_group_state) = \
+				to_group_state((__state)->private_objs[__i].old_state), 1))

-:122: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#122: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:39:
+		for_each_if ((__state)->private_objs[__i].ptr && \

-:140: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__bw' - possible side-effects?
#140: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:57:
+#define DPTUN_BW_ARG(__bw) ((__bw) < 0 ? (__bw) : kbytes_to_mbits(__bw))

-:142: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__tunnel' - possible side-effects?
#142: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:59:
+#define __tun_prn(__tunnel, __level, __type, __fmt, ...) \
+	drm_##__level##__type((__tunnel)->group->mgr->dev, \
+			      "[DPTUN %s][%s] " __fmt, \
+			      drm_dp_tunnel_name(__tunnel), \
+			      (__tunnel)->aux->name, ## \
+			      __VA_ARGS__)

-:152: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__tunnel' - possible side-effects?
#152: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:69:
+#define tun_dbg_stat(__tunnel, __err, __fmt, ...) do { \
+	if (__err) \
+		__tun_prn(__tunnel, dbg, _kms, __fmt " (Failed, err: %pe)\n", \
+			  ## __VA_ARGS__, ERR_PTR(__err)); \
+	else \
+		__tun_prn(__tunnel, dbg, _kms, __fmt " (Ok)\n", \
+			  ## __VA_ARGS__); \
+} while (0)

-:152: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__err' - possible side-effects?
#152: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:69:
+#define tun_dbg_stat(__tunnel, __err, __fmt, ...) do { \
+	if (__err) \
+		__tun_prn(__tunnel, dbg, _kms, __fmt " (Failed, err: %pe)\n", \
+			  ## __VA_ARGS__, ERR_PTR(__err)); \
+	else \
+		__tun_prn(__tunnel, dbg, _kms, __fmt " (Ok)\n", \
+			  ## __VA_ARGS__); \
+} while (0)

-:152: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__fmt' - possible side-effects?
#152: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:69:
+#define tun_dbg_stat(__tunnel, __err, __fmt, ...) do { \
+	if (__err) \
+		__tun_prn(__tunnel, dbg, _kms, __fmt " (Failed, err: %pe)\n", \
+			  ## __VA_ARGS__, ERR_PTR(__err)); \
+	else \
+		__tun_prn(__tunnel, dbg, _kms, __fmt " (Ok)\n", \
+			  ## __VA_ARGS__); \
+} while (0)

-:164: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__group' - possible side-effects?
#164: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:81:
+#define tun_grp_dbg(__group, __fmt, ...) \
+	drm_dbg_kms((__group)->mgr->dev, \
+		    "[DPTUN %s] " __fmt, \
+		    drm_dp_tunnel_group_name(__group), ## \
+		    __VA_ARGS__)

-:172: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'start' - possible side-effects?
#172: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:89:
+#define __DPTUN_REG_RANGE(start, size) \
+	GENMASK_ULL(start + size - 1, start)

-:172: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'start' may be better as '(start)' to avoid precedence issues
#172: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:89:
+#define __DPTUN_REG_RANGE(start, size) \
+	GENMASK_ULL(start + size - 1, start)

-:172: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'size' may be better as '(size)' to avoid precedence issues
#172: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:89:
+#define __DPTUN_REG_RANGE(start, size) \
+	GENMASK_ULL(start + size - 1, start)

-:290: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__address' - possible side-effects?
#290: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:207:
+#define tunnel_reg_ptr(__regs, __address) ({ \
+	WARN_ON(!test_bit((__address) - DP_TUNNELING_BASE, dptun_info_regs)); \
+	&(__regs)->buf[bitmap_weight(dptun_info_regs, (__address) - DP_TUNNELING_BASE)]; \
+})

-:496: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#496: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:413:
+drm_dp_tunnel_get(struct drm_dp_tunnel *tunnel,
+		    struct ref_tracker **tracker)

-:505: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#505: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:422:
+void drm_dp_tunnel_put(struct drm_dp_tunnel *tunnel,
+			 struct ref_tracker **tracker)

-:799: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#799: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:716:
+drm_dp_tunnel_detect(struct drm_dp_tunnel_mgr *mgr,
+		       struct drm_dp_aux *aux)

-:1593: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1593: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:1510:
+int drm_dp_tunnel_atomic_set_stream_bw(struct drm_atomic_state *state,
+					 struct drm_dp_tunnel *tunnel,

-:1656: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
#1656: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:1573:
+		*stream_mask |= tunnel_state->stream_mask;
 		^

-:1927: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#1927: FILE: include/drm/display/drm_dp_tunnel.h:52:
+static inline void drm_dp_tunnel_ref_get(struct drm_dp_tunnel *tunnel,
+					   struct drm_dp_tunnel_ref *tunnel_ref)

-:2006: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#2006: FILE: include/drm/display/drm_dp_tunnel.h:131:
+static inline void drm_dp_tunnel_ref_get(struct drm_dp_tunnel *tunnel,
+					   struct drm_dp_tunnel_ref *tunnel_ref) {}

-:2142: CHECK:LINE_SPACING: Please don't use multiple blank lines
#2142: FILE: include/drm/display/drm_dp_tunnel.h:267:
+
+

total: 2 errors, 3 warnings, 22 checks, 2082 lines checked
aa5d25901902 drm/i915/dp: Add support to notify MST connectors to retry modesets
74febb19c412 drm/i915/dp: Use drm_dp_max_dprx_data_rate()
8b1fbc2599b0 drm/i915/dp: Factor out intel_dp_config_required_rate()
04bac33a820f drm/i915/dp: Export intel_dp_max_common_rate/lane_count()
41ef244183f8 drm/i915/dp: Factor out intel_dp_update_sink_caps()
26dd64f150f2 drm/i915/dp: Factor out intel_dp_read_dprx_caps()
11359d46e98d drm/i915/dp: Add intel_dp_max_link_data_rate()
23b909ed6da2 drm/i915/dp: Add way to get active pipes with syncing commits
cdb7da82eb46 drm/i915/dp: Add support for DP tunnel BW allocation
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:151: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#151: 
new file mode 100644

-:329: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#329: FILE: drivers/gpu/drm/i915/display/intel_dp_tunnel.c:174:
+	tunnel = drm_dp_tunnel_detect(i915->display.dp_tunnel_mgr,
+					&intel_dp->aux);

total: 0 errors, 1 warnings, 1 checks, 862 lines checked
03aa21905e64 drm/i915/dp: Add DP tunnel atomic state and check BW limit
-:21: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#21: FILE: drivers/gpu/drm/i915/display/intel_atomic.c:265:
+		drm_dp_tunnel_ref_get(old_crtc_state->dp_tunnel_ref.tunnel,
+					&crtc_state->dp_tunnel_ref);

-:79: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#79: FILE: drivers/gpu/drm/i915/display/intel_display.c:4514:
+		drm_dp_tunnel_ref_get(master_crtc_state->dp_tunnel_ref.tunnel,
+					&slave_crtc_state->dp_tunnel_ref);

total: 0 errors, 0 warnings, 2 checks, 98 lines checked
9b234c4960d8 drm/i915/dp: Account for tunnel BW limit in intel_dp_max_link_data_rate()
c63a6432a776 drm/i915/dp: Compute DP tunel BW during encoder state computation
73f090d93e1f drm/i915/dp: Allocate/free DP tunnel BW in the encoder enable/disable hooks
e45e83c0d541 drm/i915/dp: Handle DP tunnel IRQs
bd2c0c269408 drm/i915/dp: Call intel_dp_sync_state() always for DDI DP encoders
8adaefc393bf drm/i915/dp: Suspend/resume DP tunnels
1b5ed26d474a drm/i915/dp: Enable DP tunnel BW allocation mode


