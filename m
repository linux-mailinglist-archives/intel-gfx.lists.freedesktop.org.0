Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A714A1FCFE0
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 16:41:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 064386E963;
	Wed, 17 Jun 2020 14:41:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BCAA76E0CF;
 Wed, 17 Jun 2020 14:41:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B6676A00C7;
 Wed, 17 Jun 2020 14:41:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 17 Jun 2020 14:41:49 -0000
Message-ID: <159240490971.29980.9755837986259388039@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200617141656.24384-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200617141656.24384-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B01/12=5D_drm/i915/selftests=3A_Enab?=
 =?utf-8?q?le_selftesting_of_busy-stats?=
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

Series: series starting with [01/12] drm/i915/selftests: Enable selftesting of busy-stats
URL   : https://patchwork.freedesktop.org/series/78475/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
87b8cc65bf25 drm/i915/selftests: Enable selftesting of busy-stats
-:99: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#99: 
new file mode 100644

-:169: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#169: FILE: drivers/gpu/drm/i915/gt/selftest_engine_pm.c:52:
+		udelay(100);

-:202: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#202: FILE: drivers/gpu/drm/i915/gt/selftest_engine_pm.c:85:
+		udelay(100);

total: 0 errors, 1 warnings, 2 checks, 861 lines checked
fcfc30daed01 drm/i915/gt: Always report the sample time for busy-stats
7121cc80a52d drm/i915/gt: Decouple completed requests on unwind
dd8868ea0e43 drm/i915/execlists: Replace direct submit with direct call to tasklet
-:51: ERROR:SPACING: spaces required around that '=' (ctx:WxV)
#51: FILE: drivers/gpu/drm/i915/gt/intel_engine_cs.c:915:
+	err =__intel_wait_for_register_fw(engine->uncore, mode,
 	    ^

total: 1 errors, 0 warnings, 0 checks, 258 lines checked
b5a72ad15f35 drm/i915/execlists: Defer schedule_out until after the next dequeue
-:117: CHECK:SPACING: spaces preferred around that '*' (ctx:ExV)
#117: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:2443:
+				*execlists->inactive++ = *port;
 				^

total: 0 errors, 0 warnings, 1 checks, 179 lines checked
9228c631502e drm/i915/gt: ce->inflight updates are now serialised
cdd288e77320 drm/i915/gt: Drop atomic for engine->fw_active tracking
cab30a74f3d5 drm/i915/gt: Extract busy-stats for ring-scheduler
-:12: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#12: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 95 lines checked
e26534592d91 drm/i915/gt: Convert stats.active to plain unsigned int
e834f6d8791c drm/i915/gt: Use virtual_engine during execlists_dequeue
6ea10f6c057d drm/i915/gt: Decouple inflight virtual engines
c2d47fcbc1c0 drm/i915/gt: Resubmit the virtual engine on schedule-out

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
