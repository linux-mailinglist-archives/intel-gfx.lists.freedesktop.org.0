Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 596847D7D7E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 09:17:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30B3F10E768;
	Thu, 26 Oct 2023 07:17:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F02110E070
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 07:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698304668; x=1729840668;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LxUSreKraMD3bCzmj5Ru3zCjJPYQwunX8P12jBI2IVQ=;
 b=WdfTxCyJ7RgEQ3IiKjGgadI54UIg6cxXoaQeR+xNw973v7i/Dmpi2Z/C
 6RLAAtvIxuYpWa/zw9hT0oAWkpE1MW9ii5OUOhJpYSr8mXMb4AEAORgBD
 ukB8Zgk3qjjimLn5j/e1wUtZLnvynUoB589rEAXgKJ4HtOrDk3Jsg6DSi
 qmWO/hGBU4S/EgpTLO01StCkWtFzrp7OuDPMjTciUIN2F3Xd0Nx6USKpi
 n3lRcFtrAx4N+KAVVvYu5TwP/Oa/33ZxlS7Wt0Wn6qck1e+AXFBfh4oS2
 /kLzqamr2tUDjsaoo1eSyi+dXS6yv/wLtfhWbrZJ53++GnMw22R6MmWy6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="451713078"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="451713078"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 00:17:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="902798060"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="902798060"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga001.fm.intel.com with ESMTP; 26 Oct 2023 00:15:21 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Oct 2023 12:45:41 +0530
Message-Id: <20231026071540.974755-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231026071540.974755-1-suraj.kandpal@intel.com>
References: <20231026071540.974755-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/hdcp: Add more conditions to
 enable hdcp
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

When we dock a monitor we end up with a enable and disable connector
cycle but if hdcp content is running we get the userspace in
enabled state and driver maintaining a undesired state which causes
the content to stop playing and we only enabe hdcp if the userspace
state in desired. This patch fixes that.

--v2
-Move code to intel_hdcp [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 9d632a85309d..d67368b63c9f 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2329,9 +2329,19 @@ void intel_hdcp_try_enable(struct intel_atomic_state *state,
 			   const struct intel_crtc_state *crtc_state,
 			   const struct drm_connector_state *conn_state)
 {
-	/* Enable hdcp if it's desired */
+	struct intel_connector *connector =
+		to_intel_connector(conn_state->connector);
+	struct intel_hdcp *hdcp = &connector->hdcp;
+
+	/*
+	 * Enable hdcp if it's desired or if userspace is enabled and
+	 * driver set its state to undesired
+	 */
 	if (conn_state->content_protection ==
-	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
+	    DRM_MODE_CONTENT_PROTECTION_DESIRED ||
+	    (conn_state->content_protection ==
+	    DRM_MODE_CONTENT_PROTECTION_ENABLED && hdcp->value ==
+	    DRM_MODE_CONTENT_PROTECTION_UNDESIRED))
 		intel_hdcp_enable(state, encoder, crtc_state, conn_state);
 }
 
-- 
2.25.1

