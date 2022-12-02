Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB0164042A
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 11:10:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C99E310E6C8;
	Fri,  2 Dec 2022 10:09:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 316A910E6C6
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Dec 2022 10:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669975790; x=1701511790;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mYjE7VFHHe2i6H5j9dGYIWPxxaFc9+REn02LDM134n0=;
 b=FDAs7tRerJe3VV7HHDD5YKLas9cVvCj9rN9zkKBBj2+QDt4wZgLfOHc4
 L519PmL5lnUSqLLUZaN3v7LIsTHdXk8CuZ5K3qbRAdCTlIJFaYLeZ5Cja
 iEa7bB5SGyXDDQkPmUmlIfP+flgbbNMPa/OoSQupvEusFFnc5e4g2M2i2
 KQaBH3oIx/7bKK1wuANNTLeLK116z5WMqZwKUDkCvWjEOiMs9goPZCWcp
 eaipuXDyVtf0W5B9b8xx90gWorejwYNqXoRxK8mKN4peZiPpATt2lAe7+
 0UWQR461hxP4VUEDTHWGlRV9+U664JUx9ugIUl45nNfw9J17RS/DEANh7 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="313564596"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="313564596"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 02:09:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="647115797"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="647115797"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 02:09:48 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Dec 2022 15:40:23 +0530
Message-Id: <20221202101028.803630-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221202101028.803630-1-ankit.k.nautiyal@intel.com>
References: <20221202101028.803630-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 09/14] drm/i915/dp: Check if mode can be
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
index d333583e3894..920be0fd39c1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1121,8 +1121,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	max_lanes = intel_dp_max_lane_count(intel_dp);
 
 	max_rate = intel_dp_max_data_rate(max_link_clock, max_lanes);
-	mode_rate = intel_dp_link_required(target_clock,
-					   intel_dp_mode_min_output_bpp(connector, mode));
 
 	if (HAS_DSC(dev_priv) &&
 	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
@@ -1178,7 +1176,12 @@ intel_dp_mode_valid(struct drm_connector *_connector,
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

