Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A77583660
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 03:35:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 301D510EAA9;
	Thu, 28 Jul 2022 01:35:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94EA010E13C
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 01:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658972080; x=1690508080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/XpSebmd8Cj7kct8aDMFE1IMqBv1hSeU3hhFZr57KzU=;
 b=KMFuLE1O96wvGb5g7KFgzZ8ROqA6qccOibO18nwmxdDs9y2DZMY24t3D
 yvagFCayTrrAJ9n8qUTtjZ1IuhEjVYR74J13OaTgApDd/KYFDba8zbNXz
 gN3p+H2Xw3IR5g8oJ0YNsCpyjvkt9ShMeUKA+tJtu1okfzn8Gn0zNS2qB
 WT5URtitwAvp0rei5B9xAyCFZJaf3axC7qYAV3DwsfU4me0crL0og4Qac
 L427UFdJzEf6yMcuPWJOyaA/iUH/RcnX32LZOUuDcPNUmjMuoVuytK7JI
 ZFmtoB5peWF4dmVDtOtsnDIM3bl75wunMM9PNfTx8kSlDoKw4rSvIApG2 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="374693656"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="374693656"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:39 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659456990"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:39 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 18:34:05 -0700
Message-Id: <20220728013420.3750388-9-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/23] drm/i915/mtl: Add VBT port and AUX_CH
 mapping
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

From: Imre Deak <imre.deak@intel.com>

Add the proper VBT port,AUX_CH -> i915 port,AUX_CH mapping which just
follows the ADL_P one.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 51dde5bfd956..2971505bcf2a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2418,7 +2418,7 @@ static enum port dvo_port_to_port(struct drm_i915_private *i915,
 		[PORT_TC4] = { DVO_PORT_HDMII, DVO_PORT_DPI, -1 },
 	};
 
-	if (DISPLAY_VER(i915) == 13)
+	if (DISPLAY_VER(i915) >= 13)
 		return __dvo_port_to_port(ARRAY_SIZE(xelpd_port_mapping),
 					  ARRAY_SIZE(xelpd_port_mapping[0]),
 					  xelpd_port_mapping,
@@ -3576,7 +3576,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
 			aux_ch = AUX_CH_C;
 		break;
 	case DP_AUX_D:
-		if (DISPLAY_VER(i915) == 13)
+		if (DISPLAY_VER(i915) >= 13)
 			aux_ch = AUX_CH_D_XELPD;
 		else if (IS_ALDERLAKE_S(i915))
 			aux_ch = AUX_CH_USBC3;
@@ -3586,7 +3586,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
 			aux_ch = AUX_CH_D;
 		break;
 	case DP_AUX_E:
-		if (DISPLAY_VER(i915) == 13)
+		if (DISPLAY_VER(i915) >= 13)
 			aux_ch = AUX_CH_E_XELPD;
 		else if (IS_ALDERLAKE_S(i915))
 			aux_ch = AUX_CH_USBC4;
@@ -3594,25 +3594,25 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
 			aux_ch = AUX_CH_E;
 		break;
 	case DP_AUX_F:
-		if (DISPLAY_VER(i915) == 13)
+		if (DISPLAY_VER(i915) >= 13)
 			aux_ch = AUX_CH_USBC1;
 		else
 			aux_ch = AUX_CH_F;
 		break;
 	case DP_AUX_G:
-		if (DISPLAY_VER(i915) == 13)
+		if (DISPLAY_VER(i915) >= 13)
 			aux_ch = AUX_CH_USBC2;
 		else
 			aux_ch = AUX_CH_G;
 		break;
 	case DP_AUX_H:
-		if (DISPLAY_VER(i915) == 13)
+		if (DISPLAY_VER(i915) >= 13)
 			aux_ch = AUX_CH_USBC3;
 		else
 			aux_ch = AUX_CH_H;
 		break;
 	case DP_AUX_I:
-		if (DISPLAY_VER(i915) == 13)
+		if (DISPLAY_VER(i915) >= 13)
 			aux_ch = AUX_CH_USBC4;
 		else
 			aux_ch = AUX_CH_I;
-- 
2.25.1

