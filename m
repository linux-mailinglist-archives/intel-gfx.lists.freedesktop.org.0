Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 543CE3CEAFE
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jul 2021 20:31:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A91089DE6;
	Mon, 19 Jul 2021 18:30:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4854F89D56
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 18:30:55 +0000 (UTC)
Received: by mail-pf1-x42c.google.com with SMTP id j199so17215694pfd.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 11:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dnXFAvNsp4VhwTehs3gkAabKcxBUBsGHtr27v2mGrwU=;
 b=Yzy6Q+lPCBSRFI4vehA0kxzDLPBF7/hOVr4BjpL8Io9yxSv8qQtUoOJMGf/0fymsoh
 fnpn5R7U+E3x3jmy1ldUDvHp5DQbgn12tf6W+u4uuYWouCjEdwxQW25Wat8vg+AAZ/Ar
 x9CAyTUJt71AaUqXRV0grYiHXzjJKgJsnweeoWJ21fw4wENyJs+WSeh4CLSHEdIBLgWx
 FeA5RYp3Xx0GvCmPpAYf1rNEKmNkyKKhehYx6lmMkuCEPZ0De8UQ9LxviNS4Aeikjc6x
 Pnq8Md0pqG93wLd8G79a6li9ayo2Zb9QBmhT1qQCTrZwtsPQ9aKB3s9T0X2A3xirKm8A
 XE6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dnXFAvNsp4VhwTehs3gkAabKcxBUBsGHtr27v2mGrwU=;
 b=Y/cWINwkhJBm4kjMsYP8103pvF/DFB2lsZ4WA4S04b7mRTOiLA92AgbHHqsjjfAhey
 MJYpcDlceE+sVXgO0bXXE4EJiznWwcW1o2YZdjvRc63TnN05dfKeyi2GZ0bS1WYOhU1s
 IM0KivXO5mA25NslfgZAMMjwo6r2DrDx/+VjLy17LKp7OHNT5gHd7mJwVr5kmnxiSONK
 Ql78qr/ecvcspstQnIIOhtEapIMLgAzBvQ0s3ctx95kqU/lVDK1NVruXica8MnggzNJ2
 sD61unpT/dbJwmGYCu5Hw3mhTGkTzfFUhTceTDRoNKAv/cBi4i2Aav/PD7wVLq36je5D
 D5UA==
X-Gm-Message-State: AOAM533GO04eLt5E4fQBPGDql/5mBqr1hF3xaIQJz0oMPbqDJjjgDbuD
 WiAZkUG22fzYW4+wJYxxTXuxvYvzwQdS4w==
X-Google-Smtp-Source: ABdhPJwFGcpS1KY6LYWmB3ab+eMdliHYuXyUCL+z1ob55EJrr6OGXEf8Yd5gCa5vFeNzEKQBgU9oUA==
X-Received: by 2002:a63:d84b:: with SMTP id k11mr26769538pgj.372.1626719454638; 
 Mon, 19 Jul 2021 11:30:54 -0700 (PDT)
Received: from omlet.com ([134.134.137.83])
 by smtp.gmail.com with ESMTPSA id w23sm6961555pfc.60.2021.07.19.11.30.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Jul 2021 11:30:54 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 19 Jul 2021 13:30:43 -0500
Message-Id: <20210719183047.2624569-3-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210719183047.2624569-1-jason@jlekstrand.net>
References: <20210719183047.2624569-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: Call i915_globals_exit() if
 pci_register_device() fails
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In the unlikely event that pci_register_device() fails, we were tearing
down our PMU setup but not globals.  This leaves a bunch of memory slabs
lying around.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Fixes: 32eb6bcfdda9 ("drm/i915: Make request allocation caches global")
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 drivers/gpu/drm/i915/i915_globals.c | 4 ++--
 drivers/gpu/drm/i915/i915_pci.c     | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_globals.c b/drivers/gpu/drm/i915/i915_globals.c
index 77f1911c463b8..87267e1d2ad92 100644
--- a/drivers/gpu/drm/i915/i915_globals.c
+++ b/drivers/gpu/drm/i915/i915_globals.c
@@ -138,7 +138,7 @@ void i915_globals_unpark(void)
 	atomic_inc(&active);
 }
 
-static void __exit __i915_globals_flush(void)
+static void __i915_globals_flush(void)
 {
 	atomic_inc(&active); /* skip shrinking */
 
@@ -148,7 +148,7 @@ static void __exit __i915_globals_flush(void)
 	atomic_dec(&active);
 }
 
-void __exit i915_globals_exit(void)
+void i915_globals_exit(void)
 {
 	GEM_BUG_ON(atomic_read(&active));
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 50ed93b03e582..4e627b57d31a2 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1230,6 +1230,7 @@ static int __init i915_init(void)
 	err = pci_register_driver(&i915_pci_driver);
 	if (err) {
 		i915_pmu_exit();
+		i915_globals_exit();
 		return err;
 	}
 
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
