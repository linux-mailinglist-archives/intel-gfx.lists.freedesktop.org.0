Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C780CA359C
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 11:59:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4BF710E957;
	Thu,  4 Dec 2025 10:59:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EiRoEO0B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FA2310E952;
 Thu,  4 Dec 2025 10:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764845970; x=1796381970;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ymkgrj4x+emK0WdRjHvtdVYyT1/vIwYkrNpUt8fui7Y=;
 b=EiRoEO0BudYzC6j5wTIuQ1MjK8aT66KTna/HuQYzU+eK2K8jwtID4ve1
 IlTpLVrlsm63iNgYMCV2t6Oi2NV0I/uWIgAxYkcoRLAXIT6ueGymOfAyN
 oaxe2dnqouphmyGnYU8uQt11/iC2wdCeFn3Qm7XAnKJzjK6F8ScZe8yoZ
 A/hdgImlIj5J2XumxBt29XJfOlX+JF3D8lvfyFjjy781Uc1N7wGNBGFC7
 B1spgjF+iEYJ2X2D51Eu7e5lJ0oh6XYAssZuLtJTTWL9CCEdBTEwt8+UQ
 c2MnWBIyfCH5v65DU/xZ0y9twvGI6/ZqlxtqfC0ZqgIRn/lpK+/ONISMc A==;
X-CSE-ConnectionGUID: c2sUh1drSSet95BY3tagow==
X-CSE-MsgGUID: ZiB/br/wQjunhuYYjliDug==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="69456195"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="69456195"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:59:30 -0800
X-CSE-ConnectionGUID: Mq221CHXReySWs7wdzFDQA==
X-CSE-MsgGUID: um00KT17QkKF04s1USt0UQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="225627585"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 02:59:28 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: tzimmermann@suse.de, ville.syrjala@linux.intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 17/25] drm/vblank: pass vblank to drm_vblank_enable()
Date: Thu,  4 Dec 2025 12:57:45 +0200
Message-ID: <6c38180a7aa38652f838e25ac82d02daeac31224.1764845757.git.jani.nikula@intel.com>
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

Use the vblank pointer instead of a dev, pipe pair to simplify code.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_vblank.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index 81224946df9d..e4c8af7fb5db 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -1165,9 +1165,10 @@ static int __enable_vblank(struct drm_device *dev, unsigned int pipe)
 	return -EINVAL;
 }
 
-static int drm_vblank_enable(struct drm_device *dev, unsigned int pipe)
+static int drm_vblank_enable(struct drm_vblank_crtc *vblank)
 {
-	struct drm_vblank_crtc *vblank = drm_vblank_crtc(dev, pipe);
+	struct drm_device *dev = vblank->dev;
+	unsigned int pipe = vblank->pipe;
 	int ret = 0;
 
 	assert_spin_locked(&dev->vbl_lock);
@@ -1207,7 +1208,6 @@ static int drm_vblank_enable(struct drm_device *dev, unsigned int pipe)
 int drm_vblank_crtc_get(struct drm_vblank_crtc *vblank)
 {
 	struct drm_device *dev = vblank->dev;
-	int pipe = vblank->pipe;
 	unsigned long irqflags;
 	int ret = 0;
 
@@ -1217,7 +1217,7 @@ int drm_vblank_crtc_get(struct drm_vblank_crtc *vblank)
 	spin_lock_irqsave(&dev->vbl_lock, irqflags);
 	/* Going from 0->1 means we have to enable interrupts again */
 	if (atomic_add_return(1, &vblank->refcount) == 1) {
-		ret = drm_vblank_enable(dev, pipe);
+		ret = drm_vblank_enable(vblank);
 	} else {
 		if (!vblank->enabled) {
 			atomic_dec(&vblank->refcount);
@@ -1499,7 +1499,7 @@ void drm_crtc_vblank_on_config(struct drm_crtc *crtc,
 	 * user wishes vblank interrupts to be enabled all the time.
 	 */
 	if (atomic_read(&vblank->refcount) != 0 || !vblank->config.offdelay_ms)
-		drm_WARN_ON(dev, drm_vblank_enable(dev, pipe));
+		drm_WARN_ON(dev, drm_vblank_enable(vblank));
 	spin_unlock_irq(&dev->vbl_lock);
 }
 EXPORT_SYMBOL(drm_crtc_vblank_on_config);
-- 
2.47.3

