Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F81321B472
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 14:00:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D64186EBF4;
	Fri, 10 Jul 2020 11:59:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68F786EBF4
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 11:59:58 +0000 (UTC)
IronPort-SDR: Bozhnmn558Dd9imTFQIhujmIkUTxUccmz+V3bGjPcg1/3cvXcAUQfjXdHRQxR1tpP66kRvbg2Z
 I2FerCmrhBzw==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="149653712"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="149653712"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 04:59:58 -0700
IronPort-SDR: XbAq+yx9s8J0Y4VbAAHoqaGNsIAtVhUTj7QfU+2gZcKE206F6+PaxKRb3ZK8eKqAXmVroPCoEu
 sm3ZbaT8DJsw==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458257511"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 04:59:56 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:19 +0100
Message-Id: <20200710115757.290984-23-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 22/60] drm/i915/dg1: provide port/phy mapping for
 vbt
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
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
index b6a0f5e5a9a6..2516f561fb8d 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1673,7 +1673,7 @@ static enum port dvo_port_to_port(struct drm_i915_private *dev_priv,
 		[PORT_E] = { DVO_PORT_HDMID, DVO_PORT_DPD, -1 },
 	};
 
-	if (IS_ROCKETLAKE(dev_priv))
+	if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
 		return __dvo_port_to_port(ARRAY_SIZE(rkl_port_mapping),
 					  ARRAY_SIZE(rkl_port_mapping[0]),
 					  rkl_port_mapping,
@@ -2638,10 +2638,12 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *dev_priv,
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
