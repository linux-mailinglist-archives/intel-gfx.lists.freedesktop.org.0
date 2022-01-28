Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1600C49F8A3
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 12:49:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 263E710E6FC;
	Fri, 28 Jan 2022 11:49:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 503FE10E714
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 11:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643370559; x=1674906559;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=bqAKE3y/zjlgcZ8VUK58GX3h92ohNdY6vBogZk4+AY4=;
 b=beiJf8tv/Qdl1vrL6rcYPRXO6ZyBE9vaDkxSoyFwdUyAc/V6MB+GkEoQ
 +PAVWPPk4Q4T6kKfsynzl6WwYYL/g2xVQt7gpKmd34ILU+bgtNOp8lL8s
 MLeFqToSr+MoxUI/Au9CA4IfLOn3Q+vSmKST65B3EMFMKUSaHMS0Uzwoa
 1+MY+GY2UvImkMa27SO5tIVZV8EvCzm+qj69/xit13uhoKqEZu6KxpUMA
 72qjCyjVqmlpNqlw+nnNFpNSn/+m9UoJdh3kGA9LJSOWwFfrELq6fIO0M
 nr9noNTiibRFyo0Prh7os1x0Uo3ANB2MIkdTvl+BmyGp5yCyccpLtGwoL A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="310420911"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="310420911"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="480712814"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:18 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 13:48:56 +0200
Message-Id: <20220128114914.2339526-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220128114914.2339526-1-imre.deak@intel.com>
References: <20220128114914.2339526-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/19] drm/i915: Fix the VDSC_PW2 power domain
 enum value
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
index 369317805d245..e64d407e7b8db 100644
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
index 686d18eaa24c8..a3997f05cd89b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -15,6 +15,11 @@ struct drm_i915_private;
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
@@ -30,10 +35,12 @@ enum intel_display_power_domain {
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

