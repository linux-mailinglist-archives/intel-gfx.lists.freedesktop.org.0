Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 766EF87156B
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 06:51:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20B851127FC;
	Tue,  5 Mar 2024 05:51:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c+W2RJi2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35995112710;
 Tue,  5 Mar 2024 05:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709617879; x=1741153879;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3Zg7i/ZzdfjetNS/XB5okJZYHRy8k1+wT83SqXKo4JM=;
 b=c+W2RJi2SDgRzuF7zcEYF8ZSRZn98qimd9/wNp5jI7CaCU7yDnhujr9b
 gzqpxnxH0ltOfLOoo8J5/aAuAUXaAshW7So72hlYZ3TBzukIHew7CQoQe
 7uaxzsTKCHpYQ+hTRSgH9stGAV6HFGNXsukgb6PWh3OhvIy5Q6yj1RgKd
 P3n2ZF3qP8UbBRgrBBnsYl8QgXL4n0jU70wgieMOiXD9nibg3DeBGZl+e
 1LsLYnt0X8sKgYvPzsr56cRt0joTKp2wHQKNirmx7847DIuZKLlTdqj7m
 nRhHYS9H082tUPUzk7G7ebYV9iUm4Wpqx+YIDAJpbeFDjLHQ/03DzXDV1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="4307662"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="4307662"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 21:51:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="9219482"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 21:51:17 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 stanislav.lisovskiy@intel.com, jani.nikula@linux.intel.com,
 stable@vger.kernel.org
Subject: [PATCH] drm/i915/dp: Fix the computation for compressed_bpp for
 DISPLAY < 13
Date: Tue,  5 Mar 2024 11:14:43 +0530
Message-Id: <20240305054443.2489895-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
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

For DISPLAY < 13, compressed bpp is chosen from a list of
supported compressed bpps. Fix the condition to choose the
appropriate compressed bpp from the list.

Fixes: 1c56e9a39833 ("drm/i915/dp: Get optimal link config to have best compressed bpp")
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: <stable@vger.kernel.org> # v6.7+
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10162
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e13121dc3a03..d579195f84ee 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1918,8 +1918,9 @@ icl_dsc_compute_link_config(struct intel_dp *intel_dp,
 	dsc_max_bpp = min(dsc_max_bpp, pipe_bpp - 1);
 
 	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {
-		if (valid_dsc_bpp[i] < dsc_min_bpp ||
-		    valid_dsc_bpp[i] > dsc_max_bpp)
+		if (valid_dsc_bpp[i] < dsc_min_bpp)
+			continue;
+		if (valid_dsc_bpp[i] > dsc_max_bpp)
 			break;
 
 		ret = dsc_compute_link_config(intel_dp,
-- 
2.40.1

