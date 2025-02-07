Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D15A2C0C1
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 11:41:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57E8710EAAA;
	Fri,  7 Feb 2025 10:41:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z+XN4uQ5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBF5E10EAAA;
 Fri,  7 Feb 2025 10:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738924891; x=1770460891;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZcJzxECwPGKlc3m0U1BxpG72AZ3DoQtePbUKYbIAS6w=;
 b=Z+XN4uQ5o5w3dJxK1gO753fR4JAkk9AZ3DydKIZf20BKedvOcfh7zV6R
 iaUYyzEl9f15ZX5tOb3BosJ+J9oJ+krH/icOfG3HzJ/pmyN2GU5ZCCyDJ
 NgLVHfBjCk+Z091I/Uz/38CCauKqHp0yHHzyw/uLrseagsm7pHYeW2VHa
 2lJN7GxNmCfayIx1Y3Sl4UUn/+QLC2aIbvIkFZ1PxgvzXZ/yZi0MstPdt
 O0LS/33/tTTOZf19GamuL5xjxgY5gzrmlicMtGQfrSah29ou42UxB2kbi
 2aZdk1GcXdZvPRy2st4WPCl/EQ0kr2FCLIRfN/zvyXGQxqsM7t5YALT7B A==;
X-CSE-ConnectionGUID: dYerjIatS6aL3hSfNVXlYA==
X-CSE-MsgGUID: vS8igWI/QTWL/BNaxEG+sA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="50200467"
X-IronPort-AV: E=Sophos;i="6.13,266,1732608000"; d="scan'208";a="50200467"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 02:41:31 -0800
X-CSE-ConnectionGUID: ge0BBDYHTG+bWwxRmtKWZQ==
X-CSE-MsgGUID: gsAw/ErETuSpqJqtVy33PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111341635"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 02:41:29 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	suraj.kandpal@intel.com
Subject: [PATCH 2/3] drm/i915/hdcp: rename intel_connector to connector
Date: Fri,  7 Feb 2025 12:41:11 +0200
Message-Id: <8f43542a8f0ce0ec5725b769c077d3cea723bde0.1738924826.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1738924826.git.jani.nikula@intel.com>
References: <cover.1738924826.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Follow the current convention of naming struct intel_connector pointers
connector.

Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 718d8bad77a0..9880192adfe9 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2733,23 +2733,21 @@ void intel_hdcp_handle_cp_irq(struct intel_connector *connector)
 	queue_delayed_work(i915->unordered_wq, &hdcp->check_work, 0);
 }
 
-static void __intel_hdcp_info(struct seq_file *m, struct intel_connector *intel_connector,
+static void __intel_hdcp_info(struct seq_file *m, struct intel_connector *connector,
 			      bool remote_req)
 {
 	bool hdcp_cap = false, hdcp2_cap = false;
 
-	if (!intel_connector->hdcp.shim) {
+	if (!connector->hdcp.shim) {
 		seq_puts(m, "No Connector Support");
 		goto out;
 	}
 
 	if (remote_req) {
-		intel_hdcp_get_remote_capability(intel_connector,
-						 &hdcp_cap,
-						 &hdcp2_cap);
+		intel_hdcp_get_remote_capability(connector, &hdcp_cap, &hdcp2_cap);
 	} else {
-		hdcp_cap = intel_hdcp_get_capability(intel_connector);
-		hdcp2_cap = intel_hdcp2_get_capability(intel_connector);
+		hdcp_cap = intel_hdcp_get_capability(connector);
+		hdcp2_cap = intel_hdcp2_get_capability(connector);
 	}
 
 	if (hdcp_cap)
-- 
2.39.5

