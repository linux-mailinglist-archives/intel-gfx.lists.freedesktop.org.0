Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE5B7C5E4A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 22:23:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EABD110E1C2;
	Wed, 11 Oct 2023 20:23:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A601710E1C2
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 20:23:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697055828; x=1728591828;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=i1k9pSWu7UOhkkO7h2iF7P9Q4ZQcm1yWlwL3r0dKfkY=;
 b=CPnNTnLOubDJ734KeaFTjntxzDWg9F8u+CyBeoIVo9dPHq2HWaujzJEQ
 LW47H3WueLv2EA0IjOiUv1SOwBjCw8E192SApvfI0d2sVcXweSlg/0Tmk
 iqQVSWTxJ3G89Who18WUiHkW36/QcP7gK8A+fUy3ix9Rmm2jxbUG51p2e
 r3NykHddmhcrVLKG3jxQmVXzUgy2MfCY+Js69+Jmmayh6tBni160KC4MX
 vzOoJg80FA5rVdOugjddqJENz3dPU8rhDboDUQJxsx2EVcNdm5mJHNI21
 MRWy7U6ynSPs9QIwsCl2wVDszzCGQX7VtOwjq8XaoTov1lI3mCEpOw3mz w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="471014613"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="471014613"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 13:23:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="844709423"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="844709423"
Received: from lpaczyn-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.57.43])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 13:23:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Oct 2023 23:22:59 +0300
Message-Id: <20231011202259.1090131-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/sprite: move sprite_name() to
 intel_sprite.c
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move sprite_name() where its only user is, and convert it to a function,
removing the implicit dev_priv usage.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.h | 1 -
 drivers/gpu/drm/i915/display/intel_sprite.c  | 7 ++++++-
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 0e5dffe8f018..163469fe67a2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -105,7 +105,6 @@ enum i9xx_plane_id {
 };
 
 #define plane_name(p) ((p) + 'A')
-#define sprite_name(p, s) ((p) * DISPLAY_RUNTIME_INFO(dev_priv)->num_sprites[(p)] + (s) + 'A')
 
 #define for_each_plane_id_on_crtc(__crtc, __p) \
 	for ((__p) = PLANE_PRIMARY; (__p) < I915_MAX_PLANES; (__p)++) \
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 1fb16510f750..d7b440c8caef 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -48,6 +48,11 @@
 #include "intel_frontbuffer.h"
 #include "intel_sprite.h"
 
+static char sprite_name(struct drm_i915_private *i915, enum pipe pipe, int sprite)
+{
+	return pipe * DISPLAY_RUNTIME_INFO(i915)->num_sprites[pipe] + sprite + 'A';
+}
+
 static void i9xx_plane_linear_gamma(u16 gamma[8])
 {
 	/* The points are not evenly spaced. */
@@ -1636,7 +1641,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 				       0, plane_funcs,
 				       formats, num_formats, modifiers,
 				       DRM_PLANE_TYPE_OVERLAY,
-				       "sprite %c", sprite_name(pipe, sprite));
+				       "sprite %c", sprite_name(dev_priv, pipe, sprite));
 	kfree(modifiers);
 
 	if (ret)
-- 
2.39.2

