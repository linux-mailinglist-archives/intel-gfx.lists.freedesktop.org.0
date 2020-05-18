Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8EE1D77FD
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 13:55:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B97089CDD;
	Mon, 18 May 2020 11:55:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AD93489CC4;
 Mon, 18 May 2020 11:55:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A8DB8A0019;
 Mon, 18 May 2020 11:55:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 18 May 2020 11:55:14 -0000
Message-ID: <158980291466.31686.6630479231333712043@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200518081440.17948-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200518081440.17948-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/8=5D_drm/i915=3A_Move_saturated_w?=
 =?utf-8?q?orkload_detection_back_to_the_context?=
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

Series: series starting with [1/8] drm/i915: Move saturated workload detection back to the context
URL   : https://patchwork.freedesktop.org/series/77344/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
a07fc7f12a37 drm/i915: Move saturated workload detection back to the context
-:22: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#22: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

-:22: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")'
#22: 
References: 44d89409a12e ("drm/i915: Make the semaphore saturation mask global")

total: 1 errors, 1 warnings, 0 checks, 68 lines checked
d8b03783bec1 drm/i915/selftests: Add tests for timeslicing virtual engines
d4ceed5eec15 drm/i915/gt: Reuse the tasklet priority for virtual as their siblings
03c163916111 drm/i915/gt: Kick virtual siblings on timeslice out
eaf97f160cbc drm/i915/gt: Incorporate the virtual engine into timeslicing
494e3a2b5679 drm/i915/gt: Use virtual_engine during execlists_dequeue
4aadd62c73e8 drm/i915/gt: Decouple inflight virtual engines
ec4244a39688 drm/i915/gt: Resubmit the virtual engine on schedule-out

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
