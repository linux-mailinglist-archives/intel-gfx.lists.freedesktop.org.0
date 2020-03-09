Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD9217E4F0
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 17:42:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DAD46E02C;
	Mon,  9 Mar 2020 16:42:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 46A206E02C;
 Mon,  9 Mar 2020 16:42:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3F618A3ECB;
 Mon,  9 Mar 2020 16:42:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Mon, 09 Mar 2020 16:42:31 -0000
Message-ID: <158377215123.9451.12709071678055399726@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
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
URL   : https://patchwork.freedesktop.org/series/74461/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e5a587535617 drm/i915: Start passing latency as parameter
33f087f7ad33 drm/i915: Introduce skl_plane_wm_level accessor.
187985037fe5 drm/i915: Add intel_bw_get_*_state helpers
0d3043296dee drm/i915: Refactor intel_can_enable_sagv
-:113: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#113: 
       check and also there seems to be no need for checking ddb_state_changes

total: 0 errors, 1 warnings, 0 checks, 548 lines checked
6bef05bea7fe drm/i915: Added required new PCode commands
794d317f4d58 drm/i915: Rename bw_state to new_bw_state
cf60e64c735d drm/i915: Restrict qgv points which don't have enough bandwidth.
0f8277c857a7 drm/i915: Enable SAGV support for Gen12

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
