Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA2B5F0FA6
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 18:13:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D7C610ED79;
	Fri, 30 Sep 2022 16:13:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94D0010ED73
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 16:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664554342; x=1696090342;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lUHFjOo3Ezl3sO2okndM+iDqe2YQxs+FGjNy9JwTWl8=;
 b=U11GlTZLx1QVYBMjg3pYaYfN1myV62RBhLpaUvtHDSexfRkb3pu/PCAn
 TbOP1jgMdwKvPTgDR2F5nN4OQj62P18w9tVWG/ptNGK4wm5MSoYsyralt
 5V3GqpRfeUDTrWK2l2Ov0jo0cWo/70qPQ/q+/iqvv+y+UmtHmdANXT8y4
 KZtgLjrWtyXTsIvEfq6xKUk7zN459aMhOacDbkDo1bDE3jtcfiXfQpWpc
 5LFzNE0M9qU0yHbvWmEOBI1iw5a6t1eUPX0oMH7rGEmk8m+FAHeUcObe7
 ggWcjg00qXm7P1VbVXq99iiKoTooWZ4LyJwHix7rClTpxBAbzL3c68C1z A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="299828222"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="299828222"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 09:12:22 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="726910755"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="726910755"
Received: from dtrawins-mobl1.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.7.39])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 09:12:21 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Sep 2022 17:12:02 +0100
Message-Id: <20220930161203.432540-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220930161203.432540-1-matthew.auld@intel.com>
References: <20220930161203.432540-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/4] drm/i915/display: consider DG2_RC_CCS_CC
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

Fixes: eb1c535f0d69 ("drm/i915: turn on small BAR support")
Reported-by: Jianshui Yu <jianshui.yu@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb_pin.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 0cd9e8cb078b..0c444a3d8d8e 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -139,8 +139,20 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
 	ret = i915_gem_object_lock(obj, &ww);
 	if (!ret && phys_cursor)
 		ret = i915_gem_object_attach_phys(obj, alignment);
-	else if (!ret && HAS_LMEM(dev_priv))
-		ret = i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0);
+	else if (!ret && HAS_LMEM(dev_priv)) {
+		unsigned int flags = obj->flags;
+
+		/*
+		 * For this type of buffer we need to able to read from the CPU
+		 * the clear color value found in the buffer, hence we need to
+		 * ensure it is always in the mappable part of lmem, if this is
+		 * a small-bar device.
+		 */
+		if (intel_fb_rc_ccs_cc_plane(fb) >= 0)
+			flags &= ~I915_BO_ALLOC_GPU_ONLY;
+		ret = __i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0,
+						flags);
+	}
 	if (!ret)
 		ret = i915_gem_object_pin_pages(obj);
 	if (ret)
-- 
2.37.3

