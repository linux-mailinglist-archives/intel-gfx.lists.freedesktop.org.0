Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7770246519B
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 16:27:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A69836ECE0;
	Wed,  1 Dec 2021 15:26:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A86096ED1E
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 15:26:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="236706246"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="236706246"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 07:26:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="460066475"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 01 Dec 2021 07:26:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Dec 2021 17:26:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Dec 2021 17:25:43 +0200
Message-Id: <20211201152552.7821-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/14] drm/i915: Rename PLANE_CUS_CTL Y plane
 bits
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

Rename the PLANE_CUS_CTL Y plane selection bits to actually
say "Y plane".

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 8 ++++----
 drivers/gpu/drm/i915/i915_reg.h              | 8 ++++----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index badf035efaeb..726c1552c9bf 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5159,13 +5159,13 @@ static int icl_check_nv12_planes(struct intel_crtc_state *crtc_state)
 
 		if (icl_is_hdr_plane(dev_priv, plane->id)) {
 			if (linked->id == PLANE_SPRITE5)
-				plane_state->cus_ctl |= PLANE_CUS_PLANE_7;
+				plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_7_ICL;
 			else if (linked->id == PLANE_SPRITE4)
-				plane_state->cus_ctl |= PLANE_CUS_PLANE_6;
+				plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_6_ICL;
 			else if (linked->id == PLANE_SPRITE3)
-				plane_state->cus_ctl |= PLANE_CUS_PLANE_5_RKL;
+				plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_5_RKL;
 			else if (linked->id == PLANE_SPRITE2)
-				plane_state->cus_ctl |= PLANE_CUS_PLANE_4_RKL;
+				plane_state->cus_ctl |= PLANE_CUS_Y_PLANE_4_RKL;
 			else
 				MISSING_CASE(linked->id);
 		}
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 6066b1e2763c..4b2bc17d0235 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7328,10 +7328,10 @@ enum {
 #define _PLANE_CUS_CTL_1_A			0x701c8
 #define _PLANE_CUS_CTL_2_A			0x702c8
 #define  PLANE_CUS_ENABLE			(1 << 31)
-#define  PLANE_CUS_PLANE_4_RKL			(0 << 30)
-#define  PLANE_CUS_PLANE_5_RKL			(1 << 30)
-#define  PLANE_CUS_PLANE_6			(0 << 30)
-#define  PLANE_CUS_PLANE_7			(1 << 30)
+#define  PLANE_CUS_Y_PLANE_4_RKL		(0 << 30)
+#define  PLANE_CUS_Y_PLANE_5_RKL		(1 << 30)
+#define  PLANE_CUS_Y_PLANE_6_ICL		(0 << 30)
+#define  PLANE_CUS_Y_PLANE_7_ICL		(1 << 30)
 #define  PLANE_CUS_HPHASE_SIGN_NEGATIVE		(1 << 19)
 #define  PLANE_CUS_HPHASE_0			(0 << 16)
 #define  PLANE_CUS_HPHASE_0_25			(1 << 16)
-- 
2.32.0

