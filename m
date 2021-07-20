Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CAE3D0157
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 20:14:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DF8C6E4A1;
	Tue, 20 Jul 2021 18:14:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88CC76E3C4
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 18:14:08 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id e14so9066004plh.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 11:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lE5imCQIk9KskralIlWDyDnEk557cQKh31aZ6Ny2Za4=;
 b=m9/3HwEEd72dtO6ViyaBE2hGgSjPTjhsWCsUIQAez/ED9EvvRubwAkbBdMC8BKEUm+
 xPdE963DTXq4WT5/QPCsFk0I02xtoJJILdcpHfGvOXVcFbiF6Y+knTV5EJxfHrX44wuy
 5gL33d0d0x2iHbd8ULDVJxfqol0P4ystkjOEuuwfLrSq8GGvNCE4whw/vH0BlcQB7SeI
 i7yXrLKs00CwwA/dZVTqKx0UJrtbKq13wFgultuudS/leUFWRhcib/HbInhqRN188QUo
 +wsDlUTBE3iLlYPaeuRk6eGGYRzTZEOUmBQT3vWC5m38rwaO7RJEnhXPvVx91/sUUWtf
 TWBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lE5imCQIk9KskralIlWDyDnEk557cQKh31aZ6Ny2Za4=;
 b=k6JwbznnmwJMuc/hIN37mO/FfuDtw2GUiB1cFaFd7wzOkFpw5hzJ0b1Qz4Xag4xTog
 9nUiMgpN3pHZOUFgDCOAPxK6/sDOnJ02BHfBSh63brTefKmxO5Td8dJ3uTIeg6+2lwpE
 0+2WXmsElLjbP3nL79LG53CeqlqUOrVR8pZoYLwGPWLvxWRxkIYlEpAz9CVBiadgbWvM
 +Sghe6uR1es9AsfYQGLQColmtWsh4HLvtyG+sus8WCdb291wFNGluDAuMJYWeJ1PN+iU
 U/38s07vnM5vzLvhNkVCPk0G4/S/MPi3ZlCS7v9zcPBct0TQlotcOzldIXuXkG+7XNgU
 Z1bw==
X-Gm-Message-State: AOAM531lV0xPVEiU/1JUq31YcEFgMcQar+0qoyXJINd4g9FoA+INdKwj
 xvEaqDaBbM39efauXceu5xj9BhPpMRsZ/Q==
X-Google-Smtp-Source: ABdhPJxP8bR4n6E5cm9kuDPX7RuWfcrhXbfGfM45xb6JYfWKlfhp7nWOnhf9jR331/3up7fydSx/Bw==
X-Received: by 2002:a17:90a:5b10:: with SMTP id
 o16mr30750979pji.76.1626804847846; 
 Tue, 20 Jul 2021 11:14:07 -0700 (PDT)
Received: from omlet.lan ([134.134.137.86])
 by smtp.gmail.com with ESMTPSA id c2sm26436573pgh.82.2021.07.20.11.14.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Jul 2021 11:14:07 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 20 Jul 2021 13:13:53 -0500
Message-Id: <20210720181357.2760720-3-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210720181357.2760720-1-jason@jlekstrand.net>
References: <20210720181357.2760720-1-jason@jlekstrand.net>
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In the unlikely event that pci_register_device() fails, we were tearing
down our PMU setup but not globals.  This leaves a bunch of memory slabs
lying around.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Fixes: 32eb6bcfdda9 ("drm/i915: Make request allocation caches global")
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
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
