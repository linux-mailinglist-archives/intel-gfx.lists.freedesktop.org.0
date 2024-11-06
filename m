Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CD09BF8B7
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 22:53:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EC7310E785;
	Wed,  6 Nov 2024 21:53:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fsncvl8d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5380F10E782;
 Wed,  6 Nov 2024 21:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730929990; x=1762465990;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ksbTzwdoZcEQesYpLFb9S33YTe9uUQe0tg4h2Tn1/nU=;
 b=Fsncvl8dPAPf7fTvJA5ErkGfYxb04sC0UvJ24D651dhAzOQsvUPhCZ/j
 SEKs5A+P4b3BWCSZFUdlw/ozi8tBQUmp2SyGiBeyaMwRXjm6TYsFXOxrb
 4UIFhgVfXLkOk2fXInoTNmzLEW6PgFOVeYQn98AubdgsGwePARbDhy686
 9G0fC6ayroA4JlV8jIpem6TLlkn+FiUB/E93KdCVr3eFpWpsVa4M84SSy
 /O0O95CS2zkvboAsT2PMQ6X5SBc850dJLucFVKE1wTbSxKHpXhqd4WYMz
 dXHMBETLLfliQimqjHveVOkfQs0TELGGNRCfUvGpVl5nD5Z35TdmvMRV9 g==;
X-CSE-ConnectionGUID: vzl0DtrXRJKImdP4Kawujw==
X-CSE-MsgGUID: h/diZwjPTDCUnAsOvbBqDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="48212197"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="48212197"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:53:04 -0800
X-CSE-ConnectionGUID: ktwrmSY1TO6Gxsripm1+nw==
X-CSE-MsgGUID: 8bhRVi43QUCF5jrrIYbF3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="84882511"
Received: from puneetse-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.118])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 13:53:02 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 13/17] drm/i915/dmc_wl: Add and use HAS_DMC_WAKELOCK()
Date: Wed,  6 Nov 2024 18:50:39 -0300
Message-ID: <20241106215231.103474-14-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241106215231.103474-1-gustavo.sousa@intel.com>
References: <20241106215231.103474-1-gustavo.sousa@intel.com>
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
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 drivers/gpu/drm/i915/display/intel_dmc_wl.c         | 4 ++--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 43144a037f9f..65d17c6cbbb3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -147,6 +147,7 @@ struct intel_display_platforms {
 #define HAS_DDI(i915)			(DISPLAY_INFO(i915)->has_ddi)
 #define HAS_DISPLAY(i915)		(DISPLAY_RUNTIME_INFO(i915)->pipe_mask != 0)
 #define HAS_DMC(i915)			(DISPLAY_RUNTIME_INFO(i915)->has_dmc)
+#define HAS_DMC_WAKELOCK(i915)		(DISPLAY_VER(i915) >= 20)
 #define HAS_DOUBLE_BUFFERED_M_N(i915)	(DISPLAY_VER(i915) >= 9 || IS_BROADWELL(i915))
 #define HAS_DP_MST(i915)		(DISPLAY_INFO(i915)->has_dp_mst)
 #define HAS_DP20(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
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

