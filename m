Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5BA172655
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:15:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61ECB6EC86;
	Thu, 27 Feb 2020 18:15:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF2F46EC86
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 18:15:44 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id c13so4604283wrq.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 10:15:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bRN0Ui5XqXN6WR6xH13puNc6QlAOJCfKGqyHvTJoDZw=;
 b=XkVFjRt/hUcUKrwl6FeIYixEodqeHIXOjqmqyURpdugMFnV7VzjT5khoP+ms7YSh26
 fBl/LdBPoIyJcNwfc4mLyZU/JrvW3ViLhyFq8RVLNrEcdxhOFQByixIDMag53qHKRJPj
 voSDi2qcZjA+w59tp7nK5Yog/qEcMPjud7ORY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bRN0Ui5XqXN6WR6xH13puNc6QlAOJCfKGqyHvTJoDZw=;
 b=K8IAx2axh90rhRk9z+aGcRB5KM3zG69S4VB3QbRMHaxGLJTZ7Xs5MFbjQ2m3L0C+G0
 t8McFnF3+FvsYQHSeBZnQSI0Rpt3oZm7jaUdbZEHs3sh7MFTrNqAn1R5IBBDxiBlLcis
 W/M/Yv/AW43CgdFtQ4NmHvIxe8fdRVH7GZw4ezzC+Nto9dCabB7nU5TQA1ZRHTkn6yjM
 8Lam15+A+67DQSUVImgEqnrssZ39M7H4xrq96X/mHIxQAvMJT83T8NYDoUGS/9eqxq2e
 cLnSFdckG1lIshtzTfIGrwdahgXxCklo8GC7PpQaP4AlSo/8oI6uEg3gnPEWtuXpnB9c
 68zA==
X-Gm-Message-State: APjAAAX1bFjlKGATd2KO56l9V+7m5GyBgmhwEhvneaVLwK5WD2Z6iZNX
 NxPC16zvj8b0U3QuYUtyPoREyw==
X-Google-Smtp-Source: APXvYqx5aC0MwkKG940K/KpyZx0VsNQRFBswo10JJPR48+amFS2Jqa6+l45UduwDaeYv2FCyuT629A==
X-Received: by 2002:a5d:4b50:: with SMTP id w16mr136665wrs.230.1582827343450; 
 Thu, 27 Feb 2020 10:15:43 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm8551152wrw.5.2020.02.27.10.15.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:15:42 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 27 Feb 2020 19:14:42 +0100
Message-Id: <20200227181522.2711142-12-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/51] drm/tidss: Use drmm_add_final_kfree
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
 m.felsch@pengutronix.de, Jyri Sarha <jsarha@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Daniel Vetter <daniel.vetter@intel.com>, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With this we can drop the final kfree from the release function.

Acked-by: Jyri Sarha <jsarha@ti.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Jyri Sarha <jsarha@ti.com>
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
---
 drivers/gpu/drm/tidss/tidss_drv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/tidss/tidss_drv.c b/drivers/gpu/drm/tidss/tidss_drv.c
index d95e4be2c7b9..32a85628dbec 100644
--- a/drivers/gpu/drm/tidss/tidss_drv.c
+++ b/drivers/gpu/drm/tidss/tidss_drv.c
@@ -17,6 +17,7 @@
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_gem_cma_helper.h>
 #include <drm/drm_irq.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_probe_helper.h>
 
 #include "tidss_dispc.h"
@@ -109,8 +110,6 @@ static void tidss_release(struct drm_device *ddev)
 	tidss_modeset_cleanup(tidss);
 
 	drm_dev_fini(ddev);
-
-	kfree(tidss);
 }
 
 DEFINE_DRM_GEM_CMA_FOPS(tidss_fops);
@@ -154,6 +153,7 @@ static int tidss_probe(struct platform_device *pdev)
 		kfree(ddev);
 		return ret;
 	}
+	drmm_add_final_kfree(ddev, tidss);
 
 	tidss->dev = dev;
 	tidss->feat = of_device_get_match_data(dev);
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
