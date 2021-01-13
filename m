Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B5D2F4C76
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jan 2021 14:50:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D838F6E9DC;
	Wed, 13 Jan 2021 13:50:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9C796E9DC
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 13:50:21 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id t16so2207396wra.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Jan 2021 05:50:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZwXBYrJM9qKVPKPYtJI8yjhIvV2KkPeDmKoz+CVJlHc=;
 b=bzpYCMGS5z3k4l3WIeo2Lh33CM8JjhujxkGFpyyyNRzNKJzzpnLue0cnZxMh4x6oHf
 eCVl8OSG9Axe1NHmrz+kB6NPuOorAFrwhuNw47MacCmBu0o3Pl3ky2OqtASCKwWM8WIH
 U9tV1BZt2YEuhGsFV/az7bC5o2QzPVwDZqlBY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZwXBYrJM9qKVPKPYtJI8yjhIvV2KkPeDmKoz+CVJlHc=;
 b=gaTUZOPPDebn5btHcUTIdtb9mVubyfT7ymrQcNm5s3KJlNIh7iXnNHoRyUwMTtIIoB
 NxmZsGX6LLoor8dGgl2SZAtZ5HKiPCnxdnC0hgLCec5cbH+/xHF+jo0M8NaV4zmtazPv
 8HS/n4dr4FodYeP4hzMkNONu9YXqvwYAwExavUStZg1V+bcHcokB8qyEvLSvp4H8E7Ca
 7yBkhbheAoQkxqW7Y8+RkMu+NMCsPZAsFvIsxq9oZGk3wQIHBs0HqauV0Fs2C5pFiOsZ
 wx6NoU7KISE2wh/wErFikzblccj8aYvYx1fop0rtLS3C/fp3PqCI5irLyhGgVU0zaRGF
 F4sw==
X-Gm-Message-State: AOAM531Y9o8aM3yMlZg2dPOH4z28+1qpL1Y/8PcadowK+NaPOWGnhqOZ
 V5xhiKBrUTTLEzq09OdsMoSuxVn/Ub4X7sm7
X-Google-Smtp-Source: ABdhPJzGWphNJohoIPnV14YY+wwm9p1rbZynTvRFgZcJcJLGZeKlK5X9RsGhgorT4nwIxWDzFr/YtA==
X-Received: by 2002:a5d:6a4f:: with SMTP id t15mr2841613wrw.62.1610545820608; 
 Wed, 13 Jan 2021 05:50:20 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u17sm3011205wmj.35.2021.01.13.05.50.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Jan 2021 05:50:19 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Wed, 13 Jan 2021 14:50:08 +0100
Message-Id: <20210113135009.3606813-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] mm/dmapool: Use might_alloc()
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
v2: git add everything ... :-/
---
 mm/dmapool.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/mm/dmapool.c b/mm/dmapool.c
index a97c97232337..f3791532fef2 100644
--- a/mm/dmapool.c
+++ b/mm/dmapool.c
@@ -28,6 +28,7 @@
 #include <linux/mutex.h>
 #include <linux/poison.h>
 #include <linux/sched.h>
+#include <linux/sched/mm.h>
 #include <linux/slab.h>
 #include <linux/stat.h>
 #include <linux/spinlock.h>
@@ -319,7 +320,7 @@ void *dma_pool_alloc(struct dma_pool *pool, gfp_t mem_flags,
 	size_t offset;
 	void *retval;
 
-	might_sleep_if(gfpflags_allow_blocking(mem_flags));
+	might_alloc(mem_flags);
 
 	spin_lock_irqsave(&pool->lock, flags);
 	list_for_each_entry(page, &pool->page_list, page_list) {
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
