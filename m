Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 569937CD92B
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 12:27:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54B7510E3CE;
	Wed, 18 Oct 2023 10:27:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1B9010E3CE
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 10:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697624862; x=1729160862;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/glehC1cqQX+ltiPy+EGxoW7m0ABEHGtNLaJ8Lx+OGw=;
 b=UN/kwwJLS+CtS5AJ7vCcTs9WSckq4cLa9JcCuff3ImT72SOY0RbArTQL
 xwK7AjaUSOdN7+dP6YAO1+6ExzUr+RwRwgf+4yguL61KC7JicRTO7A6kQ
 yMEcv5BfpUN6bHCOp4v6QXHlE5Tqm4RO6Mh79jGIpIi0dW5zBNNY9XoSZ
 nz8OIYXt0aoDkLlxiwXYUBFn9+OoNuH5zB/pMyaeV5+uRuk5+BSPxhbxD
 B0oAp+MAhrTXbWbfiK5BHWhf8iOb8Q0WLcWcZ2lPGObpTdnDSUjqKirvT
 HoOXNLmDIWWWo35+uHINio0SPt/0FSyd8swriOorepZKIrgFf0grJ3oPB A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="452453264"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="452453264"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 03:27:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10866"; a="822393362"
X-IronPort-AV: E=Sophos;i="6.03,234,1694761200"; d="scan'208";a="822393362"
Received: from feyang-mobl.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.252.44.154])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 03:27:40 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Oct 2023 13:27:23 +0300
Message-Id: <20231018102723.16915-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231018102723.16915-1-vinod.govindapillai@intel.com>
References: <20231018102723.16915-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/2] drm/i915: remove display device info
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

