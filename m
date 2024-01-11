Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC9882B3F1
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jan 2024 18:21:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A25B10E942;
	Thu, 11 Jan 2024 17:21:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBC3010E942
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jan 2024 17:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704993709; x=1736529709;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Sb773+DSpdlZn2NEAGp+CMEw71bJRdyMMD4mMJsJNQ0=;
 b=jvgNj6VG41jS15gN8MgHevmMbA4SVrCGFXML68WWRoK24Uu0Ibk6xBaO
 dKWvNKvZSn0IFuMUGaM/VXxqtuYGSG3ZKtCy7QB5rPQnXZgdJvJFbR4Dj
 jtWb2bTxbhVmTzRj3pJq9kkMKmdt38XGzB6Nj9GdyIXCv+eJeKSGXb33L
 /vhrv/VtTyFjW9+fdn7RDnVRyOuRJYYasBUPl2uhaQb06GtsSb/ham+rY
 srmBSMj7MP/C7vlaRGvi9Rr+Pe8b4QL/LRZqefPrfxE9M4UyqL1CZK2RG
 nNJUdW1gDjkgqSHXM1kHHImSGsgWOG62itxr6VlTDzaBmTFKGSKVNjxwJ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="5657813"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; 
   d="scan'208";a="5657813"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 09:21:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="853030905"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; d="scan'208";a="853030905"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 09:21:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/6] drm/i915/opregion: abstract ASLE presence check
Date: Thu, 11 Jan 2024 19:21:17 +0200
Message-Id: <1829415d3e7b29e78c46b20bca8175ef373bcd92.1704992868.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1704992868.git.jani.nikula@intel.com>
References: <cover.1704992868.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Add a function to check the opregion ASLE presence instead of accessing
the opregion structures directly.

Reorder the checks in i915_has_asle() to avoid the function call if
possible.

Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 6 +++---
 drivers/gpu/drm/i915/display/intel_opregion.c    | 5 +++++
 drivers/gpu/drm/i915/display/intel_opregion.h    | 6 ++++++
 3 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 99843883cef7..f846c5b108b5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -266,12 +266,12 @@ void i915_disable_pipestat(struct drm_i915_private *dev_priv,
 	intel_uncore_posting_read(&dev_priv->uncore, reg);
 }
 
-static bool i915_has_asle(struct drm_i915_private *dev_priv)
+static bool i915_has_asle(struct drm_i915_private *i915)
 {
-	if (!dev_priv->display.opregion.asle)
+	if (!IS_PINEVIEW(i915) && !IS_MOBILE(i915))
 		return false;
 
-	return IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv);
+	return intel_opregion_asle_present(i915);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 8b9e820971cb..26aacb01f9ec 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -632,6 +632,11 @@ static void asle_work(struct work_struct *work)
 	asle->aslc = aslc_stat;
 }
 
+bool intel_opregion_asle_present(struct drm_i915_private *i915)
+{
+	return i915->display.opregion.asle;
+}
+
 void intel_opregion_asle_intr(struct drm_i915_private *dev_priv)
 {
 	if (dev_priv->display.opregion.asle)
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
index 9efadfb72584..d084b30e8703 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.h
+++ b/drivers/gpu/drm/i915/display/intel_opregion.h
@@ -69,6 +69,7 @@ void intel_opregion_resume(struct drm_i915_private *dev_priv);
 void intel_opregion_suspend(struct drm_i915_private *dev_priv,
 			    pci_power_t state);
 
+bool intel_opregion_asle_present(struct drm_i915_private *i915);
 void intel_opregion_asle_intr(struct drm_i915_private *dev_priv);
 int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
 				  bool enable);
@@ -111,6 +112,11 @@ static inline void intel_opregion_suspend(struct drm_i915_private *dev_priv,
 {
 }
 
+static inline bool intel_opregion_asle_present(struct drm_i915_private *i915)
+{
+	return false;
+}
+
 static inline void intel_opregion_asle_intr(struct drm_i915_private *dev_priv)
 {
 }
-- 
2.39.2

