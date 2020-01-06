Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D97131096
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 11:31:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA6298984E;
	Mon,  6 Jan 2020 10:31:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C65F38982E;
 Mon,  6 Jan 2020 10:31:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BE3FDA47DF;
 Mon,  6 Jan 2020 10:31:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 06 Jan 2020 10:31:01 -0000
Message-ID: <157830666177.24767.6233778881188103757@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200106102227.2438478-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200106102227.2438478-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/8=5D_drm/i915/selftests=3A_Fixup_?=
 =?utf-8?q?sparse_=5F=5Fuser_annotation_on_local_var?=
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

Series: series starting with [1/8] drm/i915/selftests: Fixup sparse __user annotation on local var
URL   : https://patchwork.freedesktop.org/series/71648/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2b51023a3737 drm/i915/selftests: Fixup sparse __user annotation on local var
-:4: WARNING:EMAIL_SUBJECT: A patch subject line should describe the change not the tool that found it
#4: 
Subject: [PATCH] drm/i915/selftests: Fixup sparse __user annotation on local

total: 0 errors, 1 warnings, 0 checks, 10 lines checked
dc3de2f2809d drm/i915/selftests: Impose a timeout for request submission
6fc7325bd127 drm/i915/gt: Convert the final GEM_TRACE to GT_TRACE and co
-:9: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 639f2f24895f ("drm/i915: Introduce new macros for tracing")'
#9: 
References: 639f2f24895f ("drm/i915: Introduce new macros for tracing")

total: 1 errors, 0 warnings, 0 checks, 77 lines checked
4b68dfe31714 drm/i915: Merge i915_request.flags with i915_request.fence.flags
66b1f7932954 drm/i915: Replace vma parking with a clock aging algorithm
-:253: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#253: FILE: drivers/gpu/drm/i915/i915_vma.h:517:
+	spinlock_t lock;

total: 0 errors, 0 warnings, 1 checks, 194 lines checked
a5dd173981d4 drm/i915: Only retire requests when eviction is allowed to blocked
7ef130338af2 drm/i915/gt: Drop mutex serialisation between context pin/unpin
ce3a2924e90c drm/i915/gt: Use memset_p to clear the ports

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
