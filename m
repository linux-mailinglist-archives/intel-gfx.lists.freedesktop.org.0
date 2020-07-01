Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0B52116E5
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 01:55:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A4606EA24;
	Wed,  1 Jul 2020 23:54:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BDF16EA18
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 23:54:52 +0000 (UTC)
IronPort-SDR: HhCUP/175Mx8doLM3m/9h5hs246ieEm9q4LmU/3lHW6jxFPW2pt0La5gG9bfVTN7BDIGGH/AXK
 HvKUxK5BSsIw==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="164785972"
X-IronPort-AV: E=Sophos;i="5.75,302,1589266800"; d="scan'208";a="164785972"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 16:54:51 -0700
IronPort-SDR: ly9thFtfaj0/6uY0zMrnryzoYuCEy5kQz58aSJVYa1bCCpZ/SMI/i8UWTpSP8H7U4OrS3Ss9KC
 7kL2SswATYFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,302,1589266800"; d="scan'208";a="356276412"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga001.jf.intel.com with ESMTP; 01 Jul 2020 16:54:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 16:53:33 -0700
Message-Id: <20200701235339.32608-23-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200701235339.32608-1-lucas.demarchi@intel.com>
References: <20200701235339.32608-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 22/28] drm/i915/dg1: provide port/phy mapping
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
index f1fc0c9bf9eb..1f63e734db8c 100644
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
