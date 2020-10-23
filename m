Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7774296ED9
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 14:24:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB8A86E5C3;
	Fri, 23 Oct 2020 12:22:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D81B56E5A5
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 12:22:53 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id y12so1579079wrp.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 05:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lv9iWimFOIGDRW4jGGjVyXNYdiUYfLpQCq4yXKzlM3Y=;
 b=J13iDv9v54dIwMzbh/MuNDh+Zp/4YqjJp0rkrkG98/nK1P+p/gDP2TEtzeggqntesC
 U1WOWEuQZFl4O3W9v0ew2NanBpZzNvQHusSumq38mFs8Y4Fb7RPQ5JQDppdtV0zc8pIO
 MUx3JFQ04hL0G4AoJjPnAnOvL57ZGIMLUUS8I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lv9iWimFOIGDRW4jGGjVyXNYdiUYfLpQCq4yXKzlM3Y=;
 b=Oy/zJR8Puawk6/LZ3Z0Y+CMD96CEd0cPm4ERnNOeDpH5wCEBdNABR3BED+45NtMLgS
 mByJ0l8RmZKiMoktNyO0NzEXhZuWMQNQ11zlF4pyXdG7boqwnvReP3lnVtrV4bGJkc/6
 BdcQ7JZ7otZiEYJf/5oh4E0TVVU/PrMlp3KeOye7qK8BhZMLmfwFyhH1ZJ1ztOSUQRHq
 fo4lGqDh5Hy9qRm1ZbiNZ9UGAN9wL8htCjGQLx2iBVPoGTePv2GgcxPOUjpiHU4I3aVe
 ebzXxSSh2kqWGR2N/z90w81hqJ2cqQhtTzWf/ScYqTRShnJKBHURTcfBgkV/1llHcfIe
 M+SA==
X-Gm-Message-State: AOAM53051bOBli06LnCuacIpI6rX5B93Zrsd7quKXWIn4mV6GeW0L0H0
 +7LNfKjvlddksCQ/wjfz7hyAoYtAjFK1SkWY
X-Google-Smtp-Source: ABdhPJxFv1wOmoOA2eJ4PnscSORJp//ItclSTMxFgw9LbqTDP/utYU+s+sJ8ToPR+S83pVmwGQ93LQ==
X-Received: by 2002:adf:dfc7:: with SMTP id q7mr2272630wrn.382.1603455772550; 
 Fri, 23 Oct 2020 05:22:52 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y4sm3056484wrp.74.2020.10.23.05.22.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 05:22:52 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Oct 2020 14:21:38 +0200
Message-Id: <20201023122216.2373294-27-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 27/65] drm/vmwgfx: Always evict vram _before_
 disabling it
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Other way round is a bit inconsistent (but not buggy in any kind).
This is prep work so that ttm_resource_manager_set_used can assert
that the resource manager is empty.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/vmwgfx/vmwgfx_drv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_drv.c b/drivers/gpu/drm/vmwgfx/vmwgfx_drv.c
index 6ecdd1df311b..68206d0a1237 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_drv.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_drv.c
@@ -1255,9 +1255,9 @@ void vmw_svga_disable(struct vmw_private *dev_priv)
 	vmw_kms_lost_device(dev_priv->dev);
 	ttm_write_lock(&dev_priv->reservation_sem, false);
 	if (ttm_resource_manager_used(man)) {
-		ttm_resource_manager_set_used(man, false);
 		if (ttm_resource_manager_evict_all(&dev_priv->bdev, man))
 			DRM_ERROR("Failed evicting VRAM buffers.\n");
+		ttm_resource_manager_set_used(man, false);
 		vmw_write(dev_priv, SVGA_REG_ENABLE,
 			  SVGA_REG_ENABLE_HIDE |
 			  SVGA_REG_ENABLE_ENABLE);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
