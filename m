Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD6E78696F
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 10:05:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DC5210E4F9;
	Thu, 24 Aug 2023 08:05:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 858DD10E4F3
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 08:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692864327; x=1724400327;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=zLBAoYOZDY+LoMmNZLWiDPfJywHbIZaj9UOOFQE8V8Y=;
 b=cnkaQO6+pFLH7XWUcvGfHUEcO1vuf1kQa9jfn8+iu4plexil3jH7RnvN
 8HkmF1qMnsvN/wrMXM4uYUgnCcsMtbwIn2TMVjsADKx6Z2sJUmHt6u3+Q
 8YfO/NPlR5izU3IG/vxW1kN+Qa8SrZ3DtxjvrmzpypJ1fWK7iX/yYl75m
 t7rVzTXxCkrzzpJvgbxeIzFklG9tTkTqS3QSZ6NRWSrGRJL7Om2FxsNP5
 03hLJfhtvd4lfPd9NEBrNdM+mRYhoK9QA62sHG5X/8LTeAA28s4/PlHcJ
 gQRHvFBVRmebve6qoZB0eogzjaFvSyu1hbBZMo7i1pRESnG6jUBAdRl99 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="374345900"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="374345900"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="880710359"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 01:05:31 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Aug 2023 11:05:15 +0300
Message-Id: <20230824080517.693621-21-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230824080517.693621-1-imre.deak@intel.com>
References: <20230824080517.693621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 20/22] drm/i915/dp_mst: Allow DSC only for
 sink ports of the first branch device
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

Atm the driver supports DSC on MST links only by enabling it globally in
the first branch device UFP's physical DPCD (vs. enabling it per-stream
in the virtual DPCD right upstream the DPRX). This means the branch
device will decompress any compressed stream (which it recognizes via
MSA / SDP compression info), but it does this only for streams going to
an SST output port. Accordingly allow DSC only for streams going to an
SST output port of the first branch device.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 26 +++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 5eaf309f852f2..97bf55f289478 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -349,6 +349,27 @@ intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
 						       limits);
 }
 
+static bool intel_dp_mst_port_supports_dsc(struct intel_dp *intel_dp,
+					   struct intel_crtc_state *crtc_state,
+					   struct drm_connector_state *conn_state)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_connector *connector =
+		to_intel_connector(conn_state->connector);
+	struct intel_crtc *crtc =
+		to_intel_crtc(crtc_state->uapi.crtc);
+
+	if (connector->port->parent != intel_dp->mst_mgr.mst_primary) {
+		drm_dbg_kms(&i915->drm,
+			    "[CRTC:%d:%s] DSC only allowed on sink ports of the first branch device\n",
+			    crtc->base.base.id, crtc->base.name);
+
+		return false;
+	}
+
+	return true;
+}
+
 static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 				       struct intel_crtc_state *pipe_config,
 				       struct drm_connector_state *conn_state)
@@ -396,6 +417,11 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
 			    str_yes_no(ret),
 			    str_yes_no(intel_dp->force_dsc_en));
 
+		if (!intel_dp_mst_port_supports_dsc(intel_dp,
+						    pipe_config,
+						    conn_state))
+			return -EINVAL;
+
 		if (!intel_dp_mst_compute_config_limits(intel_dp,
 							pipe_config,
 							true,
-- 
2.37.2

