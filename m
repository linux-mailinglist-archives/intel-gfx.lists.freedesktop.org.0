Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0B970233E
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 07:17:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7740D10E13B;
	Mon, 15 May 2023 05:17:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BCE710E13B
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 05:17:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684127866; x=1715663866;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3dxxASQquTXmfq95cQgrh3Z5+tUgU7AwWgI3tOzvjnI=;
 b=Mgy8echfMyfKyVWd2cSJgB/BPzTRi21CCWyQBvV9NtVi4SrYV+uGX8cj
 pbexcoV/FM2eASpyQbuH7M6bxIgro7mET69PT+j1obajQ0grOeUFRazbE
 uq0UL/ijNXkfwpFuKWRn/mPbiQPjvoiRVSXPkYJFHH3Ucv6Peovwz1iKg
 s/x8PWFf/9TFUdWllprmScXPdLouTKWHPBT4VKOfsc0A+3uDQv8G5Vo+n
 PCbkcOhuMjYWAfPtWxxeVHvVI2oz6PAAePdkGGMZeqsNkcVzP1kUgShRB
 zqDd8MCRw5BxBdOUa7cgUzkD+Sv3c3xkIipZ3aCTzJxv+ib6FPnEDiCUy Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="330729722"
X-IronPort-AV: E=Sophos;i="5.99,275,1677571200"; d="scan'208";a="330729722"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2023 22:17:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="700835444"
X-IronPort-AV: E=Sophos;i="5.99,275,1677571200"; d="scan'208";a="700835444"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga002.jf.intel.com with ESMTP; 14 May 2023 22:17:44 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 May 2023 10:45:57 +0530
Message-Id: <20230515051557.672109-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230515051557.672109-1-suraj.kandpal@intel.com>
References: <20230515051557.672109-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 4/4] drm/i915/hdcp: Fill hdcp2_streamid_type
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
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 64875c33832c..8c068a9c0a30 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -102,8 +102,11 @@ intel_hdcp_set_content_streams(struct intel_digital_port *dig_port,
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
 
-	if (!intel_encoder_is_mst(&dig_port->base))
+	if (!intel_encoder_is_mst(&dig_port->base)) {
+		data->k = 1;
+		data->streams[0].stream_id = 0;
 		return 0;
+	}
 
 	data->k = 0;
 
@@ -143,7 +146,6 @@ static int intel_hdcp_prepare_streams(struct intel_connector *connector)
 	int ret;
 
 	if (!intel_encoder_is_mst(intel_attached_encoder(connector))) {
-		data->k = 1;
 		data->streams[0].stream_type = hdcp->content_type;
 	} else {
 		ret = intel_hdcp_required_content_stream(dig_port);
@@ -2215,7 +2217,6 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
 {
 	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
-	struct intel_hdcp *hdcp = &connector->hdcp;
 	enum port port = dig_port->base.port;
 
 	if (DISPLAY_VER(dev_priv) < 12)
@@ -2245,9 +2246,6 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
 		drm_err(&dev_priv->drm, "Out of Memory\n");
 		return -ENOMEM;
 	}
-	/* For SST */
-	data->streams[0].stream_id = 0;
-	data->streams[0].stream_type = hdcp->content_type;
 
 	return 0;
 }
-- 
2.25.1

