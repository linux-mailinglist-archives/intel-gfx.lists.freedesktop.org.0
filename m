Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DB33D7049
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 09:19:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 178B2733BE;
	Tue, 27 Jul 2021 07:19:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CCED6EB22
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jul 2021 07:19:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="191982342"
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="191982342"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 00:19:03 -0700
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="505378901"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2021 00:19:03 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Jul 2021 00:18:32 -0700
Message-Id: <20210727071845.841554-15-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210727071845.841554-1-lucas.demarchi@intel.com>
References: <20210727071845.841554-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 15/28] drm/i915/display: rename CNL references in
 skl_scaler.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With the removal of CNL, let's consider GLK as the first platform using
those constants since GLK has DISPLAY_VER == 10.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 10 +++++-----
 drivers/gpu/drm/i915/i915_reg.h           |  4 ++--
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 911a113ee006..ebdd3115de16 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -341,12 +341,12 @@ static u16 cnl_nearest_filter_coef(int t)
  *
  */
 
-static void cnl_program_nearest_filter_coefs(struct drm_i915_private *dev_priv,
+static void glk_program_nearest_filter_coefs(struct drm_i915_private *dev_priv,
 					     enum pipe pipe, int id, int set)
 {
 	int i;
 
-	intel_de_write_fw(dev_priv, CNL_PS_COEF_INDEX_SET(pipe, id, set),
+	intel_de_write_fw(dev_priv, GLK_PS_COEF_INDEX_SET(pipe, id, set),
 			  PS_COEE_INDEX_AUTO_INC);
 
 	for (i = 0; i < 17 * 7; i += 2) {
@@ -359,11 +359,11 @@ static void cnl_program_nearest_filter_coefs(struct drm_i915_private *dev_priv,
 		t = cnl_coef_tap(i + 1);
 		tmp |= cnl_nearest_filter_coef(t) << 16;
 
-		intel_de_write_fw(dev_priv, CNL_PS_COEF_DATA_SET(pipe, id, set),
+		intel_de_write_fw(dev_priv, GLK_PS_COEF_DATA_SET(pipe, id, set),
 				  tmp);
 	}
 
-	intel_de_write_fw(dev_priv, CNL_PS_COEF_INDEX_SET(pipe, id, set), 0);
+	intel_de_write_fw(dev_priv, GLK_PS_COEF_INDEX_SET(pipe, id, set), 0);
 }
 
 static u32 skl_scaler_get_filter_select(enum drm_scaling_filter filter, int set)
@@ -386,7 +386,7 @@ static void skl_scaler_setup_filter(struct drm_i915_private *dev_priv, enum pipe
 	case DRM_SCALING_FILTER_DEFAULT:
 		break;
 	case DRM_SCALING_FILTER_NEAREST_NEIGHBOR:
-		cnl_program_nearest_filter_coefs(dev_priv, pipe, id, set);
+		glk_program_nearest_filter_coefs(dev_priv, pipe, id, set);
 		break;
 	default:
 		MISSING_CASE(filter);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a7f21ae19733..9f62ecb72c2c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7749,11 +7749,11 @@ enum {
 #define SKL_PS_ECC_STAT(pipe, id)  _MMIO_PIPE(pipe,     \
 			_ID(id, _PS_ECC_STAT_1A, _PS_ECC_STAT_2A),   \
 			_ID(id, _PS_ECC_STAT_1B, _PS_ECC_STAT_2B))
-#define CNL_PS_COEF_INDEX_SET(pipe, id, set)  _MMIO_PIPE(pipe,    \
+#define GLK_PS_COEF_INDEX_SET(pipe, id, set)  _MMIO_PIPE(pipe,    \
 			_ID(id, _PS_COEF_SET0_INDEX_1A, _PS_COEF_SET0_INDEX_2A) + (set) * 8, \
 			_ID(id, _PS_COEF_SET0_INDEX_1B, _PS_COEF_SET0_INDEX_2B) + (set) * 8)
 
-#define CNL_PS_COEF_DATA_SET(pipe, id, set)  _MMIO_PIPE(pipe,     \
+#define GLK_PS_COEF_DATA_SET(pipe, id, set)  _MMIO_PIPE(pipe,     \
 			_ID(id, _PS_COEF_SET0_DATA_1A, _PS_COEF_SET0_DATA_2A) + (set) * 8, \
 			_ID(id, _PS_COEF_SET0_DATA_1B, _PS_COEF_SET0_DATA_2B) + (set) * 8)
 /* legacy palette */
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
