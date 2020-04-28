Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75BAE1BC26B
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 17:14:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FD3D6E81D;
	Tue, 28 Apr 2020 15:14:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0481A6E81D
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 15:14:14 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id i10so25072304wrv.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 08:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=gPj1O/jOW1qBAm9wItVCoQg+/JQBV9DNAyjrAa3CJ1s=;
 b=dt9JvUZu3Yez0wBMSlGnIr5B7uhLVVv3xwgu+ys50HNnfNjJK9xsLpXf2bo0UZ1oym
 ecWCqYvougpWP61bBgvZZAZn43EYIJgizSjuwvDRtGA34DKbLCNt331p+fseG19QtbW0
 hLAenfbNLivynA523s4fRjSgUtRCZxbl616Nk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=gPj1O/jOW1qBAm9wItVCoQg+/JQBV9DNAyjrAa3CJ1s=;
 b=BuYsFUeqcjgOpKeQf6MNaTn27hEGLrbZodtuENsI7Wq5qtvAhMQH9pUODlZBK4eE2O
 QkmnZjFfvC/SDGiFuqK+47usYaNwErsaybs9ZMLleBtm8SAPzHEf0M+suoGvpwmIfmSF
 dqLYCs38OZ6Nt8EaoD1pdtjWigCTayJEfyXV/qc9a7Pa43PUDNjnXtBIEoKy2oPy8n+D
 scoS94SVJAewv05cNafijLKANMJEzdeWMMwBDWV1DM9GiRSp6FRZH5AyY6Ew6n5myCUg
 Y0nMDp0/TQ0HDOHyM3b/Yq+fvJkAtMuSets3tWILMUmoOxiq2GAJ5xhq6TMZhMdK4Ovx
 rlDA==
X-Gm-Message-State: AGi0PuYvomPsbGU8LpH/P0umaZnNGYIn92/syEK/mJL6lRvbNa+osWbQ
 Lc8DIOYMdPM44PDGAi1oZOa8ng==
X-Google-Smtp-Source: APiQypJnyMpVG5cmlGZH+PfTwmm3Qs/qc4+yVZMCFB9zhwRRInfXVOfPO1+oV4/KwUW3P+P7liGvaA==
X-Received: by 2002:adf:e986:: with SMTP id h6mr33315188wrm.256.1588086852682; 
 Tue, 28 Apr 2020 08:14:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q8sm3611203wmg.22.2020.04.28.08.14.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 08:14:11 -0700 (PDT)
Date: Tue, 28 Apr 2020 17:14:10 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Kenny Levinsen <kl@kl.wtf>
Message-ID: <20200428151410.GU3456981@phenom.ffwll.local>
Mail-Followup-To: Kenny Levinsen <kl@kl.wtf>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 airlied@linux.ie, tzimmermann@suse.de, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com, linux-kernel@vger.kernel.org
References: <20200424162615.10461-1-kl@kl.wtf>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200424162615.10461-1-kl@kl.wtf>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH v2] drm: make drm_file use keyed wakeups
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

On Fri, Apr 24, 2020 at 06:26:15PM +0200, Kenny Levinsen wrote:
> Some processes, such as systemd, are only polling for EPOLLERR|EPOLLHUP.
> As drm_file uses unkeyed wakeups, such a poll can receive many spurious
> wakeups from uninteresting events if, for example, the file description
> is subscribed to vblank events. This is the case with systemd, as it
> polls a file description from logind that is shared with the users'
> compositor.
> 
> Use keyed wakeups to allow the wakeup target to more efficiently discard
> these uninteresting events.
> 
> Signed-off-by: Kenny Levinsen <kl@kl.wtf>

Hm I applied v1 and I'm not spotting what's different here, and there's no
changelog explaining what changed ...

Please send a fixup if there's anything important missing.
-Daniel

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
