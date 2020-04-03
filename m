Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8578519D843
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 15:59:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 049D16EBCD;
	Fri,  3 Apr 2020 13:59:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ACFF6EBA0
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:59:00 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id j17so8571765wru.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:59:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VFObZ5J+Ollef1MI/Rw5Do4NMABXaWitcxPh+7FLW9U=;
 b=UVJU2UIAtu9ue0MUNAzUilV+ynDt/tBEyTZaYDOjSwjM29RkWOc3v0FqEwtsD5XCwP
 s8MDFbtfAsrGnWHs5/gQ+CqDs0V7xVtl1P8rYq9ldGvOKx1eV71OiSPA4wDEFu6c83a7
 LwooRe1t16kEL1HW3jdxZJeEnoG6j/00KINGo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VFObZ5J+Ollef1MI/Rw5Do4NMABXaWitcxPh+7FLW9U=;
 b=EHhnfsyJHJWxcF54sgFTy3ec0/7gxSmHoUZYhwWWG9VfXBd5/ITGMm814D8xzh1/T1
 pZHZ3CafWZuw0iREzh6tkNWJXJQsP/W9+G4D8uek9dnIYhNinSmHkf1vkaGJfH5R2j4r
 tStDitKtjCKc8LPt2czUpi8ypljycPayL1/vC3QxaJIEmaeWmj+c+5VZVuSikhmKxVOj
 5pNiSj0z52201beGKzNWwL5SAAV1+CrRZusglD6PS9RtcyRpM/wVyPLuMBTKE7E8OF5g
 /OXzQCLFEIaLc5H79axbO4uI6qX0UW+fw+/m3I3PDQuPA34hvVCUhM8DAjYn/UJnUsaj
 4JlA==
X-Gm-Message-State: AGi0Pub8Zp6HGdrFr7dH4n+O0A54CvI+2uCissr591y5Teo6riBq+6j2
 6s7mJH93Y/abv/kS3ylKjywarQ==
X-Google-Smtp-Source: APiQypIrbvknwb3I0ohP5mTfWJYGpekKdu7Klv6p1tvtak9jl9tobnZvt5thNzWF1deEOrgmmifjHQ==
X-Received: by 2002:adf:afc3:: with SMTP id y3mr7907314wrd.144.1585922339034; 
 Fri, 03 Apr 2020 06:58:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.58.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:58:58 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:58:05 +0200
Message-Id: <20200403135828.2542770-22-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/44] drm/ili9486: Use devm_drm_dev_alloc
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
 Kamlesh Gurudasani <kamlesh.gurudasani@gmail.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Already using devm_drm_dev_init, so very simple replacment.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Kamlesh Gurudasani <kamlesh.gurudasani@gmail.com>
---
 drivers/gpu/drm/tiny/ili9486.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/tiny/ili9486.c b/drivers/gpu/drm/tiny/ili9486.c
index c4079bf9e2c8..2702ea557d29 100644
--- a/drivers/gpu/drm/tiny/ili9486.c
+++ b/drivers/gpu/drm/tiny/ili9486.c
@@ -197,18 +197,13 @@ static int ili9486_probe(struct spi_device *spi)
 	u32 rotation = 0;
 	int ret;
 
-	dbidev = kzalloc(sizeof(*dbidev), GFP_KERNEL);
-	if (!dbidev)
-		return -ENOMEM;
+	dbidev = devm_drm_dev_alloc(dev, &ili9486_driver,
+				    struct mipi_dbi_dev, drm);
+	if (IS_ERR(dbidev))
+		return PTR_ERR(dbidev);
 
 	dbi = &dbidev->dbi;
 	drm = &dbidev->drm;
-	ret = devm_drm_dev_init(dev, drm, &ili9486_driver);
-	if (ret) {
-		kfree(dbidev);
-		return ret;
-	}
-	drmm_add_final_kfree(drm, dbidev);
 
 	dbi->reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
 	if (IS_ERR(dbi->reset)) {
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
