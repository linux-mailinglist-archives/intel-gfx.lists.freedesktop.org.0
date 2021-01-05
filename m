Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 890952EAFD0
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 17:15:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9595C8945A;
	Tue,  5 Jan 2021 16:15:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EA43D893EC;
 Tue,  5 Jan 2021 16:15:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D8D97A47DB;
 Tue,  5 Jan 2021 16:15:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 05 Jan 2021 16:15:05 -0000
Message-ID: <160986330586.13807.13754384018171378350@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210105101309.10881-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210105101309.10881-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_Restore_ce-=3Esignal_flush_before_releasing_?=
 =?utf-8?q?virtual_engine_=28rev2=29?=
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

Series: drm/i915/gt: Restore ce->signal flush before releasing virtual engine (rev2)
URL   : https://patchwork.freedesktop.org/series/85493/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7ceba4fd2e81 drm/i915/gt: Restore ce->signal flush before releasing virtual engine
-:14: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit bab0557c8dca ("drm/i915/gt: Remove virtual breadcrumb before transfer")'
#14: 
bab0557c8dca ("drm/i915/gt: Remove virtual breadcrumb before transfer"),

-:34: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#34: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:478:
+       struct i915_request *rq, *rn;$

-:35: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#35: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:479:
+       unsigned long flags;$

-:36: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#36: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:480:
+       bool release;$

-:38: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#38: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:482:
+       if (list_empty(&ce->signals))$

-:38: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (7, 15)
#38: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:482:
+       if (list_empty(&ce->signals))
+               return false;

-:39: ERROR:CODE_INDENT: code indent should use tabs where possible
#39: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:483:
+               return false;$

-:39: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#39: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:483:
+               return false;$

-:41: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#41: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:485:
+       spin_lock_irqsave(&ce->signal_lock, flags);$

-:42: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#42: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:486:
+       list_for_each_entry_safe(rq, rn, &ce->signals, signal_link) {$

-:42: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (7, 15)
#42: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:486:
+       list_for_each_entry_safe(rq, rn, &ce->signals, signal_link) {
+               GEM_BUG_ON(!__i915_request_is_complete(rq));

-:43: ERROR:CODE_INDENT: code indent should use tabs where possible
#43: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:487:
+               GEM_BUG_ON(!__i915_request_is_complete(rq));$

-:43: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#43: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:487:
+               GEM_BUG_ON(!__i915_request_is_complete(rq));$

-:44: ERROR:CODE_INDENT: code indent should use tabs where possible
#44: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:488:
+               if (!test_and_clear_bit(I915_FENCE_FLAG_SIGNAL,$

-:44: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#44: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:488:
+               if (!test_and_clear_bit(I915_FENCE_FLAG_SIGNAL,$

-:44: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (15, 23)
#44: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:488:
+               if (!test_and_clear_bit(I915_FENCE_FLAG_SIGNAL,
[...]
+                       continue;

-:45: ERROR:CODE_INDENT: code indent should use tabs where possible
#45: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:489:
+                                       &rq->fence.flags))$

-:45: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#45: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:489:
+                                       &rq->fence.flags))$

-:46: ERROR:CODE_INDENT: code indent should use tabs where possible
#46: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:490:
+                       continue;$

-:46: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#46: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:490:
+                       continue;$

-:48: ERROR:CODE_INDENT: code indent should use tabs where possible
#48: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:492:
+               list_del_rcu(&rq->signal_link);$

-:48: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#48: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:492:
+               list_del_rcu(&rq->signal_link);$

-:49: ERROR:CODE_INDENT: code indent should use tabs where possible
#49: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:493:
+               irq_signal_request(rq, b);$

-:49: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#49: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:493:
+               irq_signal_request(rq, b);$

-:50: ERROR:CODE_INDENT: code indent should use tabs where possible
#50: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:494:
+               i915_request_put(rq);$

-:50: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#50: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:494:
+               i915_request_put(rq);$

-:51: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#51: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:495:
+       }$

-:53: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#53: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:497:
+       release = remove_signaling_context(b, ce);$

-:54: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#54: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:498:
+       spin_unlock_irqrestore(&ce->signal_lock, flags);$

-:55: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#55: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:499:
+       if (release)$

-:55: WARNING:SUSPECT_CODE_INDENT: suspect code indent for conditional statements (7, 15)
#55: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:499:
+       if (release)
+               intel_context_put(ce);

-:56: ERROR:CODE_INDENT: code indent should use tabs where possible
#56: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:500:
+               intel_context_put(ce);$

-:56: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#56: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:500:
+               intel_context_put(ce);$

-:58: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#58: FILE: drivers/gpu/drm/i915/gt/intel_breadcrumbs.c:502:
+       return true;$

total: 10 errors, 24 warnings, 0 checks, 104 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
