Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E593F843136
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 00:27:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DEAA10E19B;
	Tue, 30 Jan 2024 23:26:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
 [209.85.160.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1859D11371B
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 23:26:50 +0000 (UTC)
Received: by mail-qt1-f173.google.com with SMTP id
 d75a77b69052e-42a9199cfd2so26186181cf.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 15:26:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1706657149; x=1707261949;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=BpnkNIMWjK3UA8+cI8F5+1ebDnJsCDZ0x3GH9mrCdho=;
 b=YZQ7givPQhmyNmeAPrbIC0UOdzScSIwx3LIvaC9oUifSTkEfdjQX9FRGSZH5Nz/4pY
 MT/mopLJXnL5VnFFbhENV2lLi09SMdeZ7nnFoGpGh9Uh1ENZ6vTZW1+uZzu/LTc7828R
 00h6LtVcLLgUZ1QIJ2remzSXzNZMGRFtFFs6w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706657149; x=1707261949;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=BpnkNIMWjK3UA8+cI8F5+1ebDnJsCDZ0x3GH9mrCdho=;
 b=pEhDAGkmGRyxnnPevhxfUsLZCNh1cn1JVlbWr/Uow8XGKROMM5pU8vAEdBK5jDlJrm
 mwbr9mPE+8Qe8NUX+EJXKjHaE3MvC8CfovmJhnnITTBJhJqKxJHn/SIIKWTMZKrz7Jii
 zfWebccIVB0DY0ymD0asbdyziOCJgPBJ0NXoRvxr2wdm45+N/YTh0f2oOcaY5HwQCSwN
 hwbkSQUOIKMUCfXGsrnFOhtn6JsRBpOQ65L/bqeeo9gPhymDHw1GYOVm1KumBHJ6CJfp
 Lgbskp6fvo9XGGclIzslfDAmDXMDC6TlZRcqv5pHuw7WMN24scDeWn0CadTvEv/85JEc
 ngOA==
X-Gm-Message-State: AOJu0YzKdLndIPnOSIj0zL1ud/SlE5Kdi7rTICI7dO9uhzyF1EqnZH1w
 JTl7JNRpCSQkoHMDHemeQnCbL7dVpm1zIqX6ihEdErZ7k9UWj1UWUPSaY9wHVg==
X-Google-Smtp-Source: AGHT+IEQFJa4rSC8NTl3uD9ERcTQW2fPqnM5pauhdgke0w9JAf7dF03MIwFiYHKMUMlUI7VWEHz6OQ==
X-Received: by 2002:a05:622a:229b:b0:42a:6658:d798 with SMTP id
 ay27-20020a05622a229b00b0042a6658d798mr134435qtb.55.1706657149234; 
 Tue, 30 Jan 2024 15:25:49 -0800 (PST)
Received: from google.com (240.157.150.34.bc.googleusercontent.com.
 [34.150.157.240]) by smtp.gmail.com with ESMTPSA id
 bc6-20020a05622a1cc600b00427f1fa87e6sm3180002qtb.56.2024.01.30.15.25.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Jan 2024 15:25:49 -0800 (PST)
Date: Tue, 30 Jan 2024 23:25:47 +0000
From: Paz Zcharya <pazz@chromium.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3 13/16] drm/i915/fbdev: Fix smem_start for LMEMBAR
 stolen objects
Message-ID: <ZbmFe3mWDJBpj7oR@google.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-14-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240116075636.6121-14-ville.syrjala@linux.intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 16, 2024 at 09:56:33AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> The "io" address of an object is its dma address minus the
> region.start. Subtract the latter to make smem_start correct.
> The current code happens to work for genuine LMEM objects
> as LMEM region.start==0, but for LMEMBAR stolen objects
> region.start!=0.
> 
> TODO: perhaps just set smem_start=0 always as our .fb_mmap()
> implementation no longer depends on it? Need to double check
> it's not needed for anything else...
> 
> Cc: Paz Zcharya <pazz@chromium.org>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Hi Ville,

Thank you so much for this incredible series.
It solves the issue regarding MTL initial plane readout
that Andrzej Hajda and I worked on in
https://patchwork.freedesktop.org/patch/570811/?series=127130&rev=2
In addition, it solved the issue with the new GOP.

I tested it on two different devices with Meteor Lake and it worked perfectly:
no i915 errors, no flickers or observable issues.

Tested-by: Paz Zcharya <pazz@chromium.org>

> ---
>  drivers/gpu/drm/i915/display/intel_fbdev_fb.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> index 1ac05d90b2e8..0665f943f65f 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev_fb.c
> @@ -79,7 +79,8 @@ int intel_fbdev_fb_fill_info(struct drm_i915_private *i915, struct fb_info *info
>  		/* Use fbdev's framebuffer from lmem for discrete */
>  		info->fix.smem_start =
>  			(unsigned long)(mem->io.start +
> -					i915_gem_object_get_dma_address(obj, 0));
> +					i915_gem_object_get_dma_address(obj, 0) -
> +					mem->region.start);
>  		info->fix.smem_len = obj->base.size;
>  	} else {
>  		struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
> -- 
> 2.41.0
> 
