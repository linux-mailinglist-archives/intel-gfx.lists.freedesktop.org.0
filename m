Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC8763A5FB
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 11:19:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E776710E2D2;
	Mon, 28 Nov 2022 10:19:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C7C610E2CE
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 10:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669630730; x=1701166730;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ATB3sXDAvFvjMspDfZZVrb3VahmXc2KfOjTS+rPisO0=;
 b=ky5eBbleXWfyU++208NAtTOaCqf9PkNIgV0dpyRDBcYEwYoZbx/ehKkg
 UN103+LeB7+nyPFw4ZgYnGpnMHuMdJXhyshFjSvuH3xLp7xiBnote36O/
 4RKUKPQ3BEKr0X91bM+KgWtTVD05SMA2u4CphYQCV/nbwLWVK3tjLEcSr
 dhIpvDle3LBZtYuMW/BSTTuN1Qa3uwpu6KAHjjambfpZvoDyTS3Jfg3WM
 21+sn7Wh7D6JYAMDUmMdx3jwgJx0YTGPuoxl82gf5WdNACQi9+P0zi+nQ
 LA7264S+d30UAY+6SIu0BVooH+SvV+93fRO+zZ3B5LSPph/upbeTAV7/s g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="294500158"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="294500158"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 02:18:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="749319828"
X-IronPort-AV: E=Sophos;i="5.96,200,1665471600"; d="scan'208";a="749319828"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 02:18:48 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Nov 2022 15:49:22 +0530
Message-Id: <20221128101922.217217-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221128101922.217217-1-ankit.k.nautiyal@intel.com>
References: <20221128101922.217217-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/11] drm/i915/dsc: Allow DSC only with
 fractional bpp when forced from debugfs
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

From: Swati Sharma <swati2.sharma@intel.com>

If force_dsc_fractional_bpp_en is set through debugfs allow DSC iff
compressed bpp is fractional. Continue if we computed compressed bpp is
computed as integer.

Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 379dd683be0a..5ed7471247ad 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1591,6 +1591,9 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	for (compressed_bppx16 = dsc_max_bppx16;
 	     compressed_bppx16 >= dsc_min_bppx16;
 	     compressed_bppx16 -= bppx16_step) {
+		if (intel_dp->force_dsc_fractional_bpp_en &&
+		    (compressed_bppx16 % 16 == 0))
+			continue;
 		ret = dsc_compute_link_config(intel_dp,
 					      pipe_config,
 					      limits,
@@ -1709,6 +1712,9 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	} else {
 		u8 dsc_dp_slice_count;
 
+		if (intel_dp->force_dsc_fractional_bpp_en)
+			drm_dbg_kms(&dev_priv->drm,
+				    "Forcing DSC fractional bpp\n");
 		if (intel_dp->force_dsc_bpc &&
 		    intel_dp->force_dsc_bpc <= conn_state->max_requested_bpc)
 			ret = dsc_compute_compressed_bpp(intel_dp, pipe_config,
-- 
2.25.1

