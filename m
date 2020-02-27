Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B6A172967
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 21:21:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F63C6E0C2;
	Thu, 27 Feb 2020 20:21:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 655936E0C2;
 Thu, 27 Feb 2020 20:21:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5E3A3A3C0D;
 Thu, 27 Feb 2020 20:21:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 27 Feb 2020 20:21:44 -0000
Message-ID: <158283490435.29659.11583871539811399186@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200225171125.28885-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Proper_dbuf_global_state_=28rev3=29?=
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

Series: drm/i915: Proper dbuf global state (rev3)
URL   : https://patchwork.freedesktop.org/series/73421/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
3643e15727b1 drm/i915: Handle some leftover s/intel_crtc/crtc/
c2f2161d6505 drm/i915: Remove garbage WARNs
2786de40d65c drm/i915: Add missing commas to dbuf tables
73430ed2f955 drm/i915: Use a sentinel to terminate the dbuf slice arrays
047f693c4cfa drm/i915: Make skl_compute_dbuf_slices() behave consistently for all platforms
391eab3b022c drm/i915: Polish some dbuf debugs
a684f63e9f43 drm/i915: Unify the low level dbuf code
e3028c82388d drm/i915: Introduce proper dbuf state
-:175: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#175: FILE: drivers/gpu/drm/i915/display/intel_display.c:18381:
+	dev_priv->active_pipes = cdclk_state->active_pipes =

-:623: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'state' - possible side-effects?
#623: FILE: drivers/gpu/drm/i915/intel_pm.h:77:
+#define intel_atomic_get_old_dbuf_state(state) \
+	to_intel_dbuf_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->dbuf.obj))

-:624: WARNING:LONG_LINE: line over 100 characters
#624: FILE: drivers/gpu/drm/i915/intel_pm.h:78:
+	to_intel_dbuf_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->dbuf.obj))

-:625: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'state' - possible side-effects?
#625: FILE: drivers/gpu/drm/i915/intel_pm.h:79:
+#define intel_atomic_get_new_dbuf_state(state) \
+	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->dbuf.obj))

-:626: WARNING:LONG_LINE: line over 100 characters
#626: FILE: drivers/gpu/drm/i915/intel_pm.h:80:
+	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->dbuf.obj))

total: 0 errors, 2 warnings, 3 checks, 555 lines checked
071b62e2fe20 drm/i915: Nuke skl_ddb_get_hw_state()
2b355bb11548 drm/i915: Move the dbuf pre/post plane update
35835c92bd7f drm/i915: Clean up dbuf debugs during .atomic_check()
7f9190b0dc0b drm/i915: Extract intel_crtc_ddb_weight()
45c49c9f3b73 drm/i915: Pass the crtc to skl_compute_dbuf_slices()
3f877cd02847 drm/i915: Introduce intel_dbuf_slice_size()
373ddcca596a drm/i915: Introduce skl_ddb_entry_for_slices()
aa3deb4ba4f5 drm/i915: Move pipe ddb entries into the dbuf state
80543eb34ce4 drm/i915: Extract intel_crtc_dbuf_weights()
-:137: WARNING:LINE_SPACING: Missing a blank line after declarations
#137: FILE: drivers/gpu/drm/i915/intel_pm.c:3960:
+				   struct skl_ddb_entry *alloc, /* out */
+				   int *num_active /* out */)

total: 0 errors, 1 warnings, 0 checks, 176 lines checked
5d4ec45f7e49 drm/i915: Encapsulate dbuf state handling harder
1fc35297be7f drm/i915: Do a bit more initial readout for dbuf
9cba9c99fb78 drm/i915: Check slice mask for holes

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
