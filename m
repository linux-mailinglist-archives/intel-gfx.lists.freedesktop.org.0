Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB515F4427
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 15:20:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 041D110E6FF;
	Tue,  4 Oct 2022 13:20:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A24110E715
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 13:19:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664889590; x=1696425590;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Rd76CB8r3fwCML49tzU1kwcoQOMgflV7+RNoHyhdvXc=;
 b=SwhTYBx2s7d62UN4E2u3q625lGZoYxDmWtSez5gs3cJaOXjIQ7yuobEk
 eFdlPAxSNlLACVKYJX3ds7x7z4cQf4g1VyHKR0GBUi2yg/BDZI43MSM1W
 EIrH7bQm6HYY4pHDaeLFpDzhG3aEyrZiQLilgMr1c5PXe1MDxtHXK/dG0
 wOxogroeki1XQbjC+IckUe76W7xAW79LZSQdL+mC2+ruevwmCwNt/a4L9
 lGyJjqICDAPoGLwkP8atnI9cRZYVmWJV/HCsAp/glA9Va1KOBx/2++DOy
 P6MNJh0GOn1dvyKaoGmPEO6dnHooTWXWgdG9CMUngHXhtMY9hXayViCeI Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="300507223"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="300507223"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 06:19:49 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="654766948"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="654766948"
Received: from ngverso-mobl2.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.252.7.149])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 06:19:43 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Oct 2022 14:19:15 +0100
Message-Id: <20221004131916.233474-4-matthew.auld@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20221004131916.233474-1-matthew.auld@intel.com>
References: <20221004131916.233474-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 4/5] drm/i915/display: consider DG2_RC_CCS_CC
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
v4(Ville):
 - Drop the intel_fb_rc_ccs_cc_plane() sanity check in
   pin_and_fence_fb_obj(), since we can also trigger this on DG1 it
   seems.

Fixes: eb1c535f0d69 ("drm/i915: turn on small BAR support")
Reported-by: Jianshui Yu <jianshui.yu@intel.com>
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb_pin.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 5031ee5695dd..e12339f46640 100644
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
-- 
2.37.3

