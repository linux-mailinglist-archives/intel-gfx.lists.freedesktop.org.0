Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBB13A8BA3
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jun 2021 00:11:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFDEC6E42F;
	Tue, 15 Jun 2021 22:11:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DFF1C6E42F;
 Tue, 15 Jun 2021 22:11:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DBE75A9A43;
 Tue, 15 Jun 2021 22:11:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Tue, 15 Jun 2021 22:11:52 -0000
Message-ID: <162379511289.8818.14981738416304613749@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210615205900.26578-1-matthew.brost@intel.com>
In-Reply-To: <20210615205900.26578-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBJ?=
 =?utf-8?q?ntroduce_i915=5Fsched=5Fengine_object_=28rev4=29?=
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

Series: Introduce i915_sched_engine object (rev4)
URL   : https://patchwork.freedesktop.org/series/90630/
State : failure

== Summary ==

Applying: drm/i915: Move priolist to new i915_sched_engine object
Applying: drm/i915: Add i915_sched_engine_is_empty function
Applying: drm/i915: Reset sched_engine.no_priolist immediately after dequeue
Applying: drm/i915: Move active tracking to i915_sched_engine
Applying: drm/i915: Move engine->schedule to i915_sched_engine
Applying: drm/i915: Add kick_backend function to i915_sched_engine
Applying: drm/i915: Update i915_scheduler to operate on i915_sched_engine
Applying: drm/i915: Move submission tasklet to i915_sched_engine
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/selftest_execlists.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gt/selftest_execlists.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/selftest_execlists.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0008 drm/i915: Move submission tasklet to i915_sched_engine
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
