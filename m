Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A401E42E3F7
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 00:09:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71BDA6EC5A;
	Thu, 14 Oct 2021 22:09:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CE336E8DF
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Oct 2021 22:09:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="227754439"
X-IronPort-AV: E=Sophos;i="5.85,374,1624345200"; d="scan'208";a="227754439"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 15:09:30 -0700
X-IronPort-AV: E=Sophos;i="5.85,374,1624345200"; d="scan'208";a="492211768"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 15:09:29 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Fri, 15 Oct 2021 01:09:13 +0300
Message-Id: <20211014220921.683870-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211014220921.683870-1-imre.deak@intel.com>
References: <20211014220921.683870-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 03/11] drm/i915: Add tiling attribute to the
 modifier descriptor
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

Add a tiling atttribute to the modifier descriptor, which let's us
get the tiling without listing the modifiers twice.

v1-v2: Unchanged.
v3:
- Initialize .tiling to I915_TILING_NONE explicitly (Ville)
- Move from previous patch lookup_modifier() to here, where it's first
  used.

Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 33 ++++++++++++++++---------
 1 file changed, 21 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 772a68a9f65b0..06697379a9917 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -120,6 +120,7 @@ struct intel_modifier_desc {
 	.formats = format_list, \
 	.format_count = ARRAY_SIZE(format_list)
 
+	u8 tiling;
 	u8 is_linear:1;
 
 	struct {
@@ -136,24 +137,29 @@ static const struct intel_modifier_desc intel_modifiers[] = {
 	{
 		.modifier = DRM_FORMAT_MOD_LINEAR,
 		.display_ver = DISPLAY_VER_ALL,
+		.tiling = I915_TILING_NONE,
 
 		.is_linear = true,
 	},
 	{
 		.modifier = I915_FORMAT_MOD_X_TILED,
 		.display_ver = DISPLAY_VER_ALL,
+		.tiling = I915_TILING_X,
 	},
 	{
 		.modifier = I915_FORMAT_MOD_Y_TILED,
 		.display_ver = { 9, 13 },
+		.tiling = I915_TILING_Y,
 	},
 	{
 		.modifier = I915_FORMAT_MOD_Yf_TILED,
 		.display_ver = { 9, 11 },
+		.tiling = I915_TILING_NONE,
 	},
 	{
 		.modifier = I915_FORMAT_MOD_Y_TILED_CCS,
 		.display_ver = { 9, 11 },
+		.tiling = I915_TILING_Y,
 
 		.ccs.type = INTEL_CCS_RC,
 
@@ -162,6 +168,7 @@ static const struct intel_modifier_desc intel_modifiers[] = {
 	{
 		.modifier = I915_FORMAT_MOD_Yf_TILED_CCS,
 		.display_ver = { 9, 11 },
+		.tiling = I915_TILING_NONE,
 
 		.ccs.type = INTEL_CCS_RC,
 
@@ -170,6 +177,7 @@ static const struct intel_modifier_desc intel_modifiers[] = {
 	{
 		.modifier = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
 		.display_ver = { 12, 13 },
+		.tiling = I915_TILING_Y,
 
 		.ccs.type = INTEL_CCS_RC,
 
@@ -178,6 +186,7 @@ static const struct intel_modifier_desc intel_modifiers[] = {
 	{
 		.modifier = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC,
 		.display_ver = { 12, 13 },
+		.tiling = I915_TILING_Y,
 
 		.ccs.type = INTEL_CCS_RC_CC,
 
@@ -186,6 +195,7 @@ static const struct intel_modifier_desc intel_modifiers[] = {
 	{
 		.modifier = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
 		.display_ver = { 12, 13 },
+		.tiling = I915_TILING_Y,
 
 		.ccs.type = INTEL_CCS_MC,
 
@@ -204,6 +214,16 @@ static const struct intel_modifier_desc *lookup_modifier_or_null(u64 modifier)
 	return NULL;
 }
 
+static const struct intel_modifier_desc *lookup_modifier(u64 modifier)
+{
+	const struct intel_modifier_desc *md = lookup_modifier_or_null(modifier);
+
+	if (WARN_ON(!md))
+		return &intel_modifiers[0];
+
+	return md;
+}
+
 static const struct drm_format_info *
 lookup_format_info(const struct drm_format_info formats[],
 		   int num_formats, u32 format)
@@ -535,18 +555,7 @@ intel_fb_align_height(const struct drm_framebuffer *fb,
 
 static unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
 {
-	switch (fb_modifier) {
-	case I915_FORMAT_MOD_X_TILED:
-		return I915_TILING_X;
-	case I915_FORMAT_MOD_Y_TILED:
-	case I915_FORMAT_MOD_Y_TILED_CCS:
-	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS:
-	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
-	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
-		return I915_TILING_Y;
-	default:
-		return I915_TILING_NONE;
-	}
+	return lookup_modifier(fb_modifier)->tiling;
 }
 
 unsigned int intel_cursor_alignment(const struct drm_i915_private *i915)
-- 
2.27.0

