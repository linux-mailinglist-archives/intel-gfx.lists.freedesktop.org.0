Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2F836C191
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 11:20:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D70D76E929;
	Tue, 27 Apr 2021 09:20:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2CAE6E927
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 09:20:26 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id l2so6356547wrm.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 02:20:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CGUka0sVW6wFNgc+ztoFeb2OUOiG/y4ojkNNplTLBt0=;
 b=lHcSeuO8JXlioU0SoJkhNjeUMSk697hQ5zjRlICZIdlcoCD+gtNxmqtsqVaoejeIqF
 JVkbZ4vwo0H7UnWI6b/SRN11ITJY5qZrNUtNBWPwhSqHZ0aDzFYt65GC1/dJLw4AR9d5
 kPi4sCxP4h02OO5vhQbXsNHkUWX1w1OD5rfsM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CGUka0sVW6wFNgc+ztoFeb2OUOiG/y4ojkNNplTLBt0=;
 b=sRQoOJK4I3tq7y5V4tkio2yAZHsw3gywfEQUHT1xSwIKAj1dgvQcu/oabVa6nyyAtQ
 LeYPmCVLpYu/wEn/kOQqQ9sRpP9rZEWBl7QEmWlDucVdMubtLuADatdVLXXkS44xQeRW
 v6N+2nSXCQ/Pzfbqz0GvfhWUqV3S7UR/qpHaXLCIpJfbHin+bCQvlW52TXNuciVsrQsl
 RRG6q2BJ96ojjXD89CP1Pc4lUTVJVY6ppf6/73Df5i/MmIzEDskh6VdB2xV7b7ZIhTF+
 5cFsXvFjyoWGvkI3GryVNaqI4U2GmjQYTfK32DDg2rNvzdcK+3OEgT6FjXn/4pXvYrZv
 yKTA==
X-Gm-Message-State: AOAM531Ca3gJuVFlvsBytchkXKaf1/uBJJEy+9j1OdpjcraRA1Grhjcy
 Bih5t0tnhcdZc5HFp5odXWxNvg==
X-Google-Smtp-Source: ABdhPJzvyNyHijFaOxhyQ5XBzpoVz9wyxCqtYwON0mcdqndBwfa9nQPuaqV5R5FcJKMQq7TH0Bmpog==
X-Received: by 2002:a5d:444d:: with SMTP id x13mr28571123wrr.406.1619515225336; 
 Tue, 27 Apr 2021 02:20:25 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r24sm1939816wmh.8.2021.04.27.02.20.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Apr 2021 02:20:24 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 27 Apr 2021 11:20:12 +0200
Message-Id: <20210427092018.832258-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210427092018.832258-1-daniel.vetter@ffwll.ch>
References: <20210427092018.832258-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/8] drm/arm/malidp: Always list modifiers
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
Cc: Pekka Paalanen <pekka.paalanen@collabora.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 stable@vger.kernel.org, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Even when all we support is linear, make that explicit. Otherwise the
uapi is rather confusing.

Cc: stable@vger.kernel.org
Cc: Pekka Paalanen <pekka.paalanen@collabora.com>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Brian Starkey <brian.starkey@arm.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/arm/malidp_planes.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/arm/malidp_planes.c b/drivers/gpu/drm/arm/malidp_planes.c
index ddbba67f0283..8c2ab3d653b7 100644
--- a/drivers/gpu/drm/arm/malidp_planes.c
+++ b/drivers/gpu/drm/arm/malidp_planes.c
@@ -927,6 +927,11 @@ static const struct drm_plane_helper_funcs malidp_de_plane_helper_funcs = {
 	.atomic_disable = malidp_de_plane_disable,
 };
 
+static const uint64_t linear_only_modifiers[] = {
+	DRM_FORMAT_MOD_LINEAR,
+	DRM_FORMAT_MOD_INVALID
+};
+
 int malidp_de_planes_init(struct drm_device *drm)
 {
 	struct malidp_drm *malidp = drm->dev_private;
@@ -990,8 +995,8 @@ int malidp_de_planes_init(struct drm_device *drm)
 		 */
 		ret = drm_universal_plane_init(drm, &plane->base, crtcs,
 				&malidp_de_plane_funcs, formats, n,
-				(id == DE_SMART) ? NULL : modifiers, plane_type,
-				NULL);
+				(id == DE_SMART) ? linear_only_modifiers : modifiers,
+				plane_type, NULL);
 
 		if (ret < 0)
 			goto cleanup;
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
