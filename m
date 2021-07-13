Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2629E3C783E
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 22:52:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA4746E140;
	Tue, 13 Jul 2021 20:52:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E8956E131
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 20:52:02 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id r11so360728wro.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 13:52:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Kd/oxjgqUt41N/wlK+Bys3n4GcmvNnJC/Fz6Ii29kHw=;
 b=ZCHXAbXQ96kGqZvO99mm2anrEXmoQSnFJSoya3pZTlXwbsmczasfu2uU05jnyM6ADG
 cY2H0sDS4ExUM6y+L5Rdj9SxtwqaHhC2ZcfKhTMpnmRex6mf+SXcCfGcizKEIhu2GJxW
 Arig5jq0V1X8YVFCQkx4nzX7dRQXasAlhAFsc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Kd/oxjgqUt41N/wlK+Bys3n4GcmvNnJC/Fz6Ii29kHw=;
 b=TdLDCjzsirbwcxZgtva71kZ+0LUs94Zac+vqbL036s4p36fdgqx/+X4+N0jzDdWcA6
 A61ebABFTHxcxg1b0aFMvJDI9Va4ezIj7lLcW+WmOPKBTnFxIv/9nGiDrvCsdf5dbG8S
 0m2Ee9A7uH+tO5lpbmX/ktaZ4Z9QoS7QEQDXd5pqAheDOJBYORp/KxbHmRPStVwR3OUk
 H9szUuoQfiDt1GpYRk20xvhjC7dEUqJZyeLgVtw19Q4GTfSMvfZSvfscCdQ2SqeT7B+z
 yBkm+v6/9aphljzNcNhF0FxzrFEvsGuNVFs7Dz8xsOTEMNggeLNdtqHEd7Ka0ujk2qi4
 hthw==
X-Gm-Message-State: AOAM5308CYDojGGKS4JreSo9C/xwaZ5DDpJmSlrfAGwjovpkhqR1IZlg
 t8GaCAEsB26K4G/IwUxlBKSOjyJv0OyprA==
X-Google-Smtp-Source: ABdhPJxKfkZtUW9FYjPTgVmsS+Fhl/5M1dYn9Jd7SBRv+cG3jgCWlNil1uxQ4COUwG0JWuJsbZb/jQ==
X-Received: by 2002:a5d:4e0d:: with SMTP id p13mr8220705wrt.372.1626209521087; 
 Tue, 13 Jul 2021 13:52:01 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j10sm18642249wrt.35.2021.07.13.13.52.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jul 2021 13:52:00 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Tue, 13 Jul 2021 22:51:51 +0200
Message-Id: <20210713205153.1896059-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210713205153.1896059-1-daniel.vetter@ffwll.ch>
References: <20210713205153.1896059-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 2/4] drm/shmem-helper: Switch to
 vmf_insert_pfn
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

v2: With this shmem gem helpers now definitely need CONFIG_MMU (0day)

v3: add more depends on MMU. For usb drivers this is a bit awkward,
but really it's correct: To be able to provide a contig mapping of
buffers to userspace on !MMU platforms we'd need to use the cma
helpers for these drivers on those platforms. As-is this wont work.

Also not exactly sure why vm_insert_page doesn't go boom, because that
definitely wont fly in practice since the pages are non-contig to
begin with.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 drivers/gpu/drm/Kconfig                | 2 +-
 drivers/gpu/drm/drm_gem_shmem_helper.c | 4 ++--
 drivers/gpu/drm/gud/Kconfig            | 2 +-
 drivers/gpu/drm/tiny/Kconfig           | 4 ++--
 drivers/gpu/drm/udl/Kconfig            | 1 +
 5 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
index 0d372354c2d0..314eefa39892 100644
--- a/drivers/gpu/drm/Kconfig
+++ b/drivers/gpu/drm/Kconfig
@@ -211,7 +211,7 @@ config DRM_KMS_CMA_HELPER
 
 config DRM_GEM_SHMEM_HELPER
 	bool
-	depends on DRM
+	depends on DRM && MMU
 	help
 	  Choose this if you need the GEM shmem helper functions
 
diff --git a/drivers/gpu/drm/drm_gem_shmem_helper.c b/drivers/gpu/drm/drm_gem_shmem_helper.c
index d5e6d4568f99..296ab1b7c07f 100644
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
diff --git a/drivers/gpu/drm/gud/Kconfig b/drivers/gpu/drm/gud/Kconfig
index 1c8601bf4d91..9c1e61f9eec3 100644
--- a/drivers/gpu/drm/gud/Kconfig
+++ b/drivers/gpu/drm/gud/Kconfig
@@ -2,7 +2,7 @@
 
 config DRM_GUD
 	tristate "GUD USB Display"
-	depends on DRM && USB
+	depends on DRM && USB && MMU
 	select LZ4_COMPRESS
 	select DRM_KMS_HELPER
 	select DRM_GEM_SHMEM_HELPER
diff --git a/drivers/gpu/drm/tiny/Kconfig b/drivers/gpu/drm/tiny/Kconfig
index 5593128eeff9..c11fb5be7d09 100644
--- a/drivers/gpu/drm/tiny/Kconfig
+++ b/drivers/gpu/drm/tiny/Kconfig
@@ -44,7 +44,7 @@ config DRM_CIRRUS_QEMU
 
 config DRM_GM12U320
 	tristate "GM12U320 driver for USB projectors"
-	depends on DRM && USB
+	depends on DRM && USB && MMU
 	select DRM_KMS_HELPER
 	select DRM_GEM_SHMEM_HELPER
 	help
@@ -53,7 +53,7 @@ config DRM_GM12U320
 
 config DRM_SIMPLEDRM
 	tristate "Simple framebuffer driver"
-	depends on DRM
+	depends on DRM && MMU
 	select DRM_GEM_SHMEM_HELPER
 	select DRM_KMS_HELPER
 	help
diff --git a/drivers/gpu/drm/udl/Kconfig b/drivers/gpu/drm/udl/Kconfig
index 1f497d8f1ae5..c744175c6992 100644
--- a/drivers/gpu/drm/udl/Kconfig
+++ b/drivers/gpu/drm/udl/Kconfig
@@ -4,6 +4,7 @@ config DRM_UDL
 	depends on DRM
 	depends on USB
 	depends on USB_ARCH_HAS_HCD
+	depends on MMU
 	select DRM_GEM_SHMEM_HELPER
 	select DRM_KMS_HELPER
 	help
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
