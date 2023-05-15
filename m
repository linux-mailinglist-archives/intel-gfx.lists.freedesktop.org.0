Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B64702A98
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 12:34:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6848110E1A6;
	Mon, 15 May 2023 10:34:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CEE510E1A0
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 10:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684146848; x=1715682848;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IuGkMAZzE06tWtGHWbJanMxGKT1D5qZumh79JGOG0Dg=;
 b=Wvokr8PqpldkkPNdnSa20SIVwcaKZmLZbPO4yK0NYcwMamTv2MgfCrc5
 2sy+8t0ZkfivG3aB2wwzUvPFfAWWooUG26tanreBJ6v50Zt6HOtQnPRur
 99LC+aes4PaYAfirqk5Ty1wDwttQeTRQir0UNleBD92u8NwuMZabEC12X
 n2AfDgj5/aKJWx2ivMl0X9IBLtMr8StiUlnwBuZTuGYfludICA/dtEq/y
 8pzB3odRaRKl+cEhBpGw4bdx9OEWErTKjhr/wiFIxYmupVMou/QolZost
 QnTrKKEZrwZqDFzf6mMLU0r2DwQwRkeMRXyio2I78oodTTpoTe1MmPfw8 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="414563001"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="414563001"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 03:34:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="845209473"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="845209473"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga001.fm.intel.com with ESMTP; 15 May 2023 03:34:01 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 May 2023 16:02:23 +0530
Message-Id: <20230515103225.688830-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230515103225.688830-1-suraj.kandpal@intel.com>
References: <20230515103225.688830-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/4] drm/i915/hdcp: Remove enforce_type0
 check outside loop
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove enforce_type0 check outside the loop since it
does not make sense to keep it there as we use the same
digport and continue checking it again and again

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index e2c5781ad0ab..f2d258a72c59 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -84,6 +84,9 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
 	if (dig_port->hdcp_auth_status)
 		return 0;
 
+	if (!dig_port->hdcp_mst_type1_capable)
+		enforce_type0 = true;
+
 	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		if (connector->base.status == connector_status_disconnected)
@@ -96,9 +99,6 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
 		if (conn_dig_port != dig_port)
 			continue;
 
-		if (!enforce_type0 && !dig_port->hdcp_mst_type1_capable)
-			enforce_type0 = true;
-
 		data->streams[data->k].stream_id = intel_conn_to_vcpi(connector);
 		data->k++;
 
-- 
2.25.1

