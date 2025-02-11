Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0E5A31967
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 00:20:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56D2110E76F;
	Tue, 11 Feb 2025 23:20:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jI4AC0d0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A482A10E761
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 23:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739316001; x=1770852001;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=kyWKof8EUxk1eCAAFzQufMIk7cZmJqePTifHDpDhK9A=;
 b=jI4AC0d03ao5CsIKgrhwg2YKmsR8kxmqJjX10DlAeY3mVcGiIwuMv+LY
 O85crKrzb3t4FPJRqSl1TJ44fcg7GdqatCv9nManiUhGTJ25nE1aq+Ps0
 FALvVWxPbKYuR1lZau9VUtf7SpyFbDhYYgGUrLxQwz0MODVmozoYTu9T1
 6+6oCmE+WeElZvZJwJm0Zb7BVQX6tcVIdO6PhzckS2QeZeUORDIIwVu4g
 zIDXklDuYKRou8oMobYxsK4YwzxYSC/Kt1WWCQhnWh4xIitauc7hjBR9z
 lGtTaDCkvENRL0I2UVBvDFNAQwUMiOIdHnHWzLLZA7kv+JB97xMka+bVX Q==;
X-CSE-ConnectionGUID: thVZKaGmQHS5CXSclAr+Ig==
X-CSE-MsgGUID: L2Gkit8TSUmEcWG0yDC0pA==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39820132"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="39820132"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 15:20:01 -0800
X-CSE-ConnectionGUID: Jn2DWZpkTca3IIXfdHcT2w==
X-CSE-MsgGUID: aQFweGsfTbuXV/LnHwKS7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="112870893"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Feb 2025 15:19:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 01:19:57 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 06/12] drm/i915: Extract gen8_report_fault()
Date: Wed, 12 Feb 2025 01:19:34 +0200
Message-ID: <20250211231941.22769-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
References: <20250211231941.22769-1-ville.syrjala@linux.intel.com>
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

gen8_check_faults() and xehp_check_faults() are nearly identical.
Refactor the common bits into gen8_report_fault().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c | 73 ++++++++++++------------------
 1 file changed, 29 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index b8189754edb7..3d3b1ba76e2b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -323,6 +323,27 @@ static void gen6_check_faults(struct intel_gt *gt)
 	}
 }
 
+static void gen8_report_fault(struct intel_gt *gt, u32 fault,
+			      u32 fault_data0, u32 fault_data1)
+{
+	u64 fault_addr;
+
+	fault_addr = ((u64)(fault_data1 & FAULT_VA_HIGH_BITS) << 44) |
+		((u64)fault_data0 << 12);
+
+	gt_dbg(gt, "Unexpected fault\n"
+	       "\tAddr: 0x%08x_%08x\n"
+	       "\tAddress space: %s\n"
+	       "\tEngine ID: %d\n"
+	       "\tSource ID: %d\n"
+	       "\tType: %d\n",
+	       upper_32_bits(fault_addr), lower_32_bits(fault_addr),
+	       fault_data1 & FAULT_GTT_SEL ? "GGTT" : "PPGTT",
+	       REG_FIELD_GET(RING_FAULT_ENGINE_ID_MASK, fault),
+	       REG_FIELD_GET(RING_FAULT_SRCID_MASK, fault),
+	       REG_FIELD_GET(RING_FAULT_FAULT_TYPE_MASK, fault));
+}
+
 static void xehp_check_faults(struct intel_gt *gt)
 {
 	u32 fault;
@@ -335,28 +356,10 @@ static void xehp_check_faults(struct intel_gt *gt)
 	 * toward the primary instance.
 	 */
 	fault = intel_gt_mcr_read_any(gt, XEHP_RING_FAULT_REG);
-	if (fault & RING_FAULT_VALID) {
-		u32 fault_data0, fault_data1;
-		u64 fault_addr;
-
-		fault_data0 = intel_gt_mcr_read_any(gt, XEHP_FAULT_TLB_DATA0);
-		fault_data1 = intel_gt_mcr_read_any(gt, XEHP_FAULT_TLB_DATA1);
-
-		fault_addr = ((u64)(fault_data1 & FAULT_VA_HIGH_BITS) << 44) |
-			     ((u64)fault_data0 << 12);
-
-		gt_dbg(gt, "Unexpected fault\n"
-		       "\tAddr: 0x%08x_%08x\n"
-		       "\tAddress space: %s\n"
-		       "\tEngine ID: %d\n"
-		       "\tSource ID: %d\n"
-		       "\tType: %d\n",
-		       upper_32_bits(fault_addr), lower_32_bits(fault_addr),
-		       fault_data1 & FAULT_GTT_SEL ? "GGTT" : "PPGTT",
-		       REG_FIELD_GET(RING_FAULT_ENGINE_ID_MASK, fault),
-		       REG_FIELD_GET(RING_FAULT_SRCID_MASK, fault),
-		       REG_FIELD_GET(RING_FAULT_FAULT_TYPE_MASK, fault));
-	}
+	if (fault & RING_FAULT_VALID)
+		gen8_report_fault(gt, fault,
+				  intel_gt_mcr_read_any(gt, XEHP_FAULT_TLB_DATA0),
+				  intel_gt_mcr_read_any(gt, XEHP_FAULT_TLB_DATA1));
 }
 
 static void gen8_check_faults(struct intel_gt *gt)
@@ -376,28 +379,10 @@ static void gen8_check_faults(struct intel_gt *gt)
 	}
 
 	fault = intel_uncore_read(uncore, fault_reg);
-	if (fault & RING_FAULT_VALID) {
-		u32 fault_data0, fault_data1;
-		u64 fault_addr;
-
-		fault_data0 = intel_uncore_read(uncore, fault_data0_reg);
-		fault_data1 = intel_uncore_read(uncore, fault_data1_reg);
-
-		fault_addr = ((u64)(fault_data1 & FAULT_VA_HIGH_BITS) << 44) |
-			     ((u64)fault_data0 << 12);
-
-		gt_dbg(gt, "Unexpected fault\n"
-		       "\tAddr: 0x%08x_%08x\n"
-		       "\tAddress space: %s\n"
-		       "\tEngine ID: %d\n"
-		       "\tSource ID: %d\n"
-		       "\tType: %d\n",
-		       upper_32_bits(fault_addr), lower_32_bits(fault_addr),
-		       fault_data1 & FAULT_GTT_SEL ? "GGTT" : "PPGTT",
-		       REG_FIELD_GET(RING_FAULT_ENGINE_ID_MASK, fault),
-		       REG_FIELD_GET(RING_FAULT_SRCID_MASK, fault),
-		       REG_FIELD_GET(RING_FAULT_FAULT_TYPE_MASK, fault));
-	}
+	if (fault & RING_FAULT_VALID)
+		gen8_report_fault(gt, fault,
+				  intel_uncore_read(uncore, fault_data0_reg),
+				  intel_uncore_read(uncore, fault_data1_reg));
 }
 
 void intel_gt_check_and_clear_faults(struct intel_gt *gt)
-- 
2.45.3

