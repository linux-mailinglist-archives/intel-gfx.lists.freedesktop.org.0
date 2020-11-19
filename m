Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6846B2B9A3A
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 18:59:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64BCE89AA6;
	Thu, 19 Nov 2020 17:59:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6100389A5E;
 Thu, 19 Nov 2020 17:59:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 594EAA8169;
 Thu, 19 Nov 2020 17:59:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 19 Nov 2020 17:59:50 -0000
Message-ID: <160580879033.18186.15264661237843831356@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201119165616.10834-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201119165616.10834-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5BCI=2C1/6=5D_drm/i915/gt=3A_Include_?=
 =?utf-8?q?semaphore_status_in_print=5Frequest=28=29?=
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

Series: series starting with [CI,1/6] drm/i915/gt: Include semaphore status in print_request()
URL   : https://patchwork.freedesktop.org/series/84073/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
93a1f698eabf drm/i915/gt: Include semaphore status in print_request()
b4a8a32b2827 drm/i915: Lift i915_request_show()
b181d794d0c7 drm/i915/gt: Update request status flags for debug pretty-printer
d57734fd8c75 drm/i915/gt: Show all active timelines for debugging
-:12: WARNING:BAD_SIGN_OFF: Non-standard signature: Reviewd-by:
#12: 
Reviewd-by: Chris Wilson <chris@chris-wilson.co.uk>

total: 0 errors, 1 warnings, 0 checks, 138 lines checked
f9256f4ad02d drm/i915: Lift waiter/signaler iterators
1761480b7c1c drm/i915: Show timeline dependencies for debug
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
Timeline 886: { count 1, ready: 0, inflight: 0, seqno: { current: 664, last: 666 }, engine: rcs0 }

total: 0 errors, 1 warnings, 0 checks, 66 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
