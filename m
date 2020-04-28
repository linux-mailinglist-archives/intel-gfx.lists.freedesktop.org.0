Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 497871BC25E
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 17:11:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F35F6E827;
	Tue, 28 Apr 2020 15:11:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85C136E829
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 15:11:48 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id t14so25047370wrw.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 08:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=BUERjUN4IDwttfkbYfdMTF6BA4dlrEJqnocFSu4n2pw=;
 b=JzzSWV6VeXNXKWNoqHG6ooCaqTZW64eXYAKVM24LcSgC60DV4OyDEwlp5Gpu3yn7qJ
 XeHO9wsxTPOt1SUYnlHf4ezYuRGS3fa4JiT0J4xJmAM2YGWpBYxKwm9UZyE/M/RxmamI
 eCokY40xIDTAPjO+k9R2cTPexnqYLiMC0btwk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=BUERjUN4IDwttfkbYfdMTF6BA4dlrEJqnocFSu4n2pw=;
 b=sgeTRT5b/XcAksFepHBcPxmpfdl7wgxKGNYWnEX+11VuC1rMmlztI/i3zILyFuMOVz
 lq2ecSErVWckWI0qc91exCfFBfiQZj33WpeU+/xEx+n2ntclKasAOSVbX2/zAed2JYS5
 fNRZ1tt/OUrjo6+9Ftv4E23qDkzbPgEAEbhc6Mlfp/1TvUn29NTcybv2PC9iC2RIxFPw
 8TGU0/+TgLeXNaQGu2xJdYPJOyc0qSwp5/ge76/ieNbQGlabkOtbDvxXMMR3xiiRpqTK
 sL9MrJ71WLpI7X6YCJCioEI4cgAUgFO1fFKeAeQnXjznSSSxE6WjDeXRcoTB4XiGXb3s
 v10w==
X-Gm-Message-State: AGi0PuZfOcWjVGvuBdmAX9f446rKImwqzcBIq+C5MHhOTbFtJux+vm4g
 qXPeZlF0i77JcoV5eRFvfiLACI5HsSo=
X-Google-Smtp-Source: APiQypJbpnbX/zV+1pglD3REQ+BWeE31qH1Yj5A39N7xBFb9oSVIctQznEArleZrlUwA5DdyVa44WQ==
X-Received: by 2002:a5d:474b:: with SMTP id o11mr33557684wrs.391.1588086707255; 
 Tue, 28 Apr 2020 08:11:47 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u7sm3869726wmg.41.2020.04.28.08.11.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 08:11:46 -0700 (PDT)
Date: Tue, 28 Apr 2020 17:11:44 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Kenny Levinsen <kl@kl.wtf>
Message-ID: <20200428151144.GT3456981@phenom.ffwll.local>
Mail-Followup-To: Kenny Levinsen <kl@kl.wtf>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 airlied@linux.ie, tzimmermann@suse.de, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com, linux-kernel@vger.kernel.org
References: <20200424145103.3048-1-kl@kl.wtf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424145103.3048-1-kl@kl.wtf>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm: make drm_file use keyed wakeups
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
Cc: airlied@linux.ie, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 mripard@kernel.org, tzimmermann@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 24, 2020 at 04:51:03PM +0200, Kenny Levinsen wrote:
> Some processes, such as systemd, are only polling for EPOLLERR|EPOLLHUP.
> As drm_file uses unkeyed wakeups, such a poll receives many spurious
> wakeups from uninteresting events.
> 
> Use keyed wakeups to allow the wakeup target to more efficiently discard
> these uninteresting events.
> 
> Signed-off-by: Kenny Levinsen <kl@kl.wtf>

intel-gfx CI is happy, I'm living with the illusion that this seems to
loook correct (linux kernel poll code is too much magic for me). Thanks
for your patch, queued up in drm-misc-next for 5.8.

Cheers, Daniel

> ---
>  drivers/gpu/drm/drm_file.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_file.c b/drivers/gpu/drm/drm_file.c
> index c4c704e01961..ec25b3d979d9 100644
> --- a/drivers/gpu/drm/drm_file.c
> +++ b/drivers/gpu/drm/drm_file.c
> @@ -608,7 +608,8 @@ ssize_t drm_read(struct file *filp, char __user *buffer,
>  				file_priv->event_space -= length;
>  				list_add(&e->link, &file_priv->event_list);
>  				spin_unlock_irq(&dev->event_lock);
> -				wake_up_interruptible(&file_priv->event_wait);
> +				wake_up_interruptible_poll(&file_priv->event_wait,
> +					EPOLLIN | EPOLLRDNORM);
>  				break;
>  			}
>  
> @@ -804,7 +805,8 @@ void drm_send_event_locked(struct drm_device *dev, struct drm_pending_event *e)
>  	list_del(&e->pending_link);
>  	list_add_tail(&e->link,
>  		      &e->file_priv->event_list);
> -	wake_up_interruptible(&e->file_priv->event_wait);
> +	wake_up_interruptible_poll(&e->file_priv->event_wait,
> +		EPOLLIN | EPOLLRDNORM);
>  }
>  EXPORT_SYMBOL(drm_send_event_locked);
>  
> -- 
> 2.26.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
