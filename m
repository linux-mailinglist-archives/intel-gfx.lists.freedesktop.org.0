Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49BE269C98B
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 12:15:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB31E10E692;
	Mon, 20 Feb 2023 11:15:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9222610E675
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 11:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676891730; x=1708427730;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Xlh2OHtkgZ0dR1xuILGCtRb6w7dBsdCqAJDKS7BRZlE=;
 b=Qc/8EJRxch9wLZDWb+tdLra2vvjSnKp0zdEcbvUYu3U1qYCURAahecIm
 YMlmITc1B75fOJMKddPauMkez49XVmJ3IVlzLoKCs1+SdqreJpNrVpvtd
 DEjMF28IvbJ4YnsGxlJZMk//TbLxS6PXjE+rpwzolhn/lYjCFj4rSWpwE
 wqPWwdhYwcLS1L5icJuk1vX1esvIMfg1+sNTXHiRuhHLAbcXE2hfhuOxe
 42kTu1bCib8Xw8XdZG5WCyEGpmgAWxKy3Ib5ijqdbUGzgHdAj+8hZ17jY
 stjFBJmireaQ2VaMT/0j3/1KMjmKfQewiP86M2WctXDthKSfUixkh3lZN Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="397061773"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="397061773"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 03:15:30 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10626"; a="740013080"
X-IronPort-AV: E=Sophos;i="5.97,312,1669104000"; d="scan'208";a="740013080"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 03:15:28 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Feb 2023 16:42:25 +0530
Message-Id: <20230220111232.3383820-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230220111232.3383820-1-ankit.k.nautiyal@intel.com>
References: <20230220111232.3383820-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/14] drm/i915/dp: Rearrange check for illegal
 mode and comments in mode_valid
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
index 859645fa89cc..ff88d3e734df 100644
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

