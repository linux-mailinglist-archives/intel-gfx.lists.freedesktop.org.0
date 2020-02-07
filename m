Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B95155BFC
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 17:40:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B4B06EACD;
	Fri,  7 Feb 2020 16:40:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44C2B6E0DC
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 16:40:45 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id z7so3403281wrl.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Feb 2020 08:40:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=RMiR/TOQE5lC5iLlhM8qP8jgnJsFfB+LRSeJJe7mo0M=;
 b=MP3qmtXPLXhMSfGIuN3LXlDYnXwyLP9/ZzmC6hmUwSsohnbRFjzFLe6cydo+2DjiZz
 O9QuRBieXizr4yx3OF2bCYcvBommETNkxUp12BE2EWOCOBfTNyrR5wHolyrHrshMligF
 a5JhQCpYH9lKy4P6/yldpXQUvkZR4hkzQ+AnI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=RMiR/TOQE5lC5iLlhM8qP8jgnJsFfB+LRSeJJe7mo0M=;
 b=dFHFJ0ovbFiR0JgUO14gn23GyQkfEZewrEODO4vgI9/Dq8hnrL9m4K7Yx+uBU7vxU5
 u3fPQzryOKtmhHWfvHeGDlkmS0QXT1mPCVhxJDydLixytXgWI/WIhbml/gMP0Ed/deqt
 6TgJbxx4KCr5u8R/yw9JGKLEMu1GUjssWOG0MHk/Htgyhq6Q+guUQXjZnChsSivCkce6
 vIQ8MGFm89PqDaQA7bf9hxDtO49rbg2JqmYZWQ+VHuUooCB+eJBxd6s6MwQIIFBi5LQZ
 F/mUJzwrg1LqSPTgPmWlIrVlzViwYwxNQbjpqRSuwYLX+Z0DVdeG+25ovGWZ9I80mNBR
 sblw==
X-Gm-Message-State: APjAAAUiLJ18gTbM7BvIvTDwJJ5msnvmPS5ehpeTNTY9uzyXSggvKE/W
 ODKtFmWHw3ogQGncISFZ+kqP4BdXkkfUaQ==
X-Google-Smtp-Source: APXvYqwxFkequdp64zvNb6hMXD4Z/vGeNgUX3L6RUFEGGqSVEVJgAT5QaFMw+1E1gqPSu4lDhEkoxA==
X-Received: by 2002:a5d:4a48:: with SMTP id v8mr5580186wrs.42.1581093643848;
 Fri, 07 Feb 2020 08:40:43 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id t1sm4122661wma.43.2020.02.07.08.40.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 08:40:43 -0800 (PST)
Date: Fri, 7 Feb 2020 17:40:41 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200207164041.GO43062@phenom.ffwll.local>
References: <20200207135950.6655-1-ville.syrjala@linux.intel.com>
 <20200207135950.6655-2-ville.syrjala@linux.intel.com>
 <d58f13cf-6c9e-9a1c-5cbd-e51e1ad04e80@suse.de>
 <20200207145001.GI13686@intel.com>
 <20200207162751.GJ43062@phenom.ffwll.local>
 <20200207163447.GN13686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200207163447.GN13686@intel.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH v2 1/6] drm: Include the encoder itself in
 possible_clones
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
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 07, 2020 at 06:34:47PM +0200, Ville Syrj=E4l=E4 wrote:
> On Fri, Feb 07, 2020 at 05:27:51PM +0100, Daniel Vetter wrote:
> > On Fri, Feb 07, 2020 at 04:50:01PM +0200, Ville Syrj=E4l=E4 wrote:
> > > On Fri, Feb 07, 2020 at 03:28:35PM +0100, Thomas Zimmermann wrote:
> > > > Hi
> > > > =

> > > > Am 07.02.20 um 14:59 schrieb Ville Syrjala:
> > > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > =

> > > > > The docs say possible_clones should always include the encoder it=
self.
> > > > > Since most drivers don't want to deal with the complexities of cl=
oning
> > > > > let's allow them to set possible_clones=3D0 and instead we'll fix=
 that
> > > > > up in the core.
> > > > > =

> > > > > We can't put this special case into drm_encoder_init() because dr=
ivers
> > > > > will have to fill up possible_clones after adding all the relevant
> > > > > encoders. Otherwise they wouldn't know the proper encoder indexes=
 to
> > > > > use. So we'll just do it just before registering the encoders.
> > > > > =

> > > > > TODO: Should we do something similar for possible_crtcs=3D=3D0?
> > > > > =

> > > > > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > > > > Cc: Daniel Vetter <daniel@ffwll.ch>
> > > > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > =

> > > > May this fixup function should warn iff possible_clones was set to =
non-0
> > > > by the driver, but the encoder itself is missing.
> > > =

> > > Yeah, I guess we could do that.
> > =

> > +1 on that, should catch some bugs at least.
> > =

> > Also can you pls fix up the kerneldoc for drm_encoder.possible_clones,
> > defacto this now means that 0 is a totally fine setting.
> =

> Sure.
> =

> And for possible_crtcs I was thinking similar concept:
> =

> for_each_encoder()
> 	if (possible_crtc =3D=3D 0)
> 		possible_crtcs =3D all_crtc_mask;

A quick grep shows that I think we can risk enforcing this. If that turns
out to be a misconception we can always go back to the fixup approach if
possible_crtcs is 0. But unlike possible_clones I think for possible_crtcs
the fixup-less approach looks possible at least.
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
