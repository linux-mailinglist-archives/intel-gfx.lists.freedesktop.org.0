Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 001A27B2DB8
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Sep 2023 10:22:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66E7710E123;
	Fri, 29 Sep 2023 08:22:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F0AF10E6CC
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Sep 2023 08:22:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695975746; x=1727511746;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=MFVaQlJQOS52hNgYbpRX7KUH8QE49pqsHGxaCkgexIQ=;
 b=DKyUOgt0TEAz3kR2tbylSCJ/QhDX90EJ4sE8CPoNHpO0SIpeDxXyWM8k
 y66jHRJU+P+hmOOf9zPDLrMhUP1aHnWAlLbogRnEDUEba7EoSSONC3bB5
 iMf59LNrwL4e3BQuhd+ahOxyu8Ls5EljDScMKxlkGLndJqR3WfrvaTJe3
 Egu6mywCfu3msnXilDXzf7t/Tqm0iygPPOvwZwRaQkIhdYpIYrCqyhfuL
 Fz3+GWxssIT0b+icDJHdkPq5SSPky9U6s+P+1UfRKNOn5JAgDKFWofEOW
 0lDwvWHbeNCPEgrLUGUTY1BbSHAejZaOswdSSO7LQnzFRw+KlSUh0Pc/q w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="385070573"
X-IronPort-AV: E=Sophos;i="6.03,186,1694761200"; d="scan'208";a="385070573"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 00:46:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="865614319"
X-IronPort-AV: E=Sophos;i="6.03,186,1694761200"; d="scan'208";a="865614319"
Received: from danielba-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.20])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2023 00:46:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
	intel-gfx@lists.freedesktop.org
Date: Fri, 29 Sep 2023 10:46:36 +0300
Message-Id: <20230929074636.1433475-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <d5f8aab89835a70c0af741e7f5765fc2c4875bf7.1695924021.git.jani.nikula@intel.com>
References: <d5f8aab89835a70c0af741e7f5765fc2c4875bf7.1695924021.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915: do more in
 i915_gpu_coredump_alloc()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reduce gpu error interface further by doing more in
i915_gpu_coredump_alloc().

v2: Fix build for CONFIG_DRM_I915_CAPTURE_ERROR=n

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/gt/intel_execlists_submission.c  | 16 +-------
 drivers/gpu/drm/i915/i915_gpu_error.c         | 38 +++++++++++++++++--
 drivers/gpu/drm/i915/i915_gpu_error.h         | 22 +----------
 3 files changed, 38 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index e8f42ec6b1b4..7c7e8c3a12e0 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -2261,26 +2261,12 @@ static struct execlists_capture *capture_regs(struct intel_engine_cs *engine)
 	if (!cap)
 		return NULL;
 
-	cap->error = i915_gpu_coredump_alloc(engine->i915, gfp);
+	cap->error = i915_gpu_coredump_alloc(engine, gfp);
 	if (!cap->error)
 		goto err_cap;
 
-	cap->error->gt = intel_gt_coredump_alloc(engine->gt, gfp, CORE_DUMP_FLAG_NONE);
-	if (!cap->error->gt)
-		goto err_gpu;
-
-	cap->error->gt->engine = intel_engine_coredump_alloc(engine, gfp, CORE_DUMP_FLAG_NONE);
-	if (!cap->error->gt->engine)
-		goto err_gt;
-
-	cap->error->gt->engine->hung = true;
-
 	return cap;
 
-err_gt:
-	kfree(cap->error->gt);
-err_gpu:
-	kfree(cap->error);
 err_cap:
 	kfree(cap);
 	return NULL;
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 9b1bb5aeec11..e4185f30f07c 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -63,6 +63,9 @@
 #define ALLOW_FAIL (__GFP_KSWAPD_RECLAIM | __GFP_RETRY_MAYFAIL | __GFP_NOWARN)
 #define ATOMIC_MAYFAIL (GFP_ATOMIC | __GFP_NOWARN)
 
+struct intel_gt_coredump *
+intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp, u32 dump_flags);
+
 static void __sg_set_buf(struct scatterlist *sg,
 			 void *addr, unsigned int len, loff_t it)
 {
@@ -2005,8 +2008,8 @@ static void capture_gen(struct i915_gpu_coredump *error)
 	error->driver_caps = i915->caps;
 }
 
-struct i915_gpu_coredump *
-i915_gpu_coredump_alloc(struct drm_i915_private *i915, gfp_t gfp)
+static struct i915_gpu_coredump *
+__i915_gpu_coredump_alloc(struct drm_i915_private *i915, gfp_t gfp)
 {
 	struct i915_gpu_coredump *error;
 
@@ -2030,6 +2033,35 @@ i915_gpu_coredump_alloc(struct drm_i915_private *i915, gfp_t gfp)
 	return error;
 }
 
+struct i915_gpu_coredump *
+i915_gpu_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp)
+{
+	struct i915_gpu_coredump *error;
+
+	error = __i915_gpu_coredump_alloc(engine->i915, gfp);
+	if (!error)
+		return NULL;
+
+	error->gt = intel_gt_coredump_alloc(engine->gt, gfp, CORE_DUMP_FLAG_NONE);
+	if (!error->gt)
+		goto err_gpu;
+
+	error->gt->engine = intel_engine_coredump_alloc(engine, gfp, CORE_DUMP_FLAG_NONE);
+	if (!error->gt->engine)
+		goto err_gt;
+
+	error->gt->engine->hung = true;
+
+	return error;
+
+err_gt:
+	kfree(error->gt);
+err_gpu:
+	kfree(error);
+
+	return NULL;
+}
+
 #define DAY_AS_SECONDS(x) (24 * 60 * 60 * (x))
 
 struct intel_gt_coredump *
@@ -2102,7 +2134,7 @@ __i915_gpu_coredump(struct intel_gt *gt, intel_engine_mask_t engine_mask, u32 du
 	if (IS_ERR(error))
 		return error;
 
-	error = i915_gpu_coredump_alloc(i915, ALLOW_FAIL);
+	error = __i915_gpu_coredump_alloc(i915, ALLOW_FAIL);
 	if (!error)
 		return ERR_PTR(-ENOMEM);
 
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index f6f8d284a07d..a0ab187b426d 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -280,13 +280,7 @@ void i915_capture_error_state(struct intel_gt *gt,
 			      intel_engine_mask_t engine_mask, u32 dump_flags);
 
 struct i915_gpu_coredump *
-i915_gpu_coredump_alloc(struct drm_i915_private *i915, gfp_t gfp);
-
-struct intel_gt_coredump *
-intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp, u32 dump_flags);
-
-struct intel_engine_coredump *
-intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp, u32 dump_flags);
+i915_gpu_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp);
 
 struct intel_engine_capture_vma *
 intel_engine_coredump_add_request(struct intel_engine_coredump *ee,
@@ -332,19 +326,7 @@ i915_capture_error_state(struct intel_gt *gt, intel_engine_mask_t engine_mask, u
 }
 
 static inline struct i915_gpu_coredump *
-i915_gpu_coredump_alloc(struct drm_i915_private *i915, gfp_t gfp)
-{
-	return NULL;
-}
-
-static inline struct intel_gt_coredump *
-intel_gt_coredump_alloc(struct intel_gt *gt, gfp_t gfp, u32 dump_flags)
-{
-	return NULL;
-}
-
-static inline struct intel_engine_coredump *
-intel_engine_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp, u32 dump_flags)
+i915_gpu_coredump_alloc(struct intel_engine_cs *engine, gfp_t gfp)
 {
 	return NULL;
 }
-- 
2.39.2

