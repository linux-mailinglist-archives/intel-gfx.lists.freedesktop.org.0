Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5F8C2268B
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 22:26:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B0C610EA4B;
	Thu, 30 Oct 2025 21:26:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M2fU6OGG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CF3E10EA5E
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Oct 2025 21:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761859601; x=1793395601;
 h=resent-from:resent-date:resent-message-id:resent-to:from:
 to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8AlehAm2ZAkRXYqWqTNAchZ4t33hVUFFzIQOIwd9mvs=;
 b=M2fU6OGGbqw4zno0j1kls/KmsloZ6wjdU8e5Pj1qGheLZ76qydBr+4Fu
 xBBtob0FLa8tklGQv0vL41YJXtI8Ecd0hMilsLzS27wmvAx7yR5JYgv5I
 EhfRbPv/Gf+KGz9VFZnxLeULiPSrD+BxaRyC1apLY9UEHnsN+92XCaKyR
 UBoRWwC7ZyB8iZ3MVeBoCLNeL7kYMIBsU/fr4VXAIkNf3rlFMY0JVIHvY
 eZNxv/uuDM+62P8t+hZFpoa3ZW8MSSjaUTjp5Rdju1bVmt2b+hCA9TekV
 /i5T3bGLZhzkR1T3Dt3XtEkfblVt9aHPuCXVjH50j7F+jN/E9Q/8gTVM+ w==;
X-CSE-ConnectionGUID: GXtnT9NKRf+u1/mdNODEpQ==
X-CSE-MsgGUID: MnKlT4+bQuOoJqC7xCtIhQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="75364603"
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="75364603"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 14:26:41 -0700
X-CSE-ConnectionGUID: z/Zwjo6cTTaGeD34olPjVw==
X-CSE-MsgGUID: n4UbRNy6RX+9azq4rwNJmw==
X-ExtLoopCount2: 2 from 10.245.245.234
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="185751240"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.234])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 14:26:40 -0700
Resent-From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Resent-Date: Thu, 30 Oct 2025 23:26:37 +0200
Resent-Message-ID: <aQPYDVoTvi61dKGg@intel.com>
Resent-To: intel-gfx@lists.freedesktop.org
X-Original-To: ville.syrjala@linux.intel.com
Delivered-To: ville.syrjala@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by stinkbox.korsu.shacknet.nu with IMAP (fetchmail-6.5.4)
 for <vsyrjala@localhost> (single-drop); Wed, 29 Oct 2025 22:45:40 +0200 (EET)
Received: from orviesa001.jf.intel.com (ORVIESA001.jf.intel.com
 [10.64.159.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 47B1120B92E9
 for <ville.syrjala@linux.intel.com>; Wed, 29 Oct 2025 13:42:22 -0700 (PDT)
X-CSE-ConnectionGUID: O/LLCte3R+CFPd3rXVBcWg==
X-CSE-MsgGUID: wIAIWFusTNWdfZ0Kc5jurA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,264,1754982000"; d="scan'208";a="222984534"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.242])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 13:42:21 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/3] drm/i915/dram: Use REG_GENMASK() & co. for the SKL+ DIMM
 regs
Date: Wed, 29 Oct 2025 22:42:13 +0200
Message-ID: <20251029204215.12292-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251029204215.12292-1-ville.syrjala@linux.intel.com>
References: <20251029204215.12292-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Modernize the SKL/ICL DIMM registers with REG_GENMASK() & co.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_mchbar_regs.h | 51 +++++++++++-------------
 drivers/gpu/drm/i915/soc/intel_dram.c    | 12 +++---
 2 files changed, 29 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_mchbar_regs.h b/drivers/gpu/drm/i915/intel_mchbar_regs.h
index dc2477179c3e..378dc7c69f7d 100644
--- a/drivers/gpu/drm/i915/intel_mchbar_regs.h
+++ b/drivers/gpu/drm/i915/intel_mchbar_regs.h
@@ -130,11 +130,11 @@
 #define   DG1_DRAM_T_RAS_MASK			REG_GENMASK(8, 1)
 
 #define SKL_MAD_INTER_CHANNEL_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5000)
-#define   SKL_DRAM_DDR_TYPE_MASK		(0x3 << 0)
-#define   SKL_DRAM_DDR_TYPE_DDR4		(0 << 0)
-#define   SKL_DRAM_DDR_TYPE_DDR3		(1 << 0)
-#define   SKL_DRAM_DDR_TYPE_LPDDR3		(2 << 0)
-#define   SKL_DRAM_DDR_TYPE_LPDDR4		(3 << 0)
+#define   SKL_DRAM_DDR_TYPE_MASK		REG_GENMASK(1, 0)
+#define   SKL_DRAM_DDR_TYPE_DDR4		REG_FIELD_PREP(SKL_DRAM_DDR_TYPE_MASK, 0)
+#define   SKL_DRAM_DDR_TYPE_DDR3		REG_FIELD_PREP(SKL_DRAM_DDR_TYPE_MASK, 1)
+#define   SKL_DRAM_DDR_TYPE_LPDDR3		REG_FIELD_PREP(SKL_DRAM_DDR_TYPE_MASK, 2)
+#define   SKL_DRAM_DDR_TYPE_LPDDR4		REG_FIELD_PREP(SKL_DRAM_DDR_TYPE_MASK, 3)
 
 /* snb MCH registers for reading the DRAM channel configuration */
 #define MAD_DIMM_C0				_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5004)
@@ -161,29 +161,24 @@
 #define SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x500C)
 #define SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5010)
 #define   SKL_DRAM_S_SHIFT			16
-#define   SKL_DRAM_SIZE_MASK			0x3F
-#define   SKL_DRAM_WIDTH_MASK			(0x3 << 8)
-#define   SKL_DRAM_WIDTH_SHIFT			8
-#define   SKL_DRAM_WIDTH_X8			(0x0 << 8)
-#define   SKL_DRAM_WIDTH_X16			(0x1 << 8)
-#define   SKL_DRAM_WIDTH_X32			(0x2 << 8)
-#define   SKL_DRAM_RANK_MASK			(0x1 << 10)
-#define   SKL_DRAM_RANK_SHIFT			10
-#define   SKL_DRAM_RANK_1			(0x0 << 10)
-#define   SKL_DRAM_RANK_2			(0x1 << 10)
-#define   SKL_DRAM_RANK_MASK			(0x1 << 10)
-#define   ICL_DRAM_SIZE_MASK			0x7F
-#define   ICL_DRAM_WIDTH_MASK			(0x3 << 7)
-#define   ICL_DRAM_WIDTH_SHIFT			7
-#define   ICL_DRAM_WIDTH_X8			(0x0 << 7)
-#define   ICL_DRAM_WIDTH_X16			(0x1 << 7)
-#define   ICL_DRAM_WIDTH_X32			(0x2 << 7)
-#define   ICL_DRAM_RANK_MASK			(0x3 << 9)
-#define   ICL_DRAM_RANK_SHIFT			9
-#define   ICL_DRAM_RANK_1			(0x0 << 9)
-#define   ICL_DRAM_RANK_2			(0x1 << 9)
-#define   ICL_DRAM_RANK_3			(0x2 << 9)
-#define   ICL_DRAM_RANK_4			(0x3 << 9)
+#define   SKL_DRAM_SIZE_MASK			REG_GENMASK(5, 0)
+#define   SKL_DRAM_WIDTH_MASK			REG_GENMASK(9, 8)
+#define   SKL_DRAM_WIDTH_X8			REG_FIELD_PREP(SKL_DRAM_WIDTH_MASK, 0)
+#define   SKL_DRAM_WIDTH_X16			REG_FIELD_PREP(SKL_DRAM_WIDTH_MASK, 1)
+#define   SKL_DRAM_WIDTH_X32			REG_FIELD_PREP(SKL_DRAM_WIDTH_MASK, 2)
+#define   SKL_DRAM_RANK_MASK			REG_GENMASK(10, 10)
+#define   SKL_DRAM_RANK_1			REG_FIELD_PREP(SKL_DRAM_RANK_MASK, 0)
+#define   SKL_DRAM_RANK_2			REG_FIELD_PREP(SKL_DRAM_RANK_MASK, 1)
+#define   ICL_DRAM_SIZE_MASK			REG_GENMASK(6, 0)
+#define   ICL_DRAM_WIDTH_MASK			REG_GENMASK(8, 7)
+#define   ICL_DRAM_WIDTH_X8			REG_FIELD_PREP(ICL_DRAM_WIDTH_MASK, 0)
+#define   ICL_DRAM_WIDTH_X16			REG_FIELD_PREP(ICL_DRAM_WIDTH_MASK, 1)
+#define   ICL_DRAM_WIDTH_X32			REG_FIELD_PREP(ICL_DRAM_WIDTH_MASK, 2)
+#define   ICL_DRAM_RANK_MASK			REG_GENMASK(10, 9)
+#define   ICL_DRAM_RANK_1			REG_FIELD_PREP(ICL_DRAM_RANK_MASK, 0)
+#define   ICL_DRAM_RANK_2			REG_FIELD_PREP(ICL_DRAM_RANK_MASK, 1)
+#define   ICL_DRAM_RANK_3			REG_FIELD_PREP(ICL_DRAM_RANK_MASK, 2)
+#define   ICL_DRAM_RANK_4			REG_FIELD_PREP(ICL_DRAM_RANK_MASK, 3)
 
 #define SA_PERF_STATUS_0_0_0_MCHBAR_PC		_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5918)
 #define  DG1_QCLK_RATIO_MASK			REG_GENMASK(9, 2)
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 8841cfe1cac8..768bede992bc 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -268,7 +268,7 @@ static int intel_dimm_num_devices(const struct dram_dimm_info *dimm)
 /* Returns total Gb for the whole DIMM */
 static int skl_get_dimm_size(u16 val)
 {
-	return (val & SKL_DRAM_SIZE_MASK) * 8;
+	return REG_FIELD_GET(SKL_DRAM_SIZE_MASK, val) * 8;
 }
 
 static int skl_get_dimm_width(u16 val)
@@ -280,7 +280,7 @@ static int skl_get_dimm_width(u16 val)
 	case SKL_DRAM_WIDTH_X8:
 	case SKL_DRAM_WIDTH_X16:
 	case SKL_DRAM_WIDTH_X32:
-		val = (val & SKL_DRAM_WIDTH_MASK) >> SKL_DRAM_WIDTH_SHIFT;
+		val = REG_FIELD_GET(SKL_DRAM_WIDTH_MASK, val);
 		return 8 << val;
 	default:
 		MISSING_CASE(val);
@@ -293,7 +293,7 @@ static int skl_get_dimm_ranks(u16 val)
 	if (skl_get_dimm_size(val) == 0)
 		return 0;
 
-	val = (val & SKL_DRAM_RANK_MASK) >> SKL_DRAM_RANK_SHIFT;
+	val = REG_FIELD_GET(SKL_DRAM_RANK_MASK, val);
 
 	return val + 1;
 }
@@ -301,7 +301,7 @@ static int skl_get_dimm_ranks(u16 val)
 /* Returns total Gb for the whole DIMM */
 static int icl_get_dimm_size(u16 val)
 {
-	return (val & ICL_DRAM_SIZE_MASK) * 8 / 2;
+	return REG_FIELD_GET(ICL_DRAM_SIZE_MASK, val) * 8 / 2;
 }
 
 static int icl_get_dimm_width(u16 val)
@@ -313,7 +313,7 @@ static int icl_get_dimm_width(u16 val)
 	case ICL_DRAM_WIDTH_X8:
 	case ICL_DRAM_WIDTH_X16:
 	case ICL_DRAM_WIDTH_X32:
-		val = (val & ICL_DRAM_WIDTH_MASK) >> ICL_DRAM_WIDTH_SHIFT;
+		val = REG_FIELD_GET(ICL_DRAM_WIDTH_MASK, val);
 		return 8 << val;
 	default:
 		MISSING_CASE(val);
@@ -326,7 +326,7 @@ static int icl_get_dimm_ranks(u16 val)
 	if (icl_get_dimm_size(val) == 0)
 		return 0;
 
-	val = (val & ICL_DRAM_RANK_MASK) >> ICL_DRAM_RANK_SHIFT;
+	val = REG_FIELD_GET(ICL_DRAM_RANK_MASK, val);
 
 	return val + 1;
 }
-- 
2.49.1
