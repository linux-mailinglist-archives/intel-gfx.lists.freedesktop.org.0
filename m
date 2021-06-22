Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 080C13B0AE5
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 18:55:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FAB36E824;
	Tue, 22 Jun 2021 16:55:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59EDF6E81B
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 16:55:31 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 j21-20020a05600c1c15b02901dde2accccbso2705578wms.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 09:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NKD9tkE/mrsEb6PthLinYJN7sw0yB82OVNKUbf7MxzU=;
 b=etezmXKOTAT91LSDN9NQlGSp+nnz3ZihR8JZMAUl0FwNY7aUqwzuRqRUMKcr2u39Kq
 BTJ3qRCRkRAVd8mpv5C/HB61Dygyxrhp7gwep2CX20cnmguckBTg/RuoS1fHGWsFzWRT
 7KBdQysj5Oayxiw8HRzapJXDR7tQyb57XGTzY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NKD9tkE/mrsEb6PthLinYJN7sw0yB82OVNKUbf7MxzU=;
 b=qBbUkr8WKKlpU1skCNrOjFnd8zmA0w+c3YUcVEpuJJNZMvrsE1HvlkYR6t+dOwG3I8
 b8h+TxmODp/JSNXVVOHfmsNhbQ3YYWzfgIUB6zOV6qOrp6Kx070F9RzYHMSCyGEfKi7L
 vTPhuO0kXCpWGDcCaa7DThdHqdwVkRez7Fu5XsFCHYWAqDk97nT08r/7tGZcJ/XekBNR
 NPzfYAGomJf1by7Szoh0PBf9U32It2LbORaD9A3cDD1oslSxpJfC85TiEu8govdWK9tz
 Do6+LWlHp3gGLGT+9clyC+2p2RXfxCwktf7jMjY3Br+03jyeAKJGXSu6RZF028G2PE0B
 mL5g==
X-Gm-Message-State: AOAM531gzETjc9so36CebBKO6CKhrLXaBsmznq5Os+uMCZYlxaBlhbHw
 5FXM/u240X3ZaiQdUbMnpnGOVA==
X-Google-Smtp-Source: ABdhPJzAn7H8R5b+AEBacoE9kgfVxiiODlz9p0b6WiBhcHVTxMp6l1wiSzxthZw6lJJY+TfxK25MkA==
X-Received: by 2002:a7b:ce8e:: with SMTP id q14mr5438382wmj.33.1624380929556; 
 Tue, 22 Jun 2021 09:55:29 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l23sm3632342wmc.5.2021.06.22.09.55.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jun 2021 09:55:29 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 22 Jun 2021 18:55:07 +0200
Message-Id: <20210622165511.3169559-12-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0.rc2
In-Reply-To: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
References: <20210622165511.3169559-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/15] drm/omap: Follow implicit fencing in
 prepare_fb
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Tomi Valkeinen <tomba@kernel.org>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I guess no one ever tried running omap together with lima or panfrost,
not even sure that's possible. Anyway for consistency, fix this.

Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Tomi Valkeinen <tomba@kernel.org>
---
 drivers/gpu/drm/omapdrm/omap_plane.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/omapdrm/omap_plane.c b/drivers/gpu/drm/omapdrm/omap_plane.c
index 801da917507d..512af976b7e9 100644
--- a/drivers/gpu/drm/omapdrm/omap_plane.c
+++ b/drivers/gpu/drm/omapdrm/omap_plane.c
@@ -6,6 +6,7 @@
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
+#include <drm/drm_gem_atomic_helper.h>
 #include <drm/drm_plane_helper.h>
 
 #include "omap_dmm_tiler.h"
@@ -29,6 +30,8 @@ static int omap_plane_prepare_fb(struct drm_plane *plane,
 	if (!new_state->fb)
 		return 0;
 
+	drm_gem_plane_helper_prepare_fb(plane, new_state);
+
 	return omap_framebuffer_pin(new_state->fb);
 }
 
-- 
2.32.0.rc2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
