Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FFA157E14
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 16:05:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00780896E5;
	Mon, 10 Feb 2020 15:05:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E6FD7896E4;
 Mon, 10 Feb 2020 15:05:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D5738A011C;
 Mon, 10 Feb 2020 15:05:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 10 Feb 2020 15:05:04 -0000
Message-ID: <158134710484.3097.18083772907698878050@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200209230838.361154-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200209230838.361154-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915/selftests=3A_Disabl?=
 =?utf-8?q?e_capturing_forced_error_states?=
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

Series: series starting with [1/4] drm/i915/selftests: Disable capturing forced error states
URL   : https://patchwork.freedesktop.org/series/73221/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
c6407ea9ac72 drm/i915/selftests: Disable capturing forced error states
e34be8809aed drm/i915/selftests: Drop live_preempt_hang
-:7: WARNING:TYPO_SPELLING: 'preemptable' may be misspelled - perhaps 'preemptible'?
#7: 
live_preempt_reset's use of an non-preemptable spinner. The latter does

total: 0 errors, 1 warnings, 0 checks, 190 lines checked
a25b770e208d drm/i915/selftests: Exercise timeslice rewinding
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
References: 5ba32c7be81e ("drm/i915/execlists: Always force a context reload when rewinding RING_TAIL")

-:13: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 5ba32c7be81e ("drm/i915/execlists: Always force a context reload when rewinding RING_TAIL")'
#13: 
References: 5ba32c7be81e ("drm/i915/execlists: Always force a context reload when rewinding RING_TAIL")

-:189: WARNING:MEMORY_BARRIER: memory barrier without comment
#189: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:929:
+		wmb();

-:219: WARNING:MEMORY_BARRIER: memory barrier without comment
#219: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:959:
+		wmb();

total: 1 errors, 3 warnings, 0 checks, 221 lines checked
793720a0bed2 drm/i915/selftests: Relax timeout for error-interrupt reset processing

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
