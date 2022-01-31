Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 750BC4A50EB
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jan 2022 22:07:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1E2F10E48F;
	Mon, 31 Jan 2022 21:06:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AA3510E4BF
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 21:06:45 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 bg21-20020a05600c3c9500b0035283e7a012so259550wmb.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jan 2022 13:06:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fEFT7RaLl3MIWyBeJu8+YbW4+Kc4zGdBG2ByELA82FY=;
 b=GUAHnoGJ2g60XQIxA1S0UBTEjmAhGsZ5SnXwaSbMm4WguOGFJ080okWbKoG6WuelXb
 voQq0GCXWqeAxlMSnqXUzcMTJe09M5cg5JRDYNy2F4304We++p19+m+1PzPGP4OK3sng
 CMHb0eixfCd0LaM62LMEll+iAEqIn9PA0TosA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fEFT7RaLl3MIWyBeJu8+YbW4+Kc4zGdBG2ByELA82FY=;
 b=5fgn45WYbvbAbSYfukkn9JUT9rG7rqZrIBds6TYoukbILky/C4Y+Fg8jvNVnGioTDl
 AHtTx9Q0jzEVT5aPSzUt+wbS4GOZUrXvRMHCpcmoz4wVaxfMYPpSWFl19BNSZnj/HXOG
 P27OrWfYua6hOusOiV0GxUuT9Y0VwqIXD6Gq3Ye2SkY1Vh5KMaeTQ95OpA6RgZxeYr+O
 IYgl+WZUcQ0Hs8zy9D8AzlN4iJ77z2b2jeU8UwAyEBJSMhdS63Zi6sCplfHv/dtzTvHg
 XaCNZbLaA/Mu98li9dNq6WFC/QUfDYf2QAYZ5tG8kn9RdKSb1P9/hZzlB9phxOXzf/La
 JGig==
X-Gm-Message-State: AOAM5300bTMMcoojZ+aCbrbTFzUMnMT5OziOZjcO/QvngDfzc111M4Xv
 Mw4XvUBgHCT9zRpBxNdWxlrqwQ==
X-Google-Smtp-Source: ABdhPJwadVtgHupBXYfEY4Bh9lTcVc2T1fYq6ymL+YzCfw4JZaBt+O2KULSz2DRwEILgsDakrL0ghg==
X-Received: by 2002:a05:600c:1f15:: with SMTP id
 bd21mr28339002wmb.145.1643663204166; 
 Mon, 31 Jan 2022 13:06:44 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b11sm314961wmq.46.2022.01.31.13.06.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Jan 2022 13:06:43 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 31 Jan 2022 22:05:41 +0100
Message-Id: <20220131210552.482606-11-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
References: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/21] fb: Delete fb_info->queue
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
 LKML <linux-kernel@vger.kernel.org>, Daniel Vetter <daniel.vetter@intel.com>,
 Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It was only used by fbcon, and that now switched to its own,
private work.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Helge Deller <deller@gmx.de>
Cc: linux-fbdev@vger.kernel.org
---
 include/linux/fb.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/linux/fb.h b/include/linux/fb.h
index 02f362c661c8..a8a00d2ba1f3 100644
--- a/include/linux/fb.h
+++ b/include/linux/fb.h
@@ -449,7 +449,6 @@ struct fb_info {
 	struct fb_var_screeninfo var;	/* Current var */
 	struct fb_fix_screeninfo fix;	/* Current fix */
 	struct fb_monspecs monspecs;	/* Current Monitor specs */
-	struct work_struct queue;	/* Framebuffer event queue */
 	struct fb_pixmap pixmap;	/* Image hardware mapper */
 	struct fb_pixmap sprite;	/* Cursor hardware mapper */
 	struct fb_cmap cmap;		/* Current cmap */
-- 
2.33.0

