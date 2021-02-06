Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4B9311880
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Feb 2021 03:40:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 878846F55A;
	Sat,  6 Feb 2021 02:40:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 342726F551;
 Sat,  6 Feb 2021 02:40:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 25398A882F;
 Sat,  6 Feb 2021 02:40:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 06 Feb 2021 02:40:12 -0000
Message-ID: <161257921212.3570.14941891952815804397@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210206012019.27451-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210206012019.27451-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/5=5D_drm/i915=3A_Wrap_access?=
 =?utf-8?q?_to_intel=5Fengine=2Eactive?=
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

Series: series starting with [CI,1/5] drm/i915: Wrap access to intel_engine.active
URL   : https://patchwork.freedesktop.org/series/86797/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ced9b3f47b92 drm/i915: Wrap access to intel_engine.active
69d8dcdc66c1 drm/i915: Move common active lists from engine to i915_scheduler
-:295: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#295: FILE: drivers/gpu/drm/i915/i915_request.h:55:
+#define RQ_ARG(rq) (rq) ? (rq)->fence.context : 0, (rq) ? (rq)->fence.seqno : 0

-:295: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'rq' - possible side-effects?
#295: FILE: drivers/gpu/drm/i915/i915_request.h:55:
+#define RQ_ARG(rq) (rq) ? (rq)->fence.context : 0, (rq) ? (rq)->fence.seqno : 0

total: 1 errors, 0 warnings, 1 checks, 465 lines checked
c4249043eb53 drm/i915: Move scheduler queue
f993a982c9ad drm/i915: Move tasklet from execlists to sched
fe5dd19adf50 drm/i915/gt: Only kick the scheduler on timeslice/preemption change


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
