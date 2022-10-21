Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B38606C71
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 02:20:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D36110E4D2;
	Fri, 21 Oct 2022 00:20:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1FFC10E543
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 00:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666311627; x=1697847627;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u64W1jMbofIipCuBb3B+HtKT+/crWwMKBGWtM4HaFI4=;
 b=Nswt3LjE3t1ANuBJjOc8uxbOc7WEZ/WI1L2njrLDQeqgOqgcfqsgue5W
 K7QZWSOvV/lQmLoGXvypYXw1cL95W5lIqoCyaXpt+pLXGyNqwr3vXS+/P
 CMFn8enjDmh52WPpeXmXTYnOflew9WkHveMuEvbJmMtMQ/f6BFTNnrU5J
 1tFq9f6mew20DJg6AMyFjL7BtHb8dux3qXP0DJ8ZKpbvegOJNiCiXFnNg
 8MnhPEutBNYP3YRViUQ5lgul4KrpPPqiGwv2GLIRPAXfuHvIl4MRZ4trG
 9RpMA3aSDbCwt+ka7I6KXdqHho80jNNMFrElb5QT7bbWXEafFnCdvtXLJ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="307971588"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="307971588"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 17:20:27 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="805232159"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="805232159"
Received: from aclausch-mobl.amr.corp.intel.com (HELO
 anushasr-mobl7.intel.com) ([10.212.253.196])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 17:20:26 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Oct 2022 17:20:23 -0700
Message-Id: <20221021002024.390052-4-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221021002024.390052-1-anusha.srivatsa@intel.com>
References: <20221021002024.390052-1-anusha.srivatsa@intel.com>
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

Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 40 ++++++++++++++--------
 1 file changed, 25 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 45babbc6290f..8701796788e3 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1684,6 +1684,27 @@ static u32 cdclk_squash_waveform(struct drm_i915_private *dev_priv,
 	return 0xffff;
 }
 
+static void icl_cdclk_pll(struct drm_i915_private *i915, int vco)
+{
+	if (i915->display.cdclk.hw.vco != 0 &&
+	    i915->display.cdclk.hw.vco != vco)
+		icl_cdclk_pll_disable(i915);
+
+	if (i915->display.cdclk.hw.vco != vco)
+		icl_cdclk_pll_enable(i915, vco);
+}
+
+static void bxt_cdclk_pll(struct drm_i915_private *i915, int vco)
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
+		icl_cdclk_pll(dev_priv, vco);
+	else
+		bxt_cdclk_pll(dev_priv, vco);
 
 	waveform = cdclk_squash_waveform(dev_priv, cdclk);
 
-- 
2.25.1

