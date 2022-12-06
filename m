Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0CAB644180
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 11:46:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 686C010E32A;
	Tue,  6 Dec 2022 10:46:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D593610E324
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 10:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670323559; x=1701859559;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2Lmzdj/9Ct2cbt7KAtZKedHMYVK2uTY54NtmZyeeOMo=;
 b=dC2qx/pZj7CMfkLAf00aQ03z2s0YrHUyKdq9Pd/yGnsuVZbc00CFKaNB
 zNFJ3Xoz1lu4AJFduFJVlL8MUWmCK9OxhkLi4LrXawoczDz1ybP7I8bJp
 5xAwjejYkc0XS/uR7mZe3VVRFA/PziS6KAvP2TN1Ocmy8GuVYYycJSbKc
 ezlaUYqZWxrc9/QUnnV7i+7tgMGwYxpmlxaxYTUSedhI9ArY5uTkAgAOj
 EHW2U2rlDlBI2xvzmpxUICQqD5djtZAUOTylFNnDV8ERfsF1rQYxWsdYT
 f8u2vKIAShyr0nCSksYuu/4uD9nULpqcahAyJyAUYg1nuuuhoxrKXkCgl Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="317735457"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="317735457"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 02:45:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="714758070"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="714758070"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 02:45:57 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Dec 2022 16:16:30 +0530
Message-Id: <20221206104630.1263525-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221206104630.1263525-1-ankit.k.nautiyal@intel.com>
References: <20221206104630.1263525-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 12/12] drm/i915/dsc: Allow DSC only with
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
index be94580e4514..4d69b2d77095 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1594,6 +1594,9 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	for (compressed_bppx16 = dsc_max_bppx16;
 	     compressed_bppx16 >= dsc_min_bppx16;
 	     compressed_bppx16 -= bppx16_step) {
+		if (intel_dp->force_dsc_fractional_bpp_en &&
+		    (compressed_bppx16 % 16 == 0))
+			continue;
 		ret = dsc_compute_link_config(intel_dp,
 					      pipe_config,
 					      limits,
@@ -1712,6 +1715,9 @@ static int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
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

