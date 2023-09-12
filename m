Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 719EA79CF48
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 13:07:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CBA510E3F8;
	Tue, 12 Sep 2023 11:07:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C20B10E3F8;
 Tue, 12 Sep 2023 11:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694516834; x=1726052834;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OSPau8KXE2SvS+qLaNoHrUtaFUwitagBuoFXZxj0dxg=;
 b=CMDJ2rplQbLTFDYiri11/sYQIJgjoMuRWjEUMlqQLEKL0XZxNTTng5fS
 xlMKCey3Xj/ide/YiaDcYhIcIXHQxwsPUBJZpcmGsA0epFMWJQPmtsOfB
 Q2nq3SlhQ1LO5aiNWepXA1kc7KbaGuB48Q/JiVf3ZCtotU98MeN6yqgpW
 NZApS44t2eys49a+T58iomafm1CeRToXON6DmuPSDbNz++Ka6R0gFlrVd
 jTgZcFUBFbnta/JdHgue+uinOZRzWItHLqI3HuPmvc1ADKEmUIwWw7z4h
 YXc5lVOhCkFccVnNfM4okc9FrdZx+EHSSZO3JC+oUMR+yb90NKnYmTCAf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="375671339"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="375671339"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 04:07:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="809200485"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="809200485"
Received: from kscholl-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.206])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 04:07:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 Sep 2023 14:06:31 +0300
Message-Id: <4ad1864c66adcf691906c37b554f640d04069fb2.1694514689.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1694514689.git.jani.nikula@intel.com>
References: <cover.1694514689.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/19] drm/i915/display: add I915 conditional
 build to i9xx_plane.h
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
 drivers/gpu/drm/i915/display/i9xx_plane.h | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.h b/drivers/gpu/drm/i915/display/i9xx_plane.h
index 027b66053984..b3d724a144cb 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.h
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.h
@@ -15,6 +15,7 @@ struct intel_initial_plane_config;
 struct intel_plane;
 struct intel_plane_state;
 
+#ifdef I915
 unsigned int i965_plane_max_stride(struct intel_plane *plane,
 				   u32 pixel_format, u64 modifier,
 				   unsigned int rotation);
@@ -25,4 +26,26 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe);
 
 void i9xx_get_initial_plane_config(struct intel_crtc *crtc,
 				   struct intel_initial_plane_config *plane_config);
+#else
+static inline unsigned int i965_plane_max_stride(struct intel_plane *plane,
+						 u32 pixel_format, u64 modifier,
+						 unsigned int rotation)
+{
+	return 0;
+}
+static inline int i9xx_check_plane_surface(struct intel_plane_state *plane_state)
+{
+	return 0;
+}
+static inline struct intel_plane *
+intel_primary_plane_create(struct drm_i915_private *dev_priv, int pipe)
+{
+	return NULL;
+}
+static inline void i9xx_get_initial_plane_config(struct intel_crtc *crtc,
+						 struct intel_initial_plane_config *plane_config)
+{
+}
+#endif
+
 #endif
-- 
2.39.2

