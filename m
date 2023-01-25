Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4578167B9E8
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 19:52:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96E3010E815;
	Wed, 25 Jan 2023 18:52:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4C6810E815
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 18:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674672770; x=1706208770;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Hutb74kOf9OLGJWc2j1J0ZUTFbx9KK25il8kY+68O9g=;
 b=E/x1n7oZB9oRnc7tNmO8t9qDhY40Gc/u6A60o1GM/Ucx6Vya3nbjRE5h
 j2Gu2LwrwOg2fzHqIxA/uEbvfGz911OL9FyLYgvFC2QBu4kvVmqpqMOXw
 p8zL+yK/dNEpMaihY061iM2ggFmgGN5DLYGzo5ouJEjWSk7AUmLhQE50P
 he7gCycuM5rekG/ke3EqNPtjdTv27ncW1E/9gejrrg8ruKizs4HkeNqVf
 MoChzYkYjJMSVmVFGsKzmndmAktrqFMHjWktJQMeGP21ivlc+Z4I3GbBX
 R8nKGCATWg7er4g1rooAv35EnzAsvKy1CnpIqlt8VCzxOEedVZProagX6 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="326671515"
X-IronPort-AV: E=Sophos;i="5.97,246,1669104000"; d="scan'208";a="326671515"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 10:52:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="655912176"
X-IronPort-AV: E=Sophos;i="5.97,246,1669104000"; d="scan'208";a="655912176"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 25 Jan 2023 10:52:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Jan 2023 20:52:47 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Jan 2023 20:52:33 +0200
Message-Id: <20230125185234.21599-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230125185234.21599-1-ville.syrjala@linux.intel.com>
References: <20230125185234.21599-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915: Extract {i9xx, i965)_error_mask()
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pull the EMR calculation into small helpers.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 46 ++++++++++++++++++---------------
 1 file changed, 25 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 0e90c348175e..081b79d00521 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -3471,15 +3471,18 @@ static void i8xx_irq_reset(struct drm_i915_private *dev_priv)
 	dev_priv->irq_mask = ~0u;
 }
 
+static u32 i9xx_error_mask(struct drm_i915_private *i915)
+{
+	return ~(I915_ERROR_PAGE_TABLE |
+		 I915_ERROR_MEMORY_REFRESH);
+}
+
 static void i8xx_irq_postinstall(struct drm_i915_private *dev_priv)
 {
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	u16 enable_mask;
 
-	intel_uncore_write16(uncore,
-			     EMR,
-			     ~(I915_ERROR_PAGE_TABLE |
-			       I915_ERROR_MEMORY_REFRESH));
+	intel_uncore_write16(uncore, EMR, i9xx_error_mask(dev_priv));
 
 	/* Unmask the interrupts that we always want on. */
 	dev_priv->irq_mask =
@@ -3651,8 +3654,7 @@ static void i915_irq_postinstall(struct drm_i915_private *dev_priv)
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	u32 enable_mask;
 
-	intel_uncore_write(uncore, EMR, ~(I915_ERROR_PAGE_TABLE |
-					  I915_ERROR_MEMORY_REFRESH));
+	intel_uncore_write(uncore, EMR, i9xx_error_mask(dev_priv));
 
 	/* Unmask the interrupts that we always want on. */
 	dev_priv->irq_mask =
@@ -3755,26 +3757,28 @@ static void i965_irq_reset(struct drm_i915_private *dev_priv)
 	dev_priv->irq_mask = ~0u;
 }
 
-static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
+static u32 i965_error_mask(struct drm_i915_private *i915)
 {
-	struct intel_uncore *uncore = &dev_priv->uncore;
-	u32 enable_mask;
-	u32 error_mask;
-
 	/*
 	 * Enable some error detection, note the instruction error mask
 	 * bit is reserved, so we leave it masked.
 	 */
-	if (IS_G4X(dev_priv)) {
-		error_mask = ~(GM45_ERROR_PAGE_TABLE |
-			       GM45_ERROR_MEM_PRIV |
-			       GM45_ERROR_CP_PRIV |
-			       I915_ERROR_MEMORY_REFRESH);
-	} else {
-		error_mask = ~(I915_ERROR_PAGE_TABLE |
-			       I915_ERROR_MEMORY_REFRESH);
-	}
-	intel_uncore_write(uncore, EMR, error_mask);
+	if (IS_G4X(i915))
+		return ~(GM45_ERROR_PAGE_TABLE |
+			 GM45_ERROR_MEM_PRIV |
+			 GM45_ERROR_CP_PRIV |
+			 I915_ERROR_MEMORY_REFRESH);
+	else
+		return ~(I915_ERROR_PAGE_TABLE |
+			 I915_ERROR_MEMORY_REFRESH);
+}
+
+static void i965_irq_postinstall(struct drm_i915_private *dev_priv)
+{
+	struct intel_uncore *uncore = &dev_priv->uncore;
+	u32 enable_mask;
+
+	intel_uncore_write(uncore, EMR, i965_error_mask(dev_priv));
 
 	/* Unmask the interrupts that we always want on. */
 	dev_priv->irq_mask =
-- 
2.39.1

