Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 673CCB2C446
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 14:54:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0261310E5EE;
	Tue, 19 Aug 2025 12:54:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a3NXcPrn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5A1C10E5ED;
 Tue, 19 Aug 2025 12:54:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755608082; x=1787144082;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eE5wrAxew5RgLCVM0BaqngLjHs0FRSGiZs/0lorlss4=;
 b=a3NXcPrncBcMv0MtyMysYtsqp6DIZ9NIKkQCb+KmPKNacDTtHVdUpt2S
 VTWS6QCEDvqNDVUqXW1bY/2CkxH5bdAoI7UguQeTQBEkCXv85NtY+g2WR
 WelwGfmtbnfZDFr3ErCV0QaBd9mJs9pS2sFRSKXxCtrYmtqKALzs+D8T6
 SS8Or402WMIsZdEIeoIzlb/TLtZ+4jjws9Iry+c5oXeZKGOL25eoEC1KC
 PW26axvKLsIMi1Ocwt9Ci5GrDYhNOFStJPm//P3T2PGJ7gOwwr43SfsJg
 RxeZqyax98dlvgKVEIWhvVWN1veavkaMcH/ImbNEzafD3pAGMin9KsOs5 Q==;
X-CSE-ConnectionGUID: J30ykMC3TGqdqM4/jPxs1w==
X-CSE-MsgGUID: AzFN8ffWSPmGYlCdynBIrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="69222215"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="69222215"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:54:42 -0700
X-CSE-ConnectionGUID: e9mNadJqT4SqGHgCpkWRjg==
X-CSE-MsgGUID: SuiDT6/ZQdqF3qPOvaQjiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="168089328"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.251])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:54:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 11/12] drm/i915: move hpll and czclk caching under display
Date: Tue, 19 Aug 2025 15:53:41 +0300
Message-ID: <fe008de56837ae354c6e09a37d1fb85af22c6217.1755607980.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <cover.1755607980.git.jani.nikula@intel.com>
References: <cover.1755607980.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Perhaps not the ideal place, but better than having to have the fields
in both struct drm_i915_private and struct xe_device.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 22 +++++++++----------
 .../gpu/drm/i915/display/intel_display_core.h |  5 +++++
 drivers/gpu/drm/i915/i915_drv.h               |  3 ---
 drivers/gpu/drm/xe/xe_device_types.h          |  6 -----
 4 files changed, 16 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9ac21f54f548..dd7a0c18cb33 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -144,20 +144,20 @@ static void bdw_set_pipe_misc(struct intel_dsb *dsb,
 /* returns HPLL frequency in kHz */
 int vlv_clock_get_hpll_vco(struct drm_device *drm)
 {
-	struct drm_i915_private *i915 = to_i915(drm);
+	struct intel_display *display = to_intel_display(drm);
 	int hpll_freq, vco_freq[] = { 800, 1600, 2000, 2400 };
 
-	if (!i915->hpll_freq) {
+	if (!display->vlv_clock.hpll_freq) {
 		/* Obtain SKU information */
 		hpll_freq = vlv_cck_read(drm, CCK_FUSE_REG) &
 			CCK_FUSE_HPLL_FREQ_MASK;
 
-		i915->hpll_freq = vco_freq[hpll_freq] * 1000;
+		display->vlv_clock.hpll_freq = vco_freq[hpll_freq] * 1000;
 
-		drm_dbg_kms(drm, "HPLL frequency: %d kHz\n", i915->hpll_freq);
+		drm_dbg_kms(drm, "HPLL frequency: %d kHz\n", display->vlv_clock.hpll_freq);
 	}
 
-	return i915->hpll_freq;
+	return display->vlv_clock.hpll_freq;
 }
 
 static int vlv_get_cck_clock(struct drm_device *drm,
@@ -198,15 +198,15 @@ int vlv_clock_get_hrawclk(struct drm_device *drm)
 
 int vlv_clock_get_czclk(struct drm_device *drm)
 {
-	struct drm_i915_private *i915 = to_i915(drm);
+	struct intel_display *display = to_intel_display(drm);
 
-	if (!i915->czclk_freq) {
-		i915->czclk_freq = vlv_get_cck_clock_hpll(drm, "czclk",
-							  CCK_CZ_CLOCK_CONTROL);
-		drm_dbg_kms(drm, "CZ clock rate: %d kHz\n", i915->czclk_freq);
+	if (!display->vlv_clock.czclk_freq) {
+		display->vlv_clock.czclk_freq = vlv_get_cck_clock_hpll(drm, "czclk",
+								       CCK_CZ_CLOCK_CONTROL);
+		drm_dbg_kms(drm, "CZ clock rate: %d kHz\n", display->vlv_clock.czclk_freq);
 	}
 
-	return i915->czclk_freq;
+	return display->vlv_clock.czclk_freq;
 }
 
 int vlv_clock_get_cdclk(struct drm_device *drm)
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 8c226406c5cd..791021a4e3bb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -567,6 +567,11 @@ struct intel_display {
 		u32 bxt_phy_grc;
 	} state;
 
+	struct {
+		unsigned int hpll_freq;
+		unsigned int czclk_freq;
+	} vlv_clock;
+
 	struct {
 		/* ordered wq for modesets */
 		struct workqueue_struct *modeset;
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 2f3965feada1..626f0a3c9bb9 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -237,9 +237,6 @@ struct drm_i915_private {
 
 	bool preserve_bios_swizzle;
 
-	unsigned int hpll_freq;
-	unsigned int czclk_freq;
-
 	/**
 	 * wq - Driver workqueue for GEM.
 	 *
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index e67fbfe59afa..eff7a814fb96 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -604,12 +604,6 @@ struct xe_device {
 	struct intel_uncore {
 		spinlock_t lock;
 	} uncore;
-
-	/* only to allow build, not used functionally */
-	struct {
-		unsigned int hpll_freq;
-		unsigned int czclk_freq;
-	};
 #endif
 };
 
-- 
2.47.2

