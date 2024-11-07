Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76F339C0DCC
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 19:30:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BAE510E8C3;
	Thu,  7 Nov 2024 18:30:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I/YusnOI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09F7510E8AD;
 Thu,  7 Nov 2024 18:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731004204; x=1762540204;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LqcFK/TmYZMoq2cOnMb1ZurbNOcL7clXuUs1T6a/9eo=;
 b=I/YusnOIj7aMA/uBCmIXmH5TZbKv/MLkDORHURMpw0s49qLb3Ws/Tp6e
 O05u1O4Hmb/TOeT04fzvN1nchRWm+mSkqw/rHnzacKBwhFg26y3ZPzkIX
 kSMUeVydsEl7PEmffHeKAzio10RJMiHZy7M8Cnovq6AUVjPdXeHe6e8FK
 29CnovnVzsa/avi55HAudNnyyLAyTQo88kuwve3TR9nUfmCggr9Bk09SS
 c1bdL18Tz3SDsnTkDzFT5tbPWVkkBQB7PFk9jcIbZTW51Uf/hHP+xjgnV
 8OWxSBQ+r80WVkhWub/cmEHcP2hgbplmD0meZ0Gha3kWhx6ROLae7rx9z Q==;
X-CSE-ConnectionGUID: ceiF2BzBR5G2O8Bkki+UdQ==
X-CSE-MsgGUID: lut7MAyfR9yBbz2/Yg7D3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="18494884"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="18494884"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:30:03 -0800
X-CSE-ConnectionGUID: sd2vP4bKRFqMS1jIVrt93A==
X-CSE-MsgGUID: xULtniqmRAGeakA8iX38SA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85329684"
Received: from rchatre-mobl4.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.154])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:30:02 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 13/18] drm/i915/dmc_wl: Add and use HAS_DMC_WAKELOCK()
Date: Thu,  7 Nov 2024 15:27:18 -0300
Message-ID: <20241107182921.102193-14-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241107182921.102193-1-gustavo.sousa@intel.com>
References: <20241107182921.102193-1-gustavo.sousa@intel.com>
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

