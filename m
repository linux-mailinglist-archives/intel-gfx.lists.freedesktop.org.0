Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E4C40B03F
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 16:08:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 281C06E49F;
	Tue, 14 Sep 2021 14:08:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52EC96E49F
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Sep 2021 14:08:01 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id u16so20448838wrn.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Sep 2021 07:08:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Dg8cDQ8ehBXndqT6qwECef/mwepLxtZdiJ5pZmst1Zg=;
 b=awwAKJfaIf7hQMZ6XqinIMywJmYd3dQ2pJKfKeYs4bvW/xRcw1cqOOteQRMnr7jl8P
 +IUboeJFm62w3rRyVYHf4HaxKf9vM9VgRjBtCqeB0rJSHV+F/vFqwApOkL/7xXeMyviv
 jgW4BQYR5PQK7Na831urlKILKoWhGhUtWR2t4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Dg8cDQ8ehBXndqT6qwECef/mwepLxtZdiJ5pZmst1Zg=;
 b=I8B8Xpd9NMORODfg3Lfin6VRfvEqtJCuORL/8B+Cn485WZ2dqQt5SbTST6oarnKTks
 9jcri4f4ekuvKuMAD9xvyzbA99DUFJcG+bMol72ZnjMM5jKfuGj/4UQIA+31LCAUhQ43
 by0r1kno/4Sa0epDmsNK1PphFG12iSCpfa/3VvYha821J0RPgGWzzg8X914sT+R29riz
 4cP0JfC4a/nV8zgD+BQ08nhS0JiSwi+U6e/to/MaH9nQiTYrcAoKXtNjCM3VzWG6I/FN
 4tn7nHYeiyUWV2kg+CKmbGLYxuLmHfGhQik+bdJO4iWS3reZx1ZttCwh8gF894Evkfwi
 o7jw==
X-Gm-Message-State: AOAM533mz5c9Wd1LLgxwgloXmolCCaDsqwuIB+C9/YEjrB8DpEmB3tNE
 n6HoRBUp9q/U1RE8Pdn0HzttSA==
X-Google-Smtp-Source: ABdhPJyV7UnllTia7j2IPzScnkB/hpttETNyhicXALaPVgncjV4kwAZ/N4NyNacWWMSXiefCkRePuQ==
X-Received: by 2002:a5d:5684:: with SMTP id f4mr17133175wrv.148.1631628479671; 
 Tue, 14 Sep 2021 07:07:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z2sm1225477wma.45.2021.09.14.07.07.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Sep 2021 07:07:58 -0700 (PDT)
Date: Tue, 14 Sep 2021 16:07:57 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Cc: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 maarten.lankhorst@linux.intel.com, matthew.auld@intel.com,
 Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <YUCsvTiS+AWfLyyL@phenom.ffwll.local>
References: <5ea3f498cc5ae84fa6aeba97a64e4eb8ab32e02b.camel@linux.intel.com>
 <c67b3b42-d260-44dc-81cb-1d1eb18db643@amd.com>
 <a6badfa3-efbb-7830-e019-1dd61b0f800e@linux.intel.com>
 <5ca10e93-9bac-bd8f-39b0-d60fe06bc289@amd.com>
 <4b9e25e3-0a9d-a7a8-e092-8355c6b5878f@linux.intel.com>
 <7c0b6e6d-fd36-9a5c-758d-7c172c0c5e05@linux.intel.com>
 <0a0f1b45-a668-e0a8-dcd0-d4413ec3b39b@amd.com>
 <4add643ae0b1a1daa4657106f5554894145a9778.camel@linux.intel.com>
 <d3982c91-99eb-a0a8-a8ca-163d90feb0b6@amd.com>
 <bf1a66a2c2feb0d2131b2569079b77c2ecbb6d28.camel@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bf1a66a2c2feb0d2131b2569079b77c2ecbb6d28.camel@linux.intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [RFC PATCH] drm/ttm: Add a private member to the
 struct ttm_resource
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 14, 2021 at 12:38:00PM +0200, Thomas Hellstr�m wrote:
> On Tue, 2021-09-14 at 10:53 +0200, Christian K�nig wrote:
> > Am 14.09.21 um 10:27 schrieb Thomas Hellstr�m:
> > > On Tue, 2021-09-14 at 09:40 +0200, Christian K�nig wrote:
> > > > Am 13.09.21 um 14:41 schrieb Thomas Hellstr�m:
> > > > > [SNIP]
> > > > > > > > Let's say you have a struct ttm_object_vram and a struct
> > > > > > > > ttm_object_gtt, both subclassing drm_gem_object. Then I'd
> > > > > > > > say
> > > > > > > > a
> > > > > > > > driver would want to subclass those to attach identical
> > > > > > > > data,
> > > > > > > > extend functionality and provide a single i915_gem_object
> > > > > > > > to
> > > > > > > > the
> > > > > > > > rest of the driver, which couldn't care less whether it's
> > > > > > > > vram or
> > > > > > > > gtt? Wouldn't you say having separate struct
> > > > > > > > ttm_object_vram
> > > > > > > > and a
> > > > > > > > struct ttm_object_gtt in this case would be awkward?. We
> > > > > > > > *want* to
> > > > > > > > allow common handling.
> > > > > > > Yeah, but that's a bad idea. This is like diamond
> > > > > > > inheritance
> > > > > > > in C++.
> > > > > > > 
> > > > > > > When you need the same functionality in different backends
> > > > > > > you
> > > > > > > implement that as separate object and then add a parent
> > > > > > > class.
> > > > > > > 
> > > > > > > > It's the exact same situation here. With struct
> > > > > > > > ttm_resource
> > > > > > > > you
> > > > > > > > let *different* implementation flavours subclass it,
> > > > > > > > which
> > > > > > > > makes it
> > > > > > > > awkward for the driver to extend the functionality in a
> > > > > > > > common way
> > > > > > > > by subclassing, unless the driver only uses a single
> > > > > > > > implementation.
> > > > > > > Well the driver should use separate implementations for
> > > > > > > their
> > > > > > > different domains as much as possible.
> > > > > > > 
> > > > > > Hmm, Now you lost me a bit. Are you saying that the way we do
> > > > > > dynamic
> > > > > > backends in the struct ttm_buffer_object to facilitate driver
> > > > > > subclassing is a bad idea or that the RFC with backpointer is
> > > > > > a
> > > > > > bad
> > > > > > idea?
> > > > > > 
> > > > > > 
> > > > > Or if you mean diamond inheritance is bad, yes that's basically
> > > > > my
> > > > > point.
> > > > That diamond inheritance is a bad idea. What I don't understand
> > > > is
> > > > why
> > > > you need that in the first place?
> > > > 
> > > > Information that you attach to a resource are specific to the
> > > > domain
> > > > where the resource is allocated from. So why do you want to
> > > > attach
> > > > the
> > > > same information to a resources from different domains?
> > > Again, for the same reason that we do that with struct
> > > i915_gem_objects
> > > and struct ttm_tts, to extend the functionality. I mean information
> > > that we attach when we subclass a struct ttm_buffer_object doesn't
> > > necessarily care about whether it's a VRAM or a GTT object. In
> > > exactly
> > > the same way, information that we want to attach to a struct
> > > ttm_resource doesn't necessarily care whether it's a system or a
> > > VRAM
> > > resource, and need not be specific to any of those.
> > > 
> > > In this particular case, as memory management becomes asynchronous,
> > > you
> > > can't attach things like sg-tables and gpu binding information to
> > > the
> > > gem object anymore, because the object may have a number of
> > > migrations
> > > in the pipeline. Such things need to be attached to the structure
> > > that
> > > abstracts the memory allocation, and which may have a completely
> > > different lifetime than the object itself.
> > > 
> > > In our particular case we want to attach information for cached
> > > page
> > > lookup and and sg-table, and moving forward probably the gpu
> > > binding
> > > (vma) information, and that is the same information for any
> > > ttm_resource regardless where it's allocated from.
> > > 
> > > Typical example: A pipelined GPU operation happening before an
> > > async
> > > eviction goes wrong. We need to error capture and reset. But if we
> > > look
> > > at the object for error capturing, it's already updated pointing to
> > > an
> > > after-eviction resource, and the resource sits on a ghost object
> > > (or in
> > > the future when ghost objects go away perhaps in limbo somewhere).
> > > 
> > > We need to capture the memory pointed to by the struct ttm_resource
> > > the
> > > GPU was referencing, and to be able to do that we need to cache
> > > driver-
> > > specific info on the resource. Typically an sg-list and GPU binding
> > > information.
> > > 
> > > Anyway, that cached information needs to be destroyed together with
> > > the
> > > resource and thus we need to be able to access that information
> > > from
> > > the resource in some way, regardless whether it's a pointer or
> > > whether
> > > we embed the struct resource.
> > > 
> > > I think it's pretty important here that we (using the inheritance
> > > diagram below) recognize the need for D to inherit from A, just
> > > like we
> > > do for objects or ttm_tts.
> > > 
> > > 
> > > > > Looking at
> > > > > https://nam11.safelinks.protection.outlook.com/?url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FMultiple_inheritance%23%2Fmedia%2FFile%3ADiamond_inheritance.svg&amp;data=04%7C01%7Cchristian.koenig%40amd.com%7C268bb562db8548b285b408d977598b2c%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637672048739103176%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=bPyDqiSF%2FHFZbl74ux0vfwh3uma5hZIUf2xbzb9yZz8%3D&amp;reserved=0
> > > > > � 
> > > > > 
> > > > > 
> > > > > 1)
> > > > > 
> > > > > A would be the struct ttm_resource itself,
> > > > > D would be struct i915_resource,
> > > > > B would be struct ttm_range_mgr_node,
> > > > > C would be struct i915_ttm_buddy_resource
> > > > > 
> > > > > And we need to resolve the ambiguity using the awkward union
> > > > > construct, iff we need to derive from both B and C.
> > > > > 
> > > > > Struct ttm_buffer_object and struct ttm_tt instead have B) and
> > > > > C)
> > > > > being dynamic backends of A) or a single type derived from A)
> > > > > Hence
> > > > > the problem doesn't exist for these types.
> > > > > 
> > > > > So the question from last email remains, if ditching this RFC,
> > > > > can
> > > > > we
> > > > > have B) and C) implemented by helpers that can be used from D)
> > > > > and
> > > > > that don't derive from A?
> > > > Well we already have that in the form of drm_mm. I mean the
> > > > ttm_range_manager is just a relatively small glue code which
> > > > implements
> > > > the TTMs resource interface using the drm_mm object and a
> > > > spinlock.
> > > > IIRC
> > > > that less than 200 lines of code.
> > > > 
> > > > So you should already have the necessary helpers and just need to
> > > > implement the resource manager as far as I can see.
> > > > 
> > > > I mean I reused the ttm_range_manager_node in for amdgpu_gtt_mgr
> > > > and
> > > > could potentially reuse a bit more of the ttm_range_manager code.
> > > > But
> > > > I
> > > > don't see that as much of an issue, the extra functionality there
> > > > is
> > > > just minimal.
> > > Sure but that would give up the prereq of having reusable resource
> > > manager implementations. What happens if someone would like to
> > > reuse
> > > the buddy manager? And to complicate things even more, the
> > > information
> > > we attach to VRAM resources also needs to be attached to system
> > > resources. Sure we could probably re-implement a combined system-
> > > buddy-
> > > range manager, but that seems like something overly complex.
> > > 
> > > The other object examples resolve the diamond inheritance with a
> > > pointer to the specialization (BC) and let D derive from A.
> > > 
> > > TTM resources do it backwards. If we can just recognize that and
> > > ponder
> > > what's the easiest way to resolve this given the current design, I
> > > actually think we'd arrive at a backpointer to allow downcasting
> > > from A
> > > to D.
> > 
> > Yeah, but I think you are approaching that from the wrong side.
> > 
> > For use cases like this I think you should probably have the
> > following 
> > objects and inheritances:
> > 
> > 1. Driver specific objects like i915_sg, i915_vma which don't inherit
> > anything from TTM.
> > 2. i915_vram_node which inherits from ttm_resource or a potential 
> > ttm_buddy_allocator.
> > 3. i915_gtt_node which inherits from ttm_range_manger_node.
> > 4. Maybe i915_sys_node which inherits from ttm_resource as well.
> > 
> > The managers for the individual domains then provide the glue code to
> > implement both the TTM resource interface as well as a driver
> > specific 
> > interface to access the driver objects.
> 
> Well yes, but this is not really much better than the union thing. More
> memory efficient but also more duplicated type definitions and manager
> definitions and in addition overriding the default system resource
> manager, not counting the kerneldoc needed to explain why all this is
> necessary.
> 
> It was this complexity I was trying to get away from in the first
> place.

I honestly don't think the union thing is the worst. At least as long as
we're reworking i915 at a fairly invasive pace it's probably the lest
worst approach.

For the specific case of sg list I'm also not sure how great our current
i915 design of "everything is an sg" really is. In the wider community
there's clear rejection of sg for p2p addresses, so having this as a
per-ttm_res_manager kind of situation is probably not the worst.

In that world every ttm_res_manager would have it's own implementation of
binding into ptes, which then iterate over the pagetables with some common
abstraction. So in a way more of a helper approach for the i915
implementations of the various hooks, at the cost of a bit of code
duplication.

I do agree with Christian that the various backpointers to sort out the
diamond inheritence issue isn't not great. The other options aren't pretty
either, but at least it's more contained to i915.
-Daniel


> /Thomas
> 
> 
> 
> 
> > Amdgpu just uses a switch/case for now, but you could as well extend
> > the 
> > ttm_resource_manager_func table and upcast that inside the driver.
> > 
> > Regards,
> > Christian.
> > 
> > > 
> > > Thanks,
> > > Thomas
> > > 
> > > 
> > > 
> > > > Regards,
> > > > Christian.
> > > > 
> > > > > Thanks,
> > > > > 
> > > > > Thomas
> > > > > 
> > > > > 
> > > > > 
> > > 
> > 
> 
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
