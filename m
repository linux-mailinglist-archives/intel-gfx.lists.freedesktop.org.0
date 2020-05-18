Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 856031D7702
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 13:27:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 896236E2F8;
	Mon, 18 May 2020 11:27:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CE326E2F8
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 11:27:14 +0000 (UTC)
IronPort-SDR: obJqejopK1wC/ba6F8EswOFSL/Ze/NLSqsWRuULDbn3s9JZRflUdC61mfkklemEL3ST0GUI89s
 eoaooY+UZ3MQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 04:27:13 -0700
IronPort-SDR: T+OHfZRloSmnGudz7+27Lq+JAUz+7ZDYB7l8uEz6ewqPUwpfxgAE8NMW6DZwx3NnZxr6MD9txL
 2o/5FXrRID3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,407,1583222400"; d="scan'208";a="373355780"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by fmsmga001.fm.intel.com with ESMTP; 18 May 2020 04:27:12 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 May 2020 16:48:03 +0530
Message-Id: <20200518111804.11842-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200518111804.11842-1-anshuman.gupta@intel.com>
References: <20200518111804.11842-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/hdcp: Add update_pipe early
 return
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently intel_hdcp_update_pipe() is also getting called for non-hdcp
connectors and get through its conditional code flow, which is completely
unnecessary for non-hdcp connectors, therefore it make sense to
have an early return. No functional change.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 2cbc4619b4ce..d0a2bee9035a 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2079,11 +2079,15 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 	struct intel_connector *connector =
 				to_intel_connector(conn_state->connector);
 	struct intel_hdcp *hdcp = &connector->hdcp;
-	bool content_protection_type_changed =
+	bool content_protection_type_changed;
+
+	if (!connector->hdcp.shim)
+		return;
+
+	content_protection_type_changed =
 		(conn_state->hdcp_content_type != hdcp->content_type &&
 		 conn_state->content_protection !=
 		 DRM_MODE_CONTENT_PROTECTION_UNDESIRED);
-
 	/*
 	 * During the HDCP encryption session if Type change is requested,
 	 * disable the HDCP and reenable it with new TYPE value.
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
