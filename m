Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB6FBF019D
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 11:10:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F9B510E328;
	Mon, 20 Oct 2025 09:10:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="1ffmOr+D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D20210E328
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Oct 2025 09:10:36 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id
 5b1f17b1804b1-471193a9d9eso35629325e9.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Oct 2025 02:10:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1760951435; x=1761556235;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=b5tedAT73HO5ufC/WfszXWOSmLN+gIpMiv+Y/meRlwI=;
 b=1ffmOr+DrOuOIOc9U8sVuc/pFwe+DmR1i76dPJuzoB1m/toXcTyFN7SHsCJ2Jd46gv
 bpNSgzeuhWGUKzOBY+WEKTVcsie5c4TZzUhw3G+ZWGU5baBSIugOY5FAq6lNb5OuV3qp
 ZyNQG188380pcCjGT0HqU2NwB5DINXySNI/WT60Nqfmg5WbkS0RNJ6SKHZ4xEdfKCdtI
 Sl6q6a97KvvaH0PnhI4b8aJMOt9g8bYm18GnUjhZa/1WJKXH75Q1+HjLx0MX4PDBLoaD
 q4oD2+7s9ixh/nsgwJ3FGfWsyec3cDlXlUhp6OXlvTZmjqU5HOHFqAIgsVgmFSfSjZTr
 L18w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760951435; x=1761556235;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=b5tedAT73HO5ufC/WfszXWOSmLN+gIpMiv+Y/meRlwI=;
 b=Vl9Dc+Mxv2fzZo/BXAJba1GP1iQGxqWB4A8FJG1NMYp8TNV3SzWfuEnx8BgH42Tloz
 cUfJz7Wedv1AZ2VfzXdtH+g7i3/sbB+kvva4azGbM+56CoCq+pBRioQ6uo0mInu9mSYq
 L3XPqu824rNZLueNB6s6VaY6ov/8azg36HLOZ8p+1vwlAFBzW4K6gDfPhyiW1FjYW9Iq
 6D3j7HIipCAHVgIKpnQL0hwiktSh5ZkqM1AxeEdQm3Qn6H0qoxd9KRfs0bEle3hVCPwe
 1uWuWxUBGFTO1l2Noy6lJY75ezuucIBRGyNKm+iZt45eQC2f3s3TayWwRryQByr4g5wC
 b9yQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVGFbh19R6d1SwMhCo9ydkJ3l441/KpiLXHMSAu9QJ/gIasSnrFUaxCPwUBMAVlURZK5TmoR9nTAug=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwFmBUwHGhZ/Fdc7K5sSaRI8I7f0MwcUnxrhy9Rl2DaZLFQhM3N
 FuGP40JFbA/gWkbLcs7zFDQV481OEAMMBupHRRmDY/TPYm2RIR1U8nPEHCwz0mN/W6g=
X-Gm-Gg: ASbGncvgra65h1PDbFPWpA3M0G39ncYzhxq/UjvxZglxLZGNIv5A22VXH6HrMMILEF3
 bwsfKe8o/9rcqLO/6MgGm9OhNJ6Gow9hO8+Qb7PFROJyUAMfi88duE/tsWuPoWlwWVrt+xFkZFP
 IszyA4FVljf1NlFeluzfVMlayKhsNF7O6uwEyhsg2Hy1r1EtVlfiCvUXbky7POGmMcxFGOb4nO4
 bMnUXGt5IYavoB7XO7Uhw1AF3cyrmoykGMmAuEXiNX1g37Ai6VxCortSZUoRT2R7G6bvN9Aju/g
 z8sCXentuB22q32QV3BgnWxBj128wsfQgtQZz/nE4nmhFOnUaI5ln5j4BxZOXktZ1f8MnfpuhGF
 dmfj7FOhBgPhI3zv/0P2KDOriPLPXx0mW8IpRmrMsVBrjz9090mhwZDBlxzp/1jAFUgvjo2KpFS
 ba1Szrfbv480WayJE=
X-Google-Smtp-Source: AGHT+IH3gXMi4edAZfP0WIQNa+oQTzYbMLse+FRL4oaUtLdeWvDJfxezX0KKAC3SgkQ3mXsP943ZWw==
X-Received: by 2002:a05:600c:3b03:b0:46e:330a:1762 with SMTP id
 5b1f17b1804b1-471179079dfmr97785585e9.22.1760951434703; 
 Mon, 20 Oct 2025 02:10:34 -0700 (PDT)
Received: from [192.168.0.101] ([90.242.12.242])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4715257d972sm137948265e9.1.2025.10.20.02.10.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Oct 2025 02:10:34 -0700 (PDT)
Message-ID: <7584abe7-0c3f-4022-b510-c2a57fd167bb@ursulin.net>
Date: Mon, 20 Oct 2025 10:10:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 05/13] drm/gem: Add huge tmpfs mount point helper
To: =?UTF-8?Q?Lo=C3=AFc_Molinari?= <loic.molinari@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Melissa Wen <mwen@igalia.com>,
 =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
 Hugh Dickins <hughd@google.com>, Baolin Wang
 <baolin.wang@linux.alibaba.com>, Andrew Morton <akpm@linux-foundation.org>,
 Al Viro <viro@zeniv.linux.org.uk>, =?UTF-8?Q?Miko=C5=82aj_Wasiak?=
 <mikolaj.wasiak@intel.com>, Christian Brauner <brauner@kernel.org>,
 Nitin Gote <nitin.r.gote@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Jonathan Corbet <corbet@lwn.net>,
 Christopher Healy <healych@amazon.com>, Matthew Wilcox
 <willy@infradead.org>, Bagas Sanjaya <bagasdotme@gmail.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, linux-mm@kvack.org,
 linux-doc@vger.kernel.org, kernel@collabora.com
References: <20251015153018.43735-1-loic.molinari@collabora.com>
 <20251015153018.43735-6-loic.molinari@collabora.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20251015153018.43735-6-loic.molinari@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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


On 15/10/2025 16:30, Loïc Molinari wrote:
> Add the drm_gem_huge_mnt_create() helper to avoid code duplication in
> the i915, V3D, Panfrost and Panthor drivers. It creates and mounts a
> dedicated huge tmpfs mountpoint, for the lifetime of a DRM device,
> used at GEM object initialization.
> 
> The next commits will port drivers to this helper.
> 
> v3:
> - store huge tmpfs mountpoint in drm_device
> 
> v4:
> - return 0 in builds with CONFIG_TRANSPARENT_HUGEPAGE=n
> - return 0 when huge_mnt already exists
> 
> Signed-off-by: Loïc Molinari <loic.molinari@collabora.com>
> ---
>   drivers/gpu/drm/drm_gem.c | 58 +++++++++++++++++++++++++++++++++++++++
>   include/drm/drm_device.h  | 11 ++++++++
>   include/drm/drm_gem.h     |  1 +
>   3 files changed, 70 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
> index a98d5744cc6c..db8c0a217add 100644
> --- a/drivers/gpu/drm/drm_gem.c
> +++ b/drivers/gpu/drm/drm_gem.c
> @@ -29,6 +29,7 @@
>   #include <linux/export.h>
>   #include <linux/file.h>
>   #include <linux/fs.h>
> +#include <linux/fs_context.h>
>   #include <linux/iosys-map.h>
>   #include <linux/mem_encrypt.h>
>   #include <linux/mm.h>
> @@ -82,6 +83,63 @@
>    * up at a later date, and as our interface with shmfs for memory allocation.
>    */
>   
> +static void drm_gem_huge_mnt_free(struct drm_device *dev, void *data)
> +{
> +	drm_WARN_ON(dev, dev->huge_mnt == NULL);

I don't see a benefit of adding this check but maybe I am missing something.

> +
> +	kern_unmount(dev->huge_mnt);
> +	dev->huge_mnt = NULL;

Ditto - device is going away, no? So why bother clearing the pointer?

Also, is the compiler smart enough to not compile or complain this 
function is unused in the !CONFIG_TRANSPARENT_HUGEPAGE case?

> +}
> +
> +/**
> + * drm_gem_huge_mnt_create - Create, mount and use a huge tmpfs mountpoint
> + * @dev: drm_device a huge tmpfs mountpoint should be used with
> + * @value: huge tmpfs mount option value
> + *
> + * This function creates and mounts a dedicated huge tmpfs mountpoint for the
> + * lifetime of the drm device @dev which is used at GEM object initialization
> + * with drm_gem_object_init().
> + *
> + * The most common option value @value is "within_size" which only allocates
> + * huge pages if the page will be fully within the GEM object size. "always",
> + * "advise" and "never" are supported too but the latter would just create a
> + * mountpoint similar to the default one (`shm_mnt`). See shmemfs and
> + * Transparent Hugepage for more information.
> + *
> + * Returns:
> + * 0 on success or a negative error code on failure.
> + */
> +int drm_gem_huge_mnt_create(struct drm_device *dev, const char *value)
> +{
> +	struct file_system_type *type;
> +	struct fs_context *fc;
> +	int ret;
> +
> +	if (!IS_ENABLED(CONFIG_TRANSPARENT_HUGEPAGE))
> +		return 0;

Is there a specific reason why the !CONFIG_TRANSPARENT_HUGEPAGE path is 
not implemented in the header as a static inline? That would enable 
those builds to avoid the pointless function in text and function call 
in the drivers.

> +	if (unlikely(dev->huge_mnt))
> +		return 0;

Any special reason why it is allowed to call it multiple times with success?

> +
> +	type = get_fs_type("tmpfs");
> +	if (unlikely(!type))
> +		return -EOPNOTSUPP;
> +	fc = fs_context_for_mount(type, SB_KERNMOUNT);
> +	if (IS_ERR(fc))
> +		return PTR_ERR(fc);
> +	ret = vfs_parse_fs_string(fc, "source", "tmpfs");
> +	if (unlikely(ret))
> +		return -ENOPARAM;
> +	ret = vfs_parse_fs_string(fc, "huge", value);
> +	if (unlikely(ret))
> +		return -ENOPARAM;
> +
> +	dev->huge_mnt = fc_mount_longterm(fc);
> +	put_fs_context(fc);
> +
> +	return drmm_add_action_or_reset(dev, drm_gem_huge_mnt_free, NULL);
> +}
> +EXPORT_SYMBOL_GPL(drm_gem_huge_mnt_create);
> +
>   static void
>   drm_gem_init_release(struct drm_device *dev, void *ptr)
>   {
> diff --git a/include/drm/drm_device.h b/include/drm/drm_device.h
> index 778b2cca6c49..352e3db402d7 100644
> --- a/include/drm/drm_device.h
> +++ b/include/drm/drm_device.h
> @@ -3,6 +3,7 @@
>   
>   #include <linux/list.h>
>   #include <linux/kref.h>
> +#include <linux/mount.h>
>   #include <linux/mutex.h>
>   #include <linux/idr.h>
>   #include <linux/sched.h>
> @@ -168,6 +169,16 @@ struct drm_device {
>   	 */
>   	struct drm_master *master;
>   
> +	/**
> +	 * @huge_mnt:
> +	 *
> +	 * Huge tmpfs mountpoint used at GEM object initialization
> +	 * drm_gem_object_init(). Drivers can call drm_gem_huge_mnt_create() to
> +	 * create a huge tmfps mountpoint. The default tmpfs mountpoint
> +	 * (`shm_mnt`) is used if NULL.
> +	 */
> +	struct vfsmount *huge_mnt;

Maybe it would be nice to hide this in the !CONFIG_TRANSPARENT_HUGEPAGE 
case? A bit ugly to add an ifdef but it is also a bit questionable to 
force the member on everyone.

Regards,

Tvrtko

> +
>   	/**
>   	 * @driver_features: per-device driver features
>   	 *
> diff --git a/include/drm/drm_gem.h b/include/drm/drm_gem.h
> index 7c8bd67d087c..7285a62d9afc 100644
> --- a/include/drm/drm_gem.h
> +++ b/include/drm/drm_gem.h
> @@ -492,6 +492,7 @@ struct drm_gem_object {
>   		DRM_GEM_FOPS,\
>   	}
>   
> +int drm_gem_huge_mnt_create(struct drm_device *dev, const char *value);
>   void drm_gem_object_release(struct drm_gem_object *obj);
>   void drm_gem_object_free(struct kref *kref);
>   int drm_gem_object_init(struct drm_device *dev,

