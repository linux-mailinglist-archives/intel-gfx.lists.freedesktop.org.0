Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B879D0A87
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2024 09:03:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AD4010E43B;
	Mon, 18 Nov 2024 08:02:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="airdjhi2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C366310E42F;
 Mon, 18 Nov 2024 08:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731916978; x=1763452978;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Th2S//7TEi7Nnv3E9Ha5cFlnds7SqIwQ5CxWVRhNarM=;
 b=airdjhi2Cyh+G9YwxhrKqKe5tzyBcGUwXHwv8h0k31gBLJpDfAijNrLn
 jgUo9oeKHGdRyy/a4zrW6DwGDIHU/cFx3GMoJPbEnfqdASybxiZzq34x6
 jSDfdYdaeuawGJyTeDXHgWYiIVscJAZDKpAPGce7QmHjhegKqwLBfqAaC
 dgS44E0LxOBd9JxhR9Rvcq9C1k+J756JhBlbA8LRhTlRG3j7XxqM15+EI
 DgjqpsvMd9vKJiAqU17sDMJTKZ8WAu+jjzOCwcVwifeekT7F2e+ZtADyi
 sssuisH90Hrg94hzqVEcVwmpRCB3JzGMaDZWlPXmS87g8sDg52F8L8fPZ A==;
X-CSE-ConnectionGUID: F48VkXXASNecvhyeaGT+Yg==
X-CSE-MsgGUID: dQT1XLs/RcitkpIFRPtBzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11259"; a="31915492"
X-IronPort-AV: E=Sophos;i="6.12,163,1728975600"; d="scan'208";a="31915492"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 00:02:58 -0800
X-CSE-ConnectionGUID: jivrwWP/TGSdaMwI2JMCwQ==
X-CSE-MsgGUID: pc/XrtJSSPmgyZmvqJ+aJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,163,1728975600"; d="scan'208";a="89061851"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orviesa010.jf.intel.com with ESMTP; 18 Nov 2024 00:02:56 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCHv2 3/3] drm/i915/display: Populate list of async supported
 formats/modifiers
Date: Mon, 18 Nov 2024 13:23:15 +0530
Message-Id: <20241118075315.466009-4-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241118075315.466009-1-arun.r.murthy@intel.com>
References: <20241118075315.466009-1-arun.r.murthy@intel.com>
MIME-Version: 1.0
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

Populate the list of formats/modifiers supported by async flip. Register
a async property and expose the same to user through blob.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 .../drm/i915/display/skl_universal_plane.c    | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 038ca2ec5d7a..a6e84ac56277 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -170,6 +170,44 @@ static const u32 icl_hdr_plane_formats[] = {
 	DRM_FORMAT_XVYU16161616,
 };
 
+static u64 tgl_asyn_modifiers[] = {
+	DRM_FORMAT_MOD_LINEAR,
+	I915_FORMAT_MOD_X_TILED,
+	I915_FORMAT_MOD_Y_TILED,
+	I915_FORMAT_MOD_4_TILED,
+	I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS,
+	I915_FORMAT_MOD_4_TILED_MTL_RC_CCS,
+	I915_FORMAT_MOD_4_TILED_DG2_RC_CCS,
+	I915_FORMAT_MOD_4_TILED_BMG_CCS,
+	I915_FORMAT_MOD_4_TILED_LNL_CCS,
+};
+
+static u64 icl_async_modifiers[] = {
+	I915_FORMAT_MOD_X_TILED,
+	I915_FORMAT_MOD_Y_TILED,
+	I915_FORMAT_MOD_Yf_TILED,
+	I915_FORMAT_MOD_Y_TILED_CCS,
+	I915_FORMAT_MOD_Yf_TILED_CCS,
+};
+
+static u64 skl_async_modifiers[] = {
+	I915_FORMAT_MOD_X_TILED,
+	I915_FORMAT_MOD_Y_TILED,
+	I915_FORMAT_MOD_Yf_TILED,
+};
+
+static u32 intel_async_formats[] = {
+	DRM_FORMAT_RGB565,
+	DRM_FORMAT_XRGB8888,
+	DRM_FORMAT_XBGR8888,
+	DRM_FORMAT_ARGB8888,
+	DRM_FORMAT_ABGR8888,
+	DRM_FORMAT_XRGB2101010,
+	DRM_FORMAT_XBGR2101010,
+	DRM_FORMAT_XRGB16161616F,
+	DRM_FORMAT_XBGR16161616F,
+};
+
 int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
 {
 	switch (format) {
@@ -2585,6 +2623,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	unsigned int supported_rotations;
 	unsigned int supported_csc;
 	const u64 *modifiers;
+	u64 *async_modifiers;
 	const u32 *formats;
 	int num_formats;
 	int ret;
@@ -2687,6 +2726,18 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	if (ret)
 		goto fail;
 
+	if (DISPLAY_VER(dev_priv) >= 12)
+		async_modifiers = tgl_asyn_modifiers;
+	else if (DISPLAY_VER(dev_priv) == 11)
+		async_modifiers = icl_async_modifiers;
+	else
+		async_modifiers = skl_async_modifiers;
+
+	drm_plane_create_format_blob(&dev_priv->drm, &plane->base,
+				     async_modifiers, sizeof(async_modifiers),
+				     intel_async_formats,
+				     sizeof(intel_async_formats), true);
+
 	if (DISPLAY_VER(dev_priv) >= 13)
 		supported_rotations = DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180;
 	else
-- 
2.25.1

