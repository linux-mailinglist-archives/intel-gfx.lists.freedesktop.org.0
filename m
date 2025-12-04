Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C059CA35B5
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 12:00:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D314510E95E;
	Thu,  4 Dec 2025 11:00:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NWlmcV91";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BAC410E95F;
 Thu,  4 Dec 2025 11:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764846003; x=1796382003;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LVHxVUbTUSr/nMK+6BD57yZAbGQx7CI2EZX8rk9cM+I=;
 b=NWlmcV91Lkth5hlwPQmf6xqx5XnDjJXv1dVyKgysCDVq/+IRpb6Ot7aW
 os40kMh/BLJMW4SkDxKw51ms+l5uAoTYq9Y+p4bKfR9e0tHiEwLr5AXN0
 49Wx04+co3eVCoU4jWGhiPCZbIS2eLvTzRBGydkSYBTjdLbY/bRKChXJC
 0ruYFqWnOqQpY+lkj+pitvwztMSp8jg2PuzEsUuHv/86Qi2blWmFsVu+v
 FJMKRqtjfhl1gG61gTJs+XkPUrrIOVbvYxJ1wAPPBEoChP+dOTmQfK3se
 FC37N5oWplWLDG9qMRX0aHfJ5qb5QMcy2MxtcEQ1VrCotrBeuh5vw3PVb Q==;
X-CSE-ConnectionGUID: y1sN38v8STmQN8rB3qQ2ew==
X-CSE-MsgGUID: 0T0Bx4lxSuCYM8uZbTVFnw==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="78327111"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="78327111"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 03:00:03 -0800
X-CSE-ConnectionGUID: GxbdejtjTUKTEMRYqcASgQ==
X-CSE-MsgGUID: 1N4AK/fSSKuLiVAkFaLFlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="195064798"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 03:00:00 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: tzimmermann@suse.de, ville.syrjala@linux.intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 23/25] drm/vblank: pass vblank to
 drm_vblank_disable_and_save(), make static
Date: Thu,  4 Dec 2025 12:57:51 +0200
Message-ID: <5b611671e728b9b847e2a6f371ed9eb9627e56a8.1764845757.git.jani.nikula@intel.com>
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
code. Rename to drm_vblank_crtc_disable_and_save().

drm_vblank_disable_and_save() is also no longer used outside of
drm_vblank.c; make it static while at it.

v2: Rename (Thomas)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_internal.h | 1 -
 drivers/gpu/drm/drm_vblank.c   | 8 ++++----
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/drm_internal.h b/drivers/gpu/drm/drm_internal.h
index 6e7ac5b16d92..4458221685f7 100644
--- a/drivers/gpu/drm/drm_internal.h
+++ b/drivers/gpu/drm/drm_internal.h
@@ -111,7 +111,6 @@ static inline bool drm_vblank_passed(u64 seq, u64 ref)
 	return (seq - ref) <= (1 << 23);
 }
 
-void drm_vblank_disable_and_save(struct drm_device *dev, unsigned int pipe);
 int drm_vblank_crtc_get(struct drm_vblank_crtc *vblank);
 void drm_vblank_crtc_put(struct drm_vblank_crtc *vblank);
 u64 drm_vblank_crtc_count(struct drm_vblank_crtc *vblank);
diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index 4a88cdea086d..445b62b8b661 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -462,9 +462,9 @@ static void __disable_vblank(struct drm_vblank_crtc *vblank)
  * are preserved, even if there are any spurious vblank irq's after
  * disable.
  */
-void drm_vblank_disable_and_save(struct drm_device *dev, unsigned int pipe)
+static void drm_vblank_crtc_disable_and_save(struct drm_vblank_crtc *vblank)
 {
-	struct drm_vblank_crtc *vblank = drm_vblank_crtc(dev, pipe);
+	struct drm_device *dev = vblank->dev;
 	unsigned long irqflags;
 
 	assert_spin_locked(&dev->vbl_lock);
@@ -509,7 +509,7 @@ static void vblank_disable_fn(struct timer_list *t)
 	spin_lock_irqsave(&dev->vbl_lock, irqflags);
 	if (atomic_read(&vblank->refcount) == 0 && vblank->enabled) {
 		drm_dbg_core(dev, "disabling vblank on crtc %u\n", pipe);
-		drm_vblank_disable_and_save(dev, pipe);
+		drm_vblank_crtc_disable_and_save(vblank);
 	}
 	spin_unlock_irqrestore(&dev->vbl_lock, irqflags);
 }
@@ -1358,7 +1358,7 @@ void drm_crtc_vblank_off(struct drm_crtc *crtc)
 	/* Avoid redundant vblank disables without previous
 	 * drm_crtc_vblank_on(). */
 	if (drm_core_check_feature(dev, DRIVER_ATOMIC) || !vblank->inmodeset)
-		drm_vblank_disable_and_save(dev, pipe);
+		drm_vblank_crtc_disable_and_save(vblank);
 
 	wake_up(&vblank->queue);
 
-- 
2.47.3

