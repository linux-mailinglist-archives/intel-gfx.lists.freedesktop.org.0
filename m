Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3B12C2921
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 15:15:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE7DA6E3C6;
	Tue, 24 Nov 2020 14:15:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 20EC46E30F;
 Tue, 24 Nov 2020 14:15:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0C0E3A00E6;
 Tue, 24 Nov 2020 14:15:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 24 Nov 2020 14:15:06 -0000
Message-ID: <160622730604.10863.3152917168415169154@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201124114219.29020-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201124114219.29020-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/16=5D_drm/i915/gem=3A_Drop_free?=
 =?utf-8?q?=5Fwork_for_GEM_contexts?=
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

Series: series starting with [01/16] drm/i915/gem: Drop free_work for GEM contexts
URL   : https://patchwork.freedesktop.org/series/84208/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
09b67a534628 drm/i915/gem: Drop free_work for GEM contexts
b9f8bff31c91 drm/i915/gt: Track the overall awake/busy time
eb6ffa87b41a drm/i915/gt: Protect context lifetime with RCU
914d24e91664 drm/i915/gt: Split the breadcrumb spinlock between global and contexts
-:21: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#21: 
<4>[  416.208555] list_add corruption. prev->next should be next (ffff8881951d5910), but was dead000000000100. (prev=ffff8882781bb870).

total: 0 errors, 1 warnings, 0 checks, 354 lines checked
b79e10f24643 drm/i915/gt: Move the breadcrumb to the signaler if completed upon cancel
33ea2bdbd54e drm/i915/gt: Decouple completed requests on unwind
9391ee728d0e drm/i915/gt: Check for a completed last request once
c020778508b9 drm/i915/gt: Replace direct submit with direct call to tasklet
087ee180b178 drm/i915/gt: ce->inflight updates are now serialised
1b827d9f0c33 drm/i915/gt: Use virtual_engine during execlists_dequeue
63e4c2df7428 drm/i915/gt: Decouple inflight virtual engines
78d5482e6f09 drm/i915/gt: Defer schedule_out until after the next dequeue
e53d0a1009d0 drm/i915/gt: Remove virtual breadcrumb before transfer
25e468dbeb3c drm/i915/gt: Shrink the critical section for irq signaling
d1cd4435c155 drm/i915/gt: Resubmit the virtual engine on schedule-out
2203c2e5dec3 drm/i915/gt: Simplify virtual engine handling for execlists_hold()


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
