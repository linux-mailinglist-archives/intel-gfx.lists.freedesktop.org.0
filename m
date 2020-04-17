Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D941AE0F5
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 17:23:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77CB36EC3D;
	Fri, 17 Apr 2020 15:23:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 998896EC3D
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 15:23:14 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id o81so3309543wmo.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 08:23:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=xwvBBGP6XODNxylPgMW6KMF6+zxJ6hauRpgc8isQ/s0=;
 b=jJ4sDmvxu2xQFEut1aJaSw96vpmEq7h0CmEEYHWKJeC8kmcGxVFO29D0KBh8/cbZmh
 QHpbRkCt0b0oQJz3QtDmz25A9R7rtGyVAFGDcqKBSIJbDkKIbGfkaAFHhSI8fK8eXZ0F
 6hnlqqERqB4VLXAZ5M0yABZUokDb55O/sXJlM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=xwvBBGP6XODNxylPgMW6KMF6+zxJ6hauRpgc8isQ/s0=;
 b=fwI3e+/u5BpaoMnrbIGQ+pxdM2DfNcAsktIJCXI8XO+ijZ106ryXVYSFUN+IeizKto
 Q3pcenv8edvI+ZMG2TrddszdT+FZsMZ+57xShLlJQjOjFzSSKHrvY/DINRm5TvsrBcvI
 A+0fcacxczHF9M2VIRIAF5py+k0SDJll8Vu6LF55GhGKth4UgUP7tdPb2NVPmtEOVQxH
 Q3+ru+s+fNyhe7oTmwtljIYfntoK5ovuUFDlFEqEamKVtBFtRhhbI5yXS2mD/1YUHLcT
 ya2J9Ny5PNGrDcSpJcLdYkThCmipVqHAHAjBb5zU41vXsyG4TDILMCQvT0F/W6ta4HXv
 mLog==
X-Gm-Message-State: AGi0PuZTqJLvyR9OkvmSaVVuxmd0EEA5Cn8A7Fba3ZbBLqzqOP3APrPZ
 CDVkpRdNTyeJ2onihaZwiEq0hw==
X-Google-Smtp-Source: APiQypK7SNGOEdkYiufxXCGrkdhTlxCyEf/fSyck9qXER30rJkfzIOOTp560RnTadMQaEcQI5CVh6g==
X-Received: by 2002:a1c:a7c4:: with SMTP id q187mr4213973wme.56.1587136993223; 
 Fri, 17 Apr 2020 08:23:13 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id c20sm8699843wmd.36.2020.04.17.08.23.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 08:23:12 -0700 (PDT)
Date: Fri, 17 Apr 2020 17:23:10 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200417152310.GQ3456981@phenom.ffwll.local>
References: <20200416170420.23657-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416170420.23657-1-ville.syrjala@linux.intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm: Fix page flip ioctl format check
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
Cc: stable@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 16, 2020 at 08:04:20PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Revert back to comparing fb->format->format instead fb->format for the
> page flip ioctl. This check was originally only here to disallow pixel
> format changes, but when we changed it to do the pointer comparison
> we potentially started to reject some (but definitely not all) modifier
> changes as well. In fact the current behaviour depends on whether the
> driver overrides the format info for a specific format+modifier combo.
> Eg. on i915 this now rejects compression vs. no compression changes but
> does not reject any other tiling changes. That's just inconsistent
> nonsense.
> =

> The main reason we have to go back to the old behaviour is to fix page
> flipping with Xorg. At some point Xorg got its atomic rights taken away
> and since then we can't page flip between compressed and non-compressed
> fbs on i915. Currently we get no page flipping for any games pretty much
> since Mesa likes to use compressed buffers. Not sure how compositors are
> working around this (don't use one myself). I guess they must be doing
> something to get non-compressed buffers instead. Either that or
> somehow no one noticed the tearing from the blit fallback.

Mesa only uses compressed buffers if you enable modifiers, and there's a
_loooooooooooot_ more that needs to be fixed in Xorg to enable that for
real. Like real atomic support. Without modifiers all you get is X tiling,
and that works just fine.

Which would also fix this issue here you're papering over.

So if this is the entire reason for this, I'm inclined to not do this.
Current Xorg is toast wrt modifiers, that's not news.
-Daniel

> =

> Looking back at the original discussion on this change we pretty much
> just did it in the name of skipping a few extra pointer dereferences.
> However, I've decided not to revert the whole thing in case someone
> has since started to depend on these changes. None of the other checks
> are relevant for i915 anyways.
> =

> Cc: stable@vger.kernel.org
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Fixes: dbd4d5761e1f ("drm: Replace 'format->format' comparisons to just '=
format' comparisons")
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/drm_plane.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/drm_plane.c b/drivers/gpu/drm/drm_plane.c
> index d6ad60ab0d38..f2ca5315f23b 100644
> --- a/drivers/gpu/drm/drm_plane.c
> +++ b/drivers/gpu/drm/drm_plane.c
> @@ -1153,7 +1153,7 @@ int drm_mode_page_flip_ioctl(struct drm_device *dev,
>  	if (ret)
>  		goto out;
>  =

> -	if (old_fb->format !=3D fb->format) {
> +	if (old_fb->format->format !=3D fb->format->format) {
>  		DRM_DEBUG_KMS("Page flip is not allowed to change frame buffer format.=
\n");
>  		ret =3D -EINVAL;
>  		goto out;
> -- =

> 2.24.1
> =

> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
