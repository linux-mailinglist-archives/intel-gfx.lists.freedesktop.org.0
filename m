Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E2A4AE2D5
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 22:08:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FDF310E252;
	Tue,  8 Feb 2022 21:08:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A46F510E252
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 21:08:31 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 l35-20020a05600c1d2300b0034d477271c1so162361wms.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Feb 2022 13:08:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1IuiSyqatCt+l1wk5WgkOInkMrehuaZuz9Mxu04TsqY=;
 b=avHkOSu+x6pfmx4+fLtEewoBxnRMkJmK8t/rEpPIL34bWtfdlDa2+3sCJJZi5z4PuV
 ckFrSEhaJ0yEOaXqGl9xGK8CTEVT5ZIucUpSjA4gWTpu5UtAWEHI7DaOygEQd+miUzVZ
 fXH6kBN8oggwje5UwlVqhRF2IcoTAxLW3cqWs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1IuiSyqatCt+l1wk5WgkOInkMrehuaZuz9Mxu04TsqY=;
 b=fQEia+HMkg5SIv3VVatnQQ6Izbrc4dDJHQt1hXCHZdb1VDF2CNkk5YfL3H4SIR5pVt
 W91X263ps9Qv9XYW5d5Jie+7Fz9asuy7AhBEDooJPnDN+FceTusaTxUnxRz4IfDLd6pH
 /8iW2gaXj9CauJK9/MuS84IvD5wTD5Lf57I0NS7+DIuCXDEyk5ldQdzS13bZ4cEx/oWt
 VY4dQ0vKDxgpG+TTbkD3hzN3KqSqpSXTjPn8M7hINsD6bpJG9/Yu8I9BxQEU6SG07SSJ
 BaXaoN34OsSD0HpZ08zAurY2MI2ykWBaNmdHF6Tkss1x1dZsppflAbf0j3rxNEHnaJTu
 8L2Q==
X-Gm-Message-State: AOAM530hE7RMCsrqfUWo/vxqtQy3iOjeRqC+J4s4uXiPVawUZTA3dKnC
 Fj4TGCElorg1iljLX5MsXqAClQ==
X-Google-Smtp-Source: ABdhPJyUoNAHSJRgncTABvPUK493XLqXy+tMNLIpUB+u6ODVBYoOWnDUowuWpfEK97CmfZnMhYogLg==
X-Received: by 2002:a1c:7915:: with SMTP id l21mr2580207wme.154.1644354510218; 
 Tue, 08 Feb 2022 13:08:30 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o14sm3033561wmr.3.2022.02.08.13.08.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 13:08:29 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  8 Feb 2022 22:08:06 +0100
Message-Id: <20220208210824.2238981-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220208210824.2238981-1-daniel.vetter@ffwll.ch>
References: <20220208210824.2238981-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/19] fbcon: delete a few unneeded forward
 decl
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
Cc: linux-fbdev@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Du Cheng <ducheng2@gmail.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I didn't bother with any code movement to fix the others, these just
got a bit in the way.

v2: Rebase on top of Helge's reverts.

Acked-by: Sam Ravnborg <sam@ravnborg.org> (v1)
Reviewed-by: Geert Uytterhoeven <geert@linux-m68k.org> (v1)
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Helge Deller <deller@gmx.de>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Du Cheng <ducheng2@gmail.com>
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Cc: Claudio Suarez <cssk@net-c.es>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/video/fbdev/core/fbcon.c | 17 +----------------
 1 file changed, 1 insertion(+), 16 deletions(-)

diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
index 2fc1b80a26ad..235eaab37d84 100644
--- a/drivers/video/fbdev/core/fbcon.c
+++ b/drivers/video/fbdev/core/fbcon.c
@@ -163,29 +163,14 @@ static int fbcon_cursor_noblink;
  *  Interface used by the world
  */
 
-static const char *fbcon_startup(void);
-static void fbcon_init(struct vc_data *vc, int init);
-static void fbcon_deinit(struct vc_data *vc);
-static void fbcon_clear(struct vc_data *vc, int sy, int sx, int height,
-			int width);
-static void fbcon_putc(struct vc_data *vc, int c, int ypos, int xpos);
-static void fbcon_putcs(struct vc_data *vc, const unsigned short *s,
-			int count, int ypos, int xpos);
 static void fbcon_clear_margins(struct vc_data *vc, int bottom_only);
-static void fbcon_cursor(struct vc_data *vc, int mode);
 static void fbcon_bmove(struct vc_data *vc, int sy, int sx, int dy, int dx,
 			int height, int width);
-static int fbcon_switch(struct vc_data *vc);
-static int fbcon_blank(struct vc_data *vc, int blank, int mode_switch);
 static void fbcon_set_palette(struct vc_data *vc, const unsigned char *table);
 
 /*
  *  Internal routines
  */
-static __inline__ void ywrap_up(struct vc_data *vc, int count);
-static __inline__ void ywrap_down(struct vc_data *vc, int count);
-static __inline__ void ypan_up(struct vc_data *vc, int count);
-static __inline__ void ypan_down(struct vc_data *vc, int count);
 static void fbcon_bmove_rec(struct vc_data *vc, struct fbcon_display *p, int sy, int sx,
 			    int dy, int dx, int height, int width, u_int y_break);
 static void fbcon_set_disp(struct fb_info *info, struct fb_var_screeninfo *var,
@@ -194,8 +179,8 @@ static void fbcon_redraw_move(struct vc_data *vc, struct fbcon_display *p,
 			      int line, int count, int dy);
 static void fbcon_modechanged(struct fb_info *info);
 static void fbcon_set_all_vcs(struct fb_info *info);
-static void fbcon_start(void);
 static void fbcon_exit(void);
+
 static struct device *fbcon_device;
 
 #ifdef CONFIG_FRAMEBUFFER_CONSOLE_ROTATION
-- 
2.34.1

