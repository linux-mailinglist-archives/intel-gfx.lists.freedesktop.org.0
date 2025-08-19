Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 215C7B2C43B
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 14:54:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A91A610E5E1;
	Tue, 19 Aug 2025 12:54:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bzON8ZVY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A41110E5E7;
 Tue, 19 Aug 2025 12:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755608055; x=1787144055;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EwQP0YGEMbj/VqiEnAWA/AEvgMOSLWbvpq1zqJSd/C4=;
 b=bzON8ZVYGWQjynZyD3hF4Hn78beuKFQ4QrUdFXqDluyNAv6OYN2NNKcC
 nY0t73UR9iuBZoOS04NWR7gMgBP9WVxdU70vA3N8U/U80BEk5X/r6xgV8
 RysZUkyngfamHHiPyKKtf9iu8sifKA7g1pPb8RmLC7kIADhCGdtrKbg8S
 JXV5tnXcYTK7EIsptrk8oJsmlu5I1uC7RSpbaNnhEHEAD4Xu+/B9SnQ2U
 LQsHTgzwuxHWT20knaFl2NNA8uLY9eArrjGGdNIzp20UB3+DIfMOBMpIy
 VsA/S6D7JhCaNitiGHV8oKQuXUZ7YnTxd+r+WLfwwE4VWPj6C6jns/9bH w==;
X-CSE-ConnectionGUID: NR4ofgvPTqy/eXgJMM5XQA==
X-CSE-MsgGUID: 5uCtUQJjTMSHEa0kC3qp9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="75300792"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="75300792"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:54:14 -0700
X-CSE-ConnectionGUID: ArCbxUu2QiykUu7BZorGUA==
X-CSE-MsgGUID: 4TdU8l78TsWgIBgfD7eAWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="168246578"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.251])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 05:54:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 05/12] drm/i915: add vlv_clock_get_cdclk()
Date: Tue, 19 Aug 2025 15:53:35 +0300
Message-ID: <ddb128204f27ee029fe2858973ec9ca2c59a67e3.1755607980.git.jani.nikula@intel.com>
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

Add vlv_clock_get_cdclk() helper to hide the details from the callers.

For now, this means running vlv_get_hpll_vco() twice in vlv_get_cdclk(),
but this will be improved later.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 4 +---
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_display.h | 1 +
 3 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 65ad7d48dd39..e898c0541168 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -610,9 +610,7 @@ static void vlv_get_cdclk(struct intel_display *display,
 	vlv_iosf_sb_get(display->drm, BIT(VLV_IOSF_SB_CCK) | BIT(VLV_IOSF_SB_PUNIT));
 
 	cdclk_config->vco = vlv_get_hpll_vco(display->drm);
-	cdclk_config->cdclk = vlv_get_cck_clock(display->drm, "cdclk",
-						CCK_DISPLAY_CLOCK_CONTROL,
-						cdclk_config->vco);
+	cdclk_config->cdclk = vlv_clock_get_cdclk(display->drm);
 
 	val = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8baa5f898284..644028d0c7ef 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -204,6 +204,12 @@ int vlv_clock_get_czclk(struct drm_device *drm)
 	return i915->czclk_freq;
 }
 
+int vlv_clock_get_cdclk(struct drm_device *drm)
+{
+	return vlv_get_cck_clock(drm, "cdclk", CCK_DISPLAY_CLOCK_CONTROL,
+				 vlv_get_hpll_vco(drm));
+}
+
 int vlv_clock_get_gpll(struct drm_device *drm)
 {
 	return vlv_get_cck_clock(drm, "GPLL ref", CCK_GPLL_CLOCK_CONTROL,
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 5c9b57e94a65..9fdbc4ad5391 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -440,6 +440,7 @@ int vlv_get_cck_clock(struct drm_device *drm,
 		      const char *name, u32 reg, int ref_freq);
 int vlv_clock_get_hrawclk(struct drm_device *drm);
 int vlv_clock_get_czclk(struct drm_device *drm);
+int vlv_clock_get_cdclk(struct drm_device *drm);
 int vlv_clock_get_gpll(struct drm_device *drm);
 bool intel_has_pending_fb_unpin(struct intel_display *display);
 void intel_encoder_destroy(struct drm_encoder *encoder);
-- 
2.47.2

