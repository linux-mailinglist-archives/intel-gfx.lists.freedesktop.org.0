Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6F196F6D2
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 16:33:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0D0F10E997;
	Fri,  6 Sep 2024 14:33:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lSElvJ75";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4C1D10E993;
 Fri,  6 Sep 2024 14:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725633195; x=1757169195;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d8LlYms7l/aDatFICBjqi2QVRlHP1PTMSG2L3gKzPoI=;
 b=lSElvJ75zG+TzGNOWvmhzXW0OWDaTYL3KEPbVD++d1u3PZ41xTkYGtT3
 8Kb44DUlAPEEaCfLZpwJOw9JQtiYCAq5i3JVQKEMzr3FRTRDHPO+e7NyN
 jdVidxc/bW1Ury2r7P9HNE19kQ53c5AxTg+0Y6icQ35Ezb+p8UBKVlV0h
 D7H59AC0qJJURfdvKFLEfHQNaEVTuSYhwRyN5Nw6eaDU8tB9Sx+lfTYTu
 l11ujtux77HRoAvhpECY+qSTOSx96xX1vV/rr3iRHtTZHJKN43sGxTTMW
 TqRTg2yCSe4qKwec10IzIwCH7uz5LKKflp5oAo8/s9kH5VtikW2KajAv9 w==;
X-CSE-ConnectionGUID: aFhNAlh1QUGdzvg2xY2HfA==
X-CSE-MsgGUID: ct2C1Qp2SUCfChIF/l7dPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="41903051"
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="41903051"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 07:33:15 -0700
X-CSE-ConnectionGUID: fvkPcY3wQ3GwcQWWNBnRdw==
X-CSE-MsgGUID: ETNRXXVTTeCqSBEMcaTSWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="66003910"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Sep 2024 07:33:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 06 Sep 2024 17:33:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/6] drm/i915/cdclk: Convert CDCLK code to intel_display
Date: Fri,  6 Sep 2024 17:33:02 +0300
Message-ID: <20240906143306.15937-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240906143306.15937-1-ville.syrjala@linux.intel.com>
References: <20240906143306.15937-1-ville.syrjala@linux.intel.com>
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

struct intel_display will replace struct drm_i915_private as
the main thing for display code. Convert the CDCLK code to
use it (as much as possible at this stage).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 1168 +++++++++--------
 drivers/gpu/drm/i915/display/intel_cdclk.h    |   24 +-
 .../drm/i915/display/intel_display_debugfs.c  |    2 +-
 .../drm/i915/display/intel_display_device.c   |    2 +-
 .../drm/i915/display/intel_display_driver.c   |   17 +-
 .../drm/i915/display/intel_display_power.c    |   35 +-
 .../i915/display/intel_display_power_well.c   |    9 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |    3 +-
 8 files changed, 657 insertions(+), 603 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 9d870d15d888..b4eda0a2a45d 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -113,81 +113,81 @@
  */
 
 struct intel_cdclk_funcs {
-	void (*get_cdclk)(struct drm_i915_private *i915,
+	void (*get_cdclk)(struct intel_display *display,
 			  struct intel_cdclk_config *cdclk_config);
-	void (*set_cdclk)(struct drm_i915_private *i915,
+	void (*set_cdclk)(struct intel_display *display,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe);
 	int (*modeset_calc_cdclk)(struct intel_atomic_state *state);
 	u8 (*calc_voltage_level)(int cdclk);
 };
 
-void intel_cdclk_get_cdclk(struct drm_i915_private *dev_priv,
+void intel_cdclk_get_cdclk(struct intel_display *display,
 			   struct intel_cdclk_config *cdclk_config)
 {
-	dev_priv->display.funcs.cdclk->get_cdclk(dev_priv, cdclk_config);
+	display->funcs.cdclk->get_cdclk(display, cdclk_config);
 }
 
-static void intel_cdclk_set_cdclk(struct drm_i915_private *dev_priv,
+static void intel_cdclk_set_cdclk(struct intel_display *display,
 				  const struct intel_cdclk_config *cdclk_config,
 				  enum pipe pipe)
 {
-	dev_priv->display.funcs.cdclk->set_cdclk(dev_priv, cdclk_config, pipe);
+	display->funcs.cdclk->set_cdclk(display, cdclk_config, pipe);
 }
 
 static int intel_cdclk_modeset_calc_cdclk(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 
-	return dev_priv->display.funcs.cdclk->modeset_calc_cdclk(state);
+	return display->funcs.cdclk->modeset_calc_cdclk(state);
 }
 
-static u8 intel_cdclk_calc_voltage_level(struct drm_i915_private *dev_priv,
+static u8 intel_cdclk_calc_voltage_level(struct intel_display *display,
 					 int cdclk)
 {
-	return dev_priv->display.funcs.cdclk->calc_voltage_level(cdclk);
+	return display->funcs.cdclk->calc_voltage_level(cdclk);
 }
 
-static void fixed_133mhz_get_cdclk(struct drm_i915_private *dev_priv,
+static void fixed_133mhz_get_cdclk(struct intel_display *display,
 				   struct intel_cdclk_config *cdclk_config)
 {
 	cdclk_config->cdclk = 133333;
 }
 
-static void fixed_200mhz_get_cdclk(struct drm_i915_private *dev_priv,
+static void fixed_200mhz_get_cdclk(struct intel_display *display,
 				   struct intel_cdclk_config *cdclk_config)
 {
 	cdclk_config->cdclk = 200000;
 }
 
-static void fixed_266mhz_get_cdclk(struct drm_i915_private *dev_priv,
+static void fixed_266mhz_get_cdclk(struct intel_display *display,
 				   struct intel_cdclk_config *cdclk_config)
 {
 	cdclk_config->cdclk = 266667;
 }
 
-static void fixed_333mhz_get_cdclk(struct drm_i915_private *dev_priv,
+static void fixed_333mhz_get_cdclk(struct intel_display *display,
 				   struct intel_cdclk_config *cdclk_config)
 {
 	cdclk_config->cdclk = 333333;
 }
 
-static void fixed_400mhz_get_cdclk(struct drm_i915_private *dev_priv,
+static void fixed_400mhz_get_cdclk(struct intel_display *display,
 				   struct intel_cdclk_config *cdclk_config)
 {
 	cdclk_config->cdclk = 400000;
 }
 
-static void fixed_450mhz_get_cdclk(struct drm_i915_private *dev_priv,
+static void fixed_450mhz_get_cdclk(struct intel_display *display,
 				   struct intel_cdclk_config *cdclk_config)
 {
 	cdclk_config->cdclk = 450000;
 }
 
-static void i85x_get_cdclk(struct drm_i915_private *dev_priv,
+static void i85x_get_cdclk(struct intel_display *display,
 			   struct intel_cdclk_config *cdclk_config)
 {
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 	u16 hpllcc = 0;
 
 	/*
@@ -226,10 +226,10 @@ static void i85x_get_cdclk(struct drm_i915_private *dev_priv,
 	}
 }
 
-static void i915gm_get_cdclk(struct drm_i915_private *dev_priv,
+static void i915gm_get_cdclk(struct intel_display *display,
 			     struct intel_cdclk_config *cdclk_config)
 {
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 	u16 gcfgc = 0;
 
 	pci_read_config_word(pdev, GCFGC, &gcfgc);
@@ -250,10 +250,10 @@ static void i915gm_get_cdclk(struct drm_i915_private *dev_priv,
 	}
 }
 
-static void i945gm_get_cdclk(struct drm_i915_private *dev_priv,
+static void i945gm_get_cdclk(struct intel_display *display,
 			     struct intel_cdclk_config *cdclk_config)
 {
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 	u16 gcfgc = 0;
 
 	pci_read_config_word(pdev, GCFGC, &gcfgc);
@@ -274,7 +274,7 @@ static void i945gm_get_cdclk(struct drm_i915_private *dev_priv,
 	}
 }
 
-static unsigned int intel_hpll_vco(struct drm_i915_private *dev_priv)
+static unsigned int intel_hpll_vco(struct intel_display *display)
 {
 	static const unsigned int blb_vco[8] = {
 		[0] = 3200000,
@@ -313,6 +313,7 @@ static unsigned int intel_hpll_vco(struct drm_i915_private *dev_priv)
 		[4] = 2666667,
 		[5] = 4266667,
 	};
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	const unsigned int *vco_table;
 	unsigned int vco;
 	u8 tmp = 0;
@@ -331,23 +332,23 @@ static unsigned int intel_hpll_vco(struct drm_i915_private *dev_priv)
 	else
 		return 0;
 
-	tmp = intel_de_read(dev_priv,
+	tmp = intel_de_read(display,
 			    IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv) ? HPLLVCO_MOBILE : HPLLVCO);
 
 	vco = vco_table[tmp & 0x7];
 	if (vco == 0)
-		drm_err(&dev_priv->drm, "Bad HPLL VCO (HPLLVCO=0x%02x)\n",
+		drm_err(display->drm, "Bad HPLL VCO (HPLLVCO=0x%02x)\n",
 			tmp);
 	else
-		drm_dbg_kms(&dev_priv->drm, "HPLL VCO %u kHz\n", vco);
+		drm_dbg_kms(display->drm, "HPLL VCO %u kHz\n", vco);
 
 	return vco;
 }
 
-static void g33_get_cdclk(struct drm_i915_private *dev_priv,
+static void g33_get_cdclk(struct intel_display *display,
 			  struct intel_cdclk_config *cdclk_config)
 {
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 	static const u8 div_3200[] = { 12, 10,  8,  7, 5, 16 };
 	static const u8 div_4000[] = { 14, 12, 10,  8, 6, 20 };
 	static const u8 div_4800[] = { 20, 14, 12, 10, 8, 24 };
@@ -356,7 +357,7 @@ static void g33_get_cdclk(struct drm_i915_private *dev_priv,
 	unsigned int cdclk_sel;
 	u16 tmp = 0;
 
-	cdclk_config->vco = intel_hpll_vco(dev_priv);
+	cdclk_config->vco = intel_hpll_vco(display);
 
 	pci_read_config_word(pdev, GCFGC, &tmp);
 
@@ -387,16 +388,16 @@ static void g33_get_cdclk(struct drm_i915_private *dev_priv,
 	return;
 
 fail:
-	drm_err(&dev_priv->drm,
+	drm_err(display->drm,
 		"Unable to determine CDCLK. HPLL VCO=%u kHz, CFGC=0x%08x\n",
 		cdclk_config->vco, tmp);
 	cdclk_config->cdclk = 190476;
 }
 
-static void pnv_get_cdclk(struct drm_i915_private *dev_priv,
+static void pnv_get_cdclk(struct intel_display *display,
 			  struct intel_cdclk_config *cdclk_config)
 {
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 	u16 gcfgc = 0;
 
 	pci_read_config_word(pdev, GCFGC, &gcfgc);
@@ -415,7 +416,7 @@ static void pnv_get_cdclk(struct drm_i915_private *dev_priv,
 		cdclk_config->cdclk = 200000;
 		break;
 	default:
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"Unknown pnv display core clock 0x%04x\n", gcfgc);
 		fallthrough;
 	case GC_DISPLAY_CLOCK_133_MHZ_PNV:
@@ -427,10 +428,10 @@ static void pnv_get_cdclk(struct drm_i915_private *dev_priv,
 	}
 }
 
-static void i965gm_get_cdclk(struct drm_i915_private *dev_priv,
+static void i965gm_get_cdclk(struct intel_display *display,
 			     struct intel_cdclk_config *cdclk_config)
 {
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 	static const u8 div_3200[] = { 16, 10,  8 };
 	static const u8 div_4000[] = { 20, 12, 10 };
 	static const u8 div_5333[] = { 24, 16, 14 };
@@ -438,7 +439,7 @@ static void i965gm_get_cdclk(struct drm_i915_private *dev_priv,
 	unsigned int cdclk_sel;
 	u16 tmp = 0;
 
-	cdclk_config->vco = intel_hpll_vco(dev_priv);
+	cdclk_config->vco = intel_hpll_vco(display);
 
 	pci_read_config_word(pdev, GCFGC, &tmp);
 
@@ -466,20 +467,20 @@ static void i965gm_get_cdclk(struct drm_i915_private *dev_priv,
 	return;
 
 fail:
-	drm_err(&dev_priv->drm,
+	drm_err(display->drm,
 		"Unable to determine CDCLK. HPLL VCO=%u kHz, CFGC=0x%04x\n",
 		cdclk_config->vco, tmp);
 	cdclk_config->cdclk = 200000;
 }
 
-static void gm45_get_cdclk(struct drm_i915_private *dev_priv,
+static void gm45_get_cdclk(struct intel_display *display,
 			   struct intel_cdclk_config *cdclk_config)
 {
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 	unsigned int cdclk_sel;
 	u16 tmp = 0;
 
-	cdclk_config->vco = intel_hpll_vco(dev_priv);
+	cdclk_config->vco = intel_hpll_vco(display);
 
 	pci_read_config_word(pdev, GCFGC, &tmp);
 
@@ -495,7 +496,7 @@ static void gm45_get_cdclk(struct drm_i915_private *dev_priv,
 		cdclk_config->cdclk = cdclk_sel ? 320000 : 228571;
 		break;
 	default:
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"Unable to determine CDCLK. HPLL VCO=%u, CFGC=0x%04x\n",
 			cdclk_config->vco, tmp);
 		cdclk_config->cdclk = 222222;
@@ -503,15 +504,16 @@ static void gm45_get_cdclk(struct drm_i915_private *dev_priv,
 	}
 }
 
-static void hsw_get_cdclk(struct drm_i915_private *dev_priv,
+static void hsw_get_cdclk(struct intel_display *display,
 			  struct intel_cdclk_config *cdclk_config)
 {
-	u32 lcpll = intel_de_read(dev_priv, LCPLL_CTL);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	u32 lcpll = intel_de_read(display, LCPLL_CTL);
 	u32 freq = lcpll & LCPLL_CLK_FREQ_MASK;
 
 	if (lcpll & LCPLL_CD_SOURCE_FCLK)
 		cdclk_config->cdclk = 800000;
-	else if (intel_de_read(dev_priv, FUSE_STRAP) & HSW_CDCLK_LIMIT)
+	else if (intel_de_read(display, FUSE_STRAP) & HSW_CDCLK_LIMIT)
 		cdclk_config->cdclk = 450000;
 	else if (freq == LCPLL_CLK_FREQ_450)
 		cdclk_config->cdclk = 450000;
@@ -521,8 +523,9 @@ static void hsw_get_cdclk(struct drm_i915_private *dev_priv,
 		cdclk_config->cdclk = 540000;
 }
 
-static int vlv_calc_cdclk(struct drm_i915_private *dev_priv, int min_cdclk)
+static int vlv_calc_cdclk(struct intel_display *display, int min_cdclk)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int freq_320 = (dev_priv->hpll_freq <<  1) % 320000 != 0 ?
 		333333 : 320000;
 
@@ -541,8 +544,10 @@ static int vlv_calc_cdclk(struct drm_i915_private *dev_priv, int min_cdclk)
 		return 200000;
 }
 
-static u8 vlv_calc_voltage_level(struct drm_i915_private *dev_priv, int cdclk)
+static u8 vlv_calc_voltage_level(struct intel_display *display, int cdclk)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
 	if (IS_VALLEYVIEW(dev_priv)) {
 		if (cdclk >= 320000) /* jump to highest voltage for 400MHz too */
 			return 2;
@@ -560,9 +565,10 @@ static u8 vlv_calc_voltage_level(struct drm_i915_private *dev_priv, int cdclk)
 	}
 }
 
-static void vlv_get_cdclk(struct drm_i915_private *dev_priv,
+static void vlv_get_cdclk(struct intel_display *display,
 			  struct intel_cdclk_config *cdclk_config)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 val;
 
 	vlv_iosf_sb_get(dev_priv,
@@ -586,8 +592,9 @@ static void vlv_get_cdclk(struct drm_i915_private *dev_priv,
 			DSPFREQGUAR_SHIFT_CHV;
 }
 
-static void vlv_program_pfi_credits(struct drm_i915_private *dev_priv)
+static void vlv_program_pfi_credits(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	unsigned int credits, default_credits;
 
 	if (IS_CHERRYVIEW(dev_priv))
@@ -595,7 +602,7 @@ static void vlv_program_pfi_credits(struct drm_i915_private *dev_priv)
 	else
 		default_credits = PFI_CREDIT(8);
 
-	if (dev_priv->display.cdclk.hw.cdclk >= dev_priv->czclk_freq) {
+	if (display->cdclk.hw.cdclk >= dev_priv->czclk_freq) {
 		/* CHV suggested value is 31 or 63 */
 		if (IS_CHERRYVIEW(dev_priv))
 			credits = PFI_CREDIT_63;
@@ -609,24 +616,25 @@ static void vlv_program_pfi_credits(struct drm_i915_private *dev_priv)
 	 * WA - write default credits before re-programming
 	 * FIXME: should we also set the resend bit here?
 	 */
-	intel_de_write(dev_priv, GCI_CONTROL,
+	intel_de_write(display, GCI_CONTROL,
 		       VGA_FAST_MODE_DISABLE | default_credits);
 
-	intel_de_write(dev_priv, GCI_CONTROL,
+	intel_de_write(display, GCI_CONTROL,
 		       VGA_FAST_MODE_DISABLE | credits | PFI_CREDIT_RESEND);
 
 	/*
 	 * FIXME is this guaranteed to clear
 	 * immediately or should we poll for it?
 	 */
-	drm_WARN_ON(&dev_priv->drm,
-		    intel_de_read(dev_priv, GCI_CONTROL) & PFI_CREDIT_RESEND);
+	drm_WARN_ON(display->drm,
+		    intel_de_read(display, GCI_CONTROL) & PFI_CREDIT_RESEND);
 }
 
-static void vlv_set_cdclk(struct drm_i915_private *dev_priv,
+static void vlv_set_cdclk(struct intel_display *display,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int cdclk = cdclk_config->cdclk;
 	u32 val, cmd = cdclk_config->voltage_level;
 	intel_wakeref_t wakeref;
@@ -663,7 +671,7 @@ static void vlv_set_cdclk(struct drm_i915_private *dev_priv,
 	if (wait_for((vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM) &
 		      DSPFREQSTAT_MASK) == (cmd << DSPFREQSTAT_SHIFT),
 		     50)) {
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"timed out waiting for CDclk change\n");
 	}
 
@@ -682,7 +690,7 @@ static void vlv_set_cdclk(struct drm_i915_private *dev_priv,
 		if (wait_for((vlv_cck_read(dev_priv, CCK_DISPLAY_CLOCK_CONTROL) &
 			      CCK_FREQUENCY_STATUS) == (divider << CCK_FREQUENCY_STATUS_SHIFT),
 			     50))
-			drm_err(&dev_priv->drm,
+			drm_err(display->drm,
 				"timed out waiting for CDclk change\n");
 	}
 
@@ -705,17 +713,18 @@ static void vlv_set_cdclk(struct drm_i915_private *dev_priv,
 			BIT(VLV_IOSF_SB_BUNIT) |
 			BIT(VLV_IOSF_SB_PUNIT));
 
-	intel_update_cdclk(dev_priv);
+	intel_update_cdclk(display);
 
-	vlv_program_pfi_credits(dev_priv);
+	vlv_program_pfi_credits(display);
 
 	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 }
 
-static void chv_set_cdclk(struct drm_i915_private *dev_priv,
+static void chv_set_cdclk(struct intel_display *display,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int cdclk = cdclk_config->cdclk;
 	u32 val, cmd = cdclk_config->voltage_level;
 	intel_wakeref_t wakeref;
@@ -747,15 +756,15 @@ static void chv_set_cdclk(struct drm_i915_private *dev_priv,
 	if (wait_for((vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM) &
 		      DSPFREQSTAT_MASK_CHV) == (cmd << DSPFREQSTAT_SHIFT_CHV),
 		     50)) {
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"timed out waiting for CDclk change\n");
 	}
 
 	vlv_punit_put(dev_priv);
 
-	intel_update_cdclk(dev_priv);
+	intel_update_cdclk(display);
 
-	vlv_program_pfi_credits(dev_priv);
+	vlv_program_pfi_credits(display);
 
 	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 }
@@ -787,15 +796,15 @@ static u8 bdw_calc_voltage_level(int cdclk)
 	}
 }
 
-static void bdw_get_cdclk(struct drm_i915_private *dev_priv,
+static void bdw_get_cdclk(struct intel_display *display,
 			  struct intel_cdclk_config *cdclk_config)
 {
-	u32 lcpll = intel_de_read(dev_priv, LCPLL_CTL);
+	u32 lcpll = intel_de_read(display, LCPLL_CTL);
 	u32 freq = lcpll & LCPLL_CLK_FREQ_MASK;
 
 	if (lcpll & LCPLL_CD_SOURCE_FCLK)
 		cdclk_config->cdclk = 800000;
-	else if (intel_de_read(dev_priv, FUSE_STRAP) & HSW_CDCLK_LIMIT)
+	else if (intel_de_read(display, FUSE_STRAP) & HSW_CDCLK_LIMIT)
 		cdclk_config->cdclk = 450000;
 	else if (freq == LCPLL_CLK_FREQ_450)
 		cdclk_config->cdclk = 450000;
@@ -831,15 +840,16 @@ static u32 bdw_cdclk_freq_sel(int cdclk)
 	}
 }
 
-static void bdw_set_cdclk(struct drm_i915_private *dev_priv,
+static void bdw_set_cdclk(struct intel_display *display,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int cdclk = cdclk_config->cdclk;
 	int ret;
 
-	if (drm_WARN(&dev_priv->drm,
-		     (intel_de_read(dev_priv, LCPLL_CTL) &
+	if (drm_WARN(display->drm,
+		     (intel_de_read(display, LCPLL_CTL) &
 		      (LCPLL_PLL_DISABLE | LCPLL_PLL_LOCK |
 		       LCPLL_CD_CLOCK_DISABLE | LCPLL_ROOT_CD_CLOCK_DISABLE |
 		       LCPLL_CD2X_CLOCK_DISABLE | LCPLL_POWER_DOWN_ALLOW |
@@ -849,39 +859,39 @@ static void bdw_set_cdclk(struct drm_i915_private *dev_priv,
 
 	ret = snb_pcode_write(&dev_priv->uncore, BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ, 0x0);
 	if (ret) {
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"failed to inform pcode about cdclk change\n");
 		return;
 	}
 
-	intel_de_rmw(dev_priv, LCPLL_CTL,
+	intel_de_rmw(display, LCPLL_CTL,
 		     0, LCPLL_CD_SOURCE_FCLK);
 
 	/*
 	 * According to the spec, it should be enough to poll for this 1 us.
 	 * However, extensive testing shows that this can take longer.
 	 */
-	if (wait_for_us(intel_de_read(dev_priv, LCPLL_CTL) &
+	if (wait_for_us(intel_de_read(display, LCPLL_CTL) &
 			LCPLL_CD_SOURCE_FCLK_DONE, 100))
-		drm_err(&dev_priv->drm, "Switching to FCLK failed\n");
+		drm_err(display->drm, "Switching to FCLK failed\n");
 
-	intel_de_rmw(dev_priv, LCPLL_CTL,
+	intel_de_rmw(display, LCPLL_CTL,
 		     LCPLL_CLK_FREQ_MASK, bdw_cdclk_freq_sel(cdclk));
 
-	intel_de_rmw(dev_priv, LCPLL_CTL,
+	intel_de_rmw(display, LCPLL_CTL,
 		     LCPLL_CD_SOURCE_FCLK, 0);
 
-	if (wait_for_us((intel_de_read(dev_priv, LCPLL_CTL) &
+	if (wait_for_us((intel_de_read(display, LCPLL_CTL) &
 			 LCPLL_CD_SOURCE_FCLK_DONE) == 0, 1))
-		drm_err(&dev_priv->drm, "Switching back to LCPLL failed\n");
+		drm_err(display->drm, "Switching back to LCPLL failed\n");
 
 	snb_pcode_write(&dev_priv->uncore, HSW_PCODE_DE_WRITE_FREQ_REQ,
 			cdclk_config->voltage_level);
 
-	intel_de_write(dev_priv, CDCLK_FREQ,
+	intel_de_write(display, CDCLK_FREQ,
 		       DIV_ROUND_CLOSEST(cdclk, 1000) - 1);
 
-	intel_update_cdclk(dev_priv);
+	intel_update_cdclk(display);
 }
 
 static int skl_calc_cdclk(int min_cdclk, int vco)
@@ -919,7 +929,7 @@ static u8 skl_calc_voltage_level(int cdclk)
 		return 0;
 }
 
-static void skl_dpll0_update(struct drm_i915_private *dev_priv,
+static void skl_dpll0_update(struct intel_display *display,
 			     struct intel_cdclk_config *cdclk_config)
 {
 	u32 val;
@@ -927,16 +937,16 @@ static void skl_dpll0_update(struct drm_i915_private *dev_priv,
 	cdclk_config->ref = 24000;
 	cdclk_config->vco = 0;
 
-	val = intel_de_read(dev_priv, LCPLL1_CTL);
+	val = intel_de_read(display, LCPLL1_CTL);
 	if ((val & LCPLL_PLL_ENABLE) == 0)
 		return;
 
-	if (drm_WARN_ON(&dev_priv->drm, (val & LCPLL_PLL_LOCK) == 0))
+	if (drm_WARN_ON(display->drm, (val & LCPLL_PLL_LOCK) == 0))
 		return;
 
-	val = intel_de_read(dev_priv, DPLL_CTRL1);
+	val = intel_de_read(display, DPLL_CTRL1);
 
-	if (drm_WARN_ON(&dev_priv->drm,
+	if (drm_WARN_ON(display->drm,
 			(val & (DPLL_CTRL1_HDMI_MODE(SKL_DPLL0) |
 				DPLL_CTRL1_SSC(SKL_DPLL0) |
 				DPLL_CTRL1_OVERRIDE(SKL_DPLL0))) !=
@@ -960,19 +970,19 @@ static void skl_dpll0_update(struct drm_i915_private *dev_priv,
 	}
 }
 
-static void skl_get_cdclk(struct drm_i915_private *dev_priv,
+static void skl_get_cdclk(struct intel_display *display,
 			  struct intel_cdclk_config *cdclk_config)
 {
 	u32 cdctl;
 
-	skl_dpll0_update(dev_priv, cdclk_config);
+	skl_dpll0_update(display, cdclk_config);
 
 	cdclk_config->cdclk = cdclk_config->bypass = cdclk_config->ref;
 
 	if (cdclk_config->vco == 0)
 		goto out;
 
-	cdctl = intel_de_read(dev_priv, CDCLK_CTL);
+	cdctl = intel_de_read(display, CDCLK_CTL);
 
 	if (cdclk_config->vco == 8640000) {
 		switch (cdctl & CDCLK_FREQ_SEL_MASK) {
@@ -1027,19 +1037,19 @@ static int skl_cdclk_decimal(int cdclk)
 	return DIV_ROUND_CLOSEST(cdclk - 1000, 500);
 }
 
-static void skl_set_preferred_cdclk_vco(struct drm_i915_private *i915, int vco)
+static void skl_set_preferred_cdclk_vco(struct intel_display *display, int vco)
 {
-	bool changed = i915->display.cdclk.skl_preferred_vco_freq != vco;
+	bool changed = display->cdclk.skl_preferred_vco_freq != vco;
 
-	i915->display.cdclk.skl_preferred_vco_freq = vco;
+	display->cdclk.skl_preferred_vco_freq = vco;
 
 	if (changed)
-		intel_update_max_cdclk(i915);
+		intel_update_max_cdclk(display);
 }
 
-static u32 skl_dpll0_link_rate(struct drm_i915_private *dev_priv, int vco)
+static u32 skl_dpll0_link_rate(struct intel_display *display, int vco)
 {
-	drm_WARN_ON(&dev_priv->drm, vco != 8100000 && vco != 8640000);
+	drm_WARN_ON(display->drm, vco != 8100000 && vco != 8640000);
 
 	/*
 	 * We always enable DPLL0 with the lowest link rate possible, but still
@@ -1056,47 +1066,47 @@ static u32 skl_dpll0_link_rate(struct drm_i915_private *dev_priv, int vco)
 		return DPLL_CTRL1_LINK_RATE(DPLL_CTRL1_LINK_RATE_810, SKL_DPLL0);
 }
 
-static void skl_dpll0_enable(struct drm_i915_private *dev_priv, int vco)
+static void skl_dpll0_enable(struct intel_display *display, int vco)
 {
-	intel_de_rmw(dev_priv, DPLL_CTRL1,
+	intel_de_rmw(display, DPLL_CTRL1,
 		     DPLL_CTRL1_HDMI_MODE(SKL_DPLL0) |
 		     DPLL_CTRL1_SSC(SKL_DPLL0) |
 		     DPLL_CTRL1_LINK_RATE_MASK(SKL_DPLL0),
 		     DPLL_CTRL1_OVERRIDE(SKL_DPLL0) |
-		     skl_dpll0_link_rate(dev_priv, vco));
-	intel_de_posting_read(dev_priv, DPLL_CTRL1);
+		     skl_dpll0_link_rate(display, vco));
+	intel_de_posting_read(display, DPLL_CTRL1);
 
-	intel_de_rmw(dev_priv, LCPLL1_CTL,
+	intel_de_rmw(display, LCPLL1_CTL,
 		     0, LCPLL_PLL_ENABLE);
 
-	if (intel_de_wait_for_set(dev_priv, LCPLL1_CTL, LCPLL_PLL_LOCK, 5))
-		drm_err(&dev_priv->drm, "DPLL0 not locked\n");
+	if (intel_de_wait_for_set(display, LCPLL1_CTL, LCPLL_PLL_LOCK, 5))
+		drm_err(display->drm, "DPLL0 not locked\n");
 
-	dev_priv->display.cdclk.hw.vco = vco;
+	display->cdclk.hw.vco = vco;
 
 	/* We'll want to keep using the current vco from now on. */
-	skl_set_preferred_cdclk_vco(dev_priv, vco);
+	skl_set_preferred_cdclk_vco(display, vco);
 }
 
-static void skl_dpll0_disable(struct drm_i915_private *dev_priv)
+static void skl_dpll0_disable(struct intel_display *display)
 {
-	intel_de_rmw(dev_priv, LCPLL1_CTL,
+	intel_de_rmw(display, LCPLL1_CTL,
 		     LCPLL_PLL_ENABLE, 0);
 
-	if (intel_de_wait_for_clear(dev_priv, LCPLL1_CTL, LCPLL_PLL_LOCK, 1))
-		drm_err(&dev_priv->drm, "Couldn't disable DPLL0\n");
+	if (intel_de_wait_for_clear(display, LCPLL1_CTL, LCPLL_PLL_LOCK, 1))
+		drm_err(display->drm, "Couldn't disable DPLL0\n");
 
-	dev_priv->display.cdclk.hw.vco = 0;
+	display->cdclk.hw.vco = 0;
 }
 
-static u32 skl_cdclk_freq_sel(struct drm_i915_private *dev_priv,
+static u32 skl_cdclk_freq_sel(struct intel_display *display,
 			      int cdclk, int vco)
 {
 	switch (cdclk) {
 	default:
-		drm_WARN_ON(&dev_priv->drm,
-			    cdclk != dev_priv->display.cdclk.hw.bypass);
-		drm_WARN_ON(&dev_priv->drm, vco != 0);
+		drm_WARN_ON(display->drm,
+			    cdclk != display->cdclk.hw.bypass);
+		drm_WARN_ON(display->drm, vco != 0);
 		fallthrough;
 	case 308571:
 	case 337500:
@@ -1112,10 +1122,11 @@ static u32 skl_cdclk_freq_sel(struct drm_i915_private *dev_priv,
 	}
 }
 
-static void skl_set_cdclk(struct drm_i915_private *dev_priv,
+static void skl_set_cdclk(struct intel_display *display,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int cdclk = cdclk_config->cdclk;
 	int vco = cdclk_config->vco;
 	u32 freq_select, cdclk_ctl;
@@ -1129,7 +1140,7 @@ static void skl_set_cdclk(struct drm_i915_private *dev_priv,
 	 * use the corresponding VCO freq as that always leads to using the
 	 * minimum 308MHz CDCLK.
 	 */
-	drm_WARN_ON_ONCE(&dev_priv->drm,
+	drm_WARN_ON_ONCE(display->drm,
 			 IS_SKYLAKE(dev_priv) && vco == 8640000);
 
 	ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
@@ -1137,54 +1148,54 @@ static void skl_set_cdclk(struct drm_i915_private *dev_priv,
 				SKL_CDCLK_READY_FOR_CHANGE,
 				SKL_CDCLK_READY_FOR_CHANGE, 3);
 	if (ret) {
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"Failed to inform PCU about cdclk change (%d)\n", ret);
 		return;
 	}
 
-	freq_select = skl_cdclk_freq_sel(dev_priv, cdclk, vco);
+	freq_select = skl_cdclk_freq_sel(display, cdclk, vco);
 
-	if (dev_priv->display.cdclk.hw.vco != 0 &&
-	    dev_priv->display.cdclk.hw.vco != vco)
-		skl_dpll0_disable(dev_priv);
+	if (display->cdclk.hw.vco != 0 &&
+	    display->cdclk.hw.vco != vco)
+		skl_dpll0_disable(display);
 
-	cdclk_ctl = intel_de_read(dev_priv, CDCLK_CTL);
+	cdclk_ctl = intel_de_read(display, CDCLK_CTL);
 
-	if (dev_priv->display.cdclk.hw.vco != vco) {
+	if (display->cdclk.hw.vco != vco) {
 		/* Wa Display #1183: skl,kbl,cfl */
 		cdclk_ctl &= ~(CDCLK_FREQ_SEL_MASK | CDCLK_FREQ_DECIMAL_MASK);
 		cdclk_ctl |= freq_select | skl_cdclk_decimal(cdclk);
-		intel_de_write(dev_priv, CDCLK_CTL, cdclk_ctl);
+		intel_de_write(display, CDCLK_CTL, cdclk_ctl);
 	}
 
 	/* Wa Display #1183: skl,kbl,cfl */
 	cdclk_ctl |= CDCLK_DIVMUX_CD_OVERRIDE;
-	intel_de_write(dev_priv, CDCLK_CTL, cdclk_ctl);
-	intel_de_posting_read(dev_priv, CDCLK_CTL);
+	intel_de_write(display, CDCLK_CTL, cdclk_ctl);
+	intel_de_posting_read(display, CDCLK_CTL);
 
-	if (dev_priv->display.cdclk.hw.vco != vco)
-		skl_dpll0_enable(dev_priv, vco);
+	if (display->cdclk.hw.vco != vco)
+		skl_dpll0_enable(display, vco);
 
 	/* Wa Display #1183: skl,kbl,cfl */
 	cdclk_ctl &= ~(CDCLK_FREQ_SEL_MASK | CDCLK_FREQ_DECIMAL_MASK);
-	intel_de_write(dev_priv, CDCLK_CTL, cdclk_ctl);
+	intel_de_write(display, CDCLK_CTL, cdclk_ctl);
 
 	cdclk_ctl |= freq_select | skl_cdclk_decimal(cdclk);
-	intel_de_write(dev_priv, CDCLK_CTL, cdclk_ctl);
+	intel_de_write(display, CDCLK_CTL, cdclk_ctl);
 
 	/* Wa Display #1183: skl,kbl,cfl */
 	cdclk_ctl &= ~CDCLK_DIVMUX_CD_OVERRIDE;
-	intel_de_write(dev_priv, CDCLK_CTL, cdclk_ctl);
-	intel_de_posting_read(dev_priv, CDCLK_CTL);
+	intel_de_write(display, CDCLK_CTL, cdclk_ctl);
+	intel_de_posting_read(display, CDCLK_CTL);
 
 	/* inform PCU of the change */
 	snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
 			cdclk_config->voltage_level);
 
-	intel_update_cdclk(dev_priv);
+	intel_update_cdclk(display);
 }
 
-static void skl_sanitize_cdclk(struct drm_i915_private *dev_priv)
+static void skl_sanitize_cdclk(struct intel_display *display)
 {
 	u32 cdctl, expected;
 
@@ -1193,15 +1204,15 @@ static void skl_sanitize_cdclk(struct drm_i915_private *dev_priv)
 	 * There is SWF18 scratchpad register defined which is set by the
 	 * pre-os which can be used by the OS drivers to check the status
 	 */
-	if ((intel_de_read(dev_priv, SWF_ILK(0x18)) & 0x00FFFFFF) == 0)
+	if ((intel_de_read(display, SWF_ILK(0x18)) & 0x00FFFFFF) == 0)
 		goto sanitize;
 
-	intel_update_cdclk(dev_priv);
-	intel_cdclk_dump_config(dev_priv, &dev_priv->display.cdclk.hw, "Current CDCLK");
+	intel_update_cdclk(display);
+	intel_cdclk_dump_config(display, &display->cdclk.hw, "Current CDCLK");
 
 	/* Is PLL enabled and locked ? */
-	if (dev_priv->display.cdclk.hw.vco == 0 ||
-	    dev_priv->display.cdclk.hw.cdclk == dev_priv->display.cdclk.hw.bypass)
+	if (display->cdclk.hw.vco == 0 ||
+	    display->cdclk.hw.cdclk == display->cdclk.hw.bypass)
 		goto sanitize;
 
 	/* DPLL okay; verify the cdclock
@@ -1210,60 +1221,60 @@ static void skl_sanitize_cdclk(struct drm_i915_private *dev_priv)
 	 * decimal part is programmed wrong from BIOS where pre-os does not
 	 * enable display. Verify the same as well.
 	 */
-	cdctl = intel_de_read(dev_priv, CDCLK_CTL);
+	cdctl = intel_de_read(display, CDCLK_CTL);
 	expected = (cdctl & CDCLK_FREQ_SEL_MASK) |
-		skl_cdclk_decimal(dev_priv->display.cdclk.hw.cdclk);
+		skl_cdclk_decimal(display->cdclk.hw.cdclk);
 	if (cdctl == expected)
 		/* All well; nothing to sanitize */
 		return;
 
 sanitize:
-	drm_dbg_kms(&dev_priv->drm, "Sanitizing cdclk programmed by pre-os\n");
+	drm_dbg_kms(display->drm, "Sanitizing cdclk programmed by pre-os\n");
 
 	/* force cdclk programming */
-	dev_priv->display.cdclk.hw.cdclk = 0;
+	display->cdclk.hw.cdclk = 0;
 	/* force full PLL disable + enable */
-	dev_priv->display.cdclk.hw.vco = ~0;
+	display->cdclk.hw.vco = ~0;
 }
 
-static void skl_cdclk_init_hw(struct drm_i915_private *dev_priv)
+static void skl_cdclk_init_hw(struct intel_display *display)
 {
 	struct intel_cdclk_config cdclk_config;
 
-	skl_sanitize_cdclk(dev_priv);
+	skl_sanitize_cdclk(display);
 
-	if (dev_priv->display.cdclk.hw.cdclk != 0 &&
-	    dev_priv->display.cdclk.hw.vco != 0) {
+	if (display->cdclk.hw.cdclk != 0 &&
+	    display->cdclk.hw.vco != 0) {
 		/*
 		 * Use the current vco as our initial
 		 * guess as to what the preferred vco is.
 		 */
-		if (dev_priv->display.cdclk.skl_preferred_vco_freq == 0)
-			skl_set_preferred_cdclk_vco(dev_priv,
-						    dev_priv->display.cdclk.hw.vco);
+		if (display->cdclk.skl_preferred_vco_freq == 0)
+			skl_set_preferred_cdclk_vco(display,
+						    display->cdclk.hw.vco);
 		return;
 	}
 
-	cdclk_config = dev_priv->display.cdclk.hw;
+	cdclk_config = display->cdclk.hw;
 
-	cdclk_config.vco = dev_priv->display.cdclk.skl_preferred_vco_freq;
+	cdclk_config.vco = display->cdclk.skl_preferred_vco_freq;
 	if (cdclk_config.vco == 0)
 		cdclk_config.vco = 8100000;
 	cdclk_config.cdclk = skl_calc_cdclk(0, cdclk_config.vco);
 	cdclk_config.voltage_level = skl_calc_voltage_level(cdclk_config.cdclk);
 
-	skl_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
+	skl_set_cdclk(display, &cdclk_config, INVALID_PIPE);
 }
 
-static void skl_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
+static void skl_cdclk_uninit_hw(struct intel_display *display)
 {
-	struct intel_cdclk_config cdclk_config = dev_priv->display.cdclk.hw;
+	struct intel_cdclk_config cdclk_config = display->cdclk.hw;
 
 	cdclk_config.cdclk = cdclk_config.bypass;
 	cdclk_config.vco = 0;
 	cdclk_config.voltage_level = skl_calc_voltage_level(cdclk_config.cdclk);
 
-	skl_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
+	skl_set_cdclk(display, &cdclk_config, INVALID_PIPE);
 }
 
 struct intel_cdclk_vals {
@@ -1471,37 +1482,37 @@ static int cdclk_divider(int cdclk, int vco, u16 waveform)
 				 cdclk * cdclk_squash_len);
 }
 
-static int bxt_calc_cdclk(struct drm_i915_private *dev_priv, int min_cdclk)
+static int bxt_calc_cdclk(struct intel_display *display, int min_cdclk)
 {
-	const struct intel_cdclk_vals *table = dev_priv->display.cdclk.table;
+	const struct intel_cdclk_vals *table = display->cdclk.table;
 	int i;
 
 	for (i = 0; table[i].refclk; i++)
-		if (table[i].refclk == dev_priv->display.cdclk.hw.ref &&
+		if (table[i].refclk == display->cdclk.hw.ref &&
 		    table[i].cdclk >= min_cdclk)
 			return table[i].cdclk;
 
-	drm_WARN(&dev_priv->drm, 1,
+	drm_WARN(display->drm, 1,
 		 "Cannot satisfy minimum cdclk %d with refclk %u\n",
-		 min_cdclk, dev_priv->display.cdclk.hw.ref);
+		 min_cdclk, display->cdclk.hw.ref);
 	return 0;
 }
 
-static int bxt_calc_cdclk_pll_vco(struct drm_i915_private *dev_priv, int cdclk)
+static int bxt_calc_cdclk_pll_vco(struct intel_display *display, int cdclk)
 {
-	const struct intel_cdclk_vals *table = dev_priv->display.cdclk.table;
+	const struct intel_cdclk_vals *table = display->cdclk.table;
 	int i;
 
-	if (cdclk == dev_priv->display.cdclk.hw.bypass)
+	if (cdclk == display->cdclk.hw.bypass)
 		return 0;
 
 	for (i = 0; table[i].refclk; i++)
-		if (table[i].refclk == dev_priv->display.cdclk.hw.ref &&
+		if (table[i].refclk == display->cdclk.hw.ref &&
 		    table[i].cdclk == cdclk)
-			return dev_priv->display.cdclk.hw.ref * table[i].ratio;
+			return display->cdclk.hw.ref * table[i].ratio;
 
-	drm_WARN(&dev_priv->drm, 1, "cdclk %d not valid for refclk %u\n",
-		 cdclk, dev_priv->display.cdclk.hw.ref);
+	drm_WARN(display->drm, 1, "cdclk %d not valid for refclk %u\n",
+		 cdclk, display->cdclk.hw.ref);
 	return 0;
 }
 
@@ -1583,10 +1594,10 @@ static u8 rplu_calc_voltage_level(int cdclk)
 				  rplu_voltage_level_max_cdclk);
 }
 
-static void icl_readout_refclk(struct drm_i915_private *dev_priv,
+static void icl_readout_refclk(struct intel_display *display,
 			       struct intel_cdclk_config *cdclk_config)
 {
-	u32 dssm = intel_de_read(dev_priv, SKL_DSSM) & ICL_DSSM_CDCLK_PLL_REFCLK_MASK;
+	u32 dssm = intel_de_read(display, SKL_DSSM) & ICL_DSSM_CDCLK_PLL_REFCLK_MASK;
 
 	switch (dssm) {
 	default:
@@ -1604,19 +1615,20 @@ static void icl_readout_refclk(struct drm_i915_private *dev_priv,
 	}
 }
 
-static void bxt_de_pll_readout(struct drm_i915_private *dev_priv,
+static void bxt_de_pll_readout(struct intel_display *display,
 			       struct intel_cdclk_config *cdclk_config)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 val, ratio;
 
 	if (IS_DG2(dev_priv))
 		cdclk_config->ref = 38400;
-	else if (DISPLAY_VER(dev_priv) >= 11)
-		icl_readout_refclk(dev_priv, cdclk_config);
+	else if (DISPLAY_VER(display) >= 11)
+		icl_readout_refclk(display, cdclk_config);
 	else
 		cdclk_config->ref = 19200;
 
-	val = intel_de_read(dev_priv, BXT_DE_PLL_ENABLE);
+	val = intel_de_read(display, BXT_DE_PLL_ENABLE);
 	if ((val & BXT_DE_PLL_PLL_ENABLE) == 0 ||
 	    (val & BXT_DE_PLL_LOCK) == 0) {
 		/*
@@ -1631,26 +1643,26 @@ static void bxt_de_pll_readout(struct drm_i915_private *dev_priv,
 	 * DISPLAY_VER >= 11 have the ratio directly in the PLL enable register,
 	 * gen9lp had it in a separate PLL control register.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 11)
+	if (DISPLAY_VER(display) >= 11)
 		ratio = val & ICL_CDCLK_PLL_RATIO_MASK;
 	else
-		ratio = intel_de_read(dev_priv, BXT_DE_PLL_CTL) & BXT_DE_PLL_RATIO_MASK;
+		ratio = intel_de_read(display, BXT_DE_PLL_CTL) & BXT_DE_PLL_RATIO_MASK;
 
 	cdclk_config->vco = ratio * cdclk_config->ref;
 }
 
-static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
+static void bxt_get_cdclk(struct intel_display *display,
 			  struct intel_cdclk_config *cdclk_config)
 {
 	u32 squash_ctl = 0;
 	u32 divider;
 	int div;
 
-	bxt_de_pll_readout(dev_priv, cdclk_config);
+	bxt_de_pll_readout(display, cdclk_config);
 
-	if (DISPLAY_VER(dev_priv) >= 12)
+	if (DISPLAY_VER(display) >= 12)
 		cdclk_config->bypass = cdclk_config->ref / 2;
-	else if (DISPLAY_VER(dev_priv) >= 11)
+	else if (DISPLAY_VER(display) >= 11)
 		cdclk_config->bypass = 50000;
 	else
 		cdclk_config->bypass = cdclk_config->ref;
@@ -1660,7 +1672,7 @@ static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
 		goto out;
 	}
 
-	divider = intel_de_read(dev_priv, CDCLK_CTL) & BXT_CDCLK_CD2X_DIV_SEL_MASK;
+	divider = intel_de_read(display, CDCLK_CTL) & BXT_CDCLK_CD2X_DIV_SEL_MASK;
 
 	switch (divider) {
 	case BXT_CDCLK_CD2X_DIV_SEL_1:
@@ -1680,8 +1692,8 @@ static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	if (HAS_CDCLK_SQUASH(dev_priv))
-		squash_ctl = intel_de_read(dev_priv, CDCLK_SQUASH_CTL);
+	if (HAS_CDCLK_SQUASH(display))
+		squash_ctl = intel_de_read(display, CDCLK_SQUASH_CTL);
 
 	if (squash_ctl & CDCLK_SQUASH_ENABLE) {
 		u16 waveform;
@@ -1697,107 +1709,107 @@ static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
 	}
 
  out:
-	if (DISPLAY_VER(dev_priv) >= 20)
-		cdclk_config->joined_mbus = intel_de_read(dev_priv, MBUS_CTL) & MBUS_JOIN;
+	if (DISPLAY_VER(display) >= 20)
+		cdclk_config->joined_mbus = intel_de_read(display, MBUS_CTL) & MBUS_JOIN;
 	/*
 	 * Can't read this out :( Let's assume it's
 	 * at least what the CDCLK frequency requires.
 	 */
 	cdclk_config->voltage_level =
-		intel_cdclk_calc_voltage_level(dev_priv, cdclk_config->cdclk);
+		intel_cdclk_calc_voltage_level(display, cdclk_config->cdclk);
 }
 
-static void bxt_de_pll_disable(struct drm_i915_private *dev_priv)
+static void bxt_de_pll_disable(struct intel_display *display)
 {
-	intel_de_write(dev_priv, BXT_DE_PLL_ENABLE, 0);
+	intel_de_write(display, BXT_DE_PLL_ENABLE, 0);
 
 	/* Timeout 200us */
-	if (intel_de_wait_for_clear(dev_priv,
+	if (intel_de_wait_for_clear(display,
 				    BXT_DE_PLL_ENABLE, BXT_DE_PLL_LOCK, 1))
-		drm_err(&dev_priv->drm, "timeout waiting for DE PLL unlock\n");
+		drm_err(display->drm, "timeout waiting for DE PLL unlock\n");
 
-	dev_priv->display.cdclk.hw.vco = 0;
+	display->cdclk.hw.vco = 0;
 }
 
-static void bxt_de_pll_enable(struct drm_i915_private *dev_priv, int vco)
+static void bxt_de_pll_enable(struct intel_display *display, int vco)
 {
-	int ratio = DIV_ROUND_CLOSEST(vco, dev_priv->display.cdclk.hw.ref);
+	int ratio = DIV_ROUND_CLOSEST(vco, display->cdclk.hw.ref);
 
-	intel_de_rmw(dev_priv, BXT_DE_PLL_CTL,
+	intel_de_rmw(display, BXT_DE_PLL_CTL,
 		     BXT_DE_PLL_RATIO_MASK, BXT_DE_PLL_RATIO(ratio));
 
-	intel_de_write(dev_priv, BXT_DE_PLL_ENABLE, BXT_DE_PLL_PLL_ENABLE);
+	intel_de_write(display, BXT_DE_PLL_ENABLE, BXT_DE_PLL_PLL_ENABLE);
 
 	/* Timeout 200us */
-	if (intel_de_wait_for_set(dev_priv,
+	if (intel_de_wait_for_set(display,
 				  BXT_DE_PLL_ENABLE, BXT_DE_PLL_LOCK, 1))
-		drm_err(&dev_priv->drm, "timeout waiting for DE PLL lock\n");
+		drm_err(display->drm, "timeout waiting for DE PLL lock\n");
 
-	dev_priv->display.cdclk.hw.vco = vco;
+	display->cdclk.hw.vco = vco;
 }
 
-static void icl_cdclk_pll_disable(struct drm_i915_private *dev_priv)
+static void icl_cdclk_pll_disable(struct intel_display *display)
 {
-	intel_de_rmw(dev_priv, BXT_DE_PLL_ENABLE,
+	intel_de_rmw(display, BXT_DE_PLL_ENABLE,
 		     BXT_DE_PLL_PLL_ENABLE, 0);
 
 	/* Timeout 200us */
-	if (intel_de_wait_for_clear(dev_priv, BXT_DE_PLL_ENABLE, BXT_DE_PLL_LOCK, 1))
-		drm_err(&dev_priv->drm, "timeout waiting for CDCLK PLL unlock\n");
+	if (intel_de_wait_for_clear(display, BXT_DE_PLL_ENABLE, BXT_DE_PLL_LOCK, 1))
+		drm_err(display->drm, "timeout waiting for CDCLK PLL unlock\n");
 
-	dev_priv->display.cdclk.hw.vco = 0;
+	display->cdclk.hw.vco = 0;
 }
 
-static void icl_cdclk_pll_enable(struct drm_i915_private *dev_priv, int vco)
+static void icl_cdclk_pll_enable(struct intel_display *display, int vco)
 {
-	int ratio = DIV_ROUND_CLOSEST(vco, dev_priv->display.cdclk.hw.ref);
+	int ratio = DIV_ROUND_CLOSEST(vco, display->cdclk.hw.ref);
 	u32 val;
 
 	val = ICL_CDCLK_PLL_RATIO(ratio);
-	intel_de_write(dev_priv, BXT_DE_PLL_ENABLE, val);
+	intel_de_write(display, BXT_DE_PLL_ENABLE, val);
 
 	val |= BXT_DE_PLL_PLL_ENABLE;
-	intel_de_write(dev_priv, BXT_DE_PLL_ENABLE, val);
+	intel_de_write(display, BXT_DE_PLL_ENABLE, val);
 
 	/* Timeout 200us */
-	if (intel_de_wait_for_set(dev_priv, BXT_DE_PLL_ENABLE, BXT_DE_PLL_LOCK, 1))
-		drm_err(&dev_priv->drm, "timeout waiting for CDCLK PLL lock\n");
+	if (intel_de_wait_for_set(display, BXT_DE_PLL_ENABLE, BXT_DE_PLL_LOCK, 1))
+		drm_err(display->drm, "timeout waiting for CDCLK PLL lock\n");
 
-	dev_priv->display.cdclk.hw.vco = vco;
+	display->cdclk.hw.vco = vco;
 }
 
-static void adlp_cdclk_pll_crawl(struct drm_i915_private *dev_priv, int vco)
+static void adlp_cdclk_pll_crawl(struct intel_display *display, int vco)
 {
-	int ratio = DIV_ROUND_CLOSEST(vco, dev_priv->display.cdclk.hw.ref);
+	int ratio = DIV_ROUND_CLOSEST(vco, display->cdclk.hw.ref);
 	u32 val;
 
 	/* Write PLL ratio without disabling */
 	val = ICL_CDCLK_PLL_RATIO(ratio) | BXT_DE_PLL_PLL_ENABLE;
-	intel_de_write(dev_priv, BXT_DE_PLL_ENABLE, val);
+	intel_de_write(display, BXT_DE_PLL_ENABLE, val);
 
 	/* Submit freq change request */
 	val |= BXT_DE_PLL_FREQ_REQ;
-	intel_de_write(dev_priv, BXT_DE_PLL_ENABLE, val);
+	intel_de_write(display, BXT_DE_PLL_ENABLE, val);
 
 	/* Timeout 200us */
-	if (intel_de_wait_for_set(dev_priv, BXT_DE_PLL_ENABLE,
+	if (intel_de_wait_for_set(display, BXT_DE_PLL_ENABLE,
 				  BXT_DE_PLL_LOCK | BXT_DE_PLL_FREQ_REQ_ACK, 1))
-		drm_err(&dev_priv->drm, "timeout waiting for FREQ change request ack\n");
+		drm_err(display->drm, "timeout waiting for FREQ change request ack\n");
 
 	val &= ~BXT_DE_PLL_FREQ_REQ;
-	intel_de_write(dev_priv, BXT_DE_PLL_ENABLE, val);
+	intel_de_write(display, BXT_DE_PLL_ENABLE, val);
 
-	dev_priv->display.cdclk.hw.vco = vco;
+	display->cdclk.hw.vco = vco;
 }
 
-static u32 bxt_cdclk_cd2x_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
+static u32 bxt_cdclk_cd2x_pipe(struct intel_display *display, enum pipe pipe)
 {
-	if (DISPLAY_VER(dev_priv) >= 12) {
+	if (DISPLAY_VER(display) >= 12) {
 		if (pipe == INVALID_PIPE)
 			return TGL_CDCLK_CD2X_PIPE_NONE;
 		else
 			return TGL_CDCLK_CD2X_PIPE(pipe);
-	} else if (DISPLAY_VER(dev_priv) >= 11) {
+	} else if (DISPLAY_VER(display) >= 11) {
 		if (pipe == INVALID_PIPE)
 			return ICL_CDCLK_CD2X_PIPE_NONE;
 		else
@@ -1810,15 +1822,15 @@ static u32 bxt_cdclk_cd2x_pipe(struct drm_i915_private *dev_priv, enum pipe pipe
 	}
 }
 
-static u32 bxt_cdclk_cd2x_div_sel(struct drm_i915_private *dev_priv,
+static u32 bxt_cdclk_cd2x_div_sel(struct intel_display *display,
 				  int cdclk, int vco, u16 waveform)
 {
 	/* cdclk = vco / 2 / div{1,1.5,2,4} */
 	switch (cdclk_divider(cdclk, vco, waveform)) {
 	default:
-		drm_WARN_ON(&dev_priv->drm,
-			    cdclk != dev_priv->display.cdclk.hw.bypass);
-		drm_WARN_ON(&dev_priv->drm, vco != 0);
+		drm_WARN_ON(display->drm,
+			    cdclk != display->cdclk.hw.bypass);
+		drm_WARN_ON(display->drm, vco != 0);
 		fallthrough;
 	case 2:
 		return BXT_CDCLK_CD2X_DIV_SEL_1;
@@ -1831,47 +1843,47 @@ static u32 bxt_cdclk_cd2x_div_sel(struct drm_i915_private *dev_priv,
 	}
 }
 
-static u16 cdclk_squash_waveform(struct drm_i915_private *dev_priv,
+static u16 cdclk_squash_waveform(struct intel_display *display,
 				 int cdclk)
 {
-	const struct intel_cdclk_vals *table = dev_priv->display.cdclk.table;
+	const struct intel_cdclk_vals *table = display->cdclk.table;
 	int i;
 
-	if (cdclk == dev_priv->display.cdclk.hw.bypass)
+	if (cdclk == display->cdclk.hw.bypass)
 		return 0;
 
 	for (i = 0; table[i].refclk; i++)
-		if (table[i].refclk == dev_priv->display.cdclk.hw.ref &&
+		if (table[i].refclk == display->cdclk.hw.ref &&
 		    table[i].cdclk == cdclk)
 			return table[i].waveform;
 
-	drm_WARN(&dev_priv->drm, 1, "cdclk %d not valid for refclk %u\n",
-		 cdclk, dev_priv->display.cdclk.hw.ref);
+	drm_WARN(display->drm, 1, "cdclk %d not valid for refclk %u\n",
+		 cdclk, display->cdclk.hw.ref);
 
 	return 0xffff;
 }
 
-static void icl_cdclk_pll_update(struct drm_i915_private *i915, int vco)
+static void icl_cdclk_pll_update(struct intel_display *display, int vco)
 {
-	if (i915->display.cdclk.hw.vco != 0 &&
-	    i915->display.cdclk.hw.vco != vco)
-		icl_cdclk_pll_disable(i915);
+	if (display->cdclk.hw.vco != 0 &&
+	    display->cdclk.hw.vco != vco)
+		icl_cdclk_pll_disable(display);
 
-	if (i915->display.cdclk.hw.vco != vco)
-		icl_cdclk_pll_enable(i915, vco);
+	if (display->cdclk.hw.vco != vco)
+		icl_cdclk_pll_enable(display, vco);
 }
 
-static void bxt_cdclk_pll_update(struct drm_i915_private *i915, int vco)
+static void bxt_cdclk_pll_update(struct intel_display *display, int vco)
 {
-	if (i915->display.cdclk.hw.vco != 0 &&
-	    i915->display.cdclk.hw.vco != vco)
-		bxt_de_pll_disable(i915);
+	if (display->cdclk.hw.vco != 0 &&
+	    display->cdclk.hw.vco != vco)
+		bxt_de_pll_disable(display);
 
-	if (i915->display.cdclk.hw.vco != vco)
-		bxt_de_pll_enable(i915, vco);
+	if (display->cdclk.hw.vco != vco)
+		bxt_de_pll_enable(display, vco);
 }
 
-static void dg2_cdclk_squash_program(struct drm_i915_private *i915,
+static void dg2_cdclk_squash_program(struct intel_display *display,
 				     u16 waveform)
 {
 	u32 squash_ctl = 0;
@@ -1880,7 +1892,7 @@ static void dg2_cdclk_squash_program(struct drm_i915_private *i915,
 		squash_ctl = CDCLK_SQUASH_ENABLE |
 			     CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
 
-	intel_de_write(i915, CDCLK_SQUASH_CTL, squash_ctl);
+	intel_de_write(display, CDCLK_SQUASH_CTL, squash_ctl);
 }
 
 static bool cdclk_pll_is_unknown(unsigned int vco)
@@ -1893,38 +1905,40 @@ static bool cdclk_pll_is_unknown(unsigned int vco)
 	return vco == ~0;
 }
 
-static bool mdclk_source_is_cdclk_pll(struct drm_i915_private *i915)
+static bool mdclk_source_is_cdclk_pll(struct intel_display *display)
 {
-	return DISPLAY_VER(i915) >= 20;
+	return DISPLAY_VER(display) >= 20;
 }
 
-static u32 xe2lpd_mdclk_source_sel(struct drm_i915_private *i915)
+static u32 xe2lpd_mdclk_source_sel(struct intel_display *display)
 {
-	if (mdclk_source_is_cdclk_pll(i915))
+	if (mdclk_source_is_cdclk_pll(display))
 		return MDCLK_SOURCE_SEL_CDCLK_PLL;
 
 	return MDCLK_SOURCE_SEL_CD2XCLK;
 }
 
-int intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
+int intel_mdclk_cdclk_ratio(struct intel_display *display,
 			    const struct intel_cdclk_config *cdclk_config)
 {
-	if (mdclk_source_is_cdclk_pll(i915))
+	if (mdclk_source_is_cdclk_pll(display))
 		return DIV_ROUND_UP(cdclk_config->vco, cdclk_config->cdclk);
 
 	/* Otherwise, source for MDCLK is CD2XCLK. */
 	return 2;
 }
 
-static void xe2lpd_mdclk_cdclk_ratio_program(struct drm_i915_private *i915,
+static void xe2lpd_mdclk_cdclk_ratio_program(struct intel_display *display,
 					     const struct intel_cdclk_config *cdclk_config)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	intel_dbuf_mdclk_cdclk_ratio_update(i915,
-					    intel_mdclk_cdclk_ratio(i915, cdclk_config),
+					    intel_mdclk_cdclk_ratio(display, cdclk_config),
 					    cdclk_config->joined_mbus);
 }
 
-static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i915,
+static bool cdclk_compute_crawl_and_squash_midpoint(struct intel_display *display,
 						    const struct intel_cdclk_config *old_cdclk_config,
 						    const struct intel_cdclk_config *new_cdclk_config,
 						    struct intel_cdclk_config *mid_cdclk_config)
@@ -1937,11 +1951,11 @@ static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i91
 		return false;
 
 	/* Return if both Squash and Crawl are not present */
-	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
+	if (!HAS_CDCLK_CRAWL(display) || !HAS_CDCLK_SQUASH(display))
 		return false;
 
-	old_waveform = cdclk_squash_waveform(i915, old_cdclk_config->cdclk);
-	new_waveform = cdclk_squash_waveform(i915, new_cdclk_config->cdclk);
+	old_waveform = cdclk_squash_waveform(display, old_cdclk_config->cdclk);
+	new_waveform = cdclk_squash_waveform(display, new_cdclk_config->cdclk);
 
 	/* Return if Squash only or Crawl only is the desired action */
 	if (old_cdclk_config->vco == 0 || new_cdclk_config->vco == 0 ||
@@ -1958,7 +1972,7 @@ static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i91
 	 * Should not happen currently. We might need more midpoint
 	 * transitions if we need to also change the cd2x divider.
 	 */
-	if (drm_WARN_ON(&i915->drm, old_div != new_div))
+	if (drm_WARN_ON(display->drm, old_div != new_div))
 		return false;
 
 	*mid_cdclk_config = *new_cdclk_config;
@@ -1987,37 +2001,40 @@ static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i91
 
 	/* make sure the mid clock came out sane */
 
-	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk <
+	drm_WARN_ON(display->drm, mid_cdclk_config->cdclk <
 		    min(old_cdclk_config->cdclk, new_cdclk_config->cdclk));
-	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk >
-		    i915->display.cdclk.max_cdclk_freq);
-	drm_WARN_ON(&i915->drm, cdclk_squash_waveform(i915, mid_cdclk_config->cdclk) !=
+	drm_WARN_ON(display->drm, mid_cdclk_config->cdclk >
+		    display->cdclk.max_cdclk_freq);
+	drm_WARN_ON(display->drm, cdclk_squash_waveform(display, mid_cdclk_config->cdclk) !=
 		    mid_waveform);
 
 	return true;
 }
 
-static bool pll_enable_wa_needed(struct drm_i915_private *dev_priv)
+static bool pll_enable_wa_needed(struct intel_display *display)
 {
-	return (DISPLAY_VER_FULL(dev_priv) == IP_VER(20, 0) ||
-		DISPLAY_VER_FULL(dev_priv) == IP_VER(14, 0) ||
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
+	return (DISPLAY_VER_FULL(display) == IP_VER(20, 0) ||
+		DISPLAY_VER_FULL(display) == IP_VER(14, 0) ||
 		IS_DG2(dev_priv)) &&
-		dev_priv->display.cdclk.hw.vco > 0;
+		display->cdclk.hw.vco > 0;
 }
 
-static u32 bxt_cdclk_ctl(struct drm_i915_private *i915,
+static u32 bxt_cdclk_ctl(struct intel_display *display,
 			 const struct intel_cdclk_config *cdclk_config,
 			 enum pipe pipe)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	int cdclk = cdclk_config->cdclk;
 	int vco = cdclk_config->vco;
 	u16 waveform;
 	u32 val;
 
-	waveform = cdclk_squash_waveform(i915, cdclk);
+	waveform = cdclk_squash_waveform(display, cdclk);
 
-	val = bxt_cdclk_cd2x_div_sel(i915, cdclk, vco, waveform) |
-		bxt_cdclk_cd2x_pipe(i915, pipe);
+	val = bxt_cdclk_cd2x_div_sel(display, cdclk, vco, waveform) |
+		bxt_cdclk_cd2x_pipe(display, pipe);
 
 	/*
 	 * Disable SSA Precharge when CD clock frequency < 500 MHz,
@@ -2027,52 +2044,52 @@ static u32 bxt_cdclk_ctl(struct drm_i915_private *i915,
 	    cdclk >= 500000)
 		val |= BXT_CDCLK_SSA_PRECHARGE_ENABLE;
 
-	if (DISPLAY_VER(i915) >= 20)
-		val |= xe2lpd_mdclk_source_sel(i915);
+	if (DISPLAY_VER(display) >= 20)
+		val |= xe2lpd_mdclk_source_sel(display);
 	else
 		val |= skl_cdclk_decimal(cdclk);
 
 	return val;
 }
 
-static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
+static void _bxt_set_cdclk(struct intel_display *display,
 			   const struct intel_cdclk_config *cdclk_config,
 			   enum pipe pipe)
 {
-	struct intel_display *display = &dev_priv->display;
 	int cdclk = cdclk_config->cdclk;
 	int vco = cdclk_config->vco;
 
-	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && vco > 0 &&
-	    !cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco)) {
-		if (dev_priv->display.cdclk.hw.vco != vco)
-			adlp_cdclk_pll_crawl(dev_priv, vco);
-	} else if (DISPLAY_VER(dev_priv) >= 11) {
+	if (HAS_CDCLK_CRAWL(display) && display->cdclk.hw.vco > 0 && vco > 0 &&
+	    !cdclk_pll_is_unknown(display->cdclk.hw.vco)) {
+		if (display->cdclk.hw.vco != vco)
+			adlp_cdclk_pll_crawl(display, vco);
+	} else if (DISPLAY_VER(display) >= 11) {
 		/* wa_15010685871: dg2, mtl */
-		if (pll_enable_wa_needed(dev_priv))
-			dg2_cdclk_squash_program(dev_priv, 0);
+		if (pll_enable_wa_needed(display))
+			dg2_cdclk_squash_program(display, 0);
 
-		icl_cdclk_pll_update(dev_priv, vco);
+		icl_cdclk_pll_update(display, vco);
 	} else {
-		bxt_cdclk_pll_update(dev_priv, vco);
+		bxt_cdclk_pll_update(display, vco);
 	}
 
-	if (HAS_CDCLK_SQUASH(dev_priv)) {
-		u16 waveform = cdclk_squash_waveform(dev_priv, cdclk);
+	if (HAS_CDCLK_SQUASH(display)) {
+		u16 waveform = cdclk_squash_waveform(display, cdclk);
 
-		dg2_cdclk_squash_program(dev_priv, waveform);
+		dg2_cdclk_squash_program(display, waveform);
 	}
 
-	intel_de_write(dev_priv, CDCLK_CTL, bxt_cdclk_ctl(dev_priv, cdclk_config, pipe));
+	intel_de_write(display, CDCLK_CTL, bxt_cdclk_ctl(display, cdclk_config, pipe));
 
 	if (pipe != INVALID_PIPE)
 		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(display, pipe));
 }
 
-static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
+static void bxt_set_cdclk(struct intel_display *display,
 			  const struct intel_cdclk_config *cdclk_config,
 			  enum pipe pipe)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_cdclk_config mid_cdclk_config;
 	int cdclk = cdclk_config->cdclk;
 	int ret = 0;
@@ -2083,9 +2100,9 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 	 * mailbox communication, skip
 	 * this step.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 14 || IS_DG2(dev_priv))
+	if (DISPLAY_VER(display) >= 14 || IS_DG2(dev_priv))
 		/* NOOP */;
-	else if (DISPLAY_VER(dev_priv) >= 11)
+	else if (DISPLAY_VER(display) >= 11)
 		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
 					SKL_CDCLK_PREPARE_FOR_CHANGE,
 					SKL_CDCLK_READY_FOR_CHANGE,
@@ -2100,35 +2117,35 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 					      0x80000000, 150, 2);
 
 	if (ret) {
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"Failed to inform PCU about cdclk change (err %d, freq %d)\n",
 			ret, cdclk);
 		return;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 20 && cdclk < dev_priv->display.cdclk.hw.cdclk)
-		xe2lpd_mdclk_cdclk_ratio_program(dev_priv, cdclk_config);
+	if (DISPLAY_VER(display) >= 20 && cdclk < display->cdclk.hw.cdclk)
+		xe2lpd_mdclk_cdclk_ratio_program(display, cdclk_config);
 
-	if (cdclk_compute_crawl_and_squash_midpoint(dev_priv, &dev_priv->display.cdclk.hw,
+	if (cdclk_compute_crawl_and_squash_midpoint(display, &display->cdclk.hw,
 						    cdclk_config, &mid_cdclk_config)) {
-		_bxt_set_cdclk(dev_priv, &mid_cdclk_config, pipe);
-		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
+		_bxt_set_cdclk(display, &mid_cdclk_config, pipe);
+		_bxt_set_cdclk(display, cdclk_config, pipe);
 	} else {
-		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
+		_bxt_set_cdclk(display, cdclk_config, pipe);
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 20 && cdclk > dev_priv->display.cdclk.hw.cdclk)
-		xe2lpd_mdclk_cdclk_ratio_program(dev_priv, cdclk_config);
+	if (DISPLAY_VER(display) >= 20 && cdclk > display->cdclk.hw.cdclk)
+		xe2lpd_mdclk_cdclk_ratio_program(display, cdclk_config);
 
-	if (DISPLAY_VER(dev_priv) >= 14)
+	if (DISPLAY_VER(display) >= 14)
 		/*
 		 * NOOP - No Pcode communication needed for
 		 * Display versions 14 and beyond
 		 */;
-	else if (DISPLAY_VER(dev_priv) >= 11 && !IS_DG2(dev_priv))
+	else if (DISPLAY_VER(display) >= 11 && !IS_DG2(dev_priv))
 		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
 				      cdclk_config->voltage_level);
-	if (DISPLAY_VER(dev_priv) < 11) {
+	if (DISPLAY_VER(display) < 11) {
 		/*
 		 * The timeout isn't specified, the 2ms used here is based on
 		 * experiment.
@@ -2141,42 +2158,42 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 					      150, 2);
 	}
 	if (ret) {
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"PCode CDCLK freq set failed, (err %d, freq %d)\n",
 			ret, cdclk);
 		return;
 	}
 
-	intel_update_cdclk(dev_priv);
+	intel_update_cdclk(display);
 
-	if (DISPLAY_VER(dev_priv) >= 11)
+	if (DISPLAY_VER(display) >= 11)
 		/*
 		 * Can't read out the voltage level :(
 		 * Let's just assume everything is as expected.
 		 */
-		dev_priv->display.cdclk.hw.voltage_level = cdclk_config->voltage_level;
+		display->cdclk.hw.voltage_level = cdclk_config->voltage_level;
 }
 
-static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
+static void bxt_sanitize_cdclk(struct intel_display *display)
 {
 	u32 cdctl, expected;
 	int cdclk, vco;
 
-	intel_update_cdclk(dev_priv);
-	intel_cdclk_dump_config(dev_priv, &dev_priv->display.cdclk.hw, "Current CDCLK");
+	intel_update_cdclk(display);
+	intel_cdclk_dump_config(display, &display->cdclk.hw, "Current CDCLK");
 
-	if (dev_priv->display.cdclk.hw.vco == 0 ||
-	    dev_priv->display.cdclk.hw.cdclk == dev_priv->display.cdclk.hw.bypass)
+	if (display->cdclk.hw.vco == 0 ||
+	    display->cdclk.hw.cdclk == display->cdclk.hw.bypass)
 		goto sanitize;
 
 	/* Make sure this is a legal cdclk value for the platform */
-	cdclk = bxt_calc_cdclk(dev_priv, dev_priv->display.cdclk.hw.cdclk);
-	if (cdclk != dev_priv->display.cdclk.hw.cdclk)
+	cdclk = bxt_calc_cdclk(display, display->cdclk.hw.cdclk);
+	if (cdclk != display->cdclk.hw.cdclk)
 		goto sanitize;
 
 	/* Make sure the VCO is correct for the cdclk */
-	vco = bxt_calc_cdclk_pll_vco(dev_priv, cdclk);
-	if (vco != dev_priv->display.cdclk.hw.vco)
+	vco = bxt_calc_cdclk_pll_vco(display, cdclk);
+	if (vco != display->cdclk.hw.vco)
 		goto sanitize;
 
 	/*
@@ -2184,129 +2201,133 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
 	 * set reserved MBZ bits in CDCLK_CTL at least during exiting from S4,
 	 * so sanitize this register.
 	 */
-	cdctl = intel_de_read(dev_priv, CDCLK_CTL);
-	expected = bxt_cdclk_ctl(dev_priv, &dev_priv->display.cdclk.hw, INVALID_PIPE);
+	cdctl = intel_de_read(display, CDCLK_CTL);
+	expected = bxt_cdclk_ctl(display, &display->cdclk.hw, INVALID_PIPE);
 
 	/*
 	 * Let's ignore the pipe field, since BIOS could have configured the
 	 * dividers both synching to an active pipe, or asynchronously
 	 * (PIPE_NONE).
 	 */
-	cdctl &= ~bxt_cdclk_cd2x_pipe(dev_priv, INVALID_PIPE);
-	expected &= ~bxt_cdclk_cd2x_pipe(dev_priv, INVALID_PIPE);
+	cdctl &= ~bxt_cdclk_cd2x_pipe(display, INVALID_PIPE);
+	expected &= ~bxt_cdclk_cd2x_pipe(display, INVALID_PIPE);
 
 	if (cdctl == expected)
 		/* All well; nothing to sanitize */
 		return;
 
 sanitize:
-	drm_dbg_kms(&dev_priv->drm, "Sanitizing cdclk programmed by pre-os\n");
+	drm_dbg_kms(display->drm, "Sanitizing cdclk programmed by pre-os\n");
 
 	/* force cdclk programming */
-	dev_priv->display.cdclk.hw.cdclk = 0;
+	display->cdclk.hw.cdclk = 0;
 
 	/* force full PLL disable + enable */
-	dev_priv->display.cdclk.hw.vco = ~0;
+	display->cdclk.hw.vco = ~0;
 }
 
-static void bxt_cdclk_init_hw(struct drm_i915_private *dev_priv)
+static void bxt_cdclk_init_hw(struct intel_display *display)
 {
 	struct intel_cdclk_config cdclk_config;
 
-	bxt_sanitize_cdclk(dev_priv);
+	bxt_sanitize_cdclk(display);
 
-	if (dev_priv->display.cdclk.hw.cdclk != 0 &&
-	    dev_priv->display.cdclk.hw.vco != 0)
+	if (display->cdclk.hw.cdclk != 0 &&
+	    display->cdclk.hw.vco != 0)
 		return;
 
-	cdclk_config = dev_priv->display.cdclk.hw;
+	cdclk_config = display->cdclk.hw;
 
 	/*
 	 * FIXME:
 	 * - The initial CDCLK needs to be read from VBT.
 	 *   Need to make this change after VBT has changes for BXT.
 	 */
-	cdclk_config.cdclk = bxt_calc_cdclk(dev_priv, 0);
-	cdclk_config.vco = bxt_calc_cdclk_pll_vco(dev_priv, cdclk_config.cdclk);
+	cdclk_config.cdclk = bxt_calc_cdclk(display, 0);
+	cdclk_config.vco = bxt_calc_cdclk_pll_vco(display, cdclk_config.cdclk);
 	cdclk_config.voltage_level =
-		intel_cdclk_calc_voltage_level(dev_priv, cdclk_config.cdclk);
+		intel_cdclk_calc_voltage_level(display, cdclk_config.cdclk);
 
-	bxt_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
+	bxt_set_cdclk(display, &cdclk_config, INVALID_PIPE);
 }
 
-static void bxt_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
+static void bxt_cdclk_uninit_hw(struct intel_display *display)
 {
-	struct intel_cdclk_config cdclk_config = dev_priv->display.cdclk.hw;
+	struct intel_cdclk_config cdclk_config = display->cdclk.hw;
 
 	cdclk_config.cdclk = cdclk_config.bypass;
 	cdclk_config.vco = 0;
 	cdclk_config.voltage_level =
-		intel_cdclk_calc_voltage_level(dev_priv, cdclk_config.cdclk);
+		intel_cdclk_calc_voltage_level(display, cdclk_config.cdclk);
 
-	bxt_set_cdclk(dev_priv, &cdclk_config, INVALID_PIPE);
+	bxt_set_cdclk(display, &cdclk_config, INVALID_PIPE);
 }
 
 /**
  * intel_cdclk_init_hw - Initialize CDCLK hardware
- * @i915: i915 device
+ * @display: display instance
  *
- * Initialize CDCLK. This consists mainly of initializing dev_priv->display.cdclk.hw and
+ * Initialize CDCLK. This consists mainly of initializing display->cdclk.hw and
  * sanitizing the state of the hardware if needed. This is generally done only
  * during the display core initialization sequence, after which the DMC will
  * take care of turning CDCLK off/on as needed.
  */
-void intel_cdclk_init_hw(struct drm_i915_private *i915)
+void intel_cdclk_init_hw(struct intel_display *display)
 {
-	if (DISPLAY_VER(i915) >= 10 || IS_BROXTON(i915))
-		bxt_cdclk_init_hw(i915);
-	else if (DISPLAY_VER(i915) == 9)
-		skl_cdclk_init_hw(i915);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	if (DISPLAY_VER(display) >= 10 || IS_BROXTON(i915))
+		bxt_cdclk_init_hw(display);
+	else if (DISPLAY_VER(display) == 9)
+		skl_cdclk_init_hw(display);
 }
 
 /**
  * intel_cdclk_uninit_hw - Uninitialize CDCLK hardware
- * @i915: i915 device
+ * @display: display instance
  *
  * Uninitialize CDCLK. This is done only during the display core
  * uninitialization sequence.
  */
-void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
+void intel_cdclk_uninit_hw(struct intel_display *display)
 {
-	if (DISPLAY_VER(i915) >= 10 || IS_BROXTON(i915))
-		bxt_cdclk_uninit_hw(i915);
-	else if (DISPLAY_VER(i915) == 9)
-		skl_cdclk_uninit_hw(i915);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	if (DISPLAY_VER(display) >= 10 || IS_BROXTON(i915))
+		bxt_cdclk_uninit_hw(display);
+	else if (DISPLAY_VER(display) == 9)
+		skl_cdclk_uninit_hw(display);
 }
 
-static bool intel_cdclk_can_crawl_and_squash(struct drm_i915_private *i915,
+static bool intel_cdclk_can_crawl_and_squash(struct intel_display *display,
 					     const struct intel_cdclk_config *a,
 					     const struct intel_cdclk_config *b)
 {
 	u16 old_waveform;
 	u16 new_waveform;
 
-	drm_WARN_ON(&i915->drm, cdclk_pll_is_unknown(a->vco));
+	drm_WARN_ON(display->drm, cdclk_pll_is_unknown(a->vco));
 
 	if (a->vco == 0 || b->vco == 0)
 		return false;
 
-	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
+	if (!HAS_CDCLK_CRAWL(display) || !HAS_CDCLK_SQUASH(display))
 		return false;
 
-	old_waveform = cdclk_squash_waveform(i915, a->cdclk);
-	new_waveform = cdclk_squash_waveform(i915, b->cdclk);
+	old_waveform = cdclk_squash_waveform(display, a->cdclk);
+	new_waveform = cdclk_squash_waveform(display, b->cdclk);
 
 	return a->vco != b->vco &&
 	       old_waveform != new_waveform;
 }
 
-static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
+static bool intel_cdclk_can_crawl(struct intel_display *display,
 				  const struct intel_cdclk_config *a,
 				  const struct intel_cdclk_config *b)
 {
 	int a_div, b_div;
 
-	if (!HAS_CDCLK_CRAWL(dev_priv))
+	if (!HAS_CDCLK_CRAWL(display))
 		return false;
 
 	/*
@@ -2322,7 +2343,7 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
 		a->ref == b->ref;
 }
 
-static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
+static bool intel_cdclk_can_squash(struct intel_display *display,
 				   const struct intel_cdclk_config *a,
 				   const struct intel_cdclk_config *b)
 {
@@ -2332,7 +2353,7 @@ static bool intel_cdclk_can_squash(struct drm_i915_private *dev_priv,
 	 * the moment all platforms with squasher use a fixed cd2x
 	 * divider.
 	 */
-	if (!HAS_CDCLK_SQUASH(dev_priv))
+	if (!HAS_CDCLK_SQUASH(display))
 		return false;
 
 	return a->cdclk != b->cdclk &&
@@ -2361,7 +2382,7 @@ bool intel_cdclk_clock_changed(const struct intel_cdclk_config *a,
 /**
  * intel_cdclk_can_cd2x_update - Determine if changing between the two CDCLK
  *                               configurations requires only a cd2x divider update
- * @dev_priv: i915 device
+ * @display: display instance
  * @a: first CDCLK configuration
  * @b: second CDCLK configuration
  *
@@ -2369,12 +2390,14 @@ bool intel_cdclk_clock_changed(const struct intel_cdclk_config *a,
  * True if changing between the two CDCLK configurations
  * can be done with just a cd2x divider update, false if not.
  */
-static bool intel_cdclk_can_cd2x_update(struct drm_i915_private *dev_priv,
+static bool intel_cdclk_can_cd2x_update(struct intel_display *display,
 					const struct intel_cdclk_config *a,
 					const struct intel_cdclk_config *b)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
 	/* Older hw doesn't have the capability */
-	if (DISPLAY_VER(dev_priv) < 10 && !IS_BROXTON(dev_priv))
+	if (DISPLAY_VER(display) < 10 && !IS_BROXTON(dev_priv))
 		return false;
 
 	/*
@@ -2383,7 +2406,7 @@ static bool intel_cdclk_can_cd2x_update(struct drm_i915_private *dev_priv,
 	 * the moment all platforms with squasher use a fixed cd2x
 	 * divider.
 	 */
-	if (HAS_CDCLK_SQUASH(dev_priv))
+	if (HAS_CDCLK_SQUASH(display))
 		return false;
 
 	return a->cdclk != b->cdclk &&
@@ -2407,23 +2430,24 @@ static bool intel_cdclk_changed(const struct intel_cdclk_config *a,
 		a->voltage_level != b->voltage_level;
 }
 
-void intel_cdclk_dump_config(struct drm_i915_private *i915,
+void intel_cdclk_dump_config(struct intel_display *display,
 			     const struct intel_cdclk_config *cdclk_config,
 			     const char *context)
 {
-	drm_dbg_kms(&i915->drm, "%s %d kHz, VCO %d kHz, ref %d kHz, bypass %d kHz, voltage level %d\n",
+	drm_dbg_kms(display->drm, "%s %d kHz, VCO %d kHz, ref %d kHz, bypass %d kHz, voltage level %d\n",
 		    context, cdclk_config->cdclk, cdclk_config->vco,
 		    cdclk_config->ref, cdclk_config->bypass,
 		    cdclk_config->voltage_level);
 }
 
-static void intel_pcode_notify(struct drm_i915_private *i915,
+static void intel_pcode_notify(struct intel_display *display,
 			       u8 voltage_level,
 			       u8 active_pipe_count,
 			       u16 cdclk,
 			       bool cdclk_update_valid,
 			       bool pipe_count_update_valid)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	int ret;
 	u32 update_mask = 0;
 
@@ -2444,26 +2468,27 @@ static void intel_pcode_notify(struct drm_i915_private *i915,
 				SKL_CDCLK_READY_FOR_CHANGE,
 				SKL_CDCLK_READY_FOR_CHANGE, 3);
 	if (ret)
-		drm_err(&i915->drm,
+		drm_err(display->drm,
 			"Failed to inform PCU about display config (err %d)\n",
 			ret);
 }
 
-static void intel_set_cdclk(struct drm_i915_private *dev_priv,
+static void intel_set_cdclk(struct intel_display *display,
 			    const struct intel_cdclk_config *cdclk_config,
 			    enum pipe pipe, const char *context)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_encoder *encoder;
 
-	if (!intel_cdclk_changed(&dev_priv->display.cdclk.hw, cdclk_config))
+	if (!intel_cdclk_changed(&display->cdclk.hw, cdclk_config))
 		return;
 
-	if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->display.funcs.cdclk->set_cdclk))
+	if (drm_WARN_ON_ONCE(display->drm, !display->funcs.cdclk->set_cdclk))
 		return;
 
-	intel_cdclk_dump_config(dev_priv, cdclk_config, context);
+	intel_cdclk_dump_config(display, cdclk_config, context);
 
-	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
+	for_each_intel_encoder_with_psr(display->drm, encoder) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 		intel_psr_pause(intel_dp);
@@ -2476,24 +2501,24 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 	 * functions use cdclk. Not all platforms/ports do,
 	 * but we'll lock them all for simplicity.
 	 */
-	mutex_lock(&dev_priv->display.gmbus.mutex);
-	for_each_intel_dp(&dev_priv->drm, encoder) {
+	mutex_lock(&display->gmbus.mutex);
+	for_each_intel_dp(display->drm, encoder) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 		mutex_lock_nest_lock(&intel_dp->aux.hw_mutex,
-				     &dev_priv->display.gmbus.mutex);
+				     &display->gmbus.mutex);
 	}
 
-	intel_cdclk_set_cdclk(dev_priv, cdclk_config, pipe);
+	intel_cdclk_set_cdclk(display, cdclk_config, pipe);
 
-	for_each_intel_dp(&dev_priv->drm, encoder) {
+	for_each_intel_dp(display->drm, encoder) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 		mutex_unlock(&intel_dp->aux.hw_mutex);
 	}
-	mutex_unlock(&dev_priv->display.gmbus.mutex);
+	mutex_unlock(&display->gmbus.mutex);
 
-	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
+	for_each_intel_encoder_with_psr(display->drm, encoder) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 		intel_psr_resume(intel_dp);
@@ -2501,17 +2526,17 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 
 	intel_audio_cdclk_change_post(dev_priv);
 
-	if (drm_WARN(&dev_priv->drm,
-		     intel_cdclk_changed(&dev_priv->display.cdclk.hw, cdclk_config),
+	if (drm_WARN(display->drm,
+		     intel_cdclk_changed(&display->cdclk.hw, cdclk_config),
 		     "cdclk state doesn't match!\n")) {
-		intel_cdclk_dump_config(dev_priv, &dev_priv->display.cdclk.hw, "[hw state]");
-		intel_cdclk_dump_config(dev_priv, cdclk_config, "[sw state]");
+		intel_cdclk_dump_config(display, &display->cdclk.hw, "[hw state]");
+		intel_cdclk_dump_config(display, cdclk_config, "[sw state]");
 	}
 }
 
 static void intel_cdclk_pcode_pre_notify(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_cdclk_state *old_cdclk_state =
 		intel_atomic_get_old_cdclk_state(state);
 	const struct intel_cdclk_state *new_cdclk_state =
@@ -2550,13 +2575,13 @@ static void intel_cdclk_pcode_pre_notify(struct intel_atomic_state *state)
 	if (update_pipe_count)
 		num_active_pipes = hweight8(new_cdclk_state->active_pipes);
 
-	intel_pcode_notify(i915, voltage_level, num_active_pipes, cdclk,
+	intel_pcode_notify(display, voltage_level, num_active_pipes, cdclk,
 			   change_cdclk, update_pipe_count);
 }
 
 static void intel_cdclk_pcode_post_notify(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	const struct intel_cdclk_state *new_cdclk_state =
 		intel_atomic_get_new_cdclk_state(state);
 	const struct intel_cdclk_state *old_cdclk_state =
@@ -2587,7 +2612,7 @@ static void intel_cdclk_pcode_post_notify(struct intel_atomic_state *state)
 	if (update_pipe_count)
 		num_active_pipes = hweight8(new_cdclk_state->active_pipes);
 
-	intel_pcode_notify(i915, voltage_level, num_active_pipes, cdclk,
+	intel_pcode_notify(display, voltage_level, num_active_pipes, cdclk,
 			   update_cdclk, update_pipe_count);
 }
 
@@ -2612,7 +2637,8 @@ bool intel_cdclk_is_decreasing_later(struct intel_atomic_state *state)
 void
 intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct intel_cdclk_state *old_cdclk_state =
 		intel_atomic_get_old_cdclk_state(state);
 	const struct intel_cdclk_state *new_cdclk_state =
@@ -2649,9 +2675,9 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 	 */
 	cdclk_config.joined_mbus = old_cdclk_state->actual.joined_mbus;
 
-	drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
+	drm_WARN_ON(display->drm, !new_cdclk_state->base.changed);
 
-	intel_set_cdclk(i915, &cdclk_config, pipe,
+	intel_set_cdclk(display, &cdclk_config, pipe,
 			"Pre changing CDCLK to");
 }
 
@@ -2665,7 +2691,8 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 void
 intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct intel_cdclk_state *old_cdclk_state =
 		intel_atomic_get_old_cdclk_state(state);
 	const struct intel_cdclk_state *new_cdclk_state =
@@ -2685,20 +2712,21 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 	else
 		pipe = INVALID_PIPE;
 
-	drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
+	drm_WARN_ON(display->drm, !new_cdclk_state->base.changed);
 
-	intel_set_cdclk(i915, &new_cdclk_state->actual, pipe,
+	intel_set_cdclk(display, &new_cdclk_state->actual, pipe,
 			"Post changing CDCLK to");
 }
 
 static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display = to_intel_display(crtc_state->uapi.crtc->dev);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int pixel_rate = crtc_state->pixel_rate;
 
-	if (DISPLAY_VER(dev_priv) >= 10)
+	if (DISPLAY_VER(display) >= 10)
 		return DIV_ROUND_UP(pixel_rate, 2);
-	else if (DISPLAY_VER(dev_priv) == 9 ||
+	else if (DISPLAY_VER(display) == 9 ||
 		 IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
 		return pixel_rate;
 	else if (IS_CHERRYVIEW(dev_priv))
@@ -2712,11 +2740,11 @@ static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_state)
 static int intel_planes_min_cdclk(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	struct intel_plane *plane;
 	int min_cdclk = 0;
 
-	for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane)
+	for_each_intel_plane_on_crtc(display->drm, crtc, plane)
 		min_cdclk = max(crtc_state->min_cdclk[plane->id], min_cdclk);
 
 	return min_cdclk;
@@ -2725,7 +2753,7 @@ static int intel_planes_min_cdclk(const struct intel_crtc_state *crtc_state)
 static int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
 	int min_cdclk = 0;
 
@@ -2754,7 +2782,7 @@ static int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
 		 * Since PPC = 2 with bigjoiner
 		 * => CDCLK >= compressed_bpp * Pixel clock  / 2 * Bigjoiner Interface bits
 		 */
-		int bigjoiner_interface_bits = DISPLAY_VER(i915) >= 14 ? 36 : 24;
+		int bigjoiner_interface_bits = DISPLAY_VER(display) >= 14 ? 36 : 24;
 		int min_cdclk_bj =
 			(fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
 			 pixel_clock) / (2 * bigjoiner_interface_bits);
@@ -2767,8 +2795,9 @@ static int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
 
 int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv =
-		to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_display *display =
+		to_intel_display(crtc_state->uapi.crtc->dev);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int min_cdclk;
 
 	if (!crtc_state->hw.enable)
@@ -2789,10 +2818,10 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	    crtc_state->has_audio &&
 	    crtc_state->port_clock >= 540000 &&
 	    crtc_state->lane_count == 4) {
-		if (DISPLAY_VER(dev_priv) == 10) {
+		if (DISPLAY_VER(display) == 10) {
 			/* Display WA #1145: glk */
 			min_cdclk = max(316800, min_cdclk);
-		} else if (DISPLAY_VER(dev_priv) == 9 || IS_BROADWELL(dev_priv)) {
+		} else if (DISPLAY_VER(display) == 9 || IS_BROADWELL(dev_priv)) {
 			/* Display WA #1144: skl,bxt */
 			min_cdclk = max(432000, min_cdclk);
 		}
@@ -2802,7 +2831,7 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 	 * According to BSpec, "The CD clock frequency must be at least twice
 	 * the frequency of the Azalia BCLK." and BCLK is 96 MHz by default.
 	 */
-	if (crtc_state->has_audio && DISPLAY_VER(dev_priv) >= 9)
+	if (crtc_state->has_audio && DISPLAY_VER(display) >= 9)
 		min_cdclk = max(2 * 96000, min_cdclk);
 
 	/*
@@ -2844,7 +2873,8 @@ int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
 
 static int intel_compute_min_cdclk(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_cdclk_state *cdclk_state =
 		intel_atomic_get_new_cdclk_state(state);
 	const struct intel_bw_state *bw_state;
@@ -2887,7 +2917,7 @@ static int intel_compute_min_cdclk(struct intel_atomic_state *state)
 
 	min_cdclk = max(cdclk_state->force_min_cdclk,
 			cdclk_state->bw_min_cdclk);
-	for_each_pipe(dev_priv, pipe)
+	for_each_pipe(display, pipe)
 		min_cdclk = max(cdclk_state->min_cdclk[pipe], min_cdclk);
 
 	/*
@@ -2902,10 +2932,10 @@ static int intel_compute_min_cdclk(struct intel_atomic_state *state)
 	    !is_power_of_2(cdclk_state->active_pipes))
 		min_cdclk = max(2 * 96000, min_cdclk);
 
-	if (min_cdclk > dev_priv->display.cdclk.max_cdclk_freq) {
-		drm_dbg_kms(&dev_priv->drm,
+	if (min_cdclk > display->cdclk.max_cdclk_freq) {
+		drm_dbg_kms(display->drm,
 			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
-			    min_cdclk, dev_priv->display.cdclk.max_cdclk_freq);
+			    min_cdclk, display->cdclk.max_cdclk_freq);
 		return -EINVAL;
 	}
 
@@ -2927,7 +2957,7 @@ static int intel_compute_min_cdclk(struct intel_atomic_state *state)
  */
 static int bxt_compute_min_voltage_level(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_cdclk_state *cdclk_state =
 		intel_atomic_get_new_cdclk_state(state);
 	struct intel_crtc *crtc;
@@ -2955,7 +2985,7 @@ static int bxt_compute_min_voltage_level(struct intel_atomic_state *state)
 	}
 
 	min_voltage_level = 0;
-	for_each_pipe(dev_priv, pipe)
+	for_each_pipe(display, pipe)
 		min_voltage_level = max(cdclk_state->min_voltage_level[pipe],
 					min_voltage_level);
 
@@ -2964,7 +2994,7 @@ static int bxt_compute_min_voltage_level(struct intel_atomic_state *state)
 
 static int vlv_modeset_calc_cdclk(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_cdclk_state *cdclk_state =
 		intel_atomic_get_new_cdclk_state(state);
 	int min_cdclk, cdclk;
@@ -2973,18 +3003,18 @@ static int vlv_modeset_calc_cdclk(struct intel_atomic_state *state)
 	if (min_cdclk < 0)
 		return min_cdclk;
 
-	cdclk = vlv_calc_cdclk(dev_priv, min_cdclk);
+	cdclk = vlv_calc_cdclk(display, min_cdclk);
 
 	cdclk_state->logical.cdclk = cdclk;
 	cdclk_state->logical.voltage_level =
-		vlv_calc_voltage_level(dev_priv, cdclk);
+		vlv_calc_voltage_level(display, cdclk);
 
 	if (!cdclk_state->active_pipes) {
-		cdclk = vlv_calc_cdclk(dev_priv, cdclk_state->force_min_cdclk);
+		cdclk = vlv_calc_cdclk(display, cdclk_state->force_min_cdclk);
 
 		cdclk_state->actual.cdclk = cdclk;
 		cdclk_state->actual.voltage_level =
-			vlv_calc_voltage_level(dev_priv, cdclk);
+			vlv_calc_voltage_level(display, cdclk);
 	} else {
 		cdclk_state->actual = cdclk_state->logical;
 	}
@@ -3023,7 +3053,7 @@ static int bdw_modeset_calc_cdclk(struct intel_atomic_state *state)
 
 static int skl_dpll0_vco(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_cdclk_state *cdclk_state =
 		intel_atomic_get_new_cdclk_state(state);
 	struct intel_crtc *crtc;
@@ -3032,7 +3062,7 @@ static int skl_dpll0_vco(struct intel_atomic_state *state)
 
 	vco = cdclk_state->logical.vco;
 	if (!vco)
-		vco = dev_priv->display.cdclk.skl_preferred_vco_freq;
+		vco = display->cdclk.skl_preferred_vco_freq;
 
 	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
 		if (!crtc_state->hw.enable)
@@ -3094,7 +3124,7 @@ static int skl_modeset_calc_cdclk(struct intel_atomic_state *state)
 
 static int bxt_modeset_calc_cdclk(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_cdclk_state *cdclk_state =
 		intel_atomic_get_new_cdclk_state(state);
 	int min_cdclk, min_voltage_level, cdclk, vco;
@@ -3107,23 +3137,23 @@ static int bxt_modeset_calc_cdclk(struct intel_atomic_state *state)
 	if (min_voltage_level < 0)
 		return min_voltage_level;
 
-	cdclk = bxt_calc_cdclk(dev_priv, min_cdclk);
-	vco = bxt_calc_cdclk_pll_vco(dev_priv, cdclk);
+	cdclk = bxt_calc_cdclk(display, min_cdclk);
+	vco = bxt_calc_cdclk_pll_vco(display, cdclk);
 
 	cdclk_state->logical.vco = vco;
 	cdclk_state->logical.cdclk = cdclk;
 	cdclk_state->logical.voltage_level =
 		max_t(int, min_voltage_level,
-		      intel_cdclk_calc_voltage_level(dev_priv, cdclk));
+		      intel_cdclk_calc_voltage_level(display, cdclk));
 
 	if (!cdclk_state->active_pipes) {
-		cdclk = bxt_calc_cdclk(dev_priv, cdclk_state->force_min_cdclk);
-		vco = bxt_calc_cdclk_pll_vco(dev_priv, cdclk);
+		cdclk = bxt_calc_cdclk(display, cdclk_state->force_min_cdclk);
+		vco = bxt_calc_cdclk_pll_vco(display, cdclk);
 
 		cdclk_state->actual.vco = vco;
 		cdclk_state->actual.cdclk = cdclk;
 		cdclk_state->actual.voltage_level =
-			intel_cdclk_calc_voltage_level(dev_priv, cdclk);
+			intel_cdclk_calc_voltage_level(display, cdclk);
 	} else {
 		cdclk_state->actual = cdclk_state->logical;
 	}
@@ -3175,10 +3205,10 @@ static const struct intel_global_state_funcs intel_cdclk_funcs = {
 struct intel_cdclk_state *
 intel_atomic_get_cdclk_state(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct intel_display *display = to_intel_display(state);
 	struct intel_global_state *cdclk_state;
 
-	cdclk_state = intel_atomic_get_global_obj_state(state, &dev_priv->display.cdclk.obj);
+	cdclk_state = intel_atomic_get_global_obj_state(state, &display->cdclk.obj);
 	if (IS_ERR(cdclk_state))
 		return ERR_CAST(cdclk_state);
 
@@ -3234,24 +3264,26 @@ int intel_cdclk_state_set_joined_mbus(struct intel_atomic_state *state, bool joi
 	return intel_atomic_lock_global_state(&cdclk_state->base);
 }
 
-int intel_cdclk_init(struct drm_i915_private *dev_priv)
+int intel_cdclk_init(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_cdclk_state *cdclk_state;
 
 	cdclk_state = kzalloc(sizeof(*cdclk_state), GFP_KERNEL);
 	if (!cdclk_state)
 		return -ENOMEM;
 
-	intel_atomic_global_obj_init(dev_priv, &dev_priv->display.cdclk.obj,
+	intel_atomic_global_obj_init(dev_priv, &display->cdclk.obj,
 				     &cdclk_state->base, &intel_cdclk_funcs);
 
 	return 0;
 }
 
-static bool intel_cdclk_need_serialize(struct drm_i915_private *i915,
+static bool intel_cdclk_need_serialize(struct intel_display *display,
 				       const struct intel_cdclk_state *old_cdclk_state,
 				       const struct intel_cdclk_state *new_cdclk_state)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	bool power_well_cnt_changed = hweight8(old_cdclk_state->active_pipes) !=
 				      hweight8(new_cdclk_state->active_pipes);
 	bool cdclk_changed = intel_cdclk_changed(&old_cdclk_state->actual,
@@ -3266,7 +3298,6 @@ static bool intel_cdclk_need_serialize(struct drm_i915_private *i915,
 int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 	const struct intel_cdclk_state *old_cdclk_state;
 	struct intel_cdclk_state *new_cdclk_state;
 	enum pipe pipe = INVALID_PIPE;
@@ -3285,7 +3316,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 	if (ret)
 		return ret;
 
-	if (intel_cdclk_need_serialize(dev_priv, old_cdclk_state, new_cdclk_state)) {
+	if (intel_cdclk_need_serialize(display, old_cdclk_state, new_cdclk_state)) {
 		/*
 		 * Also serialize commits across all crtcs
 		 * if the actual hw needs to be poked.
@@ -3305,7 +3336,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 	}
 
 	if (is_power_of_2(new_cdclk_state->active_pipes) &&
-	    intel_cdclk_can_cd2x_update(dev_priv,
+	    intel_cdclk_can_cd2x_update(display,
 					&old_cdclk_state->actual,
 					&new_cdclk_state->actual)) {
 		struct intel_crtc *crtc;
@@ -3322,25 +3353,25 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 			pipe = INVALID_PIPE;
 	}
 
-	if (intel_cdclk_can_crawl_and_squash(dev_priv,
+	if (intel_cdclk_can_crawl_and_squash(display,
 					     &old_cdclk_state->actual,
 					     &new_cdclk_state->actual)) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Can change cdclk via crawling and squashing\n");
-	} else if (intel_cdclk_can_squash(dev_priv,
+	} else if (intel_cdclk_can_squash(display,
 					&old_cdclk_state->actual,
 					&new_cdclk_state->actual)) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Can change cdclk via squashing\n");
-	} else if (intel_cdclk_can_crawl(dev_priv,
+	} else if (intel_cdclk_can_crawl(display,
 					 &old_cdclk_state->actual,
 					 &new_cdclk_state->actual)) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Can change cdclk via crawling\n");
 	} else if (pipe != INVALID_PIPE) {
 		new_cdclk_state->pipe = pipe;
 
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Can change cdclk cd2x divider with pipe %c active\n",
 			    pipe_name(pipe));
 	} else if (intel_cdclk_clock_changed(&old_cdclk_state->actual,
@@ -3352,24 +3383,24 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 
 		new_cdclk_state->disable_pipes = true;
 
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Modeset required for cdclk change\n");
 	}
 
-	if (intel_mdclk_cdclk_ratio(dev_priv, &old_cdclk_state->actual) !=
-	    intel_mdclk_cdclk_ratio(dev_priv, &new_cdclk_state->actual)) {
-		int ratio = intel_mdclk_cdclk_ratio(dev_priv, &new_cdclk_state->actual);
+	if (intel_mdclk_cdclk_ratio(display, &old_cdclk_state->actual) !=
+	    intel_mdclk_cdclk_ratio(display, &new_cdclk_state->actual)) {
+		int ratio = intel_mdclk_cdclk_ratio(display, &new_cdclk_state->actual);
 
 		ret = intel_dbuf_state_set_mdclk_cdclk_ratio(state, ratio);
 		if (ret)
 			return ret;
 	}
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "New cdclk calculated to be logical %u kHz, actual %u kHz\n",
 		    new_cdclk_state->logical.cdclk,
 		    new_cdclk_state->actual.cdclk);
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "New voltage level calculated to be logical %u, actual %u\n",
 		    new_cdclk_state->logical.voltage_level,
 		    new_cdclk_state->actual.voltage_level);
@@ -3377,18 +3408,19 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 	return 0;
 }
 
-static int intel_compute_max_dotclk(struct drm_i915_private *dev_priv)
+static int intel_compute_max_dotclk(struct intel_display *display)
 {
-	int max_cdclk_freq = dev_priv->display.cdclk.max_cdclk_freq;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+	int max_cdclk_freq = display->cdclk.max_cdclk_freq;
 
-	if (DISPLAY_VER(dev_priv) >= 10)
+	if (DISPLAY_VER(display) >= 10)
 		return 2 * max_cdclk_freq;
-	else if (DISPLAY_VER(dev_priv) == 9 ||
+	else if (DISPLAY_VER(display) == 9 ||
 		 IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
 		return max_cdclk_freq;
 	else if (IS_CHERRYVIEW(dev_priv))
 		return max_cdclk_freq*95/100;
-	else if (DISPLAY_VER(dev_priv) < 4)
+	else if (DISPLAY_VER(display) < 4)
 		return 2*max_cdclk_freq*90/100;
 	else
 		return max_cdclk_freq*90/100;
@@ -3396,34 +3428,36 @@ static int intel_compute_max_dotclk(struct drm_i915_private *dev_priv)
 
 /**
  * intel_update_max_cdclk - Determine the maximum support CDCLK frequency
- * @dev_priv: i915 device
+ * @display: display instance
  *
  * Determine the maximum CDCLK frequency the platform supports, and also
  * derive the maximum dot clock frequency the maximum CDCLK frequency
  * allows.
  */
-void intel_update_max_cdclk(struct drm_i915_private *dev_priv)
+void intel_update_max_cdclk(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
 	if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
-		if (dev_priv->display.cdclk.hw.ref == 24000)
-			dev_priv->display.cdclk.max_cdclk_freq = 552000;
+		if (display->cdclk.hw.ref == 24000)
+			display->cdclk.max_cdclk_freq = 552000;
 		else
-			dev_priv->display.cdclk.max_cdclk_freq = 556800;
-	} else if (DISPLAY_VER(dev_priv) >= 11) {
-		if (dev_priv->display.cdclk.hw.ref == 24000)
-			dev_priv->display.cdclk.max_cdclk_freq = 648000;
+			display->cdclk.max_cdclk_freq = 556800;
+	} else if (DISPLAY_VER(display) >= 11) {
+		if (display->cdclk.hw.ref == 24000)
+			display->cdclk.max_cdclk_freq = 648000;
 		else
-			dev_priv->display.cdclk.max_cdclk_freq = 652800;
+			display->cdclk.max_cdclk_freq = 652800;
 	} else if (IS_GEMINILAKE(dev_priv)) {
-		dev_priv->display.cdclk.max_cdclk_freq = 316800;
+		display->cdclk.max_cdclk_freq = 316800;
 	} else if (IS_BROXTON(dev_priv)) {
-		dev_priv->display.cdclk.max_cdclk_freq = 624000;
-	} else if (DISPLAY_VER(dev_priv) == 9) {
-		u32 limit = intel_de_read(dev_priv, SKL_DFSM) & SKL_DFSM_CDCLK_LIMIT_MASK;
+		display->cdclk.max_cdclk_freq = 624000;
+	} else if (DISPLAY_VER(display) == 9) {
+		u32 limit = intel_de_read(display, SKL_DFSM) & SKL_DFSM_CDCLK_LIMIT_MASK;
 		int max_cdclk, vco;
 
-		vco = dev_priv->display.cdclk.skl_preferred_vco_freq;
-		drm_WARN_ON(&dev_priv->drm, vco != 8100000 && vco != 8640000);
+		vco = display->cdclk.skl_preferred_vco_freq;
+		drm_WARN_ON(display->drm, vco != 8100000 && vco != 8640000);
 
 		/*
 		 * Use the lower (vco 8640) cdclk values as a
@@ -3439,7 +3473,7 @@ void intel_update_max_cdclk(struct drm_i915_private *dev_priv)
 		else
 			max_cdclk = 308571;
 
-		dev_priv->display.cdclk.max_cdclk_freq = skl_calc_cdclk(max_cdclk, vco);
+		display->cdclk.max_cdclk_freq = skl_calc_cdclk(max_cdclk, vco);
 	} else if (IS_BROADWELL(dev_priv))  {
 		/*
 		 * FIXME with extra cooling we can allow
@@ -3447,41 +3481,43 @@ void intel_update_max_cdclk(struct drm_i915_private *dev_priv)
 		 * How can we know if extra cooling is
 		 * available? PCI ID, VTB, something else?
 		 */
-		if (intel_de_read(dev_priv, FUSE_STRAP) & HSW_CDCLK_LIMIT)
-			dev_priv->display.cdclk.max_cdclk_freq = 450000;
+		if (intel_de_read(display, FUSE_STRAP) & HSW_CDCLK_LIMIT)
+			display->cdclk.max_cdclk_freq = 450000;
 		else if (IS_BROADWELL_ULX(dev_priv))
-			dev_priv->display.cdclk.max_cdclk_freq = 450000;
+			display->cdclk.max_cdclk_freq = 450000;
 		else if (IS_BROADWELL_ULT(dev_priv))
-			dev_priv->display.cdclk.max_cdclk_freq = 540000;
+			display->cdclk.max_cdclk_freq = 540000;
 		else
-			dev_priv->display.cdclk.max_cdclk_freq = 675000;
+			display->cdclk.max_cdclk_freq = 675000;
 	} else if (IS_CHERRYVIEW(dev_priv)) {
-		dev_priv->display.cdclk.max_cdclk_freq = 320000;
+		display->cdclk.max_cdclk_freq = 320000;
 	} else if (IS_VALLEYVIEW(dev_priv)) {
-		dev_priv->display.cdclk.max_cdclk_freq = 400000;
+		display->cdclk.max_cdclk_freq = 400000;
 	} else {
 		/* otherwise assume cdclk is fixed */
-		dev_priv->display.cdclk.max_cdclk_freq = dev_priv->display.cdclk.hw.cdclk;
+		display->cdclk.max_cdclk_freq = display->cdclk.hw.cdclk;
 	}
 
-	dev_priv->display.cdclk.max_dotclk_freq = intel_compute_max_dotclk(dev_priv);
+	display->cdclk.max_dotclk_freq = intel_compute_max_dotclk(display);
 
-	drm_dbg(&dev_priv->drm, "Max CD clock rate: %d kHz\n",
-		dev_priv->display.cdclk.max_cdclk_freq);
+	drm_dbg(display->drm, "Max CD clock rate: %d kHz\n",
+		display->cdclk.max_cdclk_freq);
 
-	drm_dbg(&dev_priv->drm, "Max dotclock rate: %d kHz\n",
-		dev_priv->display.cdclk.max_dotclk_freq);
+	drm_dbg(display->drm, "Max dotclock rate: %d kHz\n",
+		display->cdclk.max_dotclk_freq);
 }
 
 /**
  * intel_update_cdclk - Determine the current CDCLK frequency
- * @dev_priv: i915 device
+ * @display: display instance
  *
  * Determine the current CDCLK frequency.
  */
-void intel_update_cdclk(struct drm_i915_private *dev_priv)
+void intel_update_cdclk(struct intel_display *display)
 {
-	intel_cdclk_get_cdclk(dev_priv, &dev_priv->display.cdclk.hw);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
+	intel_cdclk_get_cdclk(display, &display->cdclk.hw);
 
 	/*
 	 * 9:0 CMBUS [sic] CDCLK frequency (cdfreq):
@@ -3490,28 +3526,29 @@ void intel_update_cdclk(struct drm_i915_private *dev_priv)
 	 * generate GMBus clock. This will vary with the cdclk freq.
 	 */
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		intel_de_write(dev_priv, GMBUSFREQ_VLV,
-			       DIV_ROUND_UP(dev_priv->display.cdclk.hw.cdclk, 1000));
+		intel_de_write(display, GMBUSFREQ_VLV,
+			       DIV_ROUND_UP(display->cdclk.hw.cdclk, 1000));
 }
 
-static int dg1_rawclk(struct drm_i915_private *dev_priv)
+static int dg1_rawclk(struct intel_display *display)
 {
 	/*
 	 * DG1 always uses a 38.4 MHz rawclk.  The bspec tells us
 	 * "Program Numerator=2, Denominator=4, Divider=37 decimal."
 	 */
-	intel_de_write(dev_priv, PCH_RAWCLK_FREQ,
+	intel_de_write(display, PCH_RAWCLK_FREQ,
 		       CNP_RAWCLK_DEN(4) | CNP_RAWCLK_DIV(37) | ICP_RAWCLK_NUM(2));
 
 	return 38400;
 }
 
-static int cnp_rawclk(struct drm_i915_private *dev_priv)
+static int cnp_rawclk(struct intel_display *display)
 {
-	u32 rawclk;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int divider, fraction;
+	u32 rawclk;
 
-	if (intel_de_read(dev_priv, SFUSE_STRAP) & SFUSE_STRAP_RAW_FREQUENCY) {
+	if (intel_de_read(display, SFUSE_STRAP) & SFUSE_STRAP_RAW_FREQUENCY) {
 		/* 24 MHz */
 		divider = 24000;
 		fraction = 0;
@@ -3531,37 +3568,42 @@ static int cnp_rawclk(struct drm_i915_private *dev_priv)
 			rawclk |= ICP_RAWCLK_NUM(numerator);
 	}
 
-	intel_de_write(dev_priv, PCH_RAWCLK_FREQ, rawclk);
+	intel_de_write(display, PCH_RAWCLK_FREQ, rawclk);
 	return divider + fraction;
 }
 
-static int pch_rawclk(struct drm_i915_private *dev_priv)
+static int pch_rawclk(struct intel_display *display)
 {
-	return (intel_de_read(dev_priv, PCH_RAWCLK_FREQ) & RAWCLK_FREQ_MASK) * 1000;
+	return (intel_de_read(display, PCH_RAWCLK_FREQ) & RAWCLK_FREQ_MASK) * 1000;
 }
 
-static int vlv_hrawclk(struct drm_i915_private *dev_priv)
+static int vlv_hrawclk(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
 	/* RAWCLK_FREQ_VLV register updated from power well code */
 	return vlv_get_cck_clock_hpll(dev_priv, "hrawclk",
 				      CCK_DISPLAY_REF_CLOCK_CONTROL);
 }
 
-static int i9xx_hrawclk(struct drm_i915_private *i915)
+static int i9xx_hrawclk(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	/* hrawclock is 1/4 the FSB frequency */
 	return DIV_ROUND_CLOSEST(i9xx_fsb_freq(i915), 4);
 }
 
 /**
  * intel_read_rawclk - Determine the current RAWCLK frequency
- * @dev_priv: i915 device
+ * @display: display instance
  *
  * Determine the current RAWCLK frequency. RAWCLK is a fixed
  * frequency clock so this needs to done only once.
  */
-u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
+u32 intel_read_rawclk(struct intel_display *display)
 {
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	u32 freq;
 
 	if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTL)
@@ -3572,15 +3614,15 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
 		 */
 		freq = 38400;
 	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
-		freq = dg1_rawclk(dev_priv);
+		freq = dg1_rawclk(display);
 	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_CNP)
-		freq = cnp_rawclk(dev_priv);
+		freq = cnp_rawclk(display);
 	else if (HAS_PCH_SPLIT(dev_priv))
-		freq = pch_rawclk(dev_priv);
+		freq = pch_rawclk(display);
 	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
-		freq = vlv_hrawclk(dev_priv);
-	else if (DISPLAY_VER(dev_priv) >= 3)
-		freq = i9xx_hrawclk(dev_priv);
+		freq = vlv_hrawclk(display);
+	else if (DISPLAY_VER(display) >= 3)
+		freq = i9xx_hrawclk(display);
 	else
 		/* no rawclk on other platforms, or no need to know it */
 		return 0;
@@ -3590,23 +3632,23 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
 
 static int i915_cdclk_info_show(struct seq_file *m, void *unused)
 {
-	struct drm_i915_private *i915 = m->private;
+	struct intel_display *display = m->private;
 
-	seq_printf(m, "Current CD clock frequency: %d kHz\n", i915->display.cdclk.hw.cdclk);
-	seq_printf(m, "Max CD clock frequency: %d kHz\n", i915->display.cdclk.max_cdclk_freq);
-	seq_printf(m, "Max pixel clock frequency: %d kHz\n", i915->display.cdclk.max_dotclk_freq);
+	seq_printf(m, "Current CD clock frequency: %d kHz\n", display->cdclk.hw.cdclk);
+	seq_printf(m, "Max CD clock frequency: %d kHz\n", display->cdclk.max_cdclk_freq);
+	seq_printf(m, "Max pixel clock frequency: %d kHz\n", display->cdclk.max_dotclk_freq);
 
 	return 0;
 }
 
 DEFINE_SHOW_ATTRIBUTE(i915_cdclk_info);
 
-void intel_cdclk_debugfs_register(struct drm_i915_private *i915)
+void intel_cdclk_debugfs_register(struct intel_display *display)
 {
-	struct drm_minor *minor = i915->drm.primary;
+	struct drm_minor *minor = display->drm->primary;
 
 	debugfs_create_file("i915_cdclk_info", 0444, minor->debugfs_root,
-			    i915, &i915_cdclk_info_fops);
+			    display, &i915_cdclk_info_fops);
 }
 
 static const struct intel_cdclk_funcs rplu_cdclk_funcs = {
@@ -3747,97 +3789,99 @@ static const struct intel_cdclk_funcs i830_cdclk_funcs = {
 
 /**
  * intel_init_cdclk_hooks - Initialize CDCLK related modesetting hooks
- * @dev_priv: i915 device
+ * @display: display instance
  */
-void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
+void intel_init_cdclk_hooks(struct intel_display *display)
 {
-	if (DISPLAY_VER(dev_priv) >= 20) {
-		dev_priv->display.funcs.cdclk = &rplu_cdclk_funcs;
-		dev_priv->display.cdclk.table = xe2lpd_cdclk_table;
-	} else if (DISPLAY_VER_FULL(dev_priv) >= IP_VER(14, 1)) {
-		dev_priv->display.funcs.cdclk = &rplu_cdclk_funcs;
-		dev_priv->display.cdclk.table = xe2hpd_cdclk_table;
-	} else if (DISPLAY_VER(dev_priv) >= 14) {
-		dev_priv->display.funcs.cdclk = &rplu_cdclk_funcs;
-		dev_priv->display.cdclk.table = mtl_cdclk_table;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
+
+	if (DISPLAY_VER(display) >= 20) {
+		display->funcs.cdclk = &rplu_cdclk_funcs;
+		display->cdclk.table = xe2lpd_cdclk_table;
+	} else if (DISPLAY_VER_FULL(display) >= IP_VER(14, 1)) {
+		display->funcs.cdclk = &rplu_cdclk_funcs;
+		display->cdclk.table = xe2hpd_cdclk_table;
+	} else if (DISPLAY_VER(display) >= 14) {
+		display->funcs.cdclk = &rplu_cdclk_funcs;
+		display->cdclk.table = mtl_cdclk_table;
 	} else if (IS_DG2(dev_priv)) {
-		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
-		dev_priv->display.cdclk.table = dg2_cdclk_table;
+		display->funcs.cdclk = &tgl_cdclk_funcs;
+		display->cdclk.table = dg2_cdclk_table;
 	} else if (IS_ALDERLAKE_P(dev_priv)) {
 		/* Wa_22011320316:adl-p[a0] */
 		if (IS_ALDERLAKE_P(dev_priv) && IS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
-			dev_priv->display.cdclk.table = adlp_a_step_cdclk_table;
-			dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
+			display->cdclk.table = adlp_a_step_cdclk_table;
+			display->funcs.cdclk = &tgl_cdclk_funcs;
 		} else if (IS_RAPTORLAKE_U(dev_priv)) {
-			dev_priv->display.cdclk.table = rplu_cdclk_table;
-			dev_priv->display.funcs.cdclk = &rplu_cdclk_funcs;
+			display->cdclk.table = rplu_cdclk_table;
+			display->funcs.cdclk = &rplu_cdclk_funcs;
 		} else {
-			dev_priv->display.cdclk.table = adlp_cdclk_table;
-			dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
+			display->cdclk.table = adlp_cdclk_table;
+			display->funcs.cdclk = &tgl_cdclk_funcs;
 		}
 	} else if (IS_ROCKETLAKE(dev_priv)) {
-		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
-		dev_priv->display.cdclk.table = rkl_cdclk_table;
-	} else if (DISPLAY_VER(dev_priv) >= 12) {
-		dev_priv->display.funcs.cdclk = &tgl_cdclk_funcs;
-		dev_priv->display.cdclk.table = icl_cdclk_table;
+		display->funcs.cdclk = &tgl_cdclk_funcs;
+		display->cdclk.table = rkl_cdclk_table;
+	} else if (DISPLAY_VER(display) >= 12) {
+		display->funcs.cdclk = &tgl_cdclk_funcs;
+		display->cdclk.table = icl_cdclk_table;
 	} else if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) {
-		dev_priv->display.funcs.cdclk = &ehl_cdclk_funcs;
-		dev_priv->display.cdclk.table = icl_cdclk_table;
-	} else if (DISPLAY_VER(dev_priv) >= 11) {
-		dev_priv->display.funcs.cdclk = &icl_cdclk_funcs;
-		dev_priv->display.cdclk.table = icl_cdclk_table;
+		display->funcs.cdclk = &ehl_cdclk_funcs;
+		display->cdclk.table = icl_cdclk_table;
+	} else if (DISPLAY_VER(display) >= 11) {
+		display->funcs.cdclk = &icl_cdclk_funcs;
+		display->cdclk.table = icl_cdclk_table;
 	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
-		dev_priv->display.funcs.cdclk = &bxt_cdclk_funcs;
+		display->funcs.cdclk = &bxt_cdclk_funcs;
 		if (IS_GEMINILAKE(dev_priv))
-			dev_priv->display.cdclk.table = glk_cdclk_table;
+			display->cdclk.table = glk_cdclk_table;
 		else
-			dev_priv->display.cdclk.table = bxt_cdclk_table;
-	} else if (DISPLAY_VER(dev_priv) == 9) {
-		dev_priv->display.funcs.cdclk = &skl_cdclk_funcs;
+			display->cdclk.table = bxt_cdclk_table;
+	} else if (DISPLAY_VER(display) == 9) {
+		display->funcs.cdclk = &skl_cdclk_funcs;
 	} else if (IS_BROADWELL(dev_priv)) {
-		dev_priv->display.funcs.cdclk = &bdw_cdclk_funcs;
+		display->funcs.cdclk = &bdw_cdclk_funcs;
 	} else if (IS_HASWELL(dev_priv)) {
-		dev_priv->display.funcs.cdclk = &hsw_cdclk_funcs;
+		display->funcs.cdclk = &hsw_cdclk_funcs;
 	} else if (IS_CHERRYVIEW(dev_priv)) {
-		dev_priv->display.funcs.cdclk = &chv_cdclk_funcs;
+		display->funcs.cdclk = &chv_cdclk_funcs;
 	} else if (IS_VALLEYVIEW(dev_priv)) {
-		dev_priv->display.funcs.cdclk = &vlv_cdclk_funcs;
+		display->funcs.cdclk = &vlv_cdclk_funcs;
 	} else if (IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv)) {
-		dev_priv->display.funcs.cdclk = &fixed_400mhz_cdclk_funcs;
+		display->funcs.cdclk = &fixed_400mhz_cdclk_funcs;
 	} else if (IS_IRONLAKE(dev_priv)) {
-		dev_priv->display.funcs.cdclk = &ilk_cdclk_funcs;
+		display->funcs.cdclk = &ilk_cdclk_funcs;
 	} else if (IS_GM45(dev_priv)) {
-		dev_priv->display.funcs.cdclk = &gm45_cdclk_funcs;
+		display->funcs.cdclk = &gm45_cdclk_funcs;
 	} else if (IS_G45(dev_priv)) {
-		dev_priv->display.funcs.cdclk = &g33_cdclk_funcs;
+		display->funcs.cdclk = &g33_cdclk_funcs;
 	} else if (IS_I965GM(dev_priv)) {
-		dev_priv->display.funcs.cdclk = &i965gm_cdclk_funcs;
+		display->funcs.cdclk = &i965gm_cdclk_funcs;
 	} else if (IS_I965G(dev_priv)) {
-		dev_priv->display.funcs.cdclk = &fixed_400mhz_cdclk_funcs;
+		display->funcs.cdclk = &fixed_400mhz_cdclk_funcs;
 	} else if (IS_PINEVIEW(dev_priv)) {
-		dev_priv->display.funcs.cdclk = &pnv_cdclk_funcs;
+		display->funcs.cdclk = &pnv_cdclk_funcs;
 	} else if (IS_G33(dev_priv)) {
-		dev_priv->display.funcs.cdclk = &g33_cdclk_funcs;
+		display->funcs.cdclk = &g33_cdclk_funcs;
 	} else if (IS_I945GM(dev_priv)) {
-		dev_priv->display.funcs.cdclk = &i945gm_cdclk_funcs;
+		display->funcs.cdclk = &i945gm_cdclk_funcs;
 	} else if (IS_I945G(dev_priv)) {
-		dev_priv->display.funcs.cdclk = &fixed_400mhz_cdclk_funcs;
+		display->funcs.cdclk = &fixed_400mhz_cdclk_funcs;
 	} else if (IS_I915GM(dev_priv)) {
-		dev_priv->display.funcs.cdclk = &i915gm_cdclk_funcs;
+		display->funcs.cdclk = &i915gm_cdclk_funcs;
 	} else if (IS_I915G(dev_priv)) {
-		dev_priv->display.funcs.cdclk = &i915g_cdclk_funcs;
+		display->funcs.cdclk = &i915g_cdclk_funcs;
 	} else if (IS_I865G(dev_priv)) {
-		dev_priv->display.funcs.cdclk = &i865g_cdclk_funcs;
+		display->funcs.cdclk = &i865g_cdclk_funcs;
 	} else if (IS_I85X(dev_priv)) {
-		dev_priv->display.funcs.cdclk = &i85x_cdclk_funcs;
+		display->funcs.cdclk = &i85x_cdclk_funcs;
 	} else if (IS_I845G(dev_priv)) {
-		dev_priv->display.funcs.cdclk = &i845g_cdclk_funcs;
+		display->funcs.cdclk = &i845g_cdclk_funcs;
 	} else if (IS_I830(dev_priv)) {
-		dev_priv->display.funcs.cdclk = &i830_cdclk_funcs;
+		display->funcs.cdclk = &i830_cdclk_funcs;
 	}
 
-	if (drm_WARN(&dev_priv->drm, !dev_priv->display.funcs.cdclk,
+	if (drm_WARN(display->drm, !display->funcs.cdclk,
 		     "Unknown platform. Assuming i830\n"))
-		dev_priv->display.funcs.cdclk = &i830_cdclk_funcs;
+		display->funcs.cdclk = &i830_cdclk_funcs;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 1fe445a3a30b..6b0e7a41eba3 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -11,9 +11,9 @@
 #include "intel_display_limits.h"
 #include "intel_global_state.h"
 
-struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc_state;
+struct intel_display;
 
 struct intel_cdclk_config {
 	unsigned int cdclk, vco, ref, bypass;
@@ -59,24 +59,24 @@ struct intel_cdclk_state {
 };
 
 int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state);
-void intel_cdclk_init_hw(struct drm_i915_private *i915);
-void intel_cdclk_uninit_hw(struct drm_i915_private *i915);
-void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv);
-void intel_update_max_cdclk(struct drm_i915_private *dev_priv);
-void intel_update_cdclk(struct drm_i915_private *dev_priv);
-u32 intel_read_rawclk(struct drm_i915_private *dev_priv);
+void intel_cdclk_init_hw(struct intel_display *display);
+void intel_cdclk_uninit_hw(struct intel_display *display);
+void intel_init_cdclk_hooks(struct intel_display *display);
+void intel_update_max_cdclk(struct intel_display *display);
+void intel_update_cdclk(struct intel_display *display);
+u32 intel_read_rawclk(struct intel_display *display);
 bool intel_cdclk_clock_changed(const struct intel_cdclk_config *a,
 			       const struct intel_cdclk_config *b);
-int intel_mdclk_cdclk_ratio(struct drm_i915_private *i915,
+int intel_mdclk_cdclk_ratio(struct intel_display *display,
 			    const struct intel_cdclk_config *cdclk_config);
 bool intel_cdclk_is_decreasing_later(struct intel_atomic_state *state);
 void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
 void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
-void intel_cdclk_dump_config(struct drm_i915_private *i915,
+void intel_cdclk_dump_config(struct intel_display *display,
 			     const struct intel_cdclk_config *cdclk_config,
 			     const char *context);
 int intel_modeset_calc_cdclk(struct intel_atomic_state *state);
-void intel_cdclk_get_cdclk(struct drm_i915_private *dev_priv,
+void intel_cdclk_get_cdclk(struct intel_display *display,
 			   struct intel_cdclk_config *cdclk_config);
 int intel_cdclk_atomic_check(struct intel_atomic_state *state,
 			     bool *need_cdclk_calc);
@@ -92,7 +92,7 @@ intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
 #define intel_atomic_get_new_cdclk_state(state) \
 	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_intel_display(state)->cdclk.obj))
 
-int intel_cdclk_init(struct drm_i915_private *dev_priv);
-void intel_cdclk_debugfs_register(struct drm_i915_private *i915);
+int intel_cdclk_init(struct intel_display *display);
+void intel_cdclk_debugfs_register(struct intel_display *display);
 
 #endif /* __INTEL_CDCLK_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 830b9eb60976..c1bef34d1ffd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1068,7 +1068,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 				 minor->debugfs_root, minor);
 
 	intel_bios_debugfs_register(display);
-	intel_cdclk_debugfs_register(i915);
+	intel_cdclk_debugfs_register(display);
 	intel_dmc_debugfs_register(i915);
 	intel_fbc_debugfs_register(display);
 	intel_hpd_debugfs_register(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 408c76852495..9ff08dbefc76 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1678,7 +1678,7 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
 		}
 	}
 
-	display_runtime->rawclk_freq = intel_read_rawclk(i915);
+	display_runtime->rawclk_freq = intel_read_rawclk(&i915->display);
 	drm_dbg_kms(&i915->drm, "rawclk rate: %d kHz\n", display_runtime->rawclk_freq);
 
 	return;
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index e7670774ecd0..434e52f450ff 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -82,16 +82,17 @@ bool intel_display_driver_probe_defer(struct pci_dev *pdev)
 
 void intel_display_driver_init_hw(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	struct intel_cdclk_state *cdclk_state;
 
 	if (!HAS_DISPLAY(i915))
 		return;
 
-	cdclk_state = to_intel_cdclk_state(i915->display.cdclk.obj.state);
+	cdclk_state = to_intel_cdclk_state(display->cdclk.obj.state);
 
-	intel_update_cdclk(i915);
-	intel_cdclk_dump_config(i915, &i915->display.cdclk.hw, "Current CDCLK");
-	cdclk_state->logical = cdclk_state->actual = i915->display.cdclk.hw;
+	intel_update_cdclk(display);
+	intel_cdclk_dump_config(display, &display->cdclk.hw, "Current CDCLK");
+	cdclk_state->logical = cdclk_state->actual = display->cdclk.hw;
 
 	intel_display_wa_apply(i915);
 }
@@ -194,7 +195,7 @@ void intel_display_driver_early_probe(struct drm_i915_private *i915)
 	intel_display_irq_init(i915);
 	intel_dkl_phy_init(i915);
 	intel_color_init_hooks(i915);
-	intel_init_cdclk_hooks(i915);
+	intel_init_cdclk_hooks(&i915->display);
 	intel_audio_hooks_init(i915);
 	intel_dpll_init_clock_hook(i915);
 	intel_init_display_hooks(i915);
@@ -244,7 +245,7 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
 
 	intel_mode_config_init(i915);
 
-	ret = intel_cdclk_init(i915);
+	ret = intel_cdclk_init(display);
 	if (ret)
 		goto cleanup_vga_client_pw_domain_dmc;
 
@@ -451,8 +452,8 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
 	intel_display_driver_init_hw(i915);
 	intel_dpll_update_ref_clks(i915);
 
-	if (i915->display.cdclk.max_cdclk_freq == 0)
-		intel_update_max_cdclk(i915);
+	if (display->cdclk.max_cdclk_freq == 0)
+		intel_update_max_cdclk(display);
 
 	intel_hti_init(display);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index ef2fdbf97346..eb3e2a56af1d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1300,6 +1300,7 @@ static void hsw_disable_lcpll(struct drm_i915_private *dev_priv,
  */
 static void hsw_restore_lcpll(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	u32 val;
 
 	val = intel_de_read(dev_priv, LCPLL_CTL);
@@ -1343,8 +1344,8 @@ static void hsw_restore_lcpll(struct drm_i915_private *dev_priv)
 
 	intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
 
-	intel_update_cdclk(dev_priv);
-	intel_cdclk_dump_config(dev_priv, &dev_priv->display.cdclk.hw, "Current CDCLK");
+	intel_update_cdclk(display);
+	intel_cdclk_dump_config(display, &display->cdclk.hw, "Current CDCLK");
 }
 
 /*
@@ -1416,7 +1417,8 @@ static void intel_pch_reset_handshake(struct drm_i915_private *dev_priv,
 static void skl_display_core_init(struct drm_i915_private *dev_priv,
 				  bool resume)
 {
-	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
+	struct intel_display *display = &dev_priv->display;
+	struct i915_power_domains *power_domains = &display->power.domains;
 	struct i915_power_well *well;
 
 	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
@@ -1438,7 +1440,7 @@ static void skl_display_core_init(struct drm_i915_private *dev_priv,
 
 	mutex_unlock(&power_domains->lock);
 
-	intel_cdclk_init_hw(dev_priv);
+	intel_cdclk_init_hw(display);
 
 	gen9_dbuf_enable(dev_priv);
 
@@ -1448,7 +1450,8 @@ static void skl_display_core_init(struct drm_i915_private *dev_priv,
 
 static void skl_display_core_uninit(struct drm_i915_private *dev_priv)
 {
-	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
+	struct intel_display *display = &dev_priv->display;
+	struct i915_power_domains *power_domains = &display->power.domains;
 	struct i915_power_well *well;
 
 	if (!HAS_DISPLAY(dev_priv))
@@ -1459,7 +1462,7 @@ static void skl_display_core_uninit(struct drm_i915_private *dev_priv)
 
 	gen9_dbuf_disable(dev_priv);
 
-	intel_cdclk_uninit_hw(dev_priv);
+	intel_cdclk_uninit_hw(display);
 
 	/* The spec doesn't call for removing the reset handshake flag */
 	/* disable PG1 and Misc I/O */
@@ -1482,7 +1485,8 @@ static void skl_display_core_uninit(struct drm_i915_private *dev_priv)
 
 static void bxt_display_core_init(struct drm_i915_private *dev_priv, bool resume)
 {
-	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
+	struct intel_display *display = &dev_priv->display;
+	struct i915_power_domains *power_domains = &display->power.domains;
 	struct i915_power_well *well;
 
 	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
@@ -1506,7 +1510,7 @@ static void bxt_display_core_init(struct drm_i915_private *dev_priv, bool resume
 
 	mutex_unlock(&power_domains->lock);
 
-	intel_cdclk_init_hw(dev_priv);
+	intel_cdclk_init_hw(display);
 
 	gen9_dbuf_enable(dev_priv);
 
@@ -1516,7 +1520,8 @@ static void bxt_display_core_init(struct drm_i915_private *dev_priv, bool resume
 
 static void bxt_display_core_uninit(struct drm_i915_private *dev_priv)
 {
-	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
+	struct intel_display *display = &dev_priv->display;
+	struct i915_power_domains *power_domains = &display->power.domains;
 	struct i915_power_well *well;
 
 	if (!HAS_DISPLAY(dev_priv))
@@ -1527,7 +1532,7 @@ static void bxt_display_core_uninit(struct drm_i915_private *dev_priv)
 
 	gen9_dbuf_disable(dev_priv);
 
-	intel_cdclk_uninit_hw(dev_priv);
+	intel_cdclk_uninit_hw(display);
 
 	/* The spec doesn't call for removing the reset handshake flag */
 
@@ -1623,7 +1628,8 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
 static void icl_display_core_init(struct drm_i915_private *dev_priv,
 				  bool resume)
 {
-	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
+	struct intel_display *display = &dev_priv->display;
+	struct i915_power_domains *power_domains = &display->power.domains;
 	struct i915_power_well *well;
 
 	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
@@ -1657,7 +1663,7 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 			     HOLD_PHY_PG1_LATCH | HOLD_PHY_CLKREQ_PG1_LATCH, 0);
 
 	/* 4. Enable CDCLK. */
-	intel_cdclk_init_hw(dev_priv);
+	intel_cdclk_init_hw(display);
 
 	if (DISPLAY_VER(dev_priv) >= 12)
 		gen12_dbuf_slices_config(dev_priv);
@@ -1704,7 +1710,8 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 
 static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
 {
-	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
+	struct intel_display *display = &dev_priv->display;
+	struct i915_power_domains *power_domains = &display->power.domains;
 	struct i915_power_well *well;
 
 	if (!HAS_DISPLAY(dev_priv))
@@ -1719,7 +1726,7 @@ static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
 	gen9_dbuf_disable(dev_priv);
 
 	/* 3. Disable CD clock */
-	intel_cdclk_uninit_hw(dev_priv);
+	intel_cdclk_uninit_hw(display);
 
 	if (DISPLAY_VER(dev_priv) == 14)
 		intel_de_rmw(dev_priv, DC_STATE_EN, 0,
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 46e9eff12c23..7b40a5b88214 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -967,7 +967,8 @@ static void gen9_assert_dbuf_enabled(struct drm_i915_private *dev_priv)
 
 void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
 {
-	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
+	struct intel_display *display = &dev_priv->display;
+	struct i915_power_domains *power_domains = &display->power.domains;
 	struct intel_cdclk_config cdclk_config = {};
 
 	if (power_domains->target_dc_state == DC_STATE_EN_DC3CO) {
@@ -982,10 +983,10 @@ void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
 
 	intel_dmc_wl_disable(&dev_priv->display);
 
-	intel_cdclk_get_cdclk(dev_priv, &cdclk_config);
+	intel_cdclk_get_cdclk(display, &cdclk_config);
 	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
-	drm_WARN_ON(&dev_priv->drm,
-		    intel_cdclk_clock_changed(&dev_priv->display.cdclk.hw,
+	drm_WARN_ON(display->drm,
+		    intel_cdclk_clock_changed(&display->cdclk.hw,
 					      &cdclk_config));
 
 	gen9_assert_dbuf_enabled(dev_priv);
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 29835b638495..6e1f04d5ef47 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2973,6 +2973,7 @@ static void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
 
 static void skl_wm_get_hw_state(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	struct intel_dbuf_state *dbuf_state =
 		to_intel_dbuf_state(i915->display.dbuf.obj.state);
 	struct intel_crtc *crtc;
@@ -2980,7 +2981,7 @@ static void skl_wm_get_hw_state(struct drm_i915_private *i915)
 	if (HAS_MBUS_JOINING(i915))
 		dbuf_state->joined_mbus = intel_de_read(i915, MBUS_CTL) & MBUS_JOIN;
 
-	dbuf_state->mdclk_cdclk_ratio = intel_mdclk_cdclk_ratio(i915, &i915->display.cdclk.hw);
+	dbuf_state->mdclk_cdclk_ratio = intel_mdclk_cdclk_ratio(display, &display->cdclk.hw);
 
 	for_each_intel_crtc(&i915->drm, crtc) {
 		struct intel_crtc_state *crtc_state =
-- 
2.44.2

