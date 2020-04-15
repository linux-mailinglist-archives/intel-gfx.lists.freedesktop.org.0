Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B64201A94AA
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:42:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CCF76E8A5;
	Wed, 15 Apr 2020 07:41:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 865036E889
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:41:06 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id k1so10648897wrx.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:41:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=owbNU0MxZXmqWZDP7JpaZzPb8BoatmD0pycGlfu/bt4=;
 b=SNbiWLNPSWUwD7pb8gguKog9DFTfe5Kl1HI5YMONfU/iR0NAe489VjSfeAhDdzRqlM
 /tbegf40n0m9D+jKhwDV+V6IGaYDugYKnrG7psagFjCqYwzeLKAFN2V6fVOmpak0jes0
 oOP18tVIgrdw0L0DUi7uH3cdQXh/CpXnCgg9U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=owbNU0MxZXmqWZDP7JpaZzPb8BoatmD0pycGlfu/bt4=;
 b=GO+Wkpzlc9xl4i8X5Yt8pFwP5GjljPQ93e3VrpT+uLl3LeMMiyF+QUvhTOxwZpevbQ
 TJ6ML04fGBsaEM88Av1ZcFSGMvv5nfn1tc4cvPuB59EWxRBkwsDnyM4vn8D7kEUHhuET
 Xh2Q8/jhVxxUJkbEkYdP91Hs7UgbOJMNyPlUIJJcw/8s4WHXmgUvyf4pnrqmTSnLM6z/
 htGXJJUVKmxjM6YQGN61G1BkEYRdEW7m5JM2QhqZghnN+B5bFXSAI3qPaTh+eKFr1Ow6
 av46RwOtJPnkUkii2K4/eXhLoFo7Uk+v6q9Y0gS12g4prqMaY+nOswSrZTrZql+zVvnj
 glcQ==
X-Gm-Message-State: AGi0PubQXzSFsSRBm9ZrcZ35x8No76vIstai5jAcWk8SI00vCtbhIQg4
 EAl7jyJLM/V+OUtTxROU5rQpDPT/eWU=
X-Google-Smtp-Source: APiQypLAcYT6tXqZgGn2VIBl7LGuQCnmn1xbsxhJEkJHyPMNJcTEbfIMvxJBDbwcfS+RUfD2j4hKqw==
X-Received: by 2002:adf:b344:: with SMTP id k4mr17732939wrd.76.1586936464921; 
 Wed, 15 Apr 2020 00:41:04 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.41.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:41:04 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:39:58 +0200
Message-Id: <20200415074034.175360-24-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 23/59] drm/tidss: Use devm_drm_dev_alloc
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, Jyri Sarha <jsarha@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Already using devm_drm_dev_init, so very simple replacment.

Tested-by: Jyri Sarha <jsarha@ti.com>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Jyri Sarha <jsarha@ti.com>
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
---
 drivers/gpu/drm/tidss/tidss_drv.c | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/tidss/tidss_drv.c b/drivers/gpu/drm/tidss/tidss_drv.c
index ad449d104306..7d4465d58be8 100644
--- a/drivers/gpu/drm/tidss/tidss_drv.c
+++ b/drivers/gpu/drm/tidss/tidss_drv.c
@@ -135,20 +135,13 @@ static int tidss_probe(struct platform_device *pdev)
 
 	dev_dbg(dev, "%s\n", __func__);
 
-	/* Can't use devm_* since drm_device's lifetime may exceed dev's */
-	tidss = kzalloc(sizeof(*tidss), GFP_KERNEL);
-	if (!tidss)
-		return -ENOMEM;
+	tidss = devm_drm_dev_alloc(&pdev->dev, &tidss_driver,
+				   struct tidss_device, ddev);
+	if (IS_ERR(tidss))
+		return PTR_ERR(tidss);
 
 	ddev = &tidss->ddev;
 
-	ret = devm_drm_dev_init(&pdev->dev, ddev, &tidss_driver);
-	if (ret) {
-		kfree(ddev);
-		return ret;
-	}
-	drmm_add_final_kfree(ddev, tidss);
-
 	tidss->dev = dev;
 	tidss->feat = of_device_get_match_data(dev);
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
