Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 513CD6F064D
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 15:03:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C335F10E272;
	Thu, 27 Apr 2023 13:03:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A14810EB57
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 13:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682600579; x=1714136579;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hcVZzwN5KqEke3Jvuel76lODJmNT/4LG2YPGFm81wlU=;
 b=lvijAwuE0hxUdcsKMW0fe8oMi4CS/GshmpWwxLNdgeQ/x08LUh5bhEDe
 0tSqPg9JZ0bKIXyvQvZkWUDNIncw2Rv0S2JabxX5BGLuuQGrZfemDxvic
 1apJMekpfbQqU4CquU47XkgORRNTX5exngVvavBCEfRxQHfYSsZ2KyHfS
 +7KVtb/NTMzw3ThNxnhZdkIxN7QgZnv2QzViQhSnnhSngZR60roBcdsf0
 +bK7vspPUISdeZxXX41QNN54L4S07TMgH93eb9QsyqMTQALGevqjpKkZz
 e60HcwWfylN2sIYlSA/KLTqvQ1L42sYb/jRqgqfe0G31CklVt4bdfFjym g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="412762076"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="412762076"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 06:01:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="805950155"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="805950155"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 06:01:02 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Apr 2023 18:26:05 +0530
Message-Id: <20230427125605.487769-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230427125605.487769-1-ankit.k.nautiyal@intel.com>
References: <20230427125605.487769-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/dp: Rearrange check for illegal
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
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e07c5f3438b3..127533130e63 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1131,6 +1131,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	if (target_clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
 
+	if (intel_dp_hdisplay_bad(dev_priv, mode->hdisplay))
+		return MODE_H_ILLEGAL;
+
 	max_link_clock = intel_dp_max_link_rate(intel_dp);
 	max_lanes = intel_dp_max_lane_count(intel_dp);
 
@@ -1138,13 +1141,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
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
@@ -1153,6 +1149,10 @@ intel_dp_mode_valid(struct drm_connector *_connector,
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

