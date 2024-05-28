Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C71F8D1E9E
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 16:25:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9300B10E374;
	Tue, 28 May 2024 14:25:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bsCamBPx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9426210E474;
 Tue, 28 May 2024 14:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716906318; x=1748442318;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cybuJVvd9k9QN99ABCIri35qz2I+pW5DFnfqvSnt3zg=;
 b=bsCamBPxXmoJA+geiWvfB0q+hHTFkxSfbIZvLPuj/C2GZYJWjkXm4aP7
 RgrVXOHt0CMBXJNcNXZuVMV7aLyk+lb0LT27jJtkv9mlTuRAWHFH+j25j
 sJFoDEmfbaFzkP3rk85jbr5t4ie/dEhCNFSZtFLJelanAMHgwv2KAq1Rw
 5R9Sgl3WrXEbuLwQGXWm/7rTlvJgspH0DnOyBR+Y6r5mTC5eIQOvaAp0s
 5wI+xKad9Gl3LlHMbuS0NGX1RXhjKbgkznlZ4/O59N27sj3TpJ8wdEUkh
 Z3dK/tGwSHVI/3R8cTndySkkrJ4OF9Kc5C+Zz1kHrKmFyWGLkiKfTxEMQ g==;
X-CSE-ConnectionGUID: SUnxNi82Tpqbe/igLS0KTw==
X-CSE-MsgGUID: sBGr3rlfTre2QZc1FHVb2A==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="24381010"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="24381010"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 07:25:17 -0700
X-CSE-ConnectionGUID: 5rAtEOaXTAiP/MhrMmAvjw==
X-CSE-MsgGUID: pqT6EDOoQmeD8uNxSNZ7Cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39531044"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.13])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 07:25:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 02/12] drm/i915/wm: clarify logging on not finding CxSR
 latency config
Date: Tue, 28 May 2024 17:24:51 +0300
Message-Id: <bd4ac9a69db1b2be4159b5ed97a16f2e845cd24d.1716906179.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716906179.git.jani.nikula@intel.com>
References: <cover.1716906179.git.jani.nikula@intel.com>
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

Clarify and unify the logging on not finding PNV CxSR latency config.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 8657ec0abd2d..8b8a0f305c3a 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -75,7 +75,7 @@ static const struct cxsr_latency *pnv_get_cxsr_latency(struct drm_i915_private *
 	int i;
 
 	if (i915->fsb_freq == 0 || i915->mem_freq == 0)
-		return NULL;
+		goto err;
 
 	for (i = 0; i < ARRAY_SIZE(cxsr_latency_table); i++) {
 		const struct cxsr_latency *latency = &cxsr_latency_table[i];
@@ -88,7 +88,10 @@ static const struct cxsr_latency *pnv_get_cxsr_latency(struct drm_i915_private *
 			return latency;
 	}
 
-	drm_dbg_kms(&i915->drm, "Unknown FSB/MEM found, disable CxSR\n");
+err:
+	drm_dbg_kms(&i915->drm,
+		    "Could not find CxSR latency for DDR%s, FSB %u MHz, MEM %u MHz\n",
+		    i915->is_ddr3 ? "3" : "2", i915->fsb_freq, i915->mem_freq);
 
 	return NULL;
 }
@@ -637,8 +640,7 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
 
 	latency = pnv_get_cxsr_latency(dev_priv);
 	if (!latency) {
-		drm_dbg_kms(&dev_priv->drm,
-			    "Unknown FSB/MEM found, disable CxSR\n");
+		drm_dbg_kms(&dev_priv->drm, "Unknown FSB/MEM, disabling CxSR\n");
 		intel_set_memory_cxsr(dev_priv, false);
 		return;
 	}
@@ -4023,12 +4025,7 @@ void i9xx_wm_init(struct drm_i915_private *dev_priv)
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

