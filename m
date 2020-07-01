Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 901AD210857
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 11:37:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB7466E1F9;
	Wed,  1 Jul 2020 09:37:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 998986E03B;
 Wed,  1 Jul 2020 09:37:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 932E7A0BA8;
 Wed,  1 Jul 2020 09:37:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 01 Jul 2020 09:37:26 -0000
Message-ID: <159359624659.16669.4850400903526493558@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200701084053.6086-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200701084053.6086-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/33=5D_drm/i915/gt=3A_Harden_the_?=
 =?utf-8?q?heartbeat_against_a_stuck_driver?=
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

Series: series starting with [01/33] drm/i915/gt: Harden the heartbeat against a stuck driver
URL   : https://patchwork.freedesktop.org/series/78987/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d499941ea4dc drm/i915/gt: Harden the heartbeat against a stuck driver
-:43: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'heartbeat', this function's name, in a string
#43: FILE: drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c:135:
+					      "stopped heartbeat on %s",

total: 0 errors, 1 warnings, 0 checks, 35 lines checked
6005d22404ee drm/i915/gt: Move the heartbeat into the highprio system wq
a88b1324c0e4 drm/i915/gt: Decouple completed requests on unwind
6df6651ce794 drm/i915/gt: Check for a completed last request once
8a484e67419b drm/i915/gt: Replace direct submit with direct call to tasklet
b807a1aa2cc6 drm/i915/gt: Use virtual_engine during execlists_dequeue
e0d8e53384b4 drm/i915/gt: Decouple inflight virtual engines
07c202c5b553 drm/i915/gt: Defer schedule_out until after the next dequeue
77abad2cc860 drm/i915/gt: Resubmit the virtual engine on schedule-out
c20604000873 drm/i915/gt: Simplify virtual engine handling for execlists_hold()
1d3df5a15c70 drm/i915/gt: ce->inflight updates are now serialised
9a511c705c10 drm/i915/gt: Drop atomic for engine->fw_active tracking
7d0425bc6864 drm/i915/gt: Extract busy-stats for ring-scheduler
-:12: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#12: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 95 lines checked
851c723d19be drm/i915/gt: Convert stats.active to plain unsigned int
ac29cc857205 drm/i915: Lift waiter/signaler iterators
796fb1aa036a drm/i915: Strip out internal priorities
284c4ee82fb5 drm/i915: Remove I915_USER_PRIORITY_SHIFT
67f4f4fadb82 drm/i915: Replace engine->schedule() with a known request operation
5f0a0dc1333b drm/i915/gt: Do not suspend bonded requests if one hangs
7d61bb0dd5d2 drm/i915: Teach the i915_dependency to use a double-lock
a1a69cab81f5 drm/i915: Restructure priority inheritance
d7403349647f drm/i915/gt: Remove timeslice suppression
2569e0b593e7 drm/i915: Fair low-latency scheduling
-:1548: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#1548: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 1371 lines checked
675054b4e9d9 drm/i915/gt: Specify a deadline for the heartbeat
cf6941683a97 drm/i915: Replace the priority boosting for the display with a deadline
5af3de0375a1 drm/i915: Move saturated workload detection to the GT
-:22: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#22: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

-:22: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")'
#22: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

total: 1 errors, 1 warnings, 0 checks, 82 lines checked
5021faa7f115 Restore "drm/i915: drop engine_pin/unpin_breadcrumbs_irq"
7bfc5312e63e drm/i915/gt: Couple tasklet scheduling for all CS interrupts
2dca796d3efe drm/i915/gt: Support creation of 'internal' rings
988103172126 drm/i915/gt: Use client timeline address for seqno writes
8071d6c00487 drm/i915/gt: Infrastructure for ring scheduling
-:79: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#79: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 818 lines checked
86f134b795e6 drm/i915/gt: Implement ring scheduler for gen6/7
-:68: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#68: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:177:
+				*cs++ = i915_mmio_reg_offset(

-:70: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#70: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:179:
+				*cs++ = _MASKED_BIT_ENABLE(

-:105: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#105: FILE: drivers/gpu/drm/i915/gt/intel_ring_scheduler.c:214:
+				*cs++ = _MASKED_BIT_DISABLE(

total: 0 errors, 0 warnings, 3 checks, 536 lines checked
06d3b687d37c drm/i915/gt: Enable ring scheduling for gen6/7

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
