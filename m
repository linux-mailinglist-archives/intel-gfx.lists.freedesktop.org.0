Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C87442C4974
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 22:02:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD4706E91D;
	Wed, 25 Nov 2020 21:02:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D25066E8F4;
 Wed, 25 Nov 2020 21:02:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BF86FA0003;
 Wed, 25 Nov 2020 21:02:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 25 Nov 2020 21:02:45 -0000
Message-ID: <160633816575.8876.8716376927601127894@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201124114219.29020-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201124114219.29020-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/16=5D_drm/i915/gem=3A_Drop_free?=
 =?utf-8?q?=5Fwork_for_GEM_contexts_=28rev2=29?=
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

Series: series starting with [01/16] drm/i915/gem: Drop free_work for GEM contexts (rev2)
URL   : https://patchwork.freedesktop.org/series/84208/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6a9d445df5f0 drm/i915/gem: Drop free_work for GEM contexts
28ee49679a93 drm/i915/gt: Track the overall awake/busy time
751fe66d87cd drm/i915/gt: Protect context lifetime with RCU
034828f6c326 drm/i915/gt: Split the breadcrumb spinlock between global and contexts
-:21: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#21: 
<4>[  416.208555] list_add corruption. prev->next should be next (ffff8881951d5910), but was dead000000000100. (prev=ffff8882781bb870).

total: 0 errors, 1 warnings, 0 checks, 354 lines checked
15caf4f197da drm/i915/gt: Move the breadcrumb to the signaler if completed upon cancel
2a338aa0ef6a drm/i915/gt: Decouple completed requests on unwind
1e6d70dcb4a2 drm/i915/gt: Check for a completed last request once
6a9999d8e7ef drm/i915/gt: Replace direct submit with direct call to tasklet
c4b1bfaf8db0 drm/i915/gt: ce->inflight updates are now serialised
894c9c3ed4e6 drm/i915/gt: Use virtual_engine during execlists_dequeue
151e7de90ee2 drm/i915/gt: Decouple inflight virtual engines
48e954a44fce drm/i915/gt: Defer schedule_out until after the next dequeue
e2fd6171baa5 drm/i915/gt: Remove virtual breadcrumb before transfer
b2024358e0aa drm/i915/gt: Shrink the critical section for irq signaling
ad07c0792414 drm/i915/gt: Resubmit the virtual engine on schedule-out
e0201bc67096 drm/i915/gt: Simplify virtual engine handling for execlists_hold()


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
