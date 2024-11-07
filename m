Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B70A9C0DCF
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 19:30:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D95CD10E8C5;
	Thu,  7 Nov 2024 18:30:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qp2m+Xdh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE1E010E8C6;
 Thu,  7 Nov 2024 18:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731004208; x=1762540208;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QJJen7MpNXR+De4D49TvAQUhlitXDkW8aYzmwvIPWUk=;
 b=Qp2m+XdhqSbEwUwZ9EXKJpu7VXzXrYMX4N1qXqD1ynIxQ9dd56v1Zp9k
 JLBKr2CgSsW2dHcgbbeIfyFDSyQJb9uMjmzrom5sEjtYTH+1El3s+75Pc
 lR0pMbRJD6YPfe1P45Z3EY/hbT52n8IyCOdr4J/g/yf358Bzgw/9xcVsb
 iizIjhGGVIFZcdHHEEDdy1eWKgPSK7yjRWyHzaaD+oAHIHZJfH+YPmWqq
 EoL5jL8i8BnolIIMmIvKImEF9hM5lu5e2DLElVRIF4/0ayvwU62GLdP8D
 DlMzloNu0dM9iFUxQdB/EigW8I8Yf2uJIV89CJno4KCfn5z7lOCMzG5UN w==;
X-CSE-ConnectionGUID: pE54BTqNTgig226chD6QIg==
X-CSE-MsgGUID: nmqm+UwdSp6CJphgdLybuw==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="18494899"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="18494899"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:30:08 -0800
X-CSE-ConnectionGUID: bZ60YVS+SaO+2018reHm1A==
X-CSE-MsgGUID: hpcnXvpKQ3OjFilSNgoqcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85329721"
Received: from rchatre-mobl4.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.110.154])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:30:07 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 16/18] drm/i915/dmc_wl: Sanitize enable_dmc_wl according to
 hardware support
Date: Thu,  7 Nov 2024 15:27:21 -0300
Message-ID: <20241107182921.102193-17-gustavo.sousa@intel.com>
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

