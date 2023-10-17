Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5507CBCDF
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Oct 2023 09:55:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75EF610E282;
	Tue, 17 Oct 2023 07:55:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CAB310E282
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Oct 2023 07:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697529298; x=1729065298;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=J1s4oAgctz/3TKFhUBErtM9arwwSoiLgzaV7dpkvKAA=;
 b=Ngmxs4USG3qP0r87wBei56i3sbsnMIkVhZIXk2YDg1/PXoW7EadkPBda
 vpU/G8SjeqjDoUqcd2zoN3FioWE3BIf4BvgFAY+D+0Jn/3E4iu/bA322d
 //FqxZbZBfFGw49mWsJ7IkEJDIFWxW7RD+n/CgbMOrHar0y4Tja6of0l2
 otqhbkUdHkcNo+1Kgqp8uMtK4e/CBONcP4y1dbEtKg195I+916kG2HPSs
 V/bv0gKQMNa9dsbs/bg/qiBmR3gNlN2+7VCUP8OpuEB0RB2GxovdnA24I
 yFXDl2k3STamGUM94+2j41162ZvHTBoEfcwkoUR2NdrmS9hfyT9ro13dt g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="471944709"
X-IronPort-AV: E=Sophos;i="6.03,231,1694761200"; d="scan'208";a="471944709"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 00:54:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="899821257"
X-IronPort-AV: E=Sophos;i="6.03,231,1694761200"; d="scan'208";a="899821257"
Received: from ksuvorov-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.251.208.145])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 00:52:51 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Oct 2023 10:54:35 +0300
Message-Id: <20231017075435.95320-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231017075435.95320-1-vinod.govindapillai@intel.com>
References: <20231017075435.95320-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 2/2] drm/i915: remove display device info
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

Display device info is exposed as a separate debugfs entry. So
remove the duplicate entries from i915_capabilities debugfs

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

