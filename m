Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F38F76FC42
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Aug 2023 10:46:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76FB610E6C2;
	Fri,  4 Aug 2023 08:46:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37D3B10E143
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Aug 2023 08:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691138771; x=1722674771;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4ePqRrPVH06FvBAnYV5MKqqoANPI9jaTtLaduapMGfE=;
 b=CvmiYoKWQ/Mmo8OYTMYfumktkJboM81h4W9aXibTWthXWepVR5RRcN83
 7n36Kc7l/nN1kFLVSqKNtGP9k6yG507HRYCANw1c7vmOAvAy6UMwjrZEH
 /7UDnsyEKPhJElOk1GsWOSnqLVJyBc3o0DBpSwKi9lgz0MVx5WHL7b4ax
 wadOHctSwVj+yPz7cy/+rWozqAU4jMxpLSFYaPUHVbSePkj2oqRcNoagY
 9OGrykbNev7weUvpE51Rg+0S48plNpwktbR2qT47HFRxF3vBm9xq1wcZJ
 M6BS/u0jNIb3FnApkSK5X7EoCcrtKnM0cy4nfTBfHgW28dfIduHdvy8ne w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="367565088"
X-IronPort-AV: E=Sophos;i="6.01,254,1684825200"; d="scan'208";a="367565088"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 01:46:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="795317268"
X-IronPort-AV: E=Sophos;i="6.01,254,1684825200"; d="scan'208";a="795317268"
Received: from popovax-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.62.174])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 01:46:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Aug 2023 11:46:00 +0300
Message-Id: <20230804084600.1005818-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230804084600.1005818-1-jani.nikula@intel.com>
References: <20230804084600.1005818-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: debug log when GMD ID indicates
 there's no display
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Debug log similar to the device id based identification of no display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 3d6a262e037f..e4837f6fc01f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -822,9 +822,10 @@ probe_gmdid_display(struct drm_i915_private *i915, u16 *ver, u16 *rel, u16 *step
 	val = ioread32(addr);
 	pci_iounmap(pdev, addr);
 
-	if (val == 0)
-		/* Platform doesn't have display */
+	if (val == 0) {
+		drm_dbg_kms(&i915->drm, "Device doesn't have display\n");
 		return &no_display;
+	}
 
 	*ver = REG_FIELD_GET(GMD_ID_ARCH_MASK, val);
 	*rel = REG_FIELD_GET(GMD_ID_RELEASE_MASK, val);
-- 
2.39.2

