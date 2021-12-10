Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F2E470CA5
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 22:37:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A80510E2AA;
	Fri, 10 Dec 2021 21:37:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0989A10E248;
 Fri, 10 Dec 2021 21:37:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 00B6EAA01E;
 Fri, 10 Dec 2021 21:37:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sebastian Andrzej Siewior" <bigeasy@linutronix.de>
Date: Fri, 10 Dec 2021 21:37:10 -0000
Message-ID: <163917223097.3444.13603770873761710088@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211118165914.pckik75emivsilek@linutronix.de>
In-Reply-To: <20211118165914.pckik75emivsilek@linutronix.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Don=27t_disable_interrupts_and_pretend_a_lock_a?=
 =?utf-8?q?s_been_acquired_in_=5F=5Ftimeline=5Fmark=5Flock=28=29=2E_=28rev?=
 =?utf-8?q?2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: Don't disable interrupts and pretend a lock as been acquired in __timeline_mark_lock(). (rev2)
URL   : https://patchwork.freedesktop.org/series/97082/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
4e6d66ad49f7 drm/i915: Don't disable interrupts and pretend a lock as been acquired in __timeline_mark_lock().
-:8: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#8: 
   d67739268cf0e ("drm/i915/gt: Mark up the nested engine-pm timeline lock as irqsafe")

-:8: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit d67739268cf0 ("drm/i915/gt: Mark up the nested engine-pm timeline lock as irqsafe")'
#8: 
   d67739268cf0e ("drm/i915/gt: Mark up the nested engine-pm timeline lock as irqsafe")

-:9: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 6c69a45445af ("drm/i915/gt: Mark context->active_count as protected by timeline->mutex")'
#9: 
   6c69a45445af9 ("drm/i915/gt: Mark context->active_count as protected by timeline->mutex")

-:10: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 6dcb85a0ad99 ("drm/i915: Hold irq-off for the entire fake lock period")'
#10: 
   6dcb85a0ad990 ("drm/i915: Hold irq-off for the entire fake lock period")

-:138: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#138: FILE: drivers/gpu/drm/i915/i915_request.h:660:
+					 lockdep_is_held(&rcu_access_pointer(rq->timeline)->mutex) ||

total: 3 errors, 2 warnings, 0 checks, 87 lines checked


