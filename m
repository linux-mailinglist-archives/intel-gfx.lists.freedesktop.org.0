Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B15A6E855
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 03:29:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC43B10E364;
	Tue, 25 Mar 2025 02:29:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n6D+8LPU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D52CF10E06A;
 Tue, 25 Mar 2025 02:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742869754; x=1774405754;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1xU2kVLgC5FGOw3jKUdUSnvCH2XRD9WWuAt/OOAnlf4=;
 b=n6D+8LPUeEfAGXaGzSr6oKkT1StoDJevMOYcbIkyRqdFBksKmlY3xRrK
 F1DTBHKeIWgOuT6t4XfVyckhcVWOgnYSNTrsSrZW0XPClxMT96mhn7Zu1
 0QyZB0PCBlUesPlM+tFBUK9jE1vBqbJ4tSj+VbqqPGGhhSGgFcCuOYTkZ
 M+NcNRvVabggp56pUanvlyD4SscLWmgIXKzz9G3RroDkoAyRoU560XYpA
 Ms240B3pgH6lbzJzhWt1VyZIRpLxlDqBd2uBJm/efMttczpCGlx4ENsNE
 +ITJsiyHJXI9VUx7D5M9kCl9cL9SzY5yGvhDhTnMfeMyzwZCiq5nLpSix Q==;
X-CSE-ConnectionGUID: HDP4ZAAIREq7Yd804OGRdw==
X-CSE-MsgGUID: pN0Z2vhOSGSxWRmG33gvYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="44022950"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="44022950"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 19:29:08 -0700
X-CSE-ConnectionGUID: Sxzp2nGZTCCkGWdW5V+LHg==
X-CSE-MsgGUID: h2J0pxNBRfCPtOQkDj5sDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="124034431"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 19:29:07 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Subject: [PATCH 2/2] drm/i915/dram: Consolidate logging of DRAM type
Date: Mon, 24 Mar 2025 19:28:42 -0700
Message-ID: <20250324-dram-type-v1-2-bf60ef33ac01@intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250324-dram-type-v1-0-bf60ef33ac01@intel.com>
References: <20250324-dram-type-v1-0-bf60ef33ac01@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Mailer: b4 0.15-dev-c25d1
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

Instead of logging the dram type in the per version/platform function,
do it in the generic one. This fixes a few discrepancies depending on
the platform:

	- There was no DRAM type logging for graphics version 12 and
	  above
	- For graphics version 11, it would log the DRAM type in
	  skl_get_dram_info(), but could possibly override it later
	  without any log in icl_pcode_read_mem_global_info()

For bxt_get_dram_info(), there's no need to log the type for each dimm,
as the drm_WARN_ON() already covers the case the are not all the same.

This maintains the behavior of skl_get_dram_info() that would log the
DRAM type even on failures.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_dram.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 39d8520ee621d..eee5c4f45a43c 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -450,8 +450,6 @@ skl_get_dram_info(struct drm_i915_private *i915)
 	int ret;
 
 	dram_info->type = skl_get_dram_type(i915);
-	drm_dbg_kms(&i915->drm, "DRAM type: %s\n",
-		    intel_dram_type_str(dram_info->type));
 
 	ret = skl_dram_get_channels_info(i915);
 	if (ret)
@@ -566,10 +564,9 @@ static int bxt_get_dram_info(struct drm_i915_private *i915)
 			    dram_info->type != type);
 
 		drm_dbg_kms(&i915->drm,
-			    "CH%u DIMM size: %u Gb, width: X%u, ranks: %u, type: %s\n",
+			    "CH%u DIMM size: %u Gb, width: X%u, ranks: %u\n",
 			    i - BXT_D_CR_DRP0_DUNIT_START,
-			    dimm.size, dimm.width, dimm.ranks,
-			    intel_dram_type_str(type));
+			    dimm.size, dimm.width, dimm.ranks);
 
 		if (valid_ranks == 0)
 			valid_ranks = dimm.ranks;
@@ -736,6 +733,10 @@ void intel_dram_detect(struct drm_i915_private *i915)
 		ret = bxt_get_dram_info(i915);
 	else
 		ret = skl_get_dram_info(i915);
+
+	drm_dbg_kms(&i915->drm, "DRAM type: %s\n",
+		    intel_dram_type_str(dram_info->type));
+
 	if (ret)
 		return;
 

-- 
2.49.0

