Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 608B56080DD
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 23:40:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3406710E4F2;
	Fri, 21 Oct 2022 21:39:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEEAB10E08D
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 21:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666388381; x=1697924381;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BIw1/k5+7FCkwt6FTLxMBo0hus/TzoIeY9b/iyLRY1I=;
 b=a9Dxzr0EGnbH3bJZD9Q1/qjj9DEKwXt6dYGQGcMg45liBQOgwYmESmGP
 It3O2ECOrXpxtT4nXnjjAPeCPR6BVsQHirJ+eVpUw4XVRzJYL0tCW/osv
 JGfKt+0YthRLOho/zPajMsT2Yvm5unOQ9LNKp2gXsusTLxKVHK70+nfLs
 B7EoxTUx9KZMDbq5wo+Cu7bWvu/rw5SoonbAGK7Pt0pRrRlXvk/lQhRw0
 C1Okd55zsmIDVAuFj7z0UQhIkDWOEwC+fp5aXR+mqdjJuDYZ3TpPpzVBK
 4XnO9Wz5QKmCbmOyvWLi+7PtEuROfReYFg9Xnefl2ZePRdMgGk/zACVHX w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="308795357"
X-IronPort-AV: E=Sophos;i="5.95,203,1661842800"; d="scan'208";a="308795357"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 14:39:41 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10507"; a="699511256"
X-IronPort-AV: E=Sophos;i="5.95,203,1661842800"; d="scan'208";a="699511256"
Received: from anushasr-mobl7.jf.intel.com ([10.24.14.105])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 14:39:40 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Oct 2022 14:39:47 -0700
Message-Id: <20221021213948.516041-4-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221021213948.516041-1-anusha.srivatsa@intel.com>
References: <20221021213948.516041-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/display: Move chunks of code out
 of bxt_set_cdclk()
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
Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

No functional change. Moving segments out to simplify
bxt_set_cdlck()

v2: s/bxt_cdclk_pll/bxt_cdclk_pll_update (Jani)

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 40 ++++++++++++++--------
 1 file changed, 25 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 45babbc6290f..3893779e0c23 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1684,6 +1684,27 @@ static u32 cdclk_squash_waveform(struct drm_i915_private *dev_priv,
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
+
+}
+
 static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe)
@@ -1719,21 +1740,10 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
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

