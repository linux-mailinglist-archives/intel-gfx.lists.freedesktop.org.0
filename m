Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F34F519D84A
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 15:59:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89D106EBC6;
	Fri,  3 Apr 2020 13:59:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA5306EBCB
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:59:03 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id c7so8634326wrx.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lEsOBpWRPJw0RbRVFQWIKN5M4rXeL+TqlaB34lvbLP8=;
 b=GkXVHT6zdZfduWgfY1Jg0F+2IdMYkp2NbcJslaHMjiOt+d+n10zScSzZtHe++3oCPC
 aEsu583VTWwutfEZx2Y3/Y62r2Jt+oTgD74nDPC6MByeKfdxLMYKhMhB5vzVM1OVuSKJ
 owlHPG61Yse30Gh8EfjS/VuLxNQEDIG7a4imk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lEsOBpWRPJw0RbRVFQWIKN5M4rXeL+TqlaB34lvbLP8=;
 b=E3nwxutfjUGUXdWaMOFBd70akdkby2XG30uOubRHVw+Qdv4TwVikGRLV6jM19DDDbw
 7lRY3pA2Wh3/GrNDJ+LuEFd7pgSf56x0UID3W2LWP4Qxtmul9tsU6F5vycAOUFMymZLq
 yBcCsebpLPhCIL+pMTGvKnTi8A0AnKHdMYZ7WXyrhcGcTv3312rqIfnT6exSIrhkYE5o
 s0o/VKDGDQS/NYH64RPu+aGIPWdTjR3rZaBYZXdd/MH2TO+lvEJ7JfBsNUw0hEpcZR73
 upk1GBHwrDyAPDFBCVgwErsQ7VbC4X7fS2ti6aMnjTxvODf1BGdZjdi9IXcZB9aRZZ45
 D8bA==
X-Gm-Message-State: AGi0PuYsyBc6J7zUTOzLCOB09M8drt6m6BU17261eU6CLwPxbaKGjPvg
 wEqLjHHLbT4P6Ed67mr5H/cqlg==
X-Google-Smtp-Source: APiQypIl0YdETD5vfpr6yfkfLoXIMgevcDj8TsJctnD9NJ24YbKzj1hkpMfagVbu7myYC3YoCZAJbA==
X-Received: by 2002:adf:b35d:: with SMTP id k29mr9397907wrd.239.1585922342204; 
 Fri, 03 Apr 2020 06:59:02 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.59.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:59:01 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:58:08 +0200
Message-Id: <20200403135828.2542770-25-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 24/44] drm/hx8357d: Use devm_drm_dev_alloc
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
Cc: Eric Anholt <eric@anholt.net>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Already using devm_drm_dev_init, so very simple replacment.

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
