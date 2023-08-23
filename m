Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A612C785E36
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:09:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6C8C10E4AB;
	Wed, 23 Aug 2023 17:09:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10CC210E485;
 Wed, 23 Aug 2023 17:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810562; x=1724346562;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XMl+FDob2i9WE+IJzlNFuYCaGCAxPVCJejakDJz35PE=;
 b=bKAmNK5v88XYYSQwLKU53eN2e413mt0yWp1VSReksOtX2eTG7iSq6/Wx
 XH/X+gWriUb9UFtCEnaB6UxxsaEc8A3U1u9fzd4kf+/OhdRaW/tqGUipK
 brbN95d8zz1dyExqaao8F3lFS5LOohNF06sTYJfU3POCVK0gRBT1yksne
 YGVNiHMl/0SEFHuIEJw0Ksw7yeC/PhRc6GFvZNQSpQQ8X+PZgF3gUi71a
 R8zJknHBBKWRnZMYksEnGhZjhkoTD9HGg6Wlzp0Ik4994V/T34XbMAiJt
 q02zX4bJVKcs40KZl68FHg6GPzobJ/4rLgZdnrx/uBsBh1E95FFBl3wmJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147507"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147507"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204864"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204864"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:21 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:30 -0700
Message-Id: <20230823170740.1180212-33-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 32/42] drm/i915/lnl: Introduce MDCLK
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

In Lunar Lake we now separate MDCLK from CDLCK, which used to be before
always 2 times CDCLK.  Now we might afford lower CDCLK, while having
higher memory clock, so improving bandwidth and power consumption at the
same time.  This is prep work required to enable that.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 30 ++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_cdclk.h |  2 +-
 2 files changed, 31 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index fdd8d04fe12c..3e566f45996d 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1223,6 +1223,7 @@ static void skl_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
 
 struct intel_cdclk_vals {
 	u32 cdclk;
+	u32 mdclk;
 	u16 refclk;
 	u16 waveform;
 	u8 divider;	/* CD2X divider * 2 */
@@ -1524,6 +1525,8 @@ static void bxt_de_pll_readout(struct drm_i915_private *dev_priv,
 static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
 			  struct intel_cdclk_config *cdclk_config)
 {
+	const struct intel_cdclk_vals *table = dev_priv->display.cdclk.table;
+	int i, ratio, tbl_waveform = 0;
 	u32 squash_ctl = 0;
 	u32 divider;
 	int div;
@@ -1574,10 +1577,36 @@ static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
 
 		cdclk_config->cdclk = DIV_ROUND_CLOSEST(hweight16(waveform) *
 							cdclk_config->vco, size * div);
+		tbl_waveform = squash_ctl & CDCLK_SQUASH_WAVEFORM_MASK;
 	} else {
 		cdclk_config->cdclk = DIV_ROUND_CLOSEST(cdclk_config->vco, div);
 	}
 
+	ratio = cdclk_config->vco / cdclk_config->ref;
+
+	for (i = 0; table[i].refclk; i++) {
+		if (table[i].refclk != cdclk_config->ref)
+			continue;
+
+		if (table[i].divider != div)
+			continue;
+
+		if (table[i].waveform != tbl_waveform)
+			continue;
+
+		if (table[i].ratio != ratio)
+			continue;
+
+		/*
+		 * Supported from LunarLake HW onwards, however considering that
+		 * besides this the whole procedure is the same, we keep this
+		 * for all the platforms.
+		 */
+		cdclk_config->mdclk = table[i].mdclk;
+
+		break;
+	}
+
  out:
 	/*
 	 * Can't read this out :( Let's assume it's
@@ -2191,6 +2220,7 @@ bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
 			       const struct intel_cdclk_config *b)
 {
 	return a->cdclk != b->cdclk ||
+		a->mdclk != b->mdclk ||
 		a->vco != b->vco ||
 		a->ref != b->ref;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 48fd7d39e0cd..3e7eabd4d7b6 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -16,7 +16,7 @@ struct intel_atomic_state;
 struct intel_crtc_state;
 
 struct intel_cdclk_config {
-	unsigned int cdclk, vco, ref, bypass;
+	unsigned int cdclk, mdclk, vco, ref, bypass;
 	u8 voltage_level;
 };
 
-- 
2.40.1

