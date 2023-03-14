Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 522E36B910F
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Mar 2023 12:07:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70BBF10E787;
	Tue, 14 Mar 2023 11:06:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FC8710E785
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Mar 2023 11:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678792012; x=1710328012;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tfSMdAvvI2TTZagwv6X+713lEXtR2m8k/qySoSq0q94=;
 b=DW4i+12KgULHDUn0ozkxpxhNVAx923isrvkIr+ZLRv9+6BKGM6jPjrtd
 7ibWRwk27qbHAuF7leThOKzoiWbpCZtuPW3GtOvbpY6O0B3d9264gh6Xv
 i/8sIClgGOGNQSuu6pM4YwFhtcjSF+0CC2/pgT07cvs5IT4b5DN7lAFs9
 8dqlwKaqTdSi0BlTykeH5A2P2NKAYAxE5L0zKgkF5ePvkxH+0hCPEN0wI
 UUqJfBcBFcLWvqrlkfOWdLEhialnCm1oP9d2dALrS3iXwXoxM+PD7Jn1O
 vley7dTX+COFc+7dsvtpN/eNAH9V9BffG/5KZTfRWZH+iVrsAG/dWbUbN w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="423664529"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="423664529"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 04:06:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="924872954"
X-IronPort-AV: E=Sophos;i="5.98,259,1673942400"; d="scan'208";a="924872954"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2023 04:06:50 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Mar 2023 16:34:12 +0530
Message-Id: <20230314110415.2882484-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230314110415.2882484-1-ankit.k.nautiyal@intel.com>
References: <20230314110415.2882484-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v11 08/11] drm/i915/dp: Avoid DSC with
 output_format YCBCR420
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

Currently, DSC with YCBCR420 is not supported.
Return -EINVAL when trying with DSC with output_format as YCBCR420.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b1431ed175bc..99a5cd370c1f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1602,6 +1602,10 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
 		return -EINVAL;
 
+	/* Currently DSC with YCBCR420 format is not supported */
+	if (pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
+		return -EINVAL;
+
 	if (compute_pipe_bpp)
 		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, pipe_config->output_format,
 						    conn_state->max_requested_bpc);
-- 
2.25.1

