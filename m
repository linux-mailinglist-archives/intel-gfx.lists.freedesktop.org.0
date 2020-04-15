Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 269631A9493
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:41:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7A706E89A;
	Wed, 15 Apr 2020 07:41:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94B566E88C
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:40:57 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id b11so6483563wrs.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=is398M7pfTI5HBFMZ1hnnfJjoeHfBowpX8LBT4kA194=;
 b=cWSZDDir+f/3eXvr5Pd/gURcwbJXgPY8lnlo5+XyLnGMZv4wIavKneKT9tq3Fwsn3T
 HYYE8IoXXtO7xmdTZOKDOWLUNk/wbVjuYhPAaOGMslRKg9KDq7lFPWxLl7sYFnQGrRj5
 idEJ2hTwdi0RaE1B2yD5gX56btt8AWmtTn0t4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=is398M7pfTI5HBFMZ1hnnfJjoeHfBowpX8LBT4kA194=;
 b=p3DAA/sAUR0HFGMEERcx0MX477nXAgjOj3BTwMldCTCVIEs5XsgB1HhqsxHOy0rVAn
 OZTcBqQ2AJNkeJSkyYV1QpA1C5dFtQwjbgUVIOANdE9b2i60tRBVEjAEWpc0kjZqszjG
 hlZR1x5tFwe6+53nk7FNqMNmz42XlfV+WDxYhzALbDVqY2zPtUjDK5zZige0w5RuNEP8
 RXJS+MfAGfADHvr3+hUDuhwwPJ3LYc83IsFN8hUmVTDCWh8Alrg9Ssg6+xmLc2IBTRNR
 bTZBdXwROCt3tRXQSBwCe9VbAMRnV8K2SefzIx1klSqj3UPNAxdG302pmXuO5buADCdx
 LGCA==
X-Gm-Message-State: AGi0PuaB7m8kxjuOCPf8i6hU3Qh4Bqr+ChqSlu6Tb8pxSHJXTGgGkhZR
 rFCmZfsdtxwN0XkbA+wBx22l+PboTdA=
X-Google-Smtp-Source: APiQypI3nHMGFM6Xx24cSavG41vgo4+44a5y2RxIXJcT0tuTvcuS6lYHGQclu5HscvFN4nF0e5OLog==
X-Received: by 2002:adf:e742:: with SMTP id c2mr27574793wrn.293.1586936455521; 
 Wed, 15 Apr 2020 00:40:55 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.40.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:40:54 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:39:49 +0200
Message-Id: <20200415074034.175360-15-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/59] drm/st7586: Use devm_drm_dev_alloc
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
 drivers/gpu/drm/tiny/st7586.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/tiny/st7586.c b/drivers/gpu/drm/tiny/st7586.c
index c3295c717ba6..2a1fae422f7a 100644
--- a/drivers/gpu/drm/tiny/st7586.c
+++ b/drivers/gpu/drm/tiny/st7586.c
@@ -317,18 +317,13 @@ static int st7586_probe(struct spi_device *spi)
 	size_t bufsize;
 	int ret;
 
-	dbidev = kzalloc(sizeof(*dbidev), GFP_KERNEL);
-	if (!dbidev)
-		return -ENOMEM;
+	dbidev = devm_drm_dev_alloc(dev, &st7586_driver,
+				    struct mipi_dbi_dev, drm);
+	if (IS_ERR(dbidev))
+		return PTR_ERR(dbidev);
 
 	dbi = &dbidev->dbi;
 	drm = &dbidev->drm;
-	ret = devm_drm_dev_init(dev, drm, &st7586_driver);
-	if (ret) {
-		kfree(dbidev);
-		return ret;
-	}
-	drmm_add_final_kfree(drm, dbidev);
 
 	bufsize = (st7586_mode.vdisplay + 2) / 3 * st7586_mode.hdisplay;
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
