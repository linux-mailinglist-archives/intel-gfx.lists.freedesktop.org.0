Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JgzWNL/MTGq6pwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 11:54:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D065719FE7
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 11:54:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=gWFP1A9Y;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD3FA10E48C;
	Tue,  7 Jul 2026 09:54:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 538CA10E2BB;
 Tue,  7 Jul 2026 09:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783418044; x=1814954044;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=5VjJN9ZP1axgDL2dggilIclgMufOLUAZO6IuQFXDmPw=;
 b=gWFP1A9YxvpcZLu6guT1qf8vXudOZzKEGkjEY5U4vImCbZI9Aq613p/5
 m1QYvkPJVetWph3UFlwnJyqlt4uEOG6k798AZh6J1NpWj4T+x0exsfYux
 kBexdO1sPz6YxuHraXb6lJr/6Nv27GrBe+GAA+sau4J3WH2lP9luiCyQX
 9RShuQsAWu0RAvFt+eOglomk/QN0XfBUHjILAIvSjTHrtv6nXqwiHU9ye
 OiSISq5j+kLn5hot5z/bY2akyxmTosintW3JbV8gVbfiZ1OCbJED/VV6F
 LqOcbunL6yV4hCyemcb2LlM7d/BirCH7kgEaKzfu9kYvKLHKYhCzFFjDP g==;
X-CSE-ConnectionGUID: 4u/5vUVKSqirJ9DgtKNVMw==
X-CSE-MsgGUID: ez90B53sQfefSftgqUpiRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11839"; a="87744447"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="87744447"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 02:54:03 -0700
X-CSE-ConnectionGUID: Uu4YjmArSyKsyzcx21tzDA==
X-CSE-MsgGUID: D8RC1zckS9moS9dgoX3VXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="252210513"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [10.245.244.199])
 ([10.245.244.199])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 02:53:57 -0700
Message-ID: <a5e1afa24b975a1fcf17949875d4a0e0772dcc70.camel@linux.intel.com>
Subject: Re: [PATCH 02/10] drm/ttm: replace TTMs refcount with the DRM
 refcount v4
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Natalie
 Vock <natalie.vock@gmx.de>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>,  Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen	 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>,  Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui
 <ray.huang@amd.com>, Matthew Auld <matthew.auld@intel.com>,  Matthew Brost
 <matthew.brost@intel.com>, Alex Deucher <alexander.deucher@amd.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 amd-gfx@lists.freedesktop.org
Date: Tue, 07 Jul 2026 11:53:54 +0200
In-Reply-To: <a67cc4c5-7545-4f8e-aa89-e90b3bee523a@amd.com>
References: <20260703-ttm_2_drm_exec-v1-0-43685ac1286b@gmx.de>
 <20260703-ttm_2_drm_exec-v1-2-43685ac1286b@gmx.de>
 <b2932c85fee8e4bf89fdd80ada8883c199d823c0.camel@linux.intel.com>
 <88614266-6ee3-4488-9e2f-030ae0266e0e@amd.com>
 <7031c630c987940d814eaef9d1696969be12d81b.camel@linux.intel.com>
 <5d56ec48-b0f0-4f03-8ec2-f8cc34cb3186@amd.com>
 <eebae66784e24f4b2af6e0079ef74d11100d4020.camel@linux.intel.com>
 <a67cc4c5-7545-4f8e-aa89-e90b3bee523a@amd.com>
Organization: Intel Sweden AB, Registration Number: 556189-6027
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
MIME-Version: 1.0
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[amd.com,gmx.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thomas.hellstrom@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gmx.de:email,linux.intel.com:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4D065719FE7

On Tue, 2026-07-07 at 10:48 +0200, Christian K=C3=B6nig wrote:
> On 7/7/26 08:56, Thomas Hellstr=C3=B6m wrote:
> > On Mon, 2026-07-06 at 20:23 +0200, Christian K=C3=B6nig wrote:
> > > On 7/6/26 19:01, Thomas Hellstr=C3=B6m wrote:
> ...
> > >=20
> > > Well, I clearly rejected the idea to wait for the delayed delete
> > > worker because that can cause deadlocks no matter how we do it.
> > >=20
> > > The only possibility I see is to grab a reference on the next
> > > busy
> > > fence and wait for that to signal.
> > >=20
> > > But that approach still leaves a window open where the cleanup
> > > worker
> > > has not yet cleaned up the resource before we try to allocate a
> > > new
> > > one.
> > >=20
> > > The only two possibilities I see to close that window are:
> > > 1. Resurrect the GEM object.
> > > 2. Keep a reference to the GEM object while it is on the LRU.
> > >=20
> > > I would really like to do #2 instead, but that requires that we
> > > distinct between GEM object referenze and backing store
> > > reference.
> > >=20
> > > The GEM object does have some kind of backing store reference
> > > with
> > > the handle_count field, but that unfortunately doesn't have the
> > > right
> > > semantic (e.g. only goes from 0->1 when you actually create a
> > > handle
> > > etc..).
> >=20
> > I think putting a struct completion + refcount on the TTM resource
> > would work. Or a much simpler variant, wait for anyone to release
> > something on the resource manager in question, (although the
> > simpler
> > variant would be harder to debug if a deadlock occured).
> >=20
> > Both of these would probably need to come with lockdep annotation
> > so
> > that we could annotate the critical sections from ttm_bo_fini() to
> > resource_free, similar to the dma-fence signalling annotation.
> >=20
> > At this point, following that previous discussion we know that
> > imported
> > dma-bufs are an exception because we grab the shared dma-resv to
> > release the attachment. So until we add a way to avoid that in the
> > dma-
> > buf code, we need to wake / signal completion before we grab that
> > lock.
> > Not a big deal because imported bos will not matter for local
> > reclaim
> > anyway.
>=20
> The problem is that locking the dma_resv object for release is
> mandatory not only for proper DMA-buf import handling but for tons of
> other use cases as well. In other words DMA-buf imports, page tables,
> per process buffers who use the same dma_resv object as the root PD
> etc...
>=20
> By now we I don't think we can't avoid locking the dma_resv object in
> the delete path, so a completeion event or any other method which
> blocks for resource cleanup without deadlock detection won't work as
> far as I can see.

So in the TTM code itself we have only trylocks, so that works. For the
other ones, trylocking the individualized resv in release_notify() or
delete_mem_notify() should cover all / most cases except the dma-buf
one? xe is doing exactly that. For imported dma-bufs it might even
possible to release the resource before cleaning up the bo attachment.

One problem remains for shrinkers, though, The memory allocation in
individualization becomes a problem. We'd either need to annotate those
allocations with PF_MEMALLOC flags or skip shrinking zombies.

>=20
> The only way forward seems to be to lock the ww_mutex with deadlock
> avoidance handling and that in turn needs to make sure that the
> ww_mutex doesn't go away until we eventually have bubbled up the
> error to the driver and the drm_exec object had the chance to lock
> the offending ww_mutex before anything else.
>=20
> > > > > > I fully support removing the ttm refcount, but not if it
> > > > > > means
> > > > > > resurrecting the gem refcount.
> > > > > >=20
> > > > > > If we want to sidestep that problem, in favour of getting
> > > > > > the
> > > > > > proposed
> > > > > > locking functionality in and future proof it, I suggest
> > > > > > using
> > > > > >=20
> > > > > > https://lore.kernel.org/all/20260605112700.181040-1-thomas.hell=
strom@linux.intel.com/
> > > > > >=20
> > > > > > And rebase this series on that. This means we can use the
> > > > > > ttm
> > > > > > refcount
> > > > > > for the transaction refcounting, and also that if we add a
> > > > > > dma-
> > > > > > buf
> > > > > > map
> > > > > > interface with a dma_resv_txn_obj, we could use that to
> > > > > > also
> > > > > > have
> > > > > > exhaustive eviction that originates from a dma_buf map.
> > > > >=20
> > > > > I don't think that this is a good idea. It just adds another
> > > > > layer of
> > > > > abstraction and doesn't solve the problem in any way
> > > > > possible.
> > > >=20
> > > > This comment confuses me. Exactly what problem isn't solved by
> > > > this,
> > > > and which of the stated benefits/use-cases in the cover-letter
> > > > do
> > > > you
> > > > think aren't worthwhile?
> > >=20
> > > Of course could the drm_exec object work with different reference
> > > counters, but as far as I can see that just complicates the
> > > situation
> > > and again creates a TTM specific solutions which I clearly want
> > > to
> > > avoid.
> > >=20
> > > I would rather go with the resurrection approach instead, that
> > > has
> > > less potential for problem I think.
> > >=20
> > > Alaternatively we could re-work the whole GEM refcount/GEM handle
> > > count/TTM refcount mess, but that has even more potential to
> > > break.
> >=20
> > I think looking forward to a "final" solution we're happy with, we
> > would have removed the TTM refcount and found a way to deal with
> > zombie
> > resources by finding something to wait for.
>=20
> We should probably nail down the "final" solution now, it's just that
> way to many ugly workarounds arounds have been proposed so far and I
> completely agree that resuccertion of zombies is just another one.
>=20
> Just a random idea we haven't discussed so far: What about making the
> ww_mutex ref counted?
>=20
> There are basically just three users in the kernel for the ww_mutex,
> so that shouldn't be to much trouble.
>=20
> > I'm also convinced that we want apps with shared bos to fully
> > participate so that a process trying to validate / map a shared bo
> > doesn't get killed because a trylock-driven eviction failed.
>=20
> I might not fully understand that, but if you mean that applications
> should be able to use all resources even if those resources has just
> recently been released than I'm all with you.
>=20
> >=20
> > Since it's a layer violation to pass a drm_exec in an augmented
> > dma-buf
> > map we will be needing something at the dma-buf level to handle
> > that,
> > and given that, it also makes sense to base the eviction mechanism
> > on
> > it.
>=20
> Well I disagree. The DMA-buf invalidation notification intentionally
> doesn't have a ww_acquire_ctx.
>=20
> Background is that when this is called exporters have often already
> passed the point of no return and the importers just *must* act on
> the request and can't say 'Na, sorry I can't take the locks I need'.

I'm not referring to the invalidation. I'm thinking of the following
sequence:

xe_bo_validate()       // Importer. Finds it's an evicted dma-buf.
dma_buf_map();
xe_bo_validate();      // Exporter. Short on memory.
ttm_bo_evict();        // Exporter wants to evict but lacks a ticket
		       // and is limited to trylock and loses.

The remedy is to optionally pass a ticket in an augmented
dma_buf_map(), but then it can't be a drm_exec. dma_buf invalidation
stays as it is.

>=20
> > The ability to reuse the TTM refcount for now would just be a way
> > to
> > separate out the zombie handling from this series until we can do
> > it
> > properly. After all this series is about enabling sleeping ww
> > locks.
>=20
> Well the problem is that I don't see how it should work with the TTM
> refcount.
>=20
> This basically means that for each lock operation has an ops table
> with put/get, in that case it would just easier to make the ww_mutex
> ref counted.

Each object type embedding a ww_mutex needs an ops table pointed to by
the lock operation. But get() is not needed, only put(). (See the RFC),

If we refcount the ww mutex, instead it would need a separate
destructor for each object type. We'd save a pointer chase on put but
need extra care on object creation and destruction, so I'm not sure
it's easier.

/Thomas


>=20
> Regards,
> Christian.
>=20
> >=20
> > Thanks,
> > Thomas
> >=20
> >=20
> > >=20
> > > Regards,
> > > Christian.
> > >=20
> > >=20
> > > >=20
> > > > Also for reference: (Section at the end and follow-up messages)
> > > > https://lore.kernel.org/all/3716d43462188590743060755b37e3d060f7600=
f.camel@linux.intel.com/
> > > >=20
> > > > Thanks,
> > > > Thomas
> > > >=20
> > > >=20
> > > > > Regards,
> > > > > Christian.
> > > > >=20
> > > > > >=20
> > > > > > /Thomas
> > > > > >=20
> > > > > > >=20
> > > > > > > Signed-off-by: tChristian K=C3=B6nig
> > > > > > > <christian.koenig@amd.com>
> > > > > > > Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
> > > > > > > ---
> > > > > > > =C2=A0drivers/gpu/drm/i915/gem/i915_gem_ttm.c=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 35
> > > > > > > +++--
> > > > > > > -
> > > > > > > =C2=A0drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c |=C2=
=A0=C2=A0 8
> > > > > > > +-
> > > > > > > =C2=A0drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c=C2=A0=C2=
=A0=C2=A0 |=C2=A0=C2=A0 2 -
> > > > > > > =C2=A0drivers/gpu/drm/ttm/ttm_bo.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 | 135
> > > > > > > +++++++++++--
> > > > > > > ----------
> > > > > > > =C2=A0drivers/gpu/drm/ttm/ttm_bo_internal.h=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 17
> > > > > > > ++-
> > > > > > > =C2=A0drivers/gpu/drm/ttm/ttm_bo_util.c=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=
=A0 15
> > > > > > > ++-
> > > > > > > =C2=A0drivers/gpu/drm/xe/xe_bo.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 2
> > > > > > > +-
> > > > > > > =C2=A0include/drm/ttm/ttm_bo.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 9 -
> > > > > > > -
> > > > > > > =C2=A08 files changed, 111 insertions(+), 112 deletions(-)
> > > > > > >=20
> > > > > > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > > > > > b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > > > > > index df3fcc2b1248e..642296602de69 100644
> > > > > > > --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > > > > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > > > > > @@ -939,7 +939,7 @@ void i915_ttm_adjust_lru(struct
> > > > > > > drm_i915_gem_object *obj)
> > > > > > > =C2=A0	 * Don't manipulate the TTM LRUs while in TTM bo
> > > > > > > destruction.
> > > > > > > =C2=A0	 * We're called through
> > > > > > > i915_ttm_delete_mem_notify().
> > > > > > > =C2=A0	 */
> > > > > > > -	if (!kref_read(&bo->kref))
> > > > > > > +	if (!kref_read(&bo->base.refcount))
> > > > > > > =C2=A0		return;
> > > > > > > =C2=A0
> > > > > > > =C2=A0	/*
> > > > > > > @@ -957,30 +957,21 @@ void i915_ttm_adjust_lru(struct
> > > > > > > drm_i915_gem_object *obj)
> > > > > > > =C2=A0	 *
> > > > > > > =C2=A0	 * TODO: consider maybe also bumping the
> > > > > > > shrinker
> > > > > > > list
> > > > > > > here
> > > > > > > when we have
> > > > > > > =C2=A0	 * already unpinned it, which should give us
> > > > > > > something
> > > > > > > more
> > > > > > > like an LRU.
> > > > > > > -	 *
> > > > > > > -	 * TODO: There is a small window of opportunity
> > > > > > > for
> > > > > > > this
> > > > > > > function to
> > > > > > > -	 * get called from eviction after we've dropped
> > > > > > > the
> > > > > > > last
> > > > > > > GEM
> > > > > > > refcount,
> > > > > > > -	 * but before the TTM deleted flag is set on the
> > > > > > > object.
> > > > > > > Avoid
> > > > > > > -	 * adjusting the shrinker list in such cases,
> > > > > > > since
> > > > > > > the
> > > > > > > object is
> > > > > > > -	 * not available to the shrinker anyway due to
> > > > > > > its
> > > > > > > zero
> > > > > > > refcount.
> > > > > > > -	 * To fix this properly we should move to a TTM
> > > > > > > shrinker
> > > > > > > LRU
> > > > > > > list for
> > > > > > > -	 * these objects.
> > > > > > > =C2=A0	 */
> > > > > > > -	if (kref_get_unless_zero(&obj->base.refcount)) {
> > > > > > > -		if (shrinkable !=3D obj-
> > > > > > > >mm.ttm_shrinkable) {
> > > > > > > -			if (shrinkable) {
> > > > > > > -				if (obj->mm.madv =3D=3D
> > > > > > > I915_MADV_WILLNEED)
> > > > > > > -
> > > > > > > 					__i915_gem_objec
> > > > > > > t_ma
> > > > > > > ke_s
> > > > > > > hrinkable(obj);
> > > > > > > -				else
> > > > > > > -
> > > > > > > 					__i915_gem_objec
> > > > > > > t_ma
> > > > > > > ke_p
> > > > > > > urgeable(obj);
> > > > > > > -			} else {
> > > > > > > -
> > > > > > > 				i915_gem_object_make_uns
> > > > > > > hrin
> > > > > > > kabl
> > > > > > > e(obj);
> > > > > > > -			}
> > > > > > > -
> > > > > > > -			obj->mm.ttm_shrinkable =3D
> > > > > > > shrinkable;
> > > > > > > +	i915_gem_object_get(obj);
> > > > > > > +	if (shrinkable !=3D obj->mm.ttm_shrinkable) {
> > > > > > > +		if (shrinkable) {
> > > > > > > +			if (obj->mm.madv =3D=3D
> > > > > > > I915_MADV_WILLNEED)
> > > > > > > +				__i915_gem_object_make_s
> > > > > > > hrin
> > > > > > > kabl
> > > > > > > e(ob
> > > > > > > j);
> > > > > > > +			else
> > > > > > > +				__i915_gem_object_make_p
> > > > > > > urge
> > > > > > > able
> > > > > > > (obj
> > > > > > > );
> > > > > > > +		} else {
> > > > > > > +			i915_gem_object_make_unshrinkabl
> > > > > > > e(ob
> > > > > > > j);
> > > > > > > =C2=A0		}
> > > > > > > -		i915_gem_object_put(obj);
> > > > > > > +
> > > > > > > +		obj->mm.ttm_shrinkable =3D shrinkable;
> > > > > > > =C2=A0	}
> > > > > > > +	i915_gem_object_put(obj);
> > > > > > > =C2=A0
> > > > > > > =C2=A0	/*
> > > > > > > =C2=A0	 * Put on the correct LRU list depending on the
> > > > > > > MADV
> > > > > > > status
> > > > > > > diff --git
> > > > > > > a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> > > > > > > b/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> > > > > > > index 56ad8ef325840..904cb4da6c9b3 100644
> > > > > > > --- a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> > > > > > > +++ b/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> > > > > > > @@ -127,7 +127,7 @@ static void
> > > > > > > ttm_bo_init_reserved_sys_man(struct
> > > > > > > kunit *test)
> > > > > > > =C2=A0	dma_resv_unlock(bo->base.resv);
> > > > > > > =C2=A0
> > > > > > > =C2=A0	KUNIT_EXPECT_EQ(test, err, 0);
> > > > > > > -	KUNIT_EXPECT_EQ(test, kref_read(&bo->kref), 1);
> > > > > > > +	KUNIT_EXPECT_EQ(test, kref_read(&bo-
> > > > > > > >base.refcount),
> > > > > > > 1);
> > > > > > > =C2=A0	KUNIT_EXPECT_PTR_EQ(test, bo->bdev, priv-
> > > > > > > >ttm_dev);
> > > > > > > =C2=A0	KUNIT_EXPECT_EQ(test, bo->type, bo_type);
> > > > > > > =C2=A0	KUNIT_EXPECT_EQ(test, bo->page_alignment,
> > > > > > > PAGE_SIZE);
> > > > > > > @@ -176,7 +176,7 @@ static void
> > > > > > > ttm_bo_init_reserved_mock_man(struct
> > > > > > > kunit *test)
> > > > > > > =C2=A0	dma_resv_unlock(bo->base.resv);
> > > > > > > =C2=A0
> > > > > > > =C2=A0	KUNIT_EXPECT_EQ(test, err, 0);
> > > > > > > -	KUNIT_EXPECT_EQ(test, kref_read(&bo->kref), 1);
> > > > > > > +	KUNIT_EXPECT_EQ(test, kref_read(&bo-
> > > > > > > >base.refcount),
> > > > > > > 1);
> > > > > > > =C2=A0	KUNIT_EXPECT_PTR_EQ(test, bo->bdev, priv-
> > > > > > > >ttm_dev);
> > > > > > > =C2=A0	KUNIT_EXPECT_EQ(test, bo->type, bo_type);
> > > > > > > =C2=A0	KUNIT_EXPECT_EQ(test, ctx.bytes_moved, size);
> > > > > > > @@ -969,6 +969,8 @@ static void
> > > > > > > ttm_bo_validate_allowed_only_evict(struct kunit *test)
> > > > > > > =C2=A0	ttm_mock_manager_fini(priv->ttm_dev,
> > > > > > > mem_multihop);
> > > > > > > =C2=A0}
> > > > > > > =C2=A0
> > > > > > > +extern const struct drm_gem_object_funcs
> > > > > > > ttm_deleted_object_funcs;
> > > > > > > +
> > > > > > > =C2=A0static void ttm_bo_validate_deleted_evict(struct kunit
> > > > > > > *test)
> > > > > > > =C2=A0{
> > > > > > > =C2=A0	struct ttm_operation_ctx ctx_init =3D { },
> > > > > > > ctx_val=C2=A0 =3D
> > > > > > > { };
> > > > > > > @@ -999,7 +1001,7 @@ static void
> > > > > > > ttm_bo_validate_deleted_evict(struct
> > > > > > > kunit *test)
> > > > > > > =C2=A0	KUNIT_EXPECT_EQ(test,
> > > > > > > ttm_resource_manager_usage(man),
> > > > > > > big);
> > > > > > > =C2=A0
> > > > > > > =C2=A0	dma_resv_unlock(bo_big->base.resv);
> > > > > > > -	bo_big->deleted =3D true;
> > > > > > > +	bo_big->base.funcs =3D &ttm_deleted_object_funcs;
> > > > > > > =C2=A0
> > > > > > > =C2=A0	bo_small =3D ttm_bo_kunit_init(test, test->priv,
> > > > > > > small,
> > > > > > > NULL);
> > > > > > > =C2=A0	bo_small->type =3D bo_type;
> > > > > > > diff --git
> > > > > > > a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> > > > > > > b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> > > > > > > index 5cfe8f3f80d75..b7ab19e0e4b2b 100644
> > > > > > > --- a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> > > > > > > +++ b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> > > > > > > @@ -189,8 +189,6 @@ struct ttm_buffer_object
> > > > > > > *ttm_bo_kunit_init(struct kunit *test,
> > > > > > > =C2=A0	bo->bdev =3D devs->ttm_dev;
> > > > > > > =C2=A0	bo->destroy =3D dummy_ttm_bo_destroy;
> > > > > > > =C2=A0
> > > > > > > -	kref_init(&bo->kref);
> > > > > > > -
> > > > > > > =C2=A0	return bo;
> > > > > > > =C2=A0}
> > > > > > > =C2=A0EXPORT_SYMBOL_GPL(ttm_bo_kunit_init);
> > > > > > > diff --git a/drivers/gpu/drm/ttm/ttm_bo.c
> > > > > > > b/drivers/gpu/drm/ttm/ttm_bo.c
> > > > > > > index 3980f376e3ba4..2b470c1746f60 100644
> > > > > > > --- a/drivers/gpu/drm/ttm/ttm_bo.c
> > > > > > > +++ b/drivers/gpu/drm/ttm/ttm_bo.c
> > > > > > > @@ -246,88 +246,84 @@ static void
> > > > > > > ttm_bo_delayed_delete(struct
> > > > > > > work_struct *work)
> > > > > > > =C2=A0	ttm_bo_put(bo);
> > > > > > > =C2=A0}
> > > > > > > =C2=A0
> > > > > > > -static void ttm_bo_release(struct kref *kref)
> > > > > > > +/*
> > > > > > > + * All other callbacks should never ever be called on a
> > > > > > > deleted
> > > > > > > TTM
> > > > > > > object.
> > > > > > > + */
> > > > > > > +const struct drm_gem_object_funcs
> > > > > > > ttm_deleted_object_funcs =3D
> > > > > > > {
> > > > > > > +	.free =3D ttm_bo_free
> > > > > > > +};
> > > > > > > +EXPORT_SYMBOL_FOR_TESTS_ONLY(ttm_deleted_object_funcs);
> > > > > > > +
> > > > > > > +/* Returns true if the BO is about to get deleted */
> > > > > > > +static bool ttm_bo_is_zombie(struct ttm_buffer_object
> > > > > > > *bo)
> > > > > > > +{
> > > > > > > +	return bo->base.funcs =3D=3D
> > > > > > > &ttm_deleted_object_funcs;
> > > > > > > +}
> > > > > > > +
> > > > > > > +void ttm_bo_fini(struct ttm_buffer_object *bo)
> > > > > > > =C2=A0{
> > > > > > > -	struct ttm_buffer_object *bo =3D
> > > > > > > -	=C2=A0=C2=A0=C2=A0 container_of(kref, struct ttm_buffer_obj=
ect,
> > > > > > > kref);
> > > > > > > =C2=A0	struct ttm_device *bdev =3D bo->bdev;
> > > > > > > =C2=A0	int ret;
> > > > > > > =C2=A0
> > > > > > > =C2=A0	WARN_ON_ONCE(bo->pin_count);
> > > > > > > =C2=A0	WARN_ON_ONCE(bo->bulk_move);
> > > > > > > =C2=A0
> > > > > > > -	if (!bo->deleted) {
> > > > > > > -		ret =3D ttm_bo_individualize_resv(bo);
> > > > > > > -		if (ret) {
> > > > > > > -			/* Last resort, if we fail to
> > > > > > > allocate
> > > > > > > memory for the
> > > > > > > -			 * fences block for the BO to
> > > > > > > become
> > > > > > > idle
> > > > > > > -			 */
> > > > > > > -			dma_resv_wait_timeout(bo-
> > > > > > > >base.resv,
> > > > > > > -					=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
> > > > > > > DMA_RESV_USAGE_BOOKKEEP, false,
> > > > > > > -					=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 30 * HZ);
> > > > > > > -		}
> > > > > > > +	ret =3D ttm_bo_individualize_resv(bo);
> > > > > > > +	if (ret) {
> > > > > > > +		/* Last resort, if we fail to allocate
> > > > > > > memory
> > > > > > > for
> > > > > > > the
> > > > > > > +		 * fences block for the BO to become
> > > > > > > idle
> > > > > > > +		 */
> > > > > > > +		dma_resv_wait_timeout(bo->base.resv,
> > > > > > > DMA_RESV_USAGE_BOOKKEEP,
> > > > > > > +				=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 false, 30 * HZ);
> > > > > > > +	}
> > > > > > > =C2=A0
> > > > > > > -		if (bdev->funcs->release_notify)
> > > > > > > -			bdev->funcs->release_notify(bo);
> > > > > > > +	if (bo->bdev->funcs->release_notify)
> > > > > > > +		bo->bdev->funcs->release_notify(bo);
> > > > > > > =C2=A0
> > > > > > > -		drm_vma_offset_remove(bdev->vma_manager,
> > > > > > > &bo-
> > > > > > > > base.vma_node);
> > > > > > > -		ttm_mem_io_free(bdev, bo->resource);
> > > > > > > +	drm_vma_offset_remove(bdev->vma_manager, &bo-
> > > > > > > > base.vma_node);
> > > > > > > +	ttm_mem_io_free(bdev, bo->resource);
> > > > > > > =C2=A0
> > > > > > > -		if (!dma_resv_test_signaled(&bo-
> > > > > > > >base._resv,
> > > > > > > -					=C2=A0=C2=A0=C2=A0
> > > > > > > DMA_RESV_USAGE_BOOKKEEP)
> > > > > > > > >=20
> > > > > > > -		=C2=A0=C2=A0=C2=A0 (want_init_on_free() && (bo->ttm !=3D
> > > > > > > NULL))
> > > > > > > > >=20
> > > > > > > -		=C2=A0=C2=A0=C2=A0 bo->type =3D=3D ttm_bo_type_sg ||
> > > > > > > -		=C2=A0=C2=A0=C2=A0 !dma_resv_trylock(bo->base.resv)) {
> > > > > > > -			/* The BO is not idle, resurrect
> > > > > > > it
> > > > > > > for
> > > > > > > delayed destroy */
> > > > > > > -			ttm_bo_flush_all_fences(bo);
> > > > > > > -			bo->deleted =3D true;
> > > > > > > +	if (!dma_resv_test_signaled(&bo->base._resv,
> > > > > > > DMA_RESV_USAGE_BOOKKEEP) ||
> > > > > > > +	=C2=A0=C2=A0=C2=A0 (want_init_on_free() && (bo->ttm !=3D NU=
LL))
> > > > > > > ||
> > > > > > > +	=C2=A0=C2=A0=C2=A0 bo->type =3D=3D ttm_bo_type_sg ||
> > > > > > > +	=C2=A0=C2=A0=C2=A0 !dma_resv_trylock(bo->base.resv)) {
> > > > > > > +		/* The BO is not idle, resurrect it for
> > > > > > > delayed
> > > > > > > destroy */
> > > > > > > +		ttm_bo_flush_all_fences(bo);
> > > > > > > =C2=A0
> > > > > > > -			spin_lock(&bdev->lru_lock);
> > > > > > > -
> > > > > > > -			/*
> > > > > > > -			 * Make pinned bos immediately
> > > > > > > available
> > > > > > > to
> > > > > > > -			 * shrinkers, now that they are
> > > > > > > queued
> > > > > > > for
> > > > > > > -			 * destruction.
> > > > > > > -			 *
> > > > > > > -			 * FIXME: QXL is triggering
> > > > > > > this.
> > > > > > > Can be
> > > > > > > removed when the
> > > > > > > -			 * driver is fixed.
> > > > > > > -			 */
> > > > > > > -			if (bo->pin_count) {
> > > > > > > -				bo->pin_count =3D 0;
> > > > > > > -
> > > > > > > 				ttm_resource_move_to_lru
> > > > > > > _tai
> > > > > > > l(bo-
> > > > > > > > resource);
> > > > > > > -			}
> > > > > > > +		spin_lock(&bo->bdev->lru_lock);
> > > > > > > =C2=A0
> > > > > > > -			kref_init(&bo->kref);
> > > > > > > -			spin_unlock(&bdev->lru_lock);
> > > > > > > +		/*
> > > > > > > +		 * Make pinned bos immediately available
> > > > > > > to
> > > > > > > +		 * shrinkers, now that they are queued
> > > > > > > for
> > > > > > > +		 * destruction.
> > > > > > > +		 *
> > > > > > > +		 * FIXME: QXL is triggering this. Can be
> > > > > > > removed
> > > > > > > when the
> > > > > > > +		 * driver is fixed.
> > > > > > > +		 */
> > > > > > > +		if (bo->pin_count) {
> > > > > > > +			bo->pin_count =3D 0;
> > > > > > > +			ttm_resource_move_to_lru_tail(bo
> > > > > > > -
> > > > > > > > resource);
> > > > > > > +		}
> > > > > > > =C2=A0
> > > > > > > -			INIT_WORK(&bo->delayed_delete,
> > > > > > > ttm_bo_delayed_delete);
> > > > > > > +		kref_init(&bo->base.refcount);
> > > > > > > +		bo->base.funcs =3D
> > > > > > > &ttm_deleted_object_funcs;
> > > > > > > +		spin_unlock(&bo->bdev->lru_lock);
> > > > > > > =C2=A0
> > > > > > > -			/* Schedule the worker on the
> > > > > > > closest
> > > > > > > NUMA
> > > > > > > node. This
> > > > > > > -			 * improves performance since
> > > > > > > system
> > > > > > > memory
> > > > > > > might be
> > > > > > > -			 * cleared on free and that is
> > > > > > > best
> > > > > > > done
> > > > > > > on
> > > > > > > a CPU core
> > > > > > > -			 * close to it.
> > > > > > > -			 */
> > > > > > > -			queue_work_node(bdev->pool.nid,
> > > > > > > bdev-
> > > > > > > > wq,
> > > > > > > &bo->delayed_delete);
> > > > > > > -			return;
> > > > > > > -		}
> > > > > > > +		INIT_WORK(&bo->delayed_delete,
> > > > > > > ttm_bo_delayed_delete);
> > > > > > > =C2=A0
> > > > > > > +		/* Schedule the worker on the closest
> > > > > > > NUMA
> > > > > > > node.
> > > > > > > This
> > > > > > > +		 * improves performance since system
> > > > > > > memory
> > > > > > > might be
> > > > > > > +		 * cleared on free and that is best done
> > > > > > > on
> > > > > > > a
> > > > > > > CPU
> > > > > > > core
> > > > > > > +		 * close to it.
> > > > > > > +		 */
> > > > > > > +		queue_work_node(bdev->pool.nid, bdev-
> > > > > > > >wq,
> > > > > > > &bo-
> > > > > > > > delayed_delete);
> > > > > > > +	} else {
> > > > > > > =C2=A0		ttm_bo_cleanup_memtype_use(bo);
> > > > > > > =C2=A0		dma_resv_unlock(bo->base.resv);
> > > > > > > -	}
> > > > > > > =C2=A0
> > > > > > > -	atomic_dec(&ttm_glob.bo_count);
> > > > > > > -	bo->destroy(bo);
> > > > > > > -}
> > > > > > > -
> > > > > > > -/* TODO: remove! */
> > > > > > > -void ttm_bo_put(struct ttm_buffer_object *bo)
> > > > > > > -{
> > > > > > > -	kref_put(&bo->kref, ttm_bo_release);
> > > > > > > -}
> > > > > > > -
> > > > > > > -void ttm_bo_fini(struct ttm_buffer_object *bo)
> > > > > > > -{
> > > > > > > -	ttm_bo_put(bo);
> > > > > > > +		atomic_dec(&ttm_glob.bo_count);
> > > > > > > +		bo->destroy(bo);
> > > > > > > +	}
> > > > > > > =C2=A0}
> > > > > > > =C2=A0EXPORT_SYMBOL(ttm_bo_fini);
> > > > > > > =C2=A0
> > > > > > > @@ -470,7 +466,7 @@ int ttm_bo_evict_first(struct
> > > > > > > ttm_device
> > > > > > > *bdev,
> > > > > > > struct ttm_resource_manager *man
> > > > > > > =C2=A0	if (!bo->resource || bo->resource->mem_type !=3D
> > > > > > > mem_type)
> > > > > > > =C2=A0		goto out_bo_moved;
> > > > > > > =C2=A0
> > > > > > > -	if (bo->deleted) {
> > > > > > > +	if (ttm_bo_is_zombie(bo)) {
> > > > > > > =C2=A0		ret =3D ttm_bo_wait_ctx(bo, ctx);
> > > > > > > =C2=A0		if (!ret)
> > > > > > > =C2=A0			ttm_bo_cleanup_memtype_use(bo);
> > > > > > > @@ -524,7 +520,7 @@ static s64 ttm_bo_evict_cb(struct
> > > > > > > ttm_lru_walk
> > > > > > > *walk, struct ttm_buffer_object *
> > > > > > > =C2=A0	if (bo->pin_count || !bo->bdev->funcs-
> > > > > > > > eviction_valuable(bo,
> > > > > > > evict_walk->place))
> > > > > > > =C2=A0		return 0;
> > > > > > > =C2=A0
> > > > > > > -	if (bo->deleted) {
> > > > > > > +	if (ttm_bo_is_zombie(bo)) {
> > > > > > > =C2=A0		lret =3D ttm_bo_wait_ctx(bo, walk-
> > > > > > > >arg.ctx);
> > > > > > > =C2=A0		if (!lret)
> > > > > > > =C2=A0			ttm_bo_cleanup_memtype_use(bo);
> > > > > > > @@ -624,7 +620,6 @@ static int ttm_bo_evict_alloc(struct
> > > > > > > ttm_device
> > > > > > > *bdev,
> > > > > > > =C2=A0void ttm_bo_pin(struct ttm_buffer_object *bo)
> > > > > > > =C2=A0{
> > > > > > > =C2=A0	dma_resv_assert_held(bo->base.resv);
> > > > > > > -	WARN_ON_ONCE(!kref_read(&bo->kref));
> > > > > > > =C2=A0	spin_lock(&bo->bdev->lru_lock);
> > > > > > > =C2=A0	if (bo->resource)
> > > > > > > =C2=A0		ttm_resource_del_bulk_move(bo->resource,
> > > > > > > bo);
> > > > > > > @@ -643,7 +638,6 @@ EXPORT_SYMBOL(ttm_bo_pin);
> > > > > > > =C2=A0void ttm_bo_unpin(struct ttm_buffer_object *bo)
> > > > > > > =C2=A0{
> > > > > > > =C2=A0	dma_resv_assert_held(bo->base.resv);
> > > > > > > -	WARN_ON_ONCE(!kref_read(&bo->kref));
> > > > > > > =C2=A0	if (WARN_ON_ONCE(!bo->pin_count))
> > > > > > > =C2=A0		return;
> > > > > > > =C2=A0
> > > > > > > @@ -934,7 +928,6 @@ int ttm_bo_init_reserved(struct
> > > > > > > ttm_device
> > > > > > > *bdev,
> > > > > > > struct ttm_buffer_object *bo,
> > > > > > > =C2=A0{
> > > > > > > =C2=A0	int ret;
> > > > > > > =C2=A0
> > > > > > > -	kref_init(&bo->kref);
> > > > > > > =C2=A0	bo->bdev =3D bdev;
> > > > > > > =C2=A0	bo->type =3D type;
> > > > > > > =C2=A0	bo->page_alignment =3D alignment;
> > > > > > > @@ -1131,8 +1124,8 @@ ttm_bo_swapout_cb(struct
> > > > > > > ttm_lru_walk
> > > > > > > *walk,
> > > > > > > struct ttm_buffer_object *bo)
> > > > > > > =C2=A0		goto out;
> > > > > > > =C2=A0	}
> > > > > > > =C2=A0
> > > > > > > -	if (bo->deleted) {
> > > > > > > -		pgoff_t num_pages =3D tt->num_pages;
> > > > > > > +	if (ttm_bo_is_zombie(bo)) {
> > > > > > > +		pgoff_t num_pages =3D bo->ttm->num_pages;
> > > > > > > =C2=A0
> > > > > > > =C2=A0		ret =3D ttm_bo_wait_ctx(bo, ctx);
> > > > > > > =C2=A0		if (ret)
> > > > > > > diff --git a/drivers/gpu/drm/ttm/ttm_bo_internal.h
> > > > > > > b/drivers/gpu/drm/ttm/ttm_bo_internal.h
> > > > > > > index e0d48eac74b03..ded2a47be0bcb 100644
> > > > > > > --- a/drivers/gpu/drm/ttm/ttm_bo_internal.h
> > > > > > > +++ b/drivers/gpu/drm/ttm/ttm_bo_internal.h
> > > > > > > @@ -27,6 +27,14 @@
> > > > > > > =C2=A0
> > > > > > > =C2=A0#include <drm/ttm/ttm_bo.h>
> > > > > > > =C2=A0
> > > > > > > +static inline void ttm_bo_free(struct drm_gem_object
> > > > > > > *gobj)
> > > > > > > +{
> > > > > > > +	struct ttm_buffer_object *bo =3D
> > > > > > > container_of(gobj,
> > > > > > > typeof(*bo), base);
> > > > > > > +
> > > > > > > +	atomic_dec(&ttm_glob.bo_count);
> > > > > > > +	bo->destroy(bo);
> > > > > > > +}
> > > > > > > +
> > > > > > > =C2=A0/**
> > > > > > > =C2=A0 * ttm_bo_get - reference a struct ttm_buffer_object
> > > > > > > =C2=A0 *
> > > > > > > @@ -34,7 +42,7 @@
> > > > > > > =C2=A0 */
> > > > > > > =C2=A0static inline void ttm_bo_get(struct ttm_buffer_object
> > > > > > > *bo)
> > > > > > > =C2=A0{
> > > > > > > -	kref_get(&bo->kref);
> > > > > > > +	drm_gem_object_get(&bo->base);
> > > > > > > =C2=A0}
> > > > > > > =C2=A0
> > > > > > > =C2=A0/**
> > > > > > > @@ -50,11 +58,14 @@ static inline void ttm_bo_get(struct
> > > > > > > ttm_buffer_object *bo)
> > > > > > > =C2=A0static inline __must_check struct ttm_buffer_object *
> > > > > > > =C2=A0ttm_bo_get_unless_zero(struct ttm_buffer_object *bo)
> > > > > > > =C2=A0{
> > > > > > > -	if (!kref_get_unless_zero(&bo->kref))
> > > > > > > +	if (!kref_get_unless_zero(&bo->base.refcount))
> > > > > > > =C2=A0		return NULL;
> > > > > > > =C2=A0	return bo;
> > > > > > > =C2=A0}
> > > > > > > =C2=A0
> > > > > > > -void ttm_bo_put(struct ttm_buffer_object *bo);
> > > > > > > +static inline void ttm_bo_put(struct ttm_buffer_object
> > > > > > > *bo)
> > > > > > > +{
> > > > > > > +	drm_gem_object_put(&bo->base);
> > > > > > > +}
> > > > > > > =C2=A0
> > > > > > > =C2=A0#endif
> > > > > > > diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c
> > > > > > > b/drivers/gpu/drm/ttm/ttm_bo_util.c
> > > > > > > index 3e3c201a02226..7ed085adf1c9b 100644
> > > > > > > --- a/drivers/gpu/drm/ttm/ttm_bo_util.c
> > > > > > > +++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
> > > > > > > @@ -41,6 +41,18 @@
> > > > > > > =C2=A0
> > > > > > > =C2=A0#include "ttm_bo_internal.h"
> > > > > > > =C2=A0
> > > > > > > +static void ttm_transfer_object_free(struct
> > > > > > > drm_gem_object
> > > > > > > *obj)
> > > > > > > +{
> > > > > > > +	struct ttm_buffer_object *bo =3D
> > > > > > > +		container_of(obj, struct
> > > > > > > ttm_buffer_object,
> > > > > > > base);
> > > > > > > +
> > > > > > > +	ttm_bo_fini(bo);
> > > > > > > +}
> > > > > > > +
> > > > > > > +const struct drm_gem_object_funcs
> > > > > > > ttm_transfer_object_funcs
> > > > > > > =3D {
> > > > > > > +	.free =3D ttm_transfer_object_free,
> > > > > > > +};
> > > > > > > +
> > > > > > > =C2=A0struct ttm_transfer_obj {
> > > > > > > =C2=A0	struct ttm_buffer_object base;
> > > > > > > =C2=A0	struct ttm_buffer_object *bo;
> > > > > > > @@ -247,7 +259,8 @@ static int
> > > > > > > ttm_buffer_object_transfer(struct
> > > > > > > ttm_buffer_object *bo,
> > > > > > > =C2=A0	atomic_inc(&ttm_glob.bo_count);
> > > > > > > =C2=A0	drm_vma_node_reset(&fbo->base.base.vma_node);
> > > > > > > =C2=A0
> > > > > > > -	kref_init(&fbo->base.kref);
> > > > > > > +	kref_init(&fbo->base.base.refcount);
> > > > > > > +	fbo->base.base.funcs =3D
> > > > > > > &ttm_transfer_object_funcs;
> > > > > > > =C2=A0	fbo->base.destroy =3D &ttm_transfered_destroy;
> > > > > > > =C2=A0	fbo->base.pin_count =3D 0;
> > > > > > > =C2=A0	if (bo->type !=3D ttm_bo_type_sg)
> > > > > > > diff --git a/drivers/gpu/drm/xe/xe_bo.c
> > > > > > > b/drivers/gpu/drm/xe/xe_bo.c
> > > > > > > index 85e6d9a0f575b..5843f850339c7 100644
> > > > > > > --- a/drivers/gpu/drm/xe/xe_bo.c
> > > > > > > +++ b/drivers/gpu/drm/xe/xe_bo.c
> > > > > > > @@ -1651,7 +1651,7 @@ static bool
> > > > > > > xe_ttm_bo_lock_in_destructor(struct
> > > > > > > ttm_buffer_object *ttm_bo)
> > > > > > > =C2=A0	struct xe_device *xe =3D ttm_to_xe_device(ttm_bo-
> > > > > > > > bdev);
> > > > > > > =C2=A0	bool locked;
> > > > > > > =C2=A0
> > > > > > > -	xe_assert(xe, !kref_read(&ttm_bo->kref));
> > > > > > > +	xe_assert(xe, !kref_read(&ttm_bo-
> > > > > > > >base.refcount));
> > > > > > > =C2=A0
> > > > > > > =C2=A0	/*
> > > > > > > =C2=A0	 * We can typically only race with TTM
> > > > > > > trylocking
> > > > > > > under
> > > > > > > the
> > > > > > > diff --git a/include/drm/ttm/ttm_bo.h
> > > > > > > b/include/drm/ttm/ttm_bo.h
> > > > > > > index 8310bc3d55f90..1eae9eea5ff32 100644
> > > > > > > --- a/include/drm/ttm/ttm_bo.h
> > > > > > > +++ b/include/drm/ttm/ttm_bo.h
> > > > > > > @@ -78,11 +78,8 @@ enum ttm_bo_type {
> > > > > > > =C2=A0 * @type: The bo type.
> > > > > > > =C2=A0 * @page_alignment: Page alignment.
> > > > > > > =C2=A0 * @destroy: Destruction function. If NULL, kfree is
> > > > > > > used.
> > > > > > > - * @kref: Reference count of this buffer object. When
> > > > > > > this
> > > > > > > refcount
> > > > > > > reaches
> > > > > > > - * zero, the object is destroyed or put on the delayed
> > > > > > > delete
> > > > > > > list.
> > > > > > > =C2=A0 * @resource: structure describing current placement.
> > > > > > > =C2=A0 * @ttm: TTM structure holding system pages.
> > > > > > > - * @deleted: True if the object is only a zombie and
> > > > > > > already
> > > > > > > deleted.
> > > > > > > =C2=A0 * @bulk_move: The bulk move object.
> > > > > > > =C2=A0 * @priority: Priority for LRU, BOs with lower priority
> > > > > > > are
> > > > > > > evicted
> > > > > > > first.
> > > > > > > =C2=A0 * @pin_count: Pin count.
> > > > > > > @@ -109,17 +106,11 @@ struct ttm_buffer_object {
> > > > > > > =C2=A0	uint32_t page_alignment;
> > > > > > > =C2=A0	void (*destroy) (struct ttm_buffer_object *);
> > > > > > > =C2=A0
> > > > > > > -	/*
> > > > > > > -	* Members not needing protection.
> > > > > > > -	*/
> > > > > > > -	struct kref kref;
> > > > > > > -
> > > > > > > =C2=A0	/*
> > > > > > > =C2=A0	 * Members protected by the bo::resv::reserved
> > > > > > > lock.
> > > > > > > =C2=A0	 */
> > > > > > > =C2=A0	struct ttm_resource *resource;
> > > > > > > =C2=A0	struct ttm_tt *ttm;
> > > > > > > -	bool deleted;
> > > > > > > =C2=A0	struct ttm_lru_bulk_move *bulk_move;
> > > > > > > =C2=A0	unsigned priority;
> > > > > > > =C2=A0	unsigned pin_count;
