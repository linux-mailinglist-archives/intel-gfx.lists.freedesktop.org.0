Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A08E7F576D
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 05:33:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C72010E0B1;
	Thu, 23 Nov 2023 04:33:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 937C810E0B1
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 04:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700714011; x=1732250011;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ufobhek3ZrOGR/DmJ8lW/OoxRizGwbcCks/u84sl5qc=;
 b=Svskk9otDltn0s1zCVU7lX2YNHYvZyrxUoRr1UKwlH4iIMCpRs8Jc7X4
 MWZy6x7ogIm//KU+ty78iUvLZR/i3baHn8eOdD4KnDpbr2nKhNq3un1Fs
 gMOVaLlnGn9EuzwhXaqv3Rb82vDZCvsIGwL42Jxd7iGKK09mICMAemIJG
 3eR4uvruev9qY5TTXWiqu86iIjYccqufjjcjPsj2MfG7Y6vi0clhPvvjj
 bvsxu9rnVbhS5/6JKDpRi/sSxryyBOGD3MaRTC7utBtCZuLqr8syoJuAQ
 /Hf5vWOEn3lCkc/HbsHNePU3SNMkS0q+Wd9Qo1wenW2wP0NsuMKhxuMAY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="5336591"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; 
   d="scan'208";a="5336591"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 20:33:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="796223359"
X-IronPort-AV: E=Sophos;i="6.04,220,1695711600"; d="scan'208";a="796223359"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 20:33:29 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Nov 2023 09:57:33 +0530
Message-Id: <20231123042733.1027046-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231123042733.1027046-1-ankit.k.nautiyal@intel.com>
References: <20231123042733.1027046-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/dp: Ignore max_requested_bpc if
 its too low for DSC
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

At the moment, while choosing the input bpc for DSC, we take into
account the max_requested_bpc property. This creates a problem, if the
max_requested_bpc is lower than the minimum bpc required by source with
DSC.

So consider max_requested_bpc if its within the limits that we can
support with DSC.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 22 ++++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0f5040c114b3..d29cbf6436a5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1634,6 +1634,16 @@ u8 intel_dp_dsc_max_src_input_bpc(struct drm_i915_private *i915)
 	return 12;
 }
 
+static int
+intel_dp_dsc_limit_max_bpc(int max_requested_bpc, int src_dsc_max_bpc, int src_dsc_min_bpc)
+{
+	/* Consider max_requested_bpc only if src can support it with DSC */
+	if (max_requested_bpc >= src_dsc_min_bpc)
+		return min(src_dsc_max_bpc, max_requested_bpc);
+
+	return src_dsc_max_bpc;
+}
+
 int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 				 u8 max_req_bpc)
 {
@@ -1647,7 +1657,8 @@ int intel_dp_dsc_compute_max_bpp(const struct intel_connector *connector,
 	if (!dsc_max_bpc)
 		return dsc_max_bpc;
 
-	dsc_max_bpc = min_t(u8, dsc_max_bpc, max_req_bpc);
+	dsc_max_bpc = intel_dp_dsc_limit_max_bpc(max_req_bpc, dsc_max_bpc,
+						 intel_dp_dsc_min_src_input_bpc(i915));
 
 	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd,
 						       dsc_bpc);
@@ -2035,8 +2046,11 @@ bool is_dsc_pipe_bpp_sufficient(struct drm_i915_private *i915,
 {
 	u8 dsc_max_bpc, dsc_min_bpc, dsc_max_pipe_bpp, dsc_min_pipe_bpp;
 
-	dsc_max_bpc = min(intel_dp_dsc_max_src_input_bpc(i915), conn_state->max_requested_bpc);
 	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
+	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
+
+	dsc_max_bpc = intel_dp_dsc_limit_max_bpc(conn_state->max_requested_bpc,
+						 dsc_max_bpc, dsc_min_bpc);
 
 	dsc_max_pipe_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
 	dsc_min_pipe_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
@@ -2096,14 +2110,14 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 		}
 	}
 
+	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
 	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
 	if (!dsc_max_bpc)
 		return -EINVAL;
 
-	dsc_max_bpc = min_t(u8, dsc_max_bpc, max_req_bpc);
+	dsc_max_bpc = intel_dp_dsc_limit_max_bpc(max_req_bpc, dsc_max_bpc, dsc_min_bpc);
 	dsc_max_bpp = min(dsc_max_bpc * 3, limits->pipe.max_bpp);
 
-	dsc_min_bpc = intel_dp_dsc_min_src_input_bpc(i915);
 	dsc_min_bpp = max(dsc_min_bpc * 3, limits->pipe.min_bpp);
 
 	/*
-- 
2.40.1

