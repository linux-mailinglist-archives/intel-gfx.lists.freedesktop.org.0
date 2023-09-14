Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 906897A0E4C
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 21:27:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98D3910E5A0;
	Thu, 14 Sep 2023 19:27:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 736D610E59B
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 19:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694719633; x=1726255633;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=OEoLvuY0Bet3nHovrL6Np9T869lcr6ulj/NQ/hpkVGo=;
 b=YoN5wKyXsqCc2YOxao3ibXXGLAUX6ChkDj1m9ri5wsKT4QRxNsX4KAsL
 ao4KK/mCeNb6UdFwuJfkJV7ginfa3b06z7PwzddoG1BDmZeZg76rxdPgQ
 Pud8+2fMW0lNBcG/CE4m9hEWqJi+H5owe1fSPIQkklBJtZ0v7Gl+gXQiN
 HFbCz57e/WL3LWeFpb4gjkijgK5K8gIYr6WUhp4BYK0yOzkBUF0EXLLVW
 EdE0oSsrvcxukSkfYTCjWx1PP5npw4orb9bPVffljh2dmn3af4u+oABKd
 5vAPRZVMNof7tbx4G4JNLkVvnGmaWHzUN5mnww+6IhhvseNRD9Kf3LYmj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="465421786"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="465421786"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:27:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="779790630"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="779790630"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 12:27:12 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Sep 2023 22:26:57 +0300
Message-Id: <20230914192659.757475-24-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230914192659.757475-1-imre.deak@intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 23/25] drm/i915/dp_mst: Allow DSC only for
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
index b2ac29a157fbd..f24f656d6d02a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -335,6 +335,27 @@ intel_dp_mst_compute_config_limits(struct intel_dp *intel_dp,
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
@@ -378,6 +399,11 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
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

