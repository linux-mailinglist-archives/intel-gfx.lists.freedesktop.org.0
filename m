Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA107B24D9
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 20:09:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC57410E6A6;
	Thu, 28 Sep 2023 18:09:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5AE010E6AA
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 18:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695924564; x=1727460564;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dhFM97YNeGstLbvO0u7Q3H8IAKcIh3k5EyyderI7EF0=;
 b=XJC+HUZeJfH53TMjiSpDY8MS52dC2CZjEutWIvEdHLD92BQdTRolLVkz
 kcNOF2icFmoS6tuCKjwV2x5qvf93pK5b0+VHdvoK0V47b0PT9pobwoibH
 Dzvhc7VzfR877W6yRhMyKqFn/lIKUVQT4JVig9TY/I6ijh01bHpVglO40
 xdHVmMv+nyFoPktcSi0iZQbW/QA02FtnP1L3DV3kAfILt0lEGCkOkS5No
 Z1gSSgX6oL6qmJtTFmXPEi63xQFJYqxcX9MasWiYIPJgbZ+Aqyp+NBd2j
 NfaYRVeP4p+BN5NmVRg8QaL9N45YzJ1Yf75g/VSlEVxkik5n6S+qfjJ6u Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="362377560"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="362377560"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="726329276"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="726329276"
Received: from danielba-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.20])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 11:09:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Sep 2023 21:08:49 +0300
Message-Id: <6ffd12c726ddc10d9da8e5ef7f796752f8e05685.1695924021.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1695924021.git.jani.nikula@intel.com>
References: <cover.1695924021.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/15] drm/i915: make some error capture
 functions static
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
index f4ebcfb70289..767687821f7a 100644
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

