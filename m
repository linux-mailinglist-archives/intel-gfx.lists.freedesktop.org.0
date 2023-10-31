Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0537DCD22
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Oct 2023 13:45:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA18510E118;
	Tue, 31 Oct 2023 12:45:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44BED10E118
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Oct 2023 12:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698756309; x=1730292309;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vJBkvRm7WxcVeJDMzKTm+QNYhbJ3hfoAanw6Q2KmRtQ=;
 b=VDJo2W/CcsDWyUhwpY9BB1w1mfURf2HcWaLObPwNX7dA8jZyJNiQuLOa
 Dt3CJd2FcKVPEXM6PHqkFyEy/L4RePAHnB9d6F+QE8cMwHdUBjTQfFjRa
 Baav5qyPkR9zwOWqQ92B/3djIkpmQYLzly0elAXRsIqFHNUeom9WqKJAv
 pWtfuj1Hucobgeiilt4wJtVrSmotK3blHuTIiCUhxxloLFLzWE1rX1Q4b
 GxC3RmW1F3x4ro2WGG9BSLwJ236babjigNxFWZUWPZJYeJgU++ATIlHPZ
 VPNnctbZr7UzT7Tqc0dbyqy6salpwGbK2kR/UAQQwJac6Ul+urNMDkF7m A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="385468203"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="385468203"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 05:45:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; 
   d="scan'208";a="8689635"
Received: from moelschl-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.45])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 05:45:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Oct 2023 14:45:00 +0200
Message-Id: <20231031124502.1772160-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH RESEND 1/3] drm/i915: make some error capture
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
index 8275f9b6a47d..889db834f07d 100644
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
index 4ce227f7e1e1..8f9cdf056181 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.h
+++ b/drivers/gpu/drm/i915/i915_gpu_error.h
@@ -277,11 +277,6 @@ static inline void intel_klog_error_capture(struct intel_gt *gt,
 
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

