Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E0B6403FB
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 11:03:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DFE910E6B7;
	Fri,  2 Dec 2022 10:03:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1152310E6B6
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Dec 2022 10:03:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669975395; x=1701511395;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3PRgLIE7DtK9E81aLJNL8LqcHfRqxXDi23aurtOKIEY=;
 b=lsLRc+Xl5jU3Lc+a+v+zSTDpC47b14UH2AQnwvz6WNxahsze5yUiDnhQ
 /qT1zOAsI5Nt8jQSAehwdW7sJykVKuEEVyjyVSiC4SRqIGAfAKGmaxPTc
 0tw2XXlLmM0cLOCbFVsyO8T6U+8MYc1/puC6l4vG1KyMUB/ws57kOW1ho
 m97MXT+TwGW3IZnbycpZKdvy/4Gr16eZ7PFLB2N2NyCw4rqNAPROc6ML8
 gLyVGbaYjk/dKFh4P0UKfrK7EqjAR2cUqkjbXF8UNbAVKFhlm6VAK8esM
 UFNkD+pImlAjKDwMB1wM7GfFwispkWBczfvkzV/hNr9vue55kD7OOu/iU g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="299290465"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="299290465"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 02:03:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="677553171"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="677553171"
Received: from ctfarrel-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.18.53])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 02:03:13 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Dec 2022 10:02:45 +0000
Message-Id: <20221202100246.406758-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221202100246.406758-1-matthew.auld@intel.com>
References: <20221202100246.406758-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 2/3] drm/i915/selftests: use live_subtests
 for live_migrate
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Probably a good idea to do an igt_flush_test() at the end of each
subtest, just to be sure the previous work has been flushed and doesn't
somehow interfere with the current subtest.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Chris Wilson <chris.p.wilson@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_migrate.c | 28 ++++++++++++++++------
 1 file changed, 21 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_migrate.c b/drivers/gpu/drm/i915/gt/selftest_migrate.c
index 0dc5309c90a4..1eab025ac002 100644
--- a/drivers/gpu/drm/i915/gt/selftest_migrate.c
+++ b/drivers/gpu/drm/i915/gt/selftest_migrate.c
@@ -486,7 +486,8 @@ global_clear(struct intel_migrate *migrate, u32 sz, struct rnd_state *prng)
 
 static int live_migrate_copy(void *arg)
 {
-	struct intel_migrate *migrate = arg;
+	struct intel_gt *gt = arg;
+	struct intel_migrate *migrate = &gt->migrate;
 	struct drm_i915_private *i915 = migrate->context->engine->i915;
 	I915_RND_STATE(prng);
 	int i;
@@ -507,7 +508,8 @@ static int live_migrate_copy(void *arg)
 
 static int live_migrate_clear(void *arg)
 {
-	struct intel_migrate *migrate = arg;
+	struct intel_gt *gt = arg;
+	struct intel_migrate *migrate = &gt->migrate;
 	struct drm_i915_private *i915 = migrate->context->engine->i915;
 	I915_RND_STATE(prng);
 	int i;
@@ -593,7 +595,10 @@ static int __thread_migrate_copy(void *arg)
 
 static int thread_migrate_copy(void *arg)
 {
-	return threaded_migrate(arg, __thread_migrate_copy, 0);
+	struct intel_gt *gt = arg;
+	struct intel_migrate *migrate = &gt->migrate;
+
+	return threaded_migrate(migrate, __thread_migrate_copy, 0);
 }
 
 static int __thread_global_copy(void *arg)
@@ -605,7 +610,10 @@ static int __thread_global_copy(void *arg)
 
 static int thread_global_copy(void *arg)
 {
-	return threaded_migrate(arg, __thread_global_copy, 0);
+	struct intel_gt *gt = arg;
+	struct intel_migrate *migrate = &gt->migrate;
+
+	return threaded_migrate(migrate, __thread_global_copy, 0);
 }
 
 static int __thread_migrate_clear(void *arg)
@@ -624,12 +632,18 @@ static int __thread_global_clear(void *arg)
 
 static int thread_migrate_clear(void *arg)
 {
-	return threaded_migrate(arg, __thread_migrate_clear, 0);
+	struct intel_gt *gt = arg;
+	struct intel_migrate *migrate = &gt->migrate;
+
+	return threaded_migrate(migrate, __thread_migrate_clear, 0);
 }
 
 static int thread_global_clear(void *arg)
 {
-	return threaded_migrate(arg, __thread_global_clear, 0);
+	struct intel_gt *gt = arg;
+	struct intel_migrate *migrate = &gt->migrate;
+
+	return threaded_migrate(migrate, __thread_global_clear, 0);
 }
 
 int intel_migrate_live_selftests(struct drm_i915_private *i915)
@@ -647,7 +661,7 @@ int intel_migrate_live_selftests(struct drm_i915_private *i915)
 	if (!gt->migrate.context)
 		return 0;
 
-	return i915_subtests(tests, &gt->migrate);
+	return intel_gt_live_subtests(tests, gt);
 }
 
 static struct drm_i915_gem_object *
-- 
2.38.1

