Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B05310D82
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 16:59:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45C4B6F47C;
	Fri,  5 Feb 2021 15:59:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com
 [IPv6:2a00:1450:4864:20::336])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43C426F47C
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 15:59:16 +0000 (UTC)
Received: by mail-wm1-x336.google.com with SMTP id j11so6416112wmi.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Feb 2021 07:59:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=9+YqAe6hSzkQfksEGq7Ywri2e2DUbD6/mSZNF0QOTf0=;
 b=AJLqnzaUvH3x/gtl0NcXy/B2j9r44Rn25KoSGVJ6qU7n+ZLBdGUTxKqMYbsfvu+YKi
 h4YSk2ERtHGD/nB3JB3mETWXTrMLPW6gC6GBcH6Es+KMd4ZIlq9x/9uwnXXJqAXA4q+D
 JfRYRfkzbqe/mgFqqBTpBVNUJd8cmyR5LAz9U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=9+YqAe6hSzkQfksEGq7Ywri2e2DUbD6/mSZNF0QOTf0=;
 b=hw9rEkssS1XbI28pxGVzwyUrcPMF6K5P0gOtHj5Br7JWk9+j426DsJQ5bvnCydXXbV
 Hr/3Kl5hYdd/Gxv1rEnyPBR0Bx/VQasDYF3IF5u/LRKLZDl9qa3Lih+kSbRbfX3cxEgw
 oL3XjOXwN1q2gCQDVxcJMviaZ0+76gjs9v5tTTwj3Ihmr476LVSkjGNMR53fuIsIZ9us
 qpVayI/Iz1cQvIP2Q43G2MQ5tUYppZAEpC62xtbEHcT+bgh0urWn8tUjELJ6BIiENHJr
 RsMCn+bUvIofNq9ZdaW/Ytr/EZb93d3JZvNyoQr48F7rm6UjjStaibj0HhKKigP6Thhi
 UHJA==
X-Gm-Message-State: AOAM531sYK9aV2MmsMv7uqjeldGZWnr2V9Ioo55P3ChsdPxBPL+0cz7w
 aPxyGpz/hl7XfaLRrElpPM/A31dCR9qEhgMn
X-Google-Smtp-Source: ABdhPJzk5W54Ne64f4WW7jHwnbNPhlmkeWCgJM2ko35NQ51dV6sRmbKogsIhdRw8bH2q7pzMsCnVbw==
X-Received: by 2002:a1c:68d4:: with SMTP id d203mr4063138wmc.153.1612540754940; 
 Fri, 05 Feb 2021 07:59:14 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f4sm12598197wrs.34.2021.02.05.07.59.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Feb 2021 07:59:14 -0800 (PST)
Date: Fri, 5 Feb 2021 16:59:12 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Chris Wilson <chris@chris-wilson.co.uk>,
	Dave Airlie <airlied@gmail.com>
Message-ID: <YB1rUCQoa+wCEh1o@phenom.ffwll.local>
References: <20210205130307.8294-1-chris@chris-wilson.co.uk>
 <YB1rKLGvpnFDom11@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YB1rKLGvpnFDom11@phenom.ffwll.local>
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

On Fri, Feb 05, 2021 at 04:58:32PM +0100, Daniel Vetter wrote:
> On Fri, Feb 05, 2021 at 01:03:07PM +0000, Chris Wilson wrote:
> > gallium (iris) depends on os_same_file_description() to disambiguate
> > screens and so avoid importing the same screen fd twice as two distinct
> > entities (that share all the kernel resources, so actions on screen
> > affect the other and would cause random faiure). As they depend on it,
> > so must we. os_same_file_description() uses SYS_kcmp to check the file
> > tables for the equivalent struct file, but SYS_kcmp is hidden behind
> > CONFIG_CHECKPOINT_RESTORE. As this is not default, we must select it for
> > ourselves to ensure that our userspace is fully supported.
> > 
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3046
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> 
> Hm shouldn't we crank this up to CONFIG_DRM?
> 
> Or embedded folks going to be unhappy about that? If so I guess we'd need
> to pull out just the SYS_kcmp part ...
> 
> Asking because I think Bas is also looking at this, and it's not great if
> we're building on this and then users end up with very subtly broken gl/vk
> stacks :-/

Forgot to add Airlie.
-Daniel

> -Daniel
> 
> > ---
> >  drivers/gpu/drm/i915/Kconfig | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
> > index 1e1cb245fca7..470a5214bd33 100644
> > --- a/drivers/gpu/drm/i915/Kconfig
> > +++ b/drivers/gpu/drm/i915/Kconfig
> > @@ -21,6 +21,7 @@ config DRM_I915
> >  	select ACPI_VIDEO if ACPI
> >  	select ACPI_BUTTON if ACPI
> >  	select SYNC_FILE
> > +	select CHECKPOINT_RESTORE # gallium depends on SYS_kcmp
> >  	select IOSF_MBI
> >  	select CRC32
> >  	select SND_HDA_I915 if SND_HDA_CORE
> > -- 
> > 2.20.1
> > 
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
