Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A11EA170AFC
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 23:00:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0141C6E4E3;
	Wed, 26 Feb 2020 22:00:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EE3056E4E3;
 Wed, 26 Feb 2020 22:00:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E6F2EA0088;
 Wed, 26 Feb 2020 22:00:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Wed, 26 Feb 2020 22:00:42 -0000
Message-ID: <158275444294.21010.15439251911305697064@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200224153240.9047-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200224153240.9047-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Refactor_Gen11+_SAGV_support_=28rev5=29?=
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

Series: Refactor Gen11+ SAGV support (rev5)
URL   : https://patchwork.freedesktop.org/series/73856/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a9bdbd2c7c9d drm/i915: Start passing latency as parameter
c0db4cbaa46c drm/i915: Introduce skl_plane_wm_level accessor.
dcf925de4a6c drm/i915: Add intel_bw_get_*_state helpers
7983f49f5fc4 drm/i915: Introduce more *_state_changed indicators
3ffbee21ace8 drm/i915: Refactor intel_can_enable_sagv
-:804: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'state->active_pipe_changes != 0'
#804: FILE: drivers/gpu/drm/i915/intel_pm.c:6184:
+	if ((state->active_pipe_changes != 0) || state->ddb_state_changed)

total: 0 errors, 0 warnings, 1 checks, 680 lines checked
ca0b8463a323 drm/i915: Added required new PCode commands
e819fd5ee1d8 drm/i915: Restrict qgv points which don't have enough bandwidth.
467a14ba6c89 drm/i915: Enable SAGV support for Gen12

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
