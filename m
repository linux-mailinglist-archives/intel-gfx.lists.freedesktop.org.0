Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D8F65AD70
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Jan 2023 07:20:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 705EF10E190;
	Mon,  2 Jan 2023 06:20:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F39010E18D
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Jan 2023 06:20:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672640419; x=1704176419;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9kkWV7Wcd0Q9lV4EIaxACG1ZlZHCtLOhBBRWCrRzcwI=;
 b=MIwhLzigw4xiCKXgCDCGhQWPb9PBm/JGexpTiL6Xzuz5IoBr1QbEHEDr
 IvqiKpA7VmcN10vsUboP8OnFG6WARRv3bTB8fo6IMxHYp4p9pDep4UU8a
 PgpcxFoqS6Z1V0Xd05PQOGpO5yHzn/tVCEhLO6ejPOym88iBstDgB0oyG
 Jh2E0UAfppFfO7a5pJX710PcWQZNpQWYnR3wD91XjuCw8pJ+42483h0nG
 21lZyrf3RnUbMHe2VLf1wjbyH8KWbo/nag/absSOW5oPaxSo1xj9PEfEz
 L6NQSrkft2OZue/qzaZrDDbt/mQfVcuzPrrt3dmgb5kWjJoBXNjdLgvW4 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="348657606"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="348657606"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2023 22:20:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10577"; a="647840569"
X-IronPort-AV: E=Sophos;i="5.96,293,1665471600"; d="scan'208";a="647840569"
Received: from chaitanya.iind.intel.com ([10.190.239.113])
 by orsmga007.jf.intel.com with ESMTP; 01 Jan 2023 22:20:16 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Jan 2023 11:50:04 +0530
Message-Id: <20230102062005.720964-4-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230102062005.720964-1-chaitanya.kumar.borah@intel.com>
References: <20230102062005.720964-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 3/4] drm/i915: Initialize intel quirks before
 CDCLK initialization
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With addition of new quirk QUIRK_480MHZ_CDCLK_STEP, it is imperative
that quirks should be initialized before CDCLK initialization. Refactor
the code accordingly.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 --
 drivers/gpu/drm/i915/i915_driver.c           | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e75b9b2a0e01..5c71fd83c25b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8666,8 +8666,6 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
 	INIT_WORK(&i915->display.atomic_helper.free_work,
 		  intel_atomic_helper_free_state_worker);
 
-	intel_init_quirks(i915);
-
 	intel_fbc_init(i915);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index c1e427ba57ae..4d1cb46f9863 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -104,6 +104,7 @@
 #include "intel_pm.h"
 #include "intel_region_ttm.h"
 #include "vlv_suspend.h"
+#include "display/intel_quirks.h"
 
 static const struct drm_driver i915_drm_driver;
 
@@ -388,6 +389,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	if (ret < 0)
 		goto err_gem;
 	intel_irq_init(dev_priv);
+	intel_init_quirks(dev_priv);
 	intel_init_display_hooks(dev_priv);
 	intel_init_clock_gating_hooks(dev_priv);
 
-- 
2.25.1

