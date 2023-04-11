Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2374B6DDD28
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 16:03:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F61D10E31F;
	Tue, 11 Apr 2023 14:03:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CE9C10E31F
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 14:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1681221810;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=CIGXauWS2Wr91Jq5IW+UgW4CSynzPp3COFUoOkdMkhA=;
 b=Iy58mzct9gy0k8dFpNLv0I8NkvCIck0GbdnZe8zHPiXrfTqynL63vpFXNLOXt2wUCyEbfa
 5bmTErlcKHNiuEWWElnHt0UcHKCKDcF8HsXQCprk1+Got/5p7/dxx/EhIq2bmbTLGck/F9
 Ie9I8XWlhqze3VPsbE7vRff8O8BsvR4=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-601-9WMQZqg3MVamWvJOdC8UWA-1; Tue, 11 Apr 2023 10:03:29 -0400
X-MC-Unique: 9WMQZqg3MVamWvJOdC8UWA-1
Received: by mail-wr1-f72.google.com with SMTP id
 d20-20020adfa354000000b002cfe8493fe6so1142526wrb.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 07:03:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1681221808;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=CIGXauWS2Wr91Jq5IW+UgW4CSynzPp3COFUoOkdMkhA=;
 b=flpv20FMt67d1j017IjSy1oQ7B2THVIrOih8QCwFEcwx3Xw1wQjKGwxsXZXvNBhTTn
 cQep0SK/9QE54BQrYHjPAeWO7bVwoj93/jU1pmYl4+sGoWTjJDvKFGKwgwwJqGx7JQBQ
 eTCJJh9IS0ugBMY1ypt8xfvQ5SHGH9VmKK1uctwz6Mzy4ruuhjDtPqQxx5wKKm6GKuIk
 l/BEb2ztbZO4+cLlOBevfbK+USF/vFQLULs692FaQejPSoXWLEuwh70a1Gy7cgR/aIFn
 bT+JQHBC5fkrHioQcPUS4BPBYb0Cyjqj2m5Yg5O8OLx5QmdNHxGPu6Gode3YhXPivOg1
 +Sww==
X-Gm-Message-State: AAQBX9d3dSndF6x3D0eNNpimnJyrWQsrmPUbKy4ZGTb+YO01aQr8lCsI
 YfnJiEgZrveQTtX/JCFTn4aBXAv5QqNIQ7YOSfzxwJRRb1gz+Jm/19g2+HfD3Z5Q+d9Db8l6eGO
 gE3I47mfE6otrj2sAjASsz+Nj9kse
X-Received: by 2002:a05:600c:246:b0:3ef:62c6:9930 with SMTP id
 6-20020a05600c024600b003ef62c69930mr2272887wmj.3.1681221808150; 
 Tue, 11 Apr 2023 07:03:28 -0700 (PDT)
X-Google-Smtp-Source: AKy350aKiEZG2/eTE3qgJobPobJFBtpp/GDgmMcutPCUe6o6pFTDe6EfUfpz+ooaKEyqriEN7AUpYw==
X-Received: by 2002:a05:600c:246:b0:3ef:62c6:9930 with SMTP id
 6-20020a05600c024600b003ef62c69930mr2272867wmj.3.1681221807826; 
 Tue, 11 Apr 2023 07:03:27 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 j23-20020a05600c1c1700b003ee443bf0c7sm20919284wms.16.2023.04.11.07.03.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Apr 2023 07:03:27 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, Intel Graphics Development
 <intel-gfx@lists.freedesktop.org>
In-Reply-To: <20230404193934.472457-1-daniel.vetter@ffwll.ch>
References: <20230404193934.472457-1-daniel.vetter@ffwll.ch>
Date: Tue, 11 Apr 2023 16:03:24 +0200
Message-ID: <874jpmtt1v.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] fbmem: Reject FB_ACTIVATE_KD_TEXT from
 userspace
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
Cc: linux-fbdev@vger.kernel.org, Shigeru Yoshida <syoshida@redhat.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Helge Deller <deller@gmx.de>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Michel =?utf-8?Q?D=C3=A4nzer?= <michel@daenzer.net>, shlomo@fastmail.com,
 Nathan Chancellor <natechancellor@gmail.com>, stable@vger.kernel.org,
 Noralf =?utf-8?Q?Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>, Peter Rosin <peda@axentia.se>,
 Qiujun Huang <hqjagain@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Daniel Vetter <daniel.vetter@ffwll.ch> writes:

> This is an oversight from dc5bdb68b5b3 ("drm/fb-helper: Fix vt
> restore") - I failed to realize that nasty userspace could set this.
>
> It's not pretty to mix up kernel-internal and userspace uapi flags
> like this, but since the entire fb_var_screeninfo structure is uapi
> we'd need to either add a new parameter to the ->fb_set_par callback
> and fb_set_par() function, which has a _lot_ of users. Or some other
> fairly ugly side-channel int fb_info. Neither is a pretty prospect.
>
> Instead just correct the issue at hand by filtering out this
> kernel-internal flag in the ioctl handling code.
>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Fixes: dc5bdb68b5b3 ("drm/fb-helper: Fix vt restore")

[..]

> diff --git a/drivers/video/fbdev/core/fbmem.c b/drivers/video/fbdev/core/fbmem.c
> index 875541ff185b..3fd95a79e4c3 100644
> --- a/drivers/video/fbdev/core/fbmem.c
> +++ b/drivers/video/fbdev/core/fbmem.c
> @@ -1116,6 +1116,8 @@ static long do_fb_ioctl(struct fb_info *info, unsigned int cmd,
>  	case FBIOPUT_VSCREENINFO:
>  		if (copy_from_user(&var, argp, sizeof(var)))
>  			return -EFAULT;
> +		/* only for kernel-internal use */
> +		var.activate &= ~FB_ACTIVATE_KD_TEXT;
>  		console_lock();

I don't have a better idea on how to fix this and as you said the whole
struct fb_var_screeninfo is an uAPI anyways...

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

