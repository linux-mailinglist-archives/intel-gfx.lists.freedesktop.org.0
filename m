Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B86A7622F31
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 16:41:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A236F10E5F0;
	Wed,  9 Nov 2022 15:41:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DD9F10E5F2
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 15:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668008486; x=1699544486;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4uGYJa7EPziBifCLoufbtxf5ABzNrSLGEwalf/fMw2o=;
 b=Qo0t1hi63ArRM0RcWhgPQsYAuilf3MhLvimNy5KvevGfSPFKl/pBrkaF
 c61/q2b0AbXXNQSAeNTgt5QaHs/Pi2JnxYolhZi+OSJToOZPM3/uwyHof
 7ELiUwj9BH02KjvZqNtCiYvHtkMv6q5gaQDKj8rBlFPJUaAnPPJdbZl9h
 vgqbVNnVSLEEAf04syClQ/kCEkXZEgDBol3j6RHN7UWM5e7/Z5aWvTCZE
 zbYZ7VewW57IAqc0P5htpGAKPfV8zeQPKbPoQuKap66pIbnBBkjDWdOu2
 ekMGe2Prrx0ahrczfIGGkBRNtN8qHyOSc7fS8pR0G2ML6YLBu0JKO6e3h g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="375285555"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="375285555"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 07:35:35 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="811668880"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="811668880"
Received: from skorobko-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.15.56])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 07:35:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Nov 2022 17:35:20 +0200
Message-Id: <623327aee73a515300d99c8d65552ca92f3f0721.1668008071.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1668008071.git.jani.nikula@intel.com>
References: <cover.1668008071.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm/i915/reg: move pick even and pick to
 reg defs
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
Cc: Jani Nikula <jani.nikula@intel.com>, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is a more logical place for generic helpers.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h      | 15 ---------------
 drivers/gpu/drm/i915/i915_reg_defs.h | 15 +++++++++++++++
 2 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0d54d69c2eb1..7c478514eaf1 100644
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

