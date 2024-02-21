Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB7F85CD8E
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 02:49:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0399A10E428;
	Wed, 21 Feb 2024 01:49:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 096B010E5DB;
 Wed, 21 Feb 2024 01:49:37 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Add_Disp?=
 =?utf-8?q?lay_Port_tunnel_BW_allocation_support_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Feb 2024 01:49:37 -0000
Message-ID: <170848017703.178297.1127851753127296462@8e613ede5ea5>
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

Series: drm/i915: Add Display Port tunnel BW allocation support (rev2)
URL   : https://patchwork.freedesktop.org/series/129082/
State : warning

== Summary ==

Error: dim checkpatch failed
501cc0798f87 drm/dp: Add drm_dp_max_dprx_data_rate()
14d74f578b99 drm/dp: Add support for DP tunneling
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:118: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#118: 
new file mode 100644

-:148: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#148: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:26:
+#define for_each_new_group_in_state(__state, __new_group_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_private_objs; \
+	     (__i)++) \
+		for_each_if ((__state)->private_objs[__i].ptr && \
+			     is_dp_tunnel_private_obj((__state)->private_objs[__i].ptr) && \
+			     ((__new_group_state) = \
+				to_group_state((__state)->private_objs[__i].new_state), 1))

-:148: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__state' - possible side-effects?
#148: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:26:
+#define for_each_new_group_in_state(__state, __new_group_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_private_objs; \
+	     (__i)++) \
+		for_each_if ((__state)->private_objs[__i].ptr && \
+			     is_dp_tunnel_private_obj((__state)->private_objs[__i].ptr) && \
+			     ((__new_group_state) = \
+				to_group_state((__state)->private_objs[__i].new_state), 1))

-:148: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i' - possible side-effects?
#148: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:26:
+#define for_each_new_group_in_state(__state, __new_group_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_private_objs; \
+	     (__i)++) \
+		for_each_if ((__state)->private_objs[__i].ptr && \
+			     is_dp_tunnel_private_obj((__state)->private_objs[__i].ptr) && \
+			     ((__new_group_state) = \
+				to_group_state((__state)->private_objs[__i].new_state), 1))

-:152: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#152: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:30:
+		for_each_if ((__state)->private_objs[__i].ptr && \

-:157: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#157: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:35:
+#define for_each_old_group_in_state(__state, __old_group_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_private_objs; \
+	     (__i)++) \
+		for_each_if ((__state)->private_objs[__i].ptr && \
+			     is_dp_tunnel_private_obj((__state)->private_objs[__i].ptr) && \
+			     ((__old_group_state) = \
+				to_group_state((__state)->private_objs[__i].old_state), 1))

-:157: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__state' - possible side-effects?
#157: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:35:
+#define for_each_old_group_in_state(__state, __old_group_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_private_objs; \
+	     (__i)++) \
+		for_each_if ((__state)->private_objs[__i].ptr && \
+			     is_dp_tunnel_private_obj((__state)->private_objs[__i].ptr) && \
+			     ((__old_group_state) = \
+				to_group_state((__state)->private_objs[__i].old_state), 1))

-:157: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i' - possible side-effects?
#157: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:35:
+#define for_each_old_group_in_state(__state, __old_group_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_private_objs; \
+	     (__i)++) \
+		for_each_if ((__state)->private_objs[__i].ptr && \
+			     is_dp_tunnel_private_obj((__state)->private_objs[__i].ptr) && \
+			     ((__old_group_state) = \
+				to_group_state((__state)->private_objs[__i].old_state), 1))

-:161: WARNING:SPACING: space prohibited between function name and open parenthesis '('
#161: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:39:
+		for_each_if ((__state)->private_objs[__i].ptr && \

-:179: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__bw' - possible side-effects?
#179: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:57:
+#define DPTUN_BW_ARG(__bw) ((__bw) < 0 ? (__bw) : kbytes_to_mbits(__bw))

-:181: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__tunnel' - possible side-effects?
#181: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:59:
+#define __tun_prn(__tunnel, __level, __type, __fmt, ...) \
+	drm_##__level##__type((__tunnel)->group->mgr->dev, \
+			      "[DPTUN %s][%s] " __fmt, \
+			      drm_dp_tunnel_name(__tunnel), \
+			      (__tunnel)->aux->name, ## \
+			      __VA_ARGS__)

-:191: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__tunnel' - possible side-effects?
#191: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:69:
+#define tun_dbg_stat(__tunnel, __err, __fmt, ...) do { \
+	if (__err) \
+		__tun_prn(__tunnel, dbg, _kms, __fmt " (Failed, err: %pe)\n", \
+			  ## __VA_ARGS__, ERR_PTR(__err)); \
+	else \
+		__tun_prn(__tunnel, dbg, _kms, __fmt " (Ok)\n", \
+			  ## __VA_ARGS__); \
+} while (0)

-:191: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__err' - possible side-effects?
#191: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:69:
+#define tun_dbg_stat(__tunnel, __err, __fmt, ...) do { \
+	if (__err) \
+		__tun_prn(__tunnel, dbg, _kms, __fmt " (Failed, err: %pe)\n", \
+			  ## __VA_ARGS__, ERR_PTR(__err)); \
+	else \
+		__tun_prn(__tunnel, dbg, _kms, __fmt " (Ok)\n", \
+			  ## __VA_ARGS__); \
+} while (0)

-:191: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__fmt' - possible side-effects?
#191: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:69:
+#define tun_dbg_stat(__tunnel, __err, __fmt, ...) do { \
+	if (__err) \
+		__tun_prn(__tunnel, dbg, _kms, __fmt " (Failed, err: %pe)\n", \
+			  ## __VA_ARGS__, ERR_PTR(__err)); \
+	else \
+		__tun_prn(__tunnel, dbg, _kms, __fmt " (Ok)\n", \
+			  ## __VA_ARGS__); \
+} while (0)

-:203: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__group' - possible side-effects?
#203: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:81:
+#define tun_grp_dbg(__group, __fmt, ...) \
+	drm_dbg_kms((__group)->mgr->dev, \
+		    "[DPTUN %s] " __fmt, \
+		    drm_dp_tunnel_group_name(__group), ## \
+		    __VA_ARGS__)

-:211: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'start' - possible side-effects?
#211: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:89:
+#define __DPTUN_REG_RANGE(start, size) \
+	GENMASK_ULL(start + size - 1, start)

-:211: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'start' may be better as '(start)' to avoid precedence issues
#211: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:89:
+#define __DPTUN_REG_RANGE(start, size) \
+	GENMASK_ULL(start + size - 1, start)

-:211: CHECK:MACRO_ARG_PRECEDENCE: Macro argument 'size' may be better as '(size)' to avoid precedence issues
#211: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:89:
+#define __DPTUN_REG_RANGE(start, size) \
+	GENMASK_ULL(start + size - 1, start)

-:334: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__address' - possible side-effects?
#334: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:212:
+#define tunnel_reg_ptr(__regs, __address) ({ \
+	WARN_ON(!test_bit((__address) - DP_TUNNELING_BASE, dptun_info_regs)); \
+	&(__regs)->buf[bitmap_weight(dptun_info_regs, (__address) - DP_TUNNELING_BASE)]; \
+})

-:567: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#567: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:445:
+void drm_dp_tunnel_put(struct drm_dp_tunnel *tunnel,
+			 struct ref_tracker **tracker)

-:1893: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
#1893: FILE: drivers/gpu/drm/display/drm_dp_tunnel.c:1771:
+		*stream_mask |= tunnel_state->stream_mask;
 		^

-:2373: CHECK:LINE_SPACING: Please don't use multiple blank lines
#2373: FILE: include/drm/display/drm_dp_tunnel.h:245:
+
+

total: 2 errors, 3 warnings, 17 checks, 2278 lines checked
82078361838f drm/i915: Fix display bpp limit computation during system resume
976b15a03a8c drm/i915/dp: Add support to notify MST connectors to retry modesets
9d6981886b45 drm/i915/dp: Use drm_dp_max_dprx_data_rate()
066e5527378f drm/i915/dp: Factor out intel_dp_config_required_rate()
b352f0a35faf drm/i915/dp: Export intel_dp_max_common_rate/lane_count()
47eeb30effa9 drm/i915/dp: Factor out intel_dp_update_sink_caps()
7531c2fd6f83 drm/i915/dp: Factor out intel_dp_read_dprx_caps()
7149929cb442 drm/i915/dp: Add intel_dp_max_link_data_rate()
ef0a8dd54e5c drm/i915/dp: Add way to get active pipes with syncing commits
577cf7b2cf35 drm/i915/dp: Add support for DP tunnel BW allocation
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:223: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#223: 
new file mode 100644

-:412: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#412: FILE: drivers/gpu/drm/i915/display/intel_dp_tunnel.c:185:
+	tunnel = drm_dp_tunnel_detect(i915->display.dp_tunnel_mgr,
+					&intel_dp->aux);

total: 0 errors, 1 warnings, 1 checks, 1072 lines checked
ec34759d6f26 drm/i915/dp: Add DP tunnel atomic state and check BW limit
-:84: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#84: FILE: drivers/gpu/drm/i915/display/intel_display.c:4514:
+		drm_dp_tunnel_ref_get(master_crtc_state->dp_tunnel_ref.tunnel,
+					&slave_crtc_state->dp_tunnel_ref);

total: 0 errors, 0 warnings, 1 checks, 77 lines checked
4fdd1af8df9e drm/i915/dp: Account for tunnel BW limit in intel_dp_max_link_data_rate()
0cb4cb2cd6d4 drm/i915/dp: Compute DP tunnel BW during encoder state computation
e8408bdcd57d drm/i915/dp: Allocate/free DP tunnel BW in the encoder enable/disable hooks
0a4db8693254 drm/i915/dp: Handle DP tunnel IRQs
d5e99925dddc drm/i915/dp: Call intel_dp_sync_state() always for DDI DP encoders
807c117f13f2 drm/i915/dp: Suspend/resume DP tunnels
2ad0f8709182 drm/i915/dp: Read DPRX for all long HPD pulses
45d207ae4bbc drm/i915/dp: Enable DP tunnel BW allocation mode


