Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 108464A50D9
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 22:06:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B05810E492;
	Mon, 31 Jan 2022 21:06:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E49110E42D
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 21:06:40 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id h21so27909655wrb.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 13:06:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=maVDh36g+mbMxDQqKVsClyM2EENbHZLdIj/dxYmw5do=;
 b=Qcsxhy2o/dS11RJsdCfS9Bxk3l2q8JaeoimOSXKdnQQwY7aFMOzBCGs3z75BZLUfjP
 G5PY5jJU5KSJ23gLrVGnPRmbSww2IYvxZ0Ieehv+Gk524P056aEZJfV+u7yvV1LmpBj6
 v0MRUtj2qEfuN8Rj2tN9HSteIZLF/+MTHdjd0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=maVDh36g+mbMxDQqKVsClyM2EENbHZLdIj/dxYmw5do=;
 b=VCDmGo7BIcWUI9TS7kg6qAA7zG5gVD1AF1yQ3044xzapBr+nqFLyWlO0EuqBU8Rl+g
 TMoY27Mkh4qcfGBpDhv/673SGHwWvZ97s1DRRF7A8nZ8/ngi0Kd/lPOY24li1hTbFsZ9
 LvbEZtTg7On/cMavhqCNh6NPSU8fdw1U2qoOavLYbpJZ4naPp5Ro1229MZ+8vQZvL8aF
 l0WQAvMDEtIkJKFCo4U0fhSZS40rencG2n92Bxc1hu3/y4aI6iatjf9PRcBOFkejo9H7
 l2xwzVDSqSggG+K7OsUgd8bmBwYkMpcqGTanGbRMrXTPZ7PeBgPFaESltQkrVoDpSzbx
 qavg==
X-Gm-Message-State: AOAM531mdV2khoehtLpW/bvm7SDFjFhb/lsQ/ypm/wlvFWnv0+Dozbbl
 VeR1gn95EdWXpCueDhQUyUhagg==
X-Google-Smtp-Source: ABdhPJwUiYtIFsmkn1+ZKECUjh4jElDblVWqzeBW7WDzEcxIsGU9rssDBdn9pVrrCKK6rcDF8iLQ3w==
X-Received: by 2002:a05:6000:104e:: with SMTP id
 c14mr19310924wrx.252.1643663198814; 
 Mon, 31 Jan 2022 13:06:38 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b11sm314961wmq.46.2022.01.31.13.06.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Jan 2022 13:06:38 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 31 Jan 2022 22:05:35 +0100
Message-Id: <20220131210552.482606-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
References: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/21] fbcon: delete a few unneeded forward decl
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
 LKML <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I didn't bother with any code movement to fix the others, these just
got a bit in the way.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Helge Deller <deller@gmx.de>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Du Cheng <ducheng2@gmail.com>
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Cc: Claudio Suarez <cssk@net-c.es>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/video/fbdev/core/fbcon.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
index 39dc18a5de86..2a575620ef59 100644
--- a/drivers/video/fbdev/core/fbcon.c
+++ b/drivers/video/fbdev/core/fbcon.c
@@ -163,18 +163,7 @@ static int fbcon_cursor_noblink;
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
-static int fbcon_switch(struct vc_data *vc);
-static int fbcon_blank(struct vc_data *vc, int blank, int mode_switch);
 static void fbcon_set_palette(struct vc_data *vc, const unsigned char *table);
 
 /*
@@ -184,8 +173,8 @@ static void fbcon_set_disp(struct fb_info *info, struct fb_var_screeninfo *var,
 			   int unit);
 static void fbcon_modechanged(struct fb_info *info);
 static void fbcon_set_all_vcs(struct fb_info *info);
-static void fbcon_start(void);
 static void fbcon_exit(void);
+
 static struct device *fbcon_device;
 
 #ifdef CONFIG_FRAMEBUFFER_CONSOLE_ROTATION
-- 
2.33.0

