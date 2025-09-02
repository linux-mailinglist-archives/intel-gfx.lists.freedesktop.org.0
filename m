Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F486B40342
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 15:31:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7837F10E6FA;
	Tue,  2 Sep 2025 13:31:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eaKNVF0n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47DDD10E6FB;
 Tue,  2 Sep 2025 13:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756819881; x=1788355881;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zwTkg4ETscTHTA7ZLPkhbkDveB8qeImbtY3PqE4ueqU=;
 b=eaKNVF0nBLpvEHLs2PHn0nShSpN4xfv/P1a56dea3vM6lB0vl/N9pfpg
 6MinYQg2BaVN5536rFFOFtJK2H5B9EGlCTWUtF6M+RpvmtON4mIJyBAID
 DPd0f8gxsoR/HQuelJyxHbm1M2ShubhcnPenviHOgAOkA8XMzZYeYrQrE
 hMyZtTz0A7UhFbf2Fpnx+TYDWPokNQZZAfIwNdnuWUtYK6ngY9l22RRVp
 yHC9SuOr4wClS5hjDTop3X42Qsg9jZTuq5fdiImpL7iJxQiL1REO8Ms/M
 6oPt4uGayBfms8tR63h1uu8V10YxQl/5VCyVhR5Z4ygKJ0BMgtQAnYgNg A==;
X-CSE-ConnectionGUID: OxEMs6tnSambD9zNekApXg==
X-CSE-MsgGUID: IDkmm+oJQv6Psr3OyuSf7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="62736419"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="62736419"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 06:31:21 -0700
X-CSE-ConnectionGUID: mQuljqkDQUCijIIf68+MTA==
X-CSE-MsgGUID: YKDpKjKOQ5i7RgayR+25Zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="176587292"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.118])
 by orviesa005.jf.intel.com with SMTP; 02 Sep 2025 06:31:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Sep 2025 16:31:17 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 1/8] drm/i915/dram: Populate PNV memory type accurately
Date: Tue,  2 Sep 2025 16:31:06 +0300
Message-ID: <20250902133113.18778-2-ville.syrjala@linux.intel.com>
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

If PNV doesn't have DDR3 then it has DDR2. Add the appropriate memory
type for it.

No functional change since we currently only care about the
DDR3 vs. not difference.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/soc/intel_dram.c | 10 ++++++----
 drivers/gpu/drm/i915/soc/intel_dram.h |  1 +
 2 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
index 3eb748ab44d9..7d8b8f81e215 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.c
+++ b/drivers/gpu/drm/i915/soc/intel_dram.c
@@ -35,6 +35,7 @@ static const char *intel_dram_type_str(enum intel_dram_type type)
 {
 	static const char * const str[] = {
 		DRAM_TYPE_STR(UNKNOWN),
+		DRAM_TYPE_STR(DDR2),
 		DRAM_TYPE_STR(DDR3),
 		DRAM_TYPE_STR(DDR4),
 		DRAM_TYPE_STR(LPDDR3),
@@ -55,9 +56,10 @@ static const char *intel_dram_type_str(enum intel_dram_type type)
 
 #undef DRAM_TYPE_STR
 
-static bool pnv_is_ddr3(struct drm_i915_private *i915)
+static enum intel_dram_type pnv_dram_type(struct drm_i915_private *i915)
 {
-	return intel_uncore_read(&i915->uncore, CSHRDDR3CTL) & CSHRDDR3CTL_DDR3;
+	return intel_uncore_read(&i915->uncore, CSHRDDR3CTL) & CSHRDDR3CTL_DDR3 ?
+		INTEL_DRAM_DDR3 : INTEL_DRAM_DDR2;
 }
 
 static unsigned int pnv_mem_freq(struct drm_i915_private *dev_priv)
@@ -252,8 +254,8 @@ static int i915_get_dram_info(struct drm_i915_private *i915, struct dram_info *d
 	if (dram_info->mem_freq)
 		drm_dbg(&i915->drm, "DDR speed: %d kHz\n", dram_info->mem_freq);
 
-	if (IS_PINEVIEW(i915) && pnv_is_ddr3(i915))
-		dram_info->type = INTEL_DRAM_DDR3;
+	if (IS_PINEVIEW(i915))
+		dram_info->type = pnv_dram_type(i915);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
index 97d21894abdc..7e3b3d961fcb 100644
--- a/drivers/gpu/drm/i915/soc/intel_dram.h
+++ b/drivers/gpu/drm/i915/soc/intel_dram.h
@@ -17,6 +17,7 @@ struct dram_info {
 	bool symmetric_memory;
 	enum intel_dram_type {
 		INTEL_DRAM_UNKNOWN,
+		INTEL_DRAM_DDR2,
 		INTEL_DRAM_DDR3,
 		INTEL_DRAM_DDR4,
 		INTEL_DRAM_LPDDR3,
-- 
2.49.1

