Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 351461431C2
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 19:43:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65E1D6EAE8;
	Mon, 20 Jan 2020 18:43:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AEAFE6EAE5;
 Mon, 20 Jan 2020 18:43:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AA127A0094;
 Mon, 20 Jan 2020 18:43:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Mon, 20 Jan 2020 18:43:48 -0000
Message-ID: <157954582869.680.15025308157880290841@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Global_state_rework?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Global state rework
URL   : https://patchwork.freedesktop.org/series/72301/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e1d119e88d09 drm/i915: Polish WM_LINETIME register stuff
15d81d275b12 drm/i915: Move linetime wms into the crtc state
a12b752d48ca drm/i915: Nuke skl wm.dirty_pipes bitmask
7ba0656a9ef9 drm/i915: Move more cdclk state handling into the cdclk code
8fa8a8a6f02c drm/i915: Collect more cdclk state under the same roof
ed13dd33279b drm/i915: s/need_cd2x_updare/can_cd2x_update/
0a56243699e8 drm/i915: s/cdclk_state/cdclk_config/
-:519: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#519: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:870:
+	cdclk_config->cdclk = cdclk_config->bypass = cdclk_config->ref;

total: 0 errors, 0 warnings, 1 checks, 1148 lines checked
6135aca100dd drm/i915: Simplify intel_set_cdclk_{pre, post}_plane_update() calling convention
05f542367737 drm/i915: Extract intel_cdclk_state
-:541: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#541: FILE: drivers/gpu/drm/i915/display/intel_display.c:17366:
+	cdclk_state->logical = cdclk_state->actual = i915->cdclk.hw;

total: 0 errors, 0 warnings, 1 checks, 621 lines checked
d5ec3a11033c drm/i915: swap() the entire cdclk state
108769339a1d drm/i915: s/init_cdclk/init_cdclk_hw/
c2a1d81e4b77 drm/i915: Move intel_atomic_state_free() into intel_atomic.c
dd55cc8a69c4 drm/i915: Intrduce better global state handling
-:230: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#230: 
new file mode 100644

-:235: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/i915/display/intel_global_state.c', please use '//' instead
#235: FILE: drivers/gpu/drm/i915/display/intel_global_state.c:1:
+/* SPDX-License-Identifier: MIT */

-:235: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#235: FILE: drivers/gpu/drm/i915/display/intel_global_state.c:1:
+/* SPDX-License-Identifier: MIT */

-:494: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__state' - possible side-effects?
#494: FILE: drivers/gpu/drm/i915/display/intel_global_state.h:31:
+#define for_each_new_global_obj_in_state(__state, obj, new_obj_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_global_objs && \
+		     ((obj) = (__state)->global_objs[__i].ptr, \
+		      (new_obj_state) = (__state)->global_objs[__i].new_state, 1); \
+	     (__i)++) \
+		for_each_if(obj)

-:494: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'obj' - possible side-effects?
#494: FILE: drivers/gpu/drm/i915/display/intel_global_state.h:31:
+#define for_each_new_global_obj_in_state(__state, obj, new_obj_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_global_objs && \
+		     ((obj) = (__state)->global_objs[__i].ptr, \
+		      (new_obj_state) = (__state)->global_objs[__i].new_state, 1); \
+	     (__i)++) \
+		for_each_if(obj)

-:494: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i' - possible side-effects?
#494: FILE: drivers/gpu/drm/i915/display/intel_global_state.h:31:
+#define for_each_new_global_obj_in_state(__state, obj, new_obj_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_global_objs && \
+		     ((obj) = (__state)->global_objs[__i].ptr, \
+		      (new_obj_state) = (__state)->global_objs[__i].new_state, 1); \
+	     (__i)++) \
+		for_each_if(obj)

-:502: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__state' - possible side-effects?
#502: FILE: drivers/gpu/drm/i915/display/intel_global_state.h:39:
+#define for_each_old_global_obj_in_state(__state, obj, new_obj_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_global_objs && \
+		     ((obj) = (__state)->global_objs[__i].ptr, \
+		      (new_obj_state) = (__state)->global_objs[__i].old_state, 1); \
+	     (__i)++) \
+		for_each_if(obj)

-:502: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'obj' - possible side-effects?
#502: FILE: drivers/gpu/drm/i915/display/intel_global_state.h:39:
+#define for_each_old_global_obj_in_state(__state, obj, new_obj_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_global_objs && \
+		     ((obj) = (__state)->global_objs[__i].ptr, \
+		      (new_obj_state) = (__state)->global_objs[__i].old_state, 1); \
+	     (__i)++) \
+		for_each_if(obj)

-:502: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i' - possible side-effects?
#502: FILE: drivers/gpu/drm/i915/display/intel_global_state.h:39:
+#define for_each_old_global_obj_in_state(__state, obj, new_obj_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_global_objs && \
+		     ((obj) = (__state)->global_objs[__i].ptr, \
+		      (new_obj_state) = (__state)->global_objs[__i].old_state, 1); \
+	     (__i)++) \
+		for_each_if(obj)

-:510: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__state' - possible side-effects?
#510: FILE: drivers/gpu/drm/i915/display/intel_global_state.h:47:
+#define for_each_oldnew_global_obj_in_state(__state, obj, old_obj_state, new_obj_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_global_objs && \
+		     ((obj) = (__state)->global_objs[__i].ptr, \
+		      (old_obj_state) = (__state)->global_objs[__i].old_state, \
+		      (new_obj_state) = (__state)->global_objs[__i].new_state, 1); \
+	     (__i)++) \
+		for_each_if(obj)

-:510: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'obj' - possible side-effects?
#510: FILE: drivers/gpu/drm/i915/display/intel_global_state.h:47:
+#define for_each_oldnew_global_obj_in_state(__state, obj, old_obj_state, new_obj_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_global_objs && \
+		     ((obj) = (__state)->global_objs[__i].ptr, \
+		      (old_obj_state) = (__state)->global_objs[__i].old_state, \
+		      (new_obj_state) = (__state)->global_objs[__i].new_state, 1); \
+	     (__i)++) \
+		for_each_if(obj)

-:510: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i' - possible side-effects?
#510: FILE: drivers/gpu/drm/i915/display/intel_global_state.h:47:
+#define for_each_oldnew_global_obj_in_state(__state, obj, old_obj_state, new_obj_state, __i) \
+	for ((__i) = 0; \
+	     (__i) < (__state)->num_global_objs && \
+		     ((obj) = (__state)->global_objs[__i].ptr, \
+		      (old_obj_state) = (__state)->global_objs[__i].old_state, \
+		      (new_obj_state) = (__state)->global_objs[__i].new_state, 1); \
+	     (__i)++) \
+		for_each_if(obj)

total: 0 errors, 3 warnings, 9 checks, 484 lines checked
2f070d20f5ad drm/i915: Convert bandwidth state to global state
b7355be8116f drm/i915: Introduce intel_calc_active_pipes()
5f3f030c5ac1 drm/i915: Convert cdclk to global state
-:633: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'state' - possible side-effects?
#633: FILE: drivers/gpu/drm/i915/display/intel_cdclk.h:74:
+#define intel_atomic_get_old_cdclk_state(state) \
+	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->cdclk.obj))

-:634: WARNING:LONG_LINE: line over 100 characters
#634: FILE: drivers/gpu/drm/i915/display/intel_cdclk.h:75:
+	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->cdclk.obj))

-:635: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'state' - possible side-effects?
#635: FILE: drivers/gpu/drm/i915/display/intel_cdclk.h:76:
+#define intel_atomic_get_new_cdclk_state(state) \
+	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->cdclk.obj))

-:636: WARNING:LONG_LINE: line over 100 characters
#636: FILE: drivers/gpu/drm/i915/display/intel_cdclk.h:77:
+	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->cdclk.obj))

total: 0 errors, 2 warnings, 2 checks, 922 lines checked
dd68e8f33fde drm/i915: Store active_pipes bitmask in cdclk state
-:164: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#164: FILE: drivers/gpu/drm/i915/display/intel_display.c:18149:
+	dev_priv->active_pipes = cdclk_state->active_pipes = active_pipes;

total: 0 errors, 0 warnings, 1 checks, 123 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
