Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 859A0637B71
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Nov 2022 15:29:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D9E510E0A4;
	Thu, 24 Nov 2022 14:29:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1D66610E0B0;
 Thu, 24 Nov 2022 14:29:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 18BF9AADD8;
 Thu, 24 Nov 2022 14:29:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Thu, 24 Nov 2022 14:29:08 -0000
Message-ID: <166930014806.28648.14484453875035889021@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221124120943.241543-1-matthew.auld@intel.com>
In-Reply-To: <20221124120943.241543-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv4=2C1/3=5D_drm/i915/migrate=3A_Acc?=
 =?utf-8?q?ount_for_the_reserved=5Fspace?=
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

Series: series starting with [v4,1/3] drm/i915/migrate: Account for the reserved_space
URL   : https://patchwork.freedesktop.org/series/111314/
State : warning

== Summary ==

Error: dim checkpatch failed
a161f13b1e36 drm/i915/migrate: Account for the reserved_space
-:36: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#36: FILE: drivers/gpu/drm/i915/gt/intel_migrate.c:347:
+       struct intel_ring *ring = rq->ring;$

-:38: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#38: FILE: drivers/gpu/drm/i915/gt/intel_migrate.c:349:
+       pkt = min_t(int, pkt, (ring->space - rq->reserved_space) / sizeof(u32) + 5);$

-:39: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#39: FILE: drivers/gpu/drm/i915/gt/intel_migrate.c:350:
+       pkt = min_t(int, pkt, (ring->size - ring->emit) / sizeof(u32) + 5);$

-:41: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#41: FILE: drivers/gpu/drm/i915/gt/intel_migrate.c:352:
+       return pkt;$

total: 0 errors, 4 warnings, 0 checks, 34 lines checked
e82b1ca63779 drm/i915/selftests: use live_subtests for live_migrate
f9c9bf06c390 drm/i915/selftests: exercise emit_pte() with nearly full ring
-:77: WARNING:TRACING_LOGGING: Unnecessary ftrace-like logging - prefer using ftrace
#77: FILE: drivers/gpu/drm/i915/gt/selftest_migrate.c:539:
+	pr_info("%s\n", __func__);

-:189: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#189: FILE: drivers/gpu/drm/i915/gt/selftest_migrate.c:651:
+	msleep(10); /* start all threads before we kthread_stop() */

total: 0 errors, 2 warnings, 0 checks, 200 lines checked


