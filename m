Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 066CE5ACD65
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 10:05:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A847310E1FE;
	Mon,  5 Sep 2022 08:05:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C61F10E202
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 08:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662365121; x=1693901121;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TlJP7sQD9Se5PHcUkmzSu7VCiroL97RFVYLIyffKaKY=;
 b=SQKSqbSZc4Y+h3UmCN7NcHA/s2ffmezmYFneGUOfNI+vB96QwV/efDrt
 N3in0v1WlGmi8c7J7yunUbtsmD8qf0qznUmlkD+yDErZiVx5RLq3bFB1o
 3dj7SnFDVnNcnr6mGccts6BrfaltZDJQDINAXyvwyDx3ukty3dXwmEgtx
 W6P6N6cQxeGLjdAiKgAdARLuvmjmOcF1vwnRLpMz6dMxodNw6XM5ek1TX
 BE69M4l8MoaR9hjgxLOjLaFDmyxMJZT5NS4qITx5e6UoPymsSbCDGsbvn
 R/OsgOOQGngUAP/1cVI0Gi8u6CiDpQCdMcq0HNl908H5LYQazKioYKtXz g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10460"; a="296338161"
X-IronPort-AV: E=Sophos;i="5.93,290,1654585200"; d="scan'208";a="296338161"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 01:05:20 -0700
X-IronPort-AV: E=Sophos;i="5.93,290,1654585200"; d="scan'208";a="590826878"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 01:05:19 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Sep 2022 10:05:00 +0200
Message-Id: <20220905080500.213330-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: do not reset PLANE_SURF on plane
 disable on older gens
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In case of ICL and older generations disabling plane and/or disabling
async update is always performed on vblank, but if async update is enabled
PLANE_SURF register is updated asynchronously. Writing 0 to PLANE_SURF
when plane is still enabled can cause DMAR/PIPE errors.
On the other side PLANE_SURF is used to arm plane registers - we need to
write to it to trigger update on VBLANK, writting current value should
be safe - the buffer address is valid till vblank.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index bcfde81e4d0866..bc9ed60a2d349e 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -615,11 +615,13 @@ skl_plane_disable_arm(struct intel_plane *plane,
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
+	u32 plane_surf;
 
 	skl_write_plane_wm(plane, crtc_state);
 
 	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
-	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
+	plane_surf = intel_de_read_fw(dev_priv, PLANE_SURF(pipe, plane_id));
+	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), plane_surf);
 }
 
 static void
@@ -629,6 +631,7 @@ icl_plane_disable_arm(struct intel_plane *plane,
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum plane_id plane_id = plane->id;
 	enum pipe pipe = plane->pipe;
+	u32 plane_surf;
 
 	if (icl_is_hdr_plane(dev_priv, plane_id))
 		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id), 0);
@@ -637,7 +640,8 @@ icl_plane_disable_arm(struct intel_plane *plane,
 
 	intel_psr2_disable_plane_sel_fetch(plane, crtc_state);
 	intel_de_write_fw(dev_priv, PLANE_CTL(pipe, plane_id), 0);
-	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), 0);
+	plane_surf = intel_de_read_fw(dev_priv, PLANE_SURF(pipe, plane_id));
+	intel_de_write_fw(dev_priv, PLANE_SURF(pipe, plane_id), plane_surf);
 }
 
 static bool
-- 
2.25.1

