Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B8C94E88C
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2024 10:29:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EF4A10E07D;
	Mon, 12 Aug 2024 08:29:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MmButQ5a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF75110E07D;
 Mon, 12 Aug 2024 08:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723451386; x=1754987386;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6qKsNCCSvgz3qvFx/jourWOITquppQPfC3DiH7fZUJI=;
 b=MmButQ5aeqDZP7fIwfC4gxhQwHbTjP4yomYt9SGpZrHg6FdgXvXnmcta
 UX5VZorGlbx3rxNJbF8wElv0PqH/MKmSPXbwC9rTkBgQcDr2YVKnohNDw
 CsavQIt9QXyHzdWrbfO0AsGjQcQc4Ycn4II3aTLqEdJfqNWPCxLHDFLkx
 TSgOwP6H8/zFeeaQCxdw21PAX196OVWj3mhpZRmheJNTnqMaVcreuNCuK
 1/4vG5/i98MJrAbB0DU3qiL/JI7Q+2R6y5glAtBtT/nnnnSSf7wPWIxX9
 v9nh7IujZf1NV5Q9JwrM5HlyYQ0yrlSDad76HmNDRIuTyup0gn4rUGVgE A==;
X-CSE-ConnectionGUID: /b1FzKNLS8ekND5APQWaBQ==
X-CSE-MsgGUID: CCMQmfdQTwine/Ca4HLMiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11161"; a="21521021"
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="21521021"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 01:29:46 -0700
X-CSE-ConnectionGUID: GNd5fneZRHW1hYFfq6rfyw==
X-CSE-MsgGUID: J2ud6vsoS9yFMWBKXAnSMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,282,1716274800"; d="scan'208";a="57846063"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa006.fm.intel.com with ESMTP; 12 Aug 2024 01:29:45 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	chaitanya.kumar.borah@intel.com
Subject: [PATCH] drm/i915: Preserve value of fec_enable calculated before DSC
 compute config
Date: Mon, 12 Aug 2024 13:54:46 +0530
Message-Id: <20240812082446.3459081-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
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

Before DSC compute config, fec_enable value is set in other functions
(e.g. intel_dp_mst_find_vcpi_slots_for_bpp). We are ignoring the value by
OR'ing its value in DSC compute config. One unintended effect of this is
setting fec_enable in UHBR use-cases which is not needed for Intel
hardware. Therefore, change operator to AND.

While at it, add a comment explaining why we don't enable FEC in eDP v1.5.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 49a37b996530..3fbf9f33c3e4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2298,7 +2298,12 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		&pipe_config->hw.adjusted_mode;
 	int ret;
 
-	pipe_config->fec_enable = pipe_config->fec_enable ||
+	/*
+	 * Though eDP v1.5 supports FEC with DSC, unlike DP, it is optional.
+	 * Since, FEC is a bandwidth overhead, continue to not enable it for
+	 * eDP. Until, there is a good reason to do so.
+	 */
+	pipe_config->fec_enable = pipe_config->fec_enable &&
 		(!intel_dp_is_edp(intel_dp) &&
 		 intel_dp_supports_fec(intel_dp, connector, pipe_config));
 
-- 
2.25.1

