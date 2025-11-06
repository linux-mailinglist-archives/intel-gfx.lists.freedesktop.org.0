Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74058C3C01B
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 16:21:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E600A10E92B;
	Thu,  6 Nov 2025 15:21:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dSFAr5Pw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F0F110E929;
 Thu,  6 Nov 2025 15:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762442481; x=1793978481;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dzKCRMBj09k2g62G/NaV8vCkt0tuN6wdnD18XqXBfyY=;
 b=dSFAr5Pwf2O912VnyFdjAljT+B8H7ZCJaLmGerocqbl3YnqqT2m1Lirk
 E9aI7ctgpl6LfWFpD8eiaT/6pW8RdZ+Uc6ym0v4KHSFQvCUSHdNsZPYyL
 dO77j9gPuxDfOxCkdCNOetAzKMkAUEBH140nibwRkTdFPjTW5KUq/Baak
 AKJdfWtldyRh6QcMioAD2Y98aCuEfRZkj987+mb2j6dhNzVQRQ7P6mMT1
 8rH9LY/E9PlHIp5W/eRgifGuL2c46Y2veng3bU41GREj3bemTaxMumQej
 TwKinlAmURa3+CreDV3bCCoJX9ARSOmJuqx+XRqgpGf0YD54tJUoEkjj6 A==;
X-CSE-ConnectionGUID: tIB2OlvNT2CknVMIBDH59g==
X-CSE-MsgGUID: wQKV/UKuSVmMJ1675iFCGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="63788093"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="63788093"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:21:20 -0800
X-CSE-ConnectionGUID: 1JjLoFhsTnCNuwVfYVAlvQ==
X-CSE-MsgGUID: Wf37Yl77Ss2dqDYh3QytbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="192831039"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.213])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:21:18 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 07/10] drm/i915/cx0:
 s/XELPDP_PORT_RESET_END_TIMEOUT/XELPDP_PORT_RESET_END_TIMEOUT_US/
Date: Thu,  6 Nov 2025 17:20:46 +0200
Message-ID: <20251106152049.21115-8-ville.syrjala@linux.intel.com>
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

Include the units the in the define name for XELPDP_PORT_RESET_END_TIMEOUT
to make it match all its other counterparts.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index dd1429fa5028..b51075143cf5 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2926,7 +2926,7 @@ static void intel_cx0_phy_lane_reset(struct intel_encoder *encoder,
 
 	if (intel_de_wait_for_clear(display, XELPDP_PORT_BUF_CTL2(display, port),
 				    lane_phy_current_status,
-				    XELPDP_PORT_RESET_END_TIMEOUT))
+				    XELPDP_PORT_RESET_END_TIMEOUT_US))
 		drm_warn(display->drm,
 			 "PHY %c failed to bring out of lane reset\n",
 			 phy_name(phy));
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 715ca004516a..f0bfb0ac1816 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -80,7 +80,7 @@
 #define XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US		100
 #define XELPDP_PORT_RESET_START_TIMEOUT_US		5
 #define XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_MS		2
-#define XELPDP_PORT_RESET_END_TIMEOUT			15
+#define XELPDP_PORT_RESET_END_TIMEOUT_US		15
 #define XELPDP_REFCLK_ENABLE_TIMEOUT_US			1
 
 #define _XELPDP_PORT_BUF_CTL1_LN0_A			0x64004
-- 
2.49.1

