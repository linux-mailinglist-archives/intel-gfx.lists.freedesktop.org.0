Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0167B19D869
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 16:00:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13D956EBE7;
	Fri,  3 Apr 2020 13:59:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0ED76EBDA
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:59:15 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id p10so8651476wrt.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5GgaSanEdwWpgKJFGOpyFJaiF5lia0lpGKnKqBPVUvA=;
 b=g+UpYnLHz2ISycls0YIvmjtT9v4ORGdH6dFfdneuHRd99co4gtflXyQiu615WSr3fQ
 V/I1fSdWaC/eRFcbDwHXQWIA9/5PyPpUAbRxSDv10WwS1SSws+qTJa6I9cDM5MDv4i99
 NmdCAI/cIiBting1ari/RY1Qna2Tj7Bs4WAFI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5GgaSanEdwWpgKJFGOpyFJaiF5lia0lpGKnKqBPVUvA=;
 b=f2kL+iSvDnczZb0Y5XGhaghd5zD+OpRxQ7jBFa9Ofh28maPiqR1uzrvKceJxvb81/H
 tQuTQrwvCWbKIIuEPTmRYeLwLkRXe9RhopCB7r5i49C2NM33JM9JOQNXBpYJkT+kn4aY
 vHEvrIl/EB+Gbu481se6O+jUOsvDgCiq5CEV4utkvqmjvkDZRK4w2kHkuJIfKGUHS3ZE
 Qx4m5dkMsOE4i0/8GcLy/gUGqhk2GZ7CsGBLx/eQJormgO0psFFdGM2duY9egFvOrHrK
 NFMxyznnZtzLBonUmM0deVeBYYgV8SaeMB7oAaPKPrBHOg4xEdkcJS5/aSlrQ2zOCT3a
 +qdg==
X-Gm-Message-State: AGi0PuawZ/uJRr9baw5A9ZzPCCGc+jj7sH1K52/fL/6HsFlv0MUB6aRI
 X3wE7bamaietD5pCFOzdYLzsicD9CMdYdA==
X-Google-Smtp-Source: APiQypJF3sZ8gL4LUqqJHThsPOgWO4OjlsNdH3oGhvzna3Zb8NpXH4DlRrZlu0VhOUgEbs2Jsl15Yw==
X-Received: by 2002:adf:f58c:: with SMTP id f12mr9753914wro.207.1585922354373; 
 Fri, 03 Apr 2020 06:59:14 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.59.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:59:13 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:58:19 +0200
Message-Id: <20200403135828.2542770-36-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 35/44] drm/ingenic: Don't set
 drm_device->dev_private
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

Entirely not used, just copypasta.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Paul Cercueil <paul@crapouillou.net>
---
 drivers/gpu/drm/ingenic/ingenic-drm.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/ingenic/ingenic-drm.c b/drivers/gpu/drm/ingenic/ingenic-drm.c
index bb62d8e93985..3386270cb8a3 100644
--- a/drivers/gpu/drm/ingenic/ingenic-drm.c
+++ b/drivers/gpu/drm/ingenic/ingenic-drm.c
@@ -622,7 +622,6 @@ static int ingenic_drm_probe(struct platform_device *pdev)
 	priv->soc_info = soc_info;
 	priv->dev = dev;
 	drm = &priv->drm;
-	drm->dev_private = priv;
 
 	platform_set_drvdata(pdev, priv);
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
