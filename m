Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F7F7CCE47
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Oct 2023 22:38:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D508610E32C;
	Tue, 17 Oct 2023 20:38:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BEAC10E32C
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Oct 2023 20:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697575101; x=1729111101;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/glehC1cqQX+ltiPy+EGxoW7m0ABEHGtNLaJ8Lx+OGw=;
 b=oCO9ky0en4gm6KFzx+FdJQxxKOIFw6bcI1ueSSVAc9GtDQPUi7Tt2p0q
 dL9y12Utto7y4FFg1nSsg+tsHC1Mt1p0PnEwS5Q35/InUUbwF4sW9eoZR
 VE6Vyyrif0E1ZiI9t3jeIm1I7PGKluAqvfEVaDLKq9/pps1e/WW+QjnSM
 iQHfdEJLtgTCyboDEbTK+7VCM2t5RHqAJ+NUB/F7YUUCcoD7VOghSHXxX
 CGt35ZJGc2AxI1gxTnrnZj2HJvcJ6+QYGzg0agWOvPm2AXRaC/0zNEqZE
 KOk19Vu52ebJmuz8KqJAJL2AaAgJwnLDcTfi+1qFOOJxFPuBB7JCQ9wBK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="385710554"
X-IronPort-AV: E=Sophos;i="6.03,233,1694761200"; d="scan'208";a="385710554"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 13:38:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="759956049"
X-IronPort-AV: E=Sophos;i="6.03,233,1694761200"; d="scan'208";a="759956049"
Received: from pvanderz-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.38.156])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 13:38:19 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Oct 2023 23:38:00 +0300
Message-Id: <20231017203800.123776-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231017203800.123776-1-vinod.govindapillai@intel.com>
References: <20231017203800.123776-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915: remove display device info
 from i915 capabilities
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

Display device and display runtime info is exposed as part of
i915_display_capabilities debugfs entry. Remove this information
from i915_ capabilities as it is now reduntant.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index e9b79c2c37d8..bb48feb3b12e 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -67,7 +67,6 @@ static int i915_capabilities(struct seq_file *m, void *data)
 	seq_printf(m, "pch: %d\n", INTEL_PCH_TYPE(i915));
 
 	intel_device_info_print(INTEL_INFO(i915), RUNTIME_INFO(i915), &p);
-	intel_display_device_info_print(DISPLAY_INFO(i915), DISPLAY_RUNTIME_INFO(i915), &p);
 	i915_print_iommu_status(i915, &p);
 	intel_gt_info_print(&to_gt(i915)->info, &p);
 	intel_driver_caps_print(&i915->caps, &p);
-- 
2.34.1

