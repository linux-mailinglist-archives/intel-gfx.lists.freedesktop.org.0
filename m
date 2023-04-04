Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2656D6D4D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 21:40:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C1A210E78D;
	Tue,  4 Apr 2023 19:40:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4E0510E791
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 19:40:49 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id t10so134946335edd.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Apr 2023 12:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1680637248;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=L+bv+X+HUb7L5CiJGIhzyoiVMLKFlHsSpQjg6oJVXtI=;
 b=cYDXCCCUhljhT5VPYCL0i1wlKB9kZDxS20bKdGXohA3mKYc0j/VM8xuKBq++xsT/FO
 KOTG0d6xoIWtn15OGqzvEhNlUffM5bmo/uiCyflzgvlVsV2i35VpJGYGVSuDGn4c3Mdp
 NOWcerctpXLigN5ou2obCjphHR01ABKqLdzN4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680637248;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=L+bv+X+HUb7L5CiJGIhzyoiVMLKFlHsSpQjg6oJVXtI=;
 b=GsCMpnPIbJOCpVcqb8PdlDuU0WxMj3oXtLfGuxjbzZHVKuuBI54oQqzsHz9wYdWzwp
 y5455h0yq5Awsk1oeetTLXHy66TJd2lsd+pSeRGkIRxhEOpBRggIyEWc8jZ07fbYNIVn
 0x2x/15ad1T4Sgz5z5T45fn7OJF3ljy/hdfkECw2myb+D1S2r14oXa1hpv13+Hu1L0tJ
 XoqH4ITNWbK80akVXRw05b2RReuBlFK83fHg5PrZVANiY9KzfeYfzEFWlk3w+pMRX9ZF
 0ovTuV/0R/dkPuxZvus4wXtTViKmJDVUt7uRv28BFkZSCaBTjv4Vi1vEZw6vbdez7r2w
 GwzQ==
X-Gm-Message-State: AAQBX9cLyKj1qgTT6ys2hN/voY2/P2kVQd+zvD162Sw+PbUbNWVKv3Nn
 W0meKSDxhuy2NQJItKEPkJtgQA==
X-Google-Smtp-Source: AKy350ZtXHF1TPelo6oE7RtQoe5ej7WiN9rL6H4LQHP7Ad2sqMbJJjjz7lkfoAFWB9Zxq2T2ONeuMw==
X-Received: by 2002:a05:6402:2811:b0:502:465:28e1 with SMTP id
 h17-20020a056402281100b00502046528e1mr4147038ede.0.1680637247791; 
 Tue, 04 Apr 2023 12:40:47 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 xb7-20020a170907070700b00948c2f245a9sm2472802ejb.110.2023.04.04.12.40.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Apr 2023 12:40:47 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  4 Apr 2023 21:40:36 +0200
Message-Id: <20230404194038.472803-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/fb-helper: set x/yres_virtual in
 drm_fb_helper_check_var
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 syzbot+20dcf81733d43ddff661@syzkaller.appspotmail.com,
 Javier Martinez Canillas <javierm@redhat.com>, stable@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Drivers are supposed to fix this up if needed if they don't outright
reject it. Uncovered by 6c11df58fd1a ("fbmem: Check virtual screen
sizes in fb_set_var()").

Reported-by: syzbot+20dcf81733d43ddff661@syzkaller.appspotmail.com
Link: https://syzkaller.appspot.com/bug?id=c5faf983bfa4a607de530cd3bb008888bf06cefc
Cc: stable@vger.kernel.org # v5.4+
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Javier Martinez Canillas <javierm@redhat.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/drm_fb_helper.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/drm_fb_helper.c b/drivers/gpu/drm/drm_fb_helper.c
index 59409820f424..eb4ece3e0027 100644
--- a/drivers/gpu/drm/drm_fb_helper.c
+++ b/drivers/gpu/drm/drm_fb_helper.c
@@ -1595,6 +1595,9 @@ int drm_fb_helper_check_var(struct fb_var_screeninfo *var,
 		return -EINVAL;
 	}
 
+	var->xres_virtual = fb->width;
+	var->yres_virtual = fb->height;
+
 	/*
 	 * Workaround for SDL 1.2, which is known to be setting all pixel format
 	 * fields values to zero in some cases. We treat this situation as a
-- 
2.40.0

