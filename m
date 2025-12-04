Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 162FECA3581
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 11:59:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9674A10E945;
	Thu,  4 Dec 2025 10:58:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TURzQVs4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCF9110E945;
 Thu,  4 Dec 2025 10:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845938; x=1796381938;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=boKk0e10Fq2oli38Skr9b+X0nxau1ZI8dJYEVdXlSY8=;
 b=TURzQVs40OaOGGADtWsZ6hEo1ZElFvdKB2iCGslP6qri8SBRtFqLEH4h
 ORWwf9ckGR5MBI4yWrkEw5tVMfn907QiBPUbkLYcJmQ9U5LMkdzUVJaus
 9HceQDP9AuYiX08xYRSPthq8HmUmQI3eWjVC/Tr2szVVk74o4eZUw4lkK
 wFZWTjedOeWEcMZKrZoLD5lIqIC6p9WxKLdM/BwqXNF2BcKjtP4wE9byN
 N4Fyrby+wMpbLzdZ57U5kejFusx9IApppk1+OFFvg6byJe07QNiO4X9W5
 O6Nx4AUNOsTv2tZtAY+7OUjO3pthkOxXSGD3Muaj8DhWUIoAd4DmHqLAV g==;
X-CSE-ConnectionGUID: VBH4V9unSeePMr5GNgz8+A==
X-CSE-MsgGUID: x2VIo3CkQ/qXZri8Copmcw==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="65856902"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="65856902"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:58:58 -0800
X-CSE-ConnectionGUID: v/DhwhgNQ1irv5JuTUSYiw==
X-CSE-MsgGUID: eNq+wDVoQy6sbKx7lyaXbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="199904354"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:58:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: tzimmermann@suse.de, ville.syrjala@linux.intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 11/25] drm/vblank: use the vblank based interfaces more
Date: Thu,  4 Dec 2025 12:57:39 +0200
Message-ID: <a19bd2f6b6d2eeab2a183cc1d42901e0a45532c3.1764845757.git.jani.nikula@intel.com>
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

With the prep work in place, we can get rid of _drm_vblank_get(),
_drm_vblank_put(), and _drm_vblank_count().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_vblank.c | 44 ++++++++----------------------------
 1 file changed, 10 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index 49b59af1512e..d0460cd5d345 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -403,14 +403,6 @@ u64 drm_vblank_crtc_count(struct drm_vblank_crtc *vblank)
 	return count;
 }
 
-static u64 drm_vblank_count(struct drm_device *dev, unsigned int pipe)
-{
-	if (drm_WARN_ON(dev, pipe >= dev->num_crtcs))
-		return 0;
-
-	return drm_vblank_crtc_count(drm_vblank_crtc(dev, pipe));
-}
-
 /**
  * drm_crtc_accurate_vblank_count - retrieve the master vblank counter
  * @crtc: which counter to retrieve
@@ -942,7 +934,7 @@ drm_get_last_vbltimestamp(struct drm_device *dev, unsigned int pipe,
  */
 u64 drm_crtc_vblank_count(struct drm_crtc *crtc)
 {
-	return drm_vblank_count(crtc->dev, drm_crtc_index(crtc));
+	return drm_vblank_crtc_count(drm_crtc_vblank_crtc(crtc));
 }
 EXPORT_SYMBOL(drm_crtc_vblank_count);
 
@@ -1241,14 +1233,6 @@ int drm_vblank_crtc_get(struct drm_vblank_crtc *vblank)
 	return ret;
 }
 
-static int drm_vblank_get(struct drm_device *dev, unsigned int pipe)
-{
-	if (drm_WARN_ON(dev, pipe >= dev->num_crtcs))
-		return -EINVAL;
-
-	return drm_vblank_crtc_get(drm_vblank_crtc(dev, pipe));
-}
-
 /**
  * drm_crtc_vblank_get - get a reference count on vblank events
  * @crtc: which CRTC to own
@@ -1261,7 +1245,7 @@ static int drm_vblank_get(struct drm_device *dev, unsigned int pipe)
  */
 int drm_crtc_vblank_get(struct drm_crtc *crtc)
 {
-	return drm_vblank_get(crtc->dev, drm_crtc_index(crtc));
+	return drm_vblank_crtc_get(drm_crtc_vblank_crtc(crtc));
 }
 EXPORT_SYMBOL(drm_crtc_vblank_get);
 
@@ -1285,14 +1269,6 @@ void drm_vblank_crtc_put(struct drm_vblank_crtc *vblank)
 	}
 }
 
-static void drm_vblank_put(struct drm_device *dev, unsigned int pipe)
-{
-	if (drm_WARN_ON(dev, pipe >= dev->num_crtcs))
-		return;
-
-	drm_vblank_crtc_put(drm_vblank_crtc(dev, pipe));
-}
-
 /**
  * drm_crtc_vblank_put - give up ownership of vblank events
  * @crtc: which counter to give up
@@ -1303,7 +1279,7 @@ static void drm_vblank_put(struct drm_device *dev, unsigned int pipe)
  */
 void drm_crtc_vblank_put(struct drm_crtc *crtc)
 {
-	drm_vblank_put(crtc->dev, drm_crtc_index(crtc));
+	drm_vblank_crtc_put(drm_crtc_vblank_crtc(crtc));
 }
 EXPORT_SYMBOL(drm_crtc_vblank_put);
 
@@ -1404,7 +1380,7 @@ void drm_crtc_vblank_off(struct drm_crtc *crtc)
 			     "wanted %llu, current %llu\n",
 			     e->sequence, seq);
 		list_del(&e->base.link);
-		drm_vblank_put(dev, pipe);
+		drm_vblank_crtc_put(vblank);
 		send_vblank_event(dev, e, seq, now);
 	}
 
@@ -1680,7 +1656,7 @@ static int drm_queue_vblank_event(struct drm_device *dev, unsigned int pipe,
 
 	e->sequence = req_seq;
 	if (drm_vblank_passed(seq, req_seq)) {
-		drm_vblank_put(dev, pipe);
+		drm_vblank_crtc_put(vblank);
 		send_vblank_event(dev, e, seq, now);
 		vblwait->reply.sequence = seq;
 	} else {
@@ -1697,7 +1673,7 @@ static int drm_queue_vblank_event(struct drm_device *dev, unsigned int pipe,
 	spin_unlock_irq(&dev->event_lock);
 	kfree(e);
 err_put:
-	drm_vblank_put(dev, pipe);
+	drm_vblank_crtc_put(vblank);
 	return ret;
 }
 
@@ -1815,14 +1791,14 @@ int drm_wait_vblank_ioctl(struct drm_device *dev, void *data,
 		return 0;
 	}
 
-	ret = drm_vblank_get(dev, pipe);
+	ret = drm_vblank_crtc_get(vblank);
 	if (ret) {
 		drm_dbg_core(dev,
 			     "crtc %d failed to acquire vblank counter, %d\n",
 			     pipe, ret);
 		return ret;
 	}
-	seq = drm_vblank_count(dev, pipe);
+	seq = drm_vblank_crtc_count(vblank);
 
 	switch (vblwait->request.type & _DRM_VBLANK_TYPES_MASK) {
 	case _DRM_VBLANK_RELATIVE:
@@ -1858,7 +1834,7 @@ int drm_wait_vblank_ioctl(struct drm_device *dev, void *data,
 		drm_dbg_core(dev, "waiting on vblank count %llu, crtc %u\n",
 			     req_seq, pipe);
 		wait = wait_event_interruptible_timeout(vblank->queue,
-			drm_vblank_passed(drm_vblank_count(dev, pipe), req_seq) ||
+			drm_vblank_passed(drm_vblank_crtc_count(vblank), req_seq) ||
 				      !READ_ONCE(vblank->enabled),
 			msecs_to_jiffies(3000));
 
@@ -1888,7 +1864,7 @@ int drm_wait_vblank_ioctl(struct drm_device *dev, void *data,
 	}
 
 done:
-	drm_vblank_put(dev, pipe);
+	drm_vblank_crtc_put(vblank);
 	return ret;
 }
 
-- 
2.47.3

