Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C655D674D4A
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 07:21:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 041F810EA52;
	Fri, 20 Jan 2023 06:21:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2220610EA03;
 Fri, 20 Jan 2023 06:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674195706; x=1705731706;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=trNCxGnSP4ZToFQVZRvV2mLowfUfMjvj7+tgltCb35Q=;
 b=WnZYft0cKjQ327HBV7blBRdF9zx3O9Xa8dTmg/W8HHevaQg8e+yuLmgK
 GbUYemJYKGzv3QlOYHXKdaeDyH/5RLvySP42oaibYhD0SU0tD6w3RQkNC
 ywXO1kteMQCst9effFxCtxOZtRYxAWOdQDjCljaTKqfWOSTJBPCDDlIHW
 7ohrLaZcEcK1J0DfC+z9lNpyVhO1IUKfszBdHR9lAgHcUHRJv3M4AbANw
 vzZgOrCKHrECpruNcYwB1WCXSiA+S13mDH4tgXvZOtx0XfQKfo4eLhPAS
 X7wC0EFmv15LkNpdHQxYep846TBMncwRAS7yPPUrrxA6hXp0bcdWkxahr w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="390030169"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="390030169"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 22:21:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="729021187"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="729021187"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmsmga004.fm.intel.com with ESMTP; 19 Jan 2023 22:21:34 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 jani.nikula@intel.com
Date: Fri, 20 Jan 2023 11:46:00 +0530
Message-Id: <20230120061600.1451088-3-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230120061600.1451088-1-arun.r.murthy@intel.com>
References: <20230120061600.1451088-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RESEND PATCHv2 2/2] i915/display/dp: SDP CRC16 for
 128b132b link layer
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

Enable SDP error detection configuration, this will set CRC16 in
128b/132b link layer.
For Display version 13 a hardware bit31 in register VIDEO_DIP_CTL is
added to enable/disable SDP CRC applicable for DP2.0 only, but the
default value of this bit will enable CRC16 in 128b/132b hence
skipping this write.
Corrective actions on SDP corruption is yet to be defined.

v2: Moved the CRC enable to link training init(Jani N)

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_training.c    | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 3d3efcf02011..7064e465423b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1453,4 +1453,16 @@ void intel_dp_start_link_train(struct intel_dp *intel_dp,
 
 	if (!passed)
 		intel_dp_schedule_fallback_link_training(intel_dp, crtc_state);
+
+	/* DP v2.0 SCR on SDP CRC16 for 128b/132b Link Layer */
+	if (intel_dp_is_uhbr(crtc_state) && passed)
+		drm_dp_dpcd_writeb(&intel_dp->aux,
+				   DP_SDP_ERROR_DETECTION_CONFIGURATION,
+				   DP_SDP_CRC16_128B132B_EN);
+		/*
+		 * VIDEO_DIP_CTL register bit 31 should be set to '0' to not
+		 * disable SDP CRC. This is applicable for Display version 13.
+		 * Default value of bit 31 is '0' hence discarding the write
+		 */
+		/* TODO: Corrective actions on SDP corruption yet to be defined */
 }
-- 
2.25.1

