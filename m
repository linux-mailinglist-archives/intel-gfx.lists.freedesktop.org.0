Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B1BA31968
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 00:20:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 374A010E77D;
	Tue, 11 Feb 2025 23:20:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X/09pY/5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84D9410E783
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2025 23:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739316004; x=1770852004;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Q6y1Yrh0gtlcFf+E8Ho1tWhmvir5a+eReKZ0cMLA9wI=;
 b=X/09pY/5bEFcIaaxaP5EfmlxFs8/cKHS1WUh3WY3Wf06uMa5NxkLS/G6
 PJe1C7qoqiQ1eXSnvq6L15f/dQM/2vCdAEB4s0DR+2ZUfHIW+GveHY2Ic
 KfrTsm9X8M8fvWpjfzhSBce8qX3dduHmvAHw7bl59MkW7H9mBKx8kCs+i
 D2k09lzemfDyw9sMImoE8iIRmjWIQG73xnwTBk0ESTYJMiWqBdarAIMRc
 gZEZBcV5kO7QykEMFpmpLTmXFu6mfWuqdf6aDiD6rUkPO6DRBVCz3sbdJ
 KW3DGbPRl7wIx2tSk/HtJc8AeohdTsXVv4Fvdz6k8S92+jWFsKJTfvvZD g==;
X-CSE-ConnectionGUID: /CPK1qRpSUy3qS6OKDV59Q==
X-CSE-MsgGUID: O9Wgs9q5QAaF/W5jwOU9Rw==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="39820133"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="39820133"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 15:20:04 -0800
X-CSE-ConnectionGUID: EewwJu9sStmc85YLMukcig==
X-CSE-MsgGUID: 4Olk7s8gQz29R4IEqTcrog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="112870902"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Feb 2025 15:20:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 01:20:00 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 07/12] drm/i915: Use REG_BIT() & co. for CHV EU/slice fuse bits
Date: Wed, 12 Feb 2025 01:19:35 +0200
Message-ID: <20250211231941.22769-8-ville.syrjala@linux.intel.com>
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

Convert the CHV EU/slice fuse bits to the modern REG_BIT()/etc.
style.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h | 26 +++++++++++--------------
 drivers/gpu/drm/i915/gt/intel_sseu.c    | 12 ++++--------
 2 files changed, 15 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index c58192e6f078..f5ac73a2ed7d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -934,12 +934,12 @@
 #define CHV_POWER_SS0_SIG1			_MMIO(0xa720)
 #define CHV_POWER_SS0_SIG2			_MMIO(0xa724)
 #define CHV_POWER_SS1_SIG1			_MMIO(0xa728)
-#define   CHV_SS_PG_ENABLE			(1 << 1)
-#define   CHV_EU08_PG_ENABLE			(1 << 9)
-#define   CHV_EU19_PG_ENABLE			(1 << 17)
-#define   CHV_EU210_PG_ENABLE			(1 << 25)
+#define   CHV_SS_PG_ENABLE			REG_BIT(1)
+#define   CHV_EU08_PG_ENABLE			REG_BIT(9)
+#define   CHV_EU19_PG_ENABLE			REG_BIT(17)
+#define   CHV_EU210_PG_ENABLE			REG_BIT(25)
 #define CHV_POWER_SS1_SIG2			_MMIO(0xa72c)
-#define   CHV_EU311_PG_ENABLE			(1 << 1)
+#define   CHV_EU311_PG_ENABLE			REG_BIT(1)
 
 #define GEN7_SARCHKMD				_MMIO(0xb000)
 #define   GEN7_DISABLE_DEMAND_PREFETCH		(1 << 31)
@@ -1437,16 +1437,12 @@
 #define   XEHP_CCS_MODE_CSLICE(cslice, ccs)	(ccs << (cslice * XEHP_CCS_MODE_CSLICE_WIDTH))
 
 #define CHV_FUSE_GT				_MMIO(VLV_GUNIT_BASE + 0x2168)
-#define   CHV_FGT_DISABLE_SS0			(1 << 10)
-#define   CHV_FGT_DISABLE_SS1			(1 << 11)
-#define   CHV_FGT_EU_DIS_SS0_R0_SHIFT		16
-#define   CHV_FGT_EU_DIS_SS0_R0_MASK		(0xf << CHV_FGT_EU_DIS_SS0_R0_SHIFT)
-#define   CHV_FGT_EU_DIS_SS0_R1_SHIFT		20
-#define   CHV_FGT_EU_DIS_SS0_R1_MASK		(0xf << CHV_FGT_EU_DIS_SS0_R1_SHIFT)
-#define   CHV_FGT_EU_DIS_SS1_R0_SHIFT		24
-#define   CHV_FGT_EU_DIS_SS1_R0_MASK		(0xf << CHV_FGT_EU_DIS_SS1_R0_SHIFT)
-#define   CHV_FGT_EU_DIS_SS1_R1_SHIFT		28
-#define   CHV_FGT_EU_DIS_SS1_R1_MASK		(0xf << CHV_FGT_EU_DIS_SS1_R1_SHIFT)
+#define   CHV_FGT_DISABLE_SS0			REG_BIT(10)
+#define   CHV_FGT_DISABLE_SS1			REG_BIT(11)
+#define   CHV_FGT_EU_DIS_SS0_R0_MASK		REG_GENMASK(19, 16)
+#define   CHV_FGT_EU_DIS_SS0_R1_MASK		REG_GENMASK(23, 20)
+#define   CHV_FGT_EU_DIS_SS1_R0_MASK		REG_GENMASK(27, 24)
+#define   CHV_FGT_EU_DIS_SS1_R1_MASK		REG_GENMASK(31, 28)
 
 #define BCS_SWCTRL				_MMIO(0x22200)
 #define   BCS_SRC_Y				REG_BIT(0)
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
index e4538dd726c8..8ae1208f9da5 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
@@ -335,10 +335,8 @@ static void cherryview_sseu_info_init(struct intel_gt *gt)
 
 	if (!(fuse & CHV_FGT_DISABLE_SS0)) {
 		u8 disabled_mask =
-			((fuse & CHV_FGT_EU_DIS_SS0_R0_MASK) >>
-			 CHV_FGT_EU_DIS_SS0_R0_SHIFT) |
-			(((fuse & CHV_FGT_EU_DIS_SS0_R1_MASK) >>
-			  CHV_FGT_EU_DIS_SS0_R1_SHIFT) << 4);
+			REG_FIELD_GET(CHV_FGT_EU_DIS_SS0_R0_MASK, fuse) |
+			REG_FIELD_GET(CHV_FGT_EU_DIS_SS0_R1_MASK, fuse) << hweight32(CHV_FGT_EU_DIS_SS0_R0_MASK);
 
 		sseu->subslice_mask.hsw[0] |= BIT(0);
 		sseu_set_eus(sseu, 0, 0, ~disabled_mask & 0xFF);
@@ -346,10 +344,8 @@ static void cherryview_sseu_info_init(struct intel_gt *gt)
 
 	if (!(fuse & CHV_FGT_DISABLE_SS1)) {
 		u8 disabled_mask =
-			((fuse & CHV_FGT_EU_DIS_SS1_R0_MASK) >>
-			 CHV_FGT_EU_DIS_SS1_R0_SHIFT) |
-			(((fuse & CHV_FGT_EU_DIS_SS1_R1_MASK) >>
-			  CHV_FGT_EU_DIS_SS1_R1_SHIFT) << 4);
+			REG_FIELD_GET(CHV_FGT_EU_DIS_SS1_R0_MASK, fuse) |
+			REG_FIELD_GET(CHV_FGT_EU_DIS_SS1_R1_MASK, fuse) << hweight32(CHV_FGT_EU_DIS_SS1_R0_MASK);
 
 		sseu->subslice_mask.hsw[0] |= BIT(1);
 		sseu_set_eus(sseu, 0, 1, ~disabled_mask & 0xFF);
-- 
2.45.3

