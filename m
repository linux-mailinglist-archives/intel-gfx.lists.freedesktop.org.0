Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C9FA21F8C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 15:47:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 352D510E807;
	Wed, 29 Jan 2025 14:47:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GqnvufDu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6848510E813;
 Wed, 29 Jan 2025 14:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738162036; x=1769698036;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=61FT0vW+rNEbzN7Nr3Zxbfdxu+1uJLMJxeCHpwyV5Ro=;
 b=GqnvufDu5545/AfuoekQhp2dkbpZ2Yb0Gc3mI3UHS3pOGcZrBcEzXoeA
 yIt2m23yhuyY9Xb82KQ1G1Dq9QBXSfHHsTW764TPyuRM3jvCosma4Ol/2
 DKwefOuRftTitHfAg0QVNElw5wMnCTz1qv270IXhgbGSpIWZ2i0yrKoC+
 bnVUDgHzzj5az0kF0myirK5L4STUmpq+qyiPm70wtfMYiLc9HjFIi25yS
 xu1iJZeZrYkn4h7iYKjwb+xb2+K92ozTZXhi0EpKX1fJhZnv5GRfKq5oE
 UVy5TpRLc62oIokgWqz4myUq2aHuQFG/f0h3SzY+vdxdul5U2XGgh+nFR w==;
X-CSE-ConnectionGUID: cRmRibPqSqiSoWZs3yyLdQ==
X-CSE-MsgGUID: YSjRehGfS1GpvnyiE+XrgA==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="64040686"
X-IronPort-AV: E=Sophos;i="6.13,243,1732608000"; d="scan'208";a="64040686"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 06:47:16 -0800
X-CSE-ConnectionGUID: EBaF77CASUagnpYw/yqU1A==
X-CSE-MsgGUID: 1UwG4gOdSZSCI8ZYcdYzwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113057080"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.235])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 06:47:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [PATCH 6/6] drm/i915/mst: use min_array() and max_array() instead of
 hand-rolling
Date: Wed, 29 Jan 2025 16:46:38 +0200
Message-Id: <62a104535c01c667a99ec209c3218a13355568cf.1738161945.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1738161945.git.jani.nikula@intel.com>
References: <cover.1738161945.git.jani.nikula@intel.com>
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

Improve code clarity by using existing min_array() and max_array()
helpers to find the lowest and highest values in an array.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index a4ed4f379d1e..60b003bcd1ee 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -391,7 +391,7 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
-	int i, num_bpc;
+	int num_bpc;
 	u8 dsc_bpc[3] = {};
 	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
 	int min_compressed_bpp, max_compressed_bpp;
@@ -405,15 +405,8 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 	drm_dbg_kms(display->drm, "DSC Source supported min bpp %d max bpp %d\n",
 		    min_bpp, max_bpp);
 
-	sink_max_bpp = dsc_bpc[0] * 3;
-	sink_min_bpp = sink_max_bpp;
-
-	for (i = 1; i < num_bpc; i++) {
-		if (sink_min_bpp > dsc_bpc[i] * 3)
-			sink_min_bpp = dsc_bpc[i] * 3;
-		if (sink_max_bpp < dsc_bpc[i] * 3)
-			sink_max_bpp = dsc_bpc[i] * 3;
-	}
+	sink_min_bpp = min_array(dsc_bpc, num_bpc) * 3;
+	sink_max_bpp = max_array(dsc_bpc, num_bpc) * 3;
 
 	drm_dbg_kms(display->drm, "DSC Sink supported min bpp %d max bpp %d\n",
 		    sink_min_bpp, sink_max_bpp);
-- 
2.39.5

