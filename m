Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 961651A9499
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:41:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00CFC6E8A3;
	Wed, 15 Apr 2020 07:41:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6868D6E88B
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:41:02 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id h2so16159799wmb.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:41:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gs8LnDSq08j9dfc0sQ0TJwO3UzvuOsvsN0kDO+xCPcY=;
 b=VtVpYKDxh/df0xXYnazsGGZ6aM2gBce1WM5PwPcdmcuedn4iXYiHpToZnVEnVD5O1q
 F3R/IS+p+7IjhmkRMcwqZv0xOQ2W5f2ZLqwMH1W6OhMtSXwB2ZXfmO/Hz35VES6ywTIe
 cqqcKZHOw3EZU0y3dQJXoCmSkn6CY71BwhZzk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gs8LnDSq08j9dfc0sQ0TJwO3UzvuOsvsN0kDO+xCPcY=;
 b=pAQeIQTYG3ezxQ29Elm3ZDUUK+Bh1Pl+bCK4VYRv0BL74x1qqljxl+B/Spn56llr7J
 lN/qmg26udMPddASFEiWdnmDIVxP9Mqo8zbpVB/BVTJnyE4mxz2dmZVARw4YwYPxyUbI
 6Hhrbx7+YLNm56XQaEpYKDspUnkqrFI7wXoIXhH4JFBS9tH4y2MSyoFwWaR0dko4E+7Y
 GlErevgkIZIJ6lLik7p5sgfgO1BrFeX/cuuNxgoCb58HSHfkSHLtrqZDKYGkOCYZT3/7
 PSYuOHBcnRg1rX4YaXuPuV+i/5JbVQD4H+SHhF+my/jJ6Iwl+/HcoH2783ZvsEOpGjP2
 +5YA==
X-Gm-Message-State: AGi0PuZLaaa3Qd3Sxp/V834sKjCbjlg4LCtaqIj0PbOb7kLXLo6TeXyd
 atKnf+bHmmmKBx0ohVbATrxSGusABzw=
X-Google-Smtp-Source: APiQypKfqLQqiIjGqWnrzwR7WvTYyyl8gqetZsqK5UpRAhNcIT8zAOvpauXylNgaMjPM9p/ZPpp5ww==
X-Received: by 2002:a7b:c0cb:: with SMTP id s11mr4113297wmh.180.1586936460793; 
 Wed, 15 Apr 2020 00:41:00 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.40.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:41:00 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:39:54 +0200
Message-Id: <20200415074034.175360-20-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 19/59] drm/ili9225: Use devm_drm_dev_alloc
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 David Lechner <david@lechnology.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Already using devm_drm_dev_init, so very simple replacment.

Acked-by: David Lechner <david@lechnology.com>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: David Lechner <david@lechnology.com>
---
 drivers/gpu/drm/tiny/ili9225.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/tiny/ili9225.c b/drivers/gpu/drm/tiny/ili9225.c
index 118477af4491..d1a5ab6747d5 100644
--- a/drivers/gpu/drm/tiny/ili9225.c
+++ b/drivers/gpu/drm/tiny/ili9225.c
@@ -376,18 +376,13 @@ static int ili9225_probe(struct spi_device *spi)
 	u32 rotation = 0;
 	int ret;
 
-	dbidev = kzalloc(sizeof(*dbidev), GFP_KERNEL);
-	if (!dbidev)
-		return -ENOMEM;
+	dbidev = devm_drm_dev_alloc(dev, &ili9225_driver,
+				    struct mipi_dbi_dev, drm);
+	if (IS_ERR(dbidev))
+		return PTR_ERR(dbidev);
 
 	dbi = &dbidev->dbi;
 	drm = &dbidev->drm;
-	ret = devm_drm_dev_init(dev, drm, &ili9225_driver);
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
