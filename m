Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73725388B73
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 12:15:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D11496ECFF;
	Wed, 19 May 2021 10:15:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80CA06ECFC
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 10:15:01 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 f75-20020a1c1f4e0000b0290171001e7329so2999911wmf.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 03:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=JifEb7sBQtGdz3Sa0iaMHHjpd5erUKdLklDKpuXS/+s=;
 b=kkOZDQJA70ycWnKkAXJYvSu6ds8gT5mVSqkWZssa0gJ1HySd6lRqlf2Y9w65WZ4gdu
 I37ci33uf3CEEXadQzILqkINTNfTa3a/HeW92csAAsWL+Xp7wSDBjRhOyQ7YR2mQD3Iy
 BXwnAxaR4IvDB27aqXxB7Z2H1ucmEJoNkwKJE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=JifEb7sBQtGdz3Sa0iaMHHjpd5erUKdLklDKpuXS/+s=;
 b=oX+uBaeEY7y/kbeNQVY8k7KqHK02lFVuUR4x+JZ78Raq2Zba1QsGaJvLc3yz8Zq8V1
 5h/5Ep35LcG+rc6hExt+cXHnFXMck8gwcf4zswJDBDAi8H0/anOIpEYrERB4i6yWeyJF
 gTz6AoBLRTJWdLdhopCFxK5KefLdtNavDkeVYIYaCue1X2b2IcizUrjWiQdYSB4p6Zp2
 INuHXtqYjmyTUB6s/X9lZJ9JMSeCVxOaB7GSkI/tkfc/8FwJvFYPiJH7dK1fr3QLizB9
 VFKv/BExf+RfwG6kbFMOIBAJ9phZJXY/wglL0nVolNQW0c3WFHmQGvHeVmfuO8JG9v7S
 5Jzw==
X-Gm-Message-State: AOAM5308ZbRBQodohuccndpx/Fzaz9e5uOQlrjvhcPzg+k8N6yCIYyww
 CVzGfXCJ/GQnHJKUaIP6btPqSQ==
X-Google-Smtp-Source: ABdhPJxHuv8FxV/ryFhbRgUXeljJ8b82KwhaNqCsZd/e3bT2sWXNMvAGR3CW1NbY6XjDR6FZK5OpgQ==
X-Received: by 2002:a7b:c056:: with SMTP id u22mr10056914wmc.181.1621419300098; 
 Wed, 19 May 2021 03:15:00 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id e10sm25282232wrw.20.2021.05.19.03.14.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 May 2021 03:14:59 -0700 (PDT)
Date: Wed, 19 May 2021 12:14:57 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YKTlIX5ct9agqloB@phenom.ffwll.local>
References: <20210519084932.8666-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210519084932.8666-1-jani.nikula@intel.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [drm-rerere PATCH] nightly.conf: drop amd branches
 from drm-tip
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
Cc: dim-tools@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, Xinhui <Xinhui.Pan@amd.com>,
 dri-devel@lists.freedesktop.org, Alex Deucher <alexander.deucher@amd.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Pan@phenom.ffwll.local
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 19, 2021 at 11:49:32AM +0300, Jani Nikula wrote:
> We've had a stale repo for amd in drm-tip since around v4.15 i.e. for
> more than three years. Nobody seems to notice or care. Drop the amd
> branches from drm-tip.
> =

> Having the current amd branches in drm-tip would be nice to have, if
> only to have a common drm integration tree. However, maintaining that
> has a cost due to the inevitable conflicts. We can add the branches back
> if and when there's interest in sharing the burden.
> =

> Cc: Alex Deucher <alexander.deucher@amd.com>
> Cc: Christian K=F6nig <christian.koenig@amd.com>
> Cc: Pan, Xinhui <Xinhui.Pan@amd.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> ---
>  nightly.conf | 9 ---------
>  1 file changed, 9 deletions(-)
> =

> diff --git a/nightly.conf b/nightly.conf
> index 9211550ef75c..35fb1d9ba600 100644
> --- a/nightly.conf
> +++ b/nightly.conf
> @@ -40,12 +40,6 @@ git://anongit.freedesktop.org/drm-misc
>  https://anongit.freedesktop.org/git/drm/drm-misc
>  https://anongit.freedesktop.org/git/drm/drm-misc.git
>  "
> -drm_tip_repos[drm-amd]=3D"
> -ssh://git.freedesktop.org/git/drm/drm-amd
> -git://anongit.freedesktop.org/drm/drm-amd
> -https://anongit.freedesktop.org/git/drm/drm-amd
> -https://anongit.freedesktop.org/git/drm/drm-amd.git
> -"
>  drm_tip_repos[drm]=3D"
>  ssh://git.freedesktop.org/git/drm/drm
>  git://anongit.freedesktop.org/drm/drm
> @@ -76,17 +70,14 @@ drm_tip_config=3D(
>  	"drm			drm-fixes"
>  	"drm-misc		drm-misc-fixes"
>  	"drm-intel		drm-intel-fixes"
> -	"drm-amd		drm-amd-fixes"
>  =

>  	"drm			drm-next"
>  	"drm-misc		drm-misc-next-fixes"
>  	"drm-intel		drm-intel-next-fixes"
> -	"drm-amd		drm-amd-next-fixes"
>  =

>  	"drm-misc		drm-misc-next"
>  	"drm-intel		drm-intel-next"
>  	"drm-intel		drm-intel-gt-next"
> -	"drm-amd		drm-amd-next"
>  =

>  	"sound-upstream		for-linus"
>  	"sound-upstream		for-next"
> -- =

> 2.20.1
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
