Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59157349BA4
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 22:28:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E6856EE4C;
	Thu, 25 Mar 2021 21:28:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2AB436EE4C;
 Thu, 25 Mar 2021 21:28:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 23D6CA8169;
 Thu, 25 Mar 2021 21:28:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Thu, 25 Mar 2021 21:28:33 -0000
Message-ID: <161670771314.15545.2908543606852475208@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210323155059.628690-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210323155059.628690-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBk?=
 =?utf-8?q?rm/i915=3A_Remove_obj-=3Emm=2Elock!_=28rev20=29?=
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

Series: drm/i915: Remove obj->mm.lock! (rev20)
URL   : https://patchwork.freedesktop.org/series/82337/
State : failure

== Summary ==

Applying: drm/i915: Do not share hwsp across contexts any more, v8.
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gt/gen2_engine_cs.c
M	drivers/gpu/drm/i915/gt/gen6_engine_cs.c
M	drivers/gpu/drm/i915/gt/gen8_engine_cs.c
M	drivers/gpu/drm/i915/gt/intel_engine_cs.c
M	drivers/gpu/drm/i915/gt/intel_gt_types.h
M	drivers/gpu/drm/i915/gt/intel_timeline.c
M	drivers/gpu/drm/i915/gt/intel_timeline_types.h
M	drivers/gpu/drm/i915/gt/selftest_engine_cs.c
M	drivers/gpu/drm/i915/gt/selftest_timeline.c
M	drivers/gpu/drm/i915/i915_request.c
M	drivers/gpu/drm/i915/i915_request.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/i915_request.h
Auto-merging drivers/gpu/drm/i915/i915_request.c
Auto-merging drivers/gpu/drm/i915/gt/selftest_timeline.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/selftest_timeline.c
Auto-merging drivers/gpu/drm/i915/gt/selftest_engine_cs.c
Auto-merging drivers/gpu/drm/i915/gt/intel_timeline.c
CONFLICT (content): Merge conflict in drivers/gpu/drm/i915/gt/intel_timeline.c
Auto-merging drivers/gpu/drm/i915/gt/intel_gt_types.h
Auto-merging drivers/gpu/drm/i915/gt/intel_engine_cs.c
Auto-merging drivers/gpu/drm/i915/gt/gen8_engine_cs.c
error: Failed to merge in the changes.
hint: Use 'git am --show-current-patch=diff' to see the failed patch
Patch failed at 0001 drm/i915: Do not share hwsp across contexts any more, v8.
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
