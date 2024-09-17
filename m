Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D977197B2C4
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 18:15:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7836610E4B0;
	Tue, 17 Sep 2024 16:15:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dPQ1h376";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA9AA10E4B0;
 Tue, 17 Sep 2024 16:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726589725; x=1758125725;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2IRGjOYoCV9yE4VfmOt6YcY7ueYjVotCxe4DNDG4wFM=;
 b=dPQ1h376juBPEvrMrz/sWw0XW/QNFurPLcB5MnKM3CO9fNdYYjahizLH
 l+mbMPwBRb0TJ4EWrW5PNlUApTeyZyctY9DoZrxabOzVQ7LHp6Dzh3Fv5
 VbJs8z9LEjUDa+BarSRUlm40a3nlwrkCcu6WD/VKRz8iDNn4hhMMJ+5rO
 i67zpFLcC0Om0JpjaT69CUOSAwppSM5E5bDqPqcj6y8An5u6Tn3cL4slK
 J5ID32LnTF7LmHRFIGH+2JlxbWjiGHARHIRO4RfhDa9tpI0Q79sJ/5ngO
 94hywsFf0+2tOEfvOqISbsLj27Im+u8B+JMmRPNWkb1jWqhfw0cdqrykM g==;
X-CSE-ConnectionGUID: BvibZJUgQCqwvnEs9twFPg==
X-CSE-MsgGUID: +DdVpDeNSbyBXTknauUC+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="13559548"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="13559548"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:15:24 -0700
X-CSE-ConnectionGUID: HdcEtErKQg+shGWgqqapPQ==
X-CSE-MsgGUID: q40bPT7JSIWJ6FAsodx8Vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="73337075"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 09:15:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, maarten.lankhorst@linux.intel.com,
 jani.nikula@intel.com
Subject: [PATCH 12/22] drm/xe/display: stop using intel_fb_obj() in xe_fb_pin.c
Date: Tue, 17 Sep 2024 19:13:51 +0300
Message-Id: <39f3d52cf156aecc4b2ed5cf1c9342b1c15143b4.1726589119.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726589119.git.jani.nikula@intel.com>
References: <cover.1726589119.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

intel_fb_obj() returns struct drm_i915_gem_object, which is not right
for xe, and only works because xe defines
-Ddrm_i915_gem_object=xe_bo. Switch to intel_fb_bo() and convert to
struct xe_bo from there.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index b58fc4ba2aac..79dbbbe03c7f 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -84,7 +84,8 @@ static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
 	struct xe_device *xe = to_xe_device(fb->base.dev);
 	struct xe_tile *tile0 = xe_device_get_root_tile(xe);
 	struct xe_ggtt *ggtt = tile0->mem.ggtt;
-	struct xe_bo *bo = intel_fb_obj(&fb->base), *dpt;
+	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
+	struct xe_bo *bo = gem_to_xe_bo(obj), *dpt;
 	u32 dpt_size, size = bo->ttm.base.size;
 
 	if (view->type == I915_GTT_VIEW_NORMAL)
@@ -185,7 +186,8 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
 				const struct i915_gtt_view *view,
 				struct i915_vma *vma)
 {
-	struct xe_bo *bo = intel_fb_obj(&fb->base);
+	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
+	struct xe_bo *bo = gem_to_xe_bo(obj);
 	struct xe_device *xe = to_xe_device(fb->base.dev);
 	struct xe_ggtt *ggtt = xe_device_get_root_tile(xe)->mem.ggtt;
 	u32 align;
@@ -269,7 +271,8 @@ static struct i915_vma *__xe_pin_fb_vma(const struct intel_framebuffer *fb,
 	struct drm_device *dev = fb->base.dev;
 	struct xe_device *xe = to_xe_device(dev);
 	struct i915_vma *vma = kzalloc(sizeof(*vma), GFP_KERNEL);
-	struct xe_bo *bo = intel_fb_obj(&fb->base);
+	struct drm_gem_object *obj = intel_fb_bo(&fb->base);
+	struct xe_bo *bo = gem_to_xe_bo(obj);
 	int ret;
 
 	if (!vma)
@@ -366,7 +369,8 @@ void intel_fb_unpin_vma(struct i915_vma *vma, unsigned long flags)
 int intel_plane_pin_fb(struct intel_plane_state *plane_state)
 {
 	struct drm_framebuffer *fb = plane_state->hw.fb;
-	struct xe_bo *bo = intel_fb_obj(fb);
+	struct drm_gem_object *obj = intel_fb_bo(fb);
+	struct xe_bo *bo = gem_to_xe_bo(obj);
 	struct i915_vma *vma;
 
 	/* We reject creating !SCANOUT fb's, so this is weird.. */
-- 
2.39.2

