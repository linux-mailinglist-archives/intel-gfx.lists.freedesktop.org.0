Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1AC64AE2EC
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 22:09:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 387178966C;
	Tue,  8 Feb 2022 21:08:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12DDD10E5DD
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 21:08:53 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id i15so609676wrb.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Feb 2022 13:08:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ox4yXC0LP8o2wCPaioNRgnQjoBr7m6vhS+hT+ChhFWw=;
 b=S5BqVNPSpXHrqviuw3HJUVHCNuXrwfZETQgddkSqec9Q51qTu/X1Dy3DHTTT/LagCc
 TdfBUwokFJF0o/5jKLoZI4jM9BwZ4q0H1RYvw+h1/Ibn+wlkQIVyJ99QoReMwJFgFFyb
 hL6uv3nX42Ve284n0fZhP+uQl2c3CEhq0yFcA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ox4yXC0LP8o2wCPaioNRgnQjoBr7m6vhS+hT+ChhFWw=;
 b=enrXezTlwgXlovqJiwVHWf4IBnr+oOntGLixJCYGBnZBtpfJYI9JLHQsposB/d7iKw
 Objq9HgQjjDyCOb+AUH+6sWmdEvevJKSEA+GzUMMhJOeK5RAJAqk5WAZ994qfrAkkU/c
 QiWMuUm/EvANpxsLSGarbbIrOPjwnnzISJ3o6WrWJvhqC+UQt59IA1HFFeI72La18GNu
 BNVNBEKs8RNOKD4P9HOFdHr4h98bHdYhxvpaO2Knd7A+NxoPNiq/XpHqnyvt0E6SxO9z
 OBS+mtL+u6Lp8AKtogrDBy/Co+QrqA8kiwxfl0iAzp6zmU0VejrsJx3adWMoh4q4mb/E
 rIVQ==
X-Gm-Message-State: AOAM531vTFI6znuy+OoHTVd2T3H3QugbO3xaC+jgRK4xdAetTcAgu8aT
 YU42jXGJ5+9hK3EHmKmsr3rx6w==
X-Google-Smtp-Source: ABdhPJz+CmlVndGXlugGb0ahxfiZBUSbHrx3Tg5Zrm6dge27t3XQoa5XtM7kt+nVAKioCX2KEMo9QQ==
X-Received: by 2002:a5d:4c41:: with SMTP id n1mr4989076wrt.128.1644354531674; 
 Tue, 08 Feb 2022 13:08:51 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o14sm3033561wmr.3.2022.02.08.13.08.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 13:08:50 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  8 Feb 2022 22:08:18 +0100
Message-Id: <20220208210824.2238981-14-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220208210824.2238981-1-daniel.vetter@ffwll.ch>
References: <20220208210824.2238981-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 13/19] fbcon: Consistently protect
 deferred_takeover with console_lock()
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
 LKML <linux-kernel@vger.kernel.org>, Daniel Vetter <daniel.vetter@intel.com>,
 Sam Ravnborg <sam@ravnborg.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This shouldn't be a problem in practice since until we've actually
taken over the console there's nothing we've registered with the
console/vt subsystem, so the exit/unbind path that check this can't
do the wrong thing. But it's confusing, so fix it by moving it a tad
later.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Du Cheng <ducheng2@gmail.com>
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Cc: Claudio Suarez <cssk@net-c.es>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/video/fbdev/core/fbcon.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
index cc960bf49991..4f9752ee9189 100644
--- a/drivers/video/fbdev/core/fbcon.c
+++ b/drivers/video/fbdev/core/fbcon.c
@@ -3227,6 +3227,9 @@ static void fbcon_register_existing_fbs(struct work_struct *work)
 
 	console_lock();
 
+	deferred_takeover = false;
+	logo_shown = FBCON_LOGO_DONTSHOW;
+
 	for_each_registered_fb(i)
 		fbcon_fb_registered(registered_fb[i]);
 
@@ -3244,8 +3247,6 @@ static int fbcon_output_notifier(struct notifier_block *nb,
 	pr_info("fbcon: Taking over console\n");
 
 	dummycon_unregister_output_notifier(&fbcon_output_nb);
-	deferred_takeover = false;
-	logo_shown = FBCON_LOGO_DONTSHOW;
 
 	/* We may get called in atomic context */
 	schedule_work(&fbcon_deferred_takeover_work);
-- 
2.34.1

