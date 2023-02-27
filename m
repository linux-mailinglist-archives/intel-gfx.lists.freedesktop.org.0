Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A72336A39F8
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 05:06:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E2D610E160;
	Mon, 27 Feb 2023 04:06:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7986010E15A
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Feb 2023 04:06:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677470770; x=1709006770;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3BTyLHK7YZltHsmLEQZ5VhbUDqx6C0o6N09W1G7UMpk=;
 b=f8gznUlFpfNv720pLUFTXZeub4XkoYh4t03hyBQG8SusHkIafP6/ZsJ7
 ZU/IiSxHsVTTfQfPwjPiqoXObqgFTIpdRDyZRtG60bsUdza8nUn9P5GXC
 zrXSyk6AydlgJOssCJd+xGk1y/OzPfz6Tclmx/2i4bXsRW15vH9c1RFss
 TCeCrIKVgCXdh8gsAO1IQtgTKuC9Kh3LpwAviHhUzy/Vyfa+58mhlnQQa
 JZ/oF96k72LpqkKnlUUlRw1NEBPf/t4fvZ7j4w9MoYA1+FcuNqTOvncjJ
 bAnDng5xerNPQyD8rHsrzc+DEnHwNUvdEAW11dHP4Eh17PSSYEm4ASRH1 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="335251385"
X-IronPort-AV: E=Sophos;i="5.97,330,1669104000"; d="scan'208";a="335251385"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2023 20:06:10 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10633"; a="783147013"
X-IronPort-AV: E=Sophos;i="5.97,330,1669104000"; d="scan'208";a="783147013"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2023 20:06:08 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Feb 2023 09:33:18 +0530
Message-Id: <20230227040324.130811-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230227040324.130811-1-ankit.k.nautiyal@intel.com>
References: <20230227040324.130811-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v10 07/13] drm/i915/dp: Rearrange check for
 illegal mode and comments in mode_valid
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

Check for MODE_H_ILLEGAL before calculating max rates, lanes etc.
Move comments about compressed bpp U6.4 format closer to where it is used.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f03254cd0daf..87a7cb4649be 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1136,6 +1136,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	if (target_clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
 
+	if (intel_dp_hdisplay_bad(dev_priv, mode->hdisplay))
+		return MODE_H_ILLEGAL;
+
 	max_link_clock = intel_dp_max_link_rate(intel_dp);
 	max_lanes = intel_dp_max_lane_count(intel_dp);
 
@@ -1143,13 +1146,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	mode_rate = intel_dp_link_required(target_clock,
 					   intel_dp_mode_min_output_bpp(connector, mode));
 
-	if (intel_dp_hdisplay_bad(dev_priv, mode->hdisplay))
-		return MODE_H_ILLEGAL;
-
-	/*
-	 * Output bpp is stored in 6.4 format so right shift by 4 to get the
-	 * integer value since we support only integer values of bpp.
-	 */
 	if (HAS_DSC(dev_priv) &&
 	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
 		/*
@@ -1158,6 +1154,10 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 		 */
 		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
 
+		/*
+		 * Output bpp is stored in 6.4 format so right shift by 4 to get the
+		 * integer value since we support only integer values of bpp.
+		 */
 		if (intel_dp_is_edp(intel_dp)) {
 			dsc_max_output_bpp =
 				drm_edp_dsc_sink_output_bpp(intel_dp->dsc_dpcd) >> 4;
-- 
2.25.1

