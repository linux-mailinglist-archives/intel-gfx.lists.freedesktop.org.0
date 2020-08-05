Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDECF23CA63
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 13:57:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 695A06E536;
	Wed,  5 Aug 2020 11:57:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 106F06E536
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 11:57:47 +0000 (UTC)
IronPort-SDR: SJPlRagWANBBjeo0sRSQqys+Ek0VzIQXFS7xENX4Qj4jKkIVcwX9LvH+vdllME+//DvMsGt9IK
 s0n/WK9Pwm1Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9703"; a="170595125"
X-IronPort-AV: E=Sophos;i="5.75,436,1589266800"; d="scan'208";a="170595125"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2020 04:57:47 -0700
IronPort-SDR: N8gvxlQyQFgoeysJFntjg0u5pJnmV21Jl65OXeym3VrEcqMUObR6ZrUx6lGD2tB1R+E4vfS0Qe
 XsgKtGPQxF5Q==
X-IronPort-AV: E=Sophos;i="5.75,436,1589266800"; d="scan'208";a="467440732"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2020 04:57:45 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Aug 2020 17:15:20 +0530
Message-Id: <20200805114521.867-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200805114521.867-1-anshuman.gupta@intel.com>
References: <20200805114521.867-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915/hdcp: Add update_pipe early
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

v2:
- rebased.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 89a4d294822d..a1e0d518e529 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2082,11 +2082,15 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
 	struct intel_connector *connector =
 				to_intel_connector(conn_state->connector);
 	struct intel_hdcp *hdcp = &connector->hdcp;
-	bool content_protection_type_changed =
+	bool content_protection_type_changed, desired_and_not_enabled = false;
+
+	if (!connector->hdcp.shim)
+		return;
+
+	content_protection_type_changed =
 		(conn_state->hdcp_content_type != hdcp->content_type &&
 		 conn_state->content_protection !=
 		 DRM_MODE_CONTENT_PROTECTION_UNDESIRED);
-	bool desired_and_not_enabled = false;
 
 	/*
 	 * During the HDCP encryption session if Type change is requested,
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
