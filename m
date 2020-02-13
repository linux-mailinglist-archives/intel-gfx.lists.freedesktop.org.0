Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E22215CC91
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 21:48:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E933B6E3FC;
	Thu, 13 Feb 2020 20:47:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 40B616E3F7;
 Thu, 13 Feb 2020 20:47:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3934FA0078;
 Thu, 13 Feb 2020 20:47:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 13 Feb 2020 20:47:59 -0000
Message-ID: <158162687923.17961.5362755425486204035@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200213184800.14147-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200213184800.14147-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Proper_dbuf_global_state?=
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

Series: drm/i915: Proper dbuf global state
URL   : https://patchwork.freedesktop.org/series/73421/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
105574d3d6d9 drm/i915: Introduce proper dbuf state
-:179: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#179: FILE: drivers/gpu/drm/i915/display/intel_display.c:18491:
+	dev_priv->active_pipes = cdclk_state->active_pipes =

-:610: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'state' - possible side-effects?
#610: FILE: drivers/gpu/drm/i915/intel_pm.h:77:
+#define intel_atomic_get_old_dbuf_state(state) \
+	to_intel_dbuf_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->dbuf.obj))

-:611: WARNING:LONG_LINE: line over 100 characters
#611: FILE: drivers/gpu/drm/i915/intel_pm.h:78:
+	to_intel_dbuf_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->dbuf.obj))

-:612: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'state' - possible side-effects?
#612: FILE: drivers/gpu/drm/i915/intel_pm.h:79:
+#define intel_atomic_get_new_dbuf_state(state) \
+	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->dbuf.obj))

-:613: WARNING:LONG_LINE: line over 100 characters
#613: FILE: drivers/gpu/drm/i915/intel_pm.h:80:
+	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->dbuf.obj))

total: 0 errors, 2 warnings, 3 checks, 541 lines checked
8c6729a09771 drm/i915: Polish some dbuf debugs
f51308e472a5 drm/i915: Unify the low level dbuf code
23efcff9a67e drm/i915: Nuke skl_ddb_get_hw_state()
246e420dd654 drm/i915: Move the dbuf pre/post plane update
bc797241a9a7 drm/i915: Clean up dbuf debugs during .atomic_check()

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
