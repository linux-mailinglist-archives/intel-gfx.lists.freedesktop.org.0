Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C2B207077
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2020 11:54:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A8436EAC2;
	Wed, 24 Jun 2020 09:54:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68E586EAC2
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 09:54:49 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id q5so1630336wru.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jun 2020 02:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=5QNg4iOXparqC+X/m65Y/FTp1iDasuSKv8BLAHgm/AI=;
 b=M33u7agyQKkUwiDTiApc5+FOi0Dvj8vtLn2IN49y2UrnE4KCQoXvkePfGM5/4n6d15
 /erW0nrSuOIJqAqIZ6mZaRtTZvFIR0CVVE9sRIR/MVdq5ef6a6kl6Da1HdzjXAp6Ri2e
 tLZdD/n2MRL9NZASm56WZq2doEFBk6TM2ztTnYYF30BnxPfBwMidfpbUL759djTgqP+u
 HTDWuaIauTTMRWFvTORV9JKVZmQ2RgMeU1IM4BDYL/1WwIbMuRofF8RIXYbmh6xUnnKu
 +eDVANjqk4Z4pfonLoxopyEM60yofgiEIeTum7BqGOU9jGRJSQAqodGanPebHv9x16gV
 OH2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5QNg4iOXparqC+X/m65Y/FTp1iDasuSKv8BLAHgm/AI=;
 b=mUHlEhL3cRUQ1lBFBAojuHizktLy9dnkJ8V5YOpuO/pWmeMgLljhCdh6XozI2ibZcA
 M6K77tgm1cAVbub5pAJtErNo3igYgBbKrW2QBXFNS/RrbzaB9LntdX5H9tFSlYOLmZsu
 DSDZ+8L26CnS57Z5AYEbWH65fofzC/DF9xe2vQOdxlRpgK2X4bER+VMpc/eMfgGCO9yX
 OFQbGdzgaI8e0oSN3WBy4Ul4j+wCWXwr9vP1wh/1wIz+L50h/amhwgxGRb1xzwvabMiz
 FVaddIratuWEgFoTlpBHSyGbv0/CZIFbdaK4hy0JYZfWunkyz5qTj46hos+dzPngXtNZ
 XSlA==
X-Gm-Message-State: AOAM5334ofmtgHpbEOfhKOEmoN+3FET7nI30zePD2bQxw3XcmZqiGjLG
 lU3tsHKw4eWbxwsKJzGGpCvKJGfp
X-Google-Smtp-Source: ABdhPJx8RBaOaYccHUiy8J06bUR7oLOf69DDXs51Fdr7q+cjoJiOovbzFuXcq7l+8q7j0brd389pWw==
X-Received: by 2002:a5d:4a42:: with SMTP id v2mr20887846wrs.33.1592992487964; 
 Wed, 24 Jun 2020 02:54:47 -0700 (PDT)
Received: from smtp.gmail.com ([2001:818:e238:a000:a4ba:2182:c4c1:3b20])
 by smtp.gmail.com with ESMTPSA id 67sm27433547wrk.49.2020.06.24.02.54.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jun 2020 02:54:47 -0700 (PDT)
Date: Wed, 24 Jun 2020 06:54:41 -0300
From: Melissa Wen <melissa.srw@gmail.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <3c0e76d37030f0d08fff3d8b424be8b8efa40955.1592991729.git.melissa.srw@gmail.com>
References: <cover.1592991729.git.melissa.srw@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1592991729.git.melissa.srw@gmail.com>
Subject: [Intel-gfx] [PATCH i-g-t 1/2] lib/igt_fb: change comments with fd
 description
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
Cc: rodrigosiqueiramelo@gmail.com, Rodrigo.Siqueira@amd.com,
 kernel-usp@googlegroups.com, aurabindo.pillai@amd.com,
 nicholas.kazlauskas@amd.com, twoerner@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Generalize description of fd so as not restrict it to i915 driver

Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
---
 lib/igt_fb.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/lib/igt_fb.c b/lib/igt_fb.c
index 5ed586e7..5a219c57 100644
--- a/lib/igt_fb.c
+++ b/lib/igt_fb.c
@@ -3548,7 +3548,7 @@ cairo_surface_t *igt_get_cairo_surface(int fd, struct igt_fb *fb)
 
 /**
  * igt_get_cairo_ctx:
- * @fd: open i915 drm file descriptor
+ * @fd: open drm file descriptor
  * @fb: pointer to an #igt_fb structure
  *
  * This initializes a cairo surface for @fb and then allocates a drawing context
@@ -3578,7 +3578,7 @@ cairo_t *igt_get_cairo_ctx(int fd, struct igt_fb *fb)
 
 /**
  * igt_put_cairo_ctx:
- * @fd: open i915 drm file descriptor
+ * @fd: open drm file descriptor
  * @fb: pointer to an #igt_fb structure
  * @cr: the cairo context returned by igt_get_cairo_ctx.
  *
@@ -3596,7 +3596,7 @@ void igt_put_cairo_ctx(int fd, struct igt_fb *fb, cairo_t *cr)
 
 /**
  * igt_remove_fb:
- * @fd: open i915 drm file descriptor
+ * @fd: open drm file descriptor
  * @fb: pointer to an #igt_fb structure
  *
  * This function releases all resources allocated in igt_create_fb() for @fb.
-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
