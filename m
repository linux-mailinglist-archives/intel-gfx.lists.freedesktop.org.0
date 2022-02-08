Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 800AF4AE2DC
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 22:08:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33AFB10E4AD;
	Tue,  8 Feb 2022 21:08:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6523810E515
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 21:08:40 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id n8so144347wmk.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Feb 2022 13:08:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+/n/16RZ52OxmA0UdDabSATFo04ROfy75nWG7tM3V6I=;
 b=hRasZriqWBEeJzoUOLv/QgNtugplRHjEQRKqik65NeifTKzyRf0hhvBW1KWOkIoadP
 3babK90zxgB9jGgUf/UNp4JC9Y+PrFYPgiRob7sYtSxpvX3uoVU0VosLdxIxxSp78Mvv
 nGxEaJzOsmX/d0hVbISOd5f0gVyHiJlADJFE4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+/n/16RZ52OxmA0UdDabSATFo04ROfy75nWG7tM3V6I=;
 b=QwDMSrtdT7iNMiKhKe26dU7ueETGmQ/1cWwyZbhjUjdyrNzFUtawkNKTb++Dfl7DDG
 yf9VwCkjNaMm3IZQXjg7wwHi66/7c07SC/AUjukvCrPfNdWtup+IG1BSTzqxzo+lUbjz
 zi8vY2FCsv8xJOxzJsTuHIr/zLXaLQU4Oi2lltyFzahPfqRPJxGurI2dmZF3hxnF0HhB
 vrA4OVtLccCJdDSqP4PjEMyJJJoTDu0wwiPnxW7RtpVu8ULUbrn5hiEp34g+us9rzc1x
 QE1qhuhu2hzOdYHQ82A9GGnH4Xa1uRIa3PbDaMbQ1hDbeBhn1FaWkqerGsb4IYdk4rQd
 FTWA==
X-Gm-Message-State: AOAM533cVxQZA1y8y51qMTCJ12E/ETSlA3FkDMVvryRbPSm9dXRow23X
 38BqYzvzTdhncy176yw6l/LlrA==
X-Google-Smtp-Source: ABdhPJxmKGvfzwrGcNB45zpKYvGa2R6htrHXkrCRtBsrNPeFRtFyXvFPfIN1bLeHK+Zv9iVuAwVA7Q==
X-Received: by 2002:a1c:f60b:: with SMTP id w11mr2637250wmc.138.1644354518818; 
 Tue, 08 Feb 2022 13:08:38 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o14sm3033561wmr.3.2022.02.08.13.08.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 13:08:35 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  8 Feb 2022 22:08:10 +0100
Message-Id: <20220208210824.2238981-6-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220208210824.2238981-1-daniel.vetter@ffwll.ch>
References: <20220208210824.2238981-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/19] fbdev/sysfs: Fix locking
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
Cc: linux-fbdev@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Qing Wang <wangqing@vivo.com>,
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

