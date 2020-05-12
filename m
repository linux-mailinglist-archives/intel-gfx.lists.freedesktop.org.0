Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1991CECD8
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 08:12:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAB716E82F;
	Tue, 12 May 2020 06:12:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com
 [IPv6:2607:f8b0:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 755986E82F
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 06:12:23 +0000 (UTC)
Received: by mail-ot1-x344.google.com with SMTP id z25so9583448otq.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 May 2020 23:12:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rDVhfwcqSVyx9q5/p16CBADSN5ABq1zW6fY3UNoJRwE=;
 b=GJU6+oDml8xnoT95xGt/51ibXnSnWHbS6L44A1d4aAxTIhM+TRN0GsMjxc6tOiQxij
 W1HgnyhjOqVZ4EeXD2+Ya67BUUhQZNpILTKhwGGkEyj+lgqcYywNl95I6T/MARS6UR7u
 VIlXBE4FZi1iC3oSuefMY08HMZx+TFAs4C+u0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rDVhfwcqSVyx9q5/p16CBADSN5ABq1zW6fY3UNoJRwE=;
 b=Bz/oz7JN8yZkp4YDe/gEaI10nPGcS1QRvIjNSSDkk6sDjKZx/mmA6MBeZA2Kf+wi1r
 1IM9fmJ34J0nVJDWNfwVJflgRe8LLXWMq1O/hG2f5jsoyrXlXIK5e5Dxw4uMvnzdmYLD
 Dy17pvnFlZ30mgglpdOADYcLCzDq+/c/8NQ77JUjwizid2Zc8/1FQdY6jwAtF5K+abHI
 5QlR0XN/IQ//dsPRIAx04ggtu6dfI63HLiXJOJv1fRXy9LgfVvj5PUUcAlbU4ypChJFf
 sAJ/SkEsayj3/nWmxc03753jiKqwulR5nHIRp8/zvNfRtQZ8wPyzQ6rGgloKdVTJhnmO
 Ga7A==
X-Gm-Message-State: AGi0Pubr3m2ZSgjTSRnIBB6meVyrTaK1pFF/v2iUvCYbK5dTEmG1NYBK
 gkZEh4ZspWonFKwXl/hwN/o50fCcN6/xBxHVZKu/oQ==
X-Google-Smtp-Source: APiQypJhNRGRhinzAhGDFhJNon3eFMcfMUO5uhBHXbuwUw5/kLPwp8toKCD2lNCnnnIIniHhPlp9X7sj/2mlYxXCY6k=
X-Received: by 2002:a05:6830:1d0:: with SMTP id
 r16mr14792604ota.303.1589263942718; 
 Mon, 11 May 2020 23:12:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200511091142.208787-1-daniel.vetter@ffwll.ch>
 <20200511091142.208787-3-daniel.vetter@ffwll.ch>
 <CAFCwf10m14ModSuRbQAsWf5CSJvTeP7YRzcokD=o+m2Pa0TqKg@mail.gmail.com>
 <CAPM=9tyukFdDiM6-Mxd+ouXCt9Z4t6LRZwxq7DGoX9drrHnMdQ@mail.gmail.com>
In-Reply-To: <CAPM=9tyukFdDiM6-Mxd+ouXCt9Z4t6LRZwxq7DGoX9drrHnMdQ@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 12 May 2020 08:12:11 +0200
Message-ID: <CAKMK7uF=SzeEBtZ9xH+jPzeML4V0QQuwBnPVw+OL+MUgTaaLzQ@mail.gmail.com>
To: Dave Airlie <airlied@gmail.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] misc/habalabs: don't set default
 fence_ops->wait
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
Cc: Oded Gabbay <oded.gabbay@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Olof Johansson <olof@lixom.net>, Daniel Vetter <daniel.vetter@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 12, 2020 at 4:14 AM Dave Airlie <airlied@gmail.com> wrote:
>
> On Mon, 11 May 2020 at 19:37, Oded Gabbay <oded.gabbay@gmail.com> wrote:
> >
> > On Mon, May 11, 2020 at 12:11 PM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> > >
> > > It's the default.
> > Thanks for catching that.
> >
> > >
> > > Also so much for "we're not going to tell the graphics people how to
> > > review their code", dma_fence is a pretty core piece of gpu driver
> > > infrastructure. And it's very much uapi relevant, including piles of
> > > corresponding userspace protocols and libraries for how to pass these
> > > around.
> > >
> > > Would be great if habanalabs would not use this (from a quick look
> > > it's not needed at all), since open source the userspace and playing
> > > by the usual rules isn't on the table. If that's not possible (because
> > > it's actually using the uapi part of dma_fence to interact with gpu
> > > drivers) then we have exactly what everyone promised we'd want to
> > > avoid.
> >
> > We don't use the uapi parts, we currently only using the fencing and
> > signaling ability of this module inside our kernel code. But maybe I
> > didn't understand what you request. You want us *not* to use this
> > well-written piece of kernel code because it is only used by graphics
> > drivers ?
> > I'm sorry but I don't get this argument, if this is indeed what you meant.
>
> We would rather drivers using a feature that has requirements on
> correct userspace implementations of the feature have a userspace that
> is open source and auditable.
>
> Fencing is tricky, cross-device fencing is really tricky, and having
> the ability for a closed userspace component to mess up other people's
> drivers, think i915 shared with closed habana userspace and shared
> fences, decreases ability to debug things.
>
> Ideally we wouldn't offer users known untested/broken scenarios, so
> yes we'd prefer that drivers that intend to expose a userspace fencing
> api around dma-fence would adhere to the rules of the gpu drivers.
>
> I'm not say you have to drop using dma-fence, but if you move towards
> cross-device stuff I believe other drivers would be correct in
> refusing to interact with fences from here.

The flip side is if you only used dma-fence.c "because it's there",
and not because it comes with an uapi attached and a cross-driver
kernel internal contract for how to interact with gpu drivers, then
there's really not much point in using it. It's a custom-rolled
wait_queue/event thing, that's all. Without the gpu uapi and gpu
cross-driver contract it would be much cleaner to just use wait_queue
directly, and that's a construct all kernel developers understand, not
just gpu folks. From a quick look at least habanalabs doesn't use any
of these uapi/cross-driver/gpu bits.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
