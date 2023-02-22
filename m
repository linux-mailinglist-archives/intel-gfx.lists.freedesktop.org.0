Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D9469EF6B
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 08:36:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1031910E425;
	Wed, 22 Feb 2023 07:36:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BEA410E425
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 07:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677051352; x=1708587352;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=tSlyUty6MS7gMTNwemZBaBwRialZudlULoI/EAqjls8=;
 b=JQyDZd7TsnXt+Dx5Z59QwmUDNhJzHrU+2eT50AgglcaiEaUztxKUyivv
 Ap1olPH7dXqgxpUOhEs/VEd2WF7FHEVjT+0V0M1wrJn7FYRbZk7YonQ3E
 fXrpY9e/rnTXEbhvNI+IBAq3GakoYePFsi2Oo74ywTTwVZzUEeKx485Rg
 KrQvugP1IY44KXje2f1SVD1E7H0Ma6scIlfpjjbJZwJJBgs0WFQbsqC6m
 JE9snwysVleTweIvC995nvR7q8ZMfa1vwNz4ygF/9laFIbUtiUIakUvIj
 3szpVaeNgsYRFV4plkZ9JZOzEdvIRUlfLR9yqCn/kLWpnKkKiU2R24vsv A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="397544106"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="397544106"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 23:35:50 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="795811230"
X-IronPort-AV: E=Sophos;i="5.97,318,1669104000"; d="scan'208";a="795811230"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 23:35:50 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 23:35:02 -0800
Message-Id: <20230222073507.788705-5-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230222073507.788705-1-radhakrishna.sripada@intel.com>
References: <20230222073507.788705-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/9] drm/i915/fbdev: lock the fbdev obj
 before vma pin
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

Fixes: b473df22760f9 ("backport "drm/i915: Add ww context to intel_dpt_pin, v2.")
Cc: Chris Wilson <chris.p.wilson@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 24 ++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 3659350061a7..2766d7ef0128 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -210,6 +210,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	bool prealloc = false;
 	void __iomem *vaddr;
 	struct drm_i915_gem_object *obj;
+	struct i915_gem_ww_ctx ww;
 	int ret;
 
 	mutex_lock(&ifbdev->hpd_lock);
@@ -283,13 +284,24 @@ static int intelfb_create(struct drm_fb_helper *helper,
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

