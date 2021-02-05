Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D67310D81
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 16:58:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E126F6F47D;
	Fri,  5 Feb 2021 15:58:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 993F66F47C
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 15:58:36 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id u14so8261538wri.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Feb 2021 07:58:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=rK3MsyMoEulHKJ/zMGt+yFnGJfCMJt45GtoaiFHKLNM=;
 b=HlEoQlKL1WMDSW/dbWjebJvJeGoJqsOQNhOLH4KskcJ5ovqAWNRjqWx656HUnurYzY
 aJCQw3map2w36uUARjhYDpsXUTl+Fiypla/lOshrYTbx0CWRBEw4k6fE3sirWBwbU1bU
 yOQtGYKrnGaYqJwBMYgt89UvBpBixm2MXH2dE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rK3MsyMoEulHKJ/zMGt+yFnGJfCMJt45GtoaiFHKLNM=;
 b=hPcFVLDE2QhBHZX5rVqZivP9K0/74TE8NzpCV7JaJW1eCHYLg/XYsBrR80WPh4WLwm
 232O76Iy5DI6Q+gOco6tjaHlp9PICfywp6RVk9OB5e+DoHoE2bEl277EeH5ajuYnVsOl
 9QFaEpGem5NP1IlfJ+2yBLCNM9NxasadcnkMZBkmOg+wQ+lO9znK76PWUjtKmyJ7CFwB
 Dr2x76mTk9Tqp6YPXyT+O9R2QMHltZPGnoBKgQCaw7sjGbgf9r8RhfXu18e8x1+W58ru
 XsbgzXBlR2rH+Qjd1T6GXqKfbEkobct/Q5HFGlMtiEWVpHDnW2ssz0fYetSFA9TY9KXC
 x9ow==
X-Gm-Message-State: AOAM5317aM8iLqDd3nbiyiHbS390aUEcGUnanG2OKQbOSPzXC22saGf+
 W8C0dLXqYyYLEXxTxn+BKNwMCA==
X-Google-Smtp-Source: ABdhPJw5mK5eU3ZApKRmHlpqbA/vwgJF48hPWYROVF7p+9T6lqAPcoiKSI0gDJJNGSaig1R/RxbCXA==
X-Received: by 2002:a05:6000:1201:: with SMTP id
 e1mr5814548wrx.112.1612540715258; 
 Fri, 05 Feb 2021 07:58:35 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f7sm11827960wre.78.2021.02.05.07.58.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Feb 2021 07:58:34 -0800 (PST)
Date: Fri, 5 Feb 2021 16:58:32 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <YB1rKLGvpnFDom11@phenom.ffwll.local>
References: <20210205130307.8294-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210205130307.8294-1-chris@chris-wilson.co.uk>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Autoselect
 CONFIG_CHECKPOINT_RESTORE for SYS_kcmp
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
Cc: Jani Nikula <jani.nikula@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 05, 2021 at 01:03:07PM +0000, Chris Wilson wrote:
> gallium (iris) depends on os_same_file_description() to disambiguate
> screens and so avoid importing the same screen fd twice as two distinct
> entities (that share all the kernel resources, so actions on screen
> affect the other and would cause random faiure). As they depend on it,
> so must we. os_same_file_description() uses SYS_kcmp to check the file
> tables for the equivalent struct file, but SYS_kcmp is hidden behind
> CONFIG_CHECKPOINT_RESTORE. As this is not default, we must select it for
> ourselves to ensure that our userspace is fully supported.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3046
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>

Hm shouldn't we crank this up to CONFIG_DRM?

Or embedded folks going to be unhappy about that? If so I guess we'd need
to pull out just the SYS_kcmp part ...

Asking because I think Bas is also looking at this, and it's not great if
we're building on this and then users end up with very subtly broken gl/vk
stacks :-/
-Daniel

> ---
>  drivers/gpu/drm/i915/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
> index 1e1cb245fca7..470a5214bd33 100644
> --- a/drivers/gpu/drm/i915/Kconfig
> +++ b/drivers/gpu/drm/i915/Kconfig
> @@ -21,6 +21,7 @@ config DRM_I915
>  	select ACPI_VIDEO if ACPI
>  	select ACPI_BUTTON if ACPI
>  	select SYNC_FILE
> +	select CHECKPOINT_RESTORE # gallium depends on SYS_kcmp
>  	select IOSF_MBI
>  	select CRC32
>  	select SND_HDA_I915 if SND_HDA_CORE
> -- 
> 2.20.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
