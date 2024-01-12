Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E4E82BBED
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 08:43:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BA5410EA83;
	Fri, 12 Jan 2024 07:43:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9195310EA83
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 07:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705045416; x=1736581416;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aa2AkFAQP0nT292PbO51m3c88eG0Ro+KIaJiy30Z1Sg=;
 b=giqIJdlpnmGl5w0zSff/r45CpzDwfWr/n1wuD+hNEeNviEQV1kQPFc6Z
 fbz524sqC9PJ44dcHRFuH8vVz5zsoORJmTGiNtzjC4PybvZ0xdMR7y+yr
 Jf9g0rQeSLi1SAD4Sh3hRj1JpSJOUQj6+g7zUFYkL1ifv05dIC/W0EAWL
 /Nerq/u4rvnnsA7cS8mBtZKqcCcATms8K6K9hq6Yo1xb4HPBx5odxRmUO
 PnDpFfb0+FC3Pgs4+WPre5/fu6OGRZkoB1zuSHE6utU/+rLS/WrksR69m
 1PQL9tN9sae6HW1YMu5MGvZ2wTHMzS69IGwcoxcnYLKK0NZYThEKn1/Gm A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="5867014"
X-IronPort-AV: E=Sophos;i="6.04,188,1695711600"; 
   d="scan'208";a="5867014"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 23:43:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,188,1695711600"; d="scan'208";a="17317589"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa002.fm.intel.com with ESMTP; 11 Jan 2024 23:43:34 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/7] drm/i915/hdcp: Extract hdcp structure from correct
 connector
Date: Fri, 12 Jan 2024 13:11:17 +0530
Message-Id: <20240112074120.159797-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240112074120.159797-1-suraj.kandpal@intel.com>
References: <20240112074120.159797-1-suraj.kandpal@intel.com>
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index cde42b756f6a..eff2da976d2c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -399,7 +399,9 @@ intel_dp_hdcp2_wait_for_msg(struct intel_connector *connector,
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
@@ -515,7 +517,8 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	struct intel_hdcp *hdcp = &connector->hdcp;
+	struct intel_dp *dp = &dig_port->dp;
+	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
 	struct drm_dp_aux *aux;
 	unsigned int offset;
 	u8 *byte = buf;
-- 
2.25.1

