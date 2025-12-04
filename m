Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4B9CA356F
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 11:58:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D71710E92D;
	Thu,  4 Dec 2025 10:58:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hQB4oBJ8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EBC110E92E;
 Thu,  4 Dec 2025 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845914; x=1796381914;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Zh6oPQvEwc1yEu7r7NHUjvZ5z5TG5c2SLyisU12NTOk=;
 b=hQB4oBJ8jMDKnltxkd044RxV45sddEhmRKFsQB/Cux610d3mz8FXlJuz
 vGvV/Xwt4cNvdw0fE34hOQZnuut2K1/6r/tQyxqceb3SeJ65/JuE16h+X
 9pcyJL1lAikio45LI9sUl1ebGeVlg5iEDmCdY6+UltWT7fxxDFkl2Sy0U
 Pob25R+04vSrnjLDDyHPHPhHwAqh2xvXeHMhwVUAxalh+AmRL4bWiteiz
 97k+x1Un8zdQM8BLbQ1U0+/BTLv8gQcOnskGwRXFgf+jhTmEMU7MjBQqE
 oIsmPtHPpwaXF78ud46jm3lHnXMFj0Y42K4yq85moTFgLP9gHAuUMl2I8 w==;
X-CSE-ConnectionGUID: FbC5vIi9RlaTU/01PNfgMA==
X-CSE-MsgGUID: QDsRaZZ3Qz6zFBufuFVwqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="65856872"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="65856872"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:58:33 -0800
X-CSE-ConnectionGUID: EW5FeDPYQI+d5a8fYVCaDg==
X-CSE-MsgGUID: p3Ra6xPFSfu9lLu4G5qpLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="199904214"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:58:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: tzimmermann@suse.de, ville.syrjala@linux.intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 06/25] drm/vblank: use the drm_vblank_crtc() and
 drm_crtc_vblank_crtc() helpers more
Date: Thu,  4 Dec 2025 12:57:34 +0200
Message-ID: <54c51098c0ca7df7f0d5a62b66d6f95e790229e6.1764845757.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1764845757.git.jani.nikula@intel.com>
References: <cover.1764845757.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

We have the helpers to avoid open coding dev->vblank[pipe] access.

v2: Rebase

Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_vblank.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index 91e63177daaf..a86561c4b999 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -551,7 +551,7 @@ int drm_vblank_init(struct drm_device *dev, unsigned int num_crtcs)
 	dev->num_crtcs = num_crtcs;
 
 	for (i = 0; i < num_crtcs; i++) {
-		struct drm_vblank_crtc *vblank = &dev->vblank[i];
+		struct drm_vblank_crtc *vblank = drm_vblank_crtc(dev, i);
 
 		vblank->dev = dev;
 		vblank->pipe = i;
@@ -605,7 +605,9 @@ EXPORT_SYMBOL(drm_dev_has_vblank);
  */
 wait_queue_head_t *drm_crtc_vblank_waitqueue(struct drm_crtc *crtc)
 {
-	return &crtc->dev->vblank[drm_crtc_index(crtc)].queue;
+	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(crtc);
+
+	return &vblank->queue;
 }
 EXPORT_SYMBOL(drm_crtc_vblank_waitqueue);
 
@@ -729,7 +731,7 @@ drm_crtc_vblank_helper_get_vblank_timestamp_internal(
 	}
 
 	if (drm_drv_uses_atomic_modeset(dev)) {
-		struct drm_vblank_crtc *vblank = &dev->vblank[pipe];
+		struct drm_vblank_crtc *vblank = drm_vblank_crtc(dev, pipe);
 
 		mode = &vblank->hwmode;
 	} else {
@@ -1784,7 +1786,7 @@ int drm_wait_vblank_ioctl(struct drm_device *dev, void *data,
 	if (pipe >= dev->num_crtcs)
 		return -EINVAL;
 
-	vblank = &dev->vblank[pipe];
+	vblank = drm_vblank_crtc(dev, pipe);
 
 	/* If the counter is currently enabled and accurate, short-circuit
 	 * queries to return the cached timestamp of the last vblank.
-- 
2.47.3

