Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B598F6145BA
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 09:30:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8037610E23B;
	Tue,  1 Nov 2022 08:30:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D205C10E239
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Nov 2022 08:30:22 +0000 (UTC)
Received: by mail-lf1-f41.google.com with SMTP id bp15so22604797lfb.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 01 Nov 2022 01:30:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=J2sUBxo6D2JqmcnXM+m2perBZ1T3yQrjZATOptFpdTg=;
 b=OORzwvQ+PwQLM726HbtJ8m3AranCtc+IhexpS1zdTZ3taf+GKJU/QIStvo6vQKYsKD
 J9HOS3dGnUyw7bnEb1mgYArDcmBHDI6q1KeAYswoNpA78A4e7wf3CNWPIJgukZ/cEXdN
 yLDdakznEwJbn6f2Xn0wFvH/Tm9gAvjeyjBum8s9VZoOvN2CfLhbMQk+IS7VD7om4+yF
 4fo429QCcNSOlmRcas+vM8334fflz5FTk1w3O6DdnSXMcEpr0F8sxAhdEoe4HCuXrtuV
 /B6SPIvzrKizb5SHo8PNX+a3QSUsFMZhGyW3yAMy+AUvNXnVV3r/pHF3rzKwE1gDVajO
 mfBw==
X-Gm-Message-State: ACrzQf0eHquo5Uok1K8SuK82TFYthtAGfIUv+vh1x7gwOLMSpo7oiHdF
 DBphrOZd+13ySbc4lSGBHEwsmiOVIqk=
X-Google-Smtp-Source: AMsMyM4eCRV0vHAje3hwzN0tB9UW7qwCDmpqUH3Z//NjZ3Sxa75X4fM8WIHBesKzWIHvLIJ4JtczvA==
X-Received: by 2002:ac2:46fc:0:b0:4b0:4117:3b2c with SMTP id
 q28-20020ac246fc000000b004b041173b2cmr7416107lfo.376.1667291421005; 
 Tue, 01 Nov 2022 01:30:21 -0700 (PDT)
Received: from localhost.localdomain ([62.183.198.118])
 by smtp.gmail.com with ESMTPSA id
 bn2-20020a05651c178200b0026dd4be2290sm1681056ljb.90.2022.11.01.01.30.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Nov 2022 01:30:20 -0700 (PDT)
From: =?UTF-8?q?Timo=20Ter=C3=A4s?= <timo.teras@iki.fi>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Nov 2022 10:30:11 +0200
Message-Id: <20221101083011.11784-1-timo.teras@iki.fi>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20220927111408.14243-1-timo.teras@iki.fi>
References: <20220927111408.14243-1-timo.teras@iki.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] i915: use surface size for bios fb size check
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

Lenovo laptop BIOS (possibly other vendors too) provide a framebuffer with
the size of the primary display. The BIOS selects the primary display to
be the internal display (lid open) or external display (lid closed).

Thus, if the external display supports higher resolution than the internal
one, and the lid is open during boot, the BIOS frame buffer size is not
large enough for the preferred resolution of the external display.

This causes the framebuffer to select non-preferred mode for the external
display. And this causes resolution change (and screen flicker) when
switching between framebuffer mode and drm mode (X11/Plymouth).

The fix is to make sure that the frame buffer is large enough to hold
data for the maximum surface size.

Signed-off-by: Timo Teräs <timo.teras@iki.fi>
---
v2: reword commit message, add signed-off-by

 drivers/gpu/drm/i915/display/intel_fbdev.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 112aa0447a0d..287b58a732e0 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -217,13 +217,13 @@ static int intelfb_create(struct drm_fb_helper *helper,
 		return ret;
 
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
2.38.1

