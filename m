Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C46C376AD
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 20:04:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C27E010E374;
	Wed,  5 Nov 2025 19:04:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ljus9GaW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD3BB10E32E;
 Wed,  5 Nov 2025 19:04:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762369488; x=1793905488;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7Td0rOuGSmEAyDsThNvcoX4WMZX/NDfqlhCG75d2N88=;
 b=Ljus9GaWSbWWZDMsnIcxHfcwayTDpx8l+2WOK9urbYH4IgAUb+25Y16G
 UProbxeep5kEljZ13+C/hLQJMxnIYimxuVeWEjMFYa7sV6apT7qt0htUQ
 PygoTPDno7x3MuCgG7riWh5wHgtdgGqbIMSOAJD/57HgHmhoeBDy+HCt5
 l2kcwl4aVAccRmZST69z244W4uNduB4b6viMsh7U5Gaj7YOIiDDwtllrL
 /+Vk0eyt9i7l+SY0824L7g8ZLp5cr4pOVS5Gi2O/tG7/s9zYHyybEWnd6
 /3rnOymS6th73C5zDwfKQgcsZ1coh8/6YNzyf6BMC3MgaomWph0ACYsWV A==;
X-CSE-ConnectionGUID: NuuyCP8qT6ujlCZ9qIhXeg==
X-CSE-MsgGUID: 95yn++KtTR2VeZM1YPhpdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="64409570"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="64409570"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 11:04:48 -0800
X-CSE-ConnectionGUID: X2jwQ88lRauzFKAZBTR6Rg==
X-CSE-MsgGUID: wquG2op4Qn+YQsnqCWWurA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="188261701"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.244.87])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 11:04:46 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/7] drm/i915/cx0:
 s/XELPDP_MSGBUS_TIMEOUT_SLOW/XELPDP_MSGBUS_TIMEOUT_MS/
Date: Wed,  5 Nov 2025 21:04:29 +0200
Message-ID: <20251105190433.16434-4-ville.syrjala@linux.intel.com>
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

The slow vs. fast timeout stuff is really just an implementation
detail. Let's not spread that terminology in random timeout defines.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 12 ++++++------
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h |  2 +-
 drivers/gpu/drm/i915/display/intel_lt_phy.c       |  2 +-
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 6f57ad751c9e..55ce4f673c63 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -147,7 +147,7 @@ void intel_cx0_bus_reset(struct intel_encoder *encoder, int lane)
 
 	if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
 				    XELPDP_PORT_M2P_TRANSACTION_RESET,
-				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
+				    XELPDP_MSGBUS_TIMEOUT_MS)) {
 		drm_err_once(display->drm,
 			     "Failed to bring PHY %c to idle.\n",
 			     phy_name(phy));
@@ -168,7 +168,7 @@ int intel_cx0_wait_for_ack(struct intel_encoder *encoder,
 				 XELPDP_PORT_P2M_MSGBUS_STATUS(display, port, lane),
 				 XELPDP_PORT_P2M_RESPONSE_READY,
 				 XELPDP_PORT_P2M_RESPONSE_READY,
-				 2, XELPDP_MSGBUS_TIMEOUT_SLOW, val)) {
+				 2, XELPDP_MSGBUS_TIMEOUT_MS, val)) {
 		drm_dbg_kms(display->drm,
 			    "PHY %c Timeout waiting for message ACK. Status: 0x%x\n",
 			    phy_name(phy), *val);
@@ -215,7 +215,7 @@ static int __intel_cx0_read_once(struct intel_encoder *encoder,
 
 	if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
 				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
-				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
+				    XELPDP_MSGBUS_TIMEOUT_MS)) {
 		drm_dbg_kms(display->drm,
 			    "PHY %c Timeout waiting for previous transaction to complete. Reset the bus and retry.\n", phy_name(phy));
 		intel_cx0_bus_reset(encoder, lane);
@@ -286,7 +286,7 @@ static int __intel_cx0_write_once(struct intel_encoder *encoder,
 
 	if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
 				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
-				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
+				    XELPDP_MSGBUS_TIMEOUT_MS)) {
 		drm_dbg_kms(display->drm,
 			    "PHY %c Timeout waiting for previous transaction to complete. Resetting the bus.\n", phy_name(phy));
 		intel_cx0_bus_reset(encoder, lane);
@@ -302,7 +302,7 @@ static int __intel_cx0_write_once(struct intel_encoder *encoder,
 
 	if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
 				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
-				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
+				    XELPDP_MSGBUS_TIMEOUT_MS)) {
 		drm_dbg_kms(display->drm,
 			    "PHY %c Timeout waiting for write to complete. Resetting the bus.\n", phy_name(phy));
 		intel_cx0_bus_reset(encoder, lane);
@@ -2815,7 +2815,7 @@ void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
 	for_each_cx0_lane_in_mask(lane_mask, lane)
 		if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
 					    XELPDP_PORT_M2P_TRANSACTION_PENDING,
-					    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
+					    XELPDP_MSGBUS_TIMEOUT_MS)) {
 			drm_dbg_kms(display->drm,
 				    "PHY %c Timeout waiting for previous transaction to complete. Reset the bus.\n",
 				    phy_name(phy));
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 67c6f06ab9a2..bd62c396c837 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -74,7 +74,7 @@
 #define   XELPDP_PORT_P2M_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_P2M_DATA_MASK, val)
 #define   XELPDP_PORT_P2M_ERROR_SET			REG_BIT(15)
 
-#define XELPDP_MSGBUS_TIMEOUT_SLOW			1
+#define XELPDP_MSGBUS_TIMEOUT_MS			1
 #define XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US		3200
 #define XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US		20
 #define XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US		100
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index af48d6cde226..6fb68157b322 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1043,7 +1043,7 @@ static int __intel_lt_phy_p2p_write_once(struct intel_encoder *encoder,
 
 	if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
 				    XELPDP_PORT_P2P_TRANSACTION_PENDING,
-				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
+				    XELPDP_MSGBUS_TIMEOUT_MS)) {
 		drm_dbg_kms(display->drm,
 			    "PHY %c Timeout waiting for previous transaction to complete. Resetting bus.\n",
 			    phy_name(phy));
-- 
2.49.1

