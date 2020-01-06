Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA89131339
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 14:51:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 432916E2C8;
	Mon,  6 Jan 2020 13:51:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C4C456E2C0;
 Mon,  6 Jan 2020 13:51:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BD1EAA0BCB;
 Mon,  6 Jan 2020 13:51:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 06 Jan 2020 13:51:52 -0000
Message-ID: <157831871274.24767.12993565055751770278@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200106114234.2529613-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200106114234.2529613-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/6=5D_drm/i915/selftests=3A_F?=
 =?utf-8?q?ixup_sparse_=5F=5Fuser_annotation_on_local_var?=
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

Series: series starting with [CI,1/6] drm/i915/selftests: Fixup sparse __user annotation on local var
URL   : https://patchwork.freedesktop.org/series/71656/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
49a394caf3df drm/i915/selftests: Fixup sparse __user annotation on local var
-:4: WARNING:EMAIL_SUBJECT: A patch subject line should describe the change not the tool that found it
#4: 
Subject: [PATCH] drm/i915/selftests: Fixup sparse __user annotation on local

total: 0 errors, 1 warnings, 0 checks, 10 lines checked
3eff419737e1 drm/i915/selftests: Impose a timeout for request submission
b021d68879f7 drm/i915: Merge i915_request.flags with i915_request.fence.flags
a875e0245eff drm/i915/gt: Convert the final GEM_TRACE to GT_TRACE and co
-:9: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 639f2f24895f ("drm/i915: Introduce new macros for tracing")'
#9: 
References: 639f2f24895f ("drm/i915: Introduce new macros for tracing")

total: 1 errors, 0 warnings, 0 checks, 77 lines checked
5e81d0a31df8 drm/i915/gt: Drop mutex serialisation between context pin/unpin
22bb3b1c9346 drm/i915/gt: Use memset_p to clear the ports

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
