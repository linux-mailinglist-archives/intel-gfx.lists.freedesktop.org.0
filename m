Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 679A697BFD2
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 19:48:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C19910E293;
	Wed, 18 Sep 2024 17:48:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N/k93IEu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8F4510E60C;
 Wed, 18 Sep 2024 17:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726681691; x=1758217691;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hk+flCep1QHbkV0k1t4DKTXr4ihAJFm97AoIZHcJYDI=;
 b=N/k93IEuy8t0ioESuDWJEQGISMi2SSp+JVS/xOtf9ldWaGN+qC5kF91U
 bQAThw9jDB+dVrL4G1L/Q64arkQc+0INWdiFifh/u/KUw4QOX++l6s3kq
 HP+E7DyzoFUkOW0EbkKze0YYrW/b7rom9QlP9YY3bdTMX7K/7Bb6EGR6j
 HBASZrjk3nxBiEKLuRrwR1BciPZbrOTYTdFHarZ2E+jpqax+fvB8Exrof
 ts6Vyb+gJIjfqWbBk9SnG/2cIYiawPvAIwJUI3vMEQ84zdpZc53Hiq4KL
 VXae1Jqh24J2XVWdoYm0S3C6h3I2Oc/f/yV01shdlTYy1PlUnBMvzQGvQ A==;
X-CSE-ConnectionGUID: AR0jZ86OSjOmzdGT3yIYhA==
X-CSE-MsgGUID: S9WoELN4RzK8TA5nSMudqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25095129"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="25095129"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:48:11 -0700
X-CSE-ConnectionGUID: Lr3MHVrzQmKlttc7xAzfbw==
X-CSE-MsgGUID: Q+25uQTrQ/K/7IRA1+/9lA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="74447336"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:48:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v3 3/9] drm/i915/pps: only touch the vlv_ members on VLV/CHV
Date: Wed, 18 Sep 2024 20:47:43 +0300
Message-Id: <158c7b30e56d22aa3f9c9e51e87b9d89687d74d5.1726681620.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726681620.git.jani.nikula@intel.com>
References: <cover.1726681620.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

While the struct intel_pps vlv_pps_pipe and vlv_active_pipe members are
only relevant for VLV/CHV, we still initialize them on all platforms and
check them on BXT/GLK. Wrap all access inside VLV/CHV checks for
consistency.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  |  6 +++---
 drivers/gpu/drm/i915/display/intel_pps.c | 11 ++++++-----
 2 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9dd86523012f..9f908dbd45ea 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6867,8 +6867,6 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 		return false;
 
 	intel_dp->reset_link_params = true;
-	intel_dp->pps.vlv_pps_pipe = INVALID_PIPE;
-	intel_dp->pps.vlv_active_pipe = INVALID_PIPE;
 
 	/* Preserve the current hw state. */
 	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
@@ -6895,8 +6893,10 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	intel_dp_set_default_sink_rates(intel_dp);
 	intel_dp_set_default_max_sink_lane_count(intel_dp);
 
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
+		intel_dp->pps.vlv_pps_pipe = INVALID_PIPE;
 		intel_dp->pps.vlv_active_pipe = vlv_active_pipe(intel_dp);
+	}
 
 	intel_dp_aux_init(intel_dp);
 	intel_connector->dp.dsc_decompression_aux = &intel_dp->aux;
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 2d8d911988ab..649dc6ad2278 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -472,16 +472,17 @@ void intel_pps_reset_all(struct intel_display *display)
 	for_each_intel_dp(display->drm, encoder) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
-		drm_WARN_ON(display->drm,
-			    intel_dp->pps.vlv_active_pipe != INVALID_PIPE);
+		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+			drm_WARN_ON(display->drm,
+				    intel_dp->pps.vlv_active_pipe != INVALID_PIPE);
 
 		if (encoder->type != INTEL_OUTPUT_EDP)
 			continue;
 
-		if (DISPLAY_VER(display) >= 9)
-			intel_dp->pps.bxt_pps_reset = true;
-		else
+		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 			intel_dp->pps.vlv_pps_pipe = INVALID_PIPE;
+		else
+			intel_dp->pps.bxt_pps_reset = true;
 	}
 }
 
-- 
2.39.2

