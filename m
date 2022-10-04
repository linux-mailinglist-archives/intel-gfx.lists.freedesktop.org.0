Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CD65F40E3
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 12:34:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D05DE10E544;
	Tue,  4 Oct 2022 10:33:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E661310E537
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 10:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664879618; x=1696415618;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1rIhAEHAtTsml6oGvvQmzZYx8ix986GXiT1X01Jfkcs=;
 b=LKcTgpGn+DNUjgBeqAr/O8qKB7anK7WllpBAX4b+exLZ1vUYzp/ZkPER
 UXW8uugxL6uHgfrCiPc8/6hbfjrh3WHPH5IX6BwROBPGmGD4sKSfVSw8j
 gQo7NT7XLQcCcOanc2d9ykJJnDKGuY3ticOSbVYQSDVdEUtD/SZm9EH8B
 e1e55Q4mt+PuKRlh0xtO5/zjUWinMXx4q4N4/ViimcvQ9/GLnLhcgmPkq
 9q6n1uRKIzZsHKt59Ne+ektjrizNO1EYh0NdtWxUhXzLMr5VcN0Sb0cFd
 6Opoo+jWTwXGs/7jOk6VveUisBdvWsLSe1N7UAOlk6O5VwmJ0rzMxjGnZ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="304420539"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="304420539"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 03:33:38 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="601575152"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="601575152"
Received: from ngverso-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.7.149])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 03:33:37 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Oct 2022 11:33:10 +0100
Message-Id: <20221004103311.194409-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221004103311.194409-1-matthew.auld@intel.com>
References: <20221004103311.194409-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 4/5] drm/i915/display: consider DG2_RC_CCS_CC
 when migrating buffers
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
Cc: Nirmoy Das <nirmoy.das@intel.com>, Jianshui Yu <jianshui.yu@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For these types of display buffers, we need to able to CPU access some
part of the backing memory in prepare_plane_clear_colors(). As a result
we need to ensure we always place in the mappable part of lmem, which
becomes necessary on small-bar systems.

v2(Nirmoy & Ville):
 - Add some commentary for why we need to CPU access the buffer.
 - Split out the other changes, so we just consider the display change
   here.
v3:
 - Handle this in the dpt path.

Fixes: eb1c535f0d69 ("drm/i915: turn on small BAR support")
Reported-by: Jianshui Yu <jianshui.yu@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb_pin.c | 24 +++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 32206bd359da..8197343300ee 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -50,7 +50,18 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
 			continue;
 
 		if (HAS_LMEM(dev_priv)) {
-			ret = i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0);
+			unsigned int flags = obj->flags;
+
+			/*
+			 * For this type of buffer we need to able to read from the CPU
+			 * the clear color value found in the buffer, hence we need to
+			 * ensure it is always in the mappable part of lmem, if this is
+			 * a small-bar device.
+			 */
+			if (intel_fb_rc_ccs_cc_plane(fb) >= 0)
+				flags &= ~I915_BO_ALLOC_GPU_ONLY;
+			ret = __i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0,
+							flags);
 			if (ret)
 				continue;
 		}
@@ -156,8 +167,17 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
 	ret = i915_gem_object_lock(obj, &ww);
 	if (!ret && phys_cursor)
 		ret = i915_gem_object_attach_phys(obj, alignment);
-	else if (!ret && HAS_LMEM(dev_priv))
+	else if (!ret && HAS_LMEM(dev_priv)) {
+		/*
+		 * For this type of ccs buffer we need to able to read from the
+		 * CPU the clear color value found in the buffer, which might
+		 * require moving to the mappable part of lmem first, but here
+		 * we should be using dpt for this.
+		 */
+		WARN_ON_ONCE(intel_fb_rc_ccs_cc_plane(fb) >= 0);
+
 		ret = i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0);
+	}
 	if (!ret)
 		ret = i915_gem_object_pin_pages(obj);
 	if (ret)
-- 
2.37.3

