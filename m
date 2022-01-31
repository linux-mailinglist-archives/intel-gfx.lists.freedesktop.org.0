Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 353E04A50E1
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 22:07:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C87CA10E4BC;
	Mon, 31 Jan 2022 21:06:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0B2910E492
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 21:06:42 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id f17so27935079wrx.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 13:06:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gNEcCsAHbmO8BObbR0rzHcF3KU0XqbiUyO0AgqiLr9Q=;
 b=XB0If8d+oNzt5EGFOz/pJSfVqwossHreq5Z3/8sGNGT1tWVb8HeX+PuSX4HzuKCtxL
 85Ce3vd3TA/uayqURoZ6LVnYYD+zcPj1L3cM6aaDGzt5LCXHqB2YeYKof0DAcvGHjWoE
 WAj/NXLBP9zyNJqrR3yjJ4zw+CAjDKmq/tKN4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gNEcCsAHbmO8BObbR0rzHcF3KU0XqbiUyO0AgqiLr9Q=;
 b=KWWdARM7BdnP6ZtQVAsgAkzZXXiyROqkYo9RgIiB72BH4oF6UoqwB+lzgZU412uMjE
 aesObpTG/MWwF7YHaQFweC4Rb2zcbpAGjES8SPMSV3QlBwTXO1AuloTsIjSMbi0cXgdh
 9lFEeMfl4l96LmF7tg2XEsUIG9vRafd4Ctu7IHQ07rAIF7KTd6n2QHQ0VADhNK37JNd4
 hDVxk+2wjnzg486QqVCn03PY2zTI827h4XnZAyH6IeIuXmOYflBwCTbeTDPgCnnb7+s3
 hDNx7pOLFF+l3/BW09WnQJs3imsTSUvVfxS+vLNHkWTyMydYdC3k3Pbe8fEXXVy5Om1B
 xWGg==
X-Gm-Message-State: AOAM532DaKG1abZ8YSRVt1eEEdV/K+wvmGsx9jgPboSnfy85liSllBki
 hwFTc48b6Fe9dnSvnaztXWGJCw==
X-Google-Smtp-Source: ABdhPJyCY4pMX5KDnbLHXSX+AzjieeB1bfyqYC6ZVcKQr80N8d2mwo0uPWz2LhfKAg4dG48zDem7wQ==
X-Received: by 2002:a05:6000:1d90:: with SMTP id
 bk16mr9737566wrb.217.1643663201557; 
 Mon, 31 Jan 2022 13:06:41 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b11sm314961wmq.46.2022.01.31.13.06.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Jan 2022 13:06:41 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 31 Jan 2022 22:05:38 +0100
Message-Id: <20220131210552.482606-8-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
References: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/21] fbdev/sysfs: Fix locking
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
2.33.0

