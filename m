Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 985CAC4CBAD
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 10:43:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25EE010E52A;
	Tue, 11 Nov 2025 09:43:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZfuK9tW+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7291A10E52B;
 Tue, 11 Nov 2025 09:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762854179; x=1794390179;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LrsOtv2pBaiu0uWE8ubiKKdKitvy9eWaAhrhNWfHpys=;
 b=ZfuK9tW+6Me6Hp0zSyTS5RGx3xLnAWSWVN/6EoJOtTU9TzOn1RkkSDqN
 4NFf9k6DAJJZMicGXf3rhw5USTDBhqOA6TI/WT+HOgVy1n9MtsQzrLxw2
 N3IIKmHXgshd0flIMuO+A1KdtJsrO075SnfSzIvtUSSGNW+ANlw4EKJ8I
 rZnFpFtVSO30dfCV1GsBbzvdepZVmS1QE6uhv8cYbS3y2vhquSWdww4xi
 5+DRoxsQ1pAYIDG968GugXiN9iJmuY8ctrFA5p56rhVJCAG73j4J//jaP
 2EaYxp5c3c4Y/mHhyTtXUckl55nh8OomQXtH9Qx8jNFX4H4PeQl7ZqyOl g==;
X-CSE-ConnectionGUID: +QzkjWJzSAq/lQueRMTJpA==
X-CSE-MsgGUID: cnfWmN1wRL2g0WxNk4Thkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="68773766"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="68773766"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 01:42:59 -0800
X-CSE-ConnectionGUID: vOl9YkBORju4IKJhVrflfA==
X-CSE-MsgGUID: O9631hMQS9KWVT6m8Ku+4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="193175883"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 01:42:57 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/4] drm/i915/vrr: Avoid vrr for PCON with HDMI2.1 sink
Date: Tue, 11 Nov 2025 15:00:05 +0530
Message-ID: <20251111093007.3771409-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251111093007.3771409-1-ankit.k.nautiyal@intel.com>
References: <20251111093007.3771409-1-ankit.k.nautiyal@intel.com>
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

Currently we do not support VRR with HDMI so skip vrr compute
config step for DP PCON with HDMI sink.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 00cbc126fb36..7a58e1f8acea 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -42,7 +42,14 @@ bool intel_vrr_is_capable(struct intel_connector *connector)
 	case DRM_MODE_CONNECTOR_DisplayPort:
 		if (connector->mst.dp)
 			return false;
+
 		intel_dp = intel_attached_dp(connector);
+		/*
+		 * VRR via PCON is currently unsupported.
+		 * TODO: Add support for VRR for DP HDMI2.1 PCON.
+		 */
+		if (intel_dp_has_hdmi_sink(intel_dp))
+			return false;
 
 		if (!drm_dp_sink_can_do_video_without_timing_msa(intel_dp->dpcd))
 			return false;
-- 
2.45.2

