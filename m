Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB09542610C
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 02:19:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E51C16E060;
	Fri,  8 Oct 2021 00:19:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8712A6E05C
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 00:19:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="226301636"
X-IronPort-AV: E=Sophos;i="5.85,356,1624345200"; d="scan'208";a="226301636"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 17:19:21 -0700
X-IronPort-AV: E=Sophos;i="5.85,356,1624345200"; d="scan'208";a="489235291"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 17:19:20 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Oct 2021 03:19:10 +0300
Message-Id: <20211008001915.3508011-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211007203517.3364336-4-imre.deak@intel.com>
References: <20211007203517.3364336-4-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/11] drm/i915: Add tiling attribute to the
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

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 920de857ffa28..c15d17d2983d4 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -116,6 +116,7 @@ const struct intel_modifier_desc {
 	const struct drm_format_info *formats;
 	int format_count;
 	u8 is_linear:1;
+	u8 tiling;
 
 	struct {
 #define INTEL_CCS_RC		BIT(0)
@@ -134,10 +135,12 @@ const struct intel_modifier_desc {
 	{
 		.id = I915_FORMAT_MOD_X_TILED,
 		.display_versions = DISPLAY_VER_MASK_ALL,
+		.tiling = I915_TILING_X,
 	},
 	{
 		.id = I915_FORMAT_MOD_Y_TILED,
 		.display_versions = DISPLAY_VER_MASK(9, 13),
+		.tiling = I915_TILING_Y,
 	},
 	{
 		.id = I915_FORMAT_MOD_Yf_TILED,
@@ -146,6 +149,7 @@ const struct intel_modifier_desc {
 	{
 		.id = I915_FORMAT_MOD_Y_TILED_CCS,
 		.display_versions = DISPLAY_VER_MASK(9, 11),
+		.tiling = I915_TILING_Y,
 
 		.ccs.type = INTEL_CCS_RC,
 
@@ -162,6 +166,7 @@ const struct intel_modifier_desc {
 	{
 		.id = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
 		.display_versions = DISPLAY_VER_MASK(12, 13),
+		.tiling = I915_TILING_Y,
 
 		.ccs.type = INTEL_CCS_RC,
 
@@ -170,6 +175,7 @@ const struct intel_modifier_desc {
 	{
 		.id = I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC,
 		.display_versions = DISPLAY_VER_MASK(12, 13),
+		.tiling = I915_TILING_Y,
 
 		.ccs.type = INTEL_CCS_RC_CC,
 
@@ -178,6 +184,7 @@ const struct intel_modifier_desc {
 	{
 		.id = I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS,
 		.display_versions = DISPLAY_VER_MASK(12, 13),
+		.tiling = I915_TILING_Y,
 
 		.ccs.type = INTEL_CCS_MC,
 
@@ -529,18 +536,7 @@ intel_fb_align_height(const struct drm_framebuffer *fb,
 
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

