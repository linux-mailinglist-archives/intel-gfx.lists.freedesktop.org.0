Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 854D96C7FD3
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 15:26:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD11810E534;
	Fri, 24 Mar 2023 14:26:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DA9210E534
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 14:26:01 +0000 (UTC)
Received: from mx0.riseup.net (mx0-pn.riseup.net [10.0.1.42])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256
 client-signature RSA-PSS (2048 bits) client-digest SHA256)
 (Client CN "mx0.riseup.net", Issuer "R3" (not verified))
 by mx1.riseup.net (Postfix) with ESMTPS id 4Pjkyk55G0zDrVg
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 14:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
 t=1679667961; bh=0aZYGMFA9MsV5s2n9ojDlQvwwNraYa8eq0U/8qjHObI=;
 h=From:To:Cc:Subject:Date:From;
 b=gRsOzJA1DJo6dUr3RE/Cq6cbsCrl/j/q18hykupe1ucpbO/YVI/sJUwwAi9jnHD7p
 QASfCht5TPrJA06aYHv+2/9aq2ioxPOoj1iP4QjL+ak+Ye3cOVJ+QhaENyvm7v4XRM
 68uKxWjl1Or8HoXOWFxsMdCfUBx1j13VC9iogqv8=
Received: from fews1.riseup.net (fews1-pn.riseup.net [10.0.1.83])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256
 client-signature RSA-PSS (2048 bits) client-digest SHA256)
 (Client CN "mail.riseup.net", Issuer "R3" (not verified))
 by mx0.riseup.net (Postfix) with ESMTPS id 4Pjkyk02ctz9sx6;
 Fri, 24 Mar 2023 14:25:49 +0000 (UTC)
X-Riseup-User-ID: 6474530C2DBFFB2176AFBA943F60B4E41054962F6EC0FF1CDBDFA39B49D443E2
Received: from [127.0.0.1] (localhost [127.0.0.1])
 by fews1.riseup.net (Postfix) with ESMTPSA id 4Pjkyc05Prz5vZh;
 Fri, 24 Mar 2023 14:25:43 +0000 (UTC)
From: Arthur Grillo <arthurgrillo@riseup.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 24 Mar 2023 11:25:33 -0300
Message-Id: <20230324142533.6357-1-arthurgrillo@riseup.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/overlay: Remove redundant
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
 drivers/gpu/drm/i915/display/intel_overlay.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
index c12bdca8da9b..444d88f418c5 100644
--- a/drivers/gpu/drm/i915/display/intel_overlay.c
+++ b/drivers/gpu/drm/i915/display/intel_overlay.c
@@ -966,9 +966,8 @@ static int check_overlay_dst(struct intel_overlay *overlay,
 		      rec->dst_width, rec->dst_height);
 
 	clipped = req;
-	drm_rect_intersect(&clipped, &crtc_state->pipe_src);
 
-	if (!drm_rect_visible(&clipped) ||
+	if (!drm_rect_intersect(&clipped, &crtc_state->pipe_src) ||
 	    !drm_rect_equals(&clipped, &req))
 		return -EINVAL;
 
-- 
2.39.2

