Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBEA7D448F
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 03:09:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B808510E2B6;
	Tue, 24 Oct 2023 01:09:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFFA010E2AE
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 01:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698109746; x=1729645746;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XY9jKZTWFLuvy9NigwNcJeYNvfJ19kjKtxv7ZBeHmCA=;
 b=MQEhk2mFXqFZ9XC6RAUU6pyd6MsA1SJuxqY2ZR3PyaeX5NR1+rv8IFjV
 ENC559uTZmNrbBfVRG/3aTReBNK6ltz87jIZQ+1+DwFAyW0pJIADeRHnB
 YO/gMS6/gV4culcQzHJ24mwUQgoG6aY/l2wIKkYIPe3b8pdENgHOA/stk
 A5AdJZXpqpuBWoTzB/qF4c2pK1/9wovMDzKznWbUvsMU0GVWQnT5oOlS0
 9cbEHb8uVLqyLHH3xE0txdYMAQLIKQ9b7oQGOJOR+t/r5sqg27UfeDNtG
 UA2Dvl5zt+XRvCfRP6LXtOWY/oTXHZyOFg28ARA5mGvET4LNbp62s/0JD Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="366304340"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="366304340"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="931870015"
X-IronPort-AV: E=Sophos;i="6.03,246,1694761200"; d="scan'208";a="931870015"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 18:09:05 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 04:09:01 +0300
Message-Id: <20231024010925.3949910-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231024010925.3949910-1-imre.deak@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/29] drm/dp_mst: Allow DSC in any Synaptics
 last branch device
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

The Synaptics MST branch deivces support DSC decompression on all their
output ports, provided that they are last branch devices (with their
output ports connected to the sinks). The Thinkpad 40B0 TBT dock for
instance has two such branch devices, a secondary one connected to one
of the output ports of the primary; hence the decompression needs to be
enabled in both branch devices to enable decompression for all the
sinks.

Based on the above add support for enabling decompression in last
Synaptics branch devices.

Cc: Lyude Paul <lyude@redhat.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/display/drm_dp_mst_topology.c | 21 ++++++++++++-------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/display/drm_dp_mst_topology.c b/drivers/gpu/drm/display/drm_dp_mst_topology.c
index 5972c93615f18..cc0a8fe84d290 100644
--- a/drivers/gpu/drm/display/drm_dp_mst_topology.c
+++ b/drivers/gpu/drm/display/drm_dp_mst_topology.c
@@ -5994,6 +5994,7 @@ static bool drm_dp_mst_is_virtual_dpcd(struct drm_dp_mst_port *port)
 struct drm_dp_aux *drm_dp_mst_dsc_aux_for_port(struct drm_dp_mst_port *port)
 {
 	struct drm_dp_mst_port *immediate_upstream_port;
+	struct drm_dp_aux *immediate_upstream_aux;
 	struct drm_dp_mst_port *fec_port;
 	struct drm_dp_desc desc = {};
 	u8 endpoint_fec;
@@ -6058,21 +6059,25 @@ struct drm_dp_aux *drm_dp_mst_dsc_aux_for_port(struct drm_dp_mst_port *port)
 	 * - Port is on primary branch device
 	 * - Not a VGA adapter (DP_DWN_STRM_PORT_TYPE_ANALOG)
 	 */
-	if (drm_dp_read_desc(port->mgr->aux, &desc, true))
+	if (immediate_upstream_port)
+		immediate_upstream_aux = &immediate_upstream_port->aux;
+	else
+		immediate_upstream_aux = port->mgr->aux;
+
+	if (drm_dp_read_desc(immediate_upstream_aux, &desc, true))
 		return NULL;
 
-	if (drm_dp_has_quirk(&desc, DP_DPCD_QUIRK_DSC_WITHOUT_VIRTUAL_DPCD) &&
-	    port->mgr->dpcd[DP_DPCD_REV] >= DP_DPCD_REV_14 &&
-	    port->parent == port->mgr->mst_primary) {
+	if (drm_dp_has_quirk(&desc, DP_DPCD_QUIRK_DSC_WITHOUT_VIRTUAL_DPCD)) {
 		u8 dpcd_ext[DP_RECEIVER_CAP_SIZE];
 
-		if (drm_dp_read_dpcd_caps(port->mgr->aux, dpcd_ext) < 0)
+		if (drm_dp_read_dpcd_caps(immediate_upstream_aux, dpcd_ext) < 0)
 			return NULL;
 
-		if ((dpcd_ext[DP_DOWNSTREAMPORT_PRESENT] & DP_DWN_STRM_PORT_PRESENT) &&
+		if (dpcd_ext[DP_DPCD_REV] >= DP_DPCD_REV_14 &&
+		    ((dpcd_ext[DP_DOWNSTREAMPORT_PRESENT] & DP_DWN_STRM_PORT_PRESENT) &&
 		    ((dpcd_ext[DP_DOWNSTREAMPORT_PRESENT] & DP_DWN_STRM_PORT_TYPE_MASK)
-		     != DP_DWN_STRM_PORT_TYPE_ANALOG))
-			return port->mgr->aux;
+		     != DP_DWN_STRM_PORT_TYPE_ANALOG)))
+			return immediate_upstream_aux;
 	}
 
 	/*
-- 
2.39.2

