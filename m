Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6114B1A949D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:41:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 730156E899;
	Wed, 15 Apr 2020 07:41:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81B666E88C
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:41:03 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id h9so17866430wrc.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FoCcPJgxLCMumcla6Kq5B0fQKqpfJGcLuflkgXPteSs=;
 b=FLkbXNCaeuA1NUP0hDBWW2JwZeeiX1UEXkAbFJy4E5Kd4VPIyFhj1s84/P/ow8Irk7
 cezK9FSaz6SPinXLu88JAe0TNtWc3ArPu9XYiphh5+zhUUQWdmRD2E2uUOXS8uJ9LcBb
 Bys7DYLtt6yVP9tm8UBflULjpOqjVPMK9rdxQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FoCcPJgxLCMumcla6Kq5B0fQKqpfJGcLuflkgXPteSs=;
 b=ZVeEQj+6AbG1s6CiZHW39ARUUlxL1o4TPU5lhR3boBybxJU+E5T5a0QuGg7vFf/Odf
 g+UGp1KiZcEc5ZeMrMP7CnwAhzRxVXKqrFO589Ls45ocLkcQBH8TFCvn2X8g4/U3VMc7
 DechdXt7ebgbsygU8lCc1XxxNRpPgYQ90csejNN0RYj3rrU7fx1c5z2r0AARa34NjSt0
 Vn4qX45YoxMLO/gwxXqLFxpQnqpez6CYwF/4RJiNulpjap/LN0EZLYFJNfrI3XzuTXHP
 FWR6I9hUUlKpbP4mHp9lI9/lAqfiLAqJ8MMUU1geHzYty8pZQTyAKbcpXi0Dz5dNrfac
 kMrA==
X-Gm-Message-State: AGi0PubL5CUWhToU+GZip1hdCPsUtT9Vp6bpEmlLCWwGVD5pMYfENLAl
 oIbw8zzodfxswwPWp+gMEC1xRp5xcJc=
X-Google-Smtp-Source: APiQypLESpy/gqNyQD5ttOiGzYI6N0cR4raPJ++yTG5m4b1i1PMgb2w/zTnPYZMg9F/SpW8Tq3UzvQ==
X-Received: by 2002:adf:cd0a:: with SMTP id w10mr13671838wrm.404.1586936461935; 
 Wed, 15 Apr 2020 00:41:01 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.41.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:41:01 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:39:55 +0200
Message-Id: <20200415074034.175360-21-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 20/59] drm/hx8357d: Use devm_drm_dev_alloc
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Eric Anholt <eric@anholt.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Already using devm_drm_dev_init, so very simple replacment.

Acked-by: Eric Anholt <eric@anholt.net>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Eric Anholt <eric@anholt.net>
---
 drivers/gpu/drm/tiny/hx8357d.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/tiny/hx8357d.c b/drivers/gpu/drm/tiny/hx8357d.c
index af7f3d10aac3..b4bc358a3269 100644
--- a/drivers/gpu/drm/tiny/hx8357d.c
+++ b/drivers/gpu/drm/tiny/hx8357d.c
@@ -226,17 +226,12 @@ static int hx8357d_probe(struct spi_device *spi)
 	u32 rotation = 0;
 	int ret;
 
-	dbidev = kzalloc(sizeof(*dbidev), GFP_KERNEL);
-	if (!dbidev)
-		return -ENOMEM;
+	dbidev = devm_drm_dev_alloc(dev, &hx8357d_driver,
+				    struct mipi_dbi_dev, drm);
+	if (IS_ERR(dbidev))
+		return PTR_ERR(dbidev);
 
 	drm = &dbidev->drm;
-	ret = devm_drm_dev_init(dev, drm, &hx8357d_driver);
-	if (ret) {
-		kfree(dbidev);
-		return ret;
-	}
-	drmm_add_final_kfree(drm, dbidev);
 
 	dc = devm_gpiod_get(dev, "dc", GPIOD_OUT_LOW);
 	if (IS_ERR(dc)) {
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
