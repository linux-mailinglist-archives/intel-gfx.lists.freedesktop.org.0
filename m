Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EF019D855
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 15:59:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FF286EBD4;
	Fri,  3 Apr 2020 13:59:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 120CC6EBCB
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:59:07 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id w10so8693426wrm.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gDlKl6kJndkWy3goQCYnpUpsumPiVmOqbn8UmjDA0X4=;
 b=VdavmpYHUfog22fqtXC9ocZl3dqh1fSqyI0NqBwusuNnkosbX0GR7MSAvx1fRH9YXd
 +feHVB7FVQQCIjdmPf8ipwXtkvRRLVDUoaRmzD4M4MsXw7Kz+OLJ4mrFr0AG7ZGqCrUj
 31khvdOAeLqJSytDRwY23vbMY4eOt8GVxDt+Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gDlKl6kJndkWy3goQCYnpUpsumPiVmOqbn8UmjDA0X4=;
 b=YnqieNgfieuKZi+I1ubJS5QF3U99XB/8H27bytGYZ1fY3iiZ5en0Q7Pfe+tTpneQ3y
 SGhT4XlspIV1c08n+xVPiM1bhurG8NOkcUDsV5U/JZAf7dA0TsIHYb7kDq5VsAl1l438
 BV9k8V16RMua+gBSzjT9wCU0sEHbvpdsPvWGeOB3BWvPi33L5I/5j40r8KlKn+FrTBeW
 6CDefm4V0S3r8vIeowh/oEDp0ymKUONEkzPnUeEwrBOUxyHU7KAJLmraMl4BZZvulWue
 wfmFZ82xfyZtxRpd+3cDymTGaBQA7OuT4bhfnDeOkVVNxQ4tdI93C3ahWAVONx/kl9zh
 BmMg==
X-Gm-Message-State: AGi0Pubqmzccyz6FlON3c0S0zSuzjxAuIgPKX7GF4xgZLX66wC4fHTly
 kbwAnyVoBrms8t/pyFJDjZMQjg==
X-Google-Smtp-Source: APiQypI2ifoe0LrGUzL5L+65zmrDJkEjhLnE/KjWbJzh6sOKVZDU2UggIgLlGuo52yIhKZ9jILEzuw==
X-Received: by 2002:adf:e948:: with SMTP id m8mr9093874wrn.193.1585922345760; 
 Fri, 03 Apr 2020 06:59:05 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.59.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:59:05 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:58:11 +0200
Message-Id: <20200403135828.2542770-28-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 27/44] drm/tidss: Use devm_drm_dev_alloc
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
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Jyri Sarha <jsarha@ti.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Already using devm_drm_dev_init, so very simple replacment.

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
