Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 947313EB986
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 17:51:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B35D889B01;
	Fri, 13 Aug 2021 15:51:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D78CD6E874
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Aug 2021 15:51:12 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id x12so13894657wrr.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Aug 2021 08:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=chmAAuuu9/imXcL05QrcQEYuvIcsA2PuEr2bsNmWeMk=;
 b=YXNQ1jJxmMfb4W6F0Ii5J6L9JrznTqUjOcuFAqOOrX6uBrOVpgkK22QocovoZ8l10V
 qau/1XGthmja7EiXttRCYcn6dncQJxnTAlO0kX6joAsSq5pqJchTi7vuTc8ezgGzlkG9
 1rPG2lPmD4puppEecPzIS3+snUwBW4xNT4PhM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=chmAAuuu9/imXcL05QrcQEYuvIcsA2PuEr2bsNmWeMk=;
 b=d5yl7fMhwWhfWS5F7Gv2nC+ZZMiR1Rhop6pQSscmCkwf6Y2iMtW6xEM5BQFWe72xF5
 maqasSYd8m9lKHJCXRdmR8r6EtMyvwlruuxFYEJ9wg8ZPdkNyMiTQd5+B3QXkJcA78n9
 BZiGfbq6uB27ED3yorEFvupjCrAEiR1XrphYXUhbdfs5622Gvmw8J/VL/JkjhqSp5VcE
 GtBMcE1Y5QCjBY3bBLh1sIItgQTCvBKnqm9/3903EW3CPtAyR2mMNdfL+m7XsErP9vk/
 2l2fOWPSQvgqzfY/ZGNYKpyOjLU97Avmf7jaTVdp+L+k9IPSVFQTTqo7SCB0V2EJD7Kq
 g0Kw==
X-Gm-Message-State: AOAM531StTimh1kt9tvBas9J+OZqXi8Q4AD1ZooIAO0PVhwZfr7TIKXs
 x/dB40fdd+HHD01JCcnvrTWxjA==
X-Google-Smtp-Source: ABdhPJxmL/0BdkkgG1cfg0Kb8lawu3ocVEXGdInJyWEC5vjU11a4bxLVspErgkAcGWROUTwh6G7ozg==
X-Received: by 2002:a5d:66d1:: with SMTP id k17mr3944388wrw.102.1628869871300; 
 Fri, 13 Aug 2021 08:51:11 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z13sm1942615wrs.71.2021.08.13.08.51.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Aug 2021 08:51:10 -0700 (PDT)
Date: Fri, 13 Aug 2021 17:51:08 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@linux.ie, daniel@ffwll.ch,
 sumit.semwal@linaro.org, christian.koenig@amd.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 intel-gfx@lists.freedesktop.org, skhan@linuxfoundation.org,
 gregkh@linuxfoundation.org, linux-kernel-mentees@lists.linuxfoundation.org,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <YRaU7EB5shTUMZZ7@phenom.ffwll.local>
Mail-Followup-To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@linux.ie, sumit.semwal@linaro.org,
 christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
 skhan@linuxfoundation.org, gregkh@linuxfoundation.org,
 linux-kernel-mentees@lists.linuxfoundation.org
References: <20210813085450.32494-1-desmondcheongzx@gmail.com>
 <20210813085450.32494-3-desmondcheongzx@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210813085450.32494-3-desmondcheongzx@gmail.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 2/2] drm: unexport drm_ioctl_permit
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

On Fri, Aug 13, 2021 at 04:54:50PM +0800, Desmond Cheong Zhi Xi wrote:
> Since the last user of drm_ioctl_permit was removed, and it's now only
> used in drm_ioctl.c, unexport the symbol.
> 
> Reported-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> Signed-off-by: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>

Applied to drm-misc-next for 5.16, thanks for your patch.
-Daniel

> ---
>  drivers/gpu/drm/drm_ioctl.c | 15 +--------------
>  include/drm/drm_ioctl.h     |  1 -
>  2 files changed, 1 insertion(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_ioctl.c b/drivers/gpu/drm/drm_ioctl.c
> index eb4ec3fab7d1..fe271f6f96ab 100644
> --- a/drivers/gpu/drm/drm_ioctl.c
> +++ b/drivers/gpu/drm/drm_ioctl.c
> @@ -522,19 +522,7 @@ int drm_version(struct drm_device *dev, void *data,
>  	return err;
>  }
>  
> -/**
> - * drm_ioctl_permit - Check ioctl permissions against caller
> - *
> - * @flags: ioctl permission flags.
> - * @file_priv: Pointer to struct drm_file identifying the caller.
> - *
> - * Checks whether the caller is allowed to run an ioctl with the
> - * indicated permissions.
> - *
> - * Returns:
> - * Zero if allowed, -EACCES otherwise.
> - */
> -int drm_ioctl_permit(u32 flags, struct drm_file *file_priv)
> +static int drm_ioctl_permit(u32 flags, struct drm_file *file_priv)
>  {
>  	/* ROOT_ONLY is only for CAP_SYS_ADMIN */
>  	if (unlikely((flags & DRM_ROOT_ONLY) && !capable(CAP_SYS_ADMIN)))
> @@ -557,7 +545,6 @@ int drm_ioctl_permit(u32 flags, struct drm_file *file_priv)
>  
>  	return 0;
>  }
> -EXPORT_SYMBOL(drm_ioctl_permit);
>  
>  #define DRM_IOCTL_DEF(ioctl, _func, _flags)	\
>  	[DRM_IOCTL_NR(ioctl)] = {		\
> diff --git a/include/drm/drm_ioctl.h b/include/drm/drm_ioctl.h
> index 13a68cdcea36..fd29842127e5 100644
> --- a/include/drm/drm_ioctl.h
> +++ b/include/drm/drm_ioctl.h
> @@ -174,7 +174,6 @@ struct drm_ioctl_desc {
>  		.name = #ioctl						\
>  	}
>  
> -int drm_ioctl_permit(u32 flags, struct drm_file *file_priv);
>  long drm_ioctl(struct file *filp, unsigned int cmd, unsigned long arg);
>  long drm_ioctl_kernel(struct file *, drm_ioctl_t, void *, u32);
>  #ifdef CONFIG_COMPAT
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
