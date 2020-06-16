Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 657B51FBD83
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 20:04:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90C516E95C;
	Tue, 16 Jun 2020 18:04:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 61D486E957;
 Tue, 16 Jun 2020 18:04:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5B2B9A00E6;
 Tue, 16 Jun 2020 18:04:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 16 Jun 2020 18:04:50 -0000
Message-ID: <159233069034.4595.8564515414778788292@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200616084141.3722-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200616084141.3722-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/9=5D_drm/i915/selftests=3A_Exerci?=
 =?utf-8?q?se_far_preemption_rollbacks?=
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

Series: series starting with [1/9] drm/i915/selftests: Exercise far preemption rollbacks
URL   : https://patchwork.freedesktop.org/series/78410/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
49d66c60e62f drm/i915/selftests: Exercise far preemption rollbacks
-:19: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit e36ba817fa96 ("drm/i915/gt: Incrementally check for rewinding")'
#19: 
References: e36ba817fa96 ("drm/i915/gt: Incrementally check for rewinding")

total: 1 errors, 0 warnings, 0 checks, 162 lines checked
c6088929414a drm/i915/selftests: Use friendly request names for live_timeslice_rewind
110ee4d71849 drm/i915/selftests: Enable selftesting of busy-stats
-:58: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#58: FILE: drivers/gpu/drm/i915/gt/selftest_engine_pm.c:48:
+		udelay(100);

-:89: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#89: FILE: drivers/gpu/drm/i915/gt/selftest_engine_pm.c:79:
+		udelay(100);

total: 0 errors, 0 warnings, 2 checks, 117 lines checked
16284702446a drm/i915/execlists: Replace direct submit with direct call to tasklet
81ca04a94781 drm/i915/execlists: Defer schedule_out until after the next dequeue
-:117: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
#117: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:2441:
+				*execlists->inactive++ = *port;
 				^

total: 0 errors, 0 warnings, 1 checks, 179 lines checked
499dd7003551 drm/i915/gt: ce->inflight updates are now serialised
2f30d63c06b7 drm/i915/gt: Drop atomic for engine->fw_active tracking
ef92526598ab drm/i915/gt: Extract busy-stats for ring-scheduler
-:12: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#12: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 95 lines checked
480f3ff83a82 drm/i915/gt: Convert stats.active to plain unsigned int

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
