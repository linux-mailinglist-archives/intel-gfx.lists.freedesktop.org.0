Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1AEB55233
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 16:49:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F1CE10EC80;
	Fri, 12 Sep 2025 14:49:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eBZ3zK6e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 120E110EC80;
 Fri, 12 Sep 2025 14:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757688554; x=1789224554;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LBxZ07xB2MRvqIoURD2118kwikamrp2RNKggo8G12V4=;
 b=eBZ3zK6eQpQmb77hvccODRI0HJmafN0MnSYmFhWlal0d19dQ4n++9m6V
 NEnhLnghyV8NGtuXtJYcG53ooHBNeHb63m/1oSSa/rqmRFAag+EhmY302
 VazhTar8TAikXTdCqD/48COvyNS3ch8+p7hHIG6jPep5U6ULjCwy91shD
 TlsgaRz+cstwNwh2bAC1pZ+Z+mbBferSNo8xCaoPSNq599v029CCBSBMS
 g28CBtMgnaU6jOQP6707AsQcNp0Ab7lLxwJL5i08gg3ljcB7cGxPjShTD
 uTc9X7tWUOWM2rzc3PyZZzfrpEFa94SAhT99iLuD/muvbe36SCVBBz+Pc w==;
X-CSE-ConnectionGUID: KV5nr0PQTUeh8rHdT9zQ6A==
X-CSE-MsgGUID: soCYoGqAQ1eevPWB35tGZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="59074537"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="59074537"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:49:14 -0700
X-CSE-ConnectionGUID: aTtNBF43TSmKucMPOpG94Q==
X-CSE-MsgGUID: zbFm7TWMTDa9KI+4PLwdwg==
X-ExtLoop1: 1
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.212])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:49:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 michal.grzelak@intel.com
Subject: [PATCH v2 02/15] drm/i915: do cck get/put inside vlv_get_cck_clock()
Date: Fri, 12 Sep 2025 17:48:41 +0300
Message-ID: <480b654b6c736a03343dfd17eb130c39fd82c637.1757688216.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1757688216.git.jani.nikula@intel.com>
References: <cover.1757688216.git.jani.nikula@intel.com>
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

Move towards VLV/CHV clock interfaces that handle sideband get/put
inside them instead of at the caller.

With this, we can switch to the simpler vlv_punit_get()/vlv_punit_put()
in vlv_get_cdclk().

We'll need to move vlv_init_gpll_ref_freq() outside of the existing
get/put in vlv_rps_init() and chv_rps_init().

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 8 ++------
 drivers/gpu/drm/i915/display/intel_display.c | 7 +++----
 drivers/gpu/drm/i915/gt/intel_rps.c          | 8 ++++----
 3 files changed, 9 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index c54c7fd93f97..bf4e975ac41c 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -609,17 +609,13 @@ static void vlv_get_cdclk(struct intel_display *display,
 	u32 val;
 
 	cdclk_config->vco = vlv_get_hpll_vco(display->drm);
-
-	vlv_iosf_sb_get(display->drm, BIT(VLV_IOSF_SB_CCK) | BIT(VLV_IOSF_SB_PUNIT));
-
 	cdclk_config->cdclk = vlv_get_cck_clock(display->drm, "cdclk",
 						CCK_DISPLAY_CLOCK_CONTROL,
 						cdclk_config->vco);
 
+	vlv_punit_get(display->drm);
 	val = vlv_punit_read(display->drm, PUNIT_REG_DSPSSPM);
-
-	vlv_iosf_sb_put(display->drm,
-			BIT(VLV_IOSF_SB_CCK) | BIT(VLV_IOSF_SB_PUNIT));
+	vlv_punit_put(display->drm);
 
 	if (display->platform.valleyview)
 		cdclk_config->voltage_level = (val & DSPFREQGUAR_MASK) >>
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f5208583235d..aef136a1be25 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -163,7 +163,10 @@ int vlv_get_cck_clock(struct drm_device *drm,
 	u32 val;
 	int divider;
 
+	vlv_cck_get(drm);
 	val = vlv_cck_read(drm, reg);
+	vlv_cck_put(drm);
+
 	divider = val & CCK_FREQUENCY_VALUES;
 
 	drm_WARN(drm, (val & CCK_FREQUENCY_STATUS) !=
@@ -182,12 +185,8 @@ int vlv_get_cck_clock_hpll(struct drm_device *drm,
 	if (dev_priv->hpll_freq == 0)
 		dev_priv->hpll_freq = vlv_get_hpll_vco(drm);
 
-	vlv_cck_get(drm);
-
 	hpll = vlv_get_cck_clock(drm, name, reg, dev_priv->hpll_freq);
 
-	vlv_cck_put(drm);
-
 	return hpll;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 4da94098bd3e..afc934b7f5bc 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1703,13 +1703,13 @@ static void vlv_rps_init(struct intel_rps *rps)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 
+	vlv_init_gpll_ref_freq(rps);
+
 	vlv_iosf_sb_get(&i915->drm,
 			BIT(VLV_IOSF_SB_PUNIT) |
 			BIT(VLV_IOSF_SB_NC) |
 			BIT(VLV_IOSF_SB_CCK));
 
-	vlv_init_gpll_ref_freq(rps);
-
 	rps->max_freq = vlv_rps_max_freq(rps);
 	rps->rp0_freq = rps->max_freq;
 	drm_dbg(&i915->drm, "max GPU freq: %d MHz (%u)\n",
@@ -1737,13 +1737,13 @@ static void chv_rps_init(struct intel_rps *rps)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 
+	vlv_init_gpll_ref_freq(rps);
+
 	vlv_iosf_sb_get(&i915->drm,
 			BIT(VLV_IOSF_SB_PUNIT) |
 			BIT(VLV_IOSF_SB_NC) |
 			BIT(VLV_IOSF_SB_CCK));
 
-	vlv_init_gpll_ref_freq(rps);
-
 	rps->max_freq = chv_rps_max_freq(rps);
 	rps->rp0_freq = rps->max_freq;
 	drm_dbg(&i915->drm, "max GPU freq: %d MHz (%u)\n",
-- 
2.47.3

