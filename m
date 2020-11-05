Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F102A7F76
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 14:09:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D87A6E214;
	Thu,  5 Nov 2020 13:09:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 650F36E20F;
 Thu,  5 Nov 2020 13:09:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5AE43A73C9;
 Thu,  5 Nov 2020 13:09:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 05 Nov 2020 13:09:09 -0000
Message-ID: <160458174934.14956.17513203433315721711@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201105101134.19716-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201105101134.19716-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/22=5D_drm/i915/gem=3A_Allow_back?=
 =?utf-8?q?ends_to_override_pread_implementation?=
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

Series: series starting with [01/22] drm/i915/gem: Allow backends to override pread implementation
URL   : https://patchwork.freedesktop.org/series/83531/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6fbdba27ca31 drm/i915/gem: Allow backends to override pread implementation
a5de1d267d9a drm/i915/gem: Pull phys pread/pwrite implementations to the backend
d3521ebb911c drm/i915/gt: Limit VFE threads based on GT
-:20: WARNING:BAD_SIGN_OFF: email address 'stable@vger.kernel.org # v5.7+' might be better as 'stable@vger.kernel.org# v5.7+'
#20: 
Cc: stable@vger.kernel.org # v5.7+

total: 0 errors, 1 warnings, 0 checks, 72 lines checked
ce4a05929791 drm/i915/gt: Ignore dt==0 for reporting underflows
a8d43b6134c8 drm/i915/gt: Defer enabling the breadcrumb interrupt to after submission
8fe2236ab09e drm/i915/gt: Track signaled breadcrumbs outside of the breadcrumb spinlock
8f3f2649e621 drm/i915/gt: Don't cancel the interrupt shadow too early
fe466f1ae1c7 drm/i915/gt: Free stale request on destroying the virtual engine
9956bfd7f969 drm/i915/gt: Protect context lifetime with RCU
57c8a538c2bd drm/i915/gt: Split the breadcrumb spinlock between global and contexts
-:21: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#21: 
<4>[  416.208555] list_add corruption. prev->next should be next (ffff8881951d5910), but was dead000000000100. (prev=ffff8882781bb870).

total: 0 errors, 1 warnings, 0 checks, 354 lines checked
a2af308523e1 drm/i915/gt: Move the breadcrumb to the signaler if completed upon cancel
46e3d7cf0454 drm/i915/gt: Decouple completed requests on unwind
80e49f36feb1 drm/i915/gt: Check for a completed last request once
9dd42269640d drm/i915/gt: Replace direct submit with direct call to tasklet
53590b6123f7 drm/i915/gt: ce->inflight updates are now serialised
b02c7a5ab8b2 drm/i915/gt: Use virtual_engine during execlists_dequeue
2bf8f8bb9f43 drm/i915/gt: Decouple inflight virtual engines
0b708fefe4ea drm/i915/gt: Defer schedule_out until after the next dequeue
91b5785b110b drm/i915/gt: Remove virtual breadcrumb before transfer
59e8cd29cfb0 drm/i915/gt: Shrink the critical section for irq signaling
73cad7374c56 drm/i915/gt: Resubmit the virtual engine on schedule-out
7021e5096ff6 drm/i915/gt: Simplify virtual engine handling for execlists_hold()


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
