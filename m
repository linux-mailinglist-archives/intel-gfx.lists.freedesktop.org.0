Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3FE7098AE
	for <lists+intel-gfx@lfdr.de>; Fri, 19 May 2023 15:48:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3AB410E2D3;
	Fri, 19 May 2023 13:48:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B823710E171
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 08:00:26 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id
 ffacd0b85a97d-3078aa0b152so6441415f8f.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 01:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1684137625; x=1686729625;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=9BhZLbvdLUzHhKwLPI877grxqwP99pN1ioBjabiIBIQ=;
 b=XSuWGUIqKhl4WVS3d80wpkB0W9uVKiF6GRZp5BN3Mai4Ak37XdOnCMQKH9ufkcUTJ5
 t9Sl9+06noUIHq/kXVjl3i2TzIvV+2FZKAoMpF0o3HmwAT5Y/vW/hcXQIyIKmh7Q+Q5a
 ZZk8yapzz/b1BHfHzcoyvFBT8IwPuhwfFJHR4ATyexPcpNZhBETpGOM+3NXn8HPw7Ieb
 5DILn5uyR9fjEc3UfKiG6vhKlpNp2MHs6H+QIQtvfzbrTdEZsfv85eAKC1iUgGf2xaUb
 bECRa4u1QUPDd/lUjG9pFYkpEHPY2G/zQijX+MSoxVzjnGV2wbil2VytyTnEh7P/CfV/
 QDTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684137625; x=1686729625;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=9BhZLbvdLUzHhKwLPI877grxqwP99pN1ioBjabiIBIQ=;
 b=jjaLEg3UOnnJ8UaKR1VSykW0Gr0RVC9YEVaQPrqySGvkcutGPiGr5563v05QcvyKSQ
 iwAvPM5qM36Op32NdA1gCEu03T/QrYKjM2Y0vGuMQbpMwt8AJ5M9wkDTgB1lBTuljCGE
 N5F6Ls/mj+UjPvJPcR4kGXy482BG5LORoczUe4F8zrGYPB3gCZekfThHe+URT35W+qLP
 2zwbVVcmJCnqN19+vVxB9frpkHHG2RgIzuj5Wq2Pw83X2jYJwSeaSJJ9w1aOjEW+WzbQ
 3jCx/YSl91DvO/GqYxZtXXaTpfzWdxTjpaaBshlYYRZRdifEF24px4mdsOy7M4sr4hf1
 wRDg==
X-Gm-Message-State: AC+VfDxoYSHyBpuQCfrCZlFV2U8VE3D7N4QpbFNx8eIdSzdmFMdMBOo3
 FDbr6eS/EIPSR18It33HDQPb2w==
X-Google-Smtp-Source: ACHHUZ5ESD0P07VtxT2JKX0ZlgysSG710S3EdZwb3c+L3lfsg0mRUk5RGumBnraglRACAQUQKGUNrQ==
X-Received: by 2002:adf:f58b:0:b0:306:2b85:8dc5 with SMTP id
 f11-20020adff58b000000b003062b858dc5mr24113405wro.37.1684137624676; 
 Mon, 15 May 2023 01:00:24 -0700 (PDT)
Received: from localhost ([102.36.222.112]) by smtp.gmail.com with ESMTPSA id
 o17-20020a5d4091000000b003078a3f3a24sm27859716wrp.114.2023.05.15.01.00.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 May 2023 01:00:23 -0700 (PDT)
Date: Mon, 15 May 2023 11:00:19 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: maarten.lankhorst@linux.intel.com
Message-ID: <991d7076-d904-4fef-8fba-75930dcf92ed@kili.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Approved-At: Fri, 19 May 2023 13:48:05 +0000
Subject: [Intel-gfx] [bug report] drm/i915: Use ttm mmap handling for ttm
 bo's.
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Maarten Lankhorst,

This is a semi-automatic email about new static checker warnings.

The patch cf3e3e86d779: "drm/i915: Use ttm mmap handling for ttm 
bo's." from Jun 10, 2021, leads to the following Smatch complaint:

    ./drivers/gpu/drm/i915/gem/i915_gem_mman.c:1008 i915_gem_mmap()
    error: we previously assumed 'node' could be null (see line 953)

./drivers/gpu/drm/i915/gem/i915_gem_mman.c
   949          drm_vma_offset_lock_lookup(dev->vma_offset_manager);
   950          node = drm_vma_offset_exact_lookup_locked(dev->vma_offset_manager,
   951                                                    vma->vm_pgoff,
   952							  vma_pages(vma));
   953		if (node && drm_vma_node_is_allowed(node, priv)) {
                    ^^^^
Lots of NULL checking

   954			/*
   955			 * Skip 0-refcnted objects as it is in the process of being
   956			 * destroyed and will be invalid when the vma manager lock
   957			 * is released.
   958			 */
   959			if (!node->driver_private) {
   960				mmo = container_of(node, struct i915_mmap_offset, vma_node);
   961				obj = i915_gem_object_get_rcu(mmo->obj);
   962	
   963				GEM_BUG_ON(obj && obj->ops->mmap_ops);
   964			} else {
   965				obj = i915_gem_object_get_rcu
   966					(container_of(node, struct drm_i915_gem_object,
   967						      base.vma_node));
   968	
   969				GEM_BUG_ON(obj && !obj->ops->mmap_ops);
   970			}
   971		}
   972		drm_vma_offset_unlock_lookup(dev->vma_offset_manager);
   973		rcu_read_unlock();
   974		if (!obj)
   975			return node ? -EACCES : -EINVAL;
                               ^^^^
Checked

   976	
   977		if (i915_gem_object_is_readonly(obj)) {
   978			if (vma->vm_flags & VM_WRITE) {
   979				i915_gem_object_put(obj);
   980				return -EINVAL;
   981			}
   982			vm_flags_clear(vma, VM_MAYWRITE);
   983		}
   984	
   985		anon = mmap_singleton(to_i915(dev));
   986		if (IS_ERR(anon)) {
   987			i915_gem_object_put(obj);
   988			return PTR_ERR(anon);
   989		}
   990	
   991		vm_flags_set(vma, VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP | VM_IO);
   992	
   993		/*
   994		 * We keep the ref on mmo->obj, not vm_file, but we require
   995		 * vma->vm_file->f_mapping, see vma_link(), for later revocation.
   996		 * Our userspace is accustomed to having per-file resource cleanup
   997		 * (i.e. contexts, objects and requests) on their close(fd), which
   998		 * requires avoiding extraneous references to their filp, hence why
   999		 * we prefer to use an anonymous file for their mmaps.
  1000		 */
  1001		vma_set_file(vma, anon);
  1002		/* Drop the initial creation reference, the vma is now holding one. */
  1003		fput(anon);
  1004	
  1005		if (obj->ops->mmap_ops) {
  1006			vma->vm_page_prot = pgprot_decrypted(vm_get_page_prot(vma->vm_flags));
  1007			vma->vm_ops = obj->ops->mmap_ops;
  1008			vma->vm_private_data = node->driver_private;
                                               ^^^^^^^^^^^^^^^^^^^^
Patch adds unchecked dereference.

  1009			return 0;
  1010		}

regards,
dan carpenter
