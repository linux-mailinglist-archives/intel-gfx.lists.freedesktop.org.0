Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7A713D3F0
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 06:50:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 450CD6EBE1;
	Thu, 16 Jan 2020 05:50:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30F296E340;
 Tue, 14 Jan 2020 09:52:14 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id q10so11463636wrm.11;
 Tue, 14 Jan 2020 01:52:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/+VsUoTyPr9fElJaSiErVtz/pOwQA5jbiv9Egmc66yU=;
 b=LpuZuoxlUGD8Xc8akyM9zDhuAtWFRjpo8OLeKO7C/rOR/gwPTdHkwZ1BtRaDKndZdE
 GhAbAmSYu2NwqLtzUHfDsSg6fx/lnGkBEiBc4Ybbgh4ifncPnGR6Fjhw1zXjDw/PPQuD
 qgAFxYF51KyQxS++r+hqnLkZN0kELNPNgv+OEJb49YiL9rKqbHO4PJRsN5MQaMHe8vYZ
 JbNMFmubMHMVldFBYAz1Q6MoY2EplkYHfOZGL7RjeyXc1Fcu/Q9+0S6fIbo1yFtbgsYZ
 Fzztl9xQX6kHV3blzstzNWPOQEa3RRD+23FfqEhIWuID35Tdl2/IvLT9jJyHOi6JLSTD
 rqAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/+VsUoTyPr9fElJaSiErVtz/pOwQA5jbiv9Egmc66yU=;
 b=OjXeAF9cI3+PKm+MFyJfaFX9hBzjsFTP1PAnnD7H1Tpr/gBX5vgGInSw63HlmYV7Ad
 Ln/pezhs2V1kQUUe9/jBejYuGMd+LoAlQ679kX8rJFU1bANHJX4BuKksvRM/d4fH73wT
 Pv3xuIcIKu7+kdEQSOc9tk9NaS9c83thop7voTAu6QCPhD6Kp0Piu9hnBsU0VEF7y5UV
 lgQTibLBLxXwPZpXnQKTbccM1UxBabuWmWfyTkfyEJ3QukbVabDOEfD2KaBroOVPnjm+
 OL9jpevDeBYc6UZb4N6pMZY2dm3w5o/4fsg5BQU2xmWUpz6XRDL4ENQmJGILcpxJ9Jag
 mC7g==
X-Gm-Message-State: APjAAAVChQtpoARInMszupGmUwEXzMoFCHKG5YavlG8/acXLpkqyBk+D
 EwkGKLgxwWkiJ4SMg2k0pX0=
X-Google-Smtp-Source: APXvYqwP3hxyxgre+jFbCGXvEOJIJlrh/QqLy6764Y9ug+5TnYFBQRbOBiQ8ynJ9VPaCWpObgTtOgA==
X-Received: by 2002:a5d:4b47:: with SMTP id w7mr25132123wrs.276.1578995532638; 
 Tue, 14 Jan 2020 01:52:12 -0800 (PST)
Received: from localhost.localdomain ([154.70.37.104])
 by smtp.googlemail.com with ESMTPSA id y20sm17454881wmi.25.2020.01.14.01.52.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 01:52:12 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie, daniel@ffwll.ch
Date: Tue, 14 Jan 2020 12:51:07 +0300
Message-Id: <20200114095107.21197-6-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200114095107.21197-1-wambui.karugax@gmail.com>
References: <20200114095107.21197-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 16 Jan 2020 05:50:43 +0000
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/cdclk: use new drm logging macros.
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Converts instances of the printk based debugging macros with the new
struct drm_device based logging macros in i915/display/intel_cdclk.c.
The conversion is achieved using the following coccinelle script that
transforms based on the existence of a struct drm_i915_private device in
the function:

@rule1@
identifier fn, T;
@@

fn(struct drm_i915_private *T,...) {
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
)
...+>
}

@rule2@
identifier fn, T;
@@

fn(...) {
...
struct drm_i915_private *T = ...;
<+...
(
-DRM_INFO(
+drm_info(&T->drm,
...)
|
-DRM_ERROR(
+drm_err(&T->drm,
...)
|
-DRM_WARN(
+drm_warn(&T->drm,
...)
|
-DRM_DEBUG(
+drm_dbg(&T->drm,
...)
|
-DRM_DEBUG_KMS(
+drm_dbg_kms(&T->drm,
...)
|
-DRM_DEBUG_DRIVER(
+drm_dbg(&T->drm,
...)
)
...+>
}

Resulting checkpatch warnings were fixed manually.

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 109 ++++++++++++---------
 1 file changed, 64 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 7d1ab1e5b7c3..cce04a4b758e 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -242,9 +242,10 @@ static unsigned int intel_hpll_vco(struct drm_i915_private *dev_priv)
 
 	vco = vco_table[tmp & 0x7];
 	if (vco == 0)
-		DRM_ERROR("Bad HPLL VCO (HPLLVCO=0x%02x)\n", tmp);
+		drm_err(&dev_priv->drm, "Bad HPLL VCO (HPLLVCO=0x%02x)\n",
+			tmp);
 	else
-		DRM_DEBUG_KMS("HPLL VCO %u kHz\n", vco);
+		drm_dbg_kms(&dev_priv->drm, "HPLL VCO %u kHz\n", vco);
 
 	return vco;
 }
@@ -292,8 +293,9 @@ static void g33_get_cdclk(struct drm_i915_private *dev_priv,
 	return;
 
 fail:
-	DRM_ERROR("Unable to determine CDCLK. HPLL VCO=%u kHz, CFGC=0x%08x\n",
-		  cdclk_state->vco, tmp);
+	drm_err(&dev_priv->drm,
+		"Unable to determine CDCLK. HPLL VCO=%u kHz, CFGC=0x%08x\n",
+		cdclk_state->vco, tmp);
 	cdclk_state->cdclk = 190476;
 }
 
@@ -319,7 +321,8 @@ static void pnv_get_cdclk(struct drm_i915_private *dev_priv,
 		cdclk_state->cdclk = 200000;
 		break;
 	default:
-		DRM_ERROR("Unknown pnv display core clock 0x%04x\n", gcfgc);
+		drm_err(&dev_priv->drm,
+			"Unknown pnv display core clock 0x%04x\n", gcfgc);
 		/* fall through */
 	case GC_DISPLAY_CLOCK_133_MHZ_PNV:
 		cdclk_state->cdclk = 133333;
@@ -369,8 +372,9 @@ static void i965gm_get_cdclk(struct drm_i915_private *dev_priv,
 	return;
 
 fail:
-	DRM_ERROR("Unable to determine CDCLK. HPLL VCO=%u kHz, CFGC=0x%04x\n",
-		  cdclk_state->vco, tmp);
+	drm_err(&dev_priv->drm,
+		"Unable to determine CDCLK. HPLL VCO=%u kHz, CFGC=0x%04x\n",
+		cdclk_state->vco, tmp);
 	cdclk_state->cdclk = 200000;
 }
 
@@ -397,8 +401,9 @@ static void gm45_get_cdclk(struct drm_i915_private *dev_priv,
 		cdclk_state->cdclk = cdclk_sel ? 320000 : 228571;
 		break;
 	default:
-		DRM_ERROR("Unable to determine CDCLK. HPLL VCO=%u, CFGC=0x%04x\n",
-			  cdclk_state->vco, tmp);
+		drm_err(&dev_priv->drm,
+			"Unable to determine CDCLK. HPLL VCO=%u, CFGC=0x%04x\n",
+			cdclk_state->vco, tmp);
 		cdclk_state->cdclk = 222222;
 		break;
 	}
@@ -563,7 +568,8 @@ static void vlv_set_cdclk(struct drm_i915_private *dev_priv,
 	if (wait_for((vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM) &
 		      DSPFREQSTAT_MASK) == (cmd << DSPFREQSTAT_SHIFT),
 		     50)) {
-		DRM_ERROR("timed out waiting for CDclk change\n");
+		drm_err(&dev_priv->drm,
+			"timed out waiting for CDclk change\n");
 	}
 
 	if (cdclk == 400000) {
@@ -581,7 +587,8 @@ static void vlv_set_cdclk(struct drm_i915_private *dev_priv,
 		if (wait_for((vlv_cck_read(dev_priv, CCK_DISPLAY_CLOCK_CONTROL) &
 			      CCK_FREQUENCY_STATUS) == (divider << CCK_FREQUENCY_STATUS_SHIFT),
 			     50))
-			DRM_ERROR("timed out waiting for CDclk change\n");
+			drm_err(&dev_priv->drm,
+				"timed out waiting for CDclk change\n");
 	}
 
 	/* adjust self-refresh exit latency value */
@@ -645,7 +652,8 @@ static void chv_set_cdclk(struct drm_i915_private *dev_priv,
 	if (wait_for((vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM) &
 		      DSPFREQSTAT_MASK_CHV) == (cmd << DSPFREQSTAT_SHIFT_CHV),
 		     50)) {
-		DRM_ERROR("timed out waiting for CDclk change\n");
+		drm_err(&dev_priv->drm,
+			"timed out waiting for CDclk change\n");
 	}
 
 	vlv_punit_put(dev_priv);
@@ -730,7 +738,8 @@ static void bdw_set_cdclk(struct drm_i915_private *dev_priv,
 	ret = sandybridge_pcode_write(dev_priv,
 				      BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ, 0x0);
 	if (ret) {
-		DRM_ERROR("failed to inform pcode about cdclk change\n");
+		drm_err(&dev_priv->drm,
+			"failed to inform pcode about cdclk change\n");
 		return;
 	}
 
@@ -744,7 +753,7 @@ static void bdw_set_cdclk(struct drm_i915_private *dev_priv,
 	 */
 	if (wait_for_us(I915_READ(LCPLL_CTL) &
 			LCPLL_CD_SOURCE_FCLK_DONE, 100))
-		DRM_ERROR("Switching to FCLK failed\n");
+		drm_err(&dev_priv->drm, "Switching to FCLK failed\n");
 
 	val = I915_READ(LCPLL_CTL);
 	val &= ~LCPLL_CLK_FREQ_MASK;
@@ -775,7 +784,7 @@ static void bdw_set_cdclk(struct drm_i915_private *dev_priv,
 
 	if (wait_for_us((I915_READ(LCPLL_CTL) &
 			LCPLL_CD_SOURCE_FCLK_DONE) == 0, 1))
-		DRM_ERROR("Switching back to LCPLL failed\n");
+		drm_err(&dev_priv->drm, "Switching back to LCPLL failed\n");
 
 	sandybridge_pcode_write(dev_priv, HSW_PCODE_DE_WRITE_FREQ_REQ,
 				cdclk_state->voltage_level);
@@ -971,7 +980,7 @@ static void skl_dpll0_enable(struct drm_i915_private *dev_priv, int vco)
 	I915_WRITE(LCPLL1_CTL, I915_READ(LCPLL1_CTL) | LCPLL_PLL_ENABLE);
 
 	if (intel_de_wait_for_set(dev_priv, LCPLL1_CTL, LCPLL_PLL_LOCK, 5))
-		DRM_ERROR("DPLL0 not locked\n");
+		drm_err(&dev_priv->drm, "DPLL0 not locked\n");
 
 	dev_priv->cdclk.hw.vco = vco;
 
@@ -983,7 +992,7 @@ static void skl_dpll0_disable(struct drm_i915_private *dev_priv)
 {
 	I915_WRITE(LCPLL1_CTL, I915_READ(LCPLL1_CTL) & ~LCPLL_PLL_ENABLE);
 	if (intel_de_wait_for_clear(dev_priv, LCPLL1_CTL, LCPLL_PLL_LOCK, 1))
-		DRM_ERROR("Couldn't disable DPLL0\n");
+		drm_err(&dev_priv->drm, "Couldn't disable DPLL0\n");
 
 	dev_priv->cdclk.hw.vco = 0;
 }
@@ -1012,8 +1021,8 @@ static void skl_set_cdclk(struct drm_i915_private *dev_priv,
 				SKL_CDCLK_READY_FOR_CHANGE,
 				SKL_CDCLK_READY_FOR_CHANGE, 3);
 	if (ret) {
-		DRM_ERROR("Failed to inform PCU about cdclk change (%d)\n",
-			  ret);
+		drm_err(&dev_priv->drm,
+			"Failed to inform PCU about cdclk change (%d)\n", ret);
 		return;
 	}
 
@@ -1114,7 +1123,7 @@ static void skl_sanitize_cdclk(struct drm_i915_private *dev_priv)
 		return;
 
 sanitize:
-	DRM_DEBUG_KMS("Sanitizing cdclk programmed by pre-os\n");
+	drm_dbg_kms(&dev_priv->drm, "Sanitizing cdclk programmed by pre-os\n");
 
 	/* force cdclk programming */
 	dev_priv->cdclk.hw.cdclk = 0;
@@ -1409,7 +1418,7 @@ static void bxt_de_pll_disable(struct drm_i915_private *dev_priv)
 	/* Timeout 200us */
 	if (intel_de_wait_for_clear(dev_priv,
 				    BXT_DE_PLL_ENABLE, BXT_DE_PLL_LOCK, 1))
-		DRM_ERROR("timeout waiting for DE PLL unlock\n");
+		drm_err(&dev_priv->drm, "timeout waiting for DE PLL unlock\n");
 
 	dev_priv->cdclk.hw.vco = 0;
 }
@@ -1429,7 +1438,7 @@ static void bxt_de_pll_enable(struct drm_i915_private *dev_priv, int vco)
 	/* Timeout 200us */
 	if (intel_de_wait_for_set(dev_priv,
 				  BXT_DE_PLL_ENABLE, BXT_DE_PLL_LOCK, 1))
-		DRM_ERROR("timeout waiting for DE PLL lock\n");
+		drm_err(&dev_priv->drm, "timeout waiting for DE PLL lock\n");
 
 	dev_priv->cdclk.hw.vco = vco;
 }
@@ -1444,7 +1453,8 @@ static void cnl_cdclk_pll_disable(struct drm_i915_private *dev_priv)
 
 	/* Timeout 200us */
 	if (wait_for((I915_READ(BXT_DE_PLL_ENABLE) & BXT_DE_PLL_LOCK) == 0, 1))
-		DRM_ERROR("timeout waiting for CDCLK PLL unlock\n");
+		drm_err(&dev_priv->drm,
+			"timeout waiting for CDCLK PLL unlock\n");
 
 	dev_priv->cdclk.hw.vco = 0;
 }
@@ -1462,7 +1472,8 @@ static void cnl_cdclk_pll_enable(struct drm_i915_private *dev_priv, int vco)
 
 	/* Timeout 200us */
 	if (wait_for((I915_READ(BXT_DE_PLL_ENABLE) & BXT_DE_PLL_LOCK) != 0, 1))
-		DRM_ERROR("timeout waiting for CDCLK PLL lock\n");
+		drm_err(&dev_priv->drm,
+			"timeout waiting for CDCLK PLL lock\n");
 
 	dev_priv->cdclk.hw.vco = vco;
 }
@@ -1512,8 +1523,9 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 						      0x80000000, 150, 2);
 
 	if (ret) {
-		DRM_ERROR("Failed to inform PCU about cdclk change (err %d, freq %d)\n",
-			  ret, cdclk);
+		drm_err(&dev_priv->drm,
+			"Failed to inform PCU about cdclk change (err %d, freq %d)\n",
+			ret, cdclk);
 		return;
 	}
 
@@ -1588,8 +1600,9 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	}
 
 	if (ret) {
-		DRM_ERROR("PCode CDCLK freq set failed, (err %d, freq %d)\n",
-			  ret, cdclk);
+		drm_err(&dev_priv->drm,
+			"PCode CDCLK freq set failed, (err %d, freq %d)\n",
+			ret, cdclk);
 		return;
 	}
 
@@ -1672,7 +1685,7 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
 		return;
 
 sanitize:
-	DRM_DEBUG_KMS("Sanitizing cdclk programmed by pre-os\n");
+	drm_dbg_kms(&dev_priv->drm, "Sanitizing cdclk programmed by pre-os\n");
 
 	/* force cdclk programming */
 	dev_priv->cdclk.hw.cdclk = 0;
@@ -2005,8 +2018,9 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	min_cdclk = max(intel_planes_min_cdclk(crtc_state), min_cdclk);
 
 	if (min_cdclk > dev_priv->max_cdclk_freq) {
-		DRM_DEBUG_KMS("required cdclk (%d kHz) exceeds max (%d kHz)\n",
-			      min_cdclk, dev_priv->max_cdclk_freq);
+		drm_dbg_kms(&dev_priv->drm,
+			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
+			    min_cdclk, dev_priv->max_cdclk_freq);
 		return -EINVAL;
 	}
 
@@ -2377,8 +2391,9 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 	if (pipe != INVALID_PIPE) {
 		state->cdclk.pipe = pipe;
 
-		DRM_DEBUG_KMS("Can change cdclk with pipe %c active\n",
-			      pipe_name(pipe));
+		drm_dbg_kms(&dev_priv->drm,
+			    "Can change cdclk with pipe %c active\n",
+			    pipe_name(pipe));
 	} else if (intel_cdclk_needs_modeset(&dev_priv->cdclk.actual,
 					     &state->cdclk.actual)) {
 		/* All pipes must be switched off while we change the cdclk. */
@@ -2388,15 +2403,18 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 
 		state->cdclk.pipe = INVALID_PIPE;
 
-		DRM_DEBUG_KMS("Modeset required for cdclk change\n");
+		drm_dbg_kms(&dev_priv->drm,
+			    "Modeset required for cdclk change\n");
 	}
 
-	DRM_DEBUG_KMS("New cdclk calculated to be logical %u kHz, actual %u kHz\n",
-		      state->cdclk.logical.cdclk,
-		      state->cdclk.actual.cdclk);
-	DRM_DEBUG_KMS("New voltage level calculated to be logical %u, actual %u\n",
-		      state->cdclk.logical.voltage_level,
-		      state->cdclk.actual.voltage_level);
+	drm_dbg_kms(&dev_priv->drm,
+		    "New cdclk calculated to be logical %u kHz, actual %u kHz\n",
+		    state->cdclk.logical.cdclk,
+		    state->cdclk.actual.cdclk);
+	drm_dbg_kms(&dev_priv->drm,
+		    "New voltage level calculated to be logical %u, actual %u\n",
+		    state->cdclk.logical.voltage_level,
+		    state->cdclk.actual.voltage_level);
 
 	return 0;
 }
@@ -2492,11 +2510,11 @@ void intel_update_max_cdclk(struct drm_i915_private *dev_priv)
 
 	dev_priv->max_dotclk_freq = intel_compute_max_dotclk(dev_priv);
 
-	DRM_DEBUG_DRIVER("Max CD clock rate: %d kHz\n",
-			 dev_priv->max_cdclk_freq);
+	drm_dbg(&dev_priv->drm, "Max CD clock rate: %d kHz\n",
+		dev_priv->max_cdclk_freq);
 
-	DRM_DEBUG_DRIVER("Max dotclock rate: %d kHz\n",
-			 dev_priv->max_dotclk_freq);
+	drm_dbg(&dev_priv->drm, "Max dotclock rate: %d kHz\n",
+		dev_priv->max_dotclk_freq);
 }
 
 /**
@@ -2608,7 +2626,8 @@ void intel_update_rawclk(struct drm_i915_private *dev_priv)
 		/* no rawclk on other platforms, or no need to know it */
 		return;
 
-	DRM_DEBUG_DRIVER("rawclk rate: %d kHz\n", dev_priv->rawclk_freq);
+	drm_dbg(&dev_priv->drm, "rawclk rate: %d kHz\n",
+		dev_priv->rawclk_freq);
 }
 
 /**
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
