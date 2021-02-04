Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F402230F8E6
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 18:01:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 447E089B99;
	Thu,  4 Feb 2021 17:01:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0C14E898BF;
 Thu,  4 Feb 2021 17:01:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 052DFA0091;
 Thu,  4 Feb 2021 17:01:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 04 Feb 2021 17:01:50 -0000
Message-ID: <161245811099.4501.5682168970990029155@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210204121121.2660-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210204121121.2660-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BRFC=2C1/3=5D_proc=3A_Show_GPU_runti?=
 =?utf-8?q?mes?=
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

Series: series starting with [RFC,1/3] proc: Show GPU runtimes
URL   : https://patchwork.freedesktop.org/series/86693/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
852e50fbb083 proc: Show GPU runtimes
-:46: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
#46: FILE: fs/proc/base.c:3269:
+	ONE("gpu", S_IRUGO, proc_pid_gpu),

-:54: WARNING:SYMBOLIC_PERMS: Symbolic permissions 'S_IRUGO' are not preferred. Consider using octal permissions '0444'.
#54: FILE: fs/proc/base.c:3602:
+	ONE("gpu", S_IRUGO, proc_pid_gpu),

-:59: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#59: 
new file mode 100644

total: 0 errors, 3 warnings, 0 checks, 149 lines checked
b8f1256bd5ba drm/i915: Look up clients by pid
49cb9e5c8e5a drm/i915/gt: Export device and per-process runtimes via procfs
-:56: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#56: 
new file mode 100644

-:80: WARNING:CONSTANT_COMPARISON: Comparisons should place the constant on the right side of the test
#80: FILE: drivers/gpu/drm/i915/gt/intel_gt_proc.c:20:
+	BUILD_BUG_ON(MAX_ENGINE_CLASS >= ARRAY_SIZE(rt->channel));

total: 0 errors, 2 warnings, 0 checks, 125 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
