Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C84864045F
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 11:18:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6615910E6B6;
	Fri,  2 Dec 2022 10:18:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1358910E6B6;
 Fri,  2 Dec 2022 10:18:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0B7B3A882E;
 Fri,  2 Dec 2022 10:18:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Fri, 02 Dec 2022 10:18:43 -0000
Message-ID: <166997632301.27864.5800233307946154292@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221202100246.406758-1-matthew.auld@intel.com>
In-Reply-To: <20221202100246.406758-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv5=2C1/3=5D_drm/i915/migrate=3A_Acc?=
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

Series: series starting with [v5,1/3] drm/i915/migrate: Account for the reserved_space
URL   : https://patchwork.freedesktop.org/series/111577/
State : warning

== Summary ==

Error: dim checkpatch failed
977e2603928c drm/i915/migrate: Account for the reserved_space
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
bce28e11b423 drm/i915/selftests: use live_subtests for live_migrate
d5c2ffdf5bf0 drm/i915/selftests: exercise emit_pte() with nearly full ring
-:15: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#15: 
v5: Use a simple on-stack timer to kill the spinner instead of kthread (Chris)

-:82: WARNING:TRACING_LOGGING: Unnecessary ftrace-like logging - prefer using ftrace
#82: FILE: drivers/gpu/drm/i915/gt/selftest_migrate.c:543:
+	pr_info("%s\n", __func__);

total: 0 errors, 2 warnings, 0 checks, 187 lines checked


