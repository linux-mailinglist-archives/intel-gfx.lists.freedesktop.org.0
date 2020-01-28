Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2294E14C1BD
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 21:43:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC3566E120;
	Tue, 28 Jan 2020 20:43:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EC506F405
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 20:43:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20040620-1500050 
 for multiple; Tue, 28 Jan 2020 20:43:19 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jan 2020 20:43:17 +0000
Message-Id: <20200128204318.4182039-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200128204318.4182039-1-chris@chris-wilson.co.uk>
References: <20200128204318.4182039-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/gt: Rename lrc.c to
 execlists_submission.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We want to separate the utility functions for controlling the logical
ring context from the execlists submission mechanism (which is an
overgrown scheduler).

This is similar to Daniele's work to split up the files, but being
selfish I wanted to base it after my own changes to intel_lrc.c petered
out.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/Makefile                                   | 2 +-
 .../drm/i915/gt/{intel_lrc.c => intel_execlists_submission.c}   | 2 +-
 .../gpu/drm/i915/gt/{selftest_lrc.c => selftest_execlists.c}    | 0
 3 files changed, 2 insertions(+), 2 deletions(-)
 rename drivers/gpu/drm/i915/gt/{intel_lrc.c => intel_execlists_submission.c} (99%)
 rename drivers/gpu/drm/i915/gt/{selftest_lrc.c => selftest_execlists.c} (100%)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 3c88d7d8c764..58b0e86c71f7 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -86,6 +86,7 @@ gt-y += \
 	gt/intel_engine_pm.o \
 	gt/intel_engine_pool.o \
 	gt/intel_engine_user.o \
+	gt/intel_execlists_submission.o \
 	gt/intel_ggtt.o \
 	gt/intel_gt.o \
 	gt/intel_gt_irq.o \
@@ -94,7 +95,6 @@ gt-y += \
 	gt/intel_gt_requests.o \
 	gt/intel_gtt.o \
 	gt/intel_llc.o \
-	gt/intel_lrc.o \
 	gt/intel_mocs.o \
 	gt/intel_ppgtt.o \
 	gt/intel_rc6.o \
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
similarity index 99%
rename from drivers/gpu/drm/i915/gt/intel_lrc.c
rename to drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 5b14f5bae68a..aa67561fee53 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -5290,5 +5290,5 @@ intel_engine_in_execlists_submission_mode(const struct intel_engine_cs *engine)
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
-#include "selftest_lrc.c"
+#include "selftest_execlists.c"
 #endif
diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
similarity index 100%
rename from drivers/gpu/drm/i915/gt/selftest_lrc.c
rename to drivers/gpu/drm/i915/gt/selftest_execlists.c
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
