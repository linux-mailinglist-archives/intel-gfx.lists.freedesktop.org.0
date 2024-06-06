Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C53888FE502
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 13:16:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F3DE10E8F3;
	Thu,  6 Jun 2024 11:16:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WG18fcu6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F05710E8F3
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 11:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717672576; x=1749208576;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KGWh5nAoRiryOPfY/UO+MgJK+3vymcf5YMVa+FPJl20=;
 b=WG18fcu6yNyIOnwQJ9s8+9pehJ+NixwecUaET7SgtSN5e680v/vm28Bg
 SCJrzVkJ9QVlVjYTZy26YkSLLDbr+B5UBVwcYvdrzuG/J2YwrinFJAm1w
 u4xOOOCRKm7WTAuZnvDrL72GRivjiBDB+mgtZmL4JMfHhlz5kKPm0LwYK
 Kl2+NjGWbsYwcQYkqgRJXQ9v7Kv0y4eVxUO4LUs2uXpIN4OTn+KJdWMd3
 x/+n5Vhfav7mARr/IYMZpFIjVjm2i3HeHqKKk0BeXGL8KjfTvlaG/55KD
 KmgC2hVxl2/gGiVmeNQQuapMUyw4jlii8KxlTPzoRoe1efkcmCMruxumc A==;
X-CSE-ConnectionGUID: hKIqWGt/SXSSUMYCoKCiWQ==
X-CSE-MsgGUID: VPu3LfT8QQ+YXK/k4PsIaw==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="17265514"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="17265514"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:16 -0700
X-CSE-ConnectionGUID: iBLEmm3eS7mb9e3CYV5oKg==
X-CSE-MsgGUID: HRf0nCZcTE+xeer7gSiXCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38046780"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 02/14] drm/i915/wm: clarify logging on not finding CxSR
 latency config
Date: Thu,  6 Jun 2024 14:15:54 +0300
Message-Id: <e8450974e6e823a903f8504c1d33acb68a66b14e.1717672515.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717672515.git.jani.nikula@intel.com>
References: <cover.1717672515.git.jani.nikula@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Clarify and unify the logging on not finding PNV CxSR latency
config.

Just let the i915->fsb_freq == 0 || i915->mem_freq == 0 case go through
the table instead of checking for it separately.

v2: Do not check for fsb == 0 || mem == 0 separately (Matt)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 8657ec0abd2d..a63ecd5cf3b5 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -74,9 +74,6 @@ static const struct cxsr_latency *pnv_get_cxsr_latency(struct drm_i915_private *
 {
 	int i;
 
-	if (i915->fsb_freq == 0 || i915->mem_freq == 0)
-		return NULL;
-
 	for (i = 0; i < ARRAY_SIZE(cxsr_latency_table); i++) {
 		const struct cxsr_latency *latency = &cxsr_latency_table[i];
 		bool is_desktop = !IS_MOBILE(i915);
@@ -88,7 +85,9 @@ static const struct cxsr_latency *pnv_get_cxsr_latency(struct drm_i915_private *
 			return latency;
 	}
 
-	drm_dbg_kms(&i915->drm, "Unknown FSB/MEM found, disable CxSR\n");
+	drm_dbg_kms(&i915->drm,
+		    "Could not find CxSR latency for DDR%s, FSB %u MHz, MEM %u MHz\n",
+		    i915->is_ddr3 ? "3" : "2", i915->fsb_freq, i915->mem_freq);
 
 	return NULL;
 }
@@ -637,8 +636,7 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
 
 	latency = pnv_get_cxsr_latency(dev_priv);
 	if (!latency) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "Unknown FSB/MEM found, disable CxSR\n");
+		drm_dbg_kms(&dev_priv->drm, "Unknown FSB/MEM, disabling CxSR\n");
 		intel_set_memory_cxsr(dev_priv, false);
 		return;
 	}
@@ -4023,12 +4021,7 @@ void i9xx_wm_init(struct drm_i915_private *dev_priv)
 		dev_priv->display.funcs.wm = &g4x_wm_funcs;
 	} else if (IS_PINEVIEW(dev_priv)) {
 		if (!pnv_get_cxsr_latency(dev_priv)) {
-			drm_info(&dev_priv->drm,
-				 "failed to find known CxSR latency "
-				 "(found ddr%s fsb freq %d, mem freq %d), "
-				 "disabling CxSR\n",
-				 (dev_priv->is_ddr3 == 1) ? "3" : "2",
-				 dev_priv->fsb_freq, dev_priv->mem_freq);
+			drm_info(&dev_priv->drm,  "Unknown FSB/MEM, disabling CxSR\n");
 			/* Disable CxSR and never update its watermark again */
 			intel_set_memory_cxsr(dev_priv, false);
 			dev_priv->display.funcs.wm = &nop_funcs;
-- 
2.39.2

