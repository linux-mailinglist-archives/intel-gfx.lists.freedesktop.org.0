Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBA1561EBD
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 17:06:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56B6C11B45F;
	Thu, 30 Jun 2022 15:06:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FEA011B639
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 15:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656601569; x=1688137569;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=OuOaoZbO/PBOmG45YWidGBNCAWwrXLXMAGc+OKk9SRU=;
 b=J1K4zrrcVpajsR0nHt+Jbs1Y91X9vvY4U1Qsg9T51VFEEjpzLRh3VFE+
 bYCGK28flstAjs1Dtg8FnV5z7LI46rAuuTTnlLdXo4il1hsiSLV00bBY4
 H5U0UmOE+33IMPDmjwJpBnBEcS+S6/iNn3vagiFxy2A5x436ceX8msOLy
 1CKQNr8jLITiSMytEapkm86jcTDmDwF4vRj5IfzlkowW4+wzPgJdzeKoQ
 +t+s9qf2NYmBiTAn6B0JnRE+gB71/JigGmQKiegBsHujHKt/9eMkzP6wY
 9fu0y2zgea+AYY8/p5YnHEWpVFj/n15pYMWIIn7p9H0bqNQAWclAjmUh/ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="344059988"
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="344059988"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 08:06:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="623762143"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by orsmga001.jf.intel.com with SMTP; 30 Jun 2022 08:06:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Jun 2022 18:06:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jun 2022 18:05:59 +0300
Message-Id: <20220630150600.24611-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630150600.24611-1-ville.syrjala@linux.intel.com>
References: <20220630150600.24611-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Nuke PCH_MCC
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

MCC is derived from TGP, and we have no real need to
differentiate between the two. Thus remove PCH_MCC and
just declare it to be PCH_TGP compatible.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c  | 2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c | 2 +-
 drivers/gpu/drm/i915/intel_pch.c          | 3 ++-
 drivers/gpu/drm/i915/intel_pch.h          | 4 +---
 4 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 272e1bf6006b..2330604b0bcc 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4179,7 +4179,7 @@ static enum hpd_pin ehl_hpd_pin(struct drm_i915_private *dev_priv,
 	if (port == PORT_D)
 		return HPD_PORT_A;
 
-	if (HAS_PCH_MCC(dev_priv))
+	if (HAS_PCH_TGP(dev_priv))
 		return icl_hpd_pin(dev_priv, port);
 
 	return HPD_PORT_A + port - PORT_A;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 1ae09431f53a..ebd91aa69dd2 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2852,7 +2852,7 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
 		ddc_pin = rkl_port_to_ddc_pin(dev_priv, port);
 	else if (DISPLAY_VER(dev_priv) == 9 && HAS_PCH_TGP(dev_priv))
 		ddc_pin = gen9bc_tgp_port_to_ddc_pin(dev_priv, port);
-	else if (HAS_PCH_MCC(dev_priv))
+	else if (IS_JSL_EHL(dev_priv) && HAS_PCH_TGP(dev_priv))
 		ddc_pin = mcc_port_to_ddc_pin(dev_priv, port);
 	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
 		ddc_pin = icl_port_to_ddc_pin(dev_priv, port);
diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
index 94446cac6605..b45c504c6f03 100644
--- a/drivers/gpu/drm/i915/intel_pch.c
+++ b/drivers/gpu/drm/i915/intel_pch.c
@@ -116,7 +116,8 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 	case INTEL_PCH_MCC_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Mule Creek Canyon PCH\n");
 		drm_WARN_ON(&dev_priv->drm, !IS_JSL_EHL(dev_priv));
-		return PCH_MCC;
+		/* MCC is TGP compatible */
+		return PCH_TGP;
 	case INTEL_PCH_TGP_DEVICE_ID_TYPE:
 	case INTEL_PCH_TGP2_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Tiger Lake LP PCH\n");
diff --git a/drivers/gpu/drm/i915/intel_pch.h b/drivers/gpu/drm/i915/intel_pch.h
index b7a8cf409d48..07f6f5517968 100644
--- a/drivers/gpu/drm/i915/intel_pch.h
+++ b/drivers/gpu/drm/i915/intel_pch.h
@@ -24,8 +24,7 @@ enum intel_pch {
 	PCH_CNP,        /* Cannon/Comet Lake PCH */
 	PCH_ICP,	/* Ice Lake PCH */
 	PCH_JSP,	/* Jasper Lake PCH */
-	PCH_MCC,        /* Mule Creek Canyon PCH */
-	PCH_TGP,	/* Tiger Lake PCH */
+	PCH_TGP,	/* Tiger Lake/Mule Creek Canyon PCH */
 	PCH_ADP,	/* Alder Lake PCH */
 
 	/* Fake PCHs, functionality handled on the same PCI dev */
@@ -69,7 +68,6 @@ enum intel_pch {
 #define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ADP)
 #define HAS_PCH_DG1(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG1)
 #define HAS_PCH_JSP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_JSP)
-#define HAS_PCH_MCC(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_MCC)
 #define HAS_PCH_TGP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_TGP)
 #define HAS_PCH_ICP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ICP)
 #define HAS_PCH_CNP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_CNP)
-- 
2.35.1

