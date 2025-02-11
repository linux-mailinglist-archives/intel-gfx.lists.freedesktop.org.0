Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED93A31963
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 00:19:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0982F10E759;
	Tue, 11 Feb 2025 23:19:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NHZVDtlM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B04510E759
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 23:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739315990; x=1770851990;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xqe0AsVF2ROcl/Ckqdk6IH4ij/WPtcgXK6ZQBb9ig5M=;
 b=NHZVDtlMS7np7HdkcesIvUbVtdThYHleO9c4Ge6uOJNMxgZwz3jXAeWa
 7+56bcBV3hvaVE3HcIBWD49tMTu9Z+f5lyBxa1xHMcaJumzExW9lXthv6
 3wXHew/IroAhrUo2BuGc6fJ/x0nnIWb6j/m2rHot72DD1zuvL3U+ON7jh
 szGtWwNMBZyO5SUaWSUkJQjU/CjFsJ1cq+g8Lri3BQ5jvoul6Sm0TUWCe
 ATp1H3hvrJgEcKRDpzwli69RMiaMBW7PTxiANpZYWmlhLfDVrJOXDjTF5
 tFeTRjEL6+ubVZCcYFxBCmN3f+JB7mmGQ5J2SkVur7CI6oLjeYnUcr+1E g==;
X-CSE-ConnectionGUID: 0gwvD3SITdqzoYZGHt8sAg==
X-CSE-MsgGUID: WqJn31aVRa2Oe1JDiQvpbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39820126"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="39820126"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 15:19:50 -0800
X-CSE-ConnectionGUID: Lue3LEGVTDCRWERv8HvjMg==
X-CSE-MsgGUID: VF69kpmNSn6I/h0a87GnXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="112870871"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Feb 2025 15:19:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 01:19:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/12] drm/i915: Relocate RING_FAULT bits
Date: Wed, 12 Feb 2025 01:19:30 +0200
Message-ID: <20250211231941.22769-3-ville.syrjala@linux.intel.com>
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

We share the bit definitions between the older
RING_FAULT registers and their various gen12+
counterparts. Currently the bits are defined next
to the new registers which isn't what we typically do.

Move the bit definitions next the older register offsets,
and leave breadcrumbs around the gen12+ registers to make
it easier to find the right bits.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 5e4f0545f558..2d3da98e94f0 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -326,6 +326,11 @@
 							    _RING_FAULT_REG_VCS, \
 							    _RING_FAULT_REG_VECS, \
 							    _RING_FAULT_REG_BCS))
+#define   GEN8_RING_FAULT_ENGINE_ID(x)		(((x) >> 12) & 0x1f)
+#define   RING_FAULT_GTTSEL_MASK		(1 << 11)
+#define   RING_FAULT_SRCID(x)			(((x) >> 3) & 0xff)
+#define   RING_FAULT_FAULT_TYPE(x)		(((x) >> 1) & 0x3)
+#define   RING_FAULT_VALID			(1 << 0)
 
 #define ERROR_GEN6				_MMIO(0x40a0)
 
@@ -385,6 +390,8 @@
 
 #define GEN8_FAULT_TLB_DATA0			_MMIO(0x4b10)
 #define GEN8_FAULT_TLB_DATA1			_MMIO(0x4b14)
+#define   FAULT_GTT_SEL				(1 << 4)
+#define   FAULT_VA_HIGH_BITS			(0xf << 0)
 
 #define GEN11_GACB_PERF_CTRL			_MMIO(0x4b80)
 #define   GEN11_HASH_CTRL_MASK			(0x3 << 12 | 0xf << 0)
@@ -1035,17 +1042,12 @@
 #define XEHP_FAULT_TLB_DATA0			MCR_REG(0xceb8)
 #define GEN12_FAULT_TLB_DATA1			_MMIO(0xcebc)
 #define XEHP_FAULT_TLB_DATA1			MCR_REG(0xcebc)
-#define   FAULT_VA_HIGH_BITS			(0xf << 0)
-#define   FAULT_GTT_SEL				(1 << 4)
+/* see GEN8_FAULT_TLB_DATA0/1 */
 
 #define GEN12_RING_FAULT_REG			_MMIO(0xcec4)
 #define XEHP_RING_FAULT_REG			MCR_REG(0xcec4)
 #define XELPMP_RING_FAULT_REG			_MMIO(0xcec4)
-#define   GEN8_RING_FAULT_ENGINE_ID(x)		(((x) >> 12) & 0x1f)
-#define   RING_FAULT_GTTSEL_MASK		(1 << 11)
-#define   RING_FAULT_SRCID(x)			(((x) >> 3) & 0xff)
-#define   RING_FAULT_FAULT_TYPE(x)		(((x) >> 1) & 0x3)
-#define   RING_FAULT_VALID			(1 << 0)
+/* see GEN8_RING_FAULT_REG */
 
 #define GEN12_GFX_TLB_INV_CR			_MMIO(0xced8)
 #define XEHP_GFX_TLB_INV_CR			MCR_REG(0xced8)
-- 
2.45.3

