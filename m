Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A000C1D90C5
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 09:15:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B65946E52A;
	Tue, 19 May 2020 07:15:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7C3366E528;
 Tue, 19 May 2020 07:15:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6BF4EA47E0;
 Tue, 19 May 2020 07:15:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 19 May 2020 07:15:03 -0000
Message-ID: <158987250341.31237.4179869970922635135@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200519063123.20673-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200519063123.20673-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/12=5D_drm/i915=3A_Don=27t_set_qu?=
 =?utf-8?q?eue-priority_hint_when_supressing_the_reschedule?=
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

Series: series starting with [01/12] drm/i915: Don't set queue-priority hint when supressing the reschedule
URL   : https://patchwork.freedesktop.org/series/77389/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
364ab8bd9968 drm/i915: Don't set queue-priority hint when supressing the reschedule
-:10: WARNING:TYPO_SPELLING: 'runnning' may be misspelled - perhaps 'running'?
#10: 
the HW runnning with only the inflight request.

total: 0 errors, 1 warnings, 0 checks, 28 lines checked
1d8f35d7152c drm/i915/selftests: Change priority overflow detection
160ec59b6ea7 drm/i915/selftests: Restore to default heartbeat
447b4e777a40 drm/i915/selftests: Check for an initial-breadcrumb in wait_for_submit()
841b9993f566 drm/i915/execlists: Shortcircuit queue_prio() for no internal levels
1ebfae936ba7 drm/i915: Move saturated workload detection back to the context
-:22: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#22: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

-:22: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")'
#22: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

total: 1 errors, 1 warnings, 0 checks, 68 lines checked
dabfa4752751 drm/i915/selftests: Add tests for timeslicing virtual engines
0bbb9df18350 drm/i915/gt: Kick virtual siblings on timeslice out
be9b4c6a092f drm/i915/gt: Incorporate the virtual engine into timeslicing
05075f82f723 drm/i915/gt: Use virtual_engine during execlists_dequeue
36097b3facaf drm/i915/gt: Decouple inflight virtual engines
2dd47ed24108 drm/i915/gt: Resubmit the virtual engine on schedule-out

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
