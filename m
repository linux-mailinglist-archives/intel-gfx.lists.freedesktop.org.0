Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A796435DB9B
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 11:49:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88EB589BFE;
	Tue, 13 Apr 2021 09:49:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A885C89BAC
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 09:49:12 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 t5-20020a1c77050000b029010e62cea9deso8419628wmi.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 02:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CGUka0sVW6wFNgc+ztoFeb2OUOiG/y4ojkNNplTLBt0=;
 b=fTO0Jx2vcmvQdLCXa8mhtAyXJVZEw/1VEXCGgr6kv8NHXjtswWDbLwl6sGbwuihz5L
 R9Fmq4p4wiuGl6SHTg0UW14WvKyh4/kLpXFh6bBAW6fUG50BX+Q8Fe9UT7PVdn2Dt8pc
 3KhNvwFs40NEccqchivj/VRWro8cT6y+TYwOY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CGUka0sVW6wFNgc+ztoFeb2OUOiG/y4ojkNNplTLBt0=;
 b=TvD1kAqC5UiKn8HFv7PQ33IqRq7qL0VAdSouJfR8oMNEHsRxRc1daWbeLtDQBm5RTE
 pE/+hcnPcv+UwNnQwHccYSkx3pShNawEtLq6kecRZBZyhU4LZYmGqf4FABtPFbE22xko
 4/sPLB0Kzxj8cn8PvAoX8706/tAowYLA09iMQOz8Io4js4hmThsya2XVAqLgrsd5ApLP
 PMc2+J7S1pVhQnOr6bqz4qNGFJgKrvIQ3au1SUcuIdQ0v/+1TUZYz69renZ/seNZwbCw
 4l26hG/atJ6+U7T+Aiz+7QKA+VbhiQwjl9bdwyZh6kQFZMjFVnIGN26a/GxY5zvj+PwI
 QoMQ==
X-Gm-Message-State: AOAM533UY+ACS7gVeefUJBlm+HrcM+HdGZ9YQpuSoDoEd6Nr+ZigJFnZ
 LkudVql/Af7BP/oti11h3JQAdg==
X-Google-Smtp-Source: ABdhPJyDTagvp8Qr2MQeGN0Zbd+8hK2Pfwgv5a7NUG9u4fFQRmiEsT/K2Z4xwD3MJUyxJxiLf6KpmQ==
X-Received: by 2002:a1c:5454:: with SMTP id p20mr3305623wmi.187.1618307351369; 
 Tue, 13 Apr 2021 02:49:11 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 64sm1956458wmz.7.2021.04.13.02.49.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Apr 2021 02:49:10 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 13 Apr 2021 11:48:53 +0200
Message-Id: <20210413094904.3736372-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
References: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/12] drm/arm/malidp: Always list modifiers
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
