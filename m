Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 681F03E1225
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 12:08:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02AAA6E4CB;
	Thu,  5 Aug 2021 10:08:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 218866E4C7
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 10:08:33 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id f13so7501439edq.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Aug 2021 03:08:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=k6wqR5Bdo/hf86YR+lFfIEge3bTc/2js1IYHLxrLWkI=;
 b=gkUdbiWszms/iCP7GRNJEKiA9CoyKB3GuGPnTB/iOuh/XcRtGT3ITC1QjwvnNRI3ny
 6yFoK1cP3Lzdf7MusUBiAPJDuecdEFRCrXhpUB2v2MKhjdlC4uzptD/84LAgqoH5Ppw/
 MzTV2RNZFpMDF6aU1LC9leQ2AHLdrputXIk9Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=k6wqR5Bdo/hf86YR+lFfIEge3bTc/2js1IYHLxrLWkI=;
 b=LLaIZMhsdKSXd28g9W2SswAXSnbK+9p7GQTMxVjBAj7jQ638xnDvxhw4SKX3mZB36w
 CBlK1bE1JG7TObO/MN2rSyV1j/4bcd0co2/xGE3caD+9ptdo/PZOQiEf7o/5eo46Xbzo
 gdcL6ztEqdXLReA2TebbLjv0NLrr0t7PvFIh5/flqkf2pinEinkwxLAl8rVLdpYiRy7M
 uPuHjPwoTz85zGlr67IUsBmCo3eFFaGo4NPviQ43rleypRzZwFnO9CiDDOcSoV9WWyG/
 QVFeYuU3PYrNY6/Ngic2PzmkWeyRGam7CkXmfymn8FkfZBvXj/lCpAvq3B6MysGn/8Cj
 nzrg==
X-Gm-Message-State: AOAM5309PM6bA0SHgTOlGaMGhsNwpKl1qXaruhboHc8RMAbdr+hP9c5g
 4cwth5b48C52XEjvMQHT3llRfQ==
X-Google-Smtp-Source: ABdhPJzJzNr2yGRkeakCzfK1k4PTnOjG5zboYz+WBO25moyiJhKeEGmc8cFnax2qMfHn/lgN8Q1BvQ==
X-Received: by 2002:a05:6402:40c4:: with SMTP id
 z4mr5435513edb.120.1628158111607; 
 Thu, 05 Aug 2021 03:08:31 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p23sm1550407ejc.19.2021.08.05.03.08.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Aug 2021 03:08:31 -0700 (PDT)
Date: Thu, 5 Aug 2021 12:08:29 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@linux.ie, daniel@ffwll.ch,
 peterz@infradead.org, mingo@redhat.com, will@kernel.org,
 longman@redhat.com, boqun.feng@gmail.com, sumit.semwal@linaro.org,
 christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 skhan@linuxfoundation.org, gregkh@linuxfoundation.org,
 linux-kernel-mentees@lists.linuxfoundation.org
Message-ID: <YQu4nfxtxyTCVGhn@phenom.ffwll.local>
Mail-Followup-To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@linux.ie, peterz@infradead.org,
 mingo@redhat.com, will@kernel.org, longman@redhat.com,
 boqun.feng@gmail.com, sumit.semwal@linaro.org,
 christian.koenig@amd.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 skhan@linuxfoundation.org, gregkh@linuxfoundation.org,
 linux-kernel-mentees@lists.linuxfoundation.org
References: <20210802105957.77692-1-desmondcheongzx@gmail.com>
 <20210802105957.77692-3-desmondcheongzx@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210802105957.77692-3-desmondcheongzx@gmail.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [RESEND PATCH v2 2/2] drm: add lockdep assert to
 drm_is_current_master_locked
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

On Mon, Aug 02, 2021 at 06:59:57PM +0800, Desmond Cheong Zhi Xi wrote:
> In drm_is_current_master_locked, accessing drm_file.master should be
> protected by either drm_file.master_lookup_lock or
> drm_device.master_mutex. This was previously awkward to assert with
> lockdep.
> 
> Following patch ("locking/lockdep: Provide lockdep_assert{,_once}()
> helpers"), this assertion is now convenient. So we add in the
> assertion and explain this lock design in the kerneldoc.
> 
> Signed-off-by: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
> Acked-by: Boqun Feng <boqun.feng@gmail.com>
> Acked-by: Waiman Long <longman@redhat.com>
> Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>

Both patches pushed to drm-misc-next, thanks.
-Daniel

> ---
>  drivers/gpu/drm/drm_auth.c | 6 +++---
>  include/drm/drm_file.h     | 4 ++++
>  2 files changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_auth.c b/drivers/gpu/drm/drm_auth.c
> index 9c24b8cc8e36..6f4d7ff23c80 100644
> --- a/drivers/gpu/drm/drm_auth.c
> +++ b/drivers/gpu/drm/drm_auth.c
> @@ -63,9 +63,9 @@
>  
>  static bool drm_is_current_master_locked(struct drm_file *fpriv)
>  {
> -	/* Either drm_device.master_mutex or drm_file.master_lookup_lock
> -	 * should be held here.
> -	 */
> +	lockdep_assert_once(lockdep_is_held(&fpriv->master_lookup_lock) ||
> +			    lockdep_is_held(&fpriv->minor->dev->master_mutex));
> +
>  	return fpriv->is_master && drm_lease_owner(fpriv->master) == fpriv->minor->dev->master;
>  }
>  
> diff --git a/include/drm/drm_file.h b/include/drm/drm_file.h
> index 726cfe0ff5f5..a3acb7ac3550 100644
> --- a/include/drm/drm_file.h
> +++ b/include/drm/drm_file.h
> @@ -233,6 +233,10 @@ struct drm_file {
>  	 * this only matches &drm_device.master if the master is the currently
>  	 * active one.
>  	 *
> +	 * To update @master, both &drm_device.master_mutex and
> +	 * @master_lookup_lock need to be held, therefore holding either of
> +	 * them is safe and enough for the read side.
> +	 *
>  	 * When dereferencing this pointer, either hold struct
>  	 * &drm_device.master_mutex for the duration of the pointer's use, or
>  	 * use drm_file_get_master() if struct &drm_device.master_mutex is not
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
