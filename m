Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9546669C985
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 12:15:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F02B10E680;
	Mon, 20 Feb 2023 11:15:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 364C710E680
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 11:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676891734; x=1708427734;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lsc+UKezRiNO4ZiDaNKVYmwEyLQJgOuTsP9rexAuINM=;
 b=Giv5hZNSFAUlgwAe4e1p5CEiuqtFwVAtkNP8ONW2dm/VHsnQRq9+qAgb
 RHSin9Xw97ezpARASE1mI2dOSwSNVfQJ5pjTHVd27ZyOOM01i0ZTxTy2V
 KO7R25gRBpV9jJby/24enknJQ0uQ2Po0D3DbA84EYlfI30+jSf/P28wOD
 /GVwbuIV26s5OztmPwuaU8BAqkLw/2YQ28ok2nY8MCzec0GcBU8AHZ4Tk
 QjWFhVps8HancneVx9FUIvCkwhdm4Kojahg6KLNwSa5dd6/lyxOArtLTB
 9ZjNeyoNoge+iFCmu6rw9V1soXQMEtpw9Oy21VwUVT7PgawbKEf45a+l+ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="397061788"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="397061788"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 03:15:33 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="740013101"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="740013101"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 03:15:32 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Feb 2023 16:42:27 +0530
Message-Id: <20230220111232.3383820-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230220111232.3383820-1-ankit.k.nautiyal@intel.com>
References: <20230220111232.3383820-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/14] drm/i915/dp: Check if mode can be
 supported with dsc compressed bpp
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

Use compressed bpp to calculate mode_rate during dp_mode_valid.
Check if this can be supported with max lane count and link rate
combination.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 81808181cbbf..56e787cbbe1d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1143,8 +1143,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	max_lanes = intel_dp_max_lane_count(intel_dp);
 
 	max_rate = intel_dp_max_data_rate(max_link_clock, max_lanes);
-	mode_rate = intel_dp_link_required(target_clock,
-					   intel_dp_mode_min_output_bpp(connector, mode));
 
 	if (HAS_DSC(dev_priv) &&
 	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
@@ -1200,7 +1198,12 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	if (DISPLAY_VER(dev_priv) < 13 && bigjoiner && !dsc)
 		return MODE_CLOCK_HIGH;
 
-	if (mode_rate > max_rate && !dsc)
+	if (dsc)
+		mode_rate = intel_dp_link_required(target_clock, dsc_max_output_bpp);
+	else
+		mode_rate = intel_dp_link_required(target_clock,
+						   intel_dp_mode_min_output_bpp(connector, mode));
+	if (mode_rate > max_rate)
 		return MODE_CLOCK_HIGH;
 
 	status = intel_dp_mode_valid_downstream(connector, mode, target_clock);
-- 
2.25.1

