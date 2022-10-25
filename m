Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BA960D724
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 00:30:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 459D210E155;
	Tue, 25 Oct 2022 22:30:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B44A10E155
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 22:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666737031; x=1698273031;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mUZT2RupF5y9U9XOTgGz2mfW0woJ/mkLKlqN/n62+Ic=;
 b=bnU90YEY7y4aK1bWwly3CxN3dpx0z9BPgfW947E6cJ+AlHsroESVaUsh
 6dbZyJdeK/+yEj10guxWC5sJGb8SUQkjT6Ailfc3s48ElQJYn0zD6kHLg
 YEpEouy9uwchXU39qccoSw4QF7ec8XBl7sMnj5Z91KoU3O6Rgfizs/vGv
 V6N76xBi+o8uBavqUEWSXzVdZnvOe5mhsNB+XbAggbKITNKH+Cfp8IRgA
 7wPpfY5BocQelRVxGelEiD+Xg2d4ihTwBnewzfRCqrBAXuvTZxZcHBRsb
 v2BvT74AIYCLppt0cpAhDAXdodLpWy/6YXJsV4kw8gXMI9b4CTOFpE2/G Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="305421440"
X-IronPort-AV: E=Sophos;i="5.95,213,1661842800"; d="scan'208";a="305421440"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 15:30:30 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="665072914"
X-IronPort-AV: E=Sophos;i="5.95,213,1661842800"; d="scan'208";a="665072914"
Received: from anushasr-mobl7.jf.intel.com ([10.24.14.105])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 15:30:29 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Oct 2022 15:30:41 -0700
Message-Id: <20221025223042.138810-3-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221025223042.138810-1-anusha.srivatsa@intel.com>
References: <20221025223042.138810-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 3/4] drm/i915/display: Move chunks of code out of
 bxt_set_cdclk()
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

No functional change. Moving segments out to simplify
bxt_set_cdlck()

v2: s/bxt_cdclk_pll/bxt_cdclk_pll_update (Jani)

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
Reviewed-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 39 +++++++++++++---------
 1 file changed, 24 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 45babbc6290f..9cd02b85ee51 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1684,6 +1684,26 @@ static u32 cdclk_squash_waveform(struct drm_i915_private *dev_priv,
 	return 0xffff;
 }
 
+static void icl_cdclk_pll_update(struct drm_i915_private *i915, int vco)
+{
+	if (i915->display.cdclk.hw.vco != 0 &&
+	    i915->display.cdclk.hw.vco != vco)
+		icl_cdclk_pll_disable(i915);
+
+	if (i915->display.cdclk.hw.vco != vco)
+		icl_cdclk_pll_enable(i915, vco);
+}
+
+static void bxt_cdclk_pll_update(struct drm_i915_private *i915, int vco)
+{
+	if (i915->display.cdclk.hw.vco != 0 &&
+	    i915->display.cdclk.hw.vco != vco)
+		bxt_de_pll_disable(i915);
+
+	if (i915->display.cdclk.hw.vco != vco)
+		bxt_de_pll_enable(i915, vco);
+}
+
 static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe)
@@ -1719,21 +1739,10 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && vco > 0) {
 		if (dev_priv->display.cdclk.hw.vco != vco)
 			adlp_cdclk_pll_crawl(dev_priv, vco);
-	} else if (DISPLAY_VER(dev_priv) >= 11) {
-		if (dev_priv->display.cdclk.hw.vco != 0 &&
-		    dev_priv->display.cdclk.hw.vco != vco)
-			icl_cdclk_pll_disable(dev_priv);
-
-		if (dev_priv->display.cdclk.hw.vco != vco)
-			icl_cdclk_pll_enable(dev_priv, vco);
-	} else {
-		if (dev_priv->display.cdclk.hw.vco != 0 &&
-		    dev_priv->display.cdclk.hw.vco != vco)
-			bxt_de_pll_disable(dev_priv);
-
-		if (dev_priv->display.cdclk.hw.vco != vco)
-			bxt_de_pll_enable(dev_priv, vco);
-	}
+	} else if (DISPLAY_VER(dev_priv) >= 11)
+		icl_cdclk_pll_update(dev_priv, vco);
+	else
+		bxt_cdclk_pll_update(dev_priv, vco);
 
 	waveform = cdclk_squash_waveform(dev_priv, cdclk);
 
-- 
2.25.1

