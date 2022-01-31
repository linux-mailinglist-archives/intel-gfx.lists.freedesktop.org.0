Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFFD4A50EE
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 22:07:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3276A10E537;
	Mon, 31 Jan 2022 21:06:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 451EB10E50C
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 21:06:49 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id n8so11190413wmk.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 13:06:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3hWiJw8I0v/FhKndgqc2O30e2FmZYwhYniGtWb90tWY=;
 b=HHQSy572JqEYwMH+XAImxbYANsnDK/FocLe1VGb5+1HoyTQOlf6pkJdzMLp+bQVtjl
 6nGB7Yu3HDEDy7AAoG4b1oLVSDRpa9s5ddsKnU8r6m1P82LiOt+SAZcWqZYeQWPQARgU
 WXr3wNTQE3KehfvQbrgyI6k9xn3+ZGRP2IBiM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3hWiJw8I0v/FhKndgqc2O30e2FmZYwhYniGtWb90tWY=;
 b=6ExaHpxAvqavnQii+G3GiaqO1J9/quRBKxrHFgnC9apB3CmqugBdjRpYHBpp/0JbNE
 2xbYRGBFWAkjZPZKySKnm3IHRg38JUY2Lnl/mF+XoxlYecIqhekYJaBFLLnbi56+1jvY
 uIbM+fbxBTdwc5uZ7xq49g6hqrtMyXDXulj7NsBI5iS9o3VzcVF08ObhOPCTDmb/L3qM
 Rm+WHqYUgJQamE1HBmC8bCki5XTdhECiL8UDipBgngcKHOb2mkffoQ+vLrQ7Sd0f75qv
 GnMCnGbCtxEmo43yXFbzhj5m35Pzk/YwD4qjoEGEHQ1IexvBhz77vPAr2ABXUAP/DRm4
 od6w==
X-Gm-Message-State: AOAM532gCYOCk0qMGpr/Itao4UGDVxuovM0SSqUzjV+dq5hP2/KQsOah
 ZPJ8yRCSr1usn80XcSmmH2JO1w==
X-Google-Smtp-Source: ABdhPJxUkcP7tvQC/1g/mrtlDB25tdXfgU7PSiuLoapLSdk12hfg/ro1vp1kr0Y7TNymzUpLM79pKg==
X-Received: by 2002:a7b:c4c5:: with SMTP id g5mr19646400wmk.139.1643663207885; 
 Mon, 31 Jan 2022 13:06:47 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b11sm314961wmq.46.2022.01.31.13.06.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Jan 2022 13:06:47 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 31 Jan 2022 22:05:45 +0100
Message-Id: <20220131210552.482606-15-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
References: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/21] fbcon: use lock_fb_info in
 fbcon_open/release
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
 Xiyu Yang <xiyuyang19@fudan.edu.cn>, Du Cheng <ducheng2@gmail.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Zheyu Ma <zheyuma97@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 William Kucharski <william.kucharski@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Zhen Lei <thunder.leizhen@huawei.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now we get to the real motiviation, because fbmem.c insists that
that's the right lock for these.

Ofc fbcon.c has a lot more places where it probably should call
lock_fb_info(). But looking at fbmem.c at least most of these seem to
be protected by console_lock() too, which is probably what papers over
any issues.

Note that this means we're shuffling around a bit the locking sections
for some of the console takeover and unbind paths, but not all:
- console binding/unbinding from the console layer never with
lock_fb_info
- unbind (as opposed to unlink) never bother with lock_fb_info

Also the real serialization against set_par and set_pan are still
doing by wrapping the entire ioctl code in console_lock(). So this
shuffling shouldn't be worse than what we had from a "can you trigger
races?" pov, but it's at least clearer.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Claudio Suarez <cssk@net-c.es>
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Du Cheng <ducheng2@gmail.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Matthew Wilcox <willy@infradead.org>
Cc: William Kucharski <william.kucharski@oracle.com>
Cc: Alex Deucher <alexander.deucher@amd.com>
Cc: Zheyu Ma <zheyuma97@gmail.com>
Cc: Zhen Lei <thunder.leizhen@huawei.com>
Cc: Xiyu Yang <xiyuyang19@fudan.edu.cn>
---
 drivers/video/fbdev/core/fbcon.c | 5 +++++
 drivers/video/fbdev/core/fbmem.c | 4 ----
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
index 5a3391ff038d..496bc5f2133e 100644
--- a/drivers/video/fbdev/core/fbcon.c
+++ b/drivers/video/fbdev/core/fbcon.c
@@ -682,8 +682,10 @@ static int fbcon_invalid_charcount(struct fb_info *info, unsigned charcount)
 
 static void fbcon_release(struct fb_info *info)
 {
+	lock_fb_info(info);
 	if (info->fbops->fb_release)
 		info->fbops->fb_release(info, 0);
+	unlock_fb_info(info);
 
 	module_put(info->fbops->owner);
 }
@@ -695,11 +697,14 @@ static int fbcon_open(struct fb_info *info)
 	if (!try_module_get(info->fbops->owner))
 		return -ENODEV;
 
+	lock_fb_info(info);
 	if (info->fbops->fb_open &&
 	    info->fbops->fb_open(info, 0)) {
+		unlock_fb_info(info);
 		module_put(info->fbops->owner);
 		return -ENODEV;
 	}
+	unlock_fb_info(info);
 
 	ops = kzalloc(sizeof(struct fbcon_ops), GFP_KERNEL);
 	if (!ops) {
diff --git a/drivers/video/fbdev/core/fbmem.c b/drivers/video/fbdev/core/fbmem.c
index 0fa7ede94fa6..fd51d12f2702 100644
--- a/drivers/video/fbdev/core/fbmem.c
+++ b/drivers/video/fbdev/core/fbmem.c
@@ -1653,9 +1653,7 @@ static int do_register_framebuffer(struct fb_info *fb_info)
 		console_lock();
 	else
 		atomic_inc(&ignore_console_lock_warning);
-	lock_fb_info(fb_info);
 	ret = fbcon_fb_registered(fb_info);
-	unlock_fb_info(fb_info);
 
 	if (!lockless_register_fb)
 		console_unlock();
@@ -1672,9 +1670,7 @@ static void unbind_console(struct fb_info *fb_info)
 		return;
 
 	console_lock();
-	lock_fb_info(fb_info);
 	fbcon_fb_unbind(fb_info);
-	unlock_fb_info(fb_info);
 	console_unlock();
 }
 
-- 
2.33.0

