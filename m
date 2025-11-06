Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CE3C3C2E0
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 16:52:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4F8B10E938;
	Thu,  6 Nov 2025 15:52:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nPTeAVzF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 469E610E938;
 Thu,  6 Nov 2025 15:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762444374; x=1793980374;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qwm0zKAescSS4O7pIqHNqAnkZngQbauRcMO25l7Sjy0=;
 b=nPTeAVzF/3tgnnqn3bZO7Z3W9QUmJH61BKnHjeERUx9sfzg46FUJx0Eq
 /rJAu+mI++uLM5WYJDRGYuzs5PHho5hjTrzaeWDu6Ek5vzBQu0NB6gc5r
 AP2jayOAHC3RabuJ68GZ2sw4gOh2xW+pdE0jAo19KhW1YphnKVU/PyI0j
 VYdAS4JFIu+m0epdyx5HLpK2DAMKKlWFjVrnCK974ZIgkML04kvdm5lGQ
 MSoj2dukvG2fsDouD/q9/acBvptj/N39bddaSOwSBxouf81fOG2Hevksi
 G1xBs3gBgTzS4Xr0AzrvzHkK49V7/bZT0xl0XWIgVbn0gC66q2ocUQiLr w==;
X-CSE-ConnectionGUID: N9Gai7H3SnCYEs8EJqL1iQ==
X-CSE-MsgGUID: sHUn2XgOQp6UXhc0n9PbPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="68445128"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="68445128"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:52:54 -0800
X-CSE-ConnectionGUID: cO9osaIvTxq7qaXHSChA5Q==
X-CSE-MsgGUID: Qcg2bEYqQtuRtMminWGAKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="225037855"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.213])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:52:52 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 07/10] drm/i915/cx0:
 s/XELPDP_PORT_RESET_END_TIMEOUT/XELPDP_PORT_RESET_END_TIMEOUT_MS/
Date: Thu,  6 Nov 2025 17:52:49 +0200
Message-ID: <20251106155249.2810-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251106152049.21115-8-ville.syrjala@linux.intel.com>
References: <20251106152049.21115-8-ville.syrjala@linux.intel.com>
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

v2: It's _MS not _US (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index dd1429fa5028..1551d30ec584 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2926,7 +2926,7 @@ static void intel_cx0_phy_lane_reset(struct intel_encoder *encoder,
 
 	if (intel_de_wait_for_clear(display, XELPDP_PORT_BUF_CTL2(display, port),
 				    lane_phy_current_status,
-				    XELPDP_PORT_RESET_END_TIMEOUT))
+				    XELPDP_PORT_RESET_END_TIMEOUT_MS))
 		drm_warn(display->drm,
 			 "PHY %c failed to bring out of lane reset\n",
 			 phy_name(phy));
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 715ca004516a..8df5cd5ce418 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -80,7 +80,7 @@
 #define XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US		100
 #define XELPDP_PORT_RESET_START_TIMEOUT_US		5
 #define XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_MS		2
-#define XELPDP_PORT_RESET_END_TIMEOUT			15
+#define XELPDP_PORT_RESET_END_TIMEOUT_MS		15
 #define XELPDP_REFCLK_ENABLE_TIMEOUT_US			1
 
 #define _XELPDP_PORT_BUF_CTL1_LN0_A			0x64004
-- 
2.49.1

