Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E24D1CD54A
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 11:36:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1909C6E406;
	Mon, 11 May 2020 09:36:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 193406E406
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 09:36:03 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id w19so3617949wmc.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 02:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mNifH0m3qqiHY33SE6VQHyHlHvenLFaDmPGPAEsZvyk=;
 b=jKHJHfDoDkf/XjdHtSkrEW+/wOnRGqRS9IO6GaSc/7SOSo5xCaC9zAOPVptZG+S+7n
 SncgoZ7nOAS0QoLhc7sUUm5Dr0eRQd72DfazQM04sOTXFaOHyS6/uhSXjW9ENGf8ps0w
 /JauubLcp2NtflEk+o2taynziqNzYmpu85bBM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mNifH0m3qqiHY33SE6VQHyHlHvenLFaDmPGPAEsZvyk=;
 b=qVZzJhIUa5FBwmuJV8N0w6fjTHtOe1aKz2rmkJ5PaZDsfSSx5zB/wCXuSj5UlSgdFt
 Stc69L7bH0U17urUSEwa9H6isH8seg6NBGTUGNL2fhYjsbOfNBRXuDkE96RFuHsTO9vs
 s1gcLrBisS+FkKClSct05j1BNukPPlkLZ4xnAiJERwfbDlpErspV3/LqQFvP6v20ELf1
 dHJIA+JA+Ci48JbQT+vKUOyCxZ05ekXgP/o6gPh4ew42S6eZM5WVXxz2iQ6b9AbQJ9UM
 lgZh9TwUBJDmO2nn/j/mI1e8N7dPQ98qN+1aZ4VphhYkyiFjkPzWe3b+nmrYQ7NyKt+7
 Gzow==
X-Gm-Message-State: AGi0PuZPc8wWHBmxmjwoS+MTmMflgVyJux69dI2MgcHq3lcMBT1YXUUW
 rn0WT2I1ow29VlwYziEtiLSkLA==
X-Google-Smtp-Source: APiQypI+hKFQ1TVTlAbMvk6+CfRIJiFjrVjcwRpLyLE8pfuY4Ftmd/mMhs5Bs8JWjJa3HVDIgnIBwQ==
X-Received: by 2002:a7b:c955:: with SMTP id i21mr32376991wml.25.1589189761718; 
 Mon, 11 May 2020 02:36:01 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q17sm9013945wmk.36.2020.05.11.02.36.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 02:36:01 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 11 May 2020 11:35:47 +0200
Message-Id: <20200511093554.211493-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200511093554.211493-1-daniel.vetter@ffwll.ch>
References: <20200511093554.211493-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/9] drm/gem: WARN if drm_gem_get_pages is
 called on a private obj
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

No real functional change, since this just converts an annoying Oops
into a more harmless WARNING backtrace. It's still a driver bug.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/drm_gem.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
index 7bf628e13023..63bfd97e69d8 100644
--- a/drivers/gpu/drm/drm_gem.c
+++ b/drivers/gpu/drm/drm_gem.c
@@ -548,6 +548,10 @@ static void drm_gem_check_release_pagevec(struct pagevec *pvec)
  * set during initialization. If you have special zone constraints, set them
  * after drm_gem_object_init() via mapping_set_gfp_mask(). shmem-core takes care
  * to keep pages in the required zone during swap-in.
+ *
+ * This function is only valid on objects initialized with
+ * drm_gem_object_init(), but not for those initialized with
+ * drm_gem_private_object_init() only.
  */
 struct page **drm_gem_get_pages(struct drm_gem_object *obj)
 {
@@ -556,6 +560,10 @@ struct page **drm_gem_get_pages(struct drm_gem_object *obj)
 	struct pagevec pvec;
 	int i, npages;
 
+
+	if (WARN_ON(!obj->filp))
+		return ERR_PTR(-EINVAL);
+
 	/* This is the shared memory object that backs the GEM resource */
 	mapping = obj->filp->f_mapping;
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
