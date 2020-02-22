Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6B1168E1A
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Feb 2020 10:50:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 930116E59F;
	Sat, 22 Feb 2020 09:50:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com
 [IPv6:2607:f8b0:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 063786E598
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 09:50:51 +0000 (UTC)
Received: by mail-ot1-x344.google.com with SMTP id g64so4348067otb.13
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Feb 2020 01:50:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=e5S/nZCr4nqEYxH5Y3wrkaNYijjYpxHWH5hGO1LnRQ4=;
 b=BoawQScHyiFG89p7KByW4b9ul7MXcbq2KFCxaQBmHZsXUaIQVsUMVaaBtxIhNYQXs1
 uHS+8wLAiYPdeGIrmVqUmlUt4P6s6NhYO01d+yOhKr++D52TjEaF2OgvgL0WiXAFdaXr
 Fp7Izvk1q6TLrcYd/AayTWFyiLLznQjQzZAtk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=e5S/nZCr4nqEYxH5Y3wrkaNYijjYpxHWH5hGO1LnRQ4=;
 b=spal2QPJddREaJ39b13CPMzUuqdj0RWfogxUqpPdFjN5T8tHywTfsPBQJdFUrGeSYs
 sE52xjcXSu8PXMsodBb0kMgV/UWOWJnq5WV8tGtuyCimvMJ64sYGvotcd6+M86JUVek9
 oJcrhnAR7aPFG5tMADNgwZo6OteKCH2KSVqXtYcHP+SfBqntHQy4yQOVUaqD6PbmhmX1
 e4aeaSweBuf4LkOprmxMN0GhUU3dUD1Bnj0Mwnj0ntD/8t5gj2//sxRVr6ZgibpP+p+x
 iZfWREqJX7PpWk0629RWuXN2zg763MllFwaG1qU9KiwXdHO1wmSIY8zsbp/uIxGLo08q
 XW2Q==
X-Gm-Message-State: APjAAAVrmOHAlkUn6MD7sVlZrA5qjUvOwWzSrKLzGz0oEZ6hF+dBJ3g+
 I0s4TEtk1SXe4dg1WM7UrSlwMv4I11y2GZ4AuUhTiw==
X-Google-Smtp-Source: APXvYqwWbAZQEYMHHWhS1aboYiXY2Mf9+ysoQmEML4yKTNEkgCGF5c1t/bJGb8p9rybjNZxZhghXt+84r19k6af2c2Q=
X-Received: by 2002:a05:6830:18f1:: with SMTP id
 d17mr31777824otf.303.1582365050206; 
 Sat, 22 Feb 2020 01:50:50 -0800 (PST)
MIME-Version: 1.0
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
 <20200221210319.2245170-3-daniel.vetter@ffwll.ch>
 <158232098048.7320.8539611385294752480@skylake-alporthouse-com>
 <CAKMK7uHoQM=mK1tMkw3-+v_O6qbmAjrObQXjzYn2154zwQi5qA@mail.gmail.com>
In-Reply-To: <CAKMK7uHoQM=mK1tMkw3-+v_O6qbmAjrObQXjzYn2154zwQi5qA@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Sat, 22 Feb 2020 10:50:39 +0100
Message-ID: <CAKMK7uHSesXLupwWmvZgCK4h6t3goHF76vqcgZXbu9Rw1Sw51A@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 02/51] drm/i915: Don't clear drvdata in
 ->release
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Feb 22, 2020 at 10:48 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
> On Fri, Feb 21, 2020 at 10:36 PM Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > Quoting Daniel Vetter (2020-02-21 21:02:30)
> > > For two reasons:
> > >
> > > - The driver core clears this already for us after we're unloaded in
> > >   __device_release_driver().
> >
> > Even if we abort before loading?
> >
> > History notes that i915_pci_remove was called with a stale pointer on
> > error.
>
> So even if there's a bug we still have the problem that clearing the
> pci_drvdata in our drm_driver->release hook is way too late. You could
> already have bound a new driver to the underlying device. So if driver
> core doesn't clear drvdata on bind failure and we need to clear this
> ourselves, then this line here could actually clear the drvdata of the
> next driver instance bound to the pci device. Not that that's ever
> going to happen outside of very contrived testing.
>
> But looking at really_probe() in base/dd.c we do clear drvdata on
> failure. So no idea how/why that stale drvdata came to be. Anyway
> that's kinda why I cc'ed Greg, so he could confirm that this is
> correct.

Looking at git history, this was fixed in driver core in

commit 0998d0631001288a5974afc0b2a5f568bcdecb4d
Author: Hans de Goede <hdegoede@redhat.com>
Date:   Wed May 23 00:09:34 2012 +0200

    device-core: Ensure drvdata = NULL when no driver is bound

I'll add that to the commit message.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
