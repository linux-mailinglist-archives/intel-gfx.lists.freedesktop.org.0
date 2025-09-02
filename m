Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D91EEB4034A
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 15:31:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D00210E6F7;
	Tue,  2 Sep 2025 13:31:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kHPAvm3b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3970610E6F7;
 Tue,  2 Sep 2025 13:31:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756819891; x=1788355891;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p5x0orRFioPgcFjM/WWpTv5hYD024uiz9EeO5P/fgF0=;
 b=kHPAvm3bv94pgjH9YV7HKfWfEez+R6gJfDvZvOb95bit1wyUJjhNFnHB
 OpmsQVuEg3lr3EC3G/HMZTKwjAZpSI8Tga5TLnQN1iJQh5wjFzqqQBc6d
 5UzdOJUemkRBZSOGoPPR/Afr0iUtz0JgogSaCV7hwxg98qQqQFwBjPV19
 ofAdM70YzmTcqiWEpIsNXRchg3b6wJ8yVoetIRapZeVna6t7srUWc2tif
 4FRxCIKqHLWSjrIefsy8biZx8ux6Y4JlxqysandGXdeUHFKncET73VASr
 RVA7a+jq3G6Dk7Rh5MVmL+HyyOa5hLBsfPvjevnqLspQsVHbNKGgIBSwY g==;
X-CSE-ConnectionGUID: CagrEVQrRoel5AnthzUKhg==
X-CSE-MsgGUID: Csk2aabZTseVB1X3ls82SA==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="62736427"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="62736427"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 06:31:31 -0700
X-CSE-ConnectionGUID: gZKvelkzRPW5jI+8UkHAVg==
X-CSE-MsgGUID: KNrS1nLBSHCU9zK6cF/glw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="176587329"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.118])
 by orviesa005.jf.intel.com with SMTP; 02 Sep 2025 06:31:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Sep 2025 16:31:27 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 4/8] drm/i915/dram: s/wm_lv0.../has_16gb_dimms/
Date: Tue,  2 Sep 2025 16:31:09 +0300
Message-ID: <20250902133113.18778-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250902133113.18778-1-ville.syrjala@linux.intel.com>
References: <20250902133113.18778-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The DRAM code shouldn't know anything about watermarks. Rename
wm_lv_0_adjust_needed to has_16gb_dimms. How this gets used is
up to the watermark code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c |  2 +-
 drivers/gpu/drm/i915/soc/intel_dram.c        | 12 ++++++------
 drivers/gpu/drm/i915/soc/intel_dram.h        |  2 +-
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 33885d619a97..ae3ce0d65cfc 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3214,7 +3214,7 @@ adjust_wm_latency(struct intel_display *display,
 	 * any underrun. If not able to get Dimm info assume 16GB dimm
 	 * to avoid any underrun.
 	 */
-	if (!display->platform.dg2 && dram_info->wm_lv_0_adjust_needed)
+	if (!display->platform.dg2 && dram_info->has_16gb_dimms)
 		wm[0] += 1;
 }
 
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index b4f0793f778d..efb72e137748 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -428,7 +428,7 @@ skl_dram_get_channels_info(struct drm_i915_private *i915, struct dram_info *dram
 		return -EINVAL;
 	}
 
-	dram_info->wm_lv_0_adjust_needed = ch0.is_16gb_dimm || ch1.is_16gb_dimm;
+	dram_info->has_16gb_dimms = ch0.is_16gb_dimm || ch1.is_16gb_dimm;
 
 	dram_info->symmetric_memory = intel_is_dram_symmetric(&ch0, &ch1);
 
@@ -673,7 +673,7 @@ static int gen11_get_dram_info(struct drm_i915_private *i915, struct dram_info *
 
 static int gen12_get_dram_info(struct drm_i915_private *i915, struct dram_info *dram_info)
 {
-	dram_info->wm_lv_0_adjust_needed = false;
+	dram_info->has_16gb_dimms = false;
 
 	return icl_pcode_read_mem_global_info(i915, dram_info);
 }
@@ -737,10 +737,10 @@ int intel_dram_detect(struct drm_i915_private *i915)
 	i915->dram_info = dram_info;
 
 	/*
-	 * Assume level 0 watermark latency adjustment is needed until proven
+	 * Assume 16Gb DIMMs are present until proven
 	 * otherwise, this w/a is not needed by bxt/glk.
 	 */
-	dram_info->wm_lv_0_adjust_needed = !IS_BROXTON(i915) && !IS_GEMINILAKE(i915);
+	dram_info->has_16gb_dimms = !IS_BROXTON(i915) && !IS_GEMINILAKE(i915);
 
 	if (DISPLAY_VER(display) >= 14)
 		ret = xelpdp_get_dram_info(i915, dram_info);
@@ -766,8 +766,8 @@ int intel_dram_detect(struct drm_i915_private *i915)
 
 	drm_dbg_kms(&i915->drm, "DRAM channels: %u\n", dram_info->num_channels);
 
-	drm_dbg_kms(&i915->drm, "Watermark level 0 adjustment needed: %s\n",
-		    str_yes_no(dram_info->wm_lv_0_adjust_needed));
+	drm_dbg_kms(&i915->drm, "16Gb DIMMs: %s\n",
+		    str_yes_no(dram_info->has_16gb_dimms));
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
index 6212944d44aa..03a973f1c941 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.h
+++ b/drivers/gpu/drm/i915/soc/intel_dram.h
@@ -31,7 +31,7 @@ struct dram_info {
 	u8 num_qgv_points;
 	u8 num_psf_gv_points;
 	bool symmetric_memory;
-	bool wm_lv_0_adjust_needed;
+	bool has_16gb_dimms;
 };
 
 void intel_dram_edram_detect(struct drm_i915_private *i915);
-- 
2.49.1

