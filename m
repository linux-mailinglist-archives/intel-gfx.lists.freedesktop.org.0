Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F1E665F67
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 16:41:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6132C10E76E;
	Wed, 11 Jan 2023 15:41:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 862F810E76D
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 15:41:28 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 g19-20020a05600c4ed300b003d9eb1dbc0aso10010255wmq.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 07:41:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tJcVjf8pDC4yO+skqSU0XKC89Tk1zxOfzlV0lRIff7c=;
 b=aZrY9NQHD2THbetIXlgCj7dIm+IHrmHhq7F17hc477mP1n6APHub6Ck2CJ3DzdinLT
 ElgTJWC47fGty6V4ACS9w2xVnnEuSz4Z9Kz+uIPLYWQdsKohf8UMi7KQUG29Hent2GEo
 Jqem0opQMtn8iekTGOrnsTul/w0T9hALDGZaE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=tJcVjf8pDC4yO+skqSU0XKC89Tk1zxOfzlV0lRIff7c=;
 b=wiQhG4Cs+aZ9jWRldHtgt+zxgotGwVGXnQnyo4scapq/Edh9/OAAYWahAhakrJrPUw
 McEcD1LbskL/fpM1knnSzgE6/kWvfoHbjEvlGZjLM6aD7YrcpVcx2X1IUyoHJMzYHQIo
 x8zoPVhXyzzxXtJo5rw0B/G2h1JiGX8xRNAO4yLopYOyXFqukC5vVVx5d2QlKjucJ6u5
 YwY9OE18TK03fZMmeXDzG/7IWiM6/4xFp1nYFAT29YRvnTqDJKyewFCtZ6hzGHzl/4kH
 xofwRC5wyNXv13R6tWKhn2fO88lsqIDgrE6WQDa8KBqlYfYM4ccqD8GYRFq+ldjPJBx9
 hAAA==
X-Gm-Message-State: AFqh2kqhXxF9NV07PWEDsGwQkb/gOxs/JxD5y6xBGxzqkp2BUl7N0FS9
 foMK9Xmt8qAk/fLvBgAbmpc8MA==
X-Google-Smtp-Source: AMrXdXtLjz41DgbsTgGEKg48S+bFLaYgDm0CS1oQOQdxAw8CZ2RXHl0aiRV2ZxkGGAbOj+J7AcqZ2Q==
X-Received: by 2002:a05:600c:1d8a:b0:3d9:ebab:ccff with SMTP id
 p10-20020a05600c1d8a00b003d9ebabccffmr10800367wms.33.1673451687083; 
 Wed, 11 Jan 2023 07:41:27 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 t9-20020a05600c198900b003d9e74dd9b2sm15936149wmq.9.2023.01.11.07.41.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Jan 2023 07:41:26 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 11 Jan 2023 16:41:06 +0100
Message-Id: <20230111154112.90575-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230111154112.90575-1-daniel.vetter@ffwll.ch>
References: <20230111154112.90575-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/11] video/aperture: Only kick vgacon when the
 pdev is decoding vga
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
 Javier Martinez Canillas <javierm@redhat.com>,
 LKML <linux-kernel@vger.kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Otherwise it's bit silly, and we might throw out the driver for the
screen the user is actually looking at. I haven't found a bug report
for this case yet, but we did get bug reports for the analog case
where we're throwing out the efifb driver.

References: https://bugzilla.kernel.org/show_bug.cgi?id=216303
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Javier Martinez Canillas <javierm@redhat.com>
Cc: Helge Deller <deller@gmx.de>
Cc: linux-fbdev@vger.kernel.org
---
 drivers/video/aperture.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/video/aperture.c b/drivers/video/aperture.c
index 3d8c925c7365..6f351a58f6c6 100644
--- a/drivers/video/aperture.c
+++ b/drivers/video/aperture.c
@@ -341,6 +341,9 @@ int aperture_remove_conflicting_pci_devices(struct pci_dev *pdev, const char *na
 			return ret;
 	}
 
+	if (!primary)
+		return 0;
+
 	/*
 	 * WARNING: Apparently we must kick fbdev drivers before vgacon,
 	 * otherwise the vga fbdev driver falls over.
-- 
2.39.0

