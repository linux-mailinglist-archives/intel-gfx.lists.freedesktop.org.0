Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2CF1443CD
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 18:58:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9DA56EDF4;
	Tue, 21 Jan 2020 17:58:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CC8436EDF4;
 Tue, 21 Jan 2020 17:58:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C32FCA363B;
 Tue, 21 Jan 2020 17:58:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 21 Jan 2020 17:58:44 -0000
Message-ID: <157962952479.11480.3387523654678716191@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Global_state_rework_=28rev2=29?=
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

Series: drm/i915: Global state rework (rev2)
URL   : https://patchwork.freedesktop.org/series/72301/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6ee8aa846aab drm/i915: Polish WM_LINETIME register stuff
a5c714cbc1b1 drm/i915: Move linetime wms into the crtc state
3d4bad98ff35 drm/i915: Nuke skl wm.dirty_pipes bitmask
91a2393ccd09 drm/i915: Move more cdclk state handling into the cdclk code
2dc3b77d21ab drm/i915: Collect more cdclk state under the same roof
58762cf832fb drm/i915: s/need_cd2x_updare/can_cd2x_update/
882b4774005d drm/i915: s/cdclk_state/cdclk_config/
-:519: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#519: FILE: drivers/gpu/drm/i915/display/intel_cdclk.c:870:
+	cdclk_config->cdclk = cdclk_config->bypass = cdclk_config->ref;

total: 0 errors, 0 warnings, 1 checks, 1148 lines checked
7cd74aefdc85 drm/i915: Simplify intel_set_cdclk_{pre, post}_plane_update() calling convention
156b0ecd892d drm/i915: Extract intel_cdclk_state
-:541: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#541: FILE: drivers/gpu/drm/i915/display/intel_display.c:17366:
+	cdclk_state->logical = cdclk_state->actual = i915->cdclk.hw;

total: 0 errors, 0 warnings, 1 checks, 621 lines checked
49fde73eb22f drm/i915: swap() the entire cdclk state
9e2da7c71fec drm/i915: s/init_cdclk/init_cdclk_hw/
131e92e40122 drm/i915: Move intel_atomic_state_free() into intel_atomic.c
91fd07c1cb34 drm/i915: Intrduce better global state handling
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
82426865c238 drm/i915: Convert bandwidth state to global state
81d4a119f677 drm/i915: Introduce intel_calc_active_pipes()
8b4ed3aff508 drm/i915: Convert cdclk to global state
-:635: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'state' - possible side-effects?
#635: FILE: drivers/gpu/drm/i915/display/intel_cdclk.h:74:
+#define intel_atomic_get_old_cdclk_state(state) \
+	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->cdclk.obj))

-:636: WARNING:LONG_LINE: line over 100 characters
#636: FILE: drivers/gpu/drm/i915/display/intel_cdclk.h:75:
+	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->cdclk.obj))

-:637: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'state' - possible side-effects?
#637: FILE: drivers/gpu/drm/i915/display/intel_cdclk.h:76:
+#define intel_atomic_get_new_cdclk_state(state) \
+	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->cdclk.obj))

-:638: WARNING:LONG_LINE: line over 100 characters
#638: FILE: drivers/gpu/drm/i915/display/intel_cdclk.h:77:
+	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->cdclk.obj))

total: 0 errors, 2 warnings, 2 checks, 922 lines checked
c3282508b4ed drm/i915: Store active_pipes bitmask in cdclk state
-:164: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#164: FILE: drivers/gpu/drm/i915/display/intel_display.c:18149:
+	dev_priv->active_pipes = cdclk_state->active_pipes = active_pipes;

total: 0 errors, 0 warnings, 1 checks, 123 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
