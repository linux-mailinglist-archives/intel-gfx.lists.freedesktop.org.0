Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0836D88F1
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 22:44:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8869710EA3B;
	Wed,  5 Apr 2023 20:44:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9C9C10E12F
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 20:44:40 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id
 a640c23a62f3a-93b8c095335so6189766b.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 13:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1680727479;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=8aOdTvn6KuteSDKGtGMpoWiXxUq0oDNLerScz5xAFbU=;
 b=GvFqcbYBLS3XAKNm3ESVyNLLVvaWKVAE8XaT2vUWvaWkeV3RcI6hHr/DWarIEB1955
 NVc97RJ8X9QlaWngU8oAZbCL937cMc2kih9j34wWB1jya6ZM9QFmkYPzNd2YwPD/5R+9
 V1hlgQgOPCibVus/heJ0x+POj0VsqWDFJfmoQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680727479;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8aOdTvn6KuteSDKGtGMpoWiXxUq0oDNLerScz5xAFbU=;
 b=4KA2PCjoxcANgHkmpIkKkju+xL3Unl2F8c/6KKz5xkrHBQm5nEa0OjdIwwyE9fSxci
 xQVjzqNwx02E1/SrTIl6G/C6rCPIR0i7NVzy+P8zIzU7JVuB7xx0RcBTIkhkiPZ0/iMg
 hyUaW24hAsLv5tiRcHTttFAEEkmlxGatKeR0/3CoORWc4YtNDZKWjXF+YA7A+Y77vpyB
 VSs3G7WI6Onqz/9ICRae3srZB09aRCBxzSzpFsWL/jaby9ypFwz/0d1aPlCBi93CWeNX
 p2U+xUF06lRDJJKJwgRD8N1sRVse5h9+b/k+i3wiyIN06lvWUJqMS1ds68kOvMWJXm4a
 IPIg==
X-Gm-Message-State: AAQBX9eK4VCo2AlCdKhkYvdOGQOZPHpi77D/dAdcy29cmX6OLTeqeStv
 lpvuSJp6yYmCktXCyeUU+a7Uew==
X-Google-Smtp-Source: AKy350ZsKhy6CiCB0CdVecn8P1TdPyLysnWMxwAet/M4xD39PHhcVwaB/ikdB8zpya7K4pQtR8Saew==
X-Received: by 2002:a05:6402:2811:b0:502:465:28e1 with SMTP id
 h17-20020a056402281100b00502046528e1mr3786034ede.0.1680727478727; 
 Wed, 05 Apr 2023 13:44:38 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 o12-20020a170906600c00b0092bea699124sm7761220ejj.106.2023.04.05.13.44.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Apr 2023 13:44:38 -0700 (PDT)
Date: Wed, 5 Apr 2023 22:44:36 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Javier Martinez Canillas <javierm@redhat.com>
Message-ID: <ZC3dtDP+m4c5jgNZ@phenom.ffwll.local>
References: <20230404194038.472803-1-daniel.vetter@ffwll.ch>
 <20230404194038.472803-3-daniel.vetter@ffwll.ch>
 <87a5zmd2jn.fsf@minerva.mail-host-address-is-not-set>
 <ZC12aR9ddp3j/3dL@phenom.ffwll.local>
 <87ilea9twa.fsf@minerva.mail-host-address-is-not-set>
 <ZC2t1I1SQrQh/fy1@phenom.ffwll.local>
 <878rf69qfj.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <878rf69qfj.fsf@minerva.mail-host-address-is-not-set>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/fb-helper: fix input validation
 gaps in check_var
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
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, Daniel Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 05, 2023 at 07:42:08PM +0200, Javier Martinez Canillas wrote:
> Daniel Vetter <daniel@ffwll.ch> writes:
> 
> > On Wed, Apr 05, 2023 at 06:27:17PM +0200, Javier Martinez Canillas wrote:
> >> Daniel Vetter <daniel@ffwll.ch> writes:
> 
> [...]
> 
> >> >
> >> > The __fill_var is after this. I'm honestly not sure what the exact
> >> 
> >> Ah, your patch adds it after that indeed. Please ignore my comment then.
> >
> > So rb: you?
> >
> 
> Yes, I already provided it in my previous email and has been picked by
> patchwork. I could do again but probably will confuse dim when applying.

Yeah just wanted to confirm I cleared up all your questions. Merged the
entire series to drm-misc-next, thanks for the review.

> The only patch from your series that is missing an {r,a}b is #1 right now:
> 
> https://patchwork.kernel.org/project/dri-devel/list/?series=736966&archived=both

That's a different one :-)

I'll respin with your comments and then let you&Thomas duke it out about
patch 1.
-Daniel

> 
> [...]
> 
> >> > What I'm wondering now is whether too small x/yres won't lead to problems
> >> > of some sorts ... For multi-screen we set the virtual size to be big
> >> > enough for all crtc, and then just set x/yres to be the smallest output.
> >> > That way fbcon knows to only draw as much as is visible on all screens.
> >> > But if you then pan that too much, the bigger screens might not have a big
> >> > enough buffer anymore and things fail (but shouldn't).
> >> >
> >> > Not sure how to fix that tbh.
> >> 
> >> Would this be a problem in practice?
> >
> > I'm frankly not sure. You'd get a black screen for fbcon/fbdev across all
> > outputs, but only if you have userspace doing this intentionally.
> >
> > In a way it's just another artifact of the drm fbdev emulation not using
> > ATOMIC_TEST_ONLY in the various places where it should, and so doesn't
> > really know whether a configuration change will work out.
> >
> > We already have this in obscure mulit-monitor cases where adding another
> > screen kills fbcon, because the display hw is running out of fifo or
> > clocks or whatever, and because the drm fbdev code doesn't check but just
> > blindly commits the entire thing as an atomic commit, the overall commit
> > fails.
> >
> > This worked "better" with legacy kms because there we commit per-crtc, so
> > if any specific crtc runs into a limit check, only that one fails to light
> > up.
> >
> > Imo given that no one cared enough yet to write up atomic TEST_ONLY
> > support for fbdev emulation I think we can continue to just ignore this
> > problem.
> >
> 
> Agreed. If that ends being a problem for people in practice then I guess
> someone can type atomic TEST_ONLY support for the fbdev emulation layer.
> 
> > What should not happen is that fbcon code blows up drawing out of bounds
> > or something like that, resulting in a kernel crash. So from that pov I
> > think it's "safe" :-)
> 
> Great. Thanks a lot for your explanations.
> 
> > -Daniel
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
