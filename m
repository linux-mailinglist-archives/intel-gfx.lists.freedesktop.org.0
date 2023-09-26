Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B257AE811
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 10:29:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A91810E388;
	Tue, 26 Sep 2023 08:29:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F94C10E386;
 Tue, 26 Sep 2023 08:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695716984; x=1727252984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4vHYRwZ09GiHhxzwF9IK7MbyNEEgKFT+eO25JutNun8=;
 b=KDov4/hdhvxvZMickGN5uSOZeXLOmqdPzpmXO3ZASfqGTmwq+VMDyj/f
 RW/u6lflLy9QUafEDsKWt4+dEPjCVUfJP/ZNVQ8NZyUl1UaP1NnoMXOAE
 gxNWwUWxkqwQVVcOdSpzQ3YSSVypVk4/L4gEvJSzJN1SfU3OuHs5jx5Hy
 CjyMd2o8PUiVcRtuxqeb0tvohikBor7ed2wl/iBYb/eBMAiSyE6YTsCl8
 zouIdAk6pUUkY+ZHZftlL5WpdPa+5VAirNYkWNM1Es76UGKRgFIlnYYnZ
 sgMmYTa+MFkTBzzFhqcX2ExyKTbJgoRMjLUTicB6eCO0YBCtPMW8cJJAg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="412431914"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="412431914"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 01:29:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="752079134"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="752079134"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmsmga007.fm.intel.com with ESMTP; 26 Sep 2023 01:29:41 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 26 Sep 2023 13:53:31 +0530
Message-Id: <20230926082331.739705-9-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230926082331.739705-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20230926082331.739705-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/8] drm/i915/dsc: Allow DSC only with
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
Cc: suijingfeng@loongson.cn, jani.nikula@intel.com, mripard@kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Swati Sharma <swati2.sharma@intel.com>

If force_dsc_fractional_bpp_en is set through debugfs allow DSC iff
compressed bpp is fractional. Continue if the computed compressed bpp
turns out to be a integer.

v2:
-Use helpers for fractional, integral bits of bits_per_pixel. (Suraj)
-Fix comment (Suraj)

Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6f4a25d024e9..169d84130e4a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1906,6 +1906,9 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
 	for (compressed_bppx16 = dsc_max_bpp;
 	     compressed_bppx16 >= dsc_min_bpp;
 	     compressed_bppx16 -= bppx16_step) {
+		if (intel_dp->force_dsc_fractional_bpp_en &&
+		    !intel_fractional_bpp_decimal(compressed_bppx16))
+			continue;
 		ret = dsc_compute_link_config(intel_dp,
 					      pipe_config,
 					      limits,
@@ -1913,6 +1916,10 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
 					      timeslots);
 		if (ret == 0) {
 			pipe_config->dsc.compressed_bpp_x16 = compressed_bppx16;
+			if (intel_dp->force_dsc_fractional_bpp_en &&
+			    intel_fractional_bpp_decimal(compressed_bppx16))
+				drm_dbg_kms(&i915->drm, "Forcing DSC fractional bpp\n");
+
 			return 0;
 		}
 	}
-- 
2.25.1

