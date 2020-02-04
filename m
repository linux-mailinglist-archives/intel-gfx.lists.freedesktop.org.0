Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F87151F24
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 18:18:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81A6E6E88C;
	Tue,  4 Feb 2020 17:18:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A40466E88C;
 Tue,  4 Feb 2020 17:18:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9D099A011A;
 Tue,  4 Feb 2020 17:18:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Tue, 04 Feb 2020 17:18:29 -0000
Message-ID: <158083670961.25087.686423899897948390@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200203140747.22771-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200203140747.22771-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Refactor_Gen11+_SAGV_support_=28rev2=29?=
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

Series: Refactor Gen11+ SAGV support (rev2)
URL   : https://patchwork.freedesktop.org/series/72923/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
37ec63f7b6aa drm/i915: Start passing latency as parameter
bbfa09f48831 drm/i915: Introduce skl_plane_wm_level accessor.
18e583700e52 drm/i915: Init obj state in intel_atomic_get_old/new_global_obj_state
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
also in intel_atomic_get_old_global_obj_state and intel_atomic_get_new_global_obj_state

-:45: WARNING:LINE_SPACING: Missing a blank line after declarations
#45: FILE: drivers/gpu/drm/i915/display/intel_bw.c:395:
+	struct intel_global_state *bw_state;
+	bw_state = intel_atomic_get_new_global_obj_state(state, &dev_priv->bw_obj);

-:89: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#89: FILE: drivers/gpu/drm/i915/display/intel_global_state.c:72:
+_intel_atomic_init_global_obj_state(struct intel_atomic_state *state,
 				  struct intel_global_obj *obj)

-:108: CHECK:LINE_SPACING: Please don't use multiple blank lines
#108: FILE: drivers/gpu/drm/i915/display/intel_global_state.c:111:
 
+

total: 0 errors, 2 warnings, 2 checks, 109 lines checked
05c12cc8f8d9 drm/i915: Refactor intel_can_enable_sagv
-:77: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#77: 
      when using skl_plane_wm_level accessor, as we had previously for Gen11+

-:284: CHECK:LINE_SPACING: Please don't use multiple blank lines
#284: FILE: drivers/gpu/drm/i915/intel_pm.c:3820:
+
+

-:438: WARNING:LINE_SPACING: Missing a blank line after declarations
#438: FILE: drivers/gpu/drm/i915/intel_pm.c:3974:
+		int active_pipe_bit = dev_priv->active_pipes & BIT(i);
+		if (active_pipe_bit) {

-:641: WARNING:LONG_LINE: line over 100 characters
#641: FILE: drivers/gpu/drm/i915/intel_pm.c:5560:
+					    old_wm->sagv_wm0.min_ddb_alloc : old_wm->wm[0].min_ddb_alloc;

-:644: WARNING:LONG_LINE: line over 100 characters
#644: FILE: drivers/gpu/drm/i915/intel_pm.c:5563:
+					    new_wm->sagv_wm0.min_ddb_alloc : new_wm->wm[0].min_ddb_alloc;

-:732: WARNING:LONG_LINE: line over 100 characters
#732: FILE: drivers/gpu/drm/i915/intel_pm.c:5799:
+						 &new_crtc_state->wm.skl.optimal.planes[plane_id])) {

total: 0 errors, 5 warnings, 1 checks, 674 lines checked
5f8d124e82f6 drm/i915: Added required new PCode commands
5527e670a257 drm/i915: Restrict qgv points which don't have enough bandwidth.
4b30ba5d0b64 drm/i915: Enable SAGV support for Gen12

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
