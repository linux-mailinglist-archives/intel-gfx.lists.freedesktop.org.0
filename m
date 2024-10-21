Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9E29A934E
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 00:28:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94D7B10E5CD;
	Mon, 21 Oct 2024 22:28:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fBLGUbLW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9702710E5BF;
 Mon, 21 Oct 2024 22:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729549701; x=1761085701;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qx40gTkUl+SUNV6zH2uE8UZCJRiv6jkTXVV9LOZP29Y=;
 b=fBLGUbLWexiA1Y09wyngM3K+HKvQ0P0TYaL06qAiWb0TnwwC7183FWzk
 LPQVvfbSelT7VvNG55Wm1DuDiaDlZuUORJvH7hwLYdG5/mudnZGg08AU2
 15yFyu9O2yXinb3boxyGMDBqAvGhTQcWxYDBDYPmXtcPfGxOfqvmkEwzJ
 TqG0aH3mRCuU4PovHaIOzT4Va0d/l+EBl7um/ldUDR1Cce+QbB90jZMOr
 CTiS2e30OvkuWAfN3nIkEVOEB6KElvGpqhz4hBc7rT9UkoG1V53CN+Ha7
 IMcWa1dt39W7LvwfDsbE16VlhuaMIUr7qkXacdjCZ3eINtrJJFTjj/pyg Q==;
X-CSE-ConnectionGUID: QyolS1LsRQ+K1+PzVA/+9Q==
X-CSE-MsgGUID: P2dMe/mrRMaEpmUixH3fYg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28934480"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28934480"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:28:21 -0700
X-CSE-ConnectionGUID: GfjX5q65QrCrnMOU27N6Pw==
X-CSE-MsgGUID: eCkyx1GxTd64hUGjoFNmgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,221,1725346800"; d="scan'208";a="80009644"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO
 gjsousa-mobl2.intel.com) ([10.125.110.79])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 15:28:20 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 12/13] drm/i915/dmc_wl: Sanitize enable_dmc_wl according to
 hardware support
Date: Mon, 21 Oct 2024 19:27:31 -0300
Message-ID: <20241021222744.294371-13-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241021222744.294371-1-gustavo.sousa@intel.com>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
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

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index f6ec79b0e39d..55f07f3c9863 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -5,6 +5,8 @@
 
 #include <linux/kernel.h>
 
+#include <drm/drm_print.h>
+
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_dmc.h"
@@ -250,20 +252,25 @@ static bool intel_dmc_wl_check_range(struct intel_display *display, u32 address)
 
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

