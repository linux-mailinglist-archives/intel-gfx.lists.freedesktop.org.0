Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0FD1641BC
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:23:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C1396EB37;
	Wed, 19 Feb 2020 10:22:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 985C06EB5E
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:22:14 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id a9so6140605wmj.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:22:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9HvFBn5C1ybJ3Jl6cvECGju7iOD2DUuUpqtaZAjKhPo=;
 b=PJzH6ke5ACy+gnyH1H0O/EOH30mw1GGgrDUmk5BBrZ/PUN2lMzraTEUZ80YFeUJy4i
 BT0R8EBhS9ae4DJVQVeEUw4g7yETEV2yMkMheO3s0PZmlK2E8r1Rt8aaMMGH+iMrxZ2+
 6Km7jEfY3B17urqmHlHLEOm/FfWvNqws8o+K8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9HvFBn5C1ybJ3Jl6cvECGju7iOD2DUuUpqtaZAjKhPo=;
 b=Iu6kZGAY1NEkzGyeQ9APb30Z53I10P97R2pJ29RJq8aziaDtjeXZ18lzYNvJnW4LUf
 Gpkjw78I6SW3PiVQ2tmYqO0GTw8l7BxMXMTBeqrbCG6B8Gk30VyWc+BQ0byTkO1/czhq
 Y4hTgDLP0iWiv2ES9CTu6gMvdbhl3dE5XetBE4LhF3b8xskMVyRwFyTL3O6lw4hOZmLf
 5YyGSjPTELInrhl7tJojO6KLBnabiSOp9CHTdoH3bc8hSKLwJiyZ50GolhNhYvl9AjyE
 98wMDBJlYMsmQOxUUnIwIOsx3eakp5pItCrFNDhTgAq7kVNF7dwU+BxAh/o73ZQtihLH
 gjpg==
X-Gm-Message-State: APjAAAUs9iNL7okgjKWVRqvShujennnJ7XtXR2HbBV9VV6h29fl1t+ul
 OXiEQRAClWyHrKesWT9AilzqRwPD9dc=
X-Google-Smtp-Source: APXvYqwwkb8pYBRO6k0sbQ0TfL7rK6fN22BCq0dEtf+gNB0N9I1n8/PTpRHwumXVfIV0/n6efkAHzg==
X-Received: by 2002:a1c:4905:: with SMTP id w5mr4798090wma.129.1582107733246; 
 Wed, 19 Feb 2020 02:22:13 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.22.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:22:12 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 11:21:05 +0100
Message-Id: <20200219102122.1607365-36-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 35/52] drm/meson: Drop explicit
 drm_mode_config_cleanup call
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Kevin Hilman <khilman@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's right above the drm_dev_put().

Aside: This driver gets its devm_ stuff all wrong wrt drm_device and
anything hanging off that. Not the only one unfortunately.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: Kevin Hilman <khilman@baylibre.com>
Cc: linux-amlogic@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/gpu/drm/meson/meson_drv.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_drv.c b/drivers/gpu/drm/meson/meson_drv.c
index b5f5eb7b4bb9..ae94d14ab7bc 100644
--- a/drivers/gpu/drm/meson/meson_drv.c
+++ b/drivers/gpu/drm/meson/meson_drv.c
@@ -284,7 +284,9 @@ static int meson_drv_bind_master(struct device *dev, bool has_components)
 	/* Remove early framebuffers (ie. simplefb) */
 	meson_remove_framebuffers();
 
-	drm_mode_config_init(drm);
+	ret = drm_mode_config_init(drm);
+	if (ret)
+		goto free_drm;
 	drm->mode_config.max_width = 3840;
 	drm->mode_config.max_height = 2160;
 	drm->mode_config.funcs = &meson_mode_config_funcs;
@@ -379,7 +381,6 @@ static void meson_drv_unbind(struct device *dev)
 	drm_dev_unregister(drm);
 	drm_irq_uninstall(drm);
 	drm_kms_helper_poll_fini(drm);
-	drm_mode_config_cleanup(drm);
 	drm_dev_put(drm);
 }
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
