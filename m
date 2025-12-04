Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 781C4CA35B6
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 12:00:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 332D210E960;
	Thu,  4 Dec 2025 11:00:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GJdcpVq+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E58FE10E960;
 Thu,  4 Dec 2025 11:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764846009; x=1796382009;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=if53ljwr1jx/8AF8IeAXcd3V83kUIEfgl7Gbkh1TmRc=;
 b=GJdcpVq+B6DWXwJLGGvG0jBjCTjvNGuZk2OQZ1mTmRLNzMIfaRJsN8FN
 JdR8dhK+OPwtJGmMewXx96nUeSEBm5w+gu1ei4DfUDr5w+YYbOnlGnXdT
 GgfUfIunRqUhjhZPcWAevzuTLN0bDpBQ8YFGpuWnOH43TQQjS/55caAsI
 U4jvTev5Xsb9MSnl1K0fe9LdSp98H0/kpytoSFiWYfKrxmX7tYmktNk2k
 W7oNwdbLTfIx3uclZM6FY/kW1Dx+ZVNOCEOu4GHsNf4rwhR39FkXPzyNK
 sBSXIxgRC1WfrQZU9GRal34W8duW3mIgKp9yEjaNxlf/9PDBqY3nJ9hCn g==;
X-CSE-ConnectionGUID: 6Z4M/8p4SHaQmZ+KneTOPA==
X-CSE-MsgGUID: 4SHgoI7CQ+2dpDhZnHEr1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="78327127"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="78327127"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 03:00:09 -0800
X-CSE-ConnectionGUID: /qJutBCSRN2BhDzqVdxdXA==
X-CSE-MsgGUID: z9pGHBD3Su2tO5k0uAXJZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="195064814"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 03:00:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: tzimmermann@suse.de, ville.syrjala@linux.intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 24/25] drm/vblank: reduce pipe checks
Date: Thu,  4 Dec 2025 12:57:52 +0200
Message-ID: <bb23949409dcda866db5660332f6389b4a74fe70.1764845757.git.jani.nikula@intel.com>
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

Now that drm_vblank_crtc() is the only place that indexes dev->vblank[],
and its usage has reduced considerably, add the primary pipe
out-of-bounds check there, and return NULL. Expect callers to check it
and act accordingly.

In drm_crtc_vblank_crtc(), warn and return NULL, and let it go boom. If
the crtc->pipe is out of bounds, it's a driver error that needs to be
fixed.

Remove superfluous pipe checks all around.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_vblank.c | 36 +++++++++++++++---------------------
 1 file changed, 15 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index 445b62b8b661..ba16981a5b1e 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -177,13 +177,22 @@ MODULE_PARM_DESC(timestamp_precision_usec, "Max. error on timestamps [usecs]");
 static struct drm_vblank_crtc *
 drm_vblank_crtc(struct drm_device *dev, unsigned int pipe)
 {
+	if (pipe >= dev->num_crtcs)
+		return NULL;
+
 	return &dev->vblank[pipe];
 }
 
 struct drm_vblank_crtc *
 drm_crtc_vblank_crtc(struct drm_crtc *crtc)
 {
-	return drm_vblank_crtc(crtc->dev, drm_crtc_index(crtc));
+	struct drm_vblank_crtc *vblank;
+
+	vblank = drm_vblank_crtc(crtc->dev, drm_crtc_index(crtc));
+	if (drm_WARN_ON(crtc->dev, !vblank))
+		return NULL;
+
+	return vblank;
 }
 EXPORT_SYMBOL(drm_crtc_vblank_crtc);
 
@@ -631,7 +640,6 @@ void drm_calc_timestamping_constants(struct drm_crtc *crtc,
 				     const struct drm_display_mode *mode)
 {
 	struct drm_device *dev = crtc->dev;
-	unsigned int pipe = drm_crtc_index(crtc);
 	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(crtc);
 	int linedur_ns = 0, framedur_ns = 0;
 	int dotclock = mode->crtc_clock;
@@ -639,9 +647,6 @@ void drm_calc_timestamping_constants(struct drm_crtc *crtc,
 	if (!drm_dev_has_vblank(dev))
 		return;
 
-	if (drm_WARN_ON(dev, pipe >= dev->num_crtcs))
-		return;
-
 	/* Valid dotclock? */
 	if (dotclock > 0) {
 		int frame_size = mode->crtc_htotal * mode->crtc_vtotal;
@@ -723,11 +728,6 @@ drm_crtc_vblank_helper_get_vblank_timestamp_internal(
 	int vpos, hpos, i;
 	int delta_ns, duration_ns;
 
-	if (pipe >= dev->num_crtcs) {
-		drm_err(dev, "Invalid crtc %u\n", pipe);
-		return false;
-	}
-
 	/* Scanout position query not supported? Should not happen. */
 	if (!get_scanout_position) {
 		drm_err(dev, "Called from CRTC w/o get_scanout_position()!?\n");
@@ -1342,9 +1342,6 @@ void drm_crtc_vblank_off(struct drm_crtc *crtc)
 	ktime_t now;
 	u64 seq;
 
-	if (drm_WARN_ON(dev, pipe >= dev->num_crtcs))
-		return;
-
 	/*
 	 * Grab event_lock early to prevent vblank work from being scheduled
 	 * while we're in the middle of shutting down vblank interrupts
@@ -1483,9 +1480,6 @@ void drm_crtc_vblank_on_config(struct drm_crtc *crtc,
 	unsigned int pipe = drm_crtc_index(crtc);
 	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(crtc);
 
-	if (drm_WARN_ON(dev, pipe >= dev->num_crtcs))
-		return;
-
 	spin_lock_irq(&dev->vbl_lock);
 	drm_dbg_vbl(dev, "crtc %d, vblank enabled %d, inmodeset %d\n",
 		    pipe, vblank->enabled, vblank->inmodeset);
@@ -1767,10 +1761,9 @@ int drm_wait_vblank_ioctl(struct drm_device *dev, void *data,
 		pipe = pipe_index;
 	}
 
-	if (pipe >= dev->num_crtcs)
-		return -EINVAL;
-
 	vblank = drm_vblank_crtc(dev, pipe);
+	if (!vblank)
+		return -EINVAL;
 
 	/* If the counter is currently enabled and accurate, short-circuit
 	 * queries to return the cached timestamp of the last vblank.
@@ -1905,14 +1898,15 @@ static void drm_vblank_crtc_handle_events(struct drm_vblank_crtc *vblank)
  */
 bool drm_handle_vblank(struct drm_device *dev, unsigned int pipe)
 {
-	struct drm_vblank_crtc *vblank = drm_vblank_crtc(dev, pipe);
+	struct drm_vblank_crtc *vblank;
 	unsigned long irqflags;
 	bool disable_irq;
 
 	if (drm_WARN_ON_ONCE(dev, !drm_dev_has_vblank(dev)))
 		return false;
 
-	if (drm_WARN_ON(dev, pipe >= dev->num_crtcs))
+	vblank = drm_vblank_crtc(dev, pipe);
+	if (drm_WARN_ON(dev, !vblank))
 		return false;
 
 	spin_lock_irqsave(&dev->event_lock, irqflags);
-- 
2.47.3

