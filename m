Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF71119D83E
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 15:59:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1D486EBC2;
	Fri,  3 Apr 2020 13:59:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6869E6EBA0
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:58:57 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id e9so7821681wme.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H8BhvxoNkRBJoi5QP4FoiKfKOWdDvbxfrg3aVuPr89I=;
 b=GEvVEI/poXfCQI6aBiO6USrk6BYGF11kazdp7OIHrvuzRh5BVPGY7YmQrpdDvsWn+H
 SlEN0BKv27zs09K5OD1w0NK9vuUgJieKfczShnkUNVBCX1gQK03STtgxcSkjtZZJIUeI
 fQx005/aH+CcqWLhdXVyyczQ4RUeyQKE/KQAM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H8BhvxoNkRBJoi5QP4FoiKfKOWdDvbxfrg3aVuPr89I=;
 b=hpI87WeSdF52yp+H5Vmr9/A64pYHgH9yu9rWmHbpKrYEzbDn2VjbJ4x+sIahGCyHig
 +SqiFBQz8jHShaXvtBF49GDv/ngmR7v3rS6PbKimw1S150T3HeaTQWiHEZGrT/FP4vgt
 E3AtAMd7kWRnXW5AeQA66RkJ1g4nxhmM7LUafOtkSfgR6uVQagsYEKhSJnaPIZp20IQk
 R6cW8gmHPmIi3axblj8jv4vraSZEpaDuWVSrKohVbVfFfk5Zfu14vj7jFlx2MDkE5Xa9
 enVHTGBszEiD9wAEYIlvK8zFrNV5NrDCv/6M+jiqTTkJyV0wRhfSQHqTNXX4cM6UAbTo
 ciIw==
X-Gm-Message-State: AGi0PuYxyoI7uDIRWMaWp3HbhJ4VjBrr2qzfihn6Wrvv6Q/7my1BdGoC
 p76KrXlB1R8RQDbeQ3RAyuIFyA==
X-Google-Smtp-Source: APiQypL9RCGjjW/xeefzG4RbPfSgFCOBV3JZz12EtU2IQsSadmf+AY9U6bud423YZcaJaeaJ53bpdQ==
X-Received: by 2002:a1c:9907:: with SMTP id b7mr9305232wme.17.1585922335906;
 Fri, 03 Apr 2020 06:58:55 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.58.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:58:55 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:58:02 +0200
Message-Id: <20200403135828.2542770-19-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 18/44] drm/st7586: Use devm_drm_dev_alloc
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
 David Lechner <david@lechnology.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Already using devm_drm_dev_init, so very simple replacment.

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
