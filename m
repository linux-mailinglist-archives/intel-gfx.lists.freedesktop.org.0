Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2775D856087
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 12:01:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7192810E610;
	Thu, 15 Feb 2024 11:01:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HHhE9TCi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD12310E607
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 11:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707994900; x=1739530900;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BQ+6VX5/gnozZOoh9USGUFA7AkywUJUaD+L/KIKclRI=;
 b=HHhE9TCi9Ra4sJbAYZCNQNRonG8IgpzA5tPVP5hY5XPVVAHW7yT6TaLP
 Gk2wHCS+81vgCe1wTe5DmUrXAFLOhzDB7b965zEKF54xBvB9dRCdaMDRF
 //zDXaQsfmN1XNTRJ+izC8XCbbEH57icDvBnEMMEarbkS6e5qQbgHdRXf
 twrzC0gmNLXCcEfAM+v1m7ubtkJUGUApIiEuG9NK7jYh64+qcs5uxJ+4L
 Z3XmmxtbGVoaliKYFtwI5a6el71MMSAHo2igOdKm7eAct2w6OaXzaMLM8
 LdhedqHB+fasp+MdfaFcQqpnt4xe0i1YPJWvHD0s3OSSGC6qSICLC7/sf A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="19494345"
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; d="scan'208";a="19494345"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2024 03:01:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,161,1705392000"; 
   d="scan'208";a="3820987"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa007.jf.intel.com with ESMTP; 15 Feb 2024 03:01:39 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 09/13] drm/i915/hdcp: Extract hdcp structure from correct
 connector
Date: Thu, 15 Feb 2024 16:29:15 +0530
Message-Id: <20240215105919.1439549-10-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240215105919.1439549-1-suraj.kandpal@intel.com>
References: <20240215105919.1439549-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Currently intel_hdcp is not being extracted from primary connector
this patch fixes that.

Fixes: 524240b231ea ("drm/i915/hdcp: Propagate aux info in DP HDCP functions")
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 9a82a3a5dfec..ed7afde417bc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -391,7 +391,9 @@ intel_dp_hdcp2_wait_for_msg(struct intel_connector *connector,
 			    const struct hdcp2_dp_msg_data *hdcp2_msg_data)
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct intel_hdcp *hdcp = &connector->hdcp;
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct intel_dp *dp = &dig_port->dp;
+	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
 	u8 msg_id = hdcp2_msg_data->msg_id;
 	int ret, timeout;
 	bool msg_ready = false;
@@ -507,8 +509,9 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	struct intel_hdcp *hdcp = &connector->hdcp;
 	struct drm_dp_aux *aux = &dig_port->dp.aux;
+	struct intel_dp *dp = &dig_port->dp;
+	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
 	unsigned int offset;
 	u8 *byte = buf;
 	ssize_t ret, bytes_to_recv, len;
-- 
2.25.1

