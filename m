Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8653E6D6DE7
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 22:19:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8445910E7C1;
	Tue,  4 Apr 2023 20:18:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C70FB10E7A7
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 20:18:49 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id y4so135559178edo.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Apr 2023 13:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1680639528; x=1683231528;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=uqZDoQFwLADtMnBtNxdxK9p4TWtkU10tx8tohL83pCs=;
 b=XaJU8sLM4wNDMz/DnkBo4IsRCNJhdOLI8hKhFK4bdDC9psxDRT7+0jIiZXorXw9RIK
 hzgkzrlF4Y0eBfz1IjRl1Ep9FIxjejhq5J5sT+ZBg8LGMr5Sa9Z5Wh8J8gyABm68wkby
 KpwDB7GbvVE/9JCoj/Tge9PJkDrwDxA2jWPDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680639528; x=1683231528;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=uqZDoQFwLADtMnBtNxdxK9p4TWtkU10tx8tohL83pCs=;
 b=A145ltf2GN1Z7pMOtA5hxvF6JsuWbSFwAHNULnrcMDs9epgOHb6X1VbVCKpZBcJ6aJ
 WRQmKjI5yLX1wOJ/OqWJsrJxE4oQ3Kp9LAvB8ts0ZdzEwHOt/7KITNb7OpQOUPixTGr+
 cNT37lSFEHtg+PtUpeoT681x4b1GbWnvsW+8dFtcOKJjYUXdCk/6RFFlYQIMmb/W9VZI
 hJPKluSTl22Bvf9jYAfVWDTSdjHPaAKxElNyZrgXb9FTKcUwk/pgj7D9IdzhXZMJWqPh
 okjD0ocfrfxizYo94odLnRFixpn4EiEJpUnorv3nIE2+ippKwdGuLqFGRoSd+50dlyTS
 5zdg==
X-Gm-Message-State: AAQBX9ecK9L3yjonkIfJx7nzFy6hZrveAVAfywNZV3mrdTqUmacrIK5x
 573kNDStNl/WLvFibYIvekfp+A==
X-Google-Smtp-Source: AKy350acmaUwpjPBTn+dd4wIoYoC/vBQsq9f/Fcnf1fdPDCrTSCrW+/E+C1vVPofPrARR1z/KiBevw==
X-Received: by 2002:a05:6402:268e:b0:502:ffd:74a1 with SMTP id
 w14-20020a056402268e00b005020ffd74a1mr41930edd.2.1680639528186; 
 Tue, 04 Apr 2023 13:18:48 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 u12-20020a50c04c000000b004d8d2735251sm6367986edd.43.2023.04.04.13.18.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Apr 2023 13:18:47 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  4 Apr 2023 22:18:38 +0200
Message-Id: <20230404201842.567344-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230404201842.567344-1-daniel.vetter@ffwll.ch>
References: <20230404201842.567344-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/8] video/aperture: Only kick vgacon when the
 pdev is decoding vga
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
Cc: linux-fbdev@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Javier Martinez Canillas <javierm@redhat.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Otherwise it's bit silly, and we might throw out the driver for the
screen the user is actually looking at. I haven't found a bug report
for this case yet, but we did get bug reports for the analog case
where we're throwing out the efifb driver.

v2: Flip the check around to make it clear it's a special case for
kicking out the vgacon driver only (Thomas)

References: https://bugzilla.kernel.org/show_bug.cgi?id=216303
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Javier Martinez Canillas <javierm@redhat.com>
Cc: Helge Deller <deller@gmx.de>
Cc: linux-fbdev@vger.kernel.org
---
 drivers/video/aperture.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/video/aperture.c b/drivers/video/aperture.c
index 8835d3bc39bf..552cffdb827b 100644
--- a/drivers/video/aperture.c
+++ b/drivers/video/aperture.c
@@ -341,13 +341,15 @@ int aperture_remove_conflicting_pci_devices(struct pci_dev *pdev, const char *na
 			return ret;
 	}
 
-	/*
-	 * WARNING: Apparently we must kick fbdev drivers before vgacon,
-	 * otherwise the vga fbdev driver falls over.
-	 */
-	ret = vga_remove_vgacon(pdev);
-	if (ret)
-		return ret;
+	if (primary) {
+		/*
+		 * WARNING: Apparently we must kick fbdev drivers before vgacon,
+		 * otherwise the vga fbdev driver falls over.
+		 */
+		ret = vga_remove_vgacon(pdev);
+		if (ret)
+			return ret;
+	}
 
 	return 0;
 
-- 
2.40.0

