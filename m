Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7ED3EA549
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 15:14:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 667396E3FE;
	Thu, 12 Aug 2021 13:14:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC4856E3F7
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 13:14:21 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id f5so8211943wrm.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 06:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tqOrj10a9179UKwztaPmJuVVNVQxaF3GNdFLHYLGkEM=;
 b=GVnpU5IUAzl7lF1hvjKlQYt8oyoS4Zr/koluyrY9NVNehhpfHQQc0UESmVpjVN4554
 Bxz2W9Uzewh4bsVWuWPBoDGGw1MyFFMVGZhlagY8tU8SZigGrOCo95pMudPB8D7ATcmv
 u5/wL9ea3tj+ae9IIKEZ48ll6wxIlYiKepjlA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tqOrj10a9179UKwztaPmJuVVNVQxaF3GNdFLHYLGkEM=;
 b=J2z9DrhQ8jOpCs5Br++VY2xc9M7PkuPVXuzq8yziJL9hkNrxSMz8qf1yOAWdRKq1Sa
 AVX1uoa4Uwa8IHMzb0+hZ/z8LsmYrNk3o9tZWVZMH3LsuE5Svh3K50kvqw/yYfIOjOEa
 QSDrg1u5s6HR7u9P5jiRlVoHRpUOX4iNRMcjd2gsV7aRZckBOm7mGifCu5d099FbQPPg
 p7XMr3c3uy5oBwkEbgQ6DzuEKjRUxOasKe+ZMoFApG7ZU2WvJefAmWOJ4GnsunGrBIu0
 GAzKNWZ01hyLqSVNV/8RYzK9su0Jc/dnYB6HSz3wjiJ9VsPnMh5PZnT6e1epC1l9cRiF
 Pd+w==
X-Gm-Message-State: AOAM532B/pmulBLjAzR0rtXdO0dpeeWa+Db39J9tsVlLKBshEgjC3bJO
 R26heJF0KejVGYH3zT5rI/VwFA==
X-Google-Smtp-Source: ABdhPJwGUi1eOTCjxXVtheJwXqXw5z8VB6UiMQ1P7ZLTzMZl9LCJUQ6/83x1dJ38xlOBrh4JbXrzQQ==
X-Received: by 2002:adf:d091:: with SMTP id y17mr4006752wrh.311.1628774060040; 
 Thu, 12 Aug 2021 06:14:20 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h4sm2914957wru.2.2021.08.12.06.14.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Aug 2021 06:14:19 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 12 Aug 2021 15:14:10 +0200
Message-Id: <20210812131412.2487363-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210812131412.2487363-1-daniel.vetter@ffwll.ch>
References: <20210812131412.2487363-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/shmem-helper: Switch to vmf_insert_pfn
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We want to stop gup, which isn't the case if we use vmf_insert_page
and VM_MIXEDMAP, because that does not set pte_special.

The motivation here is to stop get_user_pages from working on buffer
object mmaps in general. Quoting some discussion with Thomas:

On Thu, Jul 22, 2021 at 08:22:43PM +0200, Thomas Zimmermann wrote:
> Am 13.07.21 um 22:51 schrieb Daniel Vetter:
> > We want to stop gup, which isn't the case if we use vmf_insert_page
>
> What is gup?

get_user_pages. It pins memory wherever it is, which badly wreaks at least
ttm and could also cause trouble with cma allocations. In both cases
becaue we can't move/reuse these pages anymore.

Now get_user_pages fails when the memory isn't considered "normal", like
with VM_PFNMAP and using vm_insert_pfn. For consistency across all dma-buf
I'm trying (together with Christian König) to roll this out everywhere,
for fewer surprises.

E.g. for 5.14 iirc we merged a patch to do the same for ttm, where it
closes an actual bug (ttm gets really badly confused when there's suddenly
pinned pages where it thought it can move them).

cma allcoations already use VM_PFNMAP (because that's what dma_mmap is
using underneath), as is anything that's using remap_pfn_range. Worst case
we have to revert this patch for shmem helpers if it breaks something, but
I hope that's not the case. On the ttm side we've also had some fallout
that we needed to paper over with clever tricks.
v2: With this shmem gem helpers now definitely need CONFIG_MMU (0day)

v3: add more depends on MMU. For usb drivers this is a bit awkward,
but really it's correct: To be able to provide a contig mapping of
buffers to userspace on !MMU platforms we'd need to use the cma
helpers for these drivers on those platforms. As-is this wont work.

Also not exactly sure why vm_insert_page doesn't go boom, because that
definitely wont fly in practice since the pages are non-contig to
begin with.

v4: Explain the entire motivation a lot more (Thomas)

Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
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
index a61946374c82..cc96d1c3570e 100644
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
index d31be274a2bd..1ceb93fbdc50 100644
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

