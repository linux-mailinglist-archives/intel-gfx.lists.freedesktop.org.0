Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F29B40344
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 15:31:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04E3210E6FD;
	Tue,  2 Sep 2025 13:31:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MrdesZ1f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0FDA10E6FB;
 Tue,  2 Sep 2025 13:31:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756819884; x=1788355884;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bxopJ7OWTiLZ54Ar5EVlCHXe2XAEjuKw6TACN/0/6YE=;
 b=MrdesZ1fU2kvEt2WD1DsiqC/f5kXHEW8WMG+Ou+3UlaBBtqrhSaxkKbU
 pxaj0Usex2Yr6lo8O0wMiGmxc7Gsl1vV+MZ5aIhzCg8X8jbmlyOxyZ0wK
 uekejUBTEQyoaeakZgqaUl4TwCNdRk6ly1Iq7dRqGGO7G7i1IG7oThXKL
 q/1jGyX5/xpoVZJYtlTcRo+WhNM9nkAyh5TZbZmSfuNHz+LxZCSoAl9PG
 ZA7MBP5t3Jed//i8Hz7tfUE2Q66DP/TOWz0OScCxVqeE6Iu9HVt6N4lqG
 N3e7Dd55N2GdfKfSwccMvsTzyzXG5dkL0F4/CRehM/71g61MiNvgs5Zhg w==;
X-CSE-ConnectionGUID: ZJH6PNnzTmGUcGwr77ttgg==
X-CSE-MsgGUID: 4oqmIBmBTyKQvvbs5yPlJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="62736424"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="62736424"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 06:31:24 -0700
X-CSE-ConnectionGUID: ntH+geIPTbm+idl9IED0gg==
X-CSE-MsgGUID: CnZrTlJrRBGEcWn31I4e+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="176587302"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.118])
 by orviesa005.jf.intel.com with SMTP; 02 Sep 2025 06:31:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Sep 2025 16:31:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/8] drm/i915/dram: Use intel_dram_type_str() for pnv
Date: Tue,  2 Sep 2025 16:31:07 +0300
Message-ID: <20250902133113.18778-3-ville.syrjala@linux.intel.com>
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

Replace the hand rolled PNV memory type printk string
stuff with intel_dram_type_str().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c | 5 +++--
 drivers/gpu/drm/i915/soc/intel_dram.c  | 2 +-
 drivers/gpu/drm/i915/soc/intel_dram.h  | 1 +
 3 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 591acce2a4b1..b7f3c7a3aff5 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -103,8 +103,9 @@ static const struct cxsr_latency *pnv_get_cxsr_latency(struct intel_display *dis
 	}
 
 	drm_dbg_kms(display->drm,
-		    "Could not find CxSR latency for DDR%s, FSB %u kHz, MEM %u kHz\n",
-		    is_ddr3 ? "3" : "2", dram_info->fsb_freq, dram_info->mem_freq);
+		    "Could not find CxSR latency for %s, FSB %u kHz, MEM %u kHz\n",
+		    intel_dram_type_str(dram_info->type),
+		    dram_info->fsb_freq, dram_info->mem_freq);
 
 	return NULL;
 }
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 7d8b8f81e215..b4f0793f778d 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -31,7 +31,7 @@ struct dram_channel_info {
 
 #define DRAM_TYPE_STR(type) [INTEL_DRAM_ ## type] = #type
 
-static const char *intel_dram_type_str(enum intel_dram_type type)
+const char *intel_dram_type_str(enum intel_dram_type type)
 {
 	static const char * const str[] = {
 		DRAM_TYPE_STR(UNKNOWN),
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
index 7e3b3d961fcb..846a77b1aa90 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.h
+++ b/drivers/gpu/drm/i915/soc/intel_dram.h
@@ -39,5 +39,6 @@ int intel_dram_detect(struct drm_i915_private *i915);
 unsigned int intel_fsb_freq(struct drm_i915_private *i915);
 unsigned int intel_mem_freq(struct drm_i915_private *i915);
 const struct dram_info *intel_dram_info(struct drm_device *drm);
+const char *intel_dram_type_str(enum intel_dram_type type);
 
 #endif /* __INTEL_DRAM_H__ */
-- 
2.49.1

