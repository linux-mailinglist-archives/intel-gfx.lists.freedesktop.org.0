Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFBB79CF54
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 13:07:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53AF310E3EE;
	Tue, 12 Sep 2023 11:07:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA1E410E3FB;
 Tue, 12 Sep 2023 11:07:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694516861; x=1726052861;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Bn3eA+nN1MZK+bJX9D1JN9gYkAlUw79/c8EAbPvvlu4=;
 b=YZXT5YdmYxudvhv+aLrYxc9ghfup3OviVV0Ekp7ExN66Bn34lq/rXNZE
 0FqE1Rk9I/7Po2Ykf66Z2o2fm9ZDSEZE1ZDBXf/1uTx6E/tR3rA9xIbhH
 J1kEn2+18S8pg3D2ZLQVEfqc+suS1q1gEKpGg+S6QJARIfEvGgt2MDm5P
 pnm66ioqPMOAmpA96mhGr7J7xV/JBF9Jo/eaX3CRq+SjsEhfUEYvJWm7X
 xGFvDBCeRy8FCP7fIByW85Gpd0cvhPrCzEZESpP22zNGOzY2J+2y1Zxxn
 VCk5PMCiJRvFoN3qLFcVWgoW2a5CgbrTcJ4W6X07vxBXE2V4XnOB5brfL Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="409295472"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="409295472"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 04:07:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="743688138"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="743688138"
Received: from kscholl-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.206])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 04:07:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Sep 2023 14:06:35 +0300
Message-Id: <b9680203b0b93dc3472260d7e4128984e533b421.1694514689.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1694514689.git.jani.nikula@intel.com>
References: <cover.1694514689.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/19] drm/i915/display: add I915 conditional
 build to intel_sprite.h
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
Cc: jani.nikula@intel.com, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add stubs for !I915.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_sprite.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_sprite.h b/drivers/gpu/drm/i915/display/intel_sprite.h
index 91c6dca342b2..044a032e41b9 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.h
+++ b/drivers/gpu/drm/i915/display/intel_sprite.h
@@ -16,6 +16,7 @@ struct intel_crtc_state;
 struct intel_plane_state;
 enum pipe;
 
+#ifdef I915
 struct intel_plane *intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 					      enum pipe pipe, int plane);
 int intel_sprite_set_colorkey_ioctl(struct drm_device *dev, void *data,
@@ -29,5 +30,12 @@ int hsw_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
 			const struct intel_plane_state *plane_state);
 int vlv_plane_min_cdclk(const struct intel_crtc_state *crtc_state,
 			const struct intel_plane_state *plane_state);
+#else
+static inline struct intel_plane *intel_sprite_plane_create(struct drm_i915_private *dev_priv,
+							    int pipe, int plane)
+{
+	return NULL;
+}
+#endif
 
 #endif /* __INTEL_SPRITE_H__ */
-- 
2.39.2

