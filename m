Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C6E4BFF46
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 17:51:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AB3110E892;
	Tue, 22 Feb 2022 16:51:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34D9A10E893
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Feb 2022 16:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645548702; x=1677084702;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+qXgp+trh6uKXI4QukxG53A35pQ5zaqHoCZ8Pv3Nel4=;
 b=XypNSgRWfNJTOCJNMgXXC0SMJ7LbiQymVKJanbChhKce4qWdP/5teAhT
 dtIkvIroEztbprxHh1DgH5zlFGiVU2o82W9UeKgErpF8SMiZeTgWx/sOU
 KbbDxtJikiFwnpRRS92vyCVrBA/zaSnYdmeVx59+M56ARe35mJbm+pyjd
 xtUHGA+hko1gThAZ3j56k2g/8MTB91ILjD0RF0kVZf9UiIMKIR7hZ/IaK
 Z2KswGeqAOH1+2P+7lLs/uJHXGIXk27bN49tA1oO16RIRHS/Q0OXbtndh
 ANzhmppvZwKF8NEe3RzhzY5CqxEgbqSPdXIlH9Qg1RjGAfx2en3niucd/ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="314985504"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="314985504"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 08:51:42 -0800
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="547828244"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 08:51:40 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Feb 2022 18:51:30 +0200
Message-Id: <20220222165137.1004194-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220222165137.1004194-1-imre.deak@intel.com>
References: <20220222165137.1004194-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/8] drm/i915: Fix the VDSC_PW2 power domain
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
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c |  4 ++--
 drivers/gpu/drm/i915/display/intel_display_power.h | 11 +++++++++--
 2 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 9ebae7ac32356..4ca0e61ca5932 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -153,12 +153,12 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
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

