Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C31A596E92
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 14:46:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89F6690E89;
	Wed, 17 Aug 2022 12:45:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB08511A891
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 12:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660740322; x=1692276322;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9gs/XKLdiKSs9VYu62Z2itb6h98Fm/jps74PVfNUAZk=;
 b=W+6B9DD/oyQ6MiM+YgsKVzm4CrVjBRxkWZzNlnEFxrtXJB6GVUX113By
 H7t0+jpn3juPiHh8JtNr1M6cpwccqhq3DbKlIGR0Lvbz6rTwRMEYLKfHV
 dVMB5t8tBKBT4AyzM8vdufdCBlrZOO+k2cN+Pcqi7vfVgQ+dGYy1b476p
 wQb6aftt49vNLrVROIbbTNj+J4uQl4PbbRp1g1kxftBiYO5xiZv9K04zD
 CfgnCKXNoVHOE7AdR9B42seHTg9USqqWZCTZENTsVvyvCKlGj5kXV7Itv
 BWssAda6yhYtWjVNvbSPydflfd2Le4oQCyiyZWiaL7amptpSPCab6GCj5 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10442"; a="291234148"
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="291234148"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 05:45:21 -0700
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="667600076"
Received: from sbammi-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.49.167])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 05:45:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Aug 2022 15:45:15 +0300
Message-Id: <20220817124516.284456-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/dsc/mtl: Update the DSC minor
 version
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

From: Vandita Kulkarni <vandita.kulkarni@intel.com>

From MTL onwards we support DSC1.2, since there is hardcoding
to minor version 1, update it.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 32292c0be2bd..db5f536bde05 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1377,7 +1377,18 @@ static int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 max_req_bpc)
 	return 0;
 }
 
-#define DSC_SUPPORTED_VERSION_MIN		1
+static int intel_dp_source_dsc_version_minor(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
+	return DISPLAY_VER(i915) >= 14 ? 2 : 1;
+}
+
+static int intel_dp_sink_dsc_version_minor(struct intel_dp *intel_dp)
+{
+	return (intel_dp->dsc_dpcd[DP_DSC_REV - DP_DSC_SUPPORT] & DP_DSC_MINOR_MASK) >>
+		DP_DSC_MINOR_SHIFT;
+}
 
 static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
 				       struct intel_crtc_state *crtc_state)
@@ -1416,9 +1427,8 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
 		(intel_dp->dsc_dpcd[DP_DSC_REV - DP_DSC_SUPPORT] &
 		 DP_DSC_MAJOR_MASK) >> DP_DSC_MAJOR_SHIFT;
 	vdsc_cfg->dsc_version_minor =
-		min(DSC_SUPPORTED_VERSION_MIN,
-		    (intel_dp->dsc_dpcd[DP_DSC_REV - DP_DSC_SUPPORT] &
-		     DP_DSC_MINOR_MASK) >> DP_DSC_MINOR_SHIFT);
+		min(intel_dp_source_dsc_version_minor(intel_dp),
+		    intel_dp_sink_dsc_version_minor(intel_dp));
 
 	vdsc_cfg->convert_rgb = intel_dp->dsc_dpcd[DP_DSC_DEC_COLOR_FORMAT_CAP - DP_DSC_SUPPORT] &
 		DP_DSC_RGB;
-- 
2.34.1

