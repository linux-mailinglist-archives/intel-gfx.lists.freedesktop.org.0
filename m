Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A56421A94ED
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:43:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA7A46E8D4;
	Wed, 15 Apr 2020 07:41:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B1676E8A6
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:41:41 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id g12so9843793wmh.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WTzqaDrOCjOy+NvsZEi5X1prpX7tJueFkok9mHub9BE=;
 b=Mx9WlA0RkjMk5en23zym4AnFC+pYZh1AhhzDtRTzs5ujL3cfdqJoOf1f2x7p7JSLrd
 v0eM3hSi3zGOGnOmDh9BJ/3e/GdZh7n0CGlkD7JlttcROmG1qXV0ahvaRFiN/zhFVtRG
 usYUgCqhgYzWb0n8P54/HbdisHLpkRRT7jHW0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WTzqaDrOCjOy+NvsZEi5X1prpX7tJueFkok9mHub9BE=;
 b=rKBLHRoOA9n7mbybTAaZYMN3bUR9KwigkYBUpc5t1zXOILBJxQ+K6j5BRLzOPDiWka
 FOy2dYdufRr/bA4U7BDvQsDpz5W4Mt1nBPM5/79hJqHpW0ZUWwuiQbWwNFjrXII2Eod4
 3ho/oXn46ZjT4EdOwYTm8C8ZOzlKdZSK4QClyOH0cef1ubD6ft0uZV7sVIFGU4HXxkN6
 CXoG0q/tSpr1LB1NWSPwtM2PNHEkIHwEiBp3QIkoYEH044rkMhXMPsKysUIgEm3MsL5B
 qKCs/CyHzvr4svW1R7ZJpLi1b7kZzAN9EpIB/38i6BPh/awuS0LUrST89S9mpmTTDeCe
 GFuw==
X-Gm-Message-State: AGi0PuaonjZgTopSgKSoH9ecrM/2/mUdh521hU+XAldczeRa7D1oDj8u
 zswiiPk08uYZVuRqvqp6BB3bcYCjWC8=
X-Google-Smtp-Source: APiQypL/rUa/bFVI+lG/Z9+1ny7ZzFmAzsDUu29ROIFPLJOljCD1EUNPudrv/9KhNQCl/0Va8VL/JA==
X-Received: by 2002:a1c:4c10:: with SMTP id z16mr3823279wmf.77.1586936499654; 
 Wed, 15 Apr 2020 00:41:39 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.41.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:41:39 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:40:33 +0200
Message-Id: <20200415074034.175360-59-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 58/59] drm/ast: Drop explicit connector
 register/unregister
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
 DRI Development <dri-devel@lists.freedesktop.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Dave Airlie <airlied@redhat.com>,
 Sam Ravnborg <sam@ravnborg.org>, Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is only needed for hotpluggable connectors set up after
drm_dev_register().

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Dave Airlie <airlied@redhat.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Gerd Hoffmann <kraxel@redhat.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Emil Velikov <emil.velikov@collabora.com>
---
 drivers/gpu/drm/ast/ast_mode.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/ast/ast_mode.c b/drivers/gpu/drm/ast/ast_mode.c
index cdd6c46d6557..84b1d1fea41f 100644
--- a/drivers/gpu/drm/ast/ast_mode.c
+++ b/drivers/gpu/drm/ast/ast_mode.c
@@ -1069,7 +1069,6 @@ static void ast_connector_destroy(struct drm_connector *connector)
 {
 	struct ast_connector *ast_connector = to_ast_connector(connector);
 	ast_i2c_destroy(ast_connector->i2c);
-	drm_connector_unregister(connector);
 	drm_connector_cleanup(connector);
 	kfree(connector);
 }
@@ -1112,8 +1111,6 @@ static int ast_connector_init(struct drm_device *dev)
 	connector->interlace_allowed = 0;
 	connector->doublescan_allowed = 0;
 
-	drm_connector_register(connector);
-
 	connector->polled = DRM_CONNECTOR_POLL_CONNECT;
 
 	encoder = list_first_entry(&dev->mode_config.encoder_list, struct drm_encoder, head);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
