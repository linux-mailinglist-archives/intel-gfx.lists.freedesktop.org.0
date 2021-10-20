Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A64C435413
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 21:51:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4628C6E3B7;
	Wed, 20 Oct 2021 19:51:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C82906E3AC
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 19:51:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="209663417"
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="209663417"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 12:51:47 -0700
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="444495855"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 12:51:46 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Wed, 20 Oct 2021 22:51:30 +0300
Message-Id: <20211020195138.1841242-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211020195138.1841242-1-imre.deak@intel.com>
References: <20211020195138.1841242-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 03/11] drm/i915: Add tiling attribute to the
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
 drivers/gpu/drm/i915/display/intel_fb.c | 31 +++++++++++++++----------
 1 file changed, 19 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 539c23c1c9990..8982cfa7205fe 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -120,6 +120,7 @@ struct intel_modifier_desc {
 	.formats = format_list, \
 	.format_count = ARRAY_SIZE(format_list)
 
+	u8 tiling;
 	u8 is_linear:1;
 
 	struct {
@@ -136,6 +137,7 @@ static const struct intel_modifier_desc intel_modifiers[] = {
 	{
 		.modifier = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
 		.display_ver = { 12, 13 },
+		.tiling = I915_TILING_Y,
 
 		.ccs.type = INTEL_CCS_MC,
 
@@ -144,6 +146,7 @@ static const struct intel_modifier_desc intel_modifiers[] = {
 	{
 		.modifier = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
 		.display_ver = { 12, 13 },
+		.tiling = I915_TILING_Y,
 
 		.ccs.type = INTEL_CCS_RC,
 
@@ -152,6 +155,7 @@ static const struct intel_modifier_desc intel_modifiers[] = {
 	{
 		.modifier = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC,
 		.display_ver = { 12, 13 },
+		.tiling = I915_TILING_Y,
 
 		.ccs.type = INTEL_CCS_RC_CC,
 
@@ -168,6 +172,7 @@ static const struct intel_modifier_desc intel_modifiers[] = {
 	{
 		.modifier = I915_FORMAT_MOD_Y_TILED_CCS,
 		.display_ver = { 9, 11 },
+		.tiling = I915_TILING_Y,
 
 		.ccs.type = INTEL_CCS_RC,
 
@@ -180,14 +185,17 @@ static const struct intel_modifier_desc intel_modifiers[] = {
 	{
 		.modifier = I915_FORMAT_MOD_Y_TILED,
 		.display_ver = { 9, 13 },
+		.tiling = I915_TILING_Y,
 	},
 	{
 		.modifier = I915_FORMAT_MOD_X_TILED,
 		.display_ver = DISPLAY_VER_ALL,
+		.tiling = I915_TILING_X,
 	},
 	{
 		.modifier = DRM_FORMAT_MOD_LINEAR,
 		.display_ver = DISPLAY_VER_ALL,
+		.tiling = I915_TILING_NONE,
 
 		.is_linear = true,
 	},
@@ -204,6 +212,16 @@ static const struct intel_modifier_desc *lookup_modifier_or_null(u64 modifier)
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
@@ -528,18 +546,7 @@ intel_fb_align_height(const struct drm_framebuffer *fb,
 
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

