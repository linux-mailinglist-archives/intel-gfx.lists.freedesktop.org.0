Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDFVElizEGrRcgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 21:49:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D625B9A3A
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 21:49:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EFC110E0E6;
	Fri, 22 May 2026 19:49:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V1FjJD7l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D34D410E0E6;
 Fri, 22 May 2026 19:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779479381; x=1811015381;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8+lEZISYtO9vwdXPOCJ3tX7+vTKukcINDwxo2eupEbo=;
 b=V1FjJD7l+BG3+v+pH/C0HQ/etiqOUj4A6apVINpXf+mv97qHlwecmVoq
 cViiSJmuP1WXz6eht3IGT9GOf48f9Ten1uBblFbPrfjJfGm8QqlyrNiJA
 aEfneCZsIePafIqkDwBbtA6vfUej4l0mSLSwC2MqHSuDomMbkfj7zC5sz
 C14XaJ6vfB1HCe4rbiwMK37d8OpnwtndfJ/WvuIFLMTRghRnEEo9gfD9Y
 Sok+MhtCJLcpAUMRb5gSqWHqyv3KOM+zKJ/FQ0COUEwx47uGeooD78BlA
 jn/bvOfVehcwWlwrMVTJLABrvcDxAXbd6anAC1IVkkEpuoYk/NGttk4Nu g==;
X-CSE-ConnectionGUID: A/vrBGXNRoimpAF4dkmDWw==
X-CSE-MsgGUID: KhEWzgUrRRSUIByG1nFK+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11794"; a="84298763"
X-IronPort-AV: E=Sophos;i="6.24,163,1774335600"; d="scan'208";a="84298763"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 12:49:41 -0700
X-CSE-ConnectionGUID: VJBNDHV2QtCm/Pkw0sipWg==
X-CSE-MsgGUID: 35VyfrN2TJGcB6uGWRvM3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,163,1774335600"; d="scan'208";a="245038719"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.71])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 12:49:40 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Leandro Ribeiro <leandro.ribeiro@collabora.com>
Subject: [PATCH] drm/i915: Add the blend mode property to all planes that
 support alpha blending
Date: Fri, 22 May 2026 22:49:35 +0300
Message-ID: <20260522194935.27411-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:dkim]
X-Rspamd-Queue-Id: A5D625B9A3A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Currently only SKL+ universal planes have the blend mode property.
Assuming it now becomes mandatory for all planes that support
alpha blending we need to add it to cursors on all platforms,
and VLV/CHV primary/sprite planes.

TODO: For VLV/CHV primary/sprite planes we could fairly easily
implement DRM_MODE_BLEND_PIXEL_NONE by remapping the A format
to the corresponding X format, and on CHV pipe B (but not pipes
A/C) we could probably even implement DRM_MODE_BLEND_COVERAGE.

Cc: Leandro Ribeiro <leandro.ribeiro@collabora.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c   | 4 ++++
 drivers/gpu/drm/i915/display/intel_cursor.c | 3 +++
 drivers/gpu/drm/i915/display/intel_sprite.c | 4 ++++
 3 files changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 70734d32a409..490908f59141 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -1108,6 +1108,10 @@ intel_primary_plane_create(struct intel_display *display, enum pipe pipe)
 						   DRM_MODE_ROTATE_0,
 						   supported_rotations);
 
+	if (display->platform.valleyview || display->platform.cherryview)
+		drm_plane_create_blend_mode_property(&plane->base,
+						     BIT(DRM_MODE_BLEND_PREMULTI));
+
 	zpos = 0;
 	drm_plane_create_zpos_immutable_property(&plane->base, zpos);
 
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 52347668f27d..344cee13ea97 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -1078,6 +1078,9 @@ intel_cursor_plane_create(struct intel_display *display,
 
 	intel_cursor_add_size_hints_property(cursor);
 
+	drm_plane_create_blend_mode_property(&cursor->base,
+					     BIT(DRM_MODE_BLEND_PREMULTI));
+
 	zpos = DISPLAY_RUNTIME_INFO(display)->num_sprites[pipe] + 1;
 	drm_plane_create_zpos_immutable_property(&cursor->base, zpos);
 
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 6a65f92e8a03..3e38960bbbd8 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -1722,6 +1722,10 @@ intel_sprite_plane_create(struct intel_display *display,
 					  DRM_COLOR_YCBCR_BT709,
 					  DRM_COLOR_YCBCR_LIMITED_RANGE);
 
+	if (display->platform.valleyview || display->platform.cherryview)
+		drm_plane_create_blend_mode_property(&plane->base,
+						     BIT(DRM_MODE_BLEND_PREMULTI));
+
 	zpos = sprite + 1;
 	drm_plane_create_zpos_immutable_property(&plane->base, zpos);
 
-- 
2.52.0

