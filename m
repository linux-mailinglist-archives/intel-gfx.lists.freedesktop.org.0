Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 93475296EA9
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 14:23:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D33E6E558;
	Fri, 23 Oct 2020 12:22:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B70E76E528
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 12:22:41 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id v5so1235539wmh.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 05:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K6XeM/Ew6hbu/TmcnUXSsOfom77SnJ8dy6oN4nERL2I=;
 b=Z+R0iewNM214pFWkbIbN2yiZjD3o8xLoJeTqtDy7oL0Sp5wMCkSk/gSlvKtjX0d4/Y
 kt1wKpgE9w4MW3gnyfra6BE58DAqnnLTyXxLUQiyJdYSG9klqAtNX0AC+OuGS0N46h1S
 wMDaSxz1pzk2tRKscc9k6cTNpt+6bztRQYiq8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K6XeM/Ew6hbu/TmcnUXSsOfom77SnJ8dy6oN4nERL2I=;
 b=oPmeiz7VHzS3aw/1mPBYFV3hF036p827L8XCpVlT6EhkG3tByqJ9OSvqQ8NMzFPn7x
 OHe2iM1PVwPFL8hljV1fJnmz4B4FST4BuZnDv/L7dP17r5TMo23sBYwY9bMulVIGB3f0
 9ryzpCAmtsopGwbamuG9DlThgAe66XIAJP0BUqWxztozIxuDR/AJmtMJmS5J/1vRPkPY
 CoYLIQfHTgxeVaB0aqQQeRBhxGSFc+elGW1vFfgK6Jlk9cfk4gF9se6RbUd/vvOOuBVi
 pt1kPQb9D6mOZW2SdNvUjlYi2a9XQOxndqrRpYIlVMngL8bii74AOq+eSHdtz6brU2HN
 938Q==
X-Gm-Message-State: AOAM5330Dfp4lcT69kxAqxnej9ZCf+xq5o0asi6bcjINh/qPyN5j0JCv
 WYOb7AiqJCnd9qSTboRzezLTcQ==
X-Google-Smtp-Source: ABdhPJz/ZNfcgSbs/Q66hZZqnzMzMZA5UabECGLLhOLOmJyuFxJwvtnRB/JJNauzc6bkb0ut8Q+y2g==
X-Received: by 2002:a1c:ab55:: with SMTP id u82mr2196701wme.152.1603455760522; 
 Fri, 23 Oct 2020 05:22:40 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y4sm3056484wrp.74.2020.10.23.05.22.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 05:22:39 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Oct 2020 14:21:27 +0200
Message-Id: <20201023122216.2373294-16-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/65] drm/tidss: Annotate dma-fence critical
 section in commit path
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
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Jyri Sarha <jsarha@ti.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ends right after hw_done(), totally standard case.

Acked-by: Jyri Sarha <jsarha@ti.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Jyri Sarha <jsarha@ti.com>
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
---
 drivers/gpu/drm/tidss/tidss_kms.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/tidss/tidss_kms.c b/drivers/gpu/drm/tidss/tidss_kms.c
index 09485c7f0d6f..95f8e0f78e32 100644
--- a/drivers/gpu/drm/tidss/tidss_kms.c
+++ b/drivers/gpu/drm/tidss/tidss_kms.c
@@ -4,6 +4,8 @@
  * Author: Tomi Valkeinen <tomi.valkeinen@ti.com>
  */
 
+#include <linux/dma-fence.h>
+
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
@@ -26,6 +28,7 @@ static void tidss_atomic_commit_tail(struct drm_atomic_state *old_state)
 {
 	struct drm_device *ddev = old_state->dev;
 	struct tidss_device *tidss = to_tidss(ddev);
+	bool fence_cookie = dma_fence_begin_signalling();
 
 	dev_dbg(ddev->dev, "%s\n", __func__);
 
@@ -36,6 +39,7 @@ static void tidss_atomic_commit_tail(struct drm_atomic_state *old_state)
 	drm_atomic_helper_commit_modeset_enables(ddev, old_state);
 
 	drm_atomic_helper_commit_hw_done(old_state);
+	dma_fence_end_signalling(fence_cookie);
 	drm_atomic_helper_wait_for_flip_done(ddev, old_state);
 
 	drm_atomic_helper_cleanup_planes(ddev, old_state);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
