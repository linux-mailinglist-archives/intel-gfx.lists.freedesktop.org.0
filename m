Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1ZEcC2IjV2opFwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 08:06:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDD275AD62
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 08:06:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=AyO2geoU;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B5C510E149;
	Wed, 15 Jul 2026 06:06:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78E3D10E149;
 Wed, 15 Jul 2026 06:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784095583; x=1815631583;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=incrUGOg2fPdBHiI+Kr0zu396/J9/b0DyF1tfa/Vsxg=;
 b=AyO2geoUUDSUAfvcC2oCJdgHHvpdmlmG0qZ9Uh2qyj7I5tQkw9aNp12p
 5UgtJKZ2lDTdFCkjDUHdCIZr02oUsF2JK5p7+XHruJ8XdaERbApJ4h3Fi
 I8eLx0Jp7W+XMFNQTbATeU0EEG/zKc8BC1mvieNuNPdzPwH+wcT58EI7q
 FvJipW7MVnd/twfZ4tOJMXeBxxf+6ntwp1vQMah0SqLr0V1WP5BFDBOv1
 /qt98rZY8Z/UoVUm0h10l6lnPoTKNLokBPB0GD45SCDg2orsUfEM5Ixiy
 1vTZdTngocnzLuN0AkDdtS+3Kq3ho2MAWQfIHYUG0472zAy59YBr+xCA2 w==;
X-CSE-ConnectionGUID: sRrUorfeT3OMQ8PFz/b/OQ==
X-CSE-MsgGUID: GiKX4SC1QPq0t73h9lzMbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="84920600"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="84920600"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 23:06:22 -0700
X-CSE-ConnectionGUID: UKqgeNI1SWGabR35IpQSeA==
X-CSE-MsgGUID: +Yz/JfNQTjCfeXNYyOlnnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="252108181"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa010.fm.intel.com with ESMTP; 14 Jul 2026 23:06:19 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Uma Shankar <uma.shankar@intel.com>,
 Leandro Ribeiro <leandro.ribeiro@collabora.com>
Subject: [PATCH] drm/i915/display: expose blend mode on alpha-capable planes
Date: Wed, 15 Jul 2026 11:12:21 +0530
Message-Id: <20260715054221.451421-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:mid,intel.com:email,intel.com:dkim,collabora.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6EDD275AD62

Since commit 860e748bddcc ("drm: ensure blend mode supported if pixel
format with alpha exposed"), drm_mode_config_validate() warns when a
plane exposes an alpha pixel format but not the "pixel blend mode"
property. The cursor (ARGB8888, all platforms) and the VLV/CHV primary
and sprite planes trip this.

Userspace has historically assumed premultiplied blending when the
property is not attached, so it is safe to assume that planes that
did not expose the property already blended with fixed pre-multiplied
alpha in hardware. Therefore, expose a "pixel blend mode" property
advertising only DRM_MODE_BLEND_PREMULTI to match that assumption and
silence the warning. The cursor call is unconditional; the primary and
sprite calls are gated to VLV/CHV, the only platforms whose format lists
include alpha formats.

Assisted-by: Claude:claude-opus-4-8
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Cc: Leandro Ribeiro <leandro.ribeiro@collabora.com>
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/16623
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
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
index 88384dea868b..0673f16f6fd0 100644
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
2.25.1

