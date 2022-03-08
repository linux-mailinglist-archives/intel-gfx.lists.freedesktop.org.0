Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B77144D1F47
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 18:41:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D727E10E3E6;
	Tue,  8 Mar 2022 17:41:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DE0B10E3E6
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Mar 2022 17:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646761315; x=1678297315;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xRv7YhiOMkta/UjBLmz+2CfgQWkAtFuAByUBX15Ll68=;
 b=anisoCzIr3NeuS9i4nfqhoVDkSev4vqrZji5Em1Bw/fbAJZljlbXBTTN
 fwgZaX1EUQH/7ruj+9T2LCBsc9M99E2mGXnnS/xtogo/1o4Llri28bewa
 urSn4x174a1kkOPJWf/XsdCmcFnrXyl4MACvCu8rnqShEvmii4vT9ZwpG
 6803oPvoPOWayPydRgKshv87XSI0Hy8WBkA+gwQTKqsATg8mi2Cmw9xhN
 u/IsN1h8pZ21MDMKoFbHJf+/EMrCVxDdS3OL+qVwd7jmND7rNozf1drls
 LijIMBiGZl9fDLuIXWoxizo4wI0pdoPIk04UJmxTKduhFhMIrg24tEt2W g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="253591187"
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="253591187"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 09:32:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="595961696"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga008.fm.intel.com with SMTP; 08 Mar 2022 09:32:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Mar 2022 19:32:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Mar 2022 19:32:26 +0200
Message-Id: <20220308173230.4182-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220308173230.4182-1-ville.syrjala@linux.intel.com>
References: <20220308173230.4182-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Rework SAGV block time probing
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

I'd like to see the SAGV block time we got from the mailbox
in the logs regardless of whether other factors prevent the
use of SAGV.

So let's adjust the code to always query the SAGV block time,
log it, and then reset it if SAGV is not actually supported.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 38 +++++++++++++++++++--------------
 1 file changed, 22 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 8ee31c9590a7..21c37115c36e 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3670,8 +3670,8 @@ intel_has_sagv(struct drm_i915_private *dev_priv)
 		dev_priv->sagv_status != I915_SAGV_NOT_CONTROLLED;
 }
 
-static void
-skl_setup_sagv_block_time(struct drm_i915_private *dev_priv)
+static u32
+intel_sagv_block_time(struct drm_i915_private *dev_priv)
 {
 	if (DISPLAY_VER(dev_priv) >= 12) {
 		u32 val = 0;
@@ -3680,24 +3680,31 @@ skl_setup_sagv_block_time(struct drm_i915_private *dev_priv)
 		ret = snb_pcode_read(dev_priv,
 				     GEN12_PCODE_READ_SAGV_BLOCK_TIME_US,
 				     &val, NULL);
-		if (!ret) {
-			dev_priv->sagv_block_time_us = val;
-			return;
+		if (ret) {
+			drm_dbg_kms(&dev_priv->drm, "Couldn't read SAGV block time!\n");
+			return -1;
 		}
 
-		drm_dbg(&dev_priv->drm, "Couldn't read SAGV block time!\n");
+		return val;
 	} else if (DISPLAY_VER(dev_priv) == 11) {
-		dev_priv->sagv_block_time_us = 10;
-		return;
-	} else if (DISPLAY_VER(dev_priv) == 9) {
-		dev_priv->sagv_block_time_us = 30;
-		return;
+		return 10;
+	} else if (DISPLAY_VER(dev_priv) == 9 && !IS_LP(dev_priv)) {
+		return 30;
 	} else {
-		MISSING_CASE(DISPLAY_VER(dev_priv));
+		/* Default to an unusable block time */
+		return -1;
 	}
+}
 
-	/* Default to an unusable block time */
-	dev_priv->sagv_block_time_us = -1;
+static void intel_sagv_init(struct drm_i915_private *i915)
+{
+	i915->sagv_block_time_us = intel_sagv_block_time(i915);
+
+	drm_dbg_kms(&i915->drm, "SAGV supported: %s, original SAGV block time: %u us\n",
+		    str_yes_no(intel_has_sagv(i915)), i915->sagv_block_time_us);
+
+	if (!intel_has_sagv(i915))
+		i915->sagv_block_time_us = -1;
 }
 
 /*
@@ -8173,8 +8180,7 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
 	else if (GRAPHICS_VER(dev_priv) == 5)
 		ilk_get_mem_freq(dev_priv);
 
-	if (intel_has_sagv(dev_priv))
-		skl_setup_sagv_block_time(dev_priv);
+	intel_sagv_init(dev_priv);
 
 	/* For FIFO watermark updates */
 	if (DISPLAY_VER(dev_priv) >= 9) {
-- 
2.34.1

