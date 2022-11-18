Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAABE62F763
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 15:33:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F5F410E758;
	Fri, 18 Nov 2022 14:33:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 43E8910E758;
 Fri, 18 Nov 2022 14:33:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3CDFFAADE1;
 Fri, 18 Nov 2022 14:33:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Fri, 18 Nov 2022 14:33:10 -0000
Message-ID: <166878199024.25642.12385691271681074775@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221118135723.621653-1-matthew.auld@intel.com>
In-Reply-To: <20221118135723.621653-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv2=2C1/2=5D_drm/i915/migrate=3A_Acc?=
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

Series: series starting with [v2,1/2] drm/i915/migrate: Account for the reserved_space
URL   : https://patchwork.freedesktop.org/series/111076/
State : warning

== Summary ==

Error: dim checkpatch failed
4cce983fec4a drm/i915/migrate: Account for the reserved_space
-:33: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#33: FILE: drivers/gpu/drm/i915/gt/intel_migrate.c:347:
+       struct intel_ring *ring = rq->ring;$

-:35: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#35: FILE: drivers/gpu/drm/i915/gt/intel_migrate.c:349:
+       pkt = min_t(int, pkt, (ring->space - rq->reserved_space) / sizeof(u32) + 5);$

-:36: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#36: FILE: drivers/gpu/drm/i915/gt/intel_migrate.c:350:
+       pkt = min_t(int, pkt, (ring->size - ring->emit) / sizeof(u32) + 5);$

-:38: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#38: FILE: drivers/gpu/drm/i915/gt/intel_migrate.c:352:
+       return pkt;$

total: 0 errors, 4 warnings, 0 checks, 34 lines checked
28ff1746d334 drm/i915/selftests: exercise emit_pte() with nearly full ring
-:179: WARNING:MSLEEP: msleep < 20ms can sleep for up to 20ms; see Documentation/timers/timers-howto.rst
#179: FILE: drivers/gpu/drm/i915/gt/selftest_migrate.c:644:
+	msleep(10); /* start all threads before we kthread_stop() */

total: 0 errors, 1 warnings, 0 checks, 194 lines checked


