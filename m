Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87BD41DC3EA
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 02:39:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 606506E8F0;
	Thu, 21 May 2020 00:38:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3F936E8DA
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 00:38:14 +0000 (UTC)
IronPort-SDR: YjYf4FWRYA0ftN2XeF/9tIUtYPYrMfCpEfHAVMptJFCMsRI5W+gGfPS3lpzCfvGDEhHDLfGsZv
 Jnr9Ipa2bLIA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 17:38:14 -0700
IronPort-SDR: L0ZN61DnQ1ygdsi5uPBwIz6EmnYAmBEHf0ECM/VOUG/GJIZdriX4kQESxtXpnErNzBGSgS1a5o
 dw8x1uGMsgTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,415,1583222400"; d="scan'208";a="466720957"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 20 May 2020 17:38:14 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 17:37:58 -0700
Message-Id: <20200521003803.18936-33-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200521003803.18936-1-lucas.demarchi@intel.com>
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 32/37] drm/i915/dg1: provide port/phy mapping
 for vbt
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
Cc: fernando.pacheco@intel.com, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Matt Roper <matthew.d.roper@intel.com>

As with RKL, DG1's VBT outputs are indexed according to PHY rather than
DDI.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 9349364f4164..fb7b5e2f033e 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1670,7 +1670,7 @@ static enum port dvo_port_to_port(struct drm_i915_private *dev_priv,
 		[PORT_E] = { DVO_PORT_HDMID, DVO_PORT_DPD, -1 },
 	};
 
-	if (IS_ROCKETLAKE(dev_priv))
+	if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
 		return __dvo_port_to_port(ARRAY_SIZE(rkl_port_mapping),
 					  ARRAY_SIZE(rkl_port_mapping[0]),
 					  rkl_port_mapping,
@@ -2635,10 +2635,12 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *dev_priv,
 		aux_ch = AUX_CH_B;
 		break;
 	case DP_AUX_C:
-		aux_ch = IS_ROCKETLAKE(dev_priv) ? AUX_CH_D : AUX_CH_C;
+		aux_ch = (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv)) ?
+			AUX_CH_D : AUX_CH_C;
 		break;
 	case DP_AUX_D:
-		aux_ch = IS_ROCKETLAKE(dev_priv) ? AUX_CH_E : AUX_CH_D;
+		aux_ch = (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv)) ?
+			AUX_CH_E : AUX_CH_D;
 		break;
 	case DP_AUX_E:
 		aux_ch = AUX_CH_E;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
