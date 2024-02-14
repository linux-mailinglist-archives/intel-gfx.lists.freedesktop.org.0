Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFED854447
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 09:50:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA03810E519;
	Wed, 14 Feb 2024 08:50:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iveXDK7n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7503310E519
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 08:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707900613; x=1739436613;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l6QzlcssIDhR7EgvE62NsNE59R16jlfPcjBP0HfBrzU=;
 b=iveXDK7nVmchOg6ogdVQHpCdh9ORlnwkLHwoPW6YRZHXOc2BZDmz42p3
 bU13QECIgLWWs432gZDD4hUeXqa9Ws4+i8Lf3MxxXOUUHzZ8vpcsjh8rO
 qxt7wukEbp3s9Vl9l79/dn6M5sgTMWqeMSOJRjpy7UeFrg1GgO1UVabiz
 iEMcsPHCFz/Y6vBbkLBi1BOUhpi4efpeZZgBDQOTQBzt/xYSRnsBcmeng
 9IErasHqZ2rnEq2FEjZxctwnlVv1Id8FeDhDPFtxmc74doqS3s99eMwdo
 TFxOmLAxb+0Vmo8i2EV5iP0NYlfwhl4013PuSbTbmNYwyuC1d/RYd6mw5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="13323616"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; d="scan'208";a="13323616"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 00:50:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="3295637"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa008.fm.intel.com with ESMTP; 14 Feb 2024 00:50:12 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 03/12] drm/i915/hdcp: Refactor intel_dp_hdcp2_capable
Date: Wed, 14 Feb 2024 14:18:01 +0530
Message-Id: <20240214084810.1417186-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240214084810.1417186-1-suraj.kandpal@intel.com>
References: <20240214084810.1417186-1-suraj.kandpal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index defc90936317..9aeee6b49b3d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -636,8 +636,8 @@ int intel_dp_hdcp2_check_link(struct intel_digital_port *dig_port,
 }
 
 static
-int intel_dp_hdcp2_capable(struct intel_connector *connector,
-			   bool *capable)
+int _intel_dp_hdcp2_capable(struct drm_dp_aux *aux,
+			    bool *capable)
 {
 	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
 	struct drm_dp_aux *aux = &dig_port->dp.aux;
@@ -658,6 +658,16 @@ int intel_dp_hdcp2_capable(struct intel_connector *connector,
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
2.25.1

