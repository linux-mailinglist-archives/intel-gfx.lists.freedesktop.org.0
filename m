Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FADA403709
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 11:38:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D42F6E170;
	Wed,  8 Sep 2021 09:38:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2720B6E16D
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 09:38:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="220492799"
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="220492799"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2021 02:38:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,277,1624345200"; d="scan'208";a="693170159"
Received: from amanna.iind.intel.com ([10.223.74.76])
 by fmsmga006.fm.intel.com with ESMTP; 08 Sep 2021 02:38:17 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: gwan-gyeong.mun@intel.com, mika.kahola@intel.com, jani.nikula@intel.com,
 manasi.d.navare@intel.com, Animesh Manna <animesh.manna@intel.com>
Date: Wed,  8 Sep 2021 14:45:40 +0530
Message-Id: <20210908091544.13772-2-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20210908091544.13772-1-animesh.manna@intel.com>
References: <20210908091544.13772-1-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 1/5] drm/i915/panelreplay: update plane selective
 fetch register definition
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

Panel replay can be enabled for all pipes driving DP 2.0 monitor,
so updated the plane selective fetch register difinition accordingly.

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c |  8 +++---
 drivers/gpu/drm/i915/i915_reg.h          | 32 +++++++++++++-----------
 2 files changed, 22 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 3f6fb7d67f84..5fa76b148f6d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1445,7 +1445,7 @@ void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
 
 	val = plane_state ? plane_state->ctl : 0;
 	val &= plane->id == PLANE_CURSOR ? val : PLANE_SEL_FETCH_CTL_ENABLE;
-	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), val);
+	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(dev_priv, pipe, plane->id), val);
 	if (!val || plane->id == PLANE_CURSOR)
 		return;
 
@@ -1453,19 +1453,19 @@ void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
 
 	val = (clip->y1 + plane_state->uapi.dst.y1) << 16;
 	val |= plane_state->uapi.dst.x1;
-	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_POS(pipe, plane->id), val);
+	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_POS(dev_priv, pipe, plane->id), val);
 
 	/* TODO: consider auxiliary surfaces */
 	x = plane_state->uapi.src.x1 >> 16;
 	y = (plane_state->uapi.src.y1 >> 16) + clip->y1;
 	val = y << 16 | x;
-	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_OFFSET(pipe, plane->id),
+	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_OFFSET(dev_priv, pipe, plane->id),
 			  val);
 
 	/* Sizes are 0 based */
 	val = (drm_rect_height(clip) - 1) << 16;
 	val |= (drm_rect_width(&plane_state->uapi.src) >> 16) - 1;
-	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_SIZE(pipe, plane->id), val);
+	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_SIZE(dev_priv, pipe, plane->id), val);
 }
 
 void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c2853cc005ee..5bc8f22fa9a8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7471,6 +7471,7 @@ enum {
 #define _SEL_FETCH_PLANE_BASE_7_A		0x70960
 #define _SEL_FETCH_PLANE_BASE_CUR_A		0x70880
 #define _SEL_FETCH_PLANE_BASE_1_B		0x70990
+#define _DG2_SEL_FETCH_PLANE_BASE_1_B		0x71890
 
 #define _SEL_FETCH_PLANE_BASE_A(plane) _PICK(plane, \
 					     _SEL_FETCH_PLANE_BASE_1_A, \
@@ -7481,31 +7482,34 @@ enum {
 					     _SEL_FETCH_PLANE_BASE_6_A, \
 					     _SEL_FETCH_PLANE_BASE_7_A, \
 					     _SEL_FETCH_PLANE_BASE_CUR_A)
-#define _SEL_FETCH_PLANE_BASE_1(pipe) _PIPE(pipe, _SEL_FETCH_PLANE_BASE_1_A, _SEL_FETCH_PLANE_BASE_1_B)
-#define _SEL_FETCH_PLANE_BASE(pipe, plane) (_SEL_FETCH_PLANE_BASE_1(pipe) - \
-					    _SEL_FETCH_PLANE_BASE_1_A + \
-					    _SEL_FETCH_PLANE_BASE_A(plane))
+#define _SEL_FETCH_PLANE_BASE_1(dev_priv, pipe) _PIPE(pipe, _SEL_FETCH_PLANE_BASE_1_A, \
+						      DISPLAY_VER(dev_priv) > 12 ? \
+						      _DG2_SEL_FETCH_PLANE_BASE_1_B : \
+						      _SEL_FETCH_PLANE_BASE_1_B)
+#define _SEL_FETCH_PLANE_BASE(dev_priv, pipe, plane) (_SEL_FETCH_PLANE_BASE_1(dev_priv, pipe) - \
+						      _SEL_FETCH_PLANE_BASE_1_A + \
+						      _SEL_FETCH_PLANE_BASE_A(plane))
 
 #define _SEL_FETCH_PLANE_CTL_1_A		0x70890
-#define PLANE_SEL_FETCH_CTL(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pipe, plane) + \
+#define PLANE_SEL_FETCH_CTL(dev_priv, pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(dev_priv, pipe, plane) + \
 					       _SEL_FETCH_PLANE_CTL_1_A - \
 					       _SEL_FETCH_PLANE_BASE_1_A)
 #define PLANE_SEL_FETCH_CTL_ENABLE		REG_BIT(31)
 
 #define _SEL_FETCH_PLANE_POS_1_A		0x70894
-#define PLANE_SEL_FETCH_POS(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pipe, plane) + \
-					       _SEL_FETCH_PLANE_POS_1_A - \
-					       _SEL_FETCH_PLANE_BASE_1_A)
+#define PLANE_SEL_FETCH_POS(dev_priv, pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(dev_priv, pipe, plane) + \
+							 _SEL_FETCH_PLANE_POS_1_A - \
+							 _SEL_FETCH_PLANE_BASE_1_A)
 
 #define _SEL_FETCH_PLANE_SIZE_1_A		0x70898
-#define PLANE_SEL_FETCH_SIZE(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pipe, plane) + \
-						_SEL_FETCH_PLANE_SIZE_1_A - \
-						_SEL_FETCH_PLANE_BASE_1_A)
+#define PLANE_SEL_FETCH_SIZE(dev_priv, pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(dev_priv, pipe, plane) + \
+							  _SEL_FETCH_PLANE_SIZE_1_A - \
+							  _SEL_FETCH_PLANE_BASE_1_A)
 
 #define _SEL_FETCH_PLANE_OFFSET_1_A		0x7089C
-#define PLANE_SEL_FETCH_OFFSET(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pipe, plane) + \
-						  _SEL_FETCH_PLANE_OFFSET_1_A - \
-						  _SEL_FETCH_PLANE_BASE_1_A)
+#define PLANE_SEL_FETCH_OFFSET(dev_priv, pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(dev_priv, pipe, plane) + \
+							    _SEL_FETCH_PLANE_OFFSET_1_A - \
+							    _SEL_FETCH_PLANE_BASE_1_A)
 
 /* SKL new cursor registers */
 #define _CUR_BUF_CFG_A				0x7017c
-- 
2.29.0

