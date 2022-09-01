Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FBE5A8DE8
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 08:01:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B24BB10E5AB;
	Thu,  1 Sep 2022 06:01:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 492D710E5A6
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Sep 2022 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662012087; x=1693548087;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AQ8fRJYCGfwdCQMd91PKti8jEIMCfNXdBLP0SpF3tVo=;
 b=W8/qK+ZB7x6gKb7zzv8rhLIHeZku24Yp+PGAR32JpKizmV9Kl/aIk9lF
 u2AXRUrfzkG1KKPjsPAKpbuqv/sNlE02CZnlBJo2kqWO60Z2Jr7UIauKb
 COJGNsZfq7t5psPvdTKRq/YaHuh0ecvlN5D7FznbNZcVGD4RAIsFvvR/b
 06kzDDVDCHnf1HU7G0CgC2WxycDpwnNraCzeLYzb2e4N2Um/NbD9MV/q8
 V7MtoyuLJ25iQQezJ/N+1H9ENWjNNRaOTz6oDjILSNRV2Vv2PB0E74AAK
 aqMYS8bcQWf3Yicrdzr/GHVf1+PBwVKX1Q2CDPiC3PVBedNL+udPKB5Re w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="381920240"
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="381920240"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 23:01:27 -0700
X-IronPort-AV: E=Sophos;i="5.93,280,1654585200"; d="scan'208";a="754685681"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 23:01:25 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  1 Sep 2022 11:30:56 +0530
Message-Id: <20220901060101.1000290-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901060101.1000290-1-ankit.k.nautiyal@intel.com>
References: <20220901060101.1000290-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/9] drm/i915/display: Add new members to
 configure PCON color conversion
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

The decision to use DFP output format conversion capabilities should be
during compute_config phase.

This patch adds new members to crtc_state to help configure the DFP
output related conversions. Also adds a member to intel_dp to store
ycbcr420 pass through capability.

This will help to store only the format conversion capabilities of the
DP device in intel_dp->dfp, and use crtc_state to compute and store the
configuration for color/format conversion for a given mode.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0da9b208d56e..065ed19a5dd3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1311,6 +1311,12 @@ struct intel_crtc_state {
 
 	/* for loading single buffered registers during vblank */
 	struct drm_vblank_work vblank_work;
+
+	/* DP DFP color configuration */
+	struct {
+		bool rgb_to_ycbcr;
+		bool ycbcr_444_to_420;
+	} dp_dfp_config;
 };
 
 enum intel_pipe_crc_source {
@@ -1704,6 +1710,7 @@ struct intel_dp {
 		int pcon_max_frl_bw;
 		u8 max_bpc;
 		bool ycbcr_444_to_420;
+		bool ycbcr420_passthrough;
 		bool rgb_to_ycbcr;
 	} dfp;
 
-- 
2.25.1

