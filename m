Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 453E591B86B
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2024 09:32:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B30CD10EBCB;
	Fri, 28 Jun 2024 07:32:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LYfz5qY7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4059610EBCD
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2024 07:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719559943; x=1751095943;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2OtSAkUHpF0RmMFAdipNGwUXf22JvaAIparpyIXFvps=;
 b=LYfz5qY7D9rJ26BGmfM2gmQNfvMQTqf6A78gfoKsXiJRhVMyGFtfcDhc
 f+KsIIUTIU8ajk10V+6VJY3FfSqxRdgsJT2BGbpPscu2/vrb+N2gbrSzT
 TBmlKuSXq6CF+lOUdCk5kOTtODMGcINY6+jbWylWY3uvyZopjdpLLObH1
 9qyX6wmEXYGAKvg4uGa+KskPEZyWwX/ynNQmYW0E1RW2Lsnhlmg03K0I7
 Dd2uMpD6Pab+kWj8JIfByoGIeV4VlZHhMvef3bPTLVgQfkAA4BlihzmBO
 nia5x63arX8XFYz+pSvmCqmQZDb6BghzrM0GdXbhoY/0PP3wOhmToedHU w==;
X-CSE-ConnectionGUID: hv0lNJ1rRSyNg5OMLrAHVQ==
X-CSE-MsgGUID: iFG4vAAXTHS/1CKNvQdvew==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="27354077"
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; d="scan'208";a="27354077"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2024 00:32:03 -0700
X-CSE-ConnectionGUID: 0kdr6zsMQ9qMVkN8lbodQw==
X-CSE-MsgGUID: GdzBeCTjT3edo8Of3ljNfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,168,1716274800"; d="scan'208";a="82203516"
Received: from openwrt.itwn.intel.com (HELO localhost.localdomain)
 ([10.225.75.38])
 by orviesa001.jf.intel.com with ESMTP; 28 Jun 2024 00:32:02 -0700
From: Ben Kao <ben.kao@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ben Kao <ben.kao@intel.com>
Subject: [PATCH v1] drm/i915/dp: Modify DP lane count from DPCD reading
Date: Fri, 28 Jun 2024 15:30:13 +0800
Message-Id: <20240628073013.17233-1-ben.kao@intel.com>
X-Mailer: git-send-email 2.39.2
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

We found that the external monitor would be failed to display
when hot-plug with dual Type-C USB cable on Dell WD19DC dock.
Due to the host would receive 2 lanes setting when the first HPD,
then receive 4 lanes setting later, but the host only sets 2 lanes
DP and skips to set 4 lanes DP. I modify DP lane count if the
current DP lane count is not the same as DPCD reading.

Signed-off-by: Ben Kao <ben.kao@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5b3b6ae1e3d7..a9b9023c6744 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5545,6 +5545,12 @@ intel_dp_detect_dpcd(struct intel_dp *intel_dp)
 	if (!intel_dp_get_dpcd(intel_dp))
 		return connector_status_disconnected;
 
+	/* lanes count changed */
+	if (intel_dp->lane_count != drm_dp_max_lane_count(intel_dp->dpcd)) {
+		intel_dp->lane_count = drm_dp_max_lane_count(intel_dp->dpcd);
+		return connector_status_disconnected;
+	}
+
 	intel_dp->mst_detect = intel_dp_mst_detect(intel_dp);
 
 	/* if there's no downstream port, we're done */
-- 
2.17.1

