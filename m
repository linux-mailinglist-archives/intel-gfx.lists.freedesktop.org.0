Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC1E8FE501
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 13:16:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DB9710E8EE;
	Thu,  6 Jun 2024 11:16:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EX/RX0tz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 387D710E8EE
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 11:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717672573; x=1749208573;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6oSQBAhOAErlWSQp3E5acchQsTJmWax9lcEcVvgUGFk=;
 b=EX/RX0tzog1V49Mm6ve66eeC+Q5TiB+qIWK8GQXPWaXw3kZ4FAmCrToe
 5FtgKg1q1k5MCsbcg6cf6G8Mv53yXb2dpVTaCPDwGekMNcNFinW/y1c3/
 kW70xfKNRt+LSBaw6JRpUczWN64GhywNuTRMWL9ovKCnqgvXczYgXyhbT
 Id0ptNXh/ATIYUNb7DOtFd7MDFzvhsIzfC9scnDfEf8uqt8Y9QIZ/gfPw
 zxC7Ch76aaSk4rTfP1rBJaOzQeD84js43SnaLfHfVPbbfoogjsRlnkgHF
 LqjihbjGntWFXcop67ZARxC8uV0VtDcUKYZKsCXaIoZv2jMOQRKmpTVtr A==;
X-CSE-ConnectionGUID: XIkZTak7QcOwRNtHpnvMNA==
X-CSE-MsgGUID: wWz7Ei0MR/er6i5X+4t98A==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="17265506"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="17265506"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:13 -0700
X-CSE-ConnectionGUID: Xb9eGwMpRVuZQuz1PGzuXQ==
X-CSE-MsgGUID: 2R4Sok0iQ6eAfPX5XkWsSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38046772"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:16:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH v2 01/14] drm/i915/wm: rename intel_get_cxsr_latency ->
 pnv_get_cxsr_latency
Date: Thu,  6 Jun 2024 14:15:53 +0300
Message-Id: <584010ddd2da8956212eff5e60c1b7568b7acf79.1717672515.git.jani.nikula@intel.com>
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

Clarify that the function is specific to PNV, making subsequent changes
slightly easier to grasp.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 628e7192ebc9..8657ec0abd2d 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -70,7 +70,7 @@ static const struct cxsr_latency cxsr_latency_table[] = {
 	{0, 1, 400, 800, 6042, 36042, 6584, 36584},    /* DDR3-800 SC */
 };
 
-static const struct cxsr_latency *intel_get_cxsr_latency(struct drm_i915_private *i915)
+static const struct cxsr_latency *pnv_get_cxsr_latency(struct drm_i915_private *i915)
 {
 	int i;
 
@@ -635,7 +635,7 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
 	u32 reg;
 	unsigned int wm;
 
-	latency = intel_get_cxsr_latency(dev_priv);
+	latency = pnv_get_cxsr_latency(dev_priv);
 	if (!latency) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Unknown FSB/MEM found, disable CxSR\n");
@@ -4022,7 +4022,7 @@ void i9xx_wm_init(struct drm_i915_private *dev_priv)
 		g4x_setup_wm_latency(dev_priv);
 		dev_priv->display.funcs.wm = &g4x_wm_funcs;
 	} else if (IS_PINEVIEW(dev_priv)) {
-		if (!intel_get_cxsr_latency(dev_priv)) {
+		if (!pnv_get_cxsr_latency(dev_priv)) {
 			drm_info(&dev_priv->drm,
 				 "failed to find known CxSR latency "
 				 "(found ddr%s fsb freq %d, mem freq %d), "
-- 
2.39.2

