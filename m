Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A8F1AB671
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 05:57:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02A126EAC4;
	Thu, 16 Apr 2020 03:57:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com
 [IPv6:2607:f8b0:4864:20::72e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CD646EAC4
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Apr 2020 03:57:36 +0000 (UTC)
Received: by mail-qk1-x72e.google.com with SMTP id g74so19933078qke.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 20:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ougL3oWIWpRG5EFY46hodXJQh5WVi7bgjxxZ7TgwneE=;
 b=Ao5ebCWYLh9AQHB4d492wNtwKhd9d+vO07SzpQ2Fe2j+BOgO1I8eP/2GAeoyWt2/za
 Fr2x3cOpkAeu8fvGNA+SYEfR20GUVara+RpK2KZcUoft639j9NcdqObd/HxMRa6Hr1ds
 EsarKCWFKzu70GD8YS+vt2hCmycv2kHCqcE8EBgI5xg29wzFykr2umwfaWknXOc3zyQE
 Ydc56DIkxwoPCyV4KErJYsE7Z6gYXbKOf6DvSyQ7pBlyxXytXjuAVql5iNZNvAtBsq/j
 Tn8UdvzvHpEqb416GYZSKOd+ZS+V2PfRNYQZ28Q/PX47nOBk8yQmCfgxpdh5LXMQxEJi
 HMKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ougL3oWIWpRG5EFY46hodXJQh5WVi7bgjxxZ7TgwneE=;
 b=WDHhzyXtwgWkAAt1Uhs+qftkOwFLdUwOQTN4Hv56WhU0QAxVKwa8cnysUci1vq5y3n
 FHKdpDPOlZCbU32MR8zBnLb4bS7HoeoUusO78gxviZIHpIqN2k/qEDajQPqC1OT7220F
 CVfsFl3F4AeeRyBlQw0pgIMNUU8Gp3/yQYnUtFvSNuBUlqy0giBh6FpBsmwBJdWzQeb4
 T/fx4WVjqvVGw09CLY4RPS0BjEYhW1SgSB3VC44zlQTvaJKP1dvBQ5GsMLbKaM9UV/sO
 N+ZhMvLjhc7+vdDNvQlSQ5K8aAu3YfoQkzoP/l7eKEAVCCMfXmMOlzHPd5hrF+f4VY5f
 ciTw==
X-Gm-Message-State: AGi0PuZgGHpXGQx8vJicPsE0cJRJV30xdUVqD/KvxbsiqRcEY+yp83mU
 EYM55sDuriUbEw/lAbnyPl2g98zTRnc=
X-Google-Smtp-Source: APiQypJvqo+8BcTEVD3lqBNxHYvVLcfO5C61buAGuN3BHcMhdi55whmYA47MkZ7mG41lYeYt790Ylw==
X-Received: by 2002:a37:b03:: with SMTP id 3mr28372629qkl.67.1587009455232;
 Wed, 15 Apr 2020 20:57:35 -0700 (PDT)
Received: from prosha.fios-router.home
 (pool-72-92-48-173.phlapa.fios.verizon.net. [72.92.48.173])
 by smtp.gmail.com with ESMTPSA id p11sm5883510qki.25.2020.04.15.20.57.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 20:57:34 -0700 (PDT)
From: Alexei Podtelezhnikov <apodtele@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Apr 2020 23:56:11 -0400
Message-Id: <20200416035611.24604-1-apodtele@gmail.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [patch xf86-video-intel] sna: fix --enable-debug=full
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
Cc: Alexei Podtelezhnikov <apotele@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Alexei Podtelezhnikov <apotele@gmail.com>

Once a typo is fixed, the debug build triggers an assertion failure.
Given that the normal build is just fine, the assert might be wrong.

Signed-off-by: Alexei Podtelezhnikov <apotele@gmail.com>
---
 src/sna/compiler.h  | 2 +-
 src/sna/sna_accel.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/src/sna/compiler.h b/src/sna/compiler.h
index 2e579b15..c3d98797 100644
--- a/src/sna/compiler.h
+++ b/src/sna/compiler.h
@@ -50,7 +50,7 @@
 #define must_check
 #define constant
 #define pure
-#define tighly_packed
+#define tightly_packed
 #define flatten
 #define nonnull
 #define page_aligned
diff --git a/src/sna/sna_accel.c b/src/sna/sna_accel.c
index ee857a14..bf1edec8 100644
--- a/src/sna/sna_accel.c
+++ b/src/sna/sna_accel.c
@@ -17410,7 +17410,7 @@ void sna_accel_flush(struct sna *sna)
 			assert(!priv->flush);
 			ret = sna_pixmap_move_to_cpu(priv->pixmap,
 						     MOVE_READ | MOVE_WRITE);
-			assert(!ret || priv->gpu_bo == NULL);
+			assert(ret || priv->gpu_bo == NULL);
 			if (priv->pixmap->refcnt == 0) {
 				sna_damage_destroy(&priv->cpu_damage);
 				__sna_free_pixmap(sna, priv->pixmap, priv);
--
2.26
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
