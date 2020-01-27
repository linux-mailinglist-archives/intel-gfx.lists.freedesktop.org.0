Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B33E14A088
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 10:19:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C17266EA86;
	Mon, 27 Jan 2020 09:19:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C60346EA85
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 09:19:39 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id c84so6193603wme.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 01:19:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=I8RgH6Oa7/mqcR3YP4EEjQ12nPgH11UJD28MC9LMRhk=;
 b=QXTfS6Moj1m9KOMBLZ+hzv1hA+4ROSw0fWYQOSpoNgmIW11QZ2uJgQ52Gw7HuqDeFz
 ksY/Adc2LeFIBLf4dOML7PxQVQ2mNoc8ZoT2sRzdHvSnboMkQV5c7i/ZSUvoCF4ytDTy
 KeW8fsMR238r+hCxqKTsV8BGmN9npwq+V9ssc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=I8RgH6Oa7/mqcR3YP4EEjQ12nPgH11UJD28MC9LMRhk=;
 b=hjdDSHXTjba9vH3XN92cXi8etQDwrKD1isZYdxBGIlK3Ktm7A++6goS4GMUZhWH58H
 3bU+gcOjijz2v9Wwto5ICxSRUojBf2jJ9WnT3apWCWPJeVQJ2cPvEJAEs46aqC3Gu57C
 o8HHQSCLx6jjiVDDi93Ccg84u5oT1o9z14BZXThFl8CIir59Rx6+EQSuqRlDmhDcE2pZ
 p6Zs82/b/rY4w2DwBl6Ro8tcL08rBKPEYGGKadd+Q589fsFJpmCmE1ndtuiD24ONDhrh
 K7UlXNzM5NfRrl4K6ZqhClSg3rkZwB/oXBe0uILBH0i1qW7jKlORy5uKvaH+QE2+GEFD
 FZuA==
X-Gm-Message-State: APjAAAXVLzoqTlpRr+E12LriKd2C+gGEBgP86aRbC/gYil13dPT85SPn
 jO6t1kt97OZ6BekgO1ELQd+ErQ==
X-Google-Smtp-Source: APXvYqxg3/Hr4ewcTKCfK3WOe0974lsFqWSwpOU2if/mLJK9vzX/HP8D00maWqHnUXZSpOl6IceXMA==
X-Received: by 2002:a1c:1bcd:: with SMTP id b196mr11663162wmb.54.1580116778435; 
 Mon, 27 Jan 2020 01:19:38 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id g7sm19752922wrq.21.2020.01.27.01.19.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 01:19:37 -0800 (PST)
Date: Mon, 27 Jan 2020 10:19:36 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200127091936.GW43062@phenom.ffwll.local>
References: <20200124125627.125042-2-chris@chris-wilson.co.uk>
 <20200124130107.125404-1-chris@chris-wilson.co.uk>
 <38d3a0bf-4dfa-c8e4-c429-8c95854a9b8c@shipmail.org>
 <157989116639.2524.11400196809963426024@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157989116639.2524.11400196809963426024@skylake-alporthouse-com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm: Avoid drm_global_mutex for simple
 inc/dec of dev->open_count
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
Cc: Thomas =?iso-8859-1?Q?Hellstr=F6m_=28VMware=29?= <thomas_os@shipmail.org>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 24, 2020 at 06:39:26PM +0000, Chris Wilson wrote:
> Quoting Thomas Hellstr=F6m (VMware) (2020-01-24 13:37:47)
> > On 1/24/20 2:01 PM, Chris Wilson wrote:
> > > Since drm_global_mutex is a true global mutex across devices, we don't
> > > want to acquire it unless absolutely necessary. For maintaining the
> > > device local open_count, we can use atomic operations on the counter
> > > itself, except when making the transition to/from 0. Here, we tackle =
the
> > > easy portion of delaying acquiring the drm_global_mutex for the final
> > > release by using atomic_dec_and_mutex_lock(), leaving the global
> > > serialisation across the device opens.
> > >
> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > Cc: Thomas Hellstr=F6m (VMware) <thomas_os@shipmail.org>
> > =

> > For the series:
> > =

> > Reviewed-by: Thomas Hellstr=F6m <thellstrom@vmware.com>
> =

> Now being opt-in, it is fairly limited in scope and will not randomly
> break others (touch wood) and the close() racing in BAT didn't throw
> anything up, so pushed to drm-misc-next. Thanks for the review and
> suggestions,

Yeah this version looks reasonable compared to the previous few (I'm
catching up on dri-devel). I've looked at getting rid of the global_mutex,
and all I have is a simple patch with a pile of notes. It's real nasty.

This one here is a neat trick that I missed, and I'm semi-convinced it's sa=
fe :-)

> Next task is to suggest others might like to use it as well.

My idea for the opt-in was to look at whether ->load/->unload exists. And
ofc not bother with any of this for DRIVER_LEGACY. So maybe next step
would be to define a

drm_can_noglobal()
{
	return !DRIVER_LEGACY && !->load && !->unload;
}

and inline the close helper again and see what breaks? At least from what
I've looked trying to duplicate paths and opt-in is going to be real tough
on the open side of things. Best I've done thus far is minor pushing of
the critical section.
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
