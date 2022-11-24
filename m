Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E25463789E
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Nov 2022 13:10:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CF7E10E6EB;
	Thu, 24 Nov 2022 12:10:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 383D110E6E0
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Nov 2022 12:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669291805; x=1700827805;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3PRgLIE7DtK9E81aLJNL8LqcHfRqxXDi23aurtOKIEY=;
 b=fwXPCa+QZHASDt+TDtQbRtwscGGTkplv8PXOnURRDPfC8CFgAeyhLdN2
 Jk6/+D9tKcWt4H3b+CjPi2pNtNG3n81CJpFSfIfY29SBYxzxQAr7PZu9u
 rFjooHod7mesISe0urtsfcHWut8UoDAOJ3CDKQ4j3ktyQRbCKzlbPT7Mj
 SsG5gph2NTK74CvJhlWsAc29yP9S0YK2p3vI6DnHPID/SDV2a3Sx802ka
 +/zv9nEcEYjFoRNYIV4iVec6uyN2dlKHzS0d4akI18QegA/Au2QvxV3Pe
 vURy0d+IcuIPe6XZ6AiAOuPUXx0FDXyyaADlEw75LcQqu1U95DpDZLLo+ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="314323206"
X-IronPort-AV: E=Sophos;i="5.96,190,1665471600"; d="scan'208";a="314323206"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2022 04:10:04 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="642330181"
X-IronPort-AV: E=Sophos;i="5.96,190,1665471600"; d="scan'208";a="642330181"
Received: from gsimsek-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.2.4])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2022 04:10:02 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Nov 2022 12:09:42 +0000
Message-Id: <20221124120943.241543-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221124120943.241543-1-matthew.auld@intel.com>
References: <20221124120943.241543-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/3] drm/i915/selftests: use live_subtests
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

