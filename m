Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 264909C1D94
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Nov 2024 14:03:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 076F310E9AF;
	Fri,  8 Nov 2024 13:03:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cyj236nS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBC5410E98A;
 Fri,  8 Nov 2024 13:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731071005; x=1762607005;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QJJen7MpNXR+De4D49TvAQUhlitXDkW8aYzmwvIPWUk=;
 b=Cyj236nSZ5PSbwsD1xMBdXth4+FQltBAC75lmk9TTmX/uv7Exeat5ML+
 bRq7WTmiA2D23/voHrj4xENGRUTmT9rSXq6FusaZnuxv2PXgLCjs2F8xA
 Tb4bvi00KCs+RJ1aXqo+zzQsfsjxnH33VidusXxRgawUb/5zRpYQlPNsY
 gzYKg7pDl73vn98cMyaNvBxXxEplnonR5r3K5oMM6U6Wu6z9trW1OmwDu
 OaFLfz1XT8vR66fQnDKBlbLLr2uzszafm5spg/lm1x0QY77XRXQbAoHKS
 3SgZgleer6Z+9yyXsxk77yx/Wtq3/Y2kjOA4BmjdsO9mG3adCaaH81F8i A==;
X-CSE-ConnectionGUID: rbrGJ6eDSo+lUII2UdEGgg==
X-CSE-MsgGUID: zqeYQRDiSP+Jaks6ZBWXqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41513175"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41513175"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:03:24 -0800
X-CSE-ConnectionGUID: vyuXi5VKTPuta5GR+KTopQ==
X-CSE-MsgGUID: Dxx6d/ddQWW+iGhubqrLxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,138,1728975600"; d="scan'208";a="85692551"
Received: from ldmartin-desk2.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.232])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 05:03:05 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v4 14/15] drm/i915/dmc_wl: Sanitize enable_dmc_wl according to
 hardware support
Date: Fri,  8 Nov 2024 09:57:19 -0300
Message-ID: <20241108130218.24125-15-gustavo.sousa@intel.com>
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

Instead of checking for HAS_DMC_WAKELOCK() multiple times, let's use it
to sanitize the enable_dmc_wl parameter and use that variable when
necessary.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 4ca2b990ec6a..c164ac6e1ada 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -5,6 +5,8 @@
 
 #include <linux/kernel.h>
 
+#include <drm/drm_print.h>
+
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_dmc.h"
@@ -262,20 +264,25 @@ static bool intel_dmc_wl_check_range(i915_reg_t reg, u32 dc_state)
 
 static bool __intel_dmc_wl_supported(struct intel_display *display)
 {
-	if (!HAS_DMC_WAKELOCK(display) ||
-	    !intel_dmc_has_payload(display) ||
-	    !display->params.enable_dmc_wl)
-		return false;
+	return display->params.enable_dmc_wl && intel_dmc_has_payload(display);
+}
 
-	return true;
+static void intel_dmc_wl_sanitize_param(struct intel_display *display)
+{
+	if (!HAS_DMC_WAKELOCK(display))
+		display->params.enable_dmc_wl = false;
+
+	drm_dbg_kms(display->drm, "Sanitized enable_dmc_wl value: %d\n",
+		    display->params.enable_dmc_wl);
 }
 
 void intel_dmc_wl_init(struct intel_display *display)
 {
 	struct intel_dmc_wl *wl = &display->wl;
 
-	/* don't call __intel_dmc_wl_supported(), DMC is not loaded yet */
-	if (!HAS_DMC_WAKELOCK(display) || !display->params.enable_dmc_wl)
+	intel_dmc_wl_sanitize_param(display);
+
+	if (!display->params.enable_dmc_wl)
 		return;
 
 	INIT_DELAYED_WORK(&wl->work, intel_dmc_wl_work);
-- 
2.47.0

