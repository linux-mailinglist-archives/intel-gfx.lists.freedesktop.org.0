Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF90735F2C9
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:51:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B51706E927;
	Wed, 14 Apr 2021 11:50:59 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 134666E927
 for <Intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:50:57 +0000 (UTC)
IronPort-SDR: UC7zuylxIHnAHKh0C1agE1t5GD/B+5u7eojAirobo0OhgKHytCphH+nEcct8YfygoBgOcwWr6L
 5vyo46B2bKww==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="194732303"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="194732303"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:56 -0700
IronPort-SDR: O59yuoP8WWe7hJDp3nsi88iq0HNWqNobcrMeInOq47x7RCqZq8liwCC+5kMzS/hy5iJlRxjXSb
 zuYjdUsjkBcw==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="521965218"
Received: from bdebhal-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.119])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:55 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 12:50:15 +0100
Message-Id: <20210414115028.168504-16-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
References: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 15/28] drm/i915: Simplify IS_GEN macros
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 44 +++++++++++----------------------
 1 file changed, 14 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index fa5aa0e3a776..4f140e95207e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -2723,36 +2723,20 @@ intel_info(const struct drm_i915_private *dev_priv)
  * have their own (e.g. HAS_PCH_SPLIT for ILK+ display, IS_foo for particular
  * chips, etc.).
  */
-#define IS_GEN2(dev_priv) \
-	(IS_ENABLED(CONFIG_DRM_I915_GEN2) && \
-	 ((dev_priv)->info.gen_mask & BIT(1)))
-#define IS_GEN3(dev_priv) \
-	(IS_ENABLED(CONFIG_DRM_I915_GEN3) && \
-	 ((dev_priv)->info.gen_mask & BIT(2)))
-#define IS_GEN4(dev_priv) \
-	(IS_ENABLED(CONFIG_DRM_I915_GEN4) && \
-	 ((dev_priv)->info.gen_mask & BIT(3)))
-#define IS_GEN5(dev_priv) \
-	(IS_ENABLED(CONFIG_DRM_I915_GEN5) && \
-	 ((dev_priv)->info.gen_mask & BIT(4)))
-#define IS_GEN6(dev_priv) \
-	(IS_ENABLED(CONFIG_DRM_I915_GEN6) && \
-	 ((dev_priv)->info.gen_mask & BIT(5)))
-#define IS_GEN7(dev_priv) \
-	(IS_ENABLED(CONFIG_DRM_I915_GEN7) && \
-	 ((dev_priv)->info.gen_mask & BIT(6)))
-#define IS_GEN8(dev_priv) \
-	(IS_ENABLED(CONFIG_DRM_I915_GEN8) && \
-	 ((dev_priv)->info.gen_mask & BIT(7)))
-#define IS_GEN9(dev_priv) \
-	(IS_ENABLED(CONFIG_DRM_I915_GEN9) && \
-	 ((dev_priv)->info.gen_mask & BIT(8)))
-#define IS_GEN10(dev_priv) \
-	(IS_ENABLED(CONFIG_DRM_I915_GEN10) && \
-	 ((dev_priv)->info.gen_mask & BIT(9)))
-#define IS_GEN11(dev_priv) \
-	(IS_ENABLED(CONFIG_DRM_I915_GEN11) && \
-	 ((dev_priv)->info.gen_mask & BIT(10)))
+#define IS_GENx(p, g) \
+	(IS_ENABLED(CONFIG_DRM_I915_GEN##g) && \
+	 ((p)->info.gen_mask & BIT((g) - 1)))
+
+#define IS_GEN2(p) IS_GENx(p, 2)
+#define IS_GEN3(p) IS_GENx(p, 3)
+#define IS_GEN4(p) IS_GENx(p, 4)
+#define IS_GEN5(p) IS_GENx(p, 5)
+#define IS_GEN6(p) IS_GENx(p, 6)
+#define IS_GEN7(p) IS_GENx(p, 7)
+#define IS_GEN8(p) IS_GENx(p, 8)
+#define IS_GEN9(p) IS_GENx(p, 9)
+#define IS_GEN10(p) IS_GENx(p, 10)
+#define IS_GEN11(p) IS_GENx(p, 11)
 
 #define IS_LP(dev_priv)	(INTEL_INFO(dev_priv)->is_lp)
 #define IS_GEN9_LP(dev_priv)	(IS_GEN9(dev_priv) && IS_LP(dev_priv))
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
