Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 126022C44F0
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 17:25:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 513726EA1E;
	Wed, 25 Nov 2020 16:25:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 072186EA1F
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 16:25:46 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id a186so2513114wme.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Nov 2020 08:25:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lnj1vSewnYJ6/gw6qejvRzkdxRWgCvvqGMHaDGl+NSM=;
 b=YUoZKq8L06+FDLM6Fl810zMa4QNm9z7yylijbYlze6fR8otQLzenAvEmy/fayirA5N
 O41roW+Y0PCq5CiO8xCdkb7te5p4XNiNP2KMYNITnW7GvP766R3pheeUSYaMWtw/NCoq
 hiMpjQptcAu3Wxmv8w5zOIWpXb2cG4iSD2BBk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lnj1vSewnYJ6/gw6qejvRzkdxRWgCvvqGMHaDGl+NSM=;
 b=qGJuek/HkM+chOmG5MpFkurlYpksABJKE03I/dJcilBQyMV92CfSQ7j6Q/sb5YEK51
 iVEk+Au0Egf2jXOO5Dzr9hdiJ1eI0ktAxUbEUpZzHwWZFAr+SHcpyX9bsaYR4/x9sQ1n
 1WAIgNcWLCf9ky6kHfLE0xC/4FuyJqMJSLWhGjo3YPpUNssDGIuNfBxSYagxUgvzdSu7
 QOaHD6uM9iWlIvx7f5YaCDp4xUG4wkmI+2bdPAu19XX/+447L5WNM4WmWvJLBWTFyVlP
 gaM+VHAe5uHOvtz++kznAjOYPD246LVNNLYw8NIXupD//UIGei4w6iPhByuOGS68v38W
 4XYw==
X-Gm-Message-State: AOAM533ZA3tb/0Ws0A97DnJyxKdCIlzHSS6+Byrjo9GS8sNS0M6fEIfR
 xtLIxvQIS8/zjvjIt1ViENTSHQ==
X-Google-Smtp-Source: ABdhPJzimL6dZ1eWi01TNV2dJDgqjd5jFZPTvE6ZnqLenNCICrynr5xXWljktH5hZBPm90Z1zf9kBQ==
X-Received: by 2002:a7b:cf26:: with SMTP id m6mr4920447wmg.121.1606321544420; 
 Wed, 25 Nov 2020 08:25:44 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a21sm4855187wmb.38.2020.11.25.08.25.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Nov 2020 08:25:43 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 25 Nov 2020 17:25:32 +0100
Message-Id: <20201125162532.1299794-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201125162532.1299794-1-daniel.vetter@ffwll.ch>
References: <20201125162532.1299794-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/ttm: don't set page->mapping
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
Cc: Thomas Hellstrom <thellstrom@vmware.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-xfs@vger.kernel.org,
 linux-mm@kvack.org, Huang Rui <ray.huang@amd.com>,
 Brian Paul <brianp@vmware.com>, linux-fsdevel@vger.kernel.org,
 Daniel Vetter <daniel.vetter@intel.com>,
 Christian Koenig <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Random observation while trying to review Christian's patch series to
stop looking at struct page for dma-buf imports.

This was originally added in

commit 58aa6622d32af7d2c08d45085f44c54554a16ed7
Author: Thomas Hellstrom <thellstrom@vmware.com>
Date:   Fri Jan 3 11:47:23 2014 +0100

    drm/ttm: Correctly set page mapping and -index members

    Needed for some vm operations; most notably unmap_mapping_range() with
    even_cows = 0.

    Signed-off-by: Thomas Hellstrom <thellstrom@vmware.com>
    Reviewed-by: Brian Paul <brianp@vmware.com>

but we do not have a single caller of unmap_mapping_range with
even_cows == 0. And all the gem drivers don't do this, so another
small thing we could standardize between drm and ttm drivers.

Plus I don't really see a need for unamp_mapping_range where we don't
want to indiscriminately shoot down all ptes.

Cc: Thomas Hellstrom <thellstrom@vmware.com>
Cc: Brian Paul <brianp@vmware.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Christian Koenig <christian.koenig@amd.com>
Cc: Huang Rui <ray.huang@amd.com>
---
 drivers/gpu/drm/ttm/ttm_tt.c | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_tt.c b/drivers/gpu/drm/ttm/ttm_tt.c
index da9eeffe0c6d..5b2eb6d58bb7 100644
--- a/drivers/gpu/drm/ttm/ttm_tt.c
+++ b/drivers/gpu/drm/ttm/ttm_tt.c
@@ -284,17 +284,6 @@ int ttm_tt_swapout(struct ttm_bo_device *bdev, struct ttm_tt *ttm)
 	return ret;
 }
 
-static void ttm_tt_add_mapping(struct ttm_bo_device *bdev, struct ttm_tt *ttm)
-{
-	pgoff_t i;
-
-	if (ttm->page_flags & TTM_PAGE_FLAG_SG)
-		return;
-
-	for (i = 0; i < ttm->num_pages; ++i)
-		ttm->pages[i]->mapping = bdev->dev_mapping;
-}
-
 int ttm_tt_populate(struct ttm_bo_device *bdev,
 		    struct ttm_tt *ttm, struct ttm_operation_ctx *ctx)
 {
@@ -313,7 +302,6 @@ int ttm_tt_populate(struct ttm_bo_device *bdev,
 	if (ret)
 		return ret;
 
-	ttm_tt_add_mapping(bdev, ttm);
 	ttm->page_flags |= TTM_PAGE_FLAG_PRIV_POPULATED;
 	if (unlikely(ttm->page_flags & TTM_PAGE_FLAG_SWAPPED)) {
 		ret = ttm_tt_swapin(ttm);
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
