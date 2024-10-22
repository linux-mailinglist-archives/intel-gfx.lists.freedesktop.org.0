Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D4E9AB2EB
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 17:58:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B383410E6B9;
	Tue, 22 Oct 2024 15:58:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m3Zp61Xn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1A6010E6B0;
 Tue, 22 Oct 2024 15:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729612687; x=1761148687;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Whettl/Cr2kxaNiP6VHfUqIAdwypp0ywfQng9qBVoRo=;
 b=m3Zp61XnueqAHsS+y7HEvH0cf+JqFu4iMwIyJjtY4qQLBwYg6HrcqUjQ
 kcQZVLRtFqjqghCxDd4n39gQv3XS+CitCFuIi1NL+93RixfQ0DpWBpsgg
 aq6+AIJNAc9VoKvonyuftgQZW/i9r2n59TDgM3dLGloQEVWAGFyFz7grj
 E/Xw87BhAYwlGHuMZiQhXBzYnEB18Plht0gySmalRS4RYa7Fkb8OxynVg
 lwHzwBedInKgAGvg0LV6zgB1euqiMGjTZ2t2zLpJyum1LfociPWHWGiX5
 17KYO4ir9fDL2MBrEQT1cL6QHroWOO/pyFJ7jYJjeflQABHb8XlEsgl1Y A==;
X-CSE-ConnectionGUID: IYNMuGNcSDS/1pIrNd1XIQ==
X-CSE-MsgGUID: H3cpvQa+Tj6cfulbU6y2Ow==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="29270596"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="29270596"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 08:58:06 -0700
X-CSE-ConnectionGUID: PdyJVAoGQsiY3nktdIG+dQ==
X-CSE-MsgGUID: vkrVNWrkTKiHKSkdyWnFTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="79858006"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.58])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 08:57:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 05/11] drm/i915/dp/hdcp: convert to struct intel_display
Date: Tue, 22 Oct 2024 18:57:22 +0300
Message-Id: <cc314c7be1d175b7bbb82844a99a3de4b4d2c135.1729612605.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729612605.git.jani.nikula@intel.com>
References: <cover.1729612605.git.jani.nikula@intel.com>
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

struct intel_display will replace struct drm_i915_private as the main
device pointer for display code. Switch DP HDCP code over to it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 88 ++++++++++----------
 1 file changed, 45 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 5d77adaaf566..e7f9619bccc0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -58,7 +58,7 @@ static
 int intel_dp_hdcp_write_an_aksv(struct intel_digital_port *dig_port,
 				u8 *an)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	u8 aksv[DRM_HDCP_KSV_LEN] = {};
 	ssize_t dpcd_ret;
 
@@ -66,7 +66,7 @@ int intel_dp_hdcp_write_an_aksv(struct intel_digital_port *dig_port,
 	dpcd_ret = drm_dp_dpcd_write(&dig_port->dp.aux, DP_AUX_HDCP_AN,
 				     an, DRM_HDCP_AN_LEN);
 	if (dpcd_ret != DRM_HDCP_AN_LEN) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Failed to write An over DP/AUX (%zd)\n",
 			    dpcd_ret);
 		return dpcd_ret >= 0 ? -EIO : dpcd_ret;
@@ -82,7 +82,7 @@ int intel_dp_hdcp_write_an_aksv(struct intel_digital_port *dig_port,
 	dpcd_ret = drm_dp_dpcd_write(&dig_port->dp.aux, DP_AUX_HDCP_AKSV,
 				     aksv, DRM_HDCP_KSV_LEN);
 	if (dpcd_ret != DRM_HDCP_KSV_LEN) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Failed to write Aksv over DP/AUX (%zd)\n",
 			    dpcd_ret);
 		return dpcd_ret >= 0 ? -EIO : dpcd_ret;
@@ -93,13 +93,13 @@ int intel_dp_hdcp_write_an_aksv(struct intel_digital_port *dig_port,
 static int intel_dp_hdcp_read_bksv(struct intel_digital_port *dig_port,
 				   u8 *bksv)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	ssize_t ret;
 
 	ret = drm_dp_dpcd_read(&dig_port->dp.aux, DP_AUX_HDCP_BKSV, bksv,
 			       DRM_HDCP_KSV_LEN);
 	if (ret != DRM_HDCP_KSV_LEN) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Read Bksv from DP/AUX failed (%zd)\n", ret);
 		return ret >= 0 ? -EIO : ret;
 	}
@@ -109,7 +109,7 @@ static int intel_dp_hdcp_read_bksv(struct intel_digital_port *dig_port,
 static int intel_dp_hdcp_read_bstatus(struct intel_digital_port *dig_port,
 				      u8 *bstatus)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	ssize_t ret;
 
 	/*
@@ -120,7 +120,7 @@ static int intel_dp_hdcp_read_bstatus(struct intel_digital_port *dig_port,
 	ret = drm_dp_dpcd_read(&dig_port->dp.aux, DP_AUX_HDCP_BINFO,
 			       bstatus, DRM_HDCP_BSTATUS_LEN);
 	if (ret != DRM_HDCP_BSTATUS_LEN) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Read bstatus from DP/AUX failed (%zd)\n", ret);
 		return ret >= 0 ? -EIO : ret;
 	}
@@ -129,7 +129,7 @@ static int intel_dp_hdcp_read_bstatus(struct intel_digital_port *dig_port,
 
 static
 int intel_dp_hdcp_read_bcaps(struct drm_dp_aux *aux,
-			     struct drm_i915_private *i915,
+			     struct intel_display *display,
 			     u8 *bcaps)
 {
 	ssize_t ret;
@@ -137,7 +137,7 @@ int intel_dp_hdcp_read_bcaps(struct drm_dp_aux *aux,
 	ret = drm_dp_dpcd_read(aux, DP_AUX_HDCP_BCAPS,
 			       bcaps, 1);
 	if (ret != 1) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Read bcaps from DP/AUX failed (%zd)\n", ret);
 		return ret >= 0 ? -EIO : ret;
 	}
@@ -149,11 +149,11 @@ static
 int intel_dp_hdcp_repeater_present(struct intel_digital_port *dig_port,
 				   bool *repeater_present)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	ssize_t ret;
 	u8 bcaps;
 
-	ret = intel_dp_hdcp_read_bcaps(&dig_port->dp.aux, i915, &bcaps);
+	ret = intel_dp_hdcp_read_bcaps(&dig_port->dp.aux, display, &bcaps);
 	if (ret)
 		return ret;
 
@@ -165,13 +165,14 @@ static
 int intel_dp_hdcp_read_ri_prime(struct intel_digital_port *dig_port,
 				u8 *ri_prime)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	ssize_t ret;
 
 	ret = drm_dp_dpcd_read(&dig_port->dp.aux, DP_AUX_HDCP_RI_PRIME,
 			       ri_prime, DRM_HDCP_RI_LEN);
 	if (ret != DRM_HDCP_RI_LEN) {
-		drm_dbg_kms(&i915->drm, "Read Ri' from DP/AUX failed (%zd)\n",
+		drm_dbg_kms(display->drm,
+			    "Read Ri' from DP/AUX failed (%zd)\n",
 			    ret);
 		return ret >= 0 ? -EIO : ret;
 	}
@@ -182,14 +183,14 @@ static
 int intel_dp_hdcp_read_ksv_ready(struct intel_digital_port *dig_port,
 				 bool *ksv_ready)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	ssize_t ret;
 	u8 bstatus;
 
 	ret = drm_dp_dpcd_read(&dig_port->dp.aux, DP_AUX_HDCP_BSTATUS,
 			       &bstatus, 1);
 	if (ret != 1) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Read bstatus from DP/AUX failed (%zd)\n", ret);
 		return ret >= 0 ? -EIO : ret;
 	}
@@ -201,7 +202,7 @@ static
 int intel_dp_hdcp_read_ksv_fifo(struct intel_digital_port *dig_port,
 				int num_downstream, u8 *ksv_fifo)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	ssize_t ret;
 	int i;
 
@@ -213,7 +214,7 @@ int intel_dp_hdcp_read_ksv_fifo(struct intel_digital_port *dig_port,
 				       ksv_fifo + i * DRM_HDCP_KSV_LEN,
 				       len);
 		if (ret != len) {
-			drm_dbg_kms(&i915->drm,
+			drm_dbg_kms(display->drm,
 				    "Read ksv[%d] from DP/AUX failed (%zd)\n",
 				    i, ret);
 			return ret >= 0 ? -EIO : ret;
@@ -226,7 +227,7 @@ static
 int intel_dp_hdcp_read_v_prime_part(struct intel_digital_port *dig_port,
 				    int i, u32 *part)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	ssize_t ret;
 
 	if (i >= DRM_HDCP_V_PRIME_NUM_PARTS)
@@ -236,7 +237,7 @@ int intel_dp_hdcp_read_v_prime_part(struct intel_digital_port *dig_port,
 			       DP_AUX_HDCP_V_PRIME(i), part,
 			       DRM_HDCP_V_PRIME_PART_LEN);
 	if (ret != DRM_HDCP_V_PRIME_PART_LEN) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Read v'[%d] from DP/AUX failed (%zd)\n", i, ret);
 		return ret >= 0 ? -EIO : ret;
 	}
@@ -256,14 +257,14 @@ static
 bool intel_dp_hdcp_check_link(struct intel_digital_port *dig_port,
 			      struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	ssize_t ret;
 	u8 bstatus;
 
 	ret = drm_dp_dpcd_read(&dig_port->dp.aux, DP_AUX_HDCP_BSTATUS,
 			       &bstatus, 1);
 	if (ret != 1) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Read bstatus from DP/AUX failed (%zd)\n", ret);
 		return false;
 	}
@@ -275,11 +276,11 @@ static
 int intel_dp_hdcp_get_capability(struct intel_digital_port *dig_port,
 				 bool *hdcp_capable)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	ssize_t ret;
 	u8 bcaps;
 
-	ret = intel_dp_hdcp_read_bcaps(&dig_port->dp.aux, i915, &bcaps);
+	ret = intel_dp_hdcp_read_bcaps(&dig_port->dp.aux, display, &bcaps);
 	if (ret)
 		return ret;
 
@@ -342,7 +343,7 @@ static int
 intel_dp_hdcp2_read_rx_status(struct intel_connector *connector,
 			      u8 *rx_status)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_dp_aux *aux = &dig_port->dp.aux;
 	ssize_t ret;
@@ -351,7 +352,7 @@ intel_dp_hdcp2_read_rx_status(struct intel_connector *connector,
 			       DP_HDCP_2_2_REG_RXSTATUS_OFFSET, rx_status,
 			       HDCP_2_2_DP_RXSTATUS_LEN);
 	if (ret != HDCP_2_2_DP_RXSTATUS_LEN) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "Read bstatus from DP/AUX failed (%zd)\n", ret);
 		return ret >= 0 ? -EIO : ret;
 	}
@@ -397,7 +398,7 @@ static ssize_t
 intel_dp_hdcp2_wait_for_msg(struct intel_connector *connector,
 			    const struct hdcp2_dp_msg_data *hdcp2_msg_data)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct intel_dp *dp = &dig_port->dp;
 	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
@@ -430,7 +431,7 @@ intel_dp_hdcp2_wait_for_msg(struct intel_connector *connector,
 	}
 
 	if (ret)
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "msg_id %d, ret %d, timeout(mSec): %d\n",
 			    hdcp2_msg_data->msg_id, ret, timeout);
 
@@ -514,8 +515,8 @@ static
 int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 			    u8 msg_id, void *buf, size_t size)
 {
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct drm_dp_aux *aux = &dig_port->dp.aux;
 	struct intel_dp *dp = &dig_port->dp;
 	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
@@ -568,7 +569,7 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 		ret = drm_dp_dpcd_read(aux, offset,
 				       (void *)byte, len);
 		if (ret < 0) {
-			drm_dbg_kms(&i915->drm, "msg_id %d, ret %zd\n",
+			drm_dbg_kms(display->drm, "msg_id %d, ret %zd\n",
 				    msg_id, ret);
 			return ret;
 		}
@@ -581,7 +582,8 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 	if (hdcp2_msg_data->msg_read_timeout > 0) {
 		msg_expired = ktime_after(ktime_get_raw(), msg_end);
 		if (msg_expired) {
-			drm_dbg_kms(&i915->drm, "msg_id %d, entire msg read timeout(mSec): %d\n",
+			drm_dbg_kms(display->drm,
+				    "msg_id %d, entire msg read timeout(mSec): %d\n",
 				    msg_id, hdcp2_msg_data->msg_read_timeout);
 			return -ETIMEDOUT;
 		}
@@ -696,7 +698,7 @@ int intel_dp_hdcp_get_remote_capability(struct intel_connector *connector,
 					bool *hdcp_capable,
 					bool *hdcp2_capable)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	struct drm_dp_aux *aux;
 	u8 bcaps;
 	int ret;
@@ -709,10 +711,10 @@ int intel_dp_hdcp_get_remote_capability(struct intel_connector *connector,
 	aux = &connector->port->aux;
 	ret =  _intel_dp_hdcp2_get_capability(aux, hdcp2_capable);
 	if (ret)
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "HDCP2 DPCD capability read failed err: %d\n", ret);
 
-	ret = intel_dp_hdcp_read_bcaps(aux, i915, &bcaps);
+	ret = intel_dp_hdcp_read_bcaps(aux, display, &bcaps);
 	if (ret)
 		return ret;
 
@@ -745,8 +747,8 @@ static int
 intel_dp_mst_toggle_hdcp_stream_select(struct intel_connector *connector,
 				       bool enable)
 {
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	int ret;
 
@@ -754,7 +756,7 @@ intel_dp_mst_toggle_hdcp_stream_select(struct intel_connector *connector,
 					 hdcp->stream_transcoder, enable,
 					 TRANS_DDI_HDCP_SELECT);
 	if (ret)
-		drm_err(&i915->drm, "%s HDCP stream select failed (%d)\n",
+		drm_err(display->drm, "%s HDCP stream select failed (%d)\n",
 			enable ? "Enable" : "Disable", ret);
 	return ret;
 }
@@ -763,8 +765,8 @@ static int
 intel_dp_mst_hdcp_stream_encryption(struct intel_connector *connector,
 				    bool enable)
 {
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	enum port port = dig_port->base.port;
 	enum transcoder cpu_transcoder = hdcp->stream_transcoder;
@@ -780,10 +782,10 @@ intel_dp_mst_hdcp_stream_encryption(struct intel_connector *connector,
 		return -EINVAL;
 
 	/* Wait for encryption confirmation */
-	if (intel_de_wait(i915, HDCP_STATUS(i915, cpu_transcoder, port),
+	if (intel_de_wait(display, HDCP_STATUS(display, cpu_transcoder, port),
 			  stream_enc_status, enable ? stream_enc_status : 0,
 			  HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
-		drm_err(&i915->drm, "Timed out waiting for transcoder: %s stream encryption %s\n",
+		drm_err(display->drm, "Timed out waiting for transcoder: %s stream encryption %s\n",
 			transcoder_name(cpu_transcoder), enable ? "enabled" : "disabled");
 		return -ETIMEDOUT;
 	}
@@ -795,8 +797,8 @@ static int
 intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
 				     bool enable)
 {
+	struct intel_display *display = to_intel_display(connector);
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 	struct intel_hdcp *hdcp = &connector->hdcp;
 	enum transcoder cpu_transcoder = hdcp->stream_transcoder;
@@ -804,8 +806,8 @@ intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
 	enum port port = dig_port->base.port;
 	int ret;
 
-	drm_WARN_ON(&i915->drm, enable &&
-		    !!(intel_de_read(i915, HDCP2_AUTH_STREAM(i915, cpu_transcoder, port))
+	drm_WARN_ON(display->drm, enable &&
+		    !!(intel_de_read(display, HDCP2_AUTH_STREAM(display, cpu_transcoder, port))
 		    & AUTH_STREAM_TYPE) != data->streams[0].stream_type);
 
 	ret = intel_dp_mst_toggle_hdcp_stream_select(connector, enable);
@@ -813,11 +815,11 @@ intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
 		return ret;
 
 	/* Wait for encryption confirmation */
-	if (intel_de_wait(i915, HDCP2_STREAM_STATUS(i915, cpu_transcoder, pipe),
+	if (intel_de_wait(display, HDCP2_STREAM_STATUS(display, cpu_transcoder, pipe),
 			  STREAM_ENCRYPTION_STATUS,
 			  enable ? STREAM_ENCRYPTION_STATUS : 0,
 			  HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
-		drm_err(&i915->drm, "Timed out waiting for transcoder: %s stream encryption %s\n",
+		drm_err(display->drm, "Timed out waiting for transcoder: %s stream encryption %s\n",
 			transcoder_name(cpu_transcoder), enable ? "enabled" : "disabled");
 		return -ETIMEDOUT;
 	}
-- 
2.39.5

