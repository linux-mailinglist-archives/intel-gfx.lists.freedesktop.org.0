Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 51FD358371B
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 04:43:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D38210FE22;
	Thu, 28 Jul 2022 02:42:50 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 084F910EB80;
 Thu, 28 Jul 2022 02:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658976148; x=1690512148;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b8Ga4xLUDAoz8bO6/jyAZfRFGJ0ZnpxJbrvYzSyP1ZM=;
 b=O/RqvEMUnYPijPWn6oExgHMVhoyUdWs6/AMKf2L43rP80umgrwqV9RbV
 V4QIiXINkwKrgueoq/0PvJgsoKCnxdg1Lvn1OrvcXNApTjws999XJCcsy
 oR4WP4oiannsu1nNRSlJOsd/wi6l/u/tFSPnL4sxU29aztuj4xQYJu/EB
 xdP0vsV5oHrlR7EQV3R/1KQ98F8FxtBBXl0tZX6k1JYmhBl8XRkjshqHS
 dlS/jXgIXUETldmi7GdemgrDA+ni1xtTtRpORQ8M+eBSGPNjtVWtuJtCD
 W9NcQPSVnB7C1whVYCWakkYs1IvFgjcXH1aXrjZoKHb+60hL0WQGHbOSW w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="271443542"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="271443542"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 19:42:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="690096050"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Jul 2022 19:42:26 -0700
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 27 Jul 2022 19:42:23 -0700
Message-Id: <20220728024225.2363663-5-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220728024225.2363663-1-John.C.Harrison@Intel.com>
References: <20220728024225.2363663-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/6] drm/i915/selftest: Cope with not having an
 RCS engine
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

It is no longer guaranteed that there will always be an RCS engine.
So, use the helper function for finding the first available engine that
can be used for general purpose selftets.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index 6493265d5f642..7f3bb1d34dfbf 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -1302,13 +1302,15 @@ static int igt_reset_wait(void *arg)
 {
 	struct intel_gt *gt = arg;
 	struct i915_gpu_error *global = &gt->i915->gpu_error;
-	struct intel_engine_cs *engine = gt->engine[RCS0];
+	struct intel_engine_cs *engine;
 	struct i915_request *rq;
 	unsigned int reset_count;
 	struct hang h;
 	long timeout;
 	int err;
 
+	engine = intel_selftest_find_any_engine(gt);
+
 	if (!engine || !intel_engine_can_store_dword(engine))
 		return 0;
 
@@ -1432,7 +1434,7 @@ static int __igt_reset_evict_vma(struct intel_gt *gt,
 				 int (*fn)(void *),
 				 unsigned int flags)
 {
-	struct intel_engine_cs *engine = gt->engine[RCS0];
+	struct intel_engine_cs *engine;
 	struct drm_i915_gem_object *obj;
 	struct task_struct *tsk = NULL;
 	struct i915_request *rq;
@@ -1444,6 +1446,8 @@ static int __igt_reset_evict_vma(struct intel_gt *gt,
 	if (!gt->ggtt->num_fences && flags & EXEC_OBJECT_NEEDS_FENCE)
 		return 0;
 
+	engine = intel_selftest_find_any_engine(gt);
+
 	if (!engine || !intel_engine_can_store_dword(engine))
 		return 0;
 
@@ -1819,12 +1823,14 @@ static int igt_handle_error(void *arg)
 {
 	struct intel_gt *gt = arg;
 	struct i915_gpu_error *global = &gt->i915->gpu_error;
-	struct intel_engine_cs *engine = gt->engine[RCS0];
+	struct intel_engine_cs *engine;
 	struct hang h;
 	struct i915_request *rq;
 	struct i915_gpu_coredump *error;
 	int err;
 
+	engine = intel_selftest_find_any_engine(gt);
+
 	/* Check that we can issue a global GPU and engine reset */
 
 	if (!intel_has_reset_engine(gt))
-- 
2.37.1

