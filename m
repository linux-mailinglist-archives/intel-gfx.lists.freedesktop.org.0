Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E07F873862
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 15:07:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D124F10EE5E;
	Wed,  6 Mar 2024 14:07:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Iulqjflt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 811451131F8
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709734054; x=1741270054;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FinDMKi+L6Iwzy74F8fAuZtebaLiOZkrqdqrv5Z+2uI=;
 b=IulqjfltSGO5pzkjO+bJKpxkfqwfZdLiCql7Se07wx+PstNCaB0ypgci
 9QqS7ZfSPzdUZbiEugepr8+9GYF4CmnN1bb/qVxm3zG/Pe1KF7w/zkCQa
 pmBtTwfpqZ0yIfnUJNHCC9uuzREqs1PfLGi0N90qhvrqXhQwR39qT6BT/
 001rckDFXdVC8+SaGiKnMsjPrN+clZFbUUbeJL2kdxRPtC28G7C4sfrrx
 BADrdjqXDzr6YyORTfNsj6OumlFRTHUtztnNIBZe8exYn7gHDEL2p4VGP
 iEqZY3Fg525hD8sIu/R7OVOXjYUfbXP4XWdG8HaOcUhPPzHxQ5M8iPNnQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="7288462"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; 
   d="scan'208";a="7288462"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 06:07:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="32915277"
Received: from rjongalo-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.211])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 06:07:32 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Jani Nikula <jani.nikula@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH v3 3/6] drm/i915/mst: abstract choosing the MST mode to use
Date: Wed,  6 Mar 2024 16:07:14 +0200
Message-Id: <a40b3f640de57bb59892f532aac22f471312d87f.1709733981.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1709733981.git.jani.nikula@intel.com>
References: <cover.1709733981.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Clarify the conditions for choosing the MST mode to use by adding a new
function intel_dp_mst_mode_choose(). This also prepares for being able
to extend the MST modes to single-stream sideband messaging.

Cc: Arun R Murthy <arun.r.murthy@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 25 +++++++++++++++++++------
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index cef65a300154..9c0fbd2eb62b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4057,6 +4057,24 @@ static const char *intel_dp_mst_mode_str(enum drm_dp_mst_mode mst_mode)
 		return "SST";
 }
 
+static enum drm_dp_mst_mode
+intel_dp_mst_mode_choose(struct intel_dp *intel_dp,
+			 enum drm_dp_mst_mode sink_mst_mode)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+
+	if (!i915->display.params.enable_dp_mst)
+		return DRM_DP_SST;
+
+	if (!intel_dp_mst_source_support(intel_dp))
+		return DRM_DP_SST;
+
+	if (sink_mst_mode == DRM_DP_SST_SIDEBAND_MSG)
+		return DRM_DP_SST;
+
+	return sink_mst_mode;
+}
+
 static enum drm_dp_mst_mode
 intel_dp_mst_detect(struct intel_dp *intel_dp)
 {
@@ -4067,12 +4085,7 @@ intel_dp_mst_detect(struct intel_dp *intel_dp)
 
 	sink_mst_mode = drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd);
 
-	if (i915->display.params.enable_dp_mst &&
-	    intel_dp_mst_source_support(intel_dp) &&
-	    sink_mst_mode == DRM_DP_MST)
-		mst_detect = DRM_DP_MST;
-	else
-		mst_detect = DRM_DP_SST;
+	mst_detect = intel_dp_mst_mode_choose(intel_dp, sink_mst_mode);
 
 	drm_dbg_kms(&i915->drm,
 		    "[ENCODER:%d:%s] MST support: port: %s, sink: %s, modparam: %s -> enable: %s\n",
-- 
2.39.2

