Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA90702A92
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 12:34:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 882EB10E1A5;
	Mon, 15 May 2023 10:34:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DA6910E1A3
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 10:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684146848; x=1715682848;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sGW4FvdMlWKdORgXv0SMUoQzZFEdvD76HfypSEsCsCE=;
 b=ajrzEUUtr06Xpu2ASrJGFnXPAkzhR+r7iI12wM6FWKbVWoahjfvRxh38
 D0qYlQecxrq9GH/HxRziP+qsespNpmkwpiZBzkUmD2bl4vzD0asA9ansD
 jSXiGtlx/9F6H5qt70qkCeIqK6lQ2hmBMQgFRHJd0O395rzPYY4M5TDdy
 BAxzrqDAXIJ3GIVOBAq1NFjmMuB0EaXu98LquDE5hokZ72qOXLXn5l2+n
 JUUNY9Vm7f98EeNdXo8VOXXWhES8obbTtvfFfOdrubqJgiO+QNKiGyd3e
 C1I+0oNA1bNIdRo+l9PmKWXENgQ5EOAJw4yxbjP1DSJYudkCdqNkJO9AI w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="414563012"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="414563012"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 03:34:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="845209515"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="845209515"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga001.fm.intel.com with ESMTP; 15 May 2023 03:34:04 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 May 2023 16:02:25 +0530
Message-Id: <20230515103225.688830-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230515103225.688830-1-suraj.kandpal@intel.com>
References: <20230515103225.688830-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 4/4] drm/i915/hdcp: Fill hdcp2_streamid_type
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

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 6c3cd3b7db69..350ca3ba5fc8 100644
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
@@ -2297,8 +2292,10 @@ intel_hdcp_set_streams(struct intel_digital_port *dig_port,
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 
-	if (!intel_encoder_is_mst(&dig_port->base))
+	if (!intel_encoder_is_mst(&dig_port->base)) {
+		data->k = 1;
 		return 0;
+	}
 
 	data->k = 0;
 
-- 
2.25.1

