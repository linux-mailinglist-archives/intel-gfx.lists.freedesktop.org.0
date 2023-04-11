Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E76D6DDDB3
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 16:25:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 062D310E33D;
	Tue, 11 Apr 2023 14:25:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B44CF10E33D
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 14:25:28 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 5b1f17b1804b1-3f05f61adbeso1567095e9.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 07:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1681223127;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=nPl52zwZFqxFoLbQW3KmJiSTSJqHgYxpwyxrA8GGUVI=;
 b=aou7CDIrnNiNpRZ9vrXCkgg9JQSL8DyPPKGiBu7gOtvSFEu3i1aIK7uo7jYY9nu5PL
 QViPwUe67gMScvFwVG6h0pAT1DdDtr4aiabj0CRfwzxcoNGWEfqyeYQUWcFMZOpdvnT1
 2/EqP3ka6kgSyVhAt0WKyAEB41yaTZN+aerf4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1681223127;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nPl52zwZFqxFoLbQW3KmJiSTSJqHgYxpwyxrA8GGUVI=;
 b=BBEJ/ZQWERGhNoNGp03SAxKiJCZqBjnUj3TBJE8oGk+C2un6Uc/O5QuLUhdtGE9WRQ
 wBLj9uzFzaPRSpRLmRDkHfQea3ospFFTYBWQA+OTov7OAibUAc+zGM32H4x/hAwYOOWE
 0t97UmzRBGH/2i95BfYGKIuviu/GHAkydreW5flXrQuPUtN82curXDfx6RG4Jqvs+pSx
 uqW+w7Z/yKRzEePvzn1dTWbjlWS4WjOfyaGbiMwYb8YFT8BZJFWJLTrsFa/4DWnKvp81
 alz63fHNEVWpvzae06ldzy4nXYNYufpQSBIWeItxOniDzpfSJEog6K8+Tbk5MVHNog7f
 Paog==
X-Gm-Message-State: AAQBX9fqwG3CyVyTikGEOZRz9hy0I+hNf25Kxsx04zPiEVguFawU9F3A
 4NhiH6KZABgZ8UefOiQmeAJxlg==
X-Google-Smtp-Source: AKy350bVqa3FiK6rDx8e6zZqGaQGSFUXTkbWlEiv8uT/S5y7XR09QNJJqNpC+LA2Z2yQSacn3USH9w==
X-Received: by 2002:a05:600c:4709:b0:3f0:84b7:22cf with SMTP id
 v9-20020a05600c470900b003f084b722cfmr6036840wmo.2.1681223126745; 
 Tue, 11 Apr 2023 07:25:26 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 g6-20020a05600c4ec600b003edc4788fa0sm21560834wmq.2.2023.04.11.07.25.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Apr 2023 07:25:26 -0700 (PDT)
Date: Tue, 11 Apr 2023 16:25:24 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Javier Martinez Canillas <javierm@redhat.com>
Message-ID: <ZDVt1Koi39w7aQE8@phenom.ffwll.local>
References: <20230404193934.472457-1-daniel.vetter@ffwll.ch>
 <874jpmtt1v.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <874jpmtt1v.fsf@minerva.mail-host-address-is-not-set>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
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
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Michel =?iso-8859-1?Q?D=E4nzer?= <michel@daenzer.net>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 shlomo@fastmail.com, Nathan Chancellor <natechancellor@gmail.com>,
 stable@vger.kernel.org, Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>, Peter Rosin <peda@axentia.se>,
 Qiujun Huang <hqjagain@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 11, 2023 at 04:03:24PM +0200, Javier Martinez Canillas wrote:
> Daniel Vetter <daniel.vetter@ffwll.ch> writes:
> 
> > This is an oversight from dc5bdb68b5b3 ("drm/fb-helper: Fix vt
> > restore") - I failed to realize that nasty userspace could set this.
> >
> > It's not pretty to mix up kernel-internal and userspace uapi flags
> > like this, but since the entire fb_var_screeninfo structure is uapi
> > we'd need to either add a new parameter to the ->fb_set_par callback
> > and fb_set_par() function, which has a _lot_ of users. Or some other
> > fairly ugly side-channel int fb_info. Neither is a pretty prospect.
> >
> > Instead just correct the issue at hand by filtering out this
> > kernel-internal flag in the ioctl handling code.
> >
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Fixes: dc5bdb68b5b3 ("drm/fb-helper: Fix vt restore")
> 
> [..]
> 
> > diff --git a/drivers/video/fbdev/core/fbmem.c b/drivers/video/fbdev/core/fbmem.c
> > index 875541ff185b..3fd95a79e4c3 100644
> > --- a/drivers/video/fbdev/core/fbmem.c
> > +++ b/drivers/video/fbdev/core/fbmem.c
> > @@ -1116,6 +1116,8 @@ static long do_fb_ioctl(struct fb_info *info, unsigned int cmd,
> >  	case FBIOPUT_VSCREENINFO:
> >  		if (copy_from_user(&var, argp, sizeof(var)))
> >  			return -EFAULT;
> > +		/* only for kernel-internal use */
> > +		var.activate &= ~FB_ACTIVATE_KD_TEXT;
> >  		console_lock();
> 
> I don't have a better idea on how to fix this and as you said the whole
> struct fb_var_screeninfo is an uAPI anyways...
> 
> Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

Thanks for taking a look, merged to drm-misc-fixes.

> 
> -- 
> Best regards,
> 
> Javier Martinez Canillas
> Core Platforms
> Red Hat
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
