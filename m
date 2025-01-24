Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 998C3A1BCA6
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 20:13:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9D6D10E239;
	Fri, 24 Jan 2025 19:13:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IN2S4Zcb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2341610E076;
 Fri, 24 Jan 2025 19:13:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737745996; x=1769281996;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=d3dH6qTuLcfMrc1PE665upwacPPKpPy3Jg6bVIngDr0=;
 b=IN2S4ZcbYV69H7RZyJVXbCCYKyw3c0uEqZV/1hH++cLH9aCjpkePFTcD
 yOUTbFe26nIDdwG2Y1uXFO790RL+KTkan48we4V4tZ6UwHQGnWCMUBmPP
 5cUcSB9tuJir+AuIJgZ5afWeQC1s/h/TykKeKFaJcpEU+uW9Ak40td6Zd
 ZfmYVtHFuFmOvWBwDO/yKbEBkEhHU+HNniMnVxzZTMUCN803Te0NrSh1D
 XU2eROv0xO9M193jJYWJwr5EIsYLtM7rgZo5Nhea00orSx2m0VNBuk7vU
 pdIgYbFToM+9kaIZrHt9sbC5qDaYk98hsJvO1SsGnkh9Hh9tA+NRuM9Lr A==;
X-CSE-ConnectionGUID: fVaSmryJQDqC6YCpsUA2UQ==
X-CSE-MsgGUID: E+001jXWTT2AtAMEawxmSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38545550"
X-IronPort-AV: E=Sophos;i="6.13,232,1732608000"; d="scan'208";a="38545550"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 11:13:16 -0800
X-CSE-ConnectionGUID: eQTaEF7sRZiRb8xTlxgh2Q==
X-CSE-MsgGUID: yU6dp5K0SqCc+zkXIFamwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,232,1732608000"; d="scan'208";a="112863127"
Received: from rchatre-mobl4.amr.corp.intel.com (HELO
 gjsousa-mobl2.corp.amr.intel.com) ([10.125.111.30])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 11:13:15 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH] drm/i915/dmc_wl: Do not check for DMC payload
Date: Fri, 24 Jan 2025 16:12:34 -0300
Message-ID: <20250124191250.56833-1-gustavo.sousa@intel.com>
X-Mailer: git-send-email 2.48.1
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

Enabling and disabling of DMC wakelock is already coupled with enabling
and disabling of dynamic DC states, which already depend on the DMC
being properly loaded. As such, we do not need to check if we already
have a DMC payload parsed in __intel_dmc_wl_supported().

Furthermore, the presence of such a check causes inconsistencies in the
refcount if the following sequence of events happen:

  1. A call to one of the register accessors from intel_de.h is done
     before the DMC payload is parsed. That causes intel_dmc_wl_get() to
     be called. Suppose the register offset qualifies as needing the
     wakelock.

     In normal circumstances, the refcount would be incremented, but,
     because __intel_dmc_wl_supported() returns false, the refcount is
     untouched.

  2. In a separate worker thread, the DMC firmware is parsed. Parsing of
     the DMC payload is finished before the corresponding
     intel_dmc_wl_put() from (1) is called.

  3. When in the context of (1), intel_dmc_wl_put() gets called, now we
     have __intel_dmc_wl_supported() returning true and we hit the
     warning, because the code doesn't expect a zero refcount.

Let's remove that check, since it is unnecessary and causes the
inconsistency illustrated above.

Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc_wl.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 43884740f8ea..9be6ad11ff5d 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -10,7 +10,6 @@
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_de.h"
-#include "intel_dmc.h"
 #include "intel_dmc_regs.h"
 #include "intel_dmc_wl.h"
 
@@ -282,7 +281,7 @@ static bool intel_dmc_wl_check_range(struct intel_display *display,
 
 static bool __intel_dmc_wl_supported(struct intel_display *display)
 {
-	return display->params.enable_dmc_wl && intel_dmc_has_payload(display);
+	return display->params.enable_dmc_wl;
 }
 
 static void intel_dmc_wl_sanitize_param(struct intel_display *display)
-- 
2.48.1

