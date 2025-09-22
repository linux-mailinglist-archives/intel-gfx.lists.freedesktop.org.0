Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A78B8ED41
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 04:56:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A00710E38E;
	Mon, 22 Sep 2025 02:56:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="EzlXxv6w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com
 [209.85.214.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E0BE10E38E
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Sep 2025 02:56:37 +0000 (UTC)
Received: by mail-pl1-f181.google.com with SMTP id
 d9443c01a7336-26a0a694ea8so21761585ad.3
 for <intel-gfx@lists.freedesktop.org>; Sun, 21 Sep 2025 19:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1758509796; x=1759114596; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=FFA6kItw/K6meNz1u15fhY/rdUyFZIeMBbt/vG3LK7U=;
 b=EzlXxv6wnFFA050ASexzfYrW8c1FrBSTAdWlkU9xGrKbL2Hg5igi9B8N9FTM1JsquL
 HBXXqfViotGZxYouvlPBWNz6soaGltUsF31L3SV/Xx+MGlfuNjjkCmBAOZkbbaHD2Rl2
 UjWkHcl8ErrVDErMje3XQvIUkxi9lY7vScHjXys4fvBNQlwqQbD25HKQT/iZk3UdhUTD
 wSPh9Kunx7rd47krvqFEc2CGgtjC/iDdUZdwIHg/vxjqMegfpU32vWzRITbMpKuMG65P
 dyJTuM4MrJ9UzxQkGSJXLf5f3IXZpDxD3vhEcXyY/9Ap8+3a8zuA9yI4UY0aNt4/ICh8
 kVCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1758509796; x=1759114596;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=FFA6kItw/K6meNz1u15fhY/rdUyFZIeMBbt/vG3LK7U=;
 b=ZZzY+AzVGWaRP54h1LLGEv7HpAKaZsqjOlpuQsdpTbmng+twviB0YC8KKBkxdTG3vN
 /6L1LKpeWjUhwDvN0cjIGALTLMyjP0O2GFWpKtnfbvcYRIG4MtuvZlVCck6Jik3KqnCS
 oEbV/H0L/vyzmL0aUG6iXXecPIgkrgUw9d7+tzDTJ5Xy7Vqs8Qq4W5ZcVNpf49nK8KAA
 kN9y8Ksinh8fjXsUXUgCbxyQ3QlTFKDDusa0WwVPkaIvB9lEAzk6gQ4RMfo+WSlOQJ0J
 B8A82Ci6J3Ak9nf+gzyjSaP6h1V4k1hBvytjshzOGPsnCXs8GnwfSVGi2OdktB8qXAl9
 96vQ==
X-Gm-Message-State: AOJu0Yw5fofiRJkOlwXWjcst2Vaa3XuW5KiuKC8OpBA0RC3kLLDfVY6W
 1Ys12cKHse3nBta6c49Q1XvoJU0DBIk7RC9hWK11ybzVEW5N3RCgtGph
X-Gm-Gg: ASbGncsxX9AbAiWTG1ct+75KSZL6yf9/No3fgl4ZXvfk6GRyXAN4Em3agZmNGeGIgHO
 NNzP+8oq4PXjA7CaIJVPfGoEJAXNuGC2xJfQDxhjk5QUDyItiZm/w4lBz90Ri+HeTTK6paFOiKK
 f2ViG9vJmuYoxR3Qte4SsUcz8rlIf8kv+pd8wyB2HWQqqBpyUJSpo0m99A99f/yYrUD8A8hmONx
 1jDiUX0ubMMGcQxeKjIhHb+eEURWeztMAYtoCpFISp9tUIODTH0MVhofObLrOH3ck+Sq28xNb9z
 8kfk4fSaJMG6AIaL4cxS53i39rO8LOAInyL+4nKnsuUmWZWgdwoFv7Ko/nNzHKpLKXMtyorDS8s
 HD9aQ3j4mRNMoQS/Nmu0j19btTYTyMkrOD3G6TTk=
X-Google-Smtp-Source: AGHT+IGA0Cc/sJfSsEQrPGuVmdRTewUaU1LDF2do2XpS1JxmosPIO/HoaHcSyD+UTeI4OlYnrhZpgA==
X-Received: by 2002:a17:902:e852:b0:24f:8286:9e5d with SMTP id
 d9443c01a7336-269ba447df6mr164004925ad.26.1758509796399; 
 Sun, 21 Sep 2025 19:56:36 -0700 (PDT)
Received: from localhost ([2400:2650:24e0:bf00:6647:e402:ac7:7283])
 by smtp.gmail.com with UTF8SMTPSA id
 d9443c01a7336-2698005309bsm117802315ad.27.2025.09.21.19.56.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Sep 2025 19:56:36 -0700 (PDT)
Date: Mon, 22 Sep 2025 11:56:33 +0900
From: Zhenyu Wang <zhenyuw.linux@gmail.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com,
 alex.zuo@intel.com, andi.shyti@linux.intel.com
Subject: Re: [PATCH v2] drm/i915/gvt: Improve intel_vgpu_ioctl hdr error
 handling
Message-ID: <aNC64Slzd2neOzDy@dell-wzy>
References: <20250919205740.77847-2-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250919205740.77847-2-jonathan.cavitt@intel.com>
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

On Fri, Sep 19, 2025 at 08:57:41PM +0000, Jonathan Cavitt wrote:
> Add error handling for the following VFIO_DEVICE_SET_IRQS cases with
> respect to the hdr struct:
> 
> - More than one VFIO_IRQ_DATA_TYPE_MASK flag is set in hdr.flags
> - More than one VFIO_IRQ_ACTION_TYPE_MASK flag is set in hdr.flags
> - hdr.count is not specified
> 
> Note that since hdr.count != 0, data_size != 0 is guaranteed unless
> vfio_set_irqs_validate_and_prepare fails and returns an error.  So, we
> no longer need to check data_size before running memdup_user because
> checking the return value of the function is sufficient.
> 
> v2: Use correct name for mask
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gvt/kvmgt.c | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gvt/kvmgt.c b/drivers/gpu/drm/i915/gvt/kvmgt.c
> index 69830a5c49d3..a980269070d8 100644
> --- a/drivers/gpu/drm/i915/gvt/kvmgt.c
> +++ b/drivers/gpu/drm/i915/gvt/kvmgt.c
> @@ -1361,21 +1361,27 @@ static long intel_vgpu_ioctl(struct vfio_device *vfio_dev, unsigned int cmd,
>  		if (copy_from_user(&hdr, (void __user *)arg, minsz))
>  			return -EFAULT;
>  
> +		if (hweight32(hdr.flags & VFIO_IRQ_SET_DATA_TYPE_MASK) != 1 ||
> +		    hweight32(hdr.flags & VFIO_IRQ_SET_ACTION_TYPE_MASK) != 1)
> +			return -EINVAL;
> +

Possible to move this into general vfio code? Clearly vfio can't set mutiple types
of data or action on same series of data, so maybe good to check in general. But
enough for gvt of coz.

Reviewed-by: Zhenyu Wang <zhenyuw.linux@gmail.com>

>  		if (!(hdr.flags & VFIO_IRQ_SET_DATA_NONE)) {
>  			int max = intel_vgpu_get_irq_count(vgpu, hdr.index);
>  
> +			if (!hdr.count)
> +				return -EINVAL;
> +
>  			ret = vfio_set_irqs_validate_and_prepare(&hdr, max,
>  						VFIO_PCI_NUM_IRQS, &data_size);
>  			if (ret) {
>  				gvt_vgpu_err("intel:vfio_set_irqs_validate_and_prepare failed\n");
>  				return -EINVAL;
>  			}
> -			if (data_size) {
> -				data = memdup_user((void __user *)(arg + minsz),
> -						   data_size);
> -				if (IS_ERR(data))
> -					return PTR_ERR(data);
> -			}
> +
> +			data = memdup_user((void __user *)(arg + minsz),
> +					   data_size);
> +			if (IS_ERR(data))
> +				return PTR_ERR(data);
>  		}
>  
>  		ret = intel_vgpu_set_irqs(vgpu, hdr.flags, hdr.index,
> -- 
> 2.43.0
> 
