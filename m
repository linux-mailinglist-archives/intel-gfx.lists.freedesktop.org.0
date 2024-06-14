Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23FC9908741
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 11:23:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33F6610ECA4;
	Fri, 14 Jun 2024 09:22:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nKPcjjUq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D820410ECA2
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 09:22:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718356976; x=1749892976;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8/lxolgb09PpCsn4R5BrzZ3bkK0BpPc/QMdYYuBFqcw=;
 b=nKPcjjUqyyj5odcDEsTYSP4TclOfZss4NVKJJFjXjYGe0dqR/vUUwl2/
 uyxTzfu43h8xUcAOCRLcln1c3NXshY7WBKTpk3tMyCGOO4vaqFXSNiKXr
 Cmhbq2vuoLFLX6mOqJlVxekzPQFFsts1Ic4Q1EtkxgCUOiFUAQb/9JvNO
 GQw2/DdhbeWu9idMELFyLw3vYLllrT4QW9+SalcytPq3Db35Xst4Du7TD
 U3/91ij0ilMP0rZyDLIBOg4P/CFs1FwXr4q4cHtFBBdlTCpJsfHy20koQ
 RoYkWlBnHgzQD56SVcWqlG50/6RRdHHYyoICDRT+5GBav6Q28pqOm+v+j w==;
X-CSE-ConnectionGUID: 3QArW6ngQ7armgOtsl7s2g==
X-CSE-MsgGUID: ubzH2IlzTnqaIyMqKaPoBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="40651061"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="40651061"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 02:22:56 -0700
X-CSE-ConnectionGUID: Bf3wwL/+QYiSU6J07mRGlg==
X-CSE-MsgGUID: taGsbUxXSX+L0VkBFgfvQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="44986809"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.221])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 02:22:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [CI 02/11] drm/i915/wm: clarify logging on not finding CxSR latency
 config
Date: Fri, 14 Jun 2024 12:22:30 +0300
Message-Id: <6333cb0675c531e971e829105f1ecfc4d71bdc6b.1718356614.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1718356614.git.jani.nikula@intel.com>
References: <cover.1718356614.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index ba4a38be7545..f70ac2f06968 100644
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
@@ -639,8 +638,7 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
 
 	latency = pnv_get_cxsr_latency(dev_priv);
 	if (!latency) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "Unknown FSB/MEM found, disable CxSR\n");
+		drm_dbg_kms(&dev_priv->drm, "Unknown FSB/MEM, disabling CxSR\n");
 		intel_set_memory_cxsr(dev_priv, false);
 		return;
 	}
@@ -4030,12 +4028,7 @@ void i9xx_wm_init(struct drm_i915_private *dev_priv)
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

