Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E161FCE5F
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 15:28:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD6776E061;
	Wed, 17 Jun 2020 13:28:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 858176E054;
 Wed, 17 Jun 2020 13:28:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7FD57A0009;
 Wed, 17 Jun 2020 13:28:08 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 17 Jun 2020 13:28:08 -0000
Message-ID: <159240048849.29978.4188896982104443569@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200617130916.15261-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200617130916.15261-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/selftests=3A_Enable?=
 =?utf-8?q?_selftesting_of_busy-stats?=
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

Series: series starting with [1/2] drm/i915/selftests: Enable selftesting of busy-stats
URL   : https://patchwork.freedesktop.org/series/78472/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
de62af0961f8 drm/i915/selftests: Enable selftesting of busy-stats
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
62c9c2ccee1d drm/i915/gt: Always report the sample time for busy-stats

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
