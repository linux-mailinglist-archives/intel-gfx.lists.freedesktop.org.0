Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4811E9B090E
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 18:02:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5D0410EB0C;
	Fri, 25 Oct 2024 16:02:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bhEOLFtH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D0BE10EB0B
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Oct 2024 16:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729872150; x=1761408150;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sr6zeKmw5mLWnDSchuFvS12ggnYQ9ZYzpmIewI2+D+U=;
 b=bhEOLFtHwjVxkA+FxG1CPf2rkYdbR9pn3S9/+mtwy8hSck77pqisirkf
 zHHmt+korhPjrEaYkL3SGD7M24jL7GYTcExobq2ZR7YOnnPH4g8oZHabB
 6m4z5XBaAchah/Rff3uIIqst5lBXKGSDrZsSiZ7NahNWKP+jHd7BQbOdS
 AwB/fV3ujdIfVO14H7qQYu2OtcJ9Q9PlISwUIPgqYngk6svrdfBpqFMTc
 k0NH5c/pA3YJZWcjTheIP/C8HQY+XwGmB4MM6llJ7DfeQ4/Y1UeAaJlQv
 khYNDoyp2BQMwIwJVcfrCOqJbR8fFmQZN/ZcsqBhkCwKk9hZRtWOrfA1x g==;
X-CSE-ConnectionGUID: xX9GTOcbS5e6C4WIRPltjw==
X-CSE-MsgGUID: R+vUnbR+TCex88eVQIucUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="33242382"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="33242382"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 09:02:30 -0700
X-CSE-ConnectionGUID: 4FcjeEx7Rpa/Ahi8CdZ5Sg==
X-CSE-MsgGUID: YqSna30eQYiVi92aoBSoKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,232,1725346800"; d="scan'208";a="81783697"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 09:02:29 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH v5 2/8] drm/i915/dp: Ensure panel power remains enabled during
 connector detection
Date: Fri, 25 Oct 2024 19:02:53 +0300
Message-ID: <20241025160259.3088727-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241025160259.3088727-1-imre.deak@intel.com>
References: <20241025160259.3088727-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

The sink's capabilities, like the DSC caps, depend on the source OUI
written to the sink's DPCD registers and so this OUI value should be
valid for the whole duration of the detection. An eDP sink will reset
this OUI value when the panel power is disabled, so prevent the
disabling - happening by default after a 1 sec idle period - for the
whole duration of detection.

v2: Update the documentation for intel_pps_on(). (Jani)

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  | 18 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_pps.c | 14 +++++++++++++-
 drivers/gpu/drm/i915/display/intel_pps.h |  1 +
 3 files changed, 27 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d2019c9ef8e91..69a4e9c86d386 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5616,6 +5616,8 @@ intel_dp_detect(struct drm_connector *connector,
 
 	intel_dp_flush_connector_commits(intel_connector);
 
+	intel_pps_vdd_on(intel_dp);
+
 	/* Can't disconnect eDP */
 	if (intel_dp_is_edp(intel_dp))
 		status = edp_detect(intel_dp);
@@ -5646,12 +5648,15 @@ intel_dp_detect(struct drm_connector *connector,
 
 		intel_dp_tunnel_disconnect(intel_dp);
 
-		goto out;
+		goto out_unset_edid;
 	}
 
 	ret = intel_dp_tunnel_detect(intel_dp, ctx);
-	if (ret == -EDEADLK)
-		return ret;
+	if (ret == -EDEADLK) {
+		status = ret;
+
+		goto out_vdd_off;
+	}
 
 	if (ret == 1)
 		intel_connector->base.epoch_counter++;
@@ -5679,7 +5684,7 @@ intel_dp_detect(struct drm_connector *connector,
 		 * with EDID on it
 		 */
 		status = connector_status_disconnected;
-		goto out;
+		goto out_unset_edid;
 	}
 
 	/*
@@ -5708,7 +5713,7 @@ intel_dp_detect(struct drm_connector *connector,
 
 	intel_dp_check_device_service_irq(intel_dp);
 
-out:
+out_unset_edid:
 	if (status != connector_status_connected && !intel_dp->is_mst)
 		intel_dp_unset_edid(intel_dp);
 
@@ -5717,6 +5722,9 @@ intel_dp_detect(struct drm_connector *connector,
 						 status,
 						 intel_dp->dpcd,
 						 intel_dp->downstream_ports);
+out_vdd_off:
+	intel_pps_vdd_off(intel_dp);
+
 	return status;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index ffeee9daa5689..73a2c9bdd2add 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -801,7 +801,8 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
 }
 
 /*
- * Must be paired with intel_pps_off().
+ * Must be paired with intel_pps_vdd_off() or - to disable
+ * both VDD and panel power - intel_pps_off().
  * Nested calls to these functions are not allowed since
  * we drop the lock. Caller must use some higher level
  * locking to prevent nested calls from other threads.
@@ -950,6 +951,17 @@ void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync)
 		edp_panel_vdd_schedule_off(intel_dp);
 }
 
+void intel_pps_vdd_off(struct intel_dp *intel_dp)
+{
+	intel_wakeref_t wakeref;
+
+	if (!intel_dp_is_edp(intel_dp))
+		return;
+
+	with_intel_pps_lock(intel_dp, wakeref)
+		intel_pps_vdd_off_unlocked(intel_dp, false);
+}
+
 void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index bc5046d536264..c83007152f07d 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -34,6 +34,7 @@ void intel_pps_off_unlocked(struct intel_dp *intel_dp);
 void intel_pps_check_power_unlocked(struct intel_dp *intel_dp);
 
 void intel_pps_vdd_on(struct intel_dp *intel_dp);
+void intel_pps_vdd_off(struct intel_dp *intel_dp);
 void intel_pps_on(struct intel_dp *intel_dp);
 void intel_pps_off(struct intel_dp *intel_dp);
 void intel_pps_vdd_off_sync(struct intel_dp *intel_dp);
-- 
2.44.2

