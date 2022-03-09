Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 897CB4D34FF
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 18:01:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0F1310E4B1;
	Wed,  9 Mar 2022 17:01:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD3E710E45F
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 17:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646845269; x=1678381269;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cXWN1H1aCG13sI5TmQTl2k4POngxR+9BBviZl7Yk1eE=;
 b=AaoxB/0Llm4uqzf0HaX9NUKXnL5m9jAlg0myho9sz6ME+hynNeSnzEJy
 dsIuPOnCgP9UB+j/Qn9VlMAAe6le7ioMHbbuu9WTT7t+suS6DiX2F3ILv
 wfyfP24Y5TwxXZkaci1h65qicW1ES5j+fHjOaWFJVJH7IGh87r4a2vwmr
 y8HgOIYlmN9Rz0Rt7y96diHoojuz2T9YoxGyVCdF8MfUAeHXDu5ffy0ML
 j+o5JZuJOAW5CY2dHayCAdQzv8v7UvdBAOqEnsZe6f0xor3PUypbzCBuC
 Q9wuv3l5zHWFsfj+IS05Wr5WIdfPITrNqqbfbFhyryElzDY4rxEXBnx5h Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="315747151"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="315747151"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 08:49:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="538072094"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 09 Mar 2022 08:49:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Mar 2022 18:49:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Mar 2022 18:49:42 +0200
Message-Id: <20220309164948.10671-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
References: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/8] drm/i915: Rework SAGV block time probing
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
 drivers/gpu/drm/i915/intel_pm.c | 36 +++++++++++++++++++--------------
 1 file changed, 21 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 40a3094e55ca..906501d6b298 100644
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
@@ -3680,23 +3680,30 @@ skl_setup_sagv_block_time(struct drm_i915_private *dev_priv)
 		ret = snb_pcode_read(dev_priv,
 				     GEN12_PCODE_READ_SAGV_BLOCK_TIME_US,
 				     &val, NULL);
-		if (!ret) {
-			dev_priv->sagv_block_time_us = val;
-			return;
+		if (ret) {
+			drm_dbg_kms(&dev_priv->drm, "Couldn't read SAGV block time!\n");
+			return 0;
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
+		return 0;
 	}
+}
 
-	dev_priv->sagv_block_time_us = 0;
+static void intel_sagv_init(struct drm_i915_private *i915)
+{
+	i915->sagv_block_time_us = intel_sagv_block_time(i915);
+
+	drm_dbg_kms(&i915->drm, "SAGV supported: %s, original SAGV block time: %u us\n",
+		    str_yes_no(intel_has_sagv(i915)), i915->sagv_block_time_us);
+
+	if (!intel_has_sagv(i915))
+		i915->sagv_block_time_us = 0;
 }
 
 /*
@@ -8175,8 +8182,7 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
 	else if (GRAPHICS_VER(dev_priv) == 5)
 		ilk_get_mem_freq(dev_priv);
 
-	if (intel_has_sagv(dev_priv))
-		skl_setup_sagv_block_time(dev_priv);
+	intel_sagv_init(dev_priv);
 
 	/* For FIFO watermark updates */
 	if (DISPLAY_VER(dev_priv) >= 9) {
-- 
2.34.1

