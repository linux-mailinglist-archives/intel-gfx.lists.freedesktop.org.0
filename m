Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCBFB4034C
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 15:31:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 497AD10E701;
	Tue,  2 Sep 2025 13:31:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q/BkjxzF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72DEC10E6F9;
 Tue,  2 Sep 2025 13:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756819894; x=1788355894;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MwzsPq8St8ngDbot9Ho0rr08hjCYgAfHOK8GFytpqVc=;
 b=Q/BkjxzFiKorso8MP1X2W4ZtEgQNpH2B/wHRsBMGk6KVs/K+LcKHx0Re
 V2VCFzIa21cLq7bV3g77bX94K1NyRbscEq6f803T7lB15vPMN4kITRK6p
 o9wGofvbO86ECHdVXV6mWNIKEUyiqCXG2xcSFUrMSYF3ooa7BaMYAUoQx
 Bvzm5Y33UDu7qZevVP9LM3J7I3eFOn75dXgPLOJLbEtGdOevpp3AkGcH/
 Zdc8/GUqpppUq6kEbo2NfgT3zOH5p9coXBj4pX0y8ScgnGYBcME+VntSD
 YT0nv+w2qQOEul+C1dDM+mRpBFiTZ4aLXmVfn10vV5khvfjSscFC6kPm0 Q==;
X-CSE-ConnectionGUID: EIyllqhMQPS1ehor47oBmA==
X-CSE-MsgGUID: fbGy3cGnTi61XKVa+HLtlQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="62736430"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="62736430"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 06:31:34 -0700
X-CSE-ConnectionGUID: OvWCBklfSPyKa9wVE60log==
X-CSE-MsgGUID: p5eI6etXQH27Qeu8YG2V4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="176587348"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.118])
 by orviesa005.jf.intel.com with SMTP; 02 Sep 2025 06:31:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Sep 2025 16:31:30 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 5/8] drm/i915/dram: Move 16Gb DIMM detection fully to the
 skl/icl codepaths
Date: Tue,  2 Sep 2025 16:31:10 +0300
Message-ID: <20250902133113.18778-6-ville.syrjala@linux.intel.com>
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

Only skl (and derivatives) and icl need the 16Gb DIMM w/as, and we
do the real detection only on those platforms anyway. Move the initial
has_16gb_dimms assignment into those codepaths as well.

Currently we are incorrectly always applying the 1 usec wm latency bump
on all mtl+ platforms due to this (the tgl/adl codepath did remember to
undo the assignment, but the mtl+ codepath didn't).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/soc/intel_dram.c | 17 ++++++-----------
 1 file changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index efb72e137748..bf3ba874f8c5 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -406,6 +406,9 @@ skl_dram_get_channels_info(struct drm_i915_private *i915, struct dram_info *dram
 	u32 val;
 	int ret;
 
+	/* Assume 16Gb DIMMs are present until proven otherwise */
+	dram_info->has_16gb_dimms = true;
+
 	val = intel_uncore_read(&i915->uncore,
 				SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN);
 	ret = skl_dram_get_channel_info(i915, &ch0, 0, val);
@@ -435,6 +438,9 @@ skl_dram_get_channels_info(struct drm_i915_private *i915, struct dram_info *dram
 	drm_dbg_kms(&i915->drm, "Memory configuration is symmetric? %s\n",
 		    str_yes_no(dram_info->symmetric_memory));
 
+	drm_dbg_kms(&i915->drm, "16Gb DIMMs: %s\n",
+		    str_yes_no(dram_info->has_16gb_dimms));
+
 	return 0;
 }
 
@@ -673,8 +679,6 @@ static int gen11_get_dram_info(struct drm_i915_private *i915, struct dram_info *
 
 static int gen12_get_dram_info(struct drm_i915_private *i915, struct dram_info *dram_info)
 {
-	dram_info->has_16gb_dimms = false;
-
 	return icl_pcode_read_mem_global_info(i915, dram_info);
 }
 
@@ -736,12 +740,6 @@ int intel_dram_detect(struct drm_i915_private *i915)
 
 	i915->dram_info = dram_info;
 
-	/*
-	 * Assume 16Gb DIMMs are present until proven
-	 * otherwise, this w/a is not needed by bxt/glk.
-	 */
-	dram_info->has_16gb_dimms = !IS_BROXTON(i915) && !IS_GEMINILAKE(i915);
-
 	if (DISPLAY_VER(display) >= 14)
 		ret = xelpdp_get_dram_info(i915, dram_info);
 	else if (GRAPHICS_VER(i915) >= 12)
@@ -766,9 +764,6 @@ int intel_dram_detect(struct drm_i915_private *i915)
 
 	drm_dbg_kms(&i915->drm, "DRAM channels: %u\n", dram_info->num_channels);
 
-	drm_dbg_kms(&i915->drm, "16Gb DIMMs: %s\n",
-		    str_yes_no(dram_info->has_16gb_dimms));
-
 	return 0;
 }
 
-- 
2.49.1

