Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA749680FFE
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 14:58:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AF9410E255;
	Mon, 30 Jan 2023 13:58:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4258410E24C
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 13:58:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675087119; x=1706623119;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=k8+8gOb74GCVnDahB1aSwpDHE4eElz17wGfQBXlZx1M=;
 b=KkqhYstQMmy7/BmNHn8b9C+QqdBz7eQ+WUSJAgpAkqH2Q8TYR0j+ToNM
 G0gPe4aYJnwA3y2sK6iV/zn8muLijUQBqfIbtPu7rDEHgeLvfvas00y3H
 RgVvShQWHlwdYQ5bPajAJrwQQpNfW1xUhROrDN2nGEnzoFhU49OofkgIH
 FIlV50wXtA6uAj2x9iBHRZvHz8SfemcU0tCIAMSNa1GnQuUeJBD18Lnop
 aBmdS2H6kCSP2ffcb21wBXEu7U2nR8Y07Vggkwl8vcvipiCMaX4IqljfB
 Fgz2D1BiH4YmmjN/Ifs2+l0p9781GfxohUP+t+BQorz26MfHNirVLTI6y Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="392107962"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="392107962"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 05:58:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="806681993"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="806681993"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga001.fm.intel.com with ESMTP; 30 Jan 2023 05:58:37 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Jan 2023 15:58:36 +0200
Message-Id: <20230130135836.12738-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Implement workaround for CDCLK PLL
 disable/enable
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

It was reported that we might get a hung and loss of register access in
some cases when CDCLK PLL is disabled and then enabled, while squashing
is enabled.
As a workaround it was proposed by HW team that SW should disable squashing
when CDCLK PLL is being reenabled.

v2: - Added WA number comment(Rodrigo Vivi)

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 7e16b655c833..8ae2b4c81f31 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1801,6 +1801,13 @@ static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i91
 	return true;
 }
 
+static bool pll_enable_wa_needed(struct drm_i915_private *dev_priv)
+{
+	return ((IS_DG2(dev_priv) || IS_METEORLAKE(dev_priv))
+		&& dev_priv->display.cdclk.hw.vco > 0
+		&& HAS_CDCLK_SQUASH(dev_priv));
+}
+
 static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
 			   const struct intel_cdclk_config *cdclk_config,
 			   enum pipe pipe)
@@ -1815,9 +1822,13 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	    !cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco)) {
 		if (dev_priv->display.cdclk.hw.vco != vco)
 			adlp_cdclk_pll_crawl(dev_priv, vco);
-	} else if (DISPLAY_VER(dev_priv) >= 11)
+	} else if (DISPLAY_VER(dev_priv) >= 11) {
+		/* wa_15010685871: dg2, mtl */
+		if (pll_enable_wa_needed(dev_priv))
+			dg2_cdclk_squash_program(dev_priv, 0);
+
 		icl_cdclk_pll_update(dev_priv, vco);
-	else
+	} else
 		bxt_cdclk_pll_update(dev_priv, vco);
 
 	waveform = cdclk_squash_waveform(dev_priv, cdclk);
-- 
2.37.3

