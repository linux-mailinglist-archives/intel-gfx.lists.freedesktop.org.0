Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6337448509F
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 11:05:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A833510E900;
	Wed,  5 Jan 2022 10:05:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6959710E89E
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 10:05:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641377129; x=1672913129;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KgTeRmtJWN4CvVUCHlrgbjmIGhrTSNlqieYFozLt7l4=;
 b=LfE65cREHvHfddcclZcbaxfns0ejc4QZT1imxZv5vBglM0uabEmj2yLf
 RHaVC9bTkejEfsHYu7AaU4sVhPI2MqqKrUPLPa9BGwsLr+LxFjP1Id+ty
 HJvvdBFxZ6EQNyBWzDbl0Y65qivQQlEXs7+yQJayaS4Af6748XMBKyrhp
 JFj+3uISIvb3EYZi70s1rymHvLgYTmDlxLW5v13N6mDRVY+wY7PvTXAY9
 nbf8mES+r66D5sZplHr9cvAd7pSkicMPmrQstxUsp5Btx9CrUpdsF7gcG
 OwfvdOsRDKYsl1BEWjO301Qfp7lsgk3jXp62mktqdmYHnEWJ6TSE8rqbu g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="241230444"
X-IronPort-AV: E=Sophos;i="5.88,263,1635231600"; d="scan'208";a="241230444"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 02:05:29 -0800
X-IronPort-AV: E=Sophos;i="5.88,263,1635231600"; d="scan'208";a="472438312"
Received: from menright-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.25.244])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 02:05:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jan 2022 12:05:20 +0200
Message-Id: <20220105100520.976092-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220105100520.976092-1-jani.nikula@intel.com>
References: <20220105100520.976092-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/uncore: rename i915_reg_read_ioctl
 intel_uncore_reg_read_ioctl
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Follow the usual naming convention.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c  | 2 +-
 drivers/gpu/drm/i915/intel_uncore.c | 4 ++--
 drivers/gpu/drm/i915/intel_uncore.h | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 95174938b160..f9a494e159dc 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1805,7 +1805,7 @@ static const struct drm_ioctl_desc i915_ioctls[] = {
 	DRM_IOCTL_DEF_DRV(I915_GEM_WAIT, i915_gem_wait_ioctl, DRM_RENDER_ALLOW),
 	DRM_IOCTL_DEF_DRV(I915_GEM_CONTEXT_CREATE_EXT, i915_gem_context_create_ioctl, DRM_RENDER_ALLOW),
 	DRM_IOCTL_DEF_DRV(I915_GEM_CONTEXT_DESTROY, i915_gem_context_destroy_ioctl, DRM_RENDER_ALLOW),
-	DRM_IOCTL_DEF_DRV(I915_REG_READ, i915_reg_read_ioctl, DRM_RENDER_ALLOW),
+	DRM_IOCTL_DEF_DRV(I915_REG_READ, intel_uncore_reg_read_ioctl, DRM_RENDER_ALLOW),
 	DRM_IOCTL_DEF_DRV(I915_GET_RESET_STATS, i915_gem_context_reset_stats_ioctl, DRM_RENDER_ALLOW),
 	DRM_IOCTL_DEF_DRV(I915_GEM_USERPTR, i915_gem_userptr_ioctl, DRM_RENDER_ALLOW),
 	DRM_IOCTL_DEF_DRV(I915_GEM_CONTEXT_GETPARAM, i915_gem_context_getparam_ioctl, DRM_RENDER_ALLOW),
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index fc25ebf1a593..33f95bb2d3d5 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -2269,8 +2269,8 @@ static const struct reg_whitelist {
 	.size = 8
 } };
 
-int i915_reg_read_ioctl(struct drm_device *dev,
-			void *data, struct drm_file *file)
+int intel_uncore_reg_read_ioctl(struct drm_device *dev,
+				void *data, struct drm_file *file)
 {
 	struct drm_i915_private *i915 = to_i915(dev);
 	struct intel_uncore *uncore = &i915->uncore;
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index 3a87bbd906f8..697ac4586159 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -457,7 +457,7 @@ static inline int intel_uncore_write_and_verify(struct intel_uncore *uncore,
 #define raw_reg_write(base, reg, value) \
 	writel(value, base + i915_mmio_reg_offset(reg))
 
-int i915_reg_read_ioctl(struct drm_device *dev, void *data,
-			struct drm_file *file);
+int intel_uncore_reg_read_ioctl(struct drm_device *dev, void *data,
+				struct drm_file *file);
 
 #endif /* !__INTEL_UNCORE_H__ */
-- 
2.30.2

