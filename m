Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0BF43B6B8
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Oct 2021 18:16:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FD5789FCC;
	Tue, 26 Oct 2021 16:16:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E5C889FCC
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 16:16:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="290789944"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="290789944"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 09:15:22 -0700
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="486254877"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 09:15:21 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Date: Tue, 26 Oct 2021 19:15:15 +0300
Message-Id: <20211026161517.2694067-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211026161517.2694067-1-imre.deak@intel.com>
References: <20211026161517.2694067-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/fb: Don't report MC CCS plane
 capability on GEN<12
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

Remove the MC CCS plane capability on GEN<12, since it's not present
there. This didn't cause a problem, since the display version check
filtered out the MC CCS modifiers before GEN12.

Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 69fd56de83a7a..8fa0ae89e5b3d 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2001,6 +2001,9 @@ static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
 static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
 				   enum plane_id plane_id)
 {
+	if (DISPLAY_VER(i915) < 12)
+		return false;
+
 	/* Wa_14010477008:tgl[a0..c0],rkl[all],dg1[all] */
 	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
 	    IS_TGL_DISPLAY_STEP(i915, STEP_A0, STEP_D0))
-- 
2.27.0

