Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AA0AC1F5A4
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 10:41:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C1E210E88B;
	Thu, 30 Oct 2025 09:41:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jh2FKkvk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E99BE10E88B;
 Thu, 30 Oct 2025 09:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761817317; x=1793353317;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LrsOtv2pBaiu0uWE8ubiKKdKitvy9eWaAhrhNWfHpys=;
 b=jh2FKkvksRNWoAqZaddRrXNB8/PB5KbPISpoR78nVMIEgd17C4+f3fZQ
 MFxH/168fGyiAZ0qAOmoCrWNfouX7mUtbWjfXgRjXWZiHrsMn4OZePORa
 D0t1FW3G+3ZEY4crkaNlnBvrod8xJCWrI/k0Gbm+nU6/8699ENjAgc2c3
 1iWjWzSeptFtvjyW8MoSC67e9g+u/3lQJAacjAIFGq7r5ekHyO1Wkn7pB
 FUNd228O7vvCjcQesP/w906kV72q9adetwLY8kAy/qzQVXq8kD/XboPhM
 jUVeErD5SqTURJLXnSnKSeLAhfTU51icQZf0HL3QAldYzM2cheSCcfOwI Q==;
X-CSE-ConnectionGUID: FRI2pS1PRzmXUWEGd/JsuQ==
X-CSE-MsgGUID: qOaR05wyTGOCHLlLEsxkMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="63651901"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="63651901"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 02:41:57 -0700
X-CSE-ConnectionGUID: ixQuNFc1S/StFPZz1gtPqg==
X-CSE-MsgGUID: EzcC3EZzSAi+o0yZqtx2sA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="189983047"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 02:41:55 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 2/6] drm/i915/vrr: Avoid vrr for PCON with HDMI2.1 sink
Date: Thu, 30 Oct 2025 14:58:53 +0530
Message-ID: <20251030092857.3090072-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251030092857.3090072-1-ankit.k.nautiyal@intel.com>
References: <20251030092857.3090072-1-ankit.k.nautiyal@intel.com>
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

