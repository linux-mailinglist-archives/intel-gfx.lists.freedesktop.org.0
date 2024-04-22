Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4718AC721
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 10:35:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6741A1128BD;
	Mon, 22 Apr 2024 08:35:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CFzTGWAe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B278B1128C0
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 08:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713774911; x=1745310911;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=5k6pwJQu/aBrBv/kyFOfpvlSEC2/a4ckF2F3cfRDLnA=;
 b=CFzTGWAe/4RAz6ovL2g16gdpWKrOd/f0pfks+az4OqGGXqo96Z/60aSh
 ufjeESH/ipOtfgLHVEbmzDVHlMEWchfeS6N3HJq4nIQVBi8QfTXpvd/fu
 2KTKU1/rRbW5Cxuu7yFzZuF4eBI95D4KY5V8MO0HVhyF4vdodbwztKgW3
 Ql+ucbEWnA2uZa2fMdL/oh+OQRooHQ3MECF0/kpRBJLMgJqaSmmNWxRCh
 qRv3ZSsJKg9wYdmwr2IVFSl66yfCL6Wk01cRB3QNSyUp1nt4llNoJINoS
 6+/CfjqXsnGaiEy/wNHU/W6JEE2zo1XTcsRe8lwdWwcoLCS2lQLeM99oW g==;
X-CSE-ConnectionGUID: EGBXFvjhQOGh+ouwZ9hjwA==
X-CSE-MsgGUID: 7jLkJj1sQ7yJDaOqjANkYA==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9453461"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9453461"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 01:35:10 -0700
X-CSE-ConnectionGUID: S5wi88KcQym9MrVkgaPO+g==
X-CSE-MsgGUID: beuC2Fz/RnqIYl67Xzjl8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="24021793"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Apr 2024 01:35:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Apr 2024 11:35:08 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/14] drm/i915/dpio: Fix VLV DPIO PLL register dword numbering
Date: Mon, 22 Apr 2024 11:34:47 +0300
Message-ID: <20240422083457.23815-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
References: <20240422083457.23815-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The spreadsheet defines the PLL register block as having
the dwords in the following order:

block   dwords    offsets
PLL1    0x0-0x7   0x00-0x1f
PLL2    0x0-0x7   0x20-0x2f
PLL1ext 0x10-0x1f 0x40-0x5f
PLL2ext 0x10-0x1f 0x60-0x7f

So dword indexes 0x8-0xf don't even exist. Renumber
our register defines to match.

Note that the spreadsheet used hex numbering whereas our
defiens are in decimal. Perhaps we should change that?

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 18 ++++++++---------
 drivers/gpu/drm/i915/i915_reg.h           | 24 +++++++++++------------
 2 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 7e8aca3c87ec..b95032651da0 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1875,19 +1875,19 @@ static void vlv_pllb_recal_opamp(struct drm_i915_private *dev_priv,
 	 * PLLB opamp always calibrates to max value of 0x3f, force enable it
 	 * and set it to a reasonable value instead.
 	 */
-	reg_val = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW9(1));
+	reg_val = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW17(1));
 	reg_val &= 0xffffff00;
 	reg_val |= 0x00000030;
-	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW9(1), reg_val);
+	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW17(1), reg_val);
 
 	reg_val = vlv_dpio_read(dev_priv, phy, VLV_REF_DW11);
 	reg_val &= 0x00ffffff;
 	reg_val |= 0x8c000000;
 	vlv_dpio_write(dev_priv, phy, VLV_REF_DW11, reg_val);
 
-	reg_val = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW9(1));
+	reg_val = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW17(1));
 	reg_val &= 0xffffff00;
-	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW9(1), reg_val);
+	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW17(1), reg_val);
 
 	reg_val = vlv_dpio_read(dev_priv, phy, VLV_REF_DW11);
 	reg_val &= 0x00ffffff;
@@ -1923,9 +1923,9 @@ static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
 	vlv_dpio_write(dev_priv, phy, VLV_PCS_DW17_BCAST, 0x0100000f);
 
 	/* Disable target IRef on PLL */
-	reg_val = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW8(pipe));
+	reg_val = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW16(pipe));
 	reg_val &= 0x00ffffff;
-	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW8(pipe), reg_val);
+	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW16(pipe), reg_val);
 
 	/* Disable fast lock */
 	vlv_dpio_write(dev_priv, phy, VLV_CMN_DW0, 0x610);
@@ -1951,10 +1951,10 @@ static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
 	if (crtc_state->port_clock == 162000 ||
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_ANALOG) ||
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
-		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW10(pipe),
+		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW18(pipe),
 				 0x009f0003);
 	else
-		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW10(pipe),
+		vlv_dpio_write(dev_priv, phy, VLV_PLL_DW18(pipe),
 				 0x00d0000f);
 
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
@@ -1981,7 +1981,7 @@ static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
 		coreclk |= 0x01000000;
 	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW7(pipe), coreclk);
 
-	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW11(pipe), 0x87871000);
+	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW19(pipe), 0x87871000);
 
 	vlv_dpio_put(dev_priv);
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8f3c83d2ab8d..747221f8ac72 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -229,21 +229,21 @@
 #define _VLV_PLL_DW7_CH1		0x803c
 #define VLV_PLL_DW7(ch) _PIPE(ch, _VLV_PLL_DW7_CH0, _VLV_PLL_DW7_CH1)
 
-#define _VLV_PLL_DW8_CH0		0x8040
-#define _VLV_PLL_DW8_CH1		0x8060
-#define VLV_PLL_DW8(ch) _PIPE(ch, _VLV_PLL_DW8_CH0, _VLV_PLL_DW8_CH1)
+#define _VLV_PLL_DW16_CH0		0x8040
+#define _VLV_PLL_DW16_CH1		0x8060
+#define VLV_PLL_DW16(ch) _PIPE(ch, _VLV_PLL_DW16_CH0, _VLV_PLL_DW16_CH1)
 
-#define _VLV_PLL_DW9_CH0		0x8044
-#define _VLV_PLL_DW9_CH1		0x8064
-#define VLV_PLL_DW9(ch) _PIPE(ch, _VLV_PLL_DW9_CH0, _VLV_PLL_DW9_CH1)
+#define _VLV_PLL_DW17_CH0		0x8044
+#define _VLV_PLL_DW17_CH1		0x8064
+#define VLV_PLL_DW17(ch) _PIPE(ch, _VLV_PLL_DW17_CH0, _VLV_PLL_DW17_CH1)
 
-#define _VLV_PLL_DW10_CH0		0x8048
-#define _VLV_PLL_DW10_CH1		0x8068
-#define VLV_PLL_DW10(ch) _PIPE(ch, _VLV_PLL_DW10_CH0, _VLV_PLL_DW10_CH1)
+#define _VLV_PLL_DW18_CH0		0x8048
+#define _VLV_PLL_DW18_CH1		0x8068
+#define VLV_PLL_DW18(ch) _PIPE(ch, _VLV_PLL_DW18_CH0, _VLV_PLL_DW18_CH1)
 
-#define _VLV_PLL_DW11_CH0		0x804c
-#define _VLV_PLL_DW11_CH1		0x806c
-#define VLV_PLL_DW11(ch) _PIPE(ch, _VLV_PLL_DW11_CH0, _VLV_PLL_DW11_CH1)
+#define _VLV_PLL_DW19_CH0		0x804c
+#define _VLV_PLL_DW19_CH1		0x806c
+#define VLV_PLL_DW19(ch) _PIPE(ch, _VLV_PLL_DW19_CH0, _VLV_PLL_DW19_CH1)
 
 /* Spec for ref block start counts at DW8 */
 #define VLV_REF_DW11			0x80ac
-- 
2.43.2

