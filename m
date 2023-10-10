Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 164587C0384
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 20:34:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6101410E3B4;
	Tue, 10 Oct 2023 18:34:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2680710E3B4
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 18:34:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696962878; x=1728498878;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7AY2oWYGTXCloTbKzksQmq6qYtM5IlVLI/teR5ovFG4=;
 b=ln7latQoD1lK6w5RuydukEWuWEDOeC6AADRTs8Lhor4LsSPvnxOdkR2E
 sGUAkoO37kKS7n2STKurF2iEU2suFiu2Hsg+zYZrVq7cnPBLxqSpwslEL
 8AE8suk9h6BXN2soJWlZTetXRdawbUuMFQgpTJNGsEZ0RkbUo9eoTEFoF
 /QQxGu+dm0AFNbuc/68zruVV0GrAj96SOR+xXJDSejkjPzEYW7t1xLwtw
 T22OExRoYUsCpjXUpKXEfz+ilIdaYc5vyfcHV0pAnE+Y/Ef9Z50uEKVVC
 /+DvTzGDUrlfA+t1gZ5sMdS7t3rhBezlajx25IMQ05pyC6gNZZLscwUIu g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="384335777"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="384335777"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:32:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="819359639"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="819359639"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga008.fm.intel.com with ESMTP; 10 Oct 2023 11:32:58 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Oct 2023 00:01:01 +0530
Message-Id: <20231010183101.704439-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231010183101.704439-1-suraj.kandpal@intel.com>
References: <20231010183101.704439-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display: Use correct method to
 free crtc_state
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

Even though there is no leaking of resource here lets
just use the correct method to free crtc_state

Fixes: 8a3b3df39757 ("drm/i915: Clean up variable names in old dpll functions")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 2255ad651486..d41c1dc9f66c 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -7,6 +7,7 @@
 #include <linux/string_helpers.h>
 
 #include "i915_reg.h"
+#include "intel_atomic.h"
 #include "intel_crtc.h"
 #include "intel_cx0_phy.h"
 #include "intel_de.h"
@@ -2006,7 +2007,7 @@ int vlv_force_pll_on(struct drm_i915_private *dev_priv, enum pipe pipe,
 		vlv_enable_pll(crtc_state);
 	}
 
-	kfree(crtc_state);
+	intel_crtc_destroy_state(&crtc->base, &crtc_state->uapi);
 
 	return 0;
 }
-- 
2.25.1

