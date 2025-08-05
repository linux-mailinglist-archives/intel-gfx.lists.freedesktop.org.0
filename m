Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BAB5B1B0DA
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 11:18:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8BC110E629;
	Tue,  5 Aug 2025 09:18:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Js1B3KvS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DFB210E629;
 Tue,  5 Aug 2025 09:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754385536; x=1785921536;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=200LcORdLaEoPAZA5J6dUqWgSDmZasPAWBcivFdZoRc=;
 b=Js1B3KvSvCYsqABIynjKH2Rz0FiymNK9LI29ZkZRwC5X1UzT4dYy+/aJ
 1l+VauGAGDGoMWjtXmMPxkCbCXCSuFZdYMqj5is+OFfFPDO6K06RZTn/K
 Q+/R9KcaZdnHBpyoqyFqWnjU32IDKB1KnF7SN3HVvJ4buZkqwbtdzlSH+
 tr0Krvy1aWqXvLL2Dh/kUxyEPWrAIYqT/0js0L9m25PVim0ZNkDJ1C8Cz
 KPjy+EcL9PY/2bn0ydF5vq7EkGZQu81GuAdodvYTZB8l4Rnaar/ehRH0s
 IXqgaK1/jOT+t6GCEk0H6s+YuH9uQFrjCf7bejJwTXBckf/TYRJuCs/lA w==;
X-CSE-ConnectionGUID: 0atHqk7RQliukkbqg4nunA==
X-CSE-MsgGUID: Y92wx8/7TzGGNnmnO/z6Fg==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="60504340"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="60504340"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:18:56 -0700
X-CSE-ConnectionGUID: dVJadtDDS0Kwd+XFe+gq0w==
X-CSE-MsgGUID: ic6FvAbwQPe9mA2+SSIdLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="195398073"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.8])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 02:18:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 05/12] drm/i915: add vlv_clock_get_cdclk()
Date: Tue,  5 Aug 2025 12:18:18 +0300
Message-Id: <7c6a9e724e26d707e57f7fa261c7ca5d6bb53511.1754385408.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1754385408.git.jani.nikula@intel.com>
References: <cover.1754385408.git.jani.nikula@intel.com>
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
index 5d3fe2302a75..94c6bea10b10 100644
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
index 3085fbb6bc8b..5a758346221e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -203,6 +203,12 @@ int vlv_clock_get_czclk(struct drm_device *drm)
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
2.39.5

