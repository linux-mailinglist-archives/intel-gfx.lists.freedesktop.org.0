Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F4F2F4C77
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 14:50:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E59A76E9E6;
	Wed, 13 Jan 2021 13:50:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E30AA6E9DC
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 13:50:22 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id c5so2196340wrp.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 05:50:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nvT+2CTfKbHCHIxTXmD+DKXWE8FcgOY0OyqMKXLif8Q=;
 b=NKUIMcSrJVLhOs83499n0cgM2auXTaw3V0wMCpbP6nahPLsfkAPGyoyFNXRG9v4Nsn
 ikZjMacmCsbVlSXqzqw7YCzLe3NEXA5pvt+0sTC0Uo4RLV/bPoGczi/L2sWLBAJAMKUO
 S7pQyxfXo/popuIGMo5lZ4TZTZhLrAE7MFZik=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nvT+2CTfKbHCHIxTXmD+DKXWE8FcgOY0OyqMKXLif8Q=;
 b=EfggEX9dr7YZ2LkRD29wt+Eknwx0NAANiJTF7KxkGk3BdUzSkaoBvOIysvohtLIklE
 /7MOun2KjiCSalRmaoyHjU1yLXbg1+BfjAjQthxmqWy3M/ObPCS4wR/1m5dKRUDLUnnR
 3544fqoy4xQXWURYj18GG//oUpHRSOvVYZkrF3Dwvyvesz33duchA8YFpAiu3/bgEBNK
 kQzhTPxjQkpdE7Zy/3ML5vPNiBkObSjcqGLnetaZi/4ZGA4+eNCjSv9sKLIF1wYkybgV
 /811cWiKu8I5TVLXQc7rKofXgEBA3ToDEy0nPSwh9yPrKzWe0Yq7p3vrU8cG9a/PHnIP
 6Zlg==
X-Gm-Message-State: AOAM533fqi9Ncja2THF9FxtwlpY0Hu4B+hzSmSV/sgS4/Q0o1OuPlb43
 cLKgHeE+CZU67tX4IdD4th7xIw==
X-Google-Smtp-Source: ABdhPJzN633ZtBb+JvWBQCilmzXbJKynfVTWxJR1N9WuCGxfKsOqVbeuxDt7n6vPl6QegJN9+Yzw/w==
X-Received: by 2002:a5d:50c3:: with SMTP id f3mr2694952wrt.287.1610545821657; 
 Wed, 13 Jan 2021 05:50:21 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u17sm3011205wmj.35.2021.01.13.05.50.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Jan 2021 05:50:21 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Wed, 13 Jan 2021 14:50:09 +0100
Message-Id: <20210113135009.3606813-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210113135009.3606813-1-daniel.vetter@ffwll.ch>
References: <20210113135009.3606813-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] bdi: Use might_alloc()
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
Cc: linux-mm@kvack.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now that my little helper has landed, use it more. On top of the
existing check this also uses lockdep through the fs_reclaim
annotations.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-mm@kvack.org
--
v2: git add everything ... oops
---
 mm/backing-dev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mm/backing-dev.c b/mm/backing-dev.c
index e33797579338..5666a0056580 100644
--- a/mm/backing-dev.c
+++ b/mm/backing-dev.c
@@ -580,7 +580,7 @@ struct bdi_writeback *wb_get_create(struct backing_dev_info *bdi,
 {
 	struct bdi_writeback *wb;
 
-	might_sleep_if(gfpflags_allow_blocking(gfp));
+	might_alloc(gfp);
 
 	if (!memcg_css->parent)
 		return &bdi->wb;
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
