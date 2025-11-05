Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C71C376B3
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 20:04:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E142A10E384;
	Wed,  5 Nov 2025 19:04:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OJzETZTO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA96410E384;
 Wed,  5 Nov 2025 19:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762369496; x=1793905496;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PyZhm89qPu07KRSDnqSeXYksZnnqFFAoADIxzDVTdsg=;
 b=OJzETZTO+b/iznrAalotLTGKjxFKFULjoslRtpxgOP1ncST871qqPG+t
 xDcP4VJxLud6re+9SPE8TnWG3BBheUWVLkYmMg4oRZZVbynwoH78F7cd4
 ddvY+7v0fv8PoqHIJymgdNxZq1uc9Bc0m0I8xNdW3PlUJE66Zhx9LsA5I
 9rIC8Fha6iNYWxxNgVBmysPl3Vg0N0NEjMeKnU7fXgpk7G1R0CewUVF2f
 Zb8YkkUOCZfk+NxcnEjLKJWo8kj8+5cpTkYTR19U8ta+g126oiV3hI1zh
 lLyoHfZX21f9Q10MHm3OjTupAICwwAAfIKvvzZe7RRv34YmXjbAo0bFMi w==;
X-CSE-ConnectionGUID: t+URM/HxRaOplnUlyzjcZQ==
X-CSE-MsgGUID: XwGnN08wSlGEgkCf+RJrbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="75847960"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="75847960"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 11:04:56 -0800
X-CSE-ConnectionGUID: 6m2VOvcgTp20uCQuREShvA==
X-CSE-MsgGUID: hoeATvysRZCwPVKLsb3hZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="218191034"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.87])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 11:04:54 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 5/7] drm/i915/ltphy: Nuke bogus weird timeouts
Date: Wed,  5 Nov 2025 21:04:31 +0200
Message-ID: <20251105190433.16434-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251105190433.16434-1-ville.syrjala@linux.intel.com>
References: <20251105190433.16434-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

The LT PHY code is abusing intel_de_wait_custom() in all kinds of weird
ways. Get rid of the weird slow timeouts. If these are actually needed
then the fast timeouts should really be specified as the default 2
microscond or something.

This will let us eventually nuke intel_de_wait_custom() and convert
over to poll_timeout_us().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c      | 11 +++++------
 drivers/gpu/drm/i915/display/intel_lt_phy_regs.h |  1 -
 2 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 6fb68157b322..cc1d6b7a7de4 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1178,10 +1178,9 @@ intel_lt_phy_lane_reset(struct intel_encoder *encoder,
 	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
 				 XELPDP_LANE_PCLK_PLL_ACK(0),
 				 XELPDP_LANE_PCLK_PLL_ACK(0),
-				 XE3PLPD_MACCLK_TURNON_LATENCY_US,
-				 XE3PLPD_MACCLK_TURNON_LATENCY_MS, NULL))
+				 XE3PLPD_MACCLK_TURNON_LATENCY_US, 0, NULL))
 		drm_warn(display->drm, "PHY %c PLL MacCLK assertion Ack not done after %dus.\n",
-			 phy_name(phy), XE3PLPD_MACCLK_TURNON_LATENCY_MS * 1000);
+			 phy_name(phy), XE3PLPD_MACCLK_TURNON_LATENCY_US);
 
 	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
 		     XELPDP_FORWARD_CLOCK_UNGATE,
@@ -1192,7 +1191,7 @@ intel_lt_phy_lane_reset(struct intel_encoder *encoder,
 
 	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
 				 lane_phy_current_status, 0,
-				 XE3PLPD_RESET_END_LATENCY_US, 2, NULL))
+				 XE3PLPD_RESET_END_LATENCY_US, 0, NULL))
 		drm_warn(display->drm,
 			 "PHY %c failed to bring out of Lane reset after %dus.\n",
 			 phy_name(phy), XE3PLPD_RESET_END_LATENCY_US);
@@ -1674,7 +1673,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 		if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
 					 XELPDP_LANE_PCLK_PLL_ACK(0),
 					 XELPDP_LANE_PCLK_PLL_ACK(0),
-					 XE3PLPD_MACCLK_TURNON_LATENCY_US, 2, NULL))
+					 XE3PLPD_MACCLK_TURNON_LATENCY_US, 0, NULL))
 			drm_warn(display->drm, "PHY %c PLL MacCLK Ack assertion Timeout after %dus.\n",
 				 phy_name(phy), XE3PLPD_MACCLK_TURNON_LATENCY_US);
 
@@ -1702,7 +1701,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 		/* 16. Poll for PORT_BUF_CTL2 register PHY Pulse Status = 1 for Owned PHY Lanes. */
 		if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
 					 lane_phy_pulse_status, lane_phy_pulse_status,
-					 XE3PLPD_RATE_CALIB_DONE_LATENCY_US, 2, NULL))
+					 XE3PLPD_RATE_CALIB_DONE_LATENCY_US, 0, NULL))
 			drm_warn(display->drm, "PHY %c PLL rate not changed after %dus.\n",
 				 phy_name(phy), XE3PLPD_RATE_CALIB_DONE_LATENCY_US);
 
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
index 9223487d764e..36abc2bdbd9b 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
@@ -7,7 +7,6 @@
 #define __INTEL_LT_PHY_REGS_H__
 
 #define XE3PLPD_MSGBUS_TIMEOUT_FAST_US	500
-#define XE3PLPD_MACCLK_TURNON_LATENCY_MS	1
 #define XE3PLPD_MACCLK_TURNON_LATENCY_US	21
 #define XE3PLPD_MACCLK_TURNOFF_LATENCY_US	1
 #define XE3PLPD_RATE_CALIB_DONE_LATENCY_US	50
-- 
2.49.1

