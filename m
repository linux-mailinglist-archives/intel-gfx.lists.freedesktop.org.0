Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B4B49E078
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 12:16:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 586E510EE95;
	Thu, 27 Jan 2022 11:16:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46C4410EE73
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 11:16:34 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id a13so4075051wrh.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 03:16:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=EpsL82QGawXA+MspDkzQXzazfa90OBJ0RXteaUVBe0g=;
 b=efvV/UzuKzY52GovxKYPQeIOwEF/HuM9kP0DcVzxRxeiZWWO+6HIKDEdqb6uIKG6Hm
 l8DsuWLlYAVexgP9y9XfJ1bcXo4X/6C1qRV8zBrOUtJf8hHvNkHqpwPsr9Z7t5KH6+56
 uCtiV6ZgXKYtYH2nIjOXLj5xVMvWiKhtejfQI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=EpsL82QGawXA+MspDkzQXzazfa90OBJ0RXteaUVBe0g=;
 b=VTv1D9HiksdM34nYzu4pIW61IuLGJqSPao8KCyC9t5Sz7BlWmEiRytr1DrHtPxv1Jz
 2EW6hC5pRIkH56XyC8YPdUduc0qxYJh6FsuIQazq3Pvtql9i4O5w0qMd/2Ojs7FtEcCf
 6WPzfIQw70MQ4DxA2uZwpiSiAQqDsVt2h8wJ9mTePteomVIuxJSYeTlAQRoD9jsgtYRI
 1TaiJUjxt+xblZ6xrqAadnerCNsRwP+m8cBZ7Qgq34VhKjvhElBQzm9gQCHquPOB7xZV
 i/KfzMOjoq9bVLKu4wLXuYwCWIac5mpKLUnkLNZDarGgHMOa9MGaQUUl4aOO5NlvizwX
 jCDA==
X-Gm-Message-State: AOAM533ctLcwkraFHfGRIPvu8l94jnkuP37PVWv1b0SaLc1DKQxmWcIK
 LkgQUUmJI4VbB4DMPcZ4M0KYsw==
X-Google-Smtp-Source: ABdhPJzmIT7dU5BCh30CNcGC9AQVTactJUFazjPm1BxcLRrSK8+gWT5be+KpPQUszELrlaAL5DNYVQ==
X-Received: by 2002:a5d:6543:: with SMTP id z3mr2671000wrv.619.1643282192772; 
 Thu, 27 Jan 2022 03:16:32 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f6sm1813759wrj.26.2022.01.27.03.16.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Jan 2022 03:16:31 -0800 (PST)
Date: Thu, 27 Jan 2022 12:16:30 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <YfJ/DvhxaGGppGV6@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>,
 linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
References: <20220126203702.1784589-1-lucas.demarchi@intel.com>
 <20220126203702.1784589-3-lucas.demarchi@intel.com>
 <f0dbdcc0-13b5-c484-0bf3-a1f8c3e48954@amd.com>
 <20220127075728.ygwgorhnrwaocdqv@ldmartin-desk2>
 <3066c6a7-fc73-d34d-d209-a3ff6818dfb6@amd.com>
 <YfJedaoeJjE3grum@phenom.ffwll.local>
 <20220127093332.wnkd2qy4tvwg5i5l@ldmartin-desk2>
 <YfJtLkdkh4yde20f@phenom.ffwll.local>
 <27aed6b1-b465-6a52-2b0a-d748c9798414@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <27aed6b1-b465-6a52-2b0a-d748c9798414@amd.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH 02/19] dma-buf-map: Add helper to initialize
 second map
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 27, 2022 at 11:21:20AM +0100, Christian K�nig wrote:
> Am 27.01.22 um 11:00 schrieb Daniel Vetter:
> > On Thu, Jan 27, 2022 at 01:33:32AM -0800, Lucas De Marchi wrote:
> > > On Thu, Jan 27, 2022 at 09:57:25AM +0100, Daniel Vetter wrote:
> > > > On Thu, Jan 27, 2022 at 09:02:54AM +0100, Christian K�nig wrote:
> > > > > Am 27.01.22 um 08:57 schrieb Lucas De Marchi:
> > > > > > On Thu, Jan 27, 2022 at 08:27:11AM +0100, Christian K�nig wrote:
> > > > > > > Am 26.01.22 um 21:36 schrieb Lucas De Marchi:
> > > > > > > > When dma_buf_map struct is passed around, it's useful to be able to
> > > > > > > > initialize a second map that takes care of reading/writing to an offset
> > > > > > > > of the original map.
> > > > > > > > 
> > > > > > > > Add a helper that copies the struct and add the offset to the proper
> > > > > > > > address.
> > > > > > > Well what you propose here can lead to all kind of problems and is
> > > > > > > rather bad design as far as I can see.
> > > > > > > 
> > > > > > > The struct dma_buf_map is only to be filled in by the exporter and
> > > > > > > should not be modified in this way by the importer.
> > > > > > humn... not sure if I was� clear. There is no importer and exporter here.
> > > > > Yeah, and exactly that's what I'm pointing out as problem here.
> > > > > 
> > > > > You are using the inter driver framework for something internal to the
> > > > > driver. That is an absolutely clear NAK!
> > > > > 
> > > > > We could discuss that, but you guys are just sending around patches to do
> > > > > this without any consensus that this is a good idea.
> > > > Uh I suggested this, also we're already using dma_buf_map all over the
> > > > place as a convenient abstraction. So imo that's all fine, it should allow
> > > > drivers to simplify some code where on igpu it's in normal kernel memory
> > > > and on dgpu it's behind some pci bar.
> > > > 
> > > > Maybe we should have a better name for that struct (and maybe also a
> > > > better place), but way back when we discussed that bikeshed I didn't come
> > > > up with anything better really.
> > > I suggest iosys_map since it abstracts access to IO and system memory.
> > > 
> > > > > > There is a role delegation on filling out and reading a buffer when
> > > > > > that buffer represents a struct layout.
> > > > > > 
> > > > > > struct bla {
> > > > > >  ����int a;
> > > > > >  ����int b;
> > > > > >  ����int c;
> > > > > >  ����struct foo foo;
> > > > > >  ����struct bar bar;
> > > > > >  ����int d;
> > > > > > }
> > > > > > 
> > > > > > 
> > > > > > This implementation allows you to have:
> > > > > > 
> > > > > >  ����fill_foo(struct dma_buf_map *bla_map) { ... }
> > > > > >  ����fill_bar(struct dma_buf_map *bla_map) { ... }
> > > > > > 
> > > > > > and the first thing these do is to make sure the map it's pointing to
> > > > > > is relative to the struct it's supposed to write/read. Otherwise you're
> > > > > > suggesting everything to be relative to struct bla, or to do the same
> > > > > > I'm doing it, but IMO more prone to error:
> > > > > > 
> > > > > >  ����struct dma_buf_map map = *bla_map;
> > > > > >  ����dma_buf_map_incr(map, offsetof(...));
> > > > Wrt the issue at hand I think the above is perfectly fine code. The idea
> > > > with dma_buf_map is really that it's just a special pointer, so writing
> > > > the code exactly as pointer code feels best. Unfortunately you cannot make
> > > > them typesafe (because of C), so the code sometimes looks a bit ugly.
> > > > Otherwise we could do stuff like container_of and all that with
> > > > typechecking in the macros.
> > > I had exactly this code above, but after writting quite a few patches
> > > using it, particularly with functions that have to write to 2 maps (see
> > > patch 6 for example), it felt much better to have something to
> > > initialize correctly from the start
> > > 
> > > 	struct dma_buf_map other_map = *bla_map;
> > > 	/* poor Lucas forgetting dma_buf_map_incr(map, offsetof(...)); */
> > > 
> > > is error prone and hard to debug since you will be reading/writting
> > > from/to another location rather than exploding
> > > 
> > > While with the construct below
> > > 
> > > 	other_map;
> > > 	...
> > > 	other_map = INITIALIZER()
> > > 
> > > I can rely on the compiler complaining about uninitialized var. And
> > > in most of the cases I can just have this single line in the beggining of the
> > > function when the offset is constant:
> > > 
> > > 	struct dma_buf_map other_map = INITIALIZER(bla_map, offsetof(..));
> > Hm yeah that's a good point that this allows us to rely on the compiler to
> > check for uninitialized variables.
> > 
> > Maybe include the above (with editing, but keeping the examples) in the
> > kerneldoc to explain why/how to use this? With that the concept at least
> > has my
> > 
> > Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> > 
> > I'll leave it up to you & Christian to find a prettier color choice for
> > the naming bikeshed.
> 
> There is one major issue remaining with this and that is dma_buf_vunmap():
> 
> void dma_buf_vunmap(struct dma_buf *dmabuf, struct dma_buf_map *map);
> 
> Here we expect the original pointer as returned by dma_buf_map(), otherwise
> we vunmap() the wrong area!
> 
> For all TTM based driver this doesn't matter since we keep the vmap base
> separately in the BO anyway (IIRC), but we had at least one case where this
> made boom last year.

Yeah but isn't that the same if it's just a void *?

If you pass the wrong pointer to an unmap function and not exactly what
you go from the map function, then things go boom. This is like
complaining that the following code wont work

	u32 *stuff

	stuff = kmap_local(some_page);
	*stuff++ = 0;
	*stuff = 1;
	kunmap_locak(stuff);

It's just ... don't do that :-) Also since we pass dma_buf_map by value
and not by pointer anywhere, the risk of this happening is pretty low
since you tend to work on a copy. Same with void * pointers really.

Now if people start to pass around struct dma_buf_map * as pointers for
anything else than out parameters, then we're screwed. But that's like
passing around void ** for lolz, which is just wrong (except when it's an
out parameter or actually an array of pointers ofc).

Or I really don't get your concern and you mean something else?
-Daniel


> Christian.
> 
> > -Daniel
> > 
> > > Lucas De Marchi
> > > 
> > > > -Daniel
> > > > 
> > > > > > IMO this construct is worse because at a point in time in the function
> > > > > > the map was pointing to the wrong thing the function was supposed to
> > > > > > read/write.
> > > > > > 
> > > > > > It's also useful when the function has double duty, updating a global
> > > > > > part of the struct and a table inside it (see example in patch 6)
> > > > > > 
> > > > > > thanks
> > > > > > Lucas De Marchi
> > > > -- 
> > > > Daniel Vetter
> > > > Software Engineer, Intel Corporation
> > > > https://nam11.safelinks.protection.outlook.com/?url=http%3A%2F%2Fblog.ffwll.ch%2F&amp;data=04%7C01%7Cchristian.koenig%40amd.com%7C0654a16ea3444271d7c308d9e17bd35d%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637788744226808874%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=Q6soluBglaZLhLszdapaWuUVsqMq5qvJOKiJjO%2B9BTg%3D&amp;reserved=0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
