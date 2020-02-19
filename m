Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B30164199
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:22:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE17B6EB59;
	Wed, 19 Feb 2020 10:22:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D6E16EB49
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:22:06 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id t14so6136611wmi.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:22:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9BscJmdsFSiaOvame9X+vY0h/aJg9xsEkPoVs4+5NTM=;
 b=ei3UnfdYbxNq1NoOP/F7ZcU/F86cIkOEnXSUjM/e72ZPYnhxsREhPpUVE/B/+HQM81
 gXweDgSL0aMgCaQH6k3hTBaYEQaxGIlW4bfpbZAiKXcSPd5Rw9iVZwP6P7axyW0ASbjh
 RismzCOjO4TQKZ+kN/DrgpLc4JUxop15mGJdw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9BscJmdsFSiaOvame9X+vY0h/aJg9xsEkPoVs4+5NTM=;
 b=QfI4yMp92N9EzypIgsFhABMVg5VBej94R4zmnk8t7vlwpNLpZFwRyUeiMGw2Y7gE4/
 186pUDnEsLa9TMTOYcmWfHA7xrspbSiXi/nTj6/f9GYr5yZI2Y5l7glP7vJqKnuP0QcK
 V00H9E6ZYepe8e3vAQTdzSeG/Y/xDpYM8xAJMfiDzhd6o67GEvCWnc8AqZYjPWVn9hNp
 f+Rkq8Qo9FenFf3HqDgo3fLXkrcQEJP1RDHUb66Bnl1q3ko3LyoD95PimN0X/DxdWyuL
 dbDmGKbCAgESRjkRAy6YRjL4aFmq9TaHuAMLq12zmULGO14XPOVPE5h47DjjLzIwQ7Kr
 JD2Q==
X-Gm-Message-State: APjAAAV/UfvhsoIZEwU3DGJprWU8sRhoHLm3yYr1nzZ9Q7j15gcZY4VA
 5SurJpPGlGpWfsmJ2GBE931iwA==
X-Google-Smtp-Source: APXvYqyxQEiEdKWCSZIxFIMzWfSIl0V5X/u8Ifte68teWOjTwF/CwLtrONhLehu6qbj+V2a8Yei2hA==
X-Received: by 2002:a1c:df09:: with SMTP id w9mr8645654wmg.143.1582107724965; 
 Wed, 19 Feb 2020 02:22:04 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.22.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:22:04 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 11:20:58 +0100
Message-Id: <20200219102122.1607365-29-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 28/52] drm/bochs: Remove leftover
 drm_atomic_helper_shutdown
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
 Gerd Hoffmann <kraxel@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Small mistake that crept into

commit 81da8c3b8d3df6f05b11300b7d17ccd1f3017fab
Author: Gerd Hoffmann <kraxel@redhat.com>
Date:   Tue Feb 11 14:52:18 2020 +0100

    drm/bochs: add drm_driver.release callback

where drm_atomic_helper_shutdown was left in both places. The
->release callback really shouldn't touch hardware.

Cc: Gerd Hoffmann <kraxel@redhat.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/bochs/bochs_kms.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/bochs/bochs_kms.c b/drivers/gpu/drm/bochs/bochs_kms.c
index 8066d7d370d5..e8cc8156d773 100644
--- a/drivers/gpu/drm/bochs/bochs_kms.c
+++ b/drivers/gpu/drm/bochs/bochs_kms.c
@@ -166,6 +166,5 @@ void bochs_kms_fini(struct bochs_device *bochs)
 	if (!bochs->dev->mode_config.num_connector)
 		return;
 
-	drm_atomic_helper_shutdown(bochs->dev);
 	drm_mode_config_cleanup(bochs->dev);
 }
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
