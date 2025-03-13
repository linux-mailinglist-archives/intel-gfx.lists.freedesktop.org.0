Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E7AA5F74B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 15:09:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B124B10E8A9;
	Thu, 13 Mar 2025 14:09:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gEPv4RZF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91E8110E8A8
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Mar 2025 14:09:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741874970; x=1773410970;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=4HshW08S+O5vq1Li665lEFRLoyZhTFJrMMFWATfdMT4=;
 b=gEPv4RZF711ROlBd3b60S7n7myyio44GBe5Rge10c2TrSX868KYw2vR0
 IPJ/AO4q4fCGK2XOT4AGkrv9HQA10PJtUCDEDRDl+ThQ3R010V115SHMJ
 6YqTEuYzqREgxFajfSqtF7ilRcB6MjxA//oCUN+d4Y4dOTkp63SyXvkhY
 u2VjTsFSZU0pz31w9HF6y5AChIsVzvF6Hn83IEx6yzj256a/M7S4YbCcJ
 KCheobBtln9F4//Vy+37E/0YtYOTYukXFkKCmFDEgx5W8XoxA2Ed0e1UP
 LBPbfiNImjykZK8k+TmysnAldtSmk2L4mVtauPi18jk+8kUz61OQdD+li w==;
X-CSE-ConnectionGUID: 25qwnOjvQ32hJAg0p3R4Dg==
X-CSE-MsgGUID: L9YQFtt1Sd248W+yos40hQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="42854991"
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="42854991"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 07:09:00 -0700
X-CSE-ConnectionGUID: wY/lHdVPTRCWu6I8F/ouZA==
X-CSE-MsgGUID: ++INOAJcQ8KrHm7UBLDoOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="126138439"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 13 Mar 2025 07:08:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Mar 2025 16:08:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 07/10] drm/i915: Use a nicer way to lookup the memory region
 in BIOS FB takeover
Date: Thu, 13 Mar 2025 16:08:35 +0200
Message-ID: <20250313140838.29742-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250313140838.29742-1-ville.syrjala@linux.intel.com>
References: <20250313140838.29742-1-ville.syrjala@linux.intel.com>
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

Use intel_memory_region_by_type() to find the appropriate memory
region for the BIOS FB takeover.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_plane_initial.c    | 28 ++++++++++++++-----
 1 file changed, 21 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index cf7d1a5ab524..5f75ef4ba3b1 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -52,6 +52,17 @@ intel_reuse_initial_plane_obj(struct intel_crtc *this,
 	return false;
 }
 
+static enum intel_memory_type
+initial_plane_memory_type(struct drm_i915_private *i915)
+{
+	if (IS_DGFX(i915))
+		return INTEL_MEMORY_LOCAL;
+	else if (HAS_LMEMBAR_SMEM_STOLEN(i915))
+		return INTEL_MEMORY_STOLEN_LOCAL;
+	else
+		return INTEL_MEMORY_STOLEN_SYSTEM;
+}
+
 static bool
 initial_plane_phys_lmem(struct intel_display *display,
 			struct intel_initial_plane_config *plane_config)
@@ -59,6 +70,7 @@ initial_plane_phys_lmem(struct intel_display *display,
 	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
 	struct intel_memory_region *mem;
+	enum intel_memory_type mem_type;
 	bool is_present, is_local;
 	dma_addr_t dma_addr;
 	u32 base;
@@ -79,13 +91,12 @@ initial_plane_phys_lmem(struct intel_display *display,
 		return false;
 	}
 
-	if (IS_DGFX(i915))
-		mem = i915->mm.regions[INTEL_REGION_LMEM_0];
-	else
-		mem = i915->mm.stolen_region;
+	mem_type = initial_plane_memory_type(i915);
+	mem = intel_memory_region_by_type(i915, mem_type);
 	if (!mem) {
 		drm_dbg_kms(display->drm,
-			    "Initial plane memory region not initialized\n");
+			    "Initial plane memory region (type %s) not initialized\n",
+			    intel_memory_type_str(mem_type));
 		return false;
 	}
 
@@ -117,6 +128,7 @@ initial_plane_phys_smem(struct intel_display *display,
 	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
 	struct intel_memory_region *mem;
+	enum intel_memory_type mem_type;
 	bool is_present, is_local;
 	dma_addr_t dma_addr;
 	u32 base;
@@ -137,10 +149,12 @@ initial_plane_phys_smem(struct intel_display *display,
 		return false;
 	}
 
-	mem = i915->mm.stolen_region;
+	mem_type = initial_plane_memory_type(i915);
+	mem = intel_memory_region_by_type(i915, mem_type);
 	if (!mem) {
 		drm_dbg_kms(display->drm,
-			    "Initial plane memory region not initialized\n");
+			    "Initial plane memory region (type %s) not initialized\n",
+			    intel_memory_type_str(mem_type));
 		return false;
 	}
 
-- 
2.45.3

