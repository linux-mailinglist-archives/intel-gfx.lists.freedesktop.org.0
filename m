Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B74866A13
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 07:33:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E42D10EEB8;
	Mon, 26 Feb 2024 06:32:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SQgOoJgN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41F6910EEB6
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708929173; x=1740465173;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s3JC/r/eQS/H7FH61J1iwt8V2Edd2U9xx4MqM1Y3luA=;
 b=SQgOoJgNJbiQZoNxl1T+HlTtDtZA44tJJ7Bi+sUZj1tkbzMkcgVqCEfx
 BGoawg8zTjTgsYx3ELbHPm+x6MC1ZD/Ccm0JJQ1XTSxjV5XbBf6NfJApe
 wVLeMz5GDjtAojXY/KpOL7J4cLLSMBS37xL8/2KP9Hyx5eJC2273r9rPc
 gzXtNquRm5cwkzYs3etWc0KAd5xvRQakjo15pqtR04zTsARSH4OIIlhuE
 Rt7K/3HuUuOUOdBI40I7twQyfnpMoX1sD4l2lExs1AKpX7fXfdm6YeNMS
 5KPZGpWvoH8gY/FMsD4gjsen/gEMWm6n/PlieGNfyQh3V3h/zVMZc5BYK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10995"; a="3361028"
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="3361028"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2024 22:32:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="6565408"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa010.jf.intel.com with ESMTP; 25 Feb 2024 22:32:51 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 1/5] drm/i915/hdcp: Extract hdcp structure from correct
 connector
Date: Mon, 26 Feb 2024 12:00:48 +0530
Message-ID: <20240226063051.1685326-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240226063051.1685326-2-suraj.kandpal@intel.com>
References: <20240226063051.1685326-2-suraj.kandpal@intel.com>
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
index 16ed489e09ec..99220f970039 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -395,7 +395,9 @@ intel_dp_hdcp2_wait_for_msg(struct intel_connector *connector,
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
@@ -511,8 +513,9 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
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
2.43.2

