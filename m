Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3281A43B2D8
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Oct 2021 15:03:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2E7E6E433;
	Tue, 26 Oct 2021 13:03:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A41996E452;
 Tue, 26 Oct 2021 13:03:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E740A363C;
 Tue, 26 Oct 2021 13:03:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sebastian Andrzej Siewior" <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Oct 2021 13:03:02 -0000
Message-ID: <163525338262.9778.1093906876994651596@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211026114100.2593433-1-bigeasy@linutronix.de>
In-Reply-To: <20211026114100.2593433-1-bigeasy@linutronix.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_PREEMPT=5FRT_related_fixups=2E_=28rev3=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: PREEMPT_RT related fixups. (rev3)
URL   : https://patchwork.freedesktop.org/series/95463/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8fdcd01953e1 drm/i915: Don't disable interrupts and pretend a lock as been acquired in __timeline_mark_lock().
-:8: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#8: 
   d67739268cf0e ("drm/i915/gt: Mark up the nested engine-pm timeline lock as irqsafe")

-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d67739268cf0 ("drm/i915/gt: Mark up the nested engine-pm timeline lock as irqsafe")'
#8: 
   d67739268cf0e ("drm/i915/gt: Mark up the nested engine-pm timeline lock as irqsafe")

-:9: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 6c69a45445af ("drm/i915/gt: Mark context->active_count as protected by timeline->mutex")'
#9: 
   6c69a45445af9 ("drm/i915/gt: Mark context->active_count as protected by timeline->mutex")

-:29: WARNING:BAD_SIGN_OFF: Non-standard signature: 'Suggested--by:' - perhaps 'Suggested-by:'?
#29: 
Suggested--by: Peter Zijlstra (Intel) <peterz@infradead.org>

-:137: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#137: FILE: drivers/gpu/drm/i915/i915_request.h:645:
+					 lockdep_is_held(&rcu_access_pointer(rq->timeline)->mutex) ||

total: 2 errors, 3 warnings, 0 checks, 87 lines checked
b13483964853 drm/i915/gt: Queue and wait for the irq_work item.
711c9c2a91c5 drm/i915/gt: Use spin_lock_irq() instead of local_irq_disable() + spin_lock()
8acc14ce018e drm/i915: Drop the irqs_disabled() check
e33df9c8c839 drm/i915: Use preempt_disable/enable_rt() where recommended
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
  ad3543ede630f ("drm/intel: Push get_scanout_position() timestamping into kms driver.")

total: 0 errors, 1 warnings, 0 checks, 18 lines checked
dc40ab39e578 drm/i915: Don't disable interrupts on PREEMPT_RT during atomic updates
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
started disabling interrupts across atomic updates. This breaks on PREEMPT_RT

total: 0 errors, 1 warnings, 0 checks, 42 lines checked
0835ba9201bc drm/i915: Don't check for atomic context on PREEMPT_RT
27816f7f66ac drm/i915: Disable tracing points on PREEMPT_RT
a491b4dd2fa5 drm/i915: skip DRM_I915_LOW_LEVEL_TRACEPOINTS with NOTRACE


