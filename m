Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D11C74E3DF4
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 13:00:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3383410E55A;
	Tue, 22 Mar 2022 12:00:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E94EB10E27B
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Mar 2022 12:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647950425; x=1679486425;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=QccLiJvN29fGaYjhUYha+S9a/5TIDINc+MquHLqiZlo=;
 b=iw/1WGx1jW5lTCtUm44XFlNe1oeRZBknWCL+51uB7H+Ov8YmCuY04+47
 fhzTN0WkRJMk0NQmyfUVPRLb1YSC9dpqZ7aM1K/5lkRiVmIN4dXp9lyWs
 8afoWD/jUFJTiqFSn1BLh8SrQGmLwmIKX2M3cK+1ccDGHMUPXBB7AcCy7
 YEUpQSZGLZT/J3d2PnVop1QeT35sGcf9Iu9hp/GyJEtequVgWGTpLtyfu
 MXDQY6nWGXb909N4XyJLGyQdbCmWRrWAytcMv/bGkff0siu6viNIEMFvA
 5YkMyGNtm2LXY4kUavy6jO3QZMxEWj6TdDvrG/LbFA4T4BjZHSNtUKlK6 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="257748185"
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="257748185"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 05:00:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,201,1643702400"; d="scan'208";a="543664134"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga007.jf.intel.com with SMTP; 22 Mar 2022 05:00:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Mar 2022 14:00:21 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Mar 2022 14:00:05 +0200
Message-Id: <20220322120015.28074-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
References: <20220322120015.28074-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/12] drm/i915/dp: Respect the sink's max
 TMDS clock when dealing with DP->HDMI DFPs
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently we only look at the DFPs max TMDS clock limit when
considering whether the mode is valid, or whether we can do
deep color. The sink's max TMDS clock limit may be lower than
the DFPs, so we need to account for it as well.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4095
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2844
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 24 +++++++++++++++++++-----
 1 file changed, 19 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e874d2f78088..3394e4951fef 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -856,20 +856,34 @@ static bool intel_dp_hdisplay_bad(struct drm_i915_private *dev_priv,
 	return hdisplay == 4096 && !HAS_DDI(dev_priv);
 }
 
+static int intel_dp_max_tmds_clock(struct intel_dp *intel_dp)
+{
+	struct intel_connector *connector = intel_dp->attached_connector;
+	const struct drm_display_info *info = &connector->base.display_info;
+	int max_tmds_clock = intel_dp->dfp.max_tmds_clock;
+
+	/* Only consider the sink's max TMDS clock if we know this is a HDMI DFP */
+	if (max_tmds_clock && info->max_tmds_clock)
+		max_tmds_clock = min(max_tmds_clock, info->max_tmds_clock);
+
+	return max_tmds_clock;
+}
+
 static enum drm_mode_status
 intel_dp_tmds_clock_valid(struct intel_dp *intel_dp,
 			  int clock, int bpc, bool ycbcr420_output)
 {
-	int tmds_clock;
+	int tmds_clock, min_tmds_clock, max_tmds_clock;
 
 	tmds_clock = intel_hdmi_tmds_clock(clock, bpc, ycbcr420_output);
 
-	if (intel_dp->dfp.min_tmds_clock &&
-	    tmds_clock < intel_dp->dfp.min_tmds_clock)
+	min_tmds_clock = intel_dp->dfp.min_tmds_clock;
+	max_tmds_clock = intel_dp_max_tmds_clock(intel_dp);
+
+	if (min_tmds_clock && tmds_clock < min_tmds_clock)
 		return MODE_CLOCK_LOW;
 
-	if (intel_dp->dfp.max_tmds_clock &&
-	    tmds_clock > intel_dp->dfp.max_tmds_clock)
+	if (max_tmds_clock && tmds_clock > max_tmds_clock)
 		return MODE_CLOCK_HIGH;
 
 	return MODE_OK;
-- 
2.34.1

