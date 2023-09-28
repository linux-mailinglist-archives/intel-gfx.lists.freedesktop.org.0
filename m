Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A807B24DF
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 20:09:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D462910E6A8;
	Thu, 28 Sep 2023 18:09:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90E0310E6AB
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 18:09:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695924575; x=1727460575;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PzrFYR9PX/0lavIBnWhmJJiquwQPQwkuYVczO3BSeF0=;
 b=d1iG5xv7IyWV2z/lh2OTSwRyMXPE+Mx3DIOBtBSRPH4RxP52laEN06cK
 9t8F6v9Ub91L02KQipBkYhWbsngTPriL47DdPGVcCOXHHaee/71H+ZCyO
 53XzcTdJbRkmDVK6PhqarapuZ831qcbF95HANRR6n/K7zLZrCiGTXGe6V
 hcsn+OrEbHCKxcnUUGt3rFutQt31Jv3VeMWdYH5Sq2Wl6zrm1AIPjZuV4
 B/yCohe+IK1H4KXD8qpCONQFuX4jfVIGa1K0yDBzIn+sfdPXTipxLAVby
 7bDoAoCRZGcHNid/XjqAXmsvNf/Thfvq1K5hrW7kPuLyv1Gu3XksA4S2/ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="384949768"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="384949768"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="873357099"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="873357099"
Received: from danielba-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.20])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Sep 2023 21:08:52 +0300
Message-Id: <7953952019a6362acbf8b20372d398b86fbf3a0e.1695924021.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1695924021.git.jani.nikula@intel.com>
References: <cover.1695924021.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/15] drm/i915: convert i915_coredump_get/put()
 to proper functions
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Also make i915_gpu_coredump_get() static, as it's not used outside of
i915_gpu_error.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 14 +++++++++++++-
 drivers/gpu/drm/i915/i915_gpu_error.h | 14 +-------------
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 17699b20694c..9b1bb5aeec11 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1060,7 +1060,7 @@ static void cleanup_gt(struct intel_gt_coredump *gt)
 	kfree(gt);
 }
 
-void __i915_gpu_coredump_free(struct kref *error_ref)
+static void i915_gpu_coredump_free(struct kref *error_ref)
 {
 	struct i915_gpu_coredump *error =
 		container_of(error_ref, typeof(*error), ref);
@@ -1080,6 +1080,18 @@ void __i915_gpu_coredump_free(struct kref *error_ref)
 	kfree(error);
 }
 
+static struct i915_gpu_coredump *i915_gpu_coredump_get(struct i915_gpu_coredump *gpu)
+{
+	kref_get(&gpu->ref);
+	return gpu;
+}
+
+void i915_gpu_coredump_put(struct i915_gpu_coredump *gpu)
+{
+	if (gpu)
+		kref_put(&gpu->ref, i915_gpu_coredump_free);
+}
+
 static struct i915_vma_coredump *
 i915_vma_coredump_create(const struct intel_gt *gt,
 			 const struct i915_vma_resource *vma_res,
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 68c964d6720a..f6f8d284a07d 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -305,23 +305,11 @@ void i915_vma_capture_finish(struct intel_gt_coredump *gt,
 
 void i915_error_state_store(struct i915_gpu_coredump *error);
 
-static inline struct i915_gpu_coredump *
-i915_gpu_coredump_get(struct i915_gpu_coredump *gpu)
-{
-	kref_get(&gpu->ref);
-	return gpu;
-}
-
 ssize_t
 i915_gpu_coredump_copy_to_buffer(struct i915_gpu_coredump *error,
 				 char *buf, loff_t offset, size_t count);
 
-void __i915_gpu_coredump_free(struct kref *kref);
-static inline void i915_gpu_coredump_put(struct i915_gpu_coredump *gpu)
-{
-	if (gpu)
-		kref_put(&gpu->ref, __i915_gpu_coredump_free);
-}
+void i915_gpu_coredump_put(struct i915_gpu_coredump *gpu);
 
 void i915_reset_error_state(struct drm_i915_private *i915);
 void i915_disable_error_state(struct drm_i915_private *i915, int err);
-- 
2.39.2

