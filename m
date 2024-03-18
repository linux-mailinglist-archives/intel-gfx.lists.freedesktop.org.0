Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A0DD87F161
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 21:44:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD13C1120B2;
	Mon, 18 Mar 2024 20:44:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bR5F1/qL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E317E1120B2
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Mar 2024 20:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710794662; x=1742330662;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HZsgmxpn/d7I73aHkhjqcb9wJ8ucpOy6Wqvzh/mhEpU=;
 b=bR5F1/qLXL9zpkwSOT3xdUw5/V/I3RCgm/JFVDlFKrMaC80mzVOiNEXS
 YrEInu5lXymHB1ZoSkuc4NzRTMR+2yxgfOm2X0PXbOpUW3hDOecZQlf/t
 QWwp5z6nNfveAwfHj+pETexLutvXiKj+HRQxASRvaNS/YZv3xx5YjmfDM
 4AfFc7+vzphebhjDFAX93gxlB/UL5LRw5Cz8VCWKwr+cwzHCi2OpGQLtT
 VJJBBN16cIzM6CH6umiVlLF2QUUMHQvEenTOfKMcESX92zTGQsRbEs5dh
 FiC0hpACSslwlqPGjcTWABAsZBjEXcSY5Yn589tgCh0aAmoAoSYoN11RB w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="16273739"
X-IronPort-AV: E=Sophos;i="6.07,135,1708416000"; d="scan'208";a="16273739"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2024 13:44:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11017"; a="827781926"
X-IronPort-AV: E=Sophos;i="6.07,135,1708416000"; d="scan'208";a="827781926"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 18 Mar 2024 13:44:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 18 Mar 2024 22:44:17 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Simon Ser <contact@emersion.fr>,
 =?UTF-8?q?Jonas=20=C3=85dahl?= <jadahl@redhat.com>,
 Daniel Stone <daniel@fooishbar.org>,
 Sameer Lattannavar <sameer.lattannavar@intel.com>,
 Sebastian Wick <sebastian.wick@redhat.com>,
 Harry Wentland <harry.wentland@amd.com>,
 Pekka Paalanen <pekka.paalanen@collabora.com>
Subject: [PATCH v3 2/2] drm/i915: Add SIZE_HINTS property for cursors
Date: Mon, 18 Mar 2024 22:44:08 +0200
Message-ID: <20240318204408.9687-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240318204408.9687-1-ville.syrjala@linux.intel.com>
References: <20240318204408.9687-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Advertize more suitable cursor sizes via the new SIZE_HINTS
plane property.

We can't really enumerate all supported cursor sizes on
the platforms where the cursor height can vary freely, so
for simplicity we'll just expose all square+POT sizes between
each platform's min and max cursor limits.

Depending on the platform this will give us one of three
results:
- 64x64,128x128,256x256,512x512
- 64x64,128x128,256x256
- 64x64

Cc: Simon Ser <contact@emersion.fr>
Cc: Jonas Ådahl <jadahl@redhat.com>
Cc: Daniel Stone <daniel@fooishbar.org>
Cc: Sameer Lattannavar <sameer.lattannavar@intel.com>
Cc: Sebastian Wick <sebastian.wick@redhat.com>
Cc: Harry Wentland <harry.wentland@amd.com>
Cc: Pekka Paalanen <pekka.paalanen@collabora.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 24 +++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index f8b33999d43f..49e9b9be2235 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -823,6 +823,28 @@ static const struct drm_plane_funcs intel_cursor_plane_funcs = {
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
@@ -881,6 +903,8 @@ intel_cursor_plane_create(struct drm_i915_private *dev_priv,
 						   DRM_MODE_ROTATE_0 |
 						   DRM_MODE_ROTATE_180);
 
+	intel_cursor_add_size_hints_property(cursor);
+
 	zpos = DISPLAY_RUNTIME_INFO(dev_priv)->num_sprites[pipe] + 1;
 	drm_plane_create_zpos_immutable_property(&cursor->base, zpos);
 
-- 
2.43.2

