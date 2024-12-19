Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD31E9F87A0
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 23:15:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 608D610EDF3;
	Thu, 19 Dec 2024 22:14:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nFkLZIi2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E28D510EDF4;
 Thu, 19 Dec 2024 22:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734646495; x=1766182495;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=XXjxeer2ISNvfjT//aQPbgIGFg4TfEAwRaGz6XuXRzo=;
 b=nFkLZIi2XQS99xDVSoMZg9K42eh8WYz8yFjXvSkiuuguqW7WoVIeompX
 LlOCrfZXZftOt25wn+0uMgkF/AZzdEP/057nfYrWZfZOvY3FdGZC6cfCb
 C17lhJopfRuSEPYrvNDXFCOXLhm2VLXKDGQbWRQOnZXkuijc/1EbRAM7s
 SghCNUOrVki0JwndubdopMdR6HZmTIzkxVXfacj22gGjMCSuySDMa9669
 q4lojSEkcfEMPqEmxQqjwb4VJDrvJ6JMjUnc//k0QbHh0XR3nMhaej/2I
 OJuYXfoWLgYOYRwjyziNkfiZYNWm2s5dyUqUs2F7blhq/Iviz5htigNJN A==;
X-CSE-ConnectionGUID: 0ylW8HqdR2mIQkpqhWU3/A==
X-CSE-MsgGUID: noQK3HL8QBeG6oAq0ziPfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="35217709"
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="35217709"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 14:14:55 -0800
X-CSE-ConnectionGUID: lFjnDZrMRGSg2+UZR0qNmw==
X-CSE-MsgGUID: eHt+1WaBTniCF9OUjdtBOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102944123"
Received: from bmurrell-mobl.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.108.91])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 14:14:55 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/4] drm/i915/dmc_wl: Use enum values for enable_dmc_wl
Date: Thu, 19 Dec 2024 19:14:13 -0300
Message-ID: <20241219221429.109668-2-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241219221429.109668-1-gustavo.sousa@intel.com>
References: <20241219221429.109668-1-gustavo.sousa@intel.com>
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

Currently, after sanitization, enable_dmc_wl will behave like a boolean
parameter (enabled vs disabled). However, in upcoming changes, we will
allow more values for debugging purposes. For that, let's make the
sanitized value an enumeration.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 29 ++++++++++++++++-----
 1 file changed, 23 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 3ac44151aab5..cff841521ca0 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -50,6 +50,15 @@
 #define DMC_WAKELOCK_CTL_TIMEOUT_US 5000
 #define DMC_WAKELOCK_HOLD_TIME 50
 
+/*
+ * Possible non-negative values for the enable_dmc_wl param.
+ */
+enum {
+	ENABLE_DMC_WL_DISABLED,
+	ENABLE_DMC_WL_ENABLED,
+	ENABLE_DMC_WL_MAX,
+};
+
 struct intel_dmc_wl_range {
 	u32 start;
 	u32 end;
@@ -270,12 +279,20 @@ static bool __intel_dmc_wl_supported(struct intel_display *display)
 
 static void intel_dmc_wl_sanitize_param(struct intel_display *display)
 {
-	if (!HAS_DMC_WAKELOCK(display))
-		display->params.enable_dmc_wl = 0;
-	else if (display->params.enable_dmc_wl >= 0)
-		display->params.enable_dmc_wl = !!display->params.enable_dmc_wl;
-	else
-		display->params.enable_dmc_wl = DISPLAY_VER(display) >= 30;
+	if (!HAS_DMC_WAKELOCK(display)) {
+		display->params.enable_dmc_wl = ENABLE_DMC_WL_DISABLED;
+	} else if (display->params.enable_dmc_wl < 0) {
+		if (DISPLAY_VER(display) >= 30)
+			display->params.enable_dmc_wl = ENABLE_DMC_WL_ENABLED;
+		else
+			display->params.enable_dmc_wl = ENABLE_DMC_WL_DISABLED;
+	} else if (display->params.enable_dmc_wl >= ENABLE_DMC_WL_MAX) {
+		display->params.enable_dmc_wl = ENABLE_DMC_WL_ENABLED;
+	}
+
+	drm_WARN_ON(display->drm,
+		    display->params.enable_dmc_wl < 0 ||
+		    display->params.enable_dmc_wl >= ENABLE_DMC_WL_MAX);
 
 	drm_dbg_kms(display->drm, "Sanitized enable_dmc_wl value: %d\n",
 		    display->params.enable_dmc_wl);
-- 
2.47.1

