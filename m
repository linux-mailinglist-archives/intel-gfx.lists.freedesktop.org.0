Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9E03DC1CE
	for <lists+intel-gfx@lfdr.de>; Sat, 31 Jul 2021 02:05:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67AC66E4FF;
	Sat, 31 Jul 2021 00:05:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBBC76E4E8
 for <intel-gfx@lists.freedesktop.org>; Sat, 31 Jul 2021 00:05:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10061"; a="200358988"
X-IronPort-AV: E=Sophos;i="5.84,283,1620716400"; d="scan'208";a="200358988"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 17:05:50 -0700
X-IronPort-AV: E=Sophos;i="5.84,283,1620716400"; d="scan'208";a="477224113"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 17:05:49 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Fri, 30 Jul 2021 17:10:17 -0700
Message-Id: <20210731001019.150373-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210731001019.150373-1-jose.souza@intel.com>
References: <20210731001019.150373-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/display: Fix sel fetch plane
 offset calculation
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

skl_calc_main_surface_offset() is used to calculate an aligned plane
surface address considering the inner framebuffer x and y offset.
It can not be used by selective fetch functions becase there is no
PLANE_SEL_FETCH_SURF.
So the PLANE_SEL_FETCH_OFFSET.y should only be PLANE_OFFSET.y +
damaged_area_within_plane.y1.

This fixes glitches seen in fbcon caused by typing something in
the terminal.

BSpec: 55229
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index caf92f414a6e7..894a2d35668a2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1487,8 +1487,8 @@ void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum pipe pipe = plane->pipe;
 	const struct drm_rect *clip;
-	u32 val, offset;
-	int ret, x, y;
+	u32 val;
+	int x, y;
 
 	if (!crtc_state->enable_psr2_sel_fetch)
 		return;
@@ -1508,10 +1508,6 @@ void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
 	/* TODO: consider auxiliary surfaces */
 	x = plane_state->uapi.src.x1 >> 16;
 	y = (plane_state->uapi.src.y1 >> 16) + clip->y1;
-	ret = skl_calc_main_surface_offset(plane_state, &x, &y, &offset);
-	if (ret)
-		drm_warn_once(&dev_priv->drm, "skl_calc_main_surface_offset() returned %i\n",
-			      ret);
 	val = y << 16 | x;
 	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_OFFSET(pipe, plane->id),
 			  val);
-- 
2.32.0

