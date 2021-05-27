Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE5A393090
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 16:14:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A95446ECAF;
	Thu, 27 May 2021 14:13:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37B6C6E8BC
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 14:13:47 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 z137-20020a1c7e8f0000b02901774f2a7dc4so5210781wmc.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 07:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ta+1QGRj8qkvW03oDuYFdeLGx74AAZepqtGEBPaAeu4=;
 b=UjgqXOaXPTTQXUGt2iIa74wJo+KnY5lzqMYC5vcVxLQODTyY+9c1PF+T6RqT3zTQ+A
 E9nLxY7twIo2LQWn3NfSqVZYAoScsGHAmyRtnM1qmPwmKxh0kKGer8bWfM+7xFpl88lG
 IJeCFyEfeVKtawMgTeqKkdxy/HRVTdMf3lkVU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ta+1QGRj8qkvW03oDuYFdeLGx74AAZepqtGEBPaAeu4=;
 b=k9fvYzrdVwFocS3fhwdMIxWMPGCHBN9x4j2sqeIhlYowz1n4TQu+d9q75xY8hebbfj
 QRmwquwBZWMvmlZiOGmp2xz/JNm2ERv/T2Ex/99/6xoOCVYQnZuJA/4lVUXEK2snY40U
 hVEE3+gnD/50nro9ZdKFjS5tRYxnwozN6a1kNRqHwErP98l6ESTC2amNA8munSOamr7d
 JAEzvYEMyTvKB0stCKfuJ4Rm96iZxwElfXS5g6m5xchQbxbbvDahhQTRiFzj0lcUqJYp
 vpiP2l1IiKtIxyNB7OEWvUZBu06RMZhsH2sj3B46Z/bmOsbltuo1u+4SCKOK8C0t/dnf
 pP9Q==
X-Gm-Message-State: AOAM530h61lp7cXCuw0zqHKNtDwk0cEt+mQ0hu3LR86QOSeIs+eIhh6+
 ij7Y9XkmSzycddUqJOYs9y9WEnzyoRqLTQ==
X-Google-Smtp-Source: ABdhPJz4/ptsWZrOaLs3P+RA+DUiiv3OiIo7JsBVgU/moAVAMl5UiS1z/qa22fJSaFue+dDWwH5ouw==
X-Received: by 2002:a1c:e243:: with SMTP id z64mr3681766wmg.25.1622124825935; 
 Thu, 27 May 2021 07:13:45 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id x10sm3381136wrt.65.2021.05.27.07.13.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 07:13:45 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Thu, 27 May 2021 16:13:36 +0200
Message-Id: <20210527141337.3857901-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210527141337.3857901-1-daniel.vetter@ffwll.ch>
References: <20210527141337.3857901-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/shmem-helper: Switch to vmf_insert_pfn
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Maxime Ripard <mripard@kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We want to stop gup, which isn't the case if we use vmf_insert_page
and VM_MIXEDMAP, because that does not set pte_special.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 drivers/gpu/drm/drm_gem_shmem_helper.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
index 6d625cee7a6a..11edd54f0580 100644
--- a/drivers/gpu/drm/drm_gem_shmem_helper.c
+++ b/drivers/gpu/drm/drm_gem_shmem_helper.c
@@ -542,7 +542,7 @@ static vm_fault_t drm_gem_shmem_fault(struct vm_fault *vmf)
 	} else {
 		page = shmem->pages[page_offset];
 
-		ret = vmf_insert_page(vma, vmf->address, page);
+		ret = vmf_insert_pfn(vma, vmf->address, page_to_pfn(page));
 	}
 
 	mutex_unlock(&shmem->pages_lock);
@@ -612,7 +612,7 @@ int drm_gem_shmem_mmap(struct drm_gem_object *obj, struct vm_area_struct *vma)
 		return ret;
 	}
 
-	vma->vm_flags |= VM_MIXEDMAP | VM_DONTEXPAND;
+	vma->vm_flags |= VM_PFNMAP | VM_DONTEXPAND;
 	vma->vm_page_prot = vm_get_page_prot(vma->vm_flags);
 	if (shmem->map_wc)
 		vma->vm_page_prot = pgprot_writecombine(vma->vm_page_prot);
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
