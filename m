Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FEA6D1DCA
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 12:18:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 240D510F1BB;
	Fri, 31 Mar 2023 10:18:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C99A110F1B7
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 10:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680257912; x=1711793912;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sRLjjURvByh6xZVnMLvAPJ9cVvHyvkFBvA0Y8S+hsls=;
 b=f8OniFb5UZlZYkxdN9/0ugklt0f6wO218oZVwc/PulVXeg5cMUuaREfn
 USXPDcJcew4FFmEzmWMYGsMyEst2s/OvKe5BoylLdfdYfQxndcwSlZgfX
 1S78EzekT65MTYDNDNYotMINVSoVUOL1OcKm/fjSFkFlLc+3dR1pB0joO
 nFS9MwSw90zNkN1wx8ulX6S0Dovd1z9Kk/PabF2uikiGshZBjaaxMnsBm
 swekDxskuovGq5R/uiGI/f6Ln4FuQBKD8HbHGAVbce4wJDhjMFiH/iskp
 oP1wUFHBxDg7phue84qqLNrTup/zDTdNOP12BLvFNBA7PZnWSn8Abau2O g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="340141774"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="340141774"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 03:18:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="796068344"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="796068344"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 03:18:31 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Mar 2023 15:46:07 +0530
Message-Id: <20230331101613.936776-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
References: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/13] drm/i915/dp: Rearrange check for illegal
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
index 352b5fbd805a..4d5c74a1bd29 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1121,6 +1121,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	if (target_clock > max_dotclk)
 		return MODE_CLOCK_HIGH;
 
+	if (intel_dp_hdisplay_bad(dev_priv, mode->hdisplay))
+		return MODE_H_ILLEGAL;
+
 	max_link_clock = intel_dp_max_link_rate(intel_dp);
 	max_lanes = intel_dp_max_lane_count(intel_dp);
 
@@ -1128,13 +1131,6 @@ intel_dp_mode_valid(struct drm_connector *_connector,
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
@@ -1143,6 +1139,10 @@ intel_dp_mode_valid(struct drm_connector *_connector,
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

