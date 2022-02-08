Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE06D4AD778
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 12:37:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE62810E587;
	Tue,  8 Feb 2022 11:37:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60D7C10E437
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 11:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644320226; x=1675856226;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=r5i8m9ZEaOFn5IOJk8UegRhwad9dK4SPCzR0Ey9+RGI=;
 b=T5iyj7iZtO9kSCSW1HEknH+7pISzfLQrK8seYFBOPPHGjOEPwEKRGeka
 DxT6iRPeB2yjreCj27PycpzKMOGfljO/USL+86WwNLR/U6C0wG+W0BQKf
 DrGOzSdrBzg6u3tc/fp1pepEEdZ2L5Czg6ySNm8ITzuSjSvj2u5AQPZwe
 bvcLoTshQygBr22qKfHMOccPf/v8QDpxsyQ6787TqGHtqGW6ISdxHwc9q
 TApgoV4Wuay+xq3LdjhuSt8Skp0OUCwxuHopxm32tP6+lNe8ET9Idvvu6
 kIgJ+FmxggqV65GbVo6PeFvOHw5jprX0U+g5RiNrFD12HUqI+1lXm3WWt g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="228898355"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="228898355"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:03 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="481915207"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:00 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Feb 2022 13:36:31 +0200
Message-Id: <20220208113656.179823-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220208113656.179823-1-imre.deak@intel.com>
References: <20220208113656.179823-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/26] drm/i915: Fix the VDSC_PW2 power
 domain enum value
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

The POWER_DOMAIN_TRANSCODER() macro depends on the
POWER_DOMAIN_TRANSCODER_A/B .. DSI_A/C enum values to be consecutive,
move POWER_DOMAIN_TRANSCODER_VDSC_PW2 after these to ensure this. The
wrong order didn't cause a problem, since the DSI_A/C domains are in
always-on power wells on all relevant platforms. The same power well
ends up being enabled/disabled when the VDSC_PW2 domain is selected
incorrectly.

While at it add a code comment about enum values that need to stay
consecutive.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c |  4 ++--
 drivers/gpu/drm/i915/display/intel_display_power.h | 11 +++++++++--
 2 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index d2102cc17bb4c..143f5c0e1f43c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -152,12 +152,12 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
 		return "TRANSCODER_D";
 	case POWER_DOMAIN_TRANSCODER_EDP:
 		return "TRANSCODER_EDP";
-	case POWER_DOMAIN_TRANSCODER_VDSC_PW2:
-		return "TRANSCODER_VDSC_PW2";
 	case POWER_DOMAIN_TRANSCODER_DSI_A:
 		return "TRANSCODER_DSI_A";
 	case POWER_DOMAIN_TRANSCODER_DSI_C:
 		return "TRANSCODER_DSI_C";
+	case POWER_DOMAIN_TRANSCODER_VDSC_PW2:
+		return "TRANSCODER_VDSC_PW2";
 	case POWER_DOMAIN_PORT_DDI_A_LANES:
 		return "PORT_DDI_A_LANES";
 	case POWER_DOMAIN_PORT_DDI_B_LANES:
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index f6d0e6e73c6d9..f28aa4b500c42 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -14,6 +14,11 @@ struct drm_i915_private;
 struct i915_power_well;
 struct intel_encoder;
 
+/*
+ * Keep the pipe, transcoder, port (DDI_LANES,DDI_IO,AUX) domain instances
+ * consecutive, so that the pipe,transcoder,port -> power domain macros
+ * work correctly.
+ */
 enum intel_display_power_domain {
 	POWER_DOMAIN_DISPLAY_CORE,
 	POWER_DOMAIN_PIPE_A,
@@ -29,10 +34,12 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_TRANSCODER_C,
 	POWER_DOMAIN_TRANSCODER_D,
 	POWER_DOMAIN_TRANSCODER_EDP,
-	/* VDSC/joining for eDP/DSI transcoder (ICL) or pipe A (TGL) */
-	POWER_DOMAIN_TRANSCODER_VDSC_PW2,
 	POWER_DOMAIN_TRANSCODER_DSI_A,
 	POWER_DOMAIN_TRANSCODER_DSI_C,
+
+	/* VDSC/joining for eDP/DSI transcoder (ICL) or pipe A (TGL) */
+	POWER_DOMAIN_TRANSCODER_VDSC_PW2,
+
 	POWER_DOMAIN_PORT_DDI_A_LANES,
 	POWER_DOMAIN_PORT_DDI_B_LANES,
 	POWER_DOMAIN_PORT_DDI_C_LANES,
-- 
2.27.0

