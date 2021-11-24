Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA4045B92F
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 12:37:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 060896E857;
	Wed, 24 Nov 2021 11:37:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A07756E857
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 11:37:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="235494926"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="235494926"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 03:37:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="597638760"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 24 Nov 2021 03:37:07 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 Nov 2021 13:37:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Nov 2021 13:36:36 +0200
Message-Id: <20211124113652.22090-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/20] drm/i915/fbc: Relocate
 intel_fbc_override_cfb_stride()
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

Move intel_fbc_override_cfb_stride() next to its cousins.
Helps with later patches.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 42 ++++++++++++------------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 8bde3681b96e..6368dddf977c 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -142,6 +142,27 @@ static unsigned int intel_fbc_cfb_size(struct intel_fbc *fbc,
 	return lines * intel_fbc_cfb_stride(fbc, cache);
 }
 
+static u16 intel_fbc_override_cfb_stride(struct intel_fbc *fbc,
+					 const struct intel_fbc_state_cache *cache)
+{
+	unsigned int stride = _intel_fbc_cfb_stride(cache);
+	unsigned int stride_aligned = intel_fbc_cfb_stride(fbc, cache);
+
+	/*
+	 * Override stride in 64 byte units per 4 line segment.
+	 *
+	 * Gen9 hw miscalculates cfb stride for linear as
+	 * PLANE_STRIDE*512 instead of PLANE_STRIDE*64, so
+	 * we always need to use the override there.
+	 */
+	if (stride != stride_aligned ||
+	    (DISPLAY_VER(fbc->i915) == 9 &&
+	     cache->fb.modifier == DRM_FORMAT_MOD_LINEAR))
+		return stride_aligned * 4 / 64;
+
+	return 0;
+}
+
 static u32 i8xx_fbc_ctl(struct intel_fbc *fbc)
 {
 	const struct intel_fbc_reg_params *params = &fbc->params;
@@ -950,27 +971,6 @@ static bool intel_fbc_cfb_size_changed(struct intel_fbc *fbc)
 		fbc->compressed_fb.size * fbc->limit;
 }
 
-static u16 intel_fbc_override_cfb_stride(struct intel_fbc *fbc,
-					 const struct intel_fbc_state_cache *cache)
-{
-	unsigned int stride = _intel_fbc_cfb_stride(cache);
-	unsigned int stride_aligned = intel_fbc_cfb_stride(fbc, cache);
-
-	/*
-	 * Override stride in 64 byte units per 4 line segment.
-	 *
-	 * Gen9 hw miscalculates cfb stride for linear as
-	 * PLANE_STRIDE*512 instead of PLANE_STRIDE*64, so
-	 * we always need to use the override there.
-	 */
-	if (stride != stride_aligned ||
-	    (DISPLAY_VER(fbc->i915) == 9 &&
-	     cache->fb.modifier == DRM_FORMAT_MOD_LINEAR))
-		return stride_aligned * 4 / 64;
-
-	return 0;
-}
-
 static bool intel_fbc_can_enable(struct intel_fbc *fbc)
 {
 	struct drm_i915_private *i915 = fbc->i915;
-- 
2.32.0

