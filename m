Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9B838C2BE
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 11:10:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 010136F5FD;
	Fri, 21 May 2021 09:10:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C1016F5F4
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 09:10:14 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id x8so20285495wrq.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 02:10:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0IxvNRVc+LGpbIknPl0xr2O/3EskS2QMDeH1i0DmrHg=;
 b=TFG+qYZM36tp1Y/rPsLcqCX35IGcRuULCaf4SuBpf7SF+mUQOJHckBPVHobgQu3QWu
 iIdU9qw35ykJ+Dx0+jShTZ8H9Qh9THlhVYh2PM4RLp/cy7AVjAmZ9TzzVJMUmE/wseLz
 NADCU4MEnJ+Me5eJXbg+K1mWs9q1wU707kCEs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0IxvNRVc+LGpbIknPl0xr2O/3EskS2QMDeH1i0DmrHg=;
 b=g2idJiCKve8EjL6ORT73xmuRrKeRZRvfop3BL0kdaaddKy5bfEpPVND8arkzIIWjsv
 F94YVyqFESHPcPgQccA3Ro2wQ7q+4tNL9e4KHbItwcQN4j5Txi52GNFtlnGUeAjDVZ+o
 AxwEs5/hfoKwaCRiAR1parPuCeN/j189gjfgPCgvZj39XeZm7+kUtCUTuajiHOekrPlU
 m133ibEq4ltXM16VgX3Aefq9C9qioy8G8qkkxlm5Rt/HwDYko+WdXR5ppEaeloFRRtdY
 +Vi3bfyKKqqBK6qXxcuh0JuEHeCEMxxvoLtOT+MDZ0bP2gCLNMx0kPC4294flMn2oEUk
 p7rg==
X-Gm-Message-State: AOAM533YJuODRH1YsncWHQtu74OBJ7I/k1pIAvn16MLG/B8xdhE60xm5
 D+MafTdn3S5nvtAxo50ZpZO3etOHfbyx+g==
X-Google-Smtp-Source: ABdhPJzdQGX8rWJt8LL9kvgecYf0bczlH0pl2E9kzO2PKjKxz8605nGW/DM30edgaYMala5YruUtZg==
X-Received: by 2002:adf:dc88:: with SMTP id r8mr8284458wrj.277.1621588213324; 
 Fri, 21 May 2021 02:10:13 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y2sm13589457wmq.45.2021.05.21.02.10.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 May 2021 02:10:12 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 May 2021 11:09:57 +0200
Message-Id: <20210521090959.1663703-9-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/11] drm/omap: Follow implicit fencing in
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Tomi Valkeinen <tomba@kernel.org>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I guess no one ever tried running omap together with lima or panfrost,
not even sure that's possible. Anyway for consistency, fix this.

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
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
