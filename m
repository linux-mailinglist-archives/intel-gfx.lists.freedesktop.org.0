Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E274616097
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 11:09:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 004DB10E466;
	Wed,  2 Nov 2022 10:09:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C724C10E489
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 10:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667383759; x=1698919759;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NVCqalwy8SdOh4lDSdWbnIe2Zt6FHCLss43DdIp+Rj8=;
 b=Xij53DJW7uwNno9EFijHHmULL2dslmkjbU/jJOLf5lKFDJQdDNsjSLGi
 tTJ7mHMzBTZsi/iaPYzTlK7DM8g4j7Hgp8YY17acMeu3qJMBzjCbY0uwG
 BtKTSgEJLxSQR0DzTRFksc85U5HR/4TEcjfXCEGlHm6klyhEzp/VVcy+s
 MFwt06132YiWC8zYffYEj0tEKRc4At7UWFrfmOAKhoAoBCSj5EV8TlOol
 TKAp0gRrwb3PFamxemot+HWrjJxn/m+MYpzf6T0usnlT/zpDywRK8rAD8
 0M4DapzM9Rf3YBaw71TXiDVTTXaBAMINsYSzh2rYFmXstOx2v6G4FjopG A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="311085048"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="311085048"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:09:19 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="963469260"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="963469260"
Received: from cjokeeff-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.15.91])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:09:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 12:08:21 +0200
Message-Id: <7d90295caea6e20e0267806e2489e83a02801c15.1667383630.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1667383630.git.jani.nikula@intel.com>
References: <cover.1667383630.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 13/16] drm/i915/reg: move pick even and pick
 to reg defs
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

This is a more logical place for generic helpers.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h      | 15 ---------------
 drivers/gpu/drm/i915/i915_reg_defs.h | 15 +++++++++++++++
 2 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9724a04c0b7d..7b56caeb950a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -117,21 +117,6 @@
 
 #define DISPLAY_MMIO_BASE(dev_priv)	(INTEL_INFO(dev_priv)->display.mmio_offset)
 
-/*
- * Given the first two numbers __a and __b of arbitrarily many evenly spaced
- * numbers, pick the 0-based __index'th value.
- *
- * Always prefer this over _PICK() if the numbers are evenly spaced.
- */
-#define _PICK_EVEN(__index, __a, __b) ((__a) + (__index) * ((__b) - (__a)))
-
-/*
- * Given the arbitrary numbers in varargs, pick the 0-based __index'th number.
- *
- * Always prefer _PICK_EVEN() over this if the numbers are evenly spaced.
- */
-#define _PICK(__index, ...) (((const u32 []){ __VA_ARGS__ })[__index])
-
 /*
  * Named helper wrappers around _PICK_EVEN() and _PICK().
  */
diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
index e94558a336f1..aad447ba3e22 100644
--- a/drivers/gpu/drm/i915/i915_reg_defs.h
+++ b/drivers/gpu/drm/i915/i915_reg_defs.h
@@ -111,6 +111,21 @@
 #define _MASKED_BIT_ENABLE(a)	({ typeof(a) _a = (a); _MASKED_FIELD(_a, _a); })
 #define _MASKED_BIT_DISABLE(a)	(_MASKED_FIELD((a), 0))
 
+/*
+ * Given the first two numbers __a and __b of arbitrarily many evenly spaced
+ * numbers, pick the 0-based __index'th value.
+ *
+ * Always prefer this over _PICK() if the numbers are evenly spaced.
+ */
+#define _PICK_EVEN(__index, __a, __b) ((__a) + (__index) * ((__b) - (__a)))
+
+/*
+ * Given the arbitrary numbers in varargs, pick the 0-based __index'th number.
+ *
+ * Always prefer _PICK_EVEN() over this if the numbers are evenly spaced.
+ */
+#define _PICK(__index, ...) (((const u32 []){ __VA_ARGS__ })[__index])
+
 typedef struct {
 	u32 reg;
 } i915_reg_t;
-- 
2.34.1

