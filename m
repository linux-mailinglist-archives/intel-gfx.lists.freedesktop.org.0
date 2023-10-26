Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 607F57D8259
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 14:13:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D428D10E11F;
	Thu, 26 Oct 2023 12:13:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 205A910E11F
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 12:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698322424; x=1729858424;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vwz96pz43KWeaGcjMdHLWyTRK0IpC26rZxDF8MbINxw=;
 b=DJ7WoBn1mThpxraQK7ni/m5xpMsnTzRSQaObA+kS4a8qd45RRnaTH0tk
 Km2AMaiaqEZKP4m0zYngPpJqfZEZ5/2y++nA79LI/La0rP46T+QPkyHl1
 TBzaKHoIU7JXCP2ZQA+UBbS7Xr5qGC/6z7OnLFIe99z1QXWlafSm2Yg7u
 O9vBDgAmv06PpexYiuvpjE6mvpTW2bC0u8pmOJXSmV3EnHAJireDsBNVy
 Pyey/icTx+tHE41JvWgMaRzvxxRf1LgCdda1wRDR9lU1aJ5Wfp2bKkCfe
 dl1cL/qUP1mbk3Ych/hLKu/C+bCI467GwYELIxEdw0rJpKpKLM12fHcPK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="387354597"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="387354597"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 05:13:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="762809254"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="762809254"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmsmga007.fm.intel.com with ESMTP; 26 Oct 2023 05:13:42 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Oct 2023 17:41:40 +0530
Message-Id: <20231026121139.987437-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231026121139.987437-1-suraj.kandpal@intel.com>
References: <20231026121139.987437-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/hdcp: Add more conditions to
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
index 44c0a93f3af8..39b3f7c0c77c 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2409,9 +2409,19 @@ void intel_hdcp_enable(struct intel_atomic_state *state,
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
 		_intel_hdcp_enable(state, encoder, crtc_state, conn_state);
 }
 
-- 
2.25.1

