Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19579CA3578
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 11:58:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F38910E941;
	Thu,  4 Dec 2025 10:58:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZZSqmqcq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 248FE10E941;
 Thu,  4 Dec 2025 10:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845928; x=1796381928;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zO/59k9iScF8Gqdi92jOZyCG2x7pey6w4qt1TJtgUX4=;
 b=ZZSqmqcqxF357OgFDQeZEO68H8wFxcHzIqLZPf4w5i0uPZc+7qMkcoeX
 opIAHwK5E+Jt5XJD8Olbvwt1v5EMA5zkfFKpRVffCK/0Mp9mLyvh5kb7N
 czKcPZqtyoHKdXAN7XvLRxSDMjaZyzIsT++8nAUufl4Rm5CClk2RVbZZK
 qclNbg9wacwel+iN3Xp5rl+jNfFdVeNOMzpwkjXZfu6JtXtxmHemTnUJz
 cPfZjdAcjHTkQQ0P6bmuDtuIa3KTlwzZHmNcftmO05kKFhPYzLk+UjzgU
 ptelFHUMqCoW82CRg7jYjfnDYodd8DmqbPDFa1ulzuioH0wMVHztR2O8a w==;
X-CSE-ConnectionGUID: gZPWcqQ7RY+Fp42+En+Gcg==
X-CSE-MsgGUID: o2jEi+OBR+qlii4mO/xnJA==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="65856893"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="65856893"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:58:48 -0800
X-CSE-ConnectionGUID: wn7bln6pSsan36oy7GpCxw==
X-CSE-MsgGUID: eopxD5GESES5Sfh3QLfytA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="199904307"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:58:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: tzimmermann@suse.de, ville.syrjala@linux.intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 09/25] drm/vblank: pass vblank to drm_update_vblank_count()
Date: Thu,  4 Dec 2025 12:57:37 +0200
Message-ID: <e83e392699c19301ce33b8f34618033dbbea83fe.1764845757.git.jani.nikula@intel.com>
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

Use the vblank pointer instead of a dev, pipe pair to simplify
code. Rename to drm_vblank_crtc_update_count().

v2: Rename the function (Thomas)

Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de> # v1
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_vblank.c | 32 +++++++++++++++++---------------
 1 file changed, 17 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index aeb931c825ca..da8ca8928232 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -292,10 +292,11 @@ static void drm_reset_vblank_timestamp(struct drm_device *dev, unsigned int pipe
  * Note: caller must hold &drm_device.vbl_lock since this reads & writes
  * device vblank fields.
  */
-static void drm_update_vblank_count(struct drm_device *dev, unsigned int pipe,
-				    bool in_vblank_irq)
+static void drm_vblank_crtc_update_count(struct drm_vblank_crtc *vblank,
+					 bool in_vblank_irq)
 {
-	struct drm_vblank_crtc *vblank = drm_vblank_crtc(dev, pipe);
+	struct drm_device *dev = vblank->dev;
+	unsigned int pipe = vblank->pipe;
 	u32 cur_vblank, diff;
 	bool rc;
 	ktime_t t_vblank;
@@ -424,8 +425,8 @@ static u64 drm_vblank_count(struct drm_device *dev, unsigned int pipe)
 u64 drm_crtc_accurate_vblank_count(struct drm_crtc *crtc)
 {
 	struct drm_device *dev = crtc->dev;
-	unsigned int pipe = drm_crtc_index(crtc);
-	u64 vblank;
+	struct drm_vblank_crtc *vblank = drm_crtc_vblank_crtc(crtc);
+	u64 vblank_count;
 	unsigned long flags;
 
 	drm_WARN_ONCE(dev, drm_debug_enabled(DRM_UT_VBL) &&
@@ -434,12 +435,12 @@ u64 drm_crtc_accurate_vblank_count(struct drm_crtc *crtc)
 
 	spin_lock_irqsave(&dev->vblank_time_lock, flags);
 
-	drm_update_vblank_count(dev, pipe, false);
-	vblank = drm_vblank_count(dev, pipe);
+	drm_vblank_crtc_update_count(vblank, false);
+	vblank_count = drm_vblank_crtc_count(vblank);
 
 	spin_unlock_irqrestore(&dev->vblank_time_lock, flags);
 
-	return vblank;
+	return vblank_count;
 }
 EXPORT_SYMBOL(drm_crtc_accurate_vblank_count);
 
@@ -490,7 +491,7 @@ void drm_vblank_disable_and_save(struct drm_device *dev, unsigned int pipe)
 	 * this time. This makes the count account for the entire time
 	 * between drm_crtc_vblank_on() and drm_crtc_vblank_off().
 	 */
-	drm_update_vblank_count(dev, pipe, false);
+	drm_vblank_crtc_update_count(vblank, false);
 	__disable_vblank(dev, pipe);
 	vblank->enabled = false;
 
@@ -1199,11 +1200,12 @@ static int drm_vblank_enable(struct drm_device *dev, unsigned int pipe)
 		if (ret) {
 			atomic_dec(&vblank->refcount);
 		} else {
-			drm_update_vblank_count(dev, pipe, 0);
-			/* drm_update_vblank_count() includes a wmb so we just
-			 * need to ensure that the compiler emits the write
-			 * to mark the vblank as enabled after the call
-			 * to drm_update_vblank_count().
+			drm_vblank_crtc_update_count(vblank, 0);
+			/*
+			 * drm_vblank_crtc_update_count() includes a wmb so we
+			 * just need to ensure that the compiler emits the write
+			 * to mark the vblank as enabled after the call to
+			 * drm_vblank_crtc_update_count().
 			 */
 			WRITE_ONCE(vblank->enabled, true);
 		}
@@ -1959,7 +1961,7 @@ bool drm_handle_vblank(struct drm_device *dev, unsigned int pipe)
 		return false;
 	}
 
-	drm_update_vblank_count(dev, pipe, true);
+	drm_vblank_crtc_update_count(vblank, true);
 
 	spin_unlock(&dev->vblank_time_lock);
 
-- 
2.47.3

