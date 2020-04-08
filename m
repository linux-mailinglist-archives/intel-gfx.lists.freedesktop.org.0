Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0619C1A1A32
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 05:09:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12FBD6E948;
	Wed,  8 Apr 2020 03:09:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com
 [IPv6:2607:f8b0:4864:20::82e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 515306E948
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 03:09:37 +0000 (UTC)
Received: by mail-qt1-x82e.google.com with SMTP id g7so4499111qtj.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Apr 2020 20:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5BgLEkA3tX4kbJ1altgRHLdvz/uOxpeB4J34QTXhVMw=;
 b=VSQLNsTUORwFxkPK0cVFXgqWLPnPtnY/X3cqLbCGOUIufJ+8meb4LYUl1m5kfOJk/v
 i+n5xtmR9fR/iI/PJAW2luuea3WxenFhS3Y4HdeHBO0YDDEvG0xLbY5AP4OtLtE943rM
 RjJvK8Aw4A5qwM2X6Jux9Zk70Q599F0xFs6c3wvdK3wem9DTDZgcrlY1OP0xrE3WbO7U
 3rQ8fJzfLU2Ew9fa+jld3N+gL/OH8bQQ4GaDIrEWYDCPFNgZfGPgzlSUjdXMN8w3xg+b
 XsItvZDllm8D0RS+IYIbDxDBXSlZAIC1KkzUol9pE06+vQZMm4zO2u4hUGBGLRAb/hIE
 TGMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5BgLEkA3tX4kbJ1altgRHLdvz/uOxpeB4J34QTXhVMw=;
 b=D2HU2mJ5Dr/BxJWmYsgrkTXhKi65/jGJNBMcrFjCWMsrecwC/Qo6QBYtprYtza5jrH
 oVNcE/o4tIDWx6z2jfx965joc0tWLyZi5IaDDxSWqtkSJwePBgMzx/kUwOXR3GCn0jjI
 ycxwocbPEhviZCG4DyoJcJVMwv5Zdq5MgSxyhvRBTUy56tecegE3+9PF6Oz66+KtDsC9
 W4Lmqx28UYUQZzbIu+yDaq1tpFR0MDLkk/YwHjsZDOFMSmnC4NEU3qTsfFjq5bKV6KGp
 Q4tDj+WPMoWr8QvM2bMMiuklXXc76oYyUVl/XModEoR0lzXWVLiyFhgBC8hXNKBDyuFH
 6mmQ==
X-Gm-Message-State: AGi0PuZGRDxs20PLMNnA29Ec1i/Ms9rpsYNOmK/dofo/ssZINLeHwT3q
 /vuDjyNrAJr5igJo2MAdgCRJ7zVG
X-Google-Smtp-Source: APiQypIBeFVBpLQkNi+jaJMWn4CrbjZcEZ+/QBaT5VfOSlCUZQx2HmycxpV6MyX2zGLFZlIvdgxr3w==
X-Received: by 2002:ac8:76c4:: with SMTP id q4mr5528538qtr.375.1586315375946; 
 Tue, 07 Apr 2020 20:09:35 -0700 (PDT)
Received: from prosha.fios-router.home
 (pool-72-92-48-173.phlapa.fios.verizon.net. [72.92.48.173])
 by smtp.gmail.com with ESMTPSA id f138sm5449947qke.105.2020.04.07.20.09.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 20:09:34 -0700 (PDT)
From: Alexei Podtelezhnikov <apodtele@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Apr 2020 23:09:21 -0400
Message-Id: <20200408030921.6436-1-apodtele@gmail.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel] sna: Fix double-free crashes.
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

Fix double-free crashes.
See https://bugzilla.redhat.com/show_bug.cgi?id=1808767

Signed-off-by:  Alexei Podtelezhnikov <apodtele@gmail.com>
---
 src/sna/kgem.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/src/sna/kgem.c b/src/sna/kgem.c
index 6a35067c..76bb1599 100644
--- a/src/sna/kgem.c
+++ b/src/sna/kgem.c
@@ -3079,6 +3079,9 @@ static void kgem_buffer_release(struct kgem *kgem, struct kgem_buffer *bo)
 		assert(cached != &bo->base);
 		list_del(&cached->vma);
 
+		if (!cached->map__gtt)
+			continue;
+
 		assert(*(struct kgem_bo **)cached->map__gtt == cached);
 		*(struct kgem_bo **)cached->map__gtt = NULL;
 		cached->map__gtt = NULL;
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
