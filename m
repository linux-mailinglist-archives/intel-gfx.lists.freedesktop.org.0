Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D293BA449
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jul 2021 21:13:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2FF689FC5;
	Fri,  2 Jul 2021 19:13:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37D1D6E1D7
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jul 2021 19:13:30 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 o13-20020a1c4d0d0000b02901fc90de999bso3050999wmh.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 02 Jul 2021 12:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=tOED2tOn9Yikj/x6fd7iQbXa0KJvo7UgiFUTomabzw8=;
 b=HdA9gmucLzYEKND75jvyacfRrkZBIkStBcSxyi6o7RBQiaQqPaoJVNJXihaZ/gI5jV
 KAyaLt8THf3Q5jzkMuzUcKC3gwArPZTTljZAQJVyefyTm4QAv/fJuUpqn44j2m539ZSl
 xRtZCoz+/N3AXY9Qfo4uDDjEAszzVVAqTqcRY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tOED2tOn9Yikj/x6fd7iQbXa0KJvo7UgiFUTomabzw8=;
 b=GItIbGTnyDmG3Q5Q09GDoLHKrRJ0aj9MUHU9mGah4lj4B/D00NkKLC+UrcqH8ASsyQ
 lQP6dcaHLXlDscrTNV5erGMhldF9nj0s0q3romSfpv2P81oeijzuSp8Jg6BwYly0W4cT
 /XRMoytCagdVgOYEp0lJ/Q/JaaRs8z94nl/AYX9BWZCmNdVZsJ2qnkqfaRjly+a2yWvF
 EDbFfiKtTo7V0Av3thjFlx+VnIb08PPmIIht8k8dXbjser4M0za2Q96JglqGPuxVkxiM
 9mmb/DWvNa+rAEn8z11MxAj2On4wWrzHvySAVsbAv7bfIVZy10C6exBa5DREXHNuNc3h
 Z9yg==
X-Gm-Message-State: AOAM532uLaIWlCz9xDof4LQIyIr2X44zkWg1iMuHLWmoE6MKu7vwch2a
 1U4Otp2erbBK00+Ilzjq49UV2A==
X-Google-Smtp-Source: ABdhPJwzq+hP0xcM2dtmk33H9pQOqmM5DtdsbG4HImwWDXJKxpUpomGFpFG6cg0VaO05LnOZ0JWECg==
X-Received: by 2002:a05:600c:19d1:: with SMTP id
 u17mr1394268wmq.40.1625253208805; 
 Fri, 02 Jul 2021 12:13:28 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y66sm3946886wmy.39.2021.07.02.12.13.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Jul 2021 12:13:28 -0700 (PDT)
Date: Fri, 2 Jul 2021 21:13:26 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <YN9lVtVDtM7PPlqW@phenom.ffwll.local>
References: <20210701085833.26566-1-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210701085833.26566-1-tzimmermann@suse.de>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH v4 0/2] drm/i915: IRQ fixes
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
Cc: airlied@linux.ie, intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk,
 dri-devel@lists.freedesktop.org, lucas.demarchi@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 01, 2021 at 10:58:31AM +0200, Thomas Zimmermann wrote:
> Fix a bug in the usage of IRQs and cleanup references to the DRM
> IRQ midlayer.
> 
> Preferably this patchset would be merged through drm-misc-next.
> 
> v4:
> 	* switch IRQ code to intel_synchronize_irq() (Daniel)
> v3:
> 	* also use intel_synchronize_hardirq() from other callsite
> v2:
> 	* split patch
> 	* also fix comment
> 	* add intel_synchronize_hardirq() (Ville)
> 	* update Fixes tag (Daniel)
> 
> Thomas Zimmermann (2):
>   drm/i915: Use the correct IRQ during resume
>   drm/i915: Drop all references to DRM IRQ midlayer

Both pushed to drm-intel-gt-next, thanks for your patches.
-Daniel

> 
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c       | 2 +-
>  drivers/gpu/drm/i915/gt/intel_ring_submission.c | 2 +-
>  drivers/gpu/drm/i915/i915_drv.c                 | 1 -
>  drivers/gpu/drm/i915/i915_irq.c                 | 5 -----
>  4 files changed, 2 insertions(+), 8 deletions(-)
> 
> 
> base-commit: 67f5a18128770817e4218a9e496d2bf5047c51e8
> --
> 2.32.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
