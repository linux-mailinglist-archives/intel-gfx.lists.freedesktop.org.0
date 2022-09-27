Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6573F5EC0BF
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 13:14:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ACCA10E8DE;
	Tue, 27 Sep 2022 11:14:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5306010E8DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 11:14:23 +0000 (UTC)
Received: by mail-lf1-f45.google.com with SMTP id a2so15164512lfb.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 04:14:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date;
 bh=+otgByhQMyJZKVEdzGgC6F8ainhhTD1rrtUGPyX5oXo=;
 b=LlAERHAIrS3E7JXrLRzxbma6xDqW2m3Vks2o6H78T0zSkxmRdNzMjGt9eNExXfcrKB
 HzSiv0vrNDzyRUVifpe75TdcpjA9c1kkIAMkV0Dodo74AOL9FHIa6O5pYoXL/7bgb+p5
 xU0p9FkApsBdxiRZWqOI+jPsh+jW29e95Uj7O/JeIMdEoVg8ncVWRsWKU1KORYtUkus9
 nHwTF5A0NfqKHA3IArgokaPv8sv6FhXCvLDDKHy1MSj1tkpf5LKzS0TAolAPw6J2AErI
 J+ScXrygcwiXSnIuXNkfDsuQOeQ1Oy4++/DH7naswZ91CIc5MVyalsztTnO40uIs06hl
 prqQ==
X-Gm-Message-State: ACrzQf2qUPvqssHRTkOe+/6nveMZWQZ0Si2sohfKNk3B6Xtlo5+TOBmS
 4PYr8BpjNwgTs+aL95OiKGf2FggJKtk=
X-Google-Smtp-Source: AMsMyM4ImrBXOybYgLk2eHu77RRDuYEzslRf9DfVyTbWWHQX3LvSXwaNuweMQ7Y9E8Ml1VgfEsUbxQ==
X-Received: by 2002:a05:6512:32c7:b0:49d:d448:59c0 with SMTP id
 f7-20020a05651232c700b0049dd44859c0mr10355968lfg.335.1664277261488; 
 Tue, 27 Sep 2022 04:14:21 -0700 (PDT)
Received: from localhost.localdomain ([62.183.198.118])
 by smtp.gmail.com with ESMTPSA id
 a28-20020ac25e7c000000b0048a8c907fe9sm133096lfr.167.2022.09.27.04.14.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Sep 2022 04:14:20 -0700 (PDT)
From: =?UTF-8?q?Timo=20Ter=C3=A4s?= <timo.teras@iki.fi>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Sep 2022 14:14:08 +0300
Message-Id: <20220927111408.14243-1-timo.teras@iki.fi>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] i915: use surface size for bios fb size check
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
Cc: =?UTF-8?q?Timo=20Ter=C3=A4s?= <timo.teras@iki.fi>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Lenovo laptop BIOS (possibly others too) provides a framebuffer with the size 
of the primary display. The primary display by this BIOS as the internal display
(lid open) or external display (lid closed).

Thus, if the external display supports higher resolution than the internal one, 
and the lid is open during boot, the BIOS allocated frame buffer size is not 
enough for the preferred resolution of the external display.

This causes the framebuffer select non-preferred mode for the external display.
And this causes resolution change (and screen flicker) when switching between
framebuffer mode and drm mode (X11/Plymouth).

This patch modifies the frame buffer size logic to ensure that the framebuffer 
size is compared against maximum surface size (real screen resolution) so that 
the BIOS framebuffer is not reused if it's too small for all monitors.
---
 drivers/gpu/drm/i915/display/intel_fbdev.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index df05d28..291dc8a 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -192,13 +192,13 @@ static int intelfb_create(struct drm_fb_helper *helper,
 	int ret;
 
 	if (intel_fb &&
-	    (sizes->fb_width > intel_fb->base.width ||
-	     sizes->fb_height > intel_fb->base.height)) {
+	    (sizes->surface_width > intel_fb->base.width ||
+	     sizes->surface_height > intel_fb->base.height)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "BIOS fb too small (%dx%d), we require (%dx%d),"
 			    " releasing it\n",
 			    intel_fb->base.width, intel_fb->base.height,
-			    sizes->fb_width, sizes->fb_height);
+			    sizes->surface_width, sizes->surface_height);
 		drm_framebuffer_put(&intel_fb->base);
 		intel_fb = ifbdev->fb = NULL;
 	}
-- 
2.15.0

