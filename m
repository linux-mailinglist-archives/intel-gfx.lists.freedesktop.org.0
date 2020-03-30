Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDD31986DE
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 23:56:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC31D6E4CA;
	Mon, 30 Mar 2020 21:56:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE9056E4C7
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 21:56:44 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id h15so23514569wrx.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 14:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition;
 bh=urrKvHavJLqeo6wCQWBXZSAh0RXzmWmgVhE/NXfCmw4=;
 b=CNaGDbkONP83+1Nq2EDWXHXnXv2KujB+vHMkoc6e9n8ycEPrisoUo4GaUVuxEz27d8
 D9q3o8r8oEYen9kJlfi9bPiaezu0Jok9EUGWSIJV6wQAgkW9z/KfrUg1rFVjAUVMRbcr
 rzlHKy7v3eWyrXYs8ZRGzdXRHi1gc09DjZqCnrTFgmKoc2nqcftEBDUNktYuuIEyF5CM
 lyTlbBEPAQ5QzafUlQ3OuMoFQYLp6Bc34OWpS4QyJZ6BwWb77TcvazcbvkyzpnkdJXuj
 hIysmPJBR42sa6dXRZpo3/PcgPIziMW5o937XwxQPi4GBbkDKwvWKZzSi9+Xbnxv9jXl
 s1LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition;
 bh=urrKvHavJLqeo6wCQWBXZSAh0RXzmWmgVhE/NXfCmw4=;
 b=BFr37ht9bvCi0cM5tVsd/x8GC0UunYraWrR9wm7rna66FbrLq7CfMIZK9FTkHpSjBL
 eZ+RROZcGAMpF2bQ5g2IZlnW2OYt8Qtu2VQreQPOv9cf3BToxnrJCYesUQTcOPD5oDIr
 2CrIeI9DOVy5RVRRdnkIV5rwuEwItrk53b0db0GKbCPx0fK90uYcyfXek5jLpjOS8xM5
 S8WZ1iFBl42hiGqrRyFId8piL4Mwfk3lBE8dtrjGNg9NazPyXA/p6IH+LEshc4U1pa/x
 8VD9SVggnTTUKq3w0X9A3LqlgDmWWepE27ONlbjzODGaDlyLBduY2UVM/7Er4KDPn1Mz
 GdQg==
X-Gm-Message-State: ANhLgQ2vDij9zQY3BgQEbqoBw/B2kTPARuE9PFGN8W3LRsmraMIGNduO
 5XwbwhyMuraUOw+72zQocjrQII3np3A=
X-Google-Smtp-Source: ADFU+vsI0MSlfwlHs7rLFciG36/RttRl+rztjI/qO1RMVMJbQ1UeqpKmQSgb1CxBXHpDlyfZVWIPDw==
X-Received: by 2002:adf:f7cf:: with SMTP id a15mr16625157wrq.224.1585605403282; 
 Mon, 30 Mar 2020 14:56:43 -0700 (PDT)
Received: from smtp.gmail.com ([2001:818:e238:a000:51c6:2c09:a768:9c37])
 by smtp.gmail.com with ESMTPSA id s11sm24718147wrw.58.2020.03.30.14.56.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 14:56:42 -0700 (PDT)
Date: Mon, 30 Mar 2020 18:56:36 -0300
From: Melissa Wen <melissa.srw@gmail.com>
To: intel-gfx@lists.freedesktop.org, kernel-usp@googlegroups.com
Message-ID: <9e1e0051f2aaeeb4c3fbe9f54fee6b71f64876dd.1585582530.git.melissa.srw@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-gfx] [PATCH i-g-t] lib/igt_fb: change comments with fd
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Generalize description of fd since it is not restricted to i915 driver fd

Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
---
 lib/igt_fb.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/lib/igt_fb.c b/lib/igt_fb.c
index 0c4fdc5d..0fb8db12 100644
--- a/lib/igt_fb.c
+++ b/lib/igt_fb.c
@@ -1635,7 +1635,7 @@ igt_create_fb_with_bo_size(int fd, int width, int height,
 
 /**
  * igt_create_fb:
- * @fd: open i915 drm file descriptor
+ * @fd: open drm file descriptor
  * @width: width of the framebuffer in pixel
  * @height: height of the framebuffer in pixel
  * @format: drm fourcc pixel format code
@@ -1663,7 +1663,7 @@ unsigned int igt_create_fb(int fd, int width, int height, uint32_t format,
 
 /**
  * igt_create_color_fb:
- * @fd: open i915 drm file descriptor
+ * @fd: open drm file descriptor
  * @width: width of the framebuffer in pixel
  * @height: height of the framebuffer in pixel
  * @format: drm fourcc pixel format code
@@ -1704,7 +1704,7 @@ unsigned int igt_create_color_fb(int fd, int width, int height,
 
 /**
  * igt_create_pattern_fb:
- * @fd: open i915 drm file descriptor
+ * @fd: open drm file descriptor
  * @width: width of the framebuffer in pixel
  * @height: height of the framebuffer in pixel
  * @format: drm fourcc pixel format code
@@ -1741,7 +1741,7 @@ unsigned int igt_create_pattern_fb(int fd, int width, int height,
 
 /**
  * igt_create_color_pattern_fb:
- * @fd: open i915 drm file descriptor
+ * @fd: open drm file descriptor
  * @width: width of the framebuffer in pixel
  * @height: height of the framebuffer in pixel
  * @format: drm fourcc pixel format code
@@ -1784,7 +1784,7 @@ unsigned int igt_create_color_pattern_fb(int fd, int width, int height,
 
 /**
  * igt_create_image_fb:
- * @drm_fd: open i915 drm file descriptor
+ * @drm_fd: open drm file descriptor
  * @width: width of the framebuffer in pixel or 0
  * @height: height of the framebuffer in pixel or 0
  * @format: drm fourcc pixel format code
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
