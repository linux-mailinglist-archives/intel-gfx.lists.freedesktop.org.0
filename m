Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42411860BF3
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Feb 2024 09:17:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 443A010EB24;
	Fri, 23 Feb 2024 08:16:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iV0lFvGj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F61710EB1C
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Feb 2024 08:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708676218; x=1740212218;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gQRtYyREO2xn4d0vrSNegSG95Omb/aMFYDdHBK4kj4Y=;
 b=iV0lFvGjgkHwM1yG6z180CvbsfxRMSRLHSYaBgyJNVSIZDKxcuvWSnza
 iB9zoBwvfIvxRBMJNvpnk+YTn7WNryZa6Oi6j29zhF0TMTiMloQ6L99sR
 TXFncB0h19PRVGvCoDd+wx7qT/aJtR93U+AJsELpDFgeGSR18cXF475L+
 E+jSLrcdsxVtW1/SvyoVvUVuaY9GxwZWyDYq8Cao0rq5d9VUVhEjGU7QK
 GFcSftYrXfg3v/iqjuMFV8lutWK3XXzrpoWnu/HI6j+CqPAeswrblzzuw
 z89LMAN9MWU5gt5/4Y6gO7/Amj2qVYXShI6/cWdPnb0Se4szKytB1MGfa Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="2830014"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="2830014"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2024 00:16:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="10528844"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa003.jf.intel.com with ESMTP; 23 Feb 2024 00:16:56 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 03/13] drm/i915/hdcp: Refactor intel_dp_hdcp2_capable
Date: Fri, 23 Feb 2024 13:44:44 +0530
Message-ID: <20240223081453.1576918-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240223081453.1576918-2-suraj.kandpal@intel.com>
References: <20240223081453.1576918-2-suraj.kandpal@intel.com>
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

Break intel_dp_hdcp2_capable so that the common the code can be
reused for the remote capability check.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 92642e8d82db..6767b5338ae7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -640,11 +640,9 @@ int intel_dp_hdcp2_check_link(struct intel_digital_port *dig_port,
 }
 
 static
-int intel_dp_hdcp2_capable(struct intel_connector *connector,
-			   bool *capable)
+int _intel_dp_hdcp2_capable(struct drm_dp_aux *aux,
+			    bool *capable)
 {
-	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
-	struct drm_dp_aux *aux = &dig_port->dp.aux;
 	u8 rx_caps[3];
 	int ret;
 
@@ -662,6 +660,16 @@ int intel_dp_hdcp2_capable(struct intel_connector *connector,
 	return 0;
 }
 
+static
+int intel_dp_hdcp2_capable(struct intel_connector *connector,
+			   bool *capable)
+{
+	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
+	struct drm_dp_aux *aux = &dig_port->dp.aux;
+
+	return _intel_dp_hdcp2_capable(aux, capable);
+}
+
 static const struct intel_hdcp_shim intel_dp_hdcp_shim = {
 	.write_an_aksv = intel_dp_hdcp_write_an_aksv,
 	.read_bksv = intel_dp_hdcp_read_bksv,
-- 
2.43.2

