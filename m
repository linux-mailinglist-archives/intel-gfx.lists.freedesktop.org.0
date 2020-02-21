Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B05741688A0
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 22:04:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 154DE6F523;
	Fri, 21 Feb 2020 21:03:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A2486F528
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 21:03:51 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id w12so3545954wrt.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 13:03:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+dqca7vVfAJpVEb4Y1b3H/4RHc4MTBTRHhaWTEoXRoM=;
 b=baswKR15NPEbuQVOd7W5TUH7mPdhbViJgNC/xb8YRpe9+wn3taI6TeEXjdLQ8c38Cp
 csb57a+1plsslZ8AjEvN2Oc8XuXjlyk8SGY0/66J0jlz0SHbUA73nvdt5Dx1OPB6rpM0
 ba4GvbeW275BwZnfuemjuOOjy2iczL1FekRbQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+dqca7vVfAJpVEb4Y1b3H/4RHc4MTBTRHhaWTEoXRoM=;
 b=tT+9J6cdeG7jxyVSMK1jGQ0dMdRN3Ohm2FLLHfelykoq+LdhS5Kzwj/v4QCSTaPcbT
 Cg9jTKOxtD4Fy+gCXtmNHtL9nV8RuPm5zlnUalU9IZdCRpkVAlW1PkitOm4O8Zkk0LKX
 sQIPq8HKOHpsAVifEZR//BbIfgXjtiU9LoUkutx4hMaKpe6gqQAWXVY+UoOSPwTsYO22
 kHZmROSvMcX6cmEQsrUh69aAgPw/LSUbi8q30rDbTlG35R/IqGMdTZFYAzf8CqJY2XhU
 u/DNihRspdUEXT1In3F1UaAUVnDOLvB2CW0Ljbvu8ZlLALkwwgweaSuV11b5jTH9sRDE
 g0qg==
X-Gm-Message-State: APjAAAW+y9QwtcAv3OOXlsjZn8k85NZZsSfld3+V3SwVD1br4Cem1WHp
 65nkXzQw1ueBeBesBwKLg4hwTyuz3FY=
X-Google-Smtp-Source: APXvYqwOOzZKqu2NBONONN3L10Q0nkW32+sa7SVkV2+66ySR6XD9ldup53fhITJ0RnzpLySPSSthzg==
X-Received: by 2002:adf:ecc6:: with SMTP id s6mr51696350wro.345.1582319029815; 
 Fri, 21 Feb 2020 13:03:49 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z6sm5483930wrw.36.2020.02.21.13.03.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 13:03:49 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 Feb 2020 22:02:44 +0100
Message-Id: <20200221210319.2245170-17-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/51] drm/inigenic: Use drmm_add_final_kfree
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
Cc: Paul Cercueil <paul@crapouillou.net>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With this we can drop the final kfree from the release function.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Paul Cercueil <paul@crapouillou.net>
---
 drivers/gpu/drm/ingenic/ingenic-drm.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/ingenic/ingenic-drm.c b/drivers/gpu/drm/ingenic/ingenic-drm.c
index 6d47ef7b148c..12b14aed05cd 100644
--- a/drivers/gpu/drm/ingenic/ingenic-drm.c
+++ b/drivers/gpu/drm/ingenic/ingenic-drm.c
@@ -23,6 +23,7 @@
 #include <drm/drm_fourcc.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_irq.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
 #include <drm/drm_plane.h>
@@ -490,11 +491,8 @@ static irqreturn_t ingenic_drm_irq_handler(int irq, void *arg)
 
 static void ingenic_drm_release(struct drm_device *drm)
 {
-	struct ingenic_drm *priv = drm_device_get_priv(drm);
-
 	drm_mode_config_cleanup(drm);
 	drm_dev_fini(drm);
-	kfree(priv);
 }
 
 static int ingenic_drm_enable_vblank(struct drm_crtc *crtc)
@@ -639,6 +637,7 @@ static int ingenic_drm_probe(struct platform_device *pdev)
 		kfree(priv);
 		return ret;
 	}
+	drmm_add_final_kfree(drm, priv);
 
 	drm_mode_config_init(drm);
 	drm->mode_config.min_width = 0;
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
