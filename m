Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A8416AF4A
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2020 19:37:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43EDE6E840;
	Mon, 24 Feb 2020 18:37:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AC7406E840;
 Mon, 24 Feb 2020 18:37:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A5605A00E8;
 Mon, 24 Feb 2020 18:37:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Mon, 24 Feb 2020 18:37:37 -0000
Message-ID: <158256945764.28361.2241151404050420805@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200224153240.9047-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200224153240.9047-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Refactor_Gen11+_SAGV_support?=
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

Series: Refactor Gen11+ SAGV support
URL   : https://patchwork.freedesktop.org/series/73856/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
658365e95a33 drm/i915: Start passing latency as parameter
ba654cc920d4 drm/i915: Introduce skl_plane_wm_level accessor.
b339bbdf676c drm/i915: Add intel_bw_get_*_state helpers
4d3ce9ab4bc3 drm/i915: Introduce more *_state_changed indicators
1a4b8e91ea4b drm/i915: Refactor intel_can_enable_sagv
-:357: CHECK:BOOL_COMPARISON: Using comparison to false is error prone
#357: FILE: drivers/gpu/drm/i915/intel_pm.c:3863:
+	if (state->active_pipe_changes == 0 && state->ddb_state_changed == false)

-:394: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#394: FILE: drivers/gpu/drm/i915/intel_pm.c:3900:
+	if (new_bw_state->pipe_sagv_mask != old_bw_state->pipe_sagv_mask) {
+

total: 0 errors, 0 warnings, 2 checks, 720 lines checked
95a34afc3826 drm/i915: Added required new PCode commands
d9e474c18262 drm/i915: Restrict qgv points which don't have enough bandwidth.
-:357: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#357: FILE: drivers/gpu/drm/i915/display/intel_bw.c:557:
+	if (new_bw_state->qgv_points_mask != old_bw_state->qgv_points_mask) {
+

total: 0 errors, 0 warnings, 1 checks, 406 lines checked
a8667395977a drm/i915: Enable SAGV support for Gen12

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
