Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 278E46D6D49
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 21:39:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9BAC10E78D;
	Tue,  4 Apr 2023 19:39:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC55010E795
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 19:39:47 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id
 a640c23a62f3a-930bc91df7bso105092266b.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Apr 2023 12:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1680637186;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=mrNIWGuvU8yOmyqKo15r+2UzOPnnoKtvW2Ll77+OFto=;
 b=gSzrUwfdoR5VtsIY8A4GpMgcBhLgJG7OwQRLOmZBsmJngmydike2cIXmpAYWdtGjOs
 QYJv6h5zYjueik2anibn1olQB0taAkHxLT8CbHFd9VGYpoESaX9RTA8NKfXwqtorXp8n
 jT6m2vL4ewcxbv3cQZfFMU292dfCO9Oc90YDE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680637186;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=mrNIWGuvU8yOmyqKo15r+2UzOPnnoKtvW2Ll77+OFto=;
 b=7KQigFfr4u1tNybvoQiNdq1iIKNWpUIoq57WrXkbRyMHZ8Ju5PbNrII3N1Hi3SZ8F1
 b52g31Z8EFeNd1ETRnqDUQlOY93a8YN+JMWHfPnHvuPZZlD5MuDPGc9KpIKXEvTpGYEg
 XB9++I3YWZQGLLEqWRHVWXRDBJKaRpSy49wcIgkOGHK3UWwNLYCTCeJ8stzpwpaIWWrQ
 p7ZrWVQUI/K0Kqn5KnhRaSSI2y06iq4U/a+lZUwcs7zFsvaWewcn56pJsi5ertZgr4ho
 +n+wIccQ40tgyaehtWWFKdkCZYkwZHDkJVXgs0rsxw8MssAv36YCZqTxtvuLhXx4m34B
 9Trw==
X-Gm-Message-State: AAQBX9c9ZwUEm5Lly2KUGjDBi2dgILmWlCsn4klCkEW5nxYmyT6l0eF7
 /ZTS+nfhC/Vl1qhCNi7sRoeDIYIszsk7qYcmS18=
X-Google-Smtp-Source: AKy350beChT3SpPqih5hlkUZBblDzme1WlDy3x/T4nEeCCijX3y5G1sD2OZRfpdDWTc7CwOJLUToEw==
X-Received: by 2002:a17:906:5195:b0:92c:fc0:b229 with SMTP id
 y21-20020a170906519500b0092c0fc0b229mr748920ejk.0.1680637185857; 
 Tue, 04 Apr 2023 12:39:45 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 mc3-20020a170906eb4300b009334d87d106sm6428730ejb.147.2023.04.04.12.39.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Apr 2023 12:39:45 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Tue,  4 Apr 2023 21:39:34 +0200
Message-Id: <20230404193934.472457-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] fbmem: Reject FB_ACTIVATE_KD_TEXT from userspace
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
Cc: linux-fbdev@vger.kernel.org, Shigeru Yoshida <syoshida@redhat.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Helge Deller <deller@gmx.de>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 =?UTF-8?q?Michel=20D=C3=A4nzer?= <michel@daenzer.net>,
 Maxime Ripard <mripard@kernel.org>, shlomo@fastmail.com,
 Nathan Chancellor <natechancellor@gmail.com>, stable@vger.kernel.org,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Peter Rosin <peda@axentia.se>, Qiujun Huang <hqjagain@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is an oversight from dc5bdb68b5b3 ("drm/fb-helper: Fix vt
restore") - I failed to realize that nasty userspace could set this.

It's not pretty to mix up kernel-internal and userspace uapi flags
like this, but since the entire fb_var_screeninfo structure is uapi
we'd need to either add a new parameter to the ->fb_set_par callback
and fb_set_par() function, which has a _lot_ of users. Or some other
fairly ugly side-channel int fb_info. Neither is a pretty prospect.

Instead just correct the issue at hand by filtering out this
kernel-internal flag in the ioctl handling code.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Fixes: dc5bdb68b5b3 ("drm/fb-helper: Fix vt restore")
Cc: Alex Deucher <alexander.deucher@amd.com>
Cc: shlomo@fastmail.com
Cc: Michel Dänzer <michel@daenzer.net>
Cc: Noralf Trønnes <noralf@tronnes.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Daniel Vetter <daniel.vetter@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org
Cc: <stable@vger.kernel.org> # v5.7+
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>
Cc: Qiujun Huang <hqjagain@gmail.com>
Cc: Peter Rosin <peda@axentia.se>
Cc: linux-fbdev@vger.kernel.org
Cc: Helge Deller <deller@gmx.de>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Samuel Thibault <samuel.thibault@ens-lyon.org>
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Cc: Shigeru Yoshida <syoshida@redhat.com>
---
 drivers/video/fbdev/core/fbmem.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/video/fbdev/core/fbmem.c b/drivers/video/fbdev/core/fbmem.c
index 875541ff185b..3fd95a79e4c3 100644
--- a/drivers/video/fbdev/core/fbmem.c
+++ b/drivers/video/fbdev/core/fbmem.c
@@ -1116,6 +1116,8 @@ static long do_fb_ioctl(struct fb_info *info, unsigned int cmd,
 	case FBIOPUT_VSCREENINFO:
 		if (copy_from_user(&var, argp, sizeof(var)))
 			return -EFAULT;
+		/* only for kernel-internal use */
+		var.activate &= ~FB_ACTIVATE_KD_TEXT;
 		console_lock();
 		lock_fb_info(info);
 		ret = fbcon_modechange_possible(info, &var);
-- 
2.40.0

