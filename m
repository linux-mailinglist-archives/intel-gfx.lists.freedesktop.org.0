Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7ED94F3F86
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 23:04:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 168ED10EEBC;
	Tue,  5 Apr 2022 21:03:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D12DA10E45C
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 21:03:47 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id k23so314239wrd.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Apr 2022 14:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=njFWdYQAaDqfYiD2Xn7UdOgkX8BhGZCyAilm6L8VvPw=;
 b=Z0d8OxH3ma5gI6/t6TzMdj48KE3+eiq0RZyPQCPmAJ1MplwnCCfyaophe2UKF9ZRzi
 B3ZkDS8Ha2/SXBUXiftFNODgiET8wur75TONlwUzrCnrwGFlREz9rgL5kIcBJYiA0wBm
 khIZvqpVsxX3jBHxq+lpQqJR3NGOZf/Xs9pU8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=njFWdYQAaDqfYiD2Xn7UdOgkX8BhGZCyAilm6L8VvPw=;
 b=DARiBcyTpK9YtpSZyH7uFI8DPfBM3niBsmxjhQnHpxq+ceOQ8vrTpU/WRqfI2Bs7hG
 ptkM8+v4ISoR5ybFbf6St5D8t+mWsG9MjACB3rx5KlOnqQTz2eQfkVpIBV0tGBKK+Yy9
 K3gzGpxbTS7WZz+L1ZDtKF0ak5NecyrItJ6eywmAMMs7d2XptJmyll1PRxMOKhuOVK6W
 zTHRmgTWazw453Wd6hmGl/DmGbYTDc56JrR+6PNnpycmeIM8baZgXNbwmPF4U0/A0ACJ
 hc020YjajjzbKg8hBVdjZSRWN2NY0OJPxzGqk6QV0j1JT+AzYYuY1T3W5y5QBkntbwzi
 0kUw==
X-Gm-Message-State: AOAM532ZOx7pia/bGZ8dGi0uEjwFHwj6mNKhV8SBrlTcMK6sLCXWXllL
 WnfMK/6ORzUtznEg+I0xmMfnvg==
X-Google-Smtp-Source: ABdhPJxlOdCJ/qt4T+oOpatacnW0/s0GVKsccDWptFVX6UqCj8tkJTJcNhZasLpAvMDa4wko0z+3Xw==
X-Received: by 2002:a5d:47a9:0:b0:205:d662:c1e1 with SMTP id
 9-20020a5d47a9000000b00205d662c1e1mr4107166wrb.577.1649192626375; 
 Tue, 05 Apr 2022 14:03:46 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 az19-20020a05600c601300b0038cadf3aa69sm4858569wmb.36.2022.04.05.14.03.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Apr 2022 14:03:45 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  5 Apr 2022 23:03:23 +0200
Message-Id: <20220405210335.3434130-6-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220405210335.3434130-1-daniel.vetter@ffwll.ch>
References: <20220405210335.3434130-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 05/17] fbdev/sysfs: Fix locking
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Qing Wang <wangqing@vivo.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

fb_set_var requires we hold the fb_info lock. Or at least this now
matches what the ioctl does ...

Note that ps3fb and sh_mobile_lcdcfb are busted in different ways here,
but I will not fix them up.

Also in practice this isn't a big deal, because really variable fbdev
state is actually protected by console_lock (because fbcon just
doesn't bother with lock_fb_info() at all), and lock_fb_info
protecting anything is really just a neat lie. But that's a much
bigger fish to fry.

Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Helge Deller <deller@gmx.de>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Qing Wang <wangqing@vivo.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/video/fbdev/core/fbsysfs.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/video/fbdev/core/fbsysfs.c b/drivers/video/fbdev/core/fbsysfs.c
index 26892940c213..8c1ee9ecec3d 100644
--- a/drivers/video/fbdev/core/fbsysfs.c
+++ b/drivers/video/fbdev/core/fbsysfs.c
@@ -91,9 +91,11 @@ static int activate(struct fb_info *fb_info, struct fb_var_screeninfo *var)
 
 	var->activate |= FB_ACTIVATE_FORCE;
 	console_lock();
+	lock_fb_info(fb_info);
 	err = fb_set_var(fb_info, var);
 	if (!err)
 		fbcon_update_vcs(fb_info, var->activate & FB_ACTIVATE_ALL);
+	unlock_fb_info(fb_info);
 	console_unlock();
 	if (err)
 		return err;
-- 
2.34.1

