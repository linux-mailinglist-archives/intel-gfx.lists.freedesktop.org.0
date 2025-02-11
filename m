Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A23A31964
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 00:19:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 325DC10E75A;
	Tue, 11 Feb 2025 23:19:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IcANeIvk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4754C10E75A
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 23:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739315993; x=1770851993;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=RUMbCCKuj8FmqUce7L4ngmQsFMHCVLzX1P21ZCuORd4=;
 b=IcANeIvkF1g2My3AsQqhTlMQj63Mb2umX9/Lazu9KonR3DwVzw9GPI1W
 vMzWp7URa7GqRxc9QNjOjm+j42uzBtXPGXbRSsDO7MgT7Sr8amL6LtFLY
 c15CkFFOT42xGqbY6zWeSQnkyIjD9vjr2xn4KY9T7o51Quh7/gubmSg0K
 f1OluNKYX9Uf59dKXW7BCEB2ZwUT7mG+TFeEM714StgWqxZyOE5r970eW
 m53Oz52MUnDZLwZAsa6Y49q5MHEAvvBDq521DpecsxI3a8QNnq7HViYwP
 ktGy3Sjr3GPAZ/t7a9UoltaGY4NeQgAY4SwMYbxTUrxwMMGulbP27TZnT g==;
X-CSE-ConnectionGUID: f5UJacl/Qne7AZNyeamWqg==
X-CSE-MsgGUID: nVuQpJcCS6ir1x+7f5Atzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39820127"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="39820127"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 15:19:53 -0800
X-CSE-ConnectionGUID: F7u4Bf05QciJUg9ECBYdrg==
X-CSE-MsgGUID: wSSx8u99QDiQhb0kQpGWHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="112870879"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Feb 2025 15:19:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 01:19:49 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 03/12] drm/i915: Use REG_BIT() & co. for ring fault registers
Date: Wed, 12 Feb 2025 01:19:31 +0200
Message-ID: <20250211231941.22769-4-ville.syrjala@linux.intel.com>
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

Update the ring fault registers to use the modern REG_BIT()
stuff.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt.c      | 20 ++++++++++----------
 drivers/gpu/drm/i915/gt/intel_gt_regs.h | 14 +++++++-------
 2 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index c4a351ebf395..04b43852a397 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -310,13 +310,13 @@ static void gen6_check_faults(struct intel_gt *gt)
 			gt_dbg(gt, "Unexpected fault\n"
 			       "\tAddr: 0x%08lx\n"
 			       "\tAddress space: %s\n"
-			       "\tSource ID: %ld\n"
-			       "\tType: %ld\n",
+			       "\tSource ID: %d\n"
+			       "\tType: %d\n",
 			       fault & PAGE_MASK,
 			       fault & RING_FAULT_GTTSEL_MASK ?
 			       "GGTT" : "PPGTT",
-			       RING_FAULT_SRCID(fault),
-			       RING_FAULT_FAULT_TYPE(fault));
+			       REG_FIELD_GET(RING_FAULT_SRCID_MASK, fault),
+			       REG_FIELD_GET(RING_FAULT_FAULT_TYPE_MASK, fault));
 		}
 	}
 }
@@ -351,9 +351,9 @@ static void xehp_check_faults(struct intel_gt *gt)
 		       "\tType: %d\n",
 		       upper_32_bits(fault_addr), lower_32_bits(fault_addr),
 		       fault_data1 & FAULT_GTT_SEL ? "GGTT" : "PPGTT",
-		       GEN8_RING_FAULT_ENGINE_ID(fault),
-		       RING_FAULT_SRCID(fault),
-		       RING_FAULT_FAULT_TYPE(fault));
+		       REG_FIELD_GET(RING_FAULT_ENGINE_ID_MASK, fault),
+		       REG_FIELD_GET(RING_FAULT_SRCID_MASK, fault),
+		       REG_FIELD_GET(RING_FAULT_FAULT_TYPE_MASK, fault));
 	}
 }
 
@@ -392,9 +392,9 @@ static void gen8_check_faults(struct intel_gt *gt)
 		       "\tType: %d\n",
 		       upper_32_bits(fault_addr), lower_32_bits(fault_addr),
 		       fault_data1 & FAULT_GTT_SEL ? "GGTT" : "PPGTT",
-		       GEN8_RING_FAULT_ENGINE_ID(fault),
-		       RING_FAULT_SRCID(fault),
-		       RING_FAULT_FAULT_TYPE(fault));
+		       REG_FIELD_GET(RING_FAULT_ENGINE_ID_MASK, fault),
+		       REG_FIELD_GET(RING_FAULT_SRCID_MASK, fault),
+		       REG_FIELD_GET(RING_FAULT_FAULT_TYPE_MASK, fault));
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 2d3da98e94f0..764424d48a25 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -326,11 +326,11 @@
 							    _RING_FAULT_REG_VCS, \
 							    _RING_FAULT_REG_VECS, \
 							    _RING_FAULT_REG_BCS))
-#define   GEN8_RING_FAULT_ENGINE_ID(x)		(((x) >> 12) & 0x1f)
-#define   RING_FAULT_GTTSEL_MASK		(1 << 11)
-#define   RING_FAULT_SRCID(x)			(((x) >> 3) & 0xff)
-#define   RING_FAULT_FAULT_TYPE(x)		(((x) >> 1) & 0x3)
-#define   RING_FAULT_VALID			(1 << 0)
+#define   RING_FAULT_ENGINE_ID_MASK		REG_GENMASK(16, 12)
+#define   RING_FAULT_GTTSEL_MASK		REG_BIT(11)
+#define   RING_FAULT_SRCID_MASK			REG_GENMASK(10, 3)
+#define   RING_FAULT_FAULT_TYPE_MASK		REG_GENMASK(2, 1)
+#define   RING_FAULT_VALID			REG_BIT(0)
 
 #define ERROR_GEN6				_MMIO(0x40a0)
 
@@ -390,8 +390,8 @@
 
 #define GEN8_FAULT_TLB_DATA0			_MMIO(0x4b10)
 #define GEN8_FAULT_TLB_DATA1			_MMIO(0x4b14)
-#define   FAULT_GTT_SEL				(1 << 4)
-#define   FAULT_VA_HIGH_BITS			(0xf << 0)
+#define   FAULT_GTT_SEL				REG_BIT(4)
+#define   FAULT_VA_HIGH_BITS			REG_GENMASK(3, 0)
 
 #define GEN11_GACB_PERF_CTRL			_MMIO(0x4b80)
 #define   GEN11_HASH_CTRL_MASK			(0x3 << 12 | 0xf << 0)
-- 
2.45.3

