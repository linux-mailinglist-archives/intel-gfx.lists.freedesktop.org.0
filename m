Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE6486856B
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 02:02:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD7C510F09C;
	Tue, 27 Feb 2024 01:02:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4D3C10F09C;
 Tue, 27 Feb 2024 01:02:16 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Add_Disp?=
 =?utf-8?q?lay_Port_tunnel_BW_allocation_support_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Feb 2024 01:02:16 -0000
Message-ID: <170899573673.299097.4936661832098431860@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240220211841.448846-1-imre.deak@intel.com>
In-Reply-To: <20240220211841.448846-1-imre.deak@intel.com>
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

Series: drm/i915: Add Display Port tunnel BW allocation support (rev6)
URL   : https://patchwork.freedesktop.org/series/129082/
State : warning

== Summary ==

Error: dim checkpatch failed
855f2818d384 drm/dp: Add drm_dp_max_dprx_data_rate()
c1dbb46b64c9 drm/dp: Add support for DP tunneling
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:128: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#128: 
new file mode 100644

-:158: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#158: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:26:
+#define for_each_new_group_in_state(__state, __new_group_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_private_objs; \
+	     (__i)++) \
+		for_each_if ((__state)->private_objs[__i].ptr && \
+			     is_dp_tunnel_private_obj((__state)->private_objs[__i].ptr) && \
+			     ((__new_group_state) = \
+				to_group_state((__state)->private_objs[__i].new_state), 1))

-:158: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__state' - possible side-effects?
#158: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:26:
+#define for_each_new_group_in_state(__state, __new_group_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_private_objs; \
+	     (__i)++) \
+		for_each_if ((__state)->private_objs[__i].ptr && \
+			     is_dp_tunnel_private_obj((__state)->private_objs[__i].ptr) && \
+			     ((__new_group_state) = \
+				to_group_state((__state)->private_objs[__i].new_state), 1))

-:158: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i' - possible side-effects?
#158: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:26:
+#define for_each_new_group_in_state(__state, __new_group_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_private_objs; \
+	     (__i)++) \
+		for_each_if ((__state)->private_objs[__i].ptr && \
+			     is_dp_tunnel_private_obj((__state)->private_objs[__i].ptr) && \
+			     ((__new_group_state) = \
+				to_group_state((__state)->private_objs[__i].new_state), 1))

-:162: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#162: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:30:
+		for_each_if ((__state)->private_objs[__i].ptr && \

-:167: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#167: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:35:
+#define for_each_old_group_in_state(__state, __old_group_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_private_objs; \
+	     (__i)++) \
+		for_each_if ((__state)->private_objs[__i].ptr && \
+			     is_dp_tunnel_private_obj((__state)->private_objs[__i].ptr) && \
+			     ((__old_group_state) = \
+				to_group_state((__state)->private_objs[__i].old_state), 1))

-:167: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__state' - possible side-effects?
#167: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:35:
+#define for_each_old_group_in_state(__state, __old_group_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_private_objs; \
+	     (__i)++) \
+		for_each_if ((__state)->private_objs[__i].ptr && \
+			     is_dp_tunnel_private_obj((__state)->private_objs[__i].ptr) && \
+			     ((__old_group_state) = \
+				to_group_state((__state)->private_objs[__i].old_state), 1))

-:167: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i' - possible side-effects?
#167: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:35:
+#define for_each_old_group_in_state(__state, __old_group_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_private_objs; \
+	     (__i)++) \
+		for_each_if ((__state)->private_objs[__i].ptr && \
+			     is_dp_tunnel_private_obj((__state)->private_objs[__i].ptr) && \
+			     ((__old_group_state) = \
+				to_group_state((__state)->private_objs[__i].old_state), 1))

-:171: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#171: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:39:
+		for_each_if ((__state)->private_objs[__i].ptr && \

-:189: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__bw' - possible side-effects?
#189: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:57:
+#define DPTUN_BW_ARG(__bw) ((__bw) < 0 ? (__bw) : kbytes_to_mbits(__bw))

-:191: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__tunnel' - possible side-effects?
#191: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:59:
+#define __tun_prn(__tunnel, __level, __type, __fmt, ...) \
+	drm_##__level##__type((__tunnel)->group->mgr->dev, \
+			      "[DPTUN %s][%s] " __fmt, \
+			      drm_dp_tunnel_name(__tunnel), \
+			      (__tunnel)->aux->name, ## \
+			      __VA_ARGS__)

-:201: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__tunnel' - possible side-effects?
#201: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:69:
+#define tun_dbg_stat(__tunnel, __err, __fmt, ...) do { \
+	if (__err) \
+		__tun_prn(__tunnel, dbg, _kms, __fmt " (Failed, err: %pe)\n", \
+			  ## __VA_ARGS__, ERR_PTR(__err)); \
+	else \
+		__tun_prn(__tunnel, dbg, _kms, __fmt " (Ok)\n", \
+			  ## __VA_ARGS__); \
+} while (0)

-:201: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__err' - possible side-effects?
#201: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:69:
+#define tun_dbg_stat(__tunnel, __err, __fmt, ...) do { \
+	if (__err) \
+		__tun_prn(__tunnel, dbg, _kms, __fmt " (Failed, err: %pe)\n", \
+			  ## __VA_ARGS__, ERR_PTR(__err)); \
+	else \
+		__tun_prn(__tunnel, dbg, _kms, __fmt " (Ok)\n", \
+			  ## __VA_ARGS__); \
+} while (0)

-:201: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__fmt' - possible side-effects?
#201: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:69:
+#define tun_dbg_stat(__tunnel, __err, __fmt, ...) do { \
+	if (__err) \
+		__tun_prn(__tunnel, dbg, _kms, __fmt " (Failed, err: %pe)\n", \
+			  ## __VA_ARGS__, ERR_PTR(__err)); \
+	else \
+		__tun_prn(__tunnel, dbg, _kms, __fmt " (Ok)\n", \
+			  ## __VA_ARGS__); \
+} while (0)

-:213: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__group' - possible side-effects?
#213: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:81:
+#define tun_grp_dbg(__group, __fmt, ...) \
+	drm_dbg_kms((__group)->mgr->dev, \
+		    "[DPTUN %s] " __fmt, \
+		    drm_dp_tunnel_group_name(__group), ## \
+		    __VA_ARGS__)

-:221: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'start' - possible side-effects?
#221: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:89:
+#define __DPTUN_REG_RANGE(start, size) \
+	GENMASK_ULL(start + size - 1, start)

-:221: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'start' may be better as '(start)' to avoid precedence issues
#221: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:89:
+#define __DPTUN_REG_RANGE(start, size) \
+	GENMASK_ULL(start + size - 1, start)

-:221: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'size' may be better as '(size)' to avoid precedence issues
#221: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:89:
+#define __DPTUN_REG_RANGE(start, size) \
+	GENMASK_ULL(start + size - 1, start)

-:344: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__address' - possible side-effects?
#344: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:212:
+#define tunnel_reg_ptr(__regs, __address) ({ \
+	WARN_ON(!test_bit((__address) - DP_TUNNELING_BASE, dptun_info_regs)); \
+	&(__regs)->buf[bitmap_weight(dptun_info_regs, (__address) - DP_TUNNELING_BASE)]; \
+})

-:578: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#578: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:446:
+void drm_dp_tunnel_put(struct drm_dp_tunnel *tunnel,
+			 struct ref_tracker **tracker)

-:1923: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
#1923: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:1791:
+		*stream_mask |= tunnel_state->stream_mask;
 		^

-:2404: CHECK:LINE_SPACING: Please don't use multiple blank lines
#2404: FILE: include/drm/display/drm_dp_tunnel.h:246:
+
+

total: 2 errors, 3 warnings, 17 checks, 2299 lines checked
c5b9625671bf drm/i915: Fix display bpp limit computation during system resume
6102beb39ffa drm/i915/dp: Add support to notify MST connectors to retry modesets
3a6c343dec7b drm/i915/dp: Use drm_dp_max_dprx_data_rate()
502dafa07a8c drm/i915/dp: Factor out intel_dp_config_required_rate()
37d21e1b0e36 drm/i915/dp: Export intel_dp_max_common_rate/lane_count()
29bbbdc9a40d drm/i915/dp: Factor out intel_dp_update_sink_caps()
f9964a7f5358 drm/i915/dp: Factor out intel_dp_read_dprx_caps()
6486bf027f7f drm/i915/dp: Add intel_dp_max_link_data_rate()
1be9204a0c6d drm/i915/dp: Sync instead of try-sync commits when getting active pipes
d1a39e4fa3b2 drm/i915/dp: Add support for DP tunnel BW allocation
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:184: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#184: 
new file mode 100644

-:369: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#369: FILE: drivers/gpu/drm/i915/display/intel_dp_tunnel.c:181:
+	tunnel = drm_dp_tunnel_detect(i915->display.dp_tunnel_mgr,
+					&intel_dp->aux);

total: 0 errors, 1 warnings, 1 checks, 1034 lines checked
c3d8ac0fc515 drm/i915/dp: Add DP tunnel atomic state and check BW limit
-:85: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#85: FILE: drivers/gpu/drm/i915/display/intel_display.c:4514:
+		drm_dp_tunnel_ref_get(master_crtc_state->dp_tunnel_ref.tunnel,
+					&slave_crtc_state->dp_tunnel_ref);

total: 0 errors, 0 warnings, 1 checks, 77 lines checked
9ed1e50cafe4 drm/i915/dp: Account for tunnel BW limit in intel_dp_max_link_data_rate()
5d649abce36e drm/i915/dp: Compute DP tunnel BW during encoder state computation
e23397e03930 drm/i915/dp: Allocate/free DP tunnel BW in the encoder enable/disable hooks
ada8fd52f665 drm/i915/dp: Handle DP tunnel IRQs
3d3f7be752bc drm/i915/dp: Call intel_dp_sync_state() always for DDI DP encoders
ddd5c4aa048e drm/i915/dp: Suspend/resume DP tunnels
74b8ab88ef8b drm/i915/dp: Read DPRX for all long HPD pulses
ee228100bd91 drm/i915/dp: Enable DP tunnel BW allocation mode


