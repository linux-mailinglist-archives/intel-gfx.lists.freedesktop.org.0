Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D481666747
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 00:56:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D18E10E838;
	Wed, 11 Jan 2023 23:56:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AB5310E2C5
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 23:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673481376; x=1705017376;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w4V4wt3JHqbj3QI6M+dSkYv5uC+o73NfOa2u5/uhXBA=;
 b=DJLF5p9bgCOXwB6Vh2DN2ZuQFmQbAMwQ1CDCXSscmm5bUc2ho8Imn8Ix
 SoLKiIoDX1u649+2mKC4Wb3EuRy8okfTi8VvaW2cv02Qfs6wZJqMeuvHg
 148y+6tHeBmcK6J0wmdmby7wldQIZFpyPA4ehSVXplD6fr04jo+E4r4vS
 EXqx/LfD76OhkLcuFr/CRG/2ADsaw6EjKdjamMvj1p/MhCmXR04Q4TqBP
 8osFx80KzAXjueEbYpyuyBU/Azb3cOOtcBrTTP0eKzp6nVeZ37eTdhgVz
 1yIJUTFeo83P/ASJy9Iz0zeqQblGG8tYZf1bURCKvIliwHG62OqLLfPsk Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="307090902"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="307090902"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 15:56:14 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="831486387"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="831486387"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 15:56:14 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Jan 2023 15:55:29 -0800
Message-Id: <20230111235531.3353815-8-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230111235531.3353815-1-radhakrishna.sripada@intel.com>
References: <20230111235531.3353815-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH dii-client 7/9] drm/i915/fbdev: lock the fbdev
 obj before vma pin
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

From: Tejas Upadhyay <tejas.upadhyay@intel.com>

lock the fbdev obj before calling into
i915_vma_pin_iomap(). This helps to solve below :

<7>[   93.563308] i915 0000:00:02.0: [drm:intelfb_create [i915]] no BIOS fb, allocating a new one
<4>[   93.581844] ------------[ cut here ]------------
<4>[   93.581855] WARNING: CPU: 12 PID: 625 at drivers/gpu/drm/i915/gem/i915_gem_pages.c:424 i915_gem_object_pin_map+0x152/0x1c0 [i915]

v2 :
   - Remove err variable - Chris
   - Pass false as its not interruptible - Chris

Bug-id: VLK-38439
Fixes: b473df22760f9 ("backport "drm/i915: Add ww context to intel_dpt_pin, v2.")
Cc: Chris Wilson <chris.p.wilson@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 24 ++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 03ed4607a46d..40808d57f0d0 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -210,6 +210,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	bool prealloc = false;
 	void __iomem *vaddr;
 	struct drm_i915_gem_object *obj;
+	struct i915_gem_ww_ctx ww;
 	int ret;
 
 	mutex_lock(&ifbdev->hpd_lock);
@@ -290,13 +291,24 @@ static int intelfb_create(struct drm_fb_helper *helper,
 		info->fix.smem_len = vma->size;
 	}
 
-	vaddr = i915_vma_pin_iomap(vma);
-	if (IS_ERR(vaddr)) {
-		drm_err(&dev_priv->drm,
-			"Failed to remap framebuffer into virtual memory (%pe)\n", vaddr);
-		ret = PTR_ERR(vaddr);
-		goto out_unpin;
+	for_i915_gem_ww(&ww, ret, false) {
+		ret = i915_gem_object_lock(vma->obj, &ww);
+
+		if (ret)
+			continue;
+
+		vaddr = i915_vma_pin_iomap(vma);
+		if (IS_ERR(vaddr)) {
+			drm_err(&dev_priv->drm,
+					"Failed to remap framebuffer into virtual memory (%pe)\n", vaddr);
+			ret = PTR_ERR(vaddr);
+			continue;
+		}
 	}
+
+	if (ret)
+		goto out_unpin;
+
 	info->screen_base = vaddr;
 	info->screen_size = vma->size;
 
-- 
2.34.1

