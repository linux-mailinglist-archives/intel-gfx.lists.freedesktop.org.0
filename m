Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D0E70233C
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 07:17:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41AC610E138;
	Mon, 15 May 2023 05:17:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1031F10E138
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 05:17:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684127861; x=1715663861;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pHfJHtFWsJNhAS6IWPAtaAESBWzdFBrkcZzCmqCsERo=;
 b=i/iZemXkOlVjt1NkEzOhxQZaCBRZVZaAozvGZZ/iD19MBRa2wrIXe3vM
 nHe9Isr2ST10/u49HfKW8K6xQGryr3Kxl++YPRnfh2YHfCEusgWbsCR2/
 FAKFuyfL72bSZvNyFvKAigOIKdWNR66PUw8M+Z5KUOgZxTd9c5iGeImTM
 432CQae2O8Cr9BV7EDz9d1gGOuM413G7ALWwM6hvRgnnAra2F6oDb5nnP
 u/AKEfF/ovCxOqHHfeqfE8aYlpY1/Qi4TLOHvILomVm6B2RtbAleO230Q
 0BRsg0gUTn1M4mSrK5VYwHL7GeFWxgKKXR+MLAg2um0kv3IaO+NDr/VRb w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="330729712"
X-IronPort-AV: E=Sophos;i="5.99,275,1677571200"; d="scan'208";a="330729712"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2023 22:17:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="700835428"
X-IronPort-AV: E=Sophos;i="5.99,275,1677571200"; d="scan'208";a="700835428"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga002.jf.intel.com with ESMTP; 14 May 2023 22:17:39 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 May 2023 10:45:55 +0530
Message-Id: <20230515051557.672109-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230515051557.672109-1-suraj.kandpal@intel.com>
References: <20230515051557.672109-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/4] drm/i915/hdcp: Remove enforce_type0
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove enforce_type0 check outside the loop since it
does not make sense to keep it there as we use the same
digport and continue checking it again and again

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
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

