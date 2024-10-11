Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AB1B99A16D
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 12:34:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A211A10EAAE;
	Fri, 11 Oct 2024 10:34:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gmdZsNHZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B61E10EAB0
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2024 10:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728642845; x=1760178845;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZQeJJrVry6nVF6vfSHiIIgyZpY1u5m9+7pMjfaBJKzQ=;
 b=gmdZsNHZTL7if2blQmz2BuUt2rauNx98O83uM36KWMFrWT28MT6ns3aX
 2KFT4zn8dBXNNx5S+CNy8xBHS1x+nsK5hN9oVtdYcUWB/OKMgbdgWBLZg
 Y5VTnuszsrA0ei/s3UMYBvzFjD9qjiISq0Nl0muJs/YmbMOrHnSJWEI6m
 6nN20Br5oCHB0/fKeqG6hUGJS+ucMTF2epoV/iQdreVGHo9oz+sAszChn
 BJrAjp8yFrddQXiqGI0ISIvvkIroWp2VCOl5Z0vcEYxb/d9IrJ7535Jqz
 zEjHdgIOmy3OP6aoOODTOIlOXwYyNE9VMHRWscrBU/WMNrGiaYJbpUL/Z A==;
X-CSE-ConnectionGUID: 2IAknriPSu2qTRD0pCUBDQ==
X-CSE-MsgGUID: KafLBGbQTBmEMFCUzPAHKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="38619599"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="38619599"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 03:34:05 -0700
X-CSE-ConnectionGUID: tBi4MO6MT7y/3UmNL3BiCA==
X-CSE-MsgGUID: 7GRrU40OSdWZfMcpqO5JcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="77341122"
Received: from jraag-nuc8i7beh.iind.intel.com ([10.145.169.79])
 by orviesa007.jf.intel.com with ESMTP; 11 Oct 2024 03:34:02 -0700
From: Raag Jadav <raag.jadav@intel.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com,
 Raag Jadav <raag.jadav@intel.com>
Subject: [PATCH v2 2/4] drm/i915/dg2: Introduce DG2_WA subplatform
Date: Fri, 11 Oct 2024 16:02:48 +0530
Message-Id: <20241011103250.1035316-3-raag.jadav@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241011103250.1035316-1-raag.jadav@intel.com>
References: <20241011103250.1035316-1-raag.jadav@intel.com>
MIME-Version: 1.0
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

Introduce DG2_WA subplatform for the devices that will be used in a
workaround and span across multiple DG2 subplatforms.

Signed-off-by: Raag Jadav <raag.jadav@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          |  2 ++
 drivers/gpu/drm/i915/intel_device_info.c | 34 +++++++++++++++++-------
 drivers/gpu/drm/i915/intel_device_info.h |  5 +++-
 3 files changed, 31 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 39f6614a0a99..0a68cd9379e8 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -548,6 +548,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G11)
 #define IS_DG2_G12(i915) \
 	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G12)
+#define IS_DG2_WA(i915) \
+	IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_WA)
 #define IS_RAPTORLAKE_S(i915) \
 	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL)
 #define IS_ALDERLAKE_P_N(i915) \
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 3c47c625993e..674ab2a4d75e 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -200,6 +200,15 @@ static const u16 subplatform_g12_ids[] = {
 	INTEL_DG2_G12_IDS(ID),
 };
 
+static const u16 subplatform_dg2_wa_ids[] = {
+	INTEL_DG2_WA_IDS(ID),
+};
+
+static const u16 subplatform_dg2_ids[] = {
+	INTEL_DG2_IDS(ID),
+	INTEL_ATS_M_IDS(ID),
+};
+
 static const u16 subplatform_arl_ids[] = {
 	INTEL_ARL_IDS(ID),
 };
@@ -252,15 +261,22 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
 		if (find_devid(devid, subplatform_rplu_ids,
 			       ARRAY_SIZE(subplatform_rplu_ids)))
 			mask |= BIT(INTEL_SUBPLATFORM_RPLU);
-	} else if (find_devid(devid, subplatform_g10_ids,
-			      ARRAY_SIZE(subplatform_g10_ids))) {
-		mask = BIT(INTEL_SUBPLATFORM_G10);
-	} else if (find_devid(devid, subplatform_g11_ids,
-			      ARRAY_SIZE(subplatform_g11_ids))) {
-		mask = BIT(INTEL_SUBPLATFORM_G11);
-	} else if (find_devid(devid, subplatform_g12_ids,
-			      ARRAY_SIZE(subplatform_g12_ids))) {
-		mask = BIT(INTEL_SUBPLATFORM_G12);
+	} else if (find_devid(devid, subplatform_dg2_ids,
+			      ARRAY_SIZE(subplatform_dg2_ids))) {
+		if (find_devid(devid, subplatform_g10_ids,
+			       ARRAY_SIZE(subplatform_g10_ids)))
+			mask = BIT(INTEL_SUBPLATFORM_G10);
+		else if (find_devid(devid, subplatform_g11_ids,
+				    ARRAY_SIZE(subplatform_g11_ids)))
+			mask = BIT(INTEL_SUBPLATFORM_G11);
+		else if (find_devid(devid, subplatform_g12_ids,
+				    ARRAY_SIZE(subplatform_g12_ids)))
+			mask = BIT(INTEL_SUBPLATFORM_G12);
+
+		/* DG2 WA ids span across multiple subplatforms */
+		if (find_devid(devid, subplatform_dg2_wa_ids,
+			       ARRAY_SIZE(subplatform_dg2_wa_ids)))
+			mask |= BIT(INTEL_SUBPLATFORM_WA);
 	} else if (find_devid(devid, subplatform_arl_ids,
 			      ARRAY_SIZE(subplatform_arl_ids))) {
 		mask = BIT(INTEL_SUBPLATFORM_ARL);
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 643ff1bf74ee..c3623e859c78 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -95,9 +95,11 @@ enum intel_platform {
 /*
  * Subplatform bits share the same namespace per parent platform. In other words
  * it is fine for the same bit to be used on multiple parent platforms.
+ * Devices can belong to multiple subplatforms if needed, so it's possible to set
+ * multiple bits for same device.
  */
 
-#define INTEL_SUBPLATFORM_BITS (3)
+#define INTEL_SUBPLATFORM_BITS (4)
 #define INTEL_SUBPLATFORM_MASK (BIT(INTEL_SUBPLATFORM_BITS) - 1)
 
 /* HSW/BDW/SKL/KBL/CFL */
@@ -114,6 +116,7 @@ enum intel_platform {
 #define INTEL_SUBPLATFORM_G10	0
 #define INTEL_SUBPLATFORM_G11	1
 #define INTEL_SUBPLATFORM_G12	2
+#define INTEL_SUBPLATFORM_WA	3
 
 /* ADL */
 #define INTEL_SUBPLATFORM_RPL	0
-- 
2.34.1

