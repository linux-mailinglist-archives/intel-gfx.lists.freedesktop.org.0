Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3BA976045
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 07:15:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51F8310E9B8;
	Thu, 12 Sep 2024 05:15:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mS8T3A5G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 163ED10E9A3;
 Thu, 12 Sep 2024 05:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726118146; x=1757654146;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3kntFXla7m+0Hv/BcRUDRpCJcw2ILUWRMyONOThaLHM=;
 b=mS8T3A5GWCdHn3oqulhYcJC0B24oub9d2xxCCfSxvrvVJznnY5G5nEmN
 LlwXE2G6oe5VzQupNh6KlDzMIFZQX6DCQ+7vK1lxVcb2HM1zQSb84T4Ai
 9W+/Q5/IhKZWrdFv7pl1nB+McrklGqMimFFIq7vk9pGX8QDE5xXil06gH
 /GEmL8BBCG8+o1vN9E21OEgmLFwVRhVnrAXEyRKfkyRoK8W45dWtPwvIM
 VgjkckPymaLf8OIDPRwbkMdi8TSWGlJajhlGE0XfoxTxE8chFFCOOYxCF
 4F6oH6sxMai+olLk5n0iRBo+PamrH7v1e1Ghpi7Ec0j5X/02O/97r9K8S g==;
X-CSE-ConnectionGUID: mYuwbvVcT+CxvECBFYjLag==
X-CSE-MsgGUID: /NlKG8OHSfeOMPhBdOQIzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="35613927"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="35613927"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 22:15:46 -0700
X-CSE-ConnectionGUID: 1iPfmpuHTpmFxek0h+9hJQ==
X-CSE-MsgGUID: zfOClt8xQLO16tDbUyNuvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="72388859"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa005.jf.intel.com with ESMTP; 11 Sep 2024 22:15:44 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>,
 Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
Subject: [PATCH 2/3] drm/i915/dp: read Aux RD interval after reading the FFE
 preset
Date: Thu, 12 Sep 2024 10:35:51 +0530
Message-Id: <20240912050552.779356-3-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240912050552.779356-1-arun.r.murthy@intel.com>
References: <20240912050552.779356-1-arun.r.murthy@intel.com>
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

DP Source should be reading AUX_RD interval after we get adjusted
TX_FFE_PRESET_VALUE from the DP Sink. (before actually adjusting
in DP Source)

Signed-off-by: Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_training.c    | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index f41b69840ad9..ca179bed46ad 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1419,12 +1419,6 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
 	for (try = 0; try < max_tries; try++) {
 		fsleep(delay_us);
 
-		/*
-		 * The delay may get updated. The transmitter shall read the
-		 * delay before link status during link training.
-		 */
-		delay_us = drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
-
 		if (drm_dp_dpcd_read_link_status(&intel_dp->aux, link_status) < 0) {
 			lt_err(intel_dp, DP_PHY_DPRX, "Failed to read link status\n");
 			return false;
@@ -1457,6 +1451,12 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
 			lt_err(intel_dp, DP_PHY_DPRX, "Failed to update TX FFE settings\n");
 			return false;
 		}
+
+		/*
+		 * The delay may get updated. The transmitter shall read the
+		 * delay before link status during link training.
+		 */
+		delay_us = drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
 	}
 
 	if (try == max_tries) {
-- 
2.25.1

