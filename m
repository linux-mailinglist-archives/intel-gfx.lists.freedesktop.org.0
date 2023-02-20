Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD09969CAFE
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 13:27:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 142CC10E695;
	Mon, 20 Feb 2023 12:27:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D898310E67F
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 12:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676896018; x=1708432018;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QMny7yaTZpEqzjTwONcSWM6uI/FZ+42dW2xu+DlZarU=;
 b=FxxnCEPQS5Rv39nqNViUg8t8qjFK6A1wmrQroyhzg0ZXGyEOu0hAJ82P
 9wFSI22Klb9ON7TMfSWk50YDMS7/vTA7Jm/fgvn4PqlULly9NUBVHniNs
 CYTNoDHo8JfISSMC1EOLYP3fk1AGuWNBw5Q+Tt4oHLOe9zhoN7Vr0Od1c
 m4xCAuuDUtdhaUoXngR/5iN4EmHhwgW5klcjw3njnPsDO/0s3Vhed+r5S
 rQEl93aMNe7daZz8nEtvk1wlpXMCQLaiSpfQfaMVjpb9WLFPWJsIDf3Wh
 GNgFWaeI+XnRx3C0A/vLDZP70BVanh7/iamdMBLtTv1oR2ToHrmanidgT A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="397073452"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="397073452"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 04:26:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="621142104"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="621142104"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 04:26:57 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Feb 2023 17:53:56 +0530
Message-Id: <20230220122401.3495507-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230220122401.3495507-1-ankit.k.nautiyal@intel.com>
References: <20230220122401.3495507-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 09/14] drm/i915/dp: Check if mode can be
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
index dfd7af97ea55..60090fbbca5f 100644
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

