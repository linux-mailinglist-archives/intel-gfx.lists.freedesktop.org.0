Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C35F2C53DE4
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 19:13:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D29110E78E;
	Wed, 12 Nov 2025 18:13:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ez4mttZI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2CAB10E78E;
 Wed, 12 Nov 2025 18:13:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762971226; x=1794507226;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+u0Gbna4O7zoZSxWbAOEpzw/77DKzB5y9Qhwv9PLy34=;
 b=Ez4mttZI5NOeev7r4Knpb1VbvFWKMn2wofzpt1Shr29uSGsKD/5BJQan
 XeRiPMSGZwYaoGTHsXNMnLNRDq75Q669asbDn/tm5z7rMrWruzlYzm1Sm
 kMRElja9MV5fr2U84CpPBSHxFoj/3aGjbn33CFudxCTwsBFUWWPf9NN28
 PbjbvcweppdD986/Q68ixibXvJxQiK4pJLLbYkhBJBSSCzxDUHoZgt3Xn
 T17BSEkU+ctTFetS0Ss3+Xh6N+waEQRJ5kI4KwRGoChN+2Fyg/QRFcok1
 F2yfhB+pfSBoI7KycReUj/x4njrQvKb2Ru4bhujtzIlIM+1eqQr5irAdE A==;
X-CSE-ConnectionGUID: mEsI6EHDQ1mykQafMC3y2g==
X-CSE-MsgGUID: lDmNlTY6SqGfyWFbqv0dXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="64051729"
X-IronPort-AV: E=Sophos;i="6.19,300,1754982000"; d="scan'208";a="64051729"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 10:13:46 -0800
X-CSE-ConnectionGUID: tMpPUUHyQHSNbncQNWlRWw==
X-CSE-MsgGUID: /N4yqnBLR5C7SWFvs7Uwew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,300,1754982000"; d="scan'208";a="190023456"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.54])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 10:13:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915/ltphy: include intel_display_utils.h instead of
 i915_utils.h
Date: Wed, 12 Nov 2025 20:13:42 +0200
Message-ID: <20251112181342.107911-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
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

Display code stopped using i915_utils.h in favour of
intel_display_utils.h. Fix recent additions.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index bebd7488aab9..a67eb4f7f897 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -6,7 +6,6 @@
 #include <drm/drm_print.h>
 
 #include "i915_reg.h"
-#include "i915_utils.h"
 #include "intel_cx0_phy.h"
 #include "intel_cx0_phy_regs.h"
 #include "intel_ddi.h"
@@ -14,6 +13,7 @@
 #include "intel_de.h"
 #include "intel_display.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dpll_mgr.h"
 #include "intel_hdmi.h"
 #include "intel_lt_phy.h"
-- 
2.47.3

