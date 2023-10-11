Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 013827C5954
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 18:38:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75D9A10E9AB;
	Wed, 11 Oct 2023 16:38:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AE9210E9AB
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 16:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697042330; x=1728578330;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/jm8A83G2ANoQbTpzcMBTJfnVMgs/9i9lJ0njJxmSRw=;
 b=ahMHiiop5kd1kT8UO+XRXNkOrYi0BLyGT15XFUu+UQTakgzzgS5hktYh
 YXqrsQTVwaVqunTCraTaoJay5pMdf5UlsKO4xQnYzl4ebbwH6cE+W1pFp
 Bgcu+1Cc3qH03Mrv1mco9Ey3Pl3bm5jos7RLRwY4lIHgarHSh4c4EgoU0
 XXbSYJIdioBVHFGbo7TfZKW3rCsrR6A4KIFBlJ81fkg9YoEurRN0u6UnX
 D3O5o+0nY8TCIauNe0eHXtdPiv3E9/l9iTn2WnD64zPZbHniJG8vRPwj8
 GqG3+h9aVcaxMR5IWmabKwaFHc7ydcm4se9vEUlC3IwfiREXa/FLr0tWf w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="3298984"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; 
   d="scan'208";a="3298984"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 09:38:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="844630891"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="844630891"
Received: from lpaczyn-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.57.43])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 09:38:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Oct 2023 19:38:28 +0300
Message-Id: <20231011163830.1055517-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915: make some error capture functions
 static
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

Not needed outside of i915_gpu_error.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 8 ++++----
 drivers/gpu/drm/i915/i915_gpu_error.h | 5 -----
 2 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index b4e31e59c799..db7ac28c44e5 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -520,7 +520,7 @@ __find_vma(struct i915_vma_coredump *vma, const char *name)
 	return NULL;
 }
 
-struct i915_vma_coredump *
+static struct i915_vma_coredump *
 intel_gpu_error_find_batch(const struct intel_engine_coredump *ee)
 {
 	return __find_vma(ee->vma, "batch");
@@ -609,9 +609,9 @@ void i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, ...)
 	va_end(args);
 }
 
-void intel_gpu_error_print_vma(struct drm_i915_error_state_buf *m,
-			       const struct intel_engine_cs *engine,
-			       const struct i915_vma_coredump *vma)
+static void intel_gpu_error_print_vma(struct drm_i915_error_state_buf *m,
+				      const struct intel_engine_cs *engine,
+				      const struct i915_vma_coredump *vma)
 {
 	char out[ASCII85_BUFSZ];
 	struct page *page;
diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
index 9f5971f5e980..c982b162b7ff 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -275,11 +275,6 @@ static inline void intel_klog_error_capture(struct intel_gt *gt,
 
 __printf(2, 3)
 void i915_error_printf(struct drm_i915_error_state_buf *e, const char *f, ...);
-void intel_gpu_error_print_vma(struct drm_i915_error_state_buf *m,
-			       const struct intel_engine_cs *engine,
-			       const struct i915_vma_coredump *vma);
-struct i915_vma_coredump *
-intel_gpu_error_find_batch(const struct intel_engine_coredump *ee);
 
 struct i915_gpu_coredump *i915_gpu_coredump(struct intel_gt *gt,
 					    intel_engine_mask_t engine_mask, u32 dump_flags);
-- 
2.39.2

