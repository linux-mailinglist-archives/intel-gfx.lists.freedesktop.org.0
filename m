Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD05C3C00F
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 16:21:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AF6410E923;
	Thu,  6 Nov 2025 15:21:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aHPUCU6c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FA5810E923;
 Thu,  6 Nov 2025 15:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762442469; x=1793978469;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sS8S1Yd/u85TnNPwyp36aauwJK/qQ+eLOVbSqIMrdUA=;
 b=aHPUCU6cEfAjg28RGFFSdXNZMOgID/N4ELq0ubn88Be9x6rhNYLFzh5j
 51b9o/2XntEyZGDB5Eu4j9cd+m64UJUe28KhPzEy5W/7lFbLdLbjl7VbL
 8AqxUJzDWy3WLx1kejJ72BhyBQfHSoiaZFFOvgKfj/aw1NfygmDbBdNVr
 gMlhTBs5S5hSUmDHqYxNMof+PyZisdM/gymfoQropKMS2VB7RfewarAHE
 Z0sc5zuxdVDbFGu8U5mTpyG9mZ+MPSxcNTnge/etVstOK/TjBHG1s6bN6
 42fQ2CQA0ai3xYywUZYF8DhBciEKoMdgo3IXDvs01VrFJtKLjtYwgYAzt Q==;
X-CSE-ConnectionGUID: J7p/yiDSRI6rr7SpSjH6MA==
X-CSE-MsgGUID: G8K6QveDTXuAAfV/oGlwMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="75269330"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="75269330"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:21:08 -0800
X-CSE-ConnectionGUID: ZwZ3m8+pQMSRNpS6H60rIA==
X-CSE-MsgGUID: drRMI/YZTLygAt8pOV6RnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="218535559"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.213])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:21:07 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 04/10] drm/i915/cx0: Replace
 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US with
 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_MS
Date: Thu,  6 Nov 2025 17:20:43 +0200
Message-ID: <20251106152049.21115-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
References: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
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

There was a completely unjustified change to the cx0 powerdown
timeout, and the way it was done now prevents future conversion
to poll_timeout_us().

Assuming there was some reason the bigger timeout let's nuke
the old short timeout (XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US)
nd replace it with the bigger timeout
(XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_MS).

v2: Go for the longer (ms) timeout in case it actually matters

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index ddc26e383714..e8a96a60fdd6 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2830,7 +2830,7 @@ void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
 	/* Update Timeout Value */
 	if (intel_de_wait_custom(display, buf_ctl2_reg,
 				 intel_cx0_get_powerdown_update(lane_mask), 0,
-				 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 2, NULL))
+				 2, XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_MS, NULL))
 		drm_warn(display->drm,
 			 "PHY %c failed to bring out of lane reset\n",
 			 phy_name(phy));
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 635b35669348..62db0fd99f4a 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -80,7 +80,7 @@
 #define XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US		20
 #define XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US		100
 #define XELPDP_PORT_RESET_START_TIMEOUT_US		5
-#define XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US		100
+#define XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_MS		2
 #define XELPDP_PORT_RESET_END_TIMEOUT			15
 #define XELPDP_REFCLK_ENABLE_TIMEOUT_US			1
 
-- 
2.49.1

