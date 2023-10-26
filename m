Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 096147D7FB0
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 11:39:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 881B310E790;
	Thu, 26 Oct 2023 09:39:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28D9F10E78D
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 09:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698313137; x=1729849137;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vwz96pz43KWeaGcjMdHLWyTRK0IpC26rZxDF8MbINxw=;
 b=gOTIXRl8ml2WFhJ6Os7VUVyZhUPUCW76dkTH0Do3/pLujeCa8klI/kGr
 n/1+1Zw0OzBFAV+qAD6QI99oXUX69zHfoSuq7/14ADiprawzDDpvUAstK
 q5TI+B4QQFU2PcXur/+nwctvCYaMjUBU6BIaaU4b/4RuMywKTj/Xpm22F
 ckKc+81d+KqsjVgu33/70I8dq9dRHkU0Y5LLhWt8+CHnxHvyIMRIPVoeq
 NQwM3n5Yfi4rOqMJhU8NY4rUDaDCzLIwStgvQMHdc9gQdgT0WKILF3Hut
 6PCr1wnvYLp8cAMeg9nJ4z0f5/Kj5RclaB8yKsAPKrYBoOVMQ7cxijKvo A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="384708164"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="384708164"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 02:38:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="735688350"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="735688350"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga006.jf.intel.com with ESMTP; 26 Oct 2023 02:38:54 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Oct 2023 15:06:48 +0530
Message-Id: <20231026093647.987267-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231026093647.987267-1-suraj.kandpal@intel.com>
References: <20231026093647.987267-1-suraj.kandpal@intel.com>
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

