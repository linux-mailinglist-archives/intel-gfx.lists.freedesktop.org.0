Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F816C8FBF
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Mar 2023 18:28:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FE5410E053;
	Sat, 25 Mar 2023 17:28:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A82D310E053;
 Sat, 25 Mar 2023 17:28:53 +0000 (UTC)
Received: from fews2.riseup.net (fews2-pn.riseup.net [10.0.1.84])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256
 client-signature RSA-PSS (2048 bits) client-digest SHA256)
 (Client CN "mail.riseup.net", Issuer "R3" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 4PkQzS5ZSWzDr1r;
 Sat, 25 Mar 2023 17:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1679765333; bh=a7cIYAiwZ09xv6n94pofKkkL5zxjN5XJBatIhLW6cRc=;
 h=From:To:Cc:Subject:Date:From;
 b=d5N8tsNnjnTtU9HBR0Wnb0R+5QEgiZCA8ZTjelbrukNLlIL8LZqPH83C6TCyPhoaX
 foZFQ63+RKO0QpbvXzH9U7LHT1LiIWbhUCUrPQ4G0FsMdtzKQNHRoHGEG69lGatWWI
 UjVXvQOP+U6oqpyNWQYdXjOowp4g6Iddw8c3vLR8=
X-Riseup-User-ID: DFFDE329F4163AA6BE3EDC0BB6655159F995F415CFE1D37105CFD61B346B7E09
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by fews2.riseup.net (Postfix) with ESMTPSA id 4PkQzM3knxz1yPW;
 Sat, 25 Mar 2023 17:28:47 +0000 (UTC)
From: Arthur Grillo <arthurgrillo@riseup.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Sat, 25 Mar 2023 14:27:19 -0300
Message-Id: <20230325172719.92102-1-arthurgrillo@riseup.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/overlay: Remove redundant
 drm_rect_visible() use
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
Cc: tales.aparecida@gmail.com, lucas.demarchi@intel.com, mairacanal@riseup.net,
 daniel@ffwll.ch, rodrigo.vivi@intel.com, andrealmeid@riseup.net,
 airlied@gmail.com, Arthur Grillo <arthurgrillo@riseup.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The drm_rect_intersect() already returns if the intersection is visible
or not, so the use of drm_rect_visible() is duplicate.

Signed-off-by: Arthur Grillo <arthurgrillo@riseup.net>
---
v1->v2: https://lore.kernel.org/all/20230324142533.6357-1-arthurgrillo@riseup.net/
- Split the if condition.
---
 drivers/gpu/drm/i915/display/intel_overlay.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index c12bdca8da9b..d55153587cae 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -966,10 +966,11 @@ static int check_overlay_dst(struct intel_overlay *overlay,
 		      rec->dst_width, rec->dst_height);
 
 	clipped = req;
-	drm_rect_intersect(&clipped, &crtc_state->pipe_src);
 
-	if (!drm_rect_visible(&clipped) ||
-	    !drm_rect_equals(&clipped, &req))
+	if (!drm_rect_intersect(&clipped, &crtc_state->pipe_src))
+		return -EINVAL;
+
+	if (!drm_rect_equals(&clipped, &req))
 		return -EINVAL;
 
 	return 0;
-- 
2.39.2

