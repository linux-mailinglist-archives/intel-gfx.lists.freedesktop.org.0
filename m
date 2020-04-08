Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C43811A1A0A
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 04:42:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 613396E192;
	Wed,  8 Apr 2020 02:42:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com
 [IPv6:2607:f8b0:4864:20::831])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EFF96E192
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 02:42:03 +0000 (UTC)
Received: by mail-qt1-x831.google.com with SMTP id g7so4463107qtj.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Apr 2020 19:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Uk1qjv5hu6QjOnK4kjELwcyzcvfwXBHf4ZNjvhQDRbA=;
 b=G8H3nVixnqO35n0wjuHvKjGnfeB9ePRyONu+rbGK27NAaFT9Dunc1/sgGg41LXUWgJ
 wYx71cl2s9OPQPVkJSRD6tFp8bHREMqq5E9qHRK/j/vokLHredeJqxQhNYtozA9ief2c
 KfX1oNv7wtSf6F8BqPpHaNWDRfz2pvYfeJBxltL3aTwm4YfuAEgJj7X07McCcZco+8KQ
 b4ifhEVZQ1kw59WoRfQqqxCRB0xPKb78UH97b2oph13fBaqtfgPr2jYFCn35qvS7ruap
 rFCJmOvdoIdRSKIfSLgtcupmIfp/CCsB2etHoU/CzFnBa09vIvvXmLKfUelos8n1Vorh
 U7Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Uk1qjv5hu6QjOnK4kjELwcyzcvfwXBHf4ZNjvhQDRbA=;
 b=Zzqhcw4WJeA2v+bpLdTt16R9yA6YwC5D5WTsxLTglV8kYXC7nTsOLMjt3xUPeOrEys
 V8Au4JmpIl9uzHgh9Z0c2EDuYp5CNgcPGgnudNweAYCV0A9L/TvBExigO27lTgsRcrRK
 jACTDKGignZXpculxFctpxEnnS0vmz4tO9J/VT4r6JYmJGSL194/Geeidf2py9EmBz0+
 l8cBMqtC/017KV/bTtfmT6+sL/kmGGVKZVmVHqYZOZZy5+jTgbA/4e50yH3C6jnqzPWf
 BF4n1pZ98o39P7l4+9f3KGdOusowt3D2l8WSQpZnTRHvp7OnYPq4FWgNlJSCkHLOTPkh
 uQGQ==
X-Gm-Message-State: AGi0PuY7OdjpRB4C43C2pVqtebjrv9OulVDa38eDYDyur95nMBNlPRMy
 BAX15nPqYVMzX7UEncJoRVDY89jI
X-Google-Smtp-Source: APiQypL1YQxoV18y4uu05GwE5Gy6p8aDB2wIgLD4mRvkGiBmN+seaxqs7hnadhREJPM9Sjg9bzve7A==
X-Received: by 2002:ac8:4a98:: with SMTP id l24mr5470017qtq.223.1586313722248; 
 Tue, 07 Apr 2020 19:42:02 -0700 (PDT)
Received: from prosha.fios-router.home
 (pool-72-92-48-173.phlapa.fios.verizon.net. [72.92.48.173])
 by smtp.gmail.com with ESMTPSA id h11sm18019460qtr.38.2020.04.07.19.42.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 19:42:01 -0700 (PDT)
From: Alexei Podtelezhnikov <apodtele@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Apr 2020 22:41:33 -0400
Message-Id: <20200408024133.5699-1-apodtele@gmail.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH xf86-video-intel] sna: Fix double-free crashes
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
index 6a35067c..9865a912 100644
--- a/src/sna/kgem.c
+++ b/src/sna/kgem.c
@@ -3079,6 +3079,9 @@ static void kgem_buffer_release(struct kgem *kgem, struct kgem_buffer *bo)
 		assert(cached != &bo->base);
 		list_del(&cached->vma);
 
+               if (!cached->map__gtt)
+                       continue;
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
