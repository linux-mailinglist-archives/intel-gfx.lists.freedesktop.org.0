Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C7C4F3F94
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 23:04:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0882110EEC8;
	Tue,  5 Apr 2022 21:03:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7D7F10EEBE
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 21:03:50 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 123-20020a1c1981000000b0038b3616a71aso394808wmz.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Apr 2022 14:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UCMwHF3uk919Wx1ZFBokmmNohbFfAzQpLpge8K0yLz0=;
 b=gmXHelE4Rj7vy22zgP55hLEh9RsElk3Dlkapg2DeMXKxO1Riu+3loZKo4vDEr15wdT
 PgjSUvzqWgTy1QVi8KUPYQuV0In4ANqCne62OMaxvORk6lNQZvFmkQjZhN4T38K0Kstt
 pKOf7h9QJI7cs46T4dRgLCCDRRYJBVBgLq/yQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UCMwHF3uk919Wx1ZFBokmmNohbFfAzQpLpge8K0yLz0=;
 b=v/ikrsid0WCOsvB07rMGocJCsDjZ0G/Tn+KLuxyJih+djuBUxjjhPmf0YVViTiTlFb
 Upe377vTPD1vzqNFM4CSKzRV3Xw7fxYXHQuIdpoMOTiBIilAzwxiMPdN3YlIlUZ5g5HZ
 6d6OMeDIr5rdt3dnucj34Yt44VsHDehauhYXR43T/KGnwMj6x2AnSdt3RiYAkNztsTrz
 6kCiI476AChlA6w3+o0kze8WRpHds3pNAuY1Dy/+Pagkuh47ZG0ZuF/73QhZQJaM7Fky
 DKqV/CaKK6UBxCFBiOhiWYyM9AIbNSy0kFN3AkoN3sr7GbKNhQvwgYQKDJ8vKmMU2Le0
 z6Wg==
X-Gm-Message-State: AOAM533jdOEonl7sQDHZp9jRagboOmQeWlbOZ+0h8G/Fsg0Ned61NgFC
 u/iWhWVyg7kjjQUJygoq/N01MOnHlJri3KjyLis=
X-Google-Smtp-Source: ABdhPJzGuI7sDox55NXIDF1CsyAOGKpFf1LM70EWTffJxN0QpYSrQtWR+/bEYbhl3D+OAoPEvh/X6w==
X-Received: by 2002:a05:600c:354d:b0:38c:e71a:c230 with SMTP id
 i13-20020a05600c354d00b0038ce71ac230mr4579966wmq.86.1649192629155; 
 Tue, 05 Apr 2022 14:03:49 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 az19-20020a05600c601300b0038cadf3aa69sm4858569wmb.36.2022.04.05.14.03.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Apr 2022 14:03:48 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  5 Apr 2022 23:03:26 +0200
Message-Id: <20220405210335.3434130-9-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220405210335.3434130-1-daniel.vetter@ffwll.ch>
References: <20220405210335.3434130-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 08/17] fb: Delete fb_info->queue
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
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It was only used by fbcon, and that now switched to its own,
private work.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Helge Deller <deller@gmx.de>
Cc: linux-fbdev@vger.kernel.org
---
 include/linux/fb.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/linux/fb.h b/include/linux/fb.h
index 9a77ab615c36..f95da1af9ff6 100644
--- a/include/linux/fb.h
+++ b/include/linux/fb.h
@@ -450,7 +450,6 @@ struct fb_info {
 	struct fb_var_screeninfo var;	/* Current var */
 	struct fb_fix_screeninfo fix;	/* Current fix */
 	struct fb_monspecs monspecs;	/* Current Monitor specs */
-	struct work_struct queue;	/* Framebuffer event queue */
 	struct fb_pixmap pixmap;	/* Image hardware mapper */
 	struct fb_pixmap sprite;	/* Cursor hardware mapper */
 	struct fb_cmap cmap;		/* Current cmap */
-- 
2.34.1

