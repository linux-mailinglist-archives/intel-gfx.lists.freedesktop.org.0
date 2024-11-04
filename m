Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C51D49BABAD
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 05:08:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2114810E377;
	Mon,  4 Nov 2024 04:08:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h+pfBchy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DCCD10E375;
 Mon,  4 Nov 2024 04:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730693322; x=1762229322;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WpEJJk+woD0RIyqomlC3adId50zxPFjqbokXA8WUWqs=;
 b=h+pfBchys6mxPOX1IsGHcKtH2ANZQ+Uy2zdI9iTs8Vtm0GYb8fZBDFcj
 6Y0PBH3ZhINJq0j4AkLOcp/Uelhtj32F8DHLjUAS7OHpfXcp0oUXSVY1P
 PFckns8fAGdA9wXPJQj8tbRSXF+AFTGt3axERoG+5zxpH7B/OI+GF0jhb
 gnn8PiW3blgxkcPTMTEKq43dr6qto4y9lySnugX26zn/54HSIqdUJ6Fvd
 Vyvnw+c4m7q0yC7BpfKNwX2VKK11gQ0I2Aks/fPzhY8Qr48zCBu/kRBEb
 KhjkLoUZciYpmztBAtUgD7fW4p21l6Tpyze0mZfJ14K5UhIVn+uL/DmRu A==;
X-CSE-ConnectionGUID: 0b+UWNuBRRiUGU7SrHyouw==
X-CSE-MsgGUID: mB+J1gSkQ2GlZ/KLUHQ/pA==
X-IronPort-AV: E=McAfee;i="6700,10204,11245"; a="34165999"
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="34165999"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2024 20:08:42 -0800
X-CSE-ConnectionGUID: JlWK396mQOy8K7km4gfN6g==
X-CSE-MsgGUID: TYBPngEMQiSA2RhKP0L5tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,256,1725346800"; d="scan'208";a="83636897"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa008.fm.intel.com with ESMTP; 03 Nov 2024 20:08:40 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>,
 Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [RESEND PATCHv2 3/3] drm/i915/dp: Include the time taken by AUX Tx
 for timeout
Date: Mon,  4 Nov 2024 09:28:59 +0530
Message-Id: <20241104035859.3796797-3-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241104035859.3796797-1-arun.r.murthy@intel.com>
References: <20241104035859.3796797-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
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

As per DP spec the timeout for LANE_CHANNEL_EQ_DONE is 400ms. But this
timeout value is exclusively for the Aux RD Interval and excludes the
time consumed for the AUX Tx (i.e reading/writing FFE presets). Add
another 50ms for these AUX Tx to the 400ms timeout.
Ref: "Figure 3-52: 128b132b DP DPTC LANEx_CHANNEL_EQ_DONE Sequence" of
DP2.1a spec.

Co-developed-by: Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Acked-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index a48a70ca4fb3..ea9b4730a176 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1414,7 +1414,7 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
 	}
 
 	/* Time budget for the LANEx_EQ_DONE Sequence */
-	deadline = jiffies + msecs_to_jiffies_timeout(400);
+	deadline = jiffies + msecs_to_jiffies_timeout(450);
 
 	for (try = 0; try < max_tries; try++) {
 		fsleep(delay_us);
-- 
2.25.1

