Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CB38AC71D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 10:35:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 902651128BB;
	Mon, 22 Apr 2024 08:35:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B89/s86o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69C451128B7
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 08:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713774905; x=1745310905;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=SpT56uh13v67g9cUfrOF0BZgPFVTzdaIezbzPlIfbb8=;
 b=B89/s86oIMrKHceL/y5kQEq1WrLwUhUe51sVhznr4sKo9Wc+yP4WaqbH
 XZacFGs5JEZQCXhja3b20WwEGiA0VN8BvNtI+bsB6nmOCWjFLv4PfevjW
 IaBl/W8QPbBmA17pW9Pj8iS73Wt0OVzfRW7fsz9tjRd50oSrBXG9P0DlI
 CScHJo39i2GWKaJkbkzv4q+Ig82DGF7uuRI+Vtwi9C/e6pwn7qXszLSMp
 IYgpJlCzRdJ3qQJgagwlowgskNsvyXwU9KLVPZ0HabZUX0f+8dB0dZnZh
 gMVX7Uj56kBA1p8Ail8VgtcZSCEo+xede08dji2uAx9pMSHSb8KAdN496 w==;
X-CSE-ConnectionGUID: paNH6KKxSFOBO99x9pib4g==
X-CSE-MsgGUID: lLv+ryrDQbGuWB16xdx9GA==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9453451"
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; 
   d="scan'208";a="9453451"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 01:35:05 -0700
X-CSE-ConnectionGUID: m3/kCydBQIGLwpqVCtUokA==
X-CSE-MsgGUID: Pl3PL9sqSCqUOICZcV2Gyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,220,1708416000"; d="scan'208";a="24021766"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 22 Apr 2024 01:35:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Apr 2024 11:35:02 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 02/14] drm/i915/dpio: s/VLV_REF_DW13/VLV_REF_DW11/
Date: Mon, 22 Apr 2024 11:34:45 +0300
Message-ID: <20240422083457.23815-3-ville.syrjala@linux.intel.com>
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

Our VLV_REF_DW13 is actually VLV_REF_DW11. Rename it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 8 ++++----
 drivers/gpu/drm/i915/i915_reg.h           | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 49274d632716..6693beafe9c0 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1880,19 +1880,19 @@ static void vlv_pllb_recal_opamp(struct drm_i915_private *dev_priv,
 	reg_val |= 0x00000030;
 	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW9(1), reg_val);
 
-	reg_val = vlv_dpio_read(dev_priv, phy, VLV_REF_DW13);
+	reg_val = vlv_dpio_read(dev_priv, phy, VLV_REF_DW11);
 	reg_val &= 0x00ffffff;
 	reg_val |= 0x8c000000;
-	vlv_dpio_write(dev_priv, phy, VLV_REF_DW13, reg_val);
+	vlv_dpio_write(dev_priv, phy, VLV_REF_DW11, reg_val);
 
 	reg_val = vlv_dpio_read(dev_priv, phy, VLV_PLL_DW9(1));
 	reg_val &= 0xffffff00;
 	vlv_dpio_write(dev_priv, phy, VLV_PLL_DW9(1), reg_val);
 
-	reg_val = vlv_dpio_read(dev_priv, phy, VLV_REF_DW13);
+	reg_val = vlv_dpio_read(dev_priv, phy, VLV_REF_DW11);
 	reg_val &= 0x00ffffff;
 	reg_val |= 0xb0000000;
-	vlv_dpio_write(dev_priv, phy, VLV_REF_DW13, reg_val);
+	vlv_dpio_write(dev_priv, phy, VLV_REF_DW11, reg_val);
 }
 
 static void vlv_prepare_pll(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8eb6c2bf4557..a2fadcbe0932 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -246,8 +246,8 @@
 #define _VLV_PLL_DW11_CH1		0x806c
 #define VLV_PLL_DW11(ch) _PIPE(ch, _VLV_PLL_DW11_CH0, _VLV_PLL_DW11_CH1)
 
-/* Spec for ref block start counts at DW10 */
-#define VLV_REF_DW13			0x80ac
+/* Spec for ref block start counts at DW8 */
+#define VLV_REF_DW11			0x80ac
 
 #define VLV_CMN_DW0			0x8100
 
-- 
2.43.2

