Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A3EB55232
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 16:49:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E377010EC7D;
	Fri, 12 Sep 2025 14:49:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UNB9tygj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0699D10EC7D;
 Fri, 12 Sep 2025 14:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757688549; x=1789224549;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4GhZ3gcQFex7kcB7GIo1fZE1XHw1YKWQf0UHtfqG5G4=;
 b=UNB9tygjnJVpn42Tx1uLK21AfS4NuaAjI/Nw6Tkg2Q6foy5VciPndnOe
 7qSo3wIsx4nnnBpcJHycsTSupEooq3Qts0GlZGDtJ3J/D8ujBqbFh513k
 gpm8Lrm7sOUqxx8Vel7q+2b62ZlBFuuMezOxPkGbl+hd/7PPkQuie6aFm
 Gwehm2BL4InAhi3CXoyQAaPT/pE9EXF1NZ4SHNgPR8Z0qoCZXNHerBYqj
 H4do++pHWG2cTV1sOaBQ+qGZGbQnMsMd6vx8YQqg3KDCuKW2X8YfmGqCt
 cDw2lCCg6APJG4rVUvfoqDapKpUSPtllym42b0s2hrdcFMffh6R3MvzcI w==;
X-CSE-ConnectionGUID: LkcBribTRPWGeDVFkHw+YA==
X-CSE-MsgGUID: eBVpeYgrQtSwIZeLYINbxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11551"; a="59074532"
X-IronPort-AV: E=Sophos;i="6.18,259,1751266800"; d="scan'208";a="59074532"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:49:09 -0700
X-CSE-ConnectionGUID: Yx6iXV/RR9K59LuF8iQ6Qw==
X-CSE-MsgGUID: 86hfYuz6QX2hKaP5Z8fMgQ==
X-ExtLoop1: 1
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.212])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2025 07:49:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 michal.grzelak@intel.com
Subject: [PATCH v2 01/15] drm/i915: do cck get/put inside vlv_get_hpll_vco()
Date: Fri, 12 Sep 2025 17:48:40 +0300
Message-ID: <1a6553f54619275aa05512421e19115a71cd3eb0.1757688216.git.jani.nikula@intel.com>
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

We'll need to move the calls outside of existing get/put.

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c   | 3 ++-
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++--
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 9725eebe5706..c54c7fd93f97 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -608,9 +608,10 @@ static void vlv_get_cdclk(struct intel_display *display,
 {
 	u32 val;
 
+	cdclk_config->vco = vlv_get_hpll_vco(display->drm);
+
 	vlv_iosf_sb_get(display->drm, BIT(VLV_IOSF_SB_CCK) | BIT(VLV_IOSF_SB_PUNIT));
 
-	cdclk_config->vco = vlv_get_hpll_vco(display->drm);
 	cdclk_config->cdclk = vlv_get_cck_clock(display->drm, "cdclk",
 						CCK_DISPLAY_CLOCK_CONTROL,
 						cdclk_config->vco);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 5dca7f96b425..f5208583235d 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -146,10 +146,14 @@ int vlv_get_hpll_vco(struct drm_device *drm)
 {
 	int hpll_freq, vco_freq[] = { 800, 1600, 2000, 2400 };
 
+	vlv_cck_get(drm);
+
 	/* Obtain SKU information */
 	hpll_freq = vlv_cck_read(drm, CCK_FUSE_REG) &
 		CCK_FUSE_HPLL_FREQ_MASK;
 
+	vlv_cck_put(drm);
+
 	return vco_freq[hpll_freq] * 1000;
 }
 
@@ -175,11 +179,11 @@ int vlv_get_cck_clock_hpll(struct drm_device *drm,
 	struct drm_i915_private *dev_priv = to_i915(drm);
 	int hpll;
 
-	vlv_cck_get(drm);
-
 	if (dev_priv->hpll_freq == 0)
 		dev_priv->hpll_freq = vlv_get_hpll_vco(drm);
 
+	vlv_cck_get(drm);
+
 	hpll = vlv_get_cck_clock(drm, name, reg, dev_priv->hpll_freq);
 
 	vlv_cck_put(drm);
-- 
2.47.3

