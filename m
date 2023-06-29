Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDD574264D
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jun 2023 14:25:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8465689798;
	Thu, 29 Jun 2023 12:25:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30F1D89798
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jun 2023 12:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688041539; x=1719577539;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5AL81eUE0GoOgBqTxFY/A/LegwG/1QV+zLWcgoQX0kc=;
 b=k+upuU+FrHsIk5Xf9OGkpSEKUtK3fIHTBtewff6luzCMSiRZzJpHp0P5
 a5c3CjjWwo8XpbZ28Z8aAyr8c1KAFi/5yy2tPOUuM8gcmfbkkZ7OWOaRg
 UBtWST0marW9rKfqbtyJ9dNn9b4lvdYG3N18CgizOPxdlfX3eFE7k4r9l
 3z79hA0ZgSDXwaYobwj629pNW/HHwKsi6yxVdTNr8IhZ6L223woDy3fNG
 vxjFnVtu6H1asixQX8XA0z20bH6fTxhnHBOBV2pJXKQXjmEsE/tdRH0fd
 tVtLLpmumlj4eYKEOPJJkplmaF6uD/kqPg5HfKlmaFczh3p4at69U3+uW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="425763294"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="425763294"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 05:25:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="807284719"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="807284719"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Jun 2023 05:25:36 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Jun 2023 15:25:34 +0300
Message-Id: <20230629122534.8815-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Fail if DSC compression requirement
 is less than platform supports
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

Currently we just clamp that value to the highest supported one, however that
means, we are not able to fit this into our available bandwidth range, so we
might see glitches or FIFO underruns.
While choosing less compressed bpp than min bpp required to handle the mode is
harmless and might even save some bandwidth, choosing higher compressed bpp than
min bpp required to handle the required mode config, can cause issues.
So in that case lets just conclude that even with DSC, we are not able to comply
with bandwidth requirements and fail.

v2: - s/clamp_t/min_t/ (Luca Coelho)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9f40da20e88d..03675620e3ea 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -713,9 +713,18 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
 
 		/*
 		 * According to BSpec, 27 is the max DSC output bpp,
-		 * 8 is the min DSC output bpp
+		 * 8 is the min DSC output bpp.
+		 * While we can still clamp higher bpp values to 27, saving bandwidth,
+		 * if it is required to oompress up to bpp < 8, means we can't do
+		 * that and probably means we can't fit the required mode, even with
+		 * DSC enabled.
 		 */
-		bits_per_pixel = clamp_t(u32, bits_per_pixel, 8, 27);
+		if (bits_per_pixel < 8) {
+			drm_dbg_kms(&i915->drm, "Unsupported BPP %u, min 8\n",
+				    bits_per_pixel);
+			return 0;
+		}
+		bits_per_pixel = min_t(u32, bits_per_pixel, 27);
 	} else {
 		/* Find the nearest match in the array of known BPPs from VESA */
 		for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp) - 1; i++) {
-- 
2.37.3

