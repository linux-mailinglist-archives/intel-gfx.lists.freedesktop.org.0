Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4502168930
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 22:24:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE4636E489;
	Fri, 21 Feb 2020 21:24:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A42696E489;
 Fri, 21 Feb 2020 21:24:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9B7F0A363D;
 Fri, 21 Feb 2020 21:24:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Fri, 21 Feb 2020 21:24:34 -0000
Message-ID: <158232027461.7919.12279464007761828814@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200220120741.6917-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200220120741.6917-1-stanislav.lisovskiy@intel.com>
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
URL   : https://patchwork.freedesktop.org/series/73703/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ba1e4cbe4558 drm/i915: Start passing latency as parameter
2712b33bd072 drm/i915: Introduce skl_plane_wm_level accessor.
535a61cedba3 drm/i915: Init obj state in intel_atomic_get_old/new_global_obj_state
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
also in intel_atomic_get_old_global_obj_state and intel_atomic_get_new_global_obj_state

-:45: WARNING:LINE_SPACING: Missing a blank line after declarations
#45: FILE: drivers/gpu/drm/i915/display/intel_bw.c:395:
+	struct intel_global_state *bw_state;
+	bw_state = intel_atomic_get_new_global_obj_state(state, &dev_priv->bw_obj);

total: 0 errors, 2 warnings, 0 checks, 49 lines checked
236d09415710 drm/i915: Refactor intel_can_enable_sagv
-:77: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#77: 
      when using skl_plane_wm_level accessor, as we had previously for Gen11+

-:211: CHECK:LINE_SPACING: Please don't use multiple blank lines
#211: FILE: drivers/gpu/drm/i915/display/intel_global_state.h:87:
 
+

-:306: CHECK:LINE_SPACING: Please don't use multiple blank lines
#306: FILE: drivers/gpu/drm/i915/intel_pm.c:3812:
+
+

-:367: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'state->active_pipes == dev_priv->active_pipes'
#367: FILE: drivers/gpu/drm/i915/intel_pm.c:3873:
+	if ((state->active_pipes == dev_priv->active_pipes) &&
+	    (total_affected_planes == 0)) {

-:367: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'total_affected_planes == 0'
#367: FILE: drivers/gpu/drm/i915/intel_pm.c:3873:
+	if ((state->active_pipes == dev_priv->active_pipes) &&
+	    (total_affected_planes == 0)) {

-:413: WARNING:LINE_SPACING: Missing a blank line after declarations
#413: FILE: drivers/gpu/drm/i915/intel_pm.c:3919:
+		int active_pipe_bit = dev_priv->active_pipes & BIT(pipe);
+		if (active_pipe_bit) {

-:590: CHECK:LINE_SPACING: Please don't use multiple blank lines
#590: FILE: drivers/gpu/drm/i915/intel_pm.c:4820:
+
+

-:683: WARNING:LONG_LINE: line over 100 characters
#683: FILE: drivers/gpu/drm/i915/intel_pm.c:5893:
+					    old_wm->sagv_wm0.min_ddb_alloc : old_wm->wm[0].min_ddb_alloc;

-:686: WARNING:LONG_LINE: line over 100 characters
#686: FILE: drivers/gpu/drm/i915/intel_pm.c:5896:
+					    new_wm->sagv_wm0.min_ddb_alloc : new_wm->wm[0].min_ddb_alloc;

-:798: WARNING:LONG_LINE: line over 100 characters
#798: FILE: drivers/gpu/drm/i915/intel_pm.c:6135:
+						 &new_crtc_state->wm.skl.optimal.planes[plane_id])) {

total: 0 errors, 5 warnings, 5 checks, 718 lines checked
b2dfa073b7e0 drm/i915: Added required new PCode commands
53edf17a30f9 drm/i915: Restrict qgv points which don't have enough bandwidth.
c3ca73c4675f drm/i915: Enable SAGV support for Gen12

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
