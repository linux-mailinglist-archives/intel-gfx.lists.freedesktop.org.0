Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 283596653DB
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 06:40:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3172010E6E7;
	Wed, 11 Jan 2023 05:39:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E62A210E6E4
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673415593; x=1704951593;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RgUtPlJKvNBvYaob7xBuC6CA42eQAvLr42wKf+jHlzw=;
 b=iT9e+PNksdHym6Gh5q2f8tCUw2nRVqZY8P3ifxNQDzrYEOyyR1aK12J8
 iYf5ob4Oe0zXGSb9Iv2/+foYk+cB5wIrpXLCCHBemW5ZlSKm+FH94zWoG
 NocYguphEtEzcrG/3/73KAUf7WwVpcI7tgrmc0rAfz+qtkZXW5M1NEXrt
 8Iz1s+wuh3e9k3jH3won4F0Ir8Cnr+vJS706/f/3axeC/284aLX8tpf+M
 yUQqxt483bo8NJfXo+3OkuHuelBF+4JXnfP67c5RG11htOpTd5o7DWTU7
 LuLBF8lW3GPyMy28A6Ji321hibqmI1CjSav3qZ1s+F5GRrxefMATiXy6V Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="325341378"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="325341378"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 21:39:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="720598376"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="720598376"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga008.fm.intel.com with ESMTP; 10 Jan 2023 21:39:52 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Jan 2023 11:08:29 +0530
Message-Id: <20230111053837.1608588-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230111053837.1608588-1-suraj.kandpal@intel.com>
References: <20230111053837.1608588-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 1/9] drm/dp_helper: Add helper to check if
 the sink supports given format with DSC
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

From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Add helper function to check if the DP sink supports DSC with the given
output format.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 include/drm/display/drm_dp_helper.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
index ab55453f2d2c..d529d0254b68 100644
--- a/include/drm/display/drm_dp_helper.h
+++ b/include/drm/display/drm_dp_helper.h
@@ -194,6 +194,13 @@ drm_dp_dsc_sink_max_slice_width(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
 		DP_DSC_SLICE_WIDTH_MULTIPLIER;
 }
 
+/* Check if sink supports DSC with given output format */
+static inline bool
+drm_dp_dsc_sink_supports_format(const u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE], u8 output_format)
+{
+	return dsc_dpcd[DP_DSC_DEC_COLOR_FORMAT_CAP - DP_DSC_SUPPORT] & output_format;
+}
+
 /* Forward Error Correction Support on DP 1.4 */
 static inline bool
 drm_dp_sink_supports_fec(const u8 fec_capable)
-- 
2.25.1

