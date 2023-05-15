Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B724D702B7E
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 13:29:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2049310E056;
	Mon, 15 May 2023 11:29:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 385DE10E056
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 11:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684150139; x=1715686139;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cUew+kAndNF+OnFg/ZCJlxKM+ggvk2JQT55fx5vK3aA=;
 b=Vh+a+urIQD7zqjNg3qH9CpEEA0NJ2G2gpClKWmfvSN7Un+nDoIitxxJz
 BG9UYFMOoPmIFypyAIk+ZVcziX2j/YMmxSzJBJrt95QwJm/MOHAKoVit+
 XU6+nrAiblc2oaEAn1omSn2tgk1e04k1stXfnzTuFOQdxJ/6x1OTuO7XQ
 YwkRuiabNO4mfHszoCzSBIqT7BMhpGBbYRaP0etUd7+y7iNjtSJEkkpl4
 jArbb/Z1OjHGH+4VojD2ikJr0CCJv4WDc55u5cKub3TvJUWkGa1wUqPIs
 DY1YKBjGiftaOTwCP1locWIhMm4CcrGjDzYqDiAOhllWzOrvKImtxHQLU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="379337788"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="379337788"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 04:28:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="875142961"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="875142961"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga005.jf.intel.com with ESMTP; 15 May 2023 04:28:57 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 May 2023 16:57:26 +0530
Message-Id: <20230515112726.689116-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230515103225.688830-5-suraj.kandpal@intel.com>
References: <20230515103225.688830-5-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 4/4] drm/i915/hdcp: Fill hdcp2_streamid_type
 and k in appropriate places
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

stream_id and k(no of streams) should be set in
intel_hdcp_set_content_streams. stream_type should be set in
intel_hdcp_required_content_stream.

--v5
-add missing stream_id assignment [Ankit]

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 6c3cd3b7db69..2c1c061c0923 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -97,7 +97,6 @@ static void intel_hdcp_prepare_streams(struct intel_connector *connector)
 	struct intel_hdcp *hdcp = &connector->hdcp;
 
 	if (!intel_encoder_is_mst(intel_attached_encoder(connector))) {
-		data->k = 1;
 		data->streams[0].stream_type = hdcp->content_type;
 	} else {
 		intel_hdcp_required_content_stream(dig_port);
@@ -2159,7 +2158,6 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
-	struct intel_hdcp *hdcp = &connector->hdcp;
 	enum port port = dig_port->base.port;
 
 	if (DISPLAY_VER(dev_priv) < 12)
@@ -2189,9 +2187,6 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
 		drm_err(&dev_priv->drm, "Out of Memory\n");
 		return -ENOMEM;
 	}
-	/* For SST */
-	data->streams[0].stream_id = 0;
-	data->streams[0].stream_type = hdcp->content_type;
 
 	return 0;
 }
@@ -2297,8 +2292,11 @@ intel_hdcp_set_streams(struct intel_digital_port *dig_port,
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 
-	if (!intel_encoder_is_mst(&dig_port->base))
+	if (!intel_encoder_is_mst(&dig_port->base)) {
+		data->k = 1;
+		data->streams[0].stream_id = 0;
 		return 0;
+	}
 
 	data->k = 0;
 
-- 
2.25.1

