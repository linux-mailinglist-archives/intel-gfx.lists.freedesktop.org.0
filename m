Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3F229E8B6
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Oct 2020 11:14:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56F926EC8A;
	Thu, 29 Oct 2020 10:14:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 748476E8D4
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Oct 2020 10:14:36 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id b8so2136581wrn.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Oct 2020 03:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3xLwqavLEfI6S7Sf/hHTcoVdcW3yZU6lj17X6N8jmZ8=;
 b=VAhn0MwNmRFS/TtR43HG81BRDZNgyhJR7nupYDtYveCVblI/Ru9c3VDS4k6dOEG+ow
 xFykCXZYviJf/d/N+7r5OdFI1Gk2/419w3SgnCws3Y/x4NtfsdFWBvctOG0CVLNv3nlt
 CAyKmcCcNiyqMC6kiGzaUUGv1zcFKKviS8EOs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3xLwqavLEfI6S7Sf/hHTcoVdcW3yZU6lj17X6N8jmZ8=;
 b=adFqnpU7jvItbA7eQKMwU68EEwjaMXh6CHZhCPUz+9Mw8PbGmFVBhLNfeOAg/g0do+
 s/gtoaW5jjdPARbvrObj4zAr2qs0miGN5h4H77ZfTXReKdyOZgFfG/tZ7deX+huaxqfv
 h0n4VcgVWZZX11k04r5hZdtV2IGs/h0scbDKY0h998GeeASWt4xO4x9CRJo4HoKWTkcu
 2S3XwmiL8yDqwULzG/WBLoUA415yNBNQqc3ZCerLeCEDGtnzrV39x5WNaJPF0VXp8Jvm
 wLteUu2JGnAjdLjKe3qCfw/+XwpyP6D2tXXGwtW0I+SvZqwdl3PEID8AkQFBYbJB9lSy
 34oQ==
X-Gm-Message-State: AOAM533myGzeUkZQfnPK5jtoshC6S6DlfHiptgW6Otkdzi7u8jU0E4Tv
 GcuwLaagVCRuXZoWVtvEcnPEZQ==
X-Google-Smtp-Source: ABdhPJxk3YZuHT7HzHvs6syH8na4CI09hYCFjsNS/ZxeXdHm2mAJRYXON2CS4G2brpLGbIdmGyAkUA==
X-Received: by 2002:adf:c3c2:: with SMTP id d2mr4703353wrg.191.1603966475106; 
 Thu, 29 Oct 2020 03:14:35 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id e5sm3897753wrw.93.2020.10.29.03.14.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Oct 2020 03:14:34 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 29 Oct 2020 11:14:27 +0100
Message-Id: <20201029101428.4058311-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201029101428.4058311-1-daniel.vetter@ffwll.ch>
References: <20201029101428.4058311-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] fbcon: Drop EXPORT_SYMBOL
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
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Peilin Ye <yepeilin.cs@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Jiri Slaby <jirislaby@kernel.org>,
 Helge Deller <deller@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Every since

commit 6104c37094e729f3d4ce65797002112735d49cd1
Author: Daniel Vetter <daniel.vetter@ffwll.ch>
Date:   Tue Aug 1 17:32:07 2017 +0200

    fbcon: Make fbcon a built-time depency for fbdev

these are no longer distinct loadable modules, so exporting symbols is
kinda pointless.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Jiri Slaby <jirislaby@kernel.org>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Cc: Helge Deller <deller@gmx.de>
Cc: Peilin Ye <yepeilin.cs@gmail.com>
---
 drivers/video/fbdev/core/bitblit.c      | 3 ---
 drivers/video/fbdev/core/fbcon_ccw.c    | 1 -
 drivers/video/fbdev/core/fbcon_cw.c     | 1 -
 drivers/video/fbdev/core/fbcon_rotate.c | 1 -
 drivers/video/fbdev/core/fbcon_ud.c     | 1 -
 drivers/video/fbdev/core/softcursor.c   | 2 --
 drivers/video/fbdev/core/tileblit.c     | 2 --
 7 files changed, 11 deletions(-)

diff --git a/drivers/video/fbdev/core/bitblit.c b/drivers/video/fbdev/core/bitblit.c
index 9725ecd1255b..f98e8f298bc1 100644
--- a/drivers/video/fbdev/core/bitblit.c
+++ b/drivers/video/fbdev/core/bitblit.c
@@ -404,6 +404,3 @@ void fbcon_set_bitops(struct fbcon_ops *ops)
 	if (ops->rotate)
 		fbcon_set_rotate(ops);
 }
-
-EXPORT_SYMBOL(fbcon_set_bitops);
-
diff --git a/drivers/video/fbdev/core/fbcon_ccw.c b/drivers/video/fbdev/core/fbcon_ccw.c
index bbd869efd03b..9cd2c4b05c32 100644
--- a/drivers/video/fbdev/core/fbcon_ccw.c
+++ b/drivers/video/fbdev/core/fbcon_ccw.c
@@ -409,4 +409,3 @@ void fbcon_rotate_ccw(struct fbcon_ops *ops)
 	ops->cursor = ccw_cursor;
 	ops->update_start = ccw_update_start;
 }
-EXPORT_SYMBOL(fbcon_rotate_ccw);
diff --git a/drivers/video/fbdev/core/fbcon_cw.c b/drivers/video/fbdev/core/fbcon_cw.c
index a34cbe8e9874..88d89fad3f05 100644
--- a/drivers/video/fbdev/core/fbcon_cw.c
+++ b/drivers/video/fbdev/core/fbcon_cw.c
@@ -392,4 +392,3 @@ void fbcon_rotate_cw(struct fbcon_ops *ops)
 	ops->cursor = cw_cursor;
 	ops->update_start = cw_update_start;
 }
-EXPORT_SYMBOL(fbcon_rotate_cw);
diff --git a/drivers/video/fbdev/core/fbcon_rotate.c b/drivers/video/fbdev/core/fbcon_rotate.c
index ac72d4f85f7d..df6b469aa2c2 100644
--- a/drivers/video/fbdev/core/fbcon_rotate.c
+++ b/drivers/video/fbdev/core/fbcon_rotate.c
@@ -110,4 +110,3 @@ void fbcon_set_rotate(struct fbcon_ops *ops)
 		break;
 	}
 }
-EXPORT_SYMBOL(fbcon_set_rotate);
diff --git a/drivers/video/fbdev/core/fbcon_ud.c b/drivers/video/fbdev/core/fbcon_ud.c
index 199cbc7abe35..8d5e66b1bdfb 100644
--- a/drivers/video/fbdev/core/fbcon_ud.c
+++ b/drivers/video/fbdev/core/fbcon_ud.c
@@ -436,4 +436,3 @@ void fbcon_rotate_ud(struct fbcon_ops *ops)
 	ops->cursor = ud_cursor;
 	ops->update_start = ud_update_start;
 }
-EXPORT_SYMBOL(fbcon_rotate_ud);
diff --git a/drivers/video/fbdev/core/softcursor.c b/drivers/video/fbdev/core/softcursor.c
index fc93f254498e..29e5b21cf373 100644
--- a/drivers/video/fbdev/core/softcursor.c
+++ b/drivers/video/fbdev/core/softcursor.c
@@ -74,5 +74,3 @@ int soft_cursor(struct fb_info *info, struct fb_cursor *cursor)
 	info->fbops->fb_imageblit(info, image);
 	return 0;
 }
-
-EXPORT_SYMBOL(soft_cursor);
diff --git a/drivers/video/fbdev/core/tileblit.c b/drivers/video/fbdev/core/tileblit.c
index 628fe5e010c0..7539ae9040f8 100644
--- a/drivers/video/fbdev/core/tileblit.c
+++ b/drivers/video/fbdev/core/tileblit.c
@@ -151,5 +151,3 @@ void fbcon_set_tileops(struct vc_data *vc, struct fb_info *info)
 		info->tileops->fb_settile(info, &map);
 	}
 }
-
-EXPORT_SYMBOL(fbcon_set_tileops);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
