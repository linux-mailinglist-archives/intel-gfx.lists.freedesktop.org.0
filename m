Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECB018F533
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 14:06:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3D90898B7;
	Mon, 23 Mar 2020 13:06:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 16A29897CD;
 Mon, 23 Mar 2020 13:06:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 142BEA00C7;
 Mon, 23 Mar 2020 13:06:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 23 Mar 2020 13:06:12 -0000
Message-ID: <158496877207.9810.5210245724096067249@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200323092841.22240-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200323092841.22240-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBz?=
 =?utf-8?q?eries_starting_with_=5B1/8=5D_drm/i915/gt=3A_Mark_timeline-=3Ec?=
 =?utf-8?q?acheline_as_destroyed_after_rcu_grace_period_=28rev3=29?=
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

Series: series starting with [1/8] drm/i915/gt: Mark timeline->cacheline as destroyed after rcu grace period (rev3)
URL   : https://patchwork.freedesktop.org/series/74967/
State : failure

== Summary ==

Applying: drm/i915/gt: Mark timeline->cacheline as destroyed after rcu grace period
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/intel_timeline.c
Falling back to patching base and 3-way merge...
No changes -- Patch already applied.
Applying: drm/i915: Avoid live-lock with i915_vma_parked()
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/i915_vma.c
Falling back to patching base and 3-way merge...
No changes -- Patch already applied.
Applying: drm/i915: Extend intel_wakeref to support delayed puts
Applying: drm/i915/gt: Delay release of engine-pm after last retirement
Applying: drm/i915: Rely on direct submission to the queue
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
M	drivers/gpu/drm/i915/gt/intel_lrc.c
M	drivers/gpu/drm/i915/i915_request.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
No changes -- Patch already applied.
Applying: drm/i915/execlists: Pull tasklet interrupt-bh local to direct submission
Applying: drm/i915: Immediately execute the fenced work
Applying: drm/i915/gem: Avoid gem_context->mutex for simple vma lookup
error: sha1 information is lacking or useless (drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c).
error: could not build fake ancestor
hint: Use 'git am --show-current-patch' to see the failed patch
Patch failed at 0008 drm/i915/gem: Avoid gem_context->mutex for simple vma lookup
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
