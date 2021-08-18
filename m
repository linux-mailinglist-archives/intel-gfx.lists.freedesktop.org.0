Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF983F013A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 12:05:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 273B66E50B;
	Wed, 18 Aug 2021 10:05:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 019F76E51C
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 10:05:06 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id z20so3861636ejf.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 03:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=+UugXJNovZ2vqktgPlIQAdEvTrXzjK5N1Cr++nIj3DA=;
 b=R42e8IjQDth0gJLIVgsbrUrhAc6d0ey998kv2PQoRChb7eJx00eZ1Gm0c/EhfBivkC
 IBNmrGkJ8ApCpeW2C+4cEd65TeabJc9SlX1xYSqdk72h0IEQ+khLKq7zNM6jv5wHaBvB
 ZXdjx0ctrHer5bc0vfxlwQtTRpuI1JQHIunWU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=+UugXJNovZ2vqktgPlIQAdEvTrXzjK5N1Cr++nIj3DA=;
 b=ls3Uyk6i1Kigy8nlfCW5GBucihNZwjHX2gTYzjM7W+90qfCrYwF+CyJ9f78kgmAbnw
 He6jUXC1RW4iSv3QTa3wdcd/NrbdZCNCk7smPikDJpuW8Ew16Md4bB0EUD1sVKLfvOfK
 YC11fEU1iGnRg0Hi2pgzsKwEB7yQ/73qEejZqaq9XSsbvZBZoiuUB/VDprTt6UKzO/JT
 S0SA/N8+gqojw24/hOQ1f0Bt8qszWMyVBVzyyZ+l9ESCwQdClIe444gEh3Y8vIM1xowR
 KfkHgDq88Eh9OYB+sAVMhPQLxPEzHMeTwp9Zj0EBOgedNJUT18SS7+oR+URun8ie0p4Z
 Q11w==
X-Gm-Message-State: AOAM530urxzve/hWoVtsBeyUXjOJ+c5MeKcHNZG5dVpLZeClFTPaX/yp
 ZYc9JuC7yc83MnNPNvu2ZEyx8w==
X-Google-Smtp-Source: ABdhPJyCL0wNSTVtmCi+TFUYXg5lqc4ePLGIxn2k+rFjGuAVDwSBiMK9lqUgzHWBYJDOF+Ij9NGXdA==
X-Received: by 2002:a17:906:150c:: with SMTP id
 b12mr8875986ejd.275.1629281104548; 
 Wed, 18 Aug 2021 03:05:04 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id e22sm2384475eds.45.2021.08.18.03.05.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Aug 2021 03:05:03 -0700 (PDT)
Date: Wed, 18 Aug 2021 12:05:01 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@linux.ie, daniel@ffwll.ch,
 sumit.semwal@linaro.org, christian.koenig@amd.com, axboe@kernel.dk,
 oleg@redhat.com, tglx@linutronix.de, dvyukov@google.com,
 walter-zh.wu@mediatek.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 skhan@linuxfoundation.org, gregkh@linuxfoundation.org,
 linux-kernel-mentees@lists.linuxfoundation.org
Message-ID: <YRzbTUM8ggXlIEyr@phenom.ffwll.local>
Mail-Followup-To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@linux.ie, sumit.semwal@linaro.org,
 christian.koenig@amd.com, axboe@kernel.dk, oleg@redhat.com,
 tglx@linutronix.de, dvyukov@google.com, walter-zh.wu@mediatek.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, skhan@linuxfoundation.org,
 gregkh@linuxfoundation.org,
 linux-kernel-mentees@lists.linuxfoundation.org
References: <20210818073824.1560124-1-desmondcheongzx@gmail.com>
 <20210818073824.1560124-3-desmondcheongzx@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210818073824.1560124-3-desmondcheongzx@gmail.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH v3 2/9] drm: hold master_lookup_lock when
 releasing a drm_file's master
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

On Wed, Aug 18, 2021 at 03:38:17PM +0800, Desmond Cheong Zhi Xi wrote:
> When drm_file.master changes value, the corresponding
> drm_device.master_lookup_lock should be held.
> 
> In drm_master_release, a call to drm_master_put sets the
> file_priv->master to NULL, so we protect this section with
> drm_device.master_lookup_lock.
> 
> Signed-off-by: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>

At this points all refcounts to drm_file have disappeared, so yeah this is
a lockless access, but also no one can observe it anymore. See also next
patch.

Hence I think the current code is fine.
-Daniel

> ---
>  drivers/gpu/drm/drm_auth.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_auth.c b/drivers/gpu/drm/drm_auth.c
> index 8efb58aa7d95..8c0e0dba1611 100644
> --- a/drivers/gpu/drm/drm_auth.c
> +++ b/drivers/gpu/drm/drm_auth.c
> @@ -373,8 +373,11 @@ void drm_master_release(struct drm_file *file_priv)
>  	}
>  
>  	/* drop the master reference held by the file priv */
> -	if (file_priv->master)
> +	if (file_priv->master) {
> +		spin_lock(&dev->master_lookup_lock);
>  		drm_master_put(&file_priv->master);
> +		spin_unlock(&dev->master_lookup_lock);
> +	}
>  	mutex_unlock(&dev->master_mutex);
>  }
>  
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
