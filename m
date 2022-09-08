Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A22955B2774
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 22:10:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED9E910E660;
	Thu,  8 Sep 2022 20:10:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 048B710E064
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 20:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662667825; x=1694203825;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wer7WlJsZkOlZg1NBaSZBeP9f7FzEjwqK1McwRdzGJA=;
 b=oA03SsWGEFDB4sRTCj5ywaPJW9rYbDTOgt51PH/8+IhI8Gd4T1LumO5v
 fpfI2hI9VxIWlpCwC9HPEJ4pulSCDz5guCgAajnbmeSTTJ1+M/yC7z8sx
 DHzNU5XU0g+t6r7pUtvtk6M0a0y9FEaI5YvnqqoDYK7kMpryZ76L8FVYG
 qa952tjt6CzI8m89fai6dLo0eXvvGqO0VZf4kFkCqTJsu4YZAaFfEBqjp
 9M0mV92YOIKLsX0TJeSDXYQt7NUX+LSe4k8By5mzplou3s6Q7ZXxa752a
 /vE1B941bdk2/xbBA7DWP6fE2XXVpaPHdwdOKPXJK+vFUCQnzKIFyOWro Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="383607998"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="383607998"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 13:10:06 -0700
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="718702460"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.143])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 13:10:06 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Sep 2022 13:08:14 -0700
Message-Id: <20220908-if-ladder-v1-1-9949a713ca08@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220908-if-ladder-v1-0-9949a713ca08@intel.com>
References: <20220908-if-ladder-v1-0-9949a713ca08@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.10.0-dev-df873
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 1/3] drm/i915: Invert if/else ladder for
 frequency read
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Continue converting the driver to the convention of last version first,
extending it to the future platforms. Now, any GRAPHICS_VER >= 11 will
be handled by the first branch.

With the new ranges it's easier to see what platform a branch started to
be taken. Besides the >= 11 change, the branch taken for GRAPHICS_VER == 10
is also different, but currently there is no such platform in i915.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
index d5d1b04dbcad..93608c9349fd 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_clock_utils.c
@@ -78,77 +78,74 @@ static u32 read_clock_frequency(struct intel_uncore *uncore)
 	u32 f19_2_mhz = 19200000;
 	u32 f24_mhz = 24000000;
 
-	if (GRAPHICS_VER(uncore->i915) <= 4) {
-		/*
-		 * PRMs say:
-		 *
-		 *     "The value in this register increments once every 16
-		 *      hclks." (through the “Clocking Configuration”
-		 *      (“CLKCFG”) MCHBAR register)
-		 */
-		return RUNTIME_INFO(uncore->i915)->rawclk_freq * 1000 / 16;
-	} else if (GRAPHICS_VER(uncore->i915) <= 8) {
-		/*
-		 * PRMs say:
-		 *
-		 *     "The PCU TSC counts 10ns increments; this timestamp
-		 *      reflects bits 38:3 of the TSC (i.e. 80ns granularity,
-		 *      rolling over every 1.5 hours).
-		 */
-		return f12_5_mhz;
-	} else if (GRAPHICS_VER(uncore->i915) <= 9) {
+	if (GRAPHICS_VER(uncore->i915) >= 11) {
 		u32 ctc_reg = intel_uncore_read(uncore, CTC_MODE);
 		u32 freq = 0;
 
+		/*
+		 * First figure out the reference frequency. There are 2 ways
+		 * we can compute the frequency, either through the
+		 * TIMESTAMP_OVERRIDE register or through RPM_CONFIG. CTC_MODE
+		 * tells us which one we should use.
+		 */
 		if ((ctc_reg & CTC_SOURCE_PARAMETER_MASK) == CTC_SOURCE_DIVIDE_LOGIC) {
 			freq = read_reference_ts_freq(uncore);
 		} else {
-			freq = IS_GEN9_LP(uncore->i915) ? f19_2_mhz : f24_mhz;
+			u32 c0 = intel_uncore_read(uncore, RPM_CONFIG0);
+
+			if (GRAPHICS_VER(uncore->i915) >= 11)
+				freq = gen11_get_crystal_clock_freq(uncore, c0);
+			else
+				freq = gen9_get_crystal_clock_freq(uncore, c0);
 
 			/*
 			 * Now figure out how the command stream's timestamp
 			 * register increments from this frequency (it might
 			 * increment only every few clock cycle).
 			 */
-			freq >>= 3 - ((ctc_reg & CTC_SHIFT_PARAMETER_MASK) >>
-				      CTC_SHIFT_PARAMETER_SHIFT);
+			freq >>= 3 - ((c0 & GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK) >>
+				      GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT);
 		}
 
 		return freq;
-	} else if (GRAPHICS_VER(uncore->i915) <= 12) {
+	} else if (GRAPHICS_VER(uncore->i915) >= 9) {
 		u32 ctc_reg = intel_uncore_read(uncore, CTC_MODE);
 		u32 freq = 0;
 
-		/*
-		 * First figure out the reference frequency. There are 2 ways
-		 * we can compute the frequency, either through the
-		 * TIMESTAMP_OVERRIDE register or through RPM_CONFIG. CTC_MODE
-		 * tells us which one we should use.
-		 */
 		if ((ctc_reg & CTC_SOURCE_PARAMETER_MASK) == CTC_SOURCE_DIVIDE_LOGIC) {
 			freq = read_reference_ts_freq(uncore);
 		} else {
-			u32 c0 = intel_uncore_read(uncore, RPM_CONFIG0);
-
-			if (GRAPHICS_VER(uncore->i915) >= 11)
-				freq = gen11_get_crystal_clock_freq(uncore, c0);
-			else
-				freq = gen9_get_crystal_clock_freq(uncore, c0);
+			freq = IS_GEN9_LP(uncore->i915) ? f19_2_mhz : f24_mhz;
 
 			/*
 			 * Now figure out how the command stream's timestamp
 			 * register increments from this frequency (it might
 			 * increment only every few clock cycle).
 			 */
-			freq >>= 3 - ((c0 & GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK) >>
-				      GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT);
+			freq >>= 3 - ((ctc_reg & CTC_SHIFT_PARAMETER_MASK) >>
+				      CTC_SHIFT_PARAMETER_SHIFT);
 		}
 
 		return freq;
+	} else if (GRAPHICS_VER(uncore->i915) >= 5) {
+		/*
+		 * PRMs say:
+		 *
+		 *     "The PCU TSC counts 10ns increments; this timestamp
+		 *      reflects bits 38:3 of the TSC (i.e. 80ns granularity,
+		 *      rolling over every 1.5 hours).
+		 */
+		return f12_5_mhz;
+	} else {
+		/*
+		 * PRMs say:
+		 *
+		 *     "The value in this register increments once every 16
+		 *      hclks." (through the “Clocking Configuration”
+		 *      (“CLKCFG”) MCHBAR register)
+		 */
+		return RUNTIME_INFO(uncore->i915)->rawclk_freq * 1000 / 16;
 	}
-
-	MISSING_CASE("Unknown gen, unable to read command streamer timestamp frequency\n");
-	return 0;
 }
 
 void intel_gt_init_clock_frequency(struct intel_gt *gt)

-- 
b4 0.10.0-dev-df873
