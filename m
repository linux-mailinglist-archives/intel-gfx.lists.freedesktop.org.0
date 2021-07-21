Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA013D1254
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 17:25:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 831986EBB7;
	Wed, 21 Jul 2021 15:25:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com
 [IPv6:2607:f8b0:4864:20::b35])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 365786EBB7
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 15:25:39 +0000 (UTC)
Received: by mail-yb1-xb35.google.com with SMTP id v189so3807582ybg.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 08:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iSyNvFZrRSicceZvkg9HbLExV9bUeYOR2Ye1LHj9J8g=;
 b=bHx+aDqrc+2H2KLxoRAcCvHV4V5ek/qWMaC3WHYUDttXk/neYIU5rnsgO0SVJztKL8
 0fyLgJLSJE7zrPvYOkuV8Mury7BijEvx0PNvJBdcImOl2Yp4gIFNEOGEPhQlg9WAnC0U
 Sx8bFQ2NTV6EgjOELfbiuCa/8RSWTzBYQxARFpVnIXgUHIZTJOHUtypJlwaVx8O6Zvs4
 wsgGcARi6fKqGptlQPGFQAx4TaoPSjhftQ7bQV075P3x3eWuYapn2jbM4pqBxnb53DD6
 UBZKKu9hW94Nx+iI8JTZ1WYDTQaAwsqrAgf695PDFsziShVuviE0kcFve7YRK0243bDN
 ToqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iSyNvFZrRSicceZvkg9HbLExV9bUeYOR2Ye1LHj9J8g=;
 b=C4nkuF9NxpaxRkGcDcmp6Xsu47qbnpLahT5eLuX864SA96SaYAwAP1h5Ufp5pVJTlZ
 QhB/EAo+u5OVTKM+8L4ifiUGP1Ul6UwppXn1R0q22ltU0ku1p8GcLJ/lGApyGWw+Gn1f
 KHrYLx6Jr7butr22l4K338PSlkiSrOnQnuyWnd+T7y82lLIgH1Cgvn0EFoEzKIzB9Zak
 VdJIkgrNfU1fjquYFR8gHCYsvHkrdTjC5V7z6Nq9+tpLec3VLy+4AnfbokZubx86yNP8
 q9SkO0W7wOgx6/WhDtBDa3dRU5JNFY82MT2S+4QbdS/t1C5e84WLTr1/GBh/TTzEAlBu
 H9wg==
X-Gm-Message-State: AOAM533eH9eiH4dXG0Z71r4s1brtWXo3y6foY5/QuzhutL24+mqZv4oU
 HyFI5KcYwlc8VZwIBSsBGoytyOWymHug1h0kBG4Vlg==
X-Google-Smtp-Source: ABdhPJymGc4O8990j5aiDTb0vjmzCK9zWtBq8cmsBx7DqpNXfZLdJhbJRTp2UxlX5Sm6XS5W6Z42E6c0D1hK/W6TMCc=
X-Received: by 2002:a25:7647:: with SMTP id r68mr45836214ybc.432.1626881138341; 
 Wed, 21 Jul 2021 08:25:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210720182108.2761496-1-jason@jlekstrand.net>
 <YPcxMC1oULxcCSSO@intel.com> <YPcxkGJi9b8jpXII@intel.com>
 <CAOFGe95_ELCr2d==7ohQ+5aFBufcSHo-PZi59bfDNREarN7YPg@mail.gmail.com>
 <YPfxaqe51WtKcA06@intel.com>
In-Reply-To: <YPfxaqe51WtKcA06@intel.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Wed, 21 Jul 2021 10:25:27 -0500
Message-ID: <CAOFGe96_rC+=3A1g=BLYZ1J=fNvRG0Xy_UC4gn7W-JY85J1NCw@mail.gmail.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Correct the docs for
 intel_engine_cmd_parser
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Would you mind pushing?  I still don't have those magic powers. :-)

--Jason

On Wed, Jul 21, 2021 at 5:05 AM Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
>
> On Tue, Jul 20, 2021 at 04:04:59PM -0500, Jason Ekstrand wrote:
> > On Tue, Jul 20, 2021 at 3:26 PM Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > >
> > > On Tue, Jul 20, 2021 at 04:25:21PM -0400, Rodrigo Vivi wrote:
> > > > On Tue, Jul 20, 2021 at 01:21:08PM -0500, Jason Ekstrand wrote:
> > > > > In c9d9fdbc108a ("drm/i915: Revert "drm/i915/gem: Asynchronous
> > > > > cmdparser""), the parameters to intel_engine_cmd_parser() were altered
> > > > > without updating the docs, causing Fi.CI.DOCS to start failing.
> > > > >
> > > > > Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/i915_cmd_parser.c | 4 +---
> > > > >  1 file changed, 1 insertion(+), 3 deletions(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
> > > > > index 322f4d5955a4f..e0403ce9ce692 100644
> > > > > --- a/drivers/gpu/drm/i915/i915_cmd_parser.c
> > > > > +++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
> > > > > @@ -1416,9 +1416,7 @@ static unsigned long *alloc_whitelist(u32 batch_length)
> > > > >   * @batch_offset: byte offset in the batch at which execution starts
> > > > >   * @batch_length: length of the commands in batch_obj
> > > > >   * @shadow: validated copy of the batch buffer in question
> > > > > - * @jump_whitelist: buffer preallocated with intel_engine_cmd_parser_alloc_jump_whitelist()
> > > > > - * @shadow_map: mapping to @shadow vma
> > > > > - * @batch_map: mapping to @batch vma
> > > > > + * @trampoline: true if we need to trampoline into privileged execution
> > > >
> > > > I was wondering if we should also return the original text, but this one
> > > > here looks better.
> > > >
> > > >
> > > > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > >
> > > btw, while on it, I wouldn't mind if you squash some english fixes to
> > > the trampoline documentation block inside this function ;)
> >
> > I don't mind at all but I'm not sure what changes you're suggesting.
>
> nevermind...
> It was just my broke english that didn't know the inversion on the "only if"
>
>
> >
> > > >
> > > >
> > > > >   *
> > > > >   * Parses the specified batch buffer looking for privilege violations as
> > > > >   * described in the overview.
> > > > > --
> > > > > 2.31.1
> > > > >
> > > > > _______________________________________________
> > > > > Intel-gfx mailing list
> > > > > Intel-gfx@lists.freedesktop.org
> > > > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
