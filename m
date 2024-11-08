Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F24FC9C1D91
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 14:03:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92DB810E9AC;
	Fri,  8 Nov 2024 13:03:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mz3ACd8/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 726D810E97C;
 Fri,  8 Nov 2024 13:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731071005; x=1762607005;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LqcFK/TmYZMoq2cOnMb1ZurbNOcL7clXuUs1T6a/9eo=;
 b=Mz3ACd8/0EHuWZawKzEYXlYPFZawmeeSdlu7OYc5/GAxFQA/7PR22+R+
 ITMjyCb/SoRCwim2ItCCab3xPHfWNSCc6KlTYw9FW1+S9B23u9Ua5bG5F
 t3U2GptsKyOeQvfxfCLxlMoTjNWLqXkECY/Y6r5hv3slZi41g9xN0gMTH
 x02nWhaQbOnmoVzIFCS+KFrkRwlqQIbUah5bjXjvB4649sruS7XyFXygc
 +CjG+pOJZ7zja3gdyWBMVihq4x+Trgt9drAq6D3ozwdR+pOVqcLbcETYR
 ftkfbnvRoOe3TUpGpu5L1Qjy5yYMJk+UnvbefNI0bweqOkfzxHX6RV40y g==;
X-CSE-ConnectionGUID: Dzkb5zKfR3CIq9LdSK934w==
X-CSE-MsgGUID: qly9CZeeTjW3Q0EvUejg9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41513173"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41513173"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:03:24 -0800
X-CSE-ConnectionGUID: UwQQagvSQFKgPKnmNYAxWw==
X-CSE-MsgGUID: z1yZZxiMSv+jS71WqqN6qA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="85692502"
Received: from ldmartin-desk2.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.232])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:03:03 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v4 13/15] drm/i915/dmc_wl: Add and use HAS_DMC_WAKELOCK()
Date: Fri,  8 Nov 2024 09:57:18 -0300
Message-ID: <20241108130218.24125-14-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241108130218.24125-1-gustavo.sousa@intel.com>
References: <20241108130218.24125-1-gustavo.sousa@intel.com>
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

A HAS_DMC_WAKELOCK() macro gives more semantic than openly checking the
display version. Define it and use it where appropriate.

v2:
  - Make this patch contain only the non-functional refactor. Functional
    changes related to including HAS_DMC() in the macro are done in
    upcoming changes. (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 drivers/gpu/drm/i915/display/intel_dmc_wl.c         | 4 ++--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 14d16d111ae3..a8a0b4332247 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -147,6 +147,7 @@ struct intel_display_platforms {
 #define HAS_DDI(i915)			(DISPLAY_INFO(i915)->has_ddi)
 #define HAS_DISPLAY(i915)		(DISPLAY_RUNTIME_INFO(i915)->pipe_mask != 0)
 #define HAS_DMC(i915)			(DISPLAY_RUNTIME_INFO(i915)->has_dmc)
+#define HAS_DMC_WAKELOCK(i915)		(DISPLAY_VER(i915) >= 20)
 #define HAS_DOUBLE_BUFFERED_M_N(i915)	(DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915))
 #define HAS_DOUBLE_WIDE(i915)		(DISPLAY_VER(i915) < 4)
 #define HAS_DP_MST(i915)		(DISPLAY_INFO(i915)->has_dp_mst)
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index f2d64954916a..4ca2b990ec6a 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -262,7 +262,7 @@ static bool intel_dmc_wl_check_range(i915_reg_t reg, u32 dc_state)
 
 static bool __intel_dmc_wl_supported(struct intel_display *display)
 {
-	if (DISPLAY_VER(display) < 20 ||
+	if (!HAS_DMC_WAKELOCK(display) ||
 	    !intel_dmc_has_payload(display) ||
 	    !display->params.enable_dmc_wl)
 		return false;
@@ -275,7 +275,7 @@ void intel_dmc_wl_init(struct intel_display *display)
 	struct intel_dmc_wl *wl = &display->wl;
 
 	/* don't call __intel_dmc_wl_supported(), DMC is not loaded yet */
-	if (DISPLAY_VER(display) < 20 || !display->params.enable_dmc_wl)
+	if (!HAS_DMC_WAKELOCK(display) || !display->params.enable_dmc_wl)
 		return;
 
 	INIT_DELAYED_WORK(&wl->work, intel_dmc_wl_work);
-- 
2.47.0

