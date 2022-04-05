Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 734B74F3C65
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 17:41:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70FC610E970;
	Tue,  5 Apr 2022 15:41:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9656310E972;
 Tue,  5 Apr 2022 15:41:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 91F5BAA01E;
 Tue,  5 Apr 2022 15:41:45 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Tue, 05 Apr 2022 15:41:45 -0000
Message-ID: <164917330556.24157.10219822252939348735@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220405145345.3284084-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20220405145345.3284084-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Inherit_GPU_scheduling_priority_from_process_nice?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Inherit GPU scheduling priority from process nice
URL   : https://patchwork.freedesktop.org/series/102203/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ded698b30753 drm/i915: Make some recently added vfuncs use full scheduling attribute
-:7: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 71ed60112d5d ("drm/i915: Add kick_backend function to i915_sched_engine")'
#7: 
Code added in 71ed60112d5d ("drm/i915: Add kick_backend function to

-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit ee242ca704d3 ("drm/i915/guc: Implement GuC priority management")'
#8: 
i915_sched_engine") and ee242ca704d3 ("drm/i915/guc: Implement GuC

total: 2 errors, 0 warnings, 0 checks, 56 lines checked
809fe4fc972b drm/i915: Inherit process nice for context scheduling priority
ac9ed0a50032 drm/i915: Inherit submitter nice when scheduling requests


