Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7611C6DEA09
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Apr 2023 05:50:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 135EB10E14B;
	Wed, 12 Apr 2023 03:50:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0F7F10E14B
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Apr 2023 03:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681271400; x=1712807400;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=mbbS6MKFajxl+6wVSjeGsIAZjorHvl237+8y0TM4E/E=;
 b=ZeRDBCOo8Bz6mLXw+1M9IOYzgwsqZOiW2Yn5EWImeiS7ZULgm+SpabYp
 Wd8iax9s6Ak95k+YCjbRrupMtP3TCYvCt1ZQFJfZ3SZIzRVldeMc8S4+8
 fkzutSrNbhOg7GgzAQ8j7qtoiNo8S6n0fkR5GVk4pHnEi8t8CKHI3JXkn
 /ciCLr4ofXpoef2gcAQvMQoBEbCrFHRpIgSmMtSjcS5P2v5UnH14qfglU
 KwEFOT589P/8/IOVSifgHCKktCvPcXVvn7TtcLieHzY9Gevri9mrekywZ
 p0gBd5EAjJO5eXE2PFgzTaWnZEFNAEeQnsxDvH42ve2b40ynKidhGpuL/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="345586375"
X-IronPort-AV: E=Sophos;i="5.98,338,1673942400"; d="scan'208";a="345586375"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 20:49:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="719216257"
X-IronPort-AV: E=Sophos;i="5.98,338,1673942400"; d="scan'208";a="719216257"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga008.jf.intel.com with ESMTP; 11 Apr 2023 20:49:45 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Apr 2023 09:18:18 +0530
Message-Id: <20230412034818.688215-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/hdcp: Fix CP current state
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

In many cases there is a need to change the CP property to desired
even if not modeset has been requested yet on such situation being
lid gets closed while DP is still connected in this case HDCP
authentication needs to be reenabled.
Remove Fix me as we now send a uevent via drm_hdcp_update_property.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 650232c4892b..7b0648e3499c 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -2564,12 +2564,9 @@ void intel_hdcp_atomic_check(struct drm_connector *connector,
 						   new_state->crtc);
 	/*
 	 * Fix the HDCP uapi content protection state in case of modeset.
-	 * FIXME: As per HDCP content protection property uapi doc, an uevent()
-	 * need to be sent if there is transition from ENABLED->DESIRED.
 	 */
-	if (drm_atomic_crtc_needs_modeset(crtc_state) &&
-	    (old_cp == DRM_MODE_CONTENT_PROTECTION_ENABLED &&
-	    new_cp != DRM_MODE_CONTENT_PROTECTION_UNDESIRED))
+	if ((old_cp == DRM_MODE_CONTENT_PROTECTION_ENABLED &&
+	     new_cp != DRM_MODE_CONTENT_PROTECTION_UNDESIRED))
 		new_state->content_protection =
 			DRM_MODE_CONTENT_PROTECTION_DESIRED;
 
-- 
2.25.1

