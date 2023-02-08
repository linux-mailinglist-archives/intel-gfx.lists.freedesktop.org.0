Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A801668E6F6
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 05:09:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7153610E6BD;
	Wed,  8 Feb 2023 04:09:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B8C210E6BD;
 Wed,  8 Feb 2023 04:09:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675829364; x=1707365364;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IgDhHgK4hB1RN2rrhPq4B0VYnvI/Ts997fz02TLG//U=;
 b=XS8xEKBOjWUhG8lX6Y1892gpVNH2FOOvWWHUvxDss7HI0jNDAngNsf6h
 z9/efWhoQsab86RJ3UNpo1RisxUfiSGHfzh17rqgE3bRgVn39MXzak7PH
 9ZLZKGY4m2Mix3mqFjAC1Onlssbr7USiWTn3VI6hNwuXRiHP/Hph2qB2S
 Hqx9H16JeV46nLmqIrr+hf4EBkczpqaRAnjRXm3GIflavMtracU991iu1
 aSx0OZJreOZCu7tm5FQKdWSj+CWmFRRwmuscSlcZh8d7QBByEiJvHo0CJ
 T47au9l80PupFXS90vgHb/LWbLjqEUUe+oH2V3F90MTOcQEJQdYRLJnnr g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="330997997"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="330997997"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 20:09:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="697519857"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="697519857"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga008.jf.intel.com with SMTP; 07 Feb 2023 20:09:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Feb 2023 06:09:20 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Wed,  8 Feb 2023 06:09:11 +0200
Message-Id: <20230208040911.12590-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230208040911.12590-1-ville.syrjala@linux.intel.com>
References: <20230208040911.12590-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Add SIZE_HINTS property for
 cursors
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
Cc: Simon Ser <contact@emersion.fr>, intel-gfx@lists.freedesktop.org,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 =?UTF-8?q?Jonas=20=C3=85dahl?= <jadahl@redhat.com>,
 Daniel Stone <daniel@fooishbar.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Advertize more suitable cursor sizes via the new SIZE_HINTS
plane property.

We can't really enumerate all supported cursor sizes on
the platforms where the cursor height can vary freely, so
for simplicity we'll just expose all square+POT sizes between
each platform's min and max cursor limits.

Depending on the platform this will give us one
of three results:
- 64x64,128x128,256x256,512x512
- 64x64,128x128,256x256
- 64x64

Cc: Simon Ser <contact@emersion.fr>
Cc: Jonas Ådahl <jadahl@redhat.com>
Cc: Daniel Stone <daniel@fooishbar.org>
Cc: Pekka Paalanen <pekka.paalanen@collabora.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 24 +++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index c3173c0c2068..cb6cf3009727 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -757,6 +757,28 @@ static const struct drm_plane_funcs intel_cursor_plane_funcs = {
 	.format_mod_supported = intel_cursor_format_mod_supported,
 };
 
+static void intel_cursor_add_size_hints_property(struct intel_plane *plane)
+{
+	struct drm_i915_private *i915 = to_i915(plane->base.dev);
+	const struct drm_mode_config *config = &i915->drm.mode_config;
+	struct drm_plane_size_hint hints[4];
+	int size, max_size, num_hints = 0;
+
+	max_size = min(config->cursor_width, config->cursor_height);
+
+	/* for simplicity only enumerate the supported square+POT sizes */
+	for (size = 64; size <= max_size; size *= 2) {
+		if (drm_WARN_ON(&i915->drm, num_hints >= ARRAY_SIZE(hints)))
+			break;
+
+		hints[num_hints].width = size;
+		hints[num_hints].height = size;
+		num_hints++;
+	}
+
+	drm_plane_add_size_hints_property(&plane->base, hints, num_hints);
+}
+
 struct intel_plane *
 intel_cursor_plane_create(struct drm_i915_private *dev_priv,
 			  enum pipe pipe)
@@ -815,6 +837,8 @@ intel_cursor_plane_create(struct drm_i915_private *dev_priv,
 						   DRM_MODE_ROTATE_0 |
 						   DRM_MODE_ROTATE_180);
 
+	intel_cursor_add_size_hints_property(cursor);
+
 	zpos = RUNTIME_INFO(dev_priv)->num_sprites[pipe] + 1;
 	drm_plane_create_zpos_immutable_property(&cursor->base, zpos);
 
-- 
2.39.1

