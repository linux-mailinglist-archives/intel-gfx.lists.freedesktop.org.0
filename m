Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id akh/FEAITWqBtwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 16:08:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA44571C558
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 16:07:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=dNhrJahj;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3B8C10ED50;
	Tue,  7 Jul 2026 14:07:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D5C810E4CD;
 Tue,  7 Jul 2026 14:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783433275; x=1814969275;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=/9oc+Ahausvz1H0VU2Y3bNkK06Z54duVQwMbt1PH+NE=;
 b=dNhrJahjfcV+e4dZcs/1oloZcIAzcDcicl6+cZl7u+ya6Plj2UiZuDCn
 Od9IF3yALrvnueoul06NAk2Ya6UdgKqUEsTX9iVL/euJy6kVhBoPwJy9J
 eT1tgCYU57WTK+ea4ih57yKkDraI+f2xptEFVf+wUTMgrAp3+U0o6MaCd
 aq/Am54BCPuQLZS5BhSDr9glI11rnDrOAbQKMYMPguFskr6ZyFvj7Y/bc
 28/+72nVveYBXS2xNYq2bRcUjBhPg2tgknLsQ9yil90aue2cE0GpB/nBd
 KKTcjbUsAD/iAJetEtQdXkGruYhm2DvafWwhKgLEWtmvHUMyxJaeotEnZ Q==;
X-CSE-ConnectionGUID: GRz0UExfRyqJbmbMFIU82A==
X-CSE-MsgGUID: IpBS52ESQ5qDjMCOp1/7oQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11840"; a="109622507"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="109622507"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 07:07:55 -0700
X-CSE-ConnectionGUID: mKFhw+FzRSGPhRXV/LrjzA==
X-CSE-MsgGUID: P2UbQYYLRIGz5BgbIbS9MQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="250650340"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [10.245.244.199])
 ([10.245.244.199])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 07:07:50 -0700
Message-ID: <8658dbab002f82c15ade02f4501c9039d3d23d9f.camel@linux.intel.com>
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
Date: Tue, 07 Jul 2026 16:07:48 +0200
In-Reply-To: <0721f2c8-edc3-4a8e-9469-effd3a70dda3@amd.com>
References: <20260703-ttm_2_drm_exec-v1-0-43685ac1286b@gmx.de>
 <20260703-ttm_2_drm_exec-v1-2-43685ac1286b@gmx.de>
 <b2932c85fee8e4bf89fdd80ada8883c199d823c0.camel@linux.intel.com>
 <88614266-6ee3-4488-9e2f-030ae0266e0e@amd.com>
 <7031c630c987940d814eaef9d1696969be12d81b.camel@linux.intel.com>
 <5d56ec48-b0f0-4f03-8ec2-f8cc34cb3186@amd.com>
 <eebae66784e24f4b2af6e0079ef74d11100d4020.camel@linux.intel.com>
 <a67cc4c5-7545-4f8e-aa89-e90b3bee523a@amd.com>
 <a5e1afa24b975a1fcf17949875d4a0e0772dcc70.camel@linux.intel.com>
 <0721f2c8-edc3-4a8e-9469-effd3a70dda3@amd.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FREEMAIL_TO(0.00)[amd.com,gmx.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thomas.hellstrom@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gmx.de:email,amd.com:email,bootlin.com:url,gitlab.freedesktop.org:url,intel.com:dkim,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BA44571C558

On Tue, 2026-07-07 at 14:52 +0200, Christian K=C3=B6nig wrote:
> On 7/7/26 11:53, Thomas Hellstr=C3=B6m wrote:
> > On Tue, 2026-07-07 at 10:48 +0200, Christian K=C3=B6nig wrote:
> > > On 7/7/26 08:56, Thomas Hellstr=C3=B6m wrote:
> > > > On Mon, 2026-07-06 at 20:23 +0200, Christian K=C3=B6nig wrote:
> > > > > On 7/6/26 19:01, Thomas Hellstr=C3=B6m wrote:
> ...
> > >=20
> > > The problem is that locking the dma_resv object for release is
> > > mandatory not only for proper DMA-buf import handling but for
> > > tons of
> > > other use cases as well. In other words DMA-buf imports, page
> > > tables,
> > > per process buffers who use the same dma_resv object as the root
> > > PD
> > > etc...
> > >=20
> > > By now we I don't think we can't avoid locking the dma_resv
> > > object in
> > > the delete path, so a completeion event or any other method which
> > > blocks for resource cleanup without deadlock detection won't work
> > > as
> > > far as I can see.
> >=20
> > So in the TTM code itself we have only trylocks, so that works. For
> > the
> > other ones, trylocking the individualized resv in release_notify()
> > or
> > delete_mem_notify() should cover all / most cases except the dma-
> > buf
> > one? xe is doing exactly that. For imported dma-bufs it might even
> > possible to release the resource before cleaning up the bo
> > attachment.
> >=20
> > One problem remains for shrinkers, though, The memory allocation in
> > individualization becomes a problem. We'd either need to annotate
> > those
> > allocations with PF_MEMALLOC flags or skip shrinking zombies.
>=20
> That still sounds like a massive hack to me.

What is a massive hack? The allocation modification or the _resv
trylock? The latter is already done in the code, and using
for example memalloc_nofs_save() will avoid the problematic reclaims so
that we might trade stalling memory reclaims for explicit syncs on
memory pressure.=20

>=20
> Especially the release notification is something I wanted to move
> under the correct lock (_resv) in the long term because drivers tend
> to mess that up.

A _resv trylock would always succeed. And we're already doing that.

>=20
> > > > Since it's a layer violation to pass a drm_exec in an augmented
> > > > dma-buf
> > > > map we will be needing something at the dma-buf level to handle
> > > > that,
> > > > and given that, it also makes sense to base the eviction
> > > > mechanism
> > > > on
> > > > it.
> > >=20
> > > Well I disagree. The DMA-buf invalidation notification
> > > intentionally
> > > doesn't have a ww_acquire_ctx.
> > >=20
> > > Background is that when this is called exporters have often
> > > already
> > > passed the point of no return and the importers just *must* act
> > > on
> > > the request and can't say 'Na, sorry I can't take the locks I
> > > need'.
> >=20
> > I'm not referring to the invalidation. I'm thinking of the
> > following
> > sequence:
> >=20
> > xe_bo_validate()=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // Importer. Finds=
 it's an evicted dma-buf.
> > dma_buf_map();
> > xe_bo_validate();=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // Exporter. Short on m=
emory.
> > ttm_bo_evict();=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // Exporter w=
ants to evict but lacks a
> > ticket
> > 		=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 // and is limited to trylock and=
 loses.
> >=20
> > The remedy is to optionally pass a ticket in an augmented
> > dma_buf_map(), but then it can't be a drm_exec. dma_buf
> > invalidation
> > stays as it is.
>=20
> Hui? dma_buf_map_attachment() is called with the reservation lock
> held for quite a while now.
>=20
> If a ticket is used for locking or not is up to the importer. And
> that TTM eviction is limited to trylock is what we try to solve with
> this patch set.
>=20
> So I absolutely don't get what you try to solve here.

So how does the exporter, that performs the eviction of its own VRAM to
satisfy the VRAM allocation of map_attachment(), get hold of the
importer's drm_exec that it needs for the eviction ww_transaction?

Aside from fishing out of the ww_mutex itself and assume it's always
part of a drm_exec, which is IMO a complete no-go. You need to pass it
through an map_attachment call modified to carry the drm_exec, except
it can't be a drm_exec because that creates a dma-buf dependency on
drm.

Or translated to code: This drm_exec here:

https://elixir.bootlin.com/linux/v7.1.2/source/drivers/gpu/drm/xe/xe_dma_bu=
f.c#L103

Needs to be the importer's drm_exec so the exporter can pass it to TTM
when it calls xe_bo_validate().

This is actually the main argument for introducing the dma_buf
transaction helper to begin with. The ability to sidestep the ttm
refcount removal is just an additional opportunity.

>=20
> > > > The ability to reuse the TTM refcount for now would just be a
> > > > way
> > > > to
> > > > separate out the zombie handling from this series until we can
> > > > do
> > > > it
> > > > properly. After all this series is about enabling sleeping ww
> > > > locks.
> > >=20
> > > Well the problem is that I don't see how it should work with the
> > > TTM
> > > refcount.
> > >=20
> > > This basically means that for each lock operation has an ops
> > > table
> > > with put/get, in that case it would just easier to make the
> > > ww_mutex
> > > ref counted.
> >=20
> > Each object type embedding a ww_mutex needs an ops table pointed to
> > by
> > the lock operation. But get() is not needed, only put(). (See the
> > RFC),
>=20
> I don't think that this is a good ide at all. This clearly just
> complicates things even further.
>=20
> > If we refcount the ww mutex, instead it would need a separate
> > destructor for each object type. We'd save a pointer chase on put
> > but
> > need extra care on object creation and destruction, so I'm not sure
> > it's easier.
>=20
> As far as I can see that approach doesn't needs an ops pointer at
> all. You just save the contented ww_mutex object in the drm_exec
> container instead of the full GEM object reference.
>=20
> Let me give that a try a see how far we get.

But that doesn't solve the dma_buf problem? You still have the dma_buf
dependency on drm_exec?

FWIW, I asked Claude to rebase this series on the dma_buf transaction
helper:

https://gitlab.freedesktop.org/thomash/xe-vibe/-/tree/ttm_exec2

Except for the dma_buf transaction helper this yields a notably smaller
diff in the drm tree.

Thomas


>=20
> Regards,
> Christian.
>=20
> >=20
> > /Thomas
> >=20
> >=20
> > >=20
> > > Regards,
> > > Christian.
> > >=20
> > > >=20
> > > > Thanks,
> > > > Thomas
> > > >=20
> > > >=20
> > > > >=20
> > > > > Regards,
> > > > > Christian.
> > > > >=20
> > > > >=20
> > > > > >=20
> > > > > > Also for reference: (Section at the end and follow-up
> > > > > > messages)
> > > > > > https://lore.kernel.org/all/3716d43462188590743060755b37e3d060f=
7600f.camel@linux.intel.com/
> > > > > >=20
> > > > > > Thanks,
> > > > > > Thomas
> > > > > >=20
> > > > > >=20
> > > > > > > Regards,
> > > > > > > Christian.
> > > > > > >=20
> > > > > > > >=20
> > > > > > > > /Thomas
> > > > > > > >=20
> > > > > > > > >=20
> > > > > > > > > Signed-off-by: tChristian K=C3=B6nig
> > > > > > > > > <christian.koenig@amd.com>
> > > > > > > > > Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
> > > > > > > > > ---
> > > > > > > > > =C2=A0drivers/gpu/drm/i915/gem/i915_gem_ttm.c=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0
> > > > > > > > > 35
> > > > > > > > > +++--
> > > > > > > > > -
> > > > > > > > > =C2=A0drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c |=
=C2=A0=C2=A0
> > > > > > > > > 8
> > > > > > > > > +-
> > > > > > > > > =C2=A0drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c=C2=A0=
=C2=A0=C2=A0 |=C2=A0=C2=A0
> > > > > > > > > 2 -
> > > > > > > > > =C2=A0drivers/gpu/drm/ttm/ttm_bo.c=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 |
> > > > > > > > > 135
> > > > > > > > > +++++++++++--
> > > > > > > > > ----------
> > > > > > > > > =C2=A0drivers/gpu/drm/ttm/ttm_bo_internal.h=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0
> > > > > > > > > 17
> > > > > > > > > ++-
> > > > > > > > > =C2=A0drivers/gpu/drm/ttm/ttm_bo_util.c=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=
=C2=A0
> > > > > > > > > 15
> > > > > > > > > ++-
> > > > > > > > > =C2=A0drivers/gpu/drm/xe/xe_bo.c=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0
> > > > > > > > > 2
> > > > > > > > > +-
> > > > > > > > > =C2=A0include/drm/ttm/ttm_bo.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0
> > > > > > > > > 9 -
> > > > > > > > > -
> > > > > > > > > =C2=A08 files changed, 111 insertions(+), 112 deletions(-=
)
> > > > > > > > >=20
> > > > > > > > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > > > > > > > b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > > > > > > > index df3fcc2b1248e..642296602de69 100644
> > > > > > > > > --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > > > > > > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > > > > > > > @@ -939,7 +939,7 @@ void i915_ttm_adjust_lru(struct
> > > > > > > > > drm_i915_gem_object *obj)
> > > > > > > > > =C2=A0	 * Don't manipulate the TTM LRUs while in
> > > > > > > > > TTM bo
> > > > > > > > > destruction.
> > > > > > > > > =C2=A0	 * We're called through
> > > > > > > > > i915_ttm_delete_mem_notify().
> > > > > > > > > =C2=A0	 */
> > > > > > > > > -	if (!kref_read(&bo->kref))
> > > > > > > > > +	if (!kref_read(&bo->base.refcount))
> > > > > > > > > =C2=A0		return;
> > > > > > > > > =C2=A0
> > > > > > > > > =C2=A0	/*
> > > > > > > > > @@ -957,30 +957,21 @@ void i915_ttm_adjust_lru(struct
> > > > > > > > > drm_i915_gem_object *obj)
> > > > > > > > > =C2=A0	 *
> > > > > > > > > =C2=A0	 * TODO: consider maybe also bumping the
> > > > > > > > > shrinker
> > > > > > > > > list
> > > > > > > > > here
> > > > > > > > > when we have
> > > > > > > > > =C2=A0	 * already unpinned it, which should give us
> > > > > > > > > something
> > > > > > > > > more
> > > > > > > > > like an LRU.
> > > > > > > > > -	 *
> > > > > > > > > -	 * TODO: There is a small window of
> > > > > > > > > opportunity
> > > > > > > > > for
> > > > > > > > > this
> > > > > > > > > function to
> > > > > > > > > -	 * get called from eviction after we've
> > > > > > > > > dropped
> > > > > > > > > the
> > > > > > > > > last
> > > > > > > > > GEM
> > > > > > > > > refcount,
> > > > > > > > > -	 * but before the TTM deleted flag is set on
> > > > > > > > > the
> > > > > > > > > object.
> > > > > > > > > Avoid
> > > > > > > > > -	 * adjusting the shrinker list in such
> > > > > > > > > cases,
> > > > > > > > > since
> > > > > > > > > the
> > > > > > > > > object is
> > > > > > > > > -	 * not available to the shrinker anyway due
> > > > > > > > > to
> > > > > > > > > its
> > > > > > > > > zero
> > > > > > > > > refcount.
> > > > > > > > > -	 * To fix this properly we should move to a
> > > > > > > > > TTM
> > > > > > > > > shrinker
> > > > > > > > > LRU
> > > > > > > > > list for
> > > > > > > > > -	 * these objects.
> > > > > > > > > =C2=A0	 */
> > > > > > > > > -	if (kref_get_unless_zero(&obj-
> > > > > > > > > >base.refcount)) {
> > > > > > > > > -		if (shrinkable !=3D obj-
> > > > > > > > > > mm.ttm_shrinkable) {
> > > > > > > > > -			if (shrinkable) {
> > > > > > > > > -				if (obj->mm.madv =3D=3D
> > > > > > > > > I915_MADV_WILLNEED)
> > > > > > > > > -
> > > > > > > > > 					__i915_gem_o
> > > > > > > > > bjec
> > > > > > > > > t_ma
> > > > > > > > > ke_s
> > > > > > > > > hrinkable(obj);
> > > > > > > > > -				else
> > > > > > > > > -
> > > > > > > > > 					__i915_gem_o
> > > > > > > > > bjec
> > > > > > > > > t_ma
> > > > > > > > > ke_p
> > > > > > > > > urgeable(obj);
> > > > > > > > > -			} else {
> > > > > > > > > -
> > > > > > > > > 				i915_gem_object_make
> > > > > > > > > _uns
> > > > > > > > > hrin
> > > > > > > > > kabl
> > > > > > > > > e(obj);
> > > > > > > > > -			}
> > > > > > > > > -
> > > > > > > > > -			obj->mm.ttm_shrinkable =3D
> > > > > > > > > shrinkable;
> > > > > > > > > +	i915_gem_object_get(obj);
> > > > > > > > > +	if (shrinkable !=3D obj->mm.ttm_shrinkable) {
> > > > > > > > > +		if (shrinkable) {
> > > > > > > > > +			if (obj->mm.madv =3D=3D
> > > > > > > > > I915_MADV_WILLNEED)
> > > > > > > > > +				__i915_gem_object_ma
> > > > > > > > > ke_s
> > > > > > > > > hrin
> > > > > > > > > kabl
> > > > > > > > > e(ob
> > > > > > > > > j);
> > > > > > > > > +			else
> > > > > > > > > +				__i915_gem_object_ma
> > > > > > > > > ke_p
> > > > > > > > > urge
> > > > > > > > > able
> > > > > > > > > (obj
> > > > > > > > > );
> > > > > > > > > +		} else {
> > > > > > > > > +			i915_gem_object_make_unshrin
> > > > > > > > > kabl
> > > > > > > > > e(ob
> > > > > > > > > j);
> > > > > > > > > =C2=A0		}
> > > > > > > > > -		i915_gem_object_put(obj);
> > > > > > > > > +
> > > > > > > > > +		obj->mm.ttm_shrinkable =3D shrinkable;
> > > > > > > > > =C2=A0	}
> > > > > > > > > +	i915_gem_object_put(obj);
> > > > > > > > > =C2=A0
> > > > > > > > > =C2=A0	/*
> > > > > > > > > =C2=A0	 * Put on the correct LRU list depending on
> > > > > > > > > the
> > > > > > > > > MADV
> > > > > > > > > status
> > > > > > > > > diff --git
> > > > > > > > > a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> > > > > > > > > b/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> > > > > > > > > index 56ad8ef325840..904cb4da6c9b3 100644
> > > > > > > > > ---
> > > > > > > > > a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> > > > > > > > > +++
> > > > > > > > > b/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> > > > > > > > > @@ -127,7 +127,7 @@ static void
> > > > > > > > > ttm_bo_init_reserved_sys_man(struct
> > > > > > > > > kunit *test)
> > > > > > > > > =C2=A0	dma_resv_unlock(bo->base.resv);
> > > > > > > > > =C2=A0
> > > > > > > > > =C2=A0	KUNIT_EXPECT_EQ(test, err, 0);
> > > > > > > > > -	KUNIT_EXPECT_EQ(test, kref_read(&bo->kref),
> > > > > > > > > 1);
> > > > > > > > > +	KUNIT_EXPECT_EQ(test, kref_read(&bo-
> > > > > > > > > > base.refcount),
> > > > > > > > > 1);
> > > > > > > > > =C2=A0	KUNIT_EXPECT_PTR_EQ(test, bo->bdev, priv-
> > > > > > > > > > ttm_dev);
> > > > > > > > > =C2=A0	KUNIT_EXPECT_EQ(test, bo->type, bo_type);
> > > > > > > > > =C2=A0	KUNIT_EXPECT_EQ(test, bo->page_alignment,
> > > > > > > > > PAGE_SIZE);
> > > > > > > > > @@ -176,7 +176,7 @@ static void
> > > > > > > > > ttm_bo_init_reserved_mock_man(struct
> > > > > > > > > kunit *test)
> > > > > > > > > =C2=A0	dma_resv_unlock(bo->base.resv);
> > > > > > > > > =C2=A0
> > > > > > > > > =C2=A0	KUNIT_EXPECT_EQ(test, err, 0);
> > > > > > > > > -	KUNIT_EXPECT_EQ(test, kref_read(&bo->kref),
> > > > > > > > > 1);
> > > > > > > > > +	KUNIT_EXPECT_EQ(test, kref_read(&bo-
> > > > > > > > > > base.refcount),
> > > > > > > > > 1);
> > > > > > > > > =C2=A0	KUNIT_EXPECT_PTR_EQ(test, bo->bdev, priv-
> > > > > > > > > > ttm_dev);
> > > > > > > > > =C2=A0	KUNIT_EXPECT_EQ(test, bo->type, bo_type);
> > > > > > > > > =C2=A0	KUNIT_EXPECT_EQ(test, ctx.bytes_moved,
> > > > > > > > > size);
> > > > > > > > > @@ -969,6 +969,8 @@ static void
> > > > > > > > > ttm_bo_validate_allowed_only_evict(struct kunit
> > > > > > > > > *test)
> > > > > > > > > =C2=A0	ttm_mock_manager_fini(priv->ttm_dev,
> > > > > > > > > mem_multihop);
> > > > > > > > > =C2=A0}
> > > > > > > > > =C2=A0
> > > > > > > > > +extern const struct drm_gem_object_funcs
> > > > > > > > > ttm_deleted_object_funcs;
> > > > > > > > > +
> > > > > > > > > =C2=A0static void ttm_bo_validate_deleted_evict(struct
> > > > > > > > > kunit
> > > > > > > > > *test)
> > > > > > > > > =C2=A0{
> > > > > > > > > =C2=A0	struct ttm_operation_ctx ctx_init =3D { },
> > > > > > > > > ctx_val=C2=A0 =3D
> > > > > > > > > { };
> > > > > > > > > @@ -999,7 +1001,7 @@ static void
> > > > > > > > > ttm_bo_validate_deleted_evict(struct
> > > > > > > > > kunit *test)
> > > > > > > > > =C2=A0	KUNIT_EXPECT_EQ(test,
> > > > > > > > > ttm_resource_manager_usage(man),
> > > > > > > > > big);
> > > > > > > > > =C2=A0
> > > > > > > > > =C2=A0	dma_resv_unlock(bo_big->base.resv);
> > > > > > > > > -	bo_big->deleted =3D true;
> > > > > > > > > +	bo_big->base.funcs =3D
> > > > > > > > > &ttm_deleted_object_funcs;
> > > > > > > > > =C2=A0
> > > > > > > > > =C2=A0	bo_small =3D ttm_bo_kunit_init(test, test-
> > > > > > > > > >priv,
> > > > > > > > > small,
> > > > > > > > > NULL);
> > > > > > > > > =C2=A0	bo_small->type =3D bo_type;
> > > > > > > > > diff --git
> > > > > > > > > a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> > > > > > > > > b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> > > > > > > > > index 5cfe8f3f80d75..b7ab19e0e4b2b 100644
> > > > > > > > > --- a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> > > > > > > > > +++ b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> > > > > > > > > @@ -189,8 +189,6 @@ struct ttm_buffer_object
> > > > > > > > > *ttm_bo_kunit_init(struct kunit *test,
> > > > > > > > > =C2=A0	bo->bdev =3D devs->ttm_dev;
> > > > > > > > > =C2=A0	bo->destroy =3D dummy_ttm_bo_destroy;
> > > > > > > > > =C2=A0
> > > > > > > > > -	kref_init(&bo->kref);
> > > > > > > > > -
> > > > > > > > > =C2=A0	return bo;
> > > > > > > > > =C2=A0}
> > > > > > > > > =C2=A0EXPORT_SYMBOL_GPL(ttm_bo_kunit_init);
> > > > > > > > > diff --git a/drivers/gpu/drm/ttm/ttm_bo.c
> > > > > > > > > b/drivers/gpu/drm/ttm/ttm_bo.c
> > > > > > > > > index 3980f376e3ba4..2b470c1746f60 100644
> > > > > > > > > --- a/drivers/gpu/drm/ttm/ttm_bo.c
> > > > > > > > > +++ b/drivers/gpu/drm/ttm/ttm_bo.c
> > > > > > > > > @@ -246,88 +246,84 @@ static void
> > > > > > > > > ttm_bo_delayed_delete(struct
> > > > > > > > > work_struct *work)
> > > > > > > > > =C2=A0	ttm_bo_put(bo);
> > > > > > > > > =C2=A0}
> > > > > > > > > =C2=A0
> > > > > > > > > -static void ttm_bo_release(struct kref *kref)
> > > > > > > > > +/*
> > > > > > > > > + * All other callbacks should never ever be called
> > > > > > > > > on a
> > > > > > > > > deleted
> > > > > > > > > TTM
> > > > > > > > > object.
> > > > > > > > > + */
> > > > > > > > > +const struct drm_gem_object_funcs
> > > > > > > > > ttm_deleted_object_funcs =3D
> > > > > > > > > {
> > > > > > > > > +	.free =3D ttm_bo_free
> > > > > > > > > +};
> > > > > > > > > +EXPORT_SYMBOL_FOR_TESTS_ONLY(ttm_deleted_object_func
> > > > > > > > > s);
> > > > > > > > > +
> > > > > > > > > +/* Returns true if the BO is about to get deleted */
> > > > > > > > > +static bool ttm_bo_is_zombie(struct
> > > > > > > > > ttm_buffer_object
> > > > > > > > > *bo)
> > > > > > > > > +{
> > > > > > > > > +	return bo->base.funcs =3D=3D
> > > > > > > > > &ttm_deleted_object_funcs;
> > > > > > > > > +}
> > > > > > > > > +
> > > > > > > > > +void ttm_bo_fini(struct ttm_buffer_object *bo)
> > > > > > > > > =C2=A0{
> > > > > > > > > -	struct ttm_buffer_object *bo =3D
> > > > > > > > > -	=C2=A0=C2=A0=C2=A0 container_of(kref, struct
> > > > > > > > > ttm_buffer_object,
> > > > > > > > > kref);
> > > > > > > > > =C2=A0	struct ttm_device *bdev =3D bo->bdev;
> > > > > > > > > =C2=A0	int ret;
> > > > > > > > > =C2=A0
> > > > > > > > > =C2=A0	WARN_ON_ONCE(bo->pin_count);
> > > > > > > > > =C2=A0	WARN_ON_ONCE(bo->bulk_move);
> > > > > > > > > =C2=A0
> > > > > > > > > -	if (!bo->deleted) {
> > > > > > > > > -		ret =3D ttm_bo_individualize_resv(bo);
> > > > > > > > > -		if (ret) {
> > > > > > > > > -			/* Last resort, if we fail
> > > > > > > > > to
> > > > > > > > > allocate
> > > > > > > > > memory for the
> > > > > > > > > -			 * fences block for the BO
> > > > > > > > > to
> > > > > > > > > become
> > > > > > > > > idle
> > > > > > > > > -			 */
> > > > > > > > > -			dma_resv_wait_timeout(bo-
> > > > > > > > > > base.resv,
> > > > > > > > > -					=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
> > > > > > > > > DMA_RESV_USAGE_BOOKKEEP, false,
> > > > > > > > > -					=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 30 *
> > > > > > > > > HZ);
> > > > > > > > > -		}
> > > > > > > > > +	ret =3D ttm_bo_individualize_resv(bo);
> > > > > > > > > +	if (ret) {
> > > > > > > > > +		/* Last resort, if we fail to
> > > > > > > > > allocate
> > > > > > > > > memory
> > > > > > > > > for
> > > > > > > > > the
> > > > > > > > > +		 * fences block for the BO to become
> > > > > > > > > idle
> > > > > > > > > +		 */
> > > > > > > > > +		dma_resv_wait_timeout(bo->base.resv,
> > > > > > > > > DMA_RESV_USAGE_BOOKKEEP,
> > > > > > > > > +				=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 false, 30 *
> > > > > > > > > HZ);
> > > > > > > > > +	}
> > > > > > > > > =C2=A0
> > > > > > > > > -		if (bdev->funcs->release_notify)
> > > > > > > > > -			bdev->funcs-
> > > > > > > > > >release_notify(bo);
> > > > > > > > > +	if (bo->bdev->funcs->release_notify)
> > > > > > > > > +		bo->bdev->funcs->release_notify(bo);
> > > > > > > > > =C2=A0
> > > > > > > > > -		drm_vma_offset_remove(bdev-
> > > > > > > > > >vma_manager,
> > > > > > > > > &bo-
> > > > > > > > > > base.vma_node);
> > > > > > > > > -		ttm_mem_io_free(bdev, bo->resource);
> > > > > > > > > +	drm_vma_offset_remove(bdev->vma_manager,
> > > > > > > > > &bo-
> > > > > > > > > > base.vma_node);
> > > > > > > > > +	ttm_mem_io_free(bdev, bo->resource);
> > > > > > > > > =C2=A0
> > > > > > > > > -		if (!dma_resv_test_signaled(&bo-
> > > > > > > > > > base._resv,
> > > > > > > > > -					=C2=A0=C2=A0=C2=A0
> > > > > > > > > DMA_RESV_USAGE_BOOKKEEP)
> > > > > > > > > > >=20
> > > > > > > > > -		=C2=A0=C2=A0=C2=A0 (want_init_on_free() && (bo->ttm
> > > > > > > > > !=3D
> > > > > > > > > NULL))
> > > > > > > > > > >=20
> > > > > > > > > -		=C2=A0=C2=A0=C2=A0 bo->type =3D=3D ttm_bo_type_sg ||
> > > > > > > > > -		=C2=A0=C2=A0=C2=A0 !dma_resv_trylock(bo-
> > > > > > > > > >base.resv)) {
> > > > > > > > > -			/* The BO is not idle,
> > > > > > > > > resurrect
> > > > > > > > > it
> > > > > > > > > for
> > > > > > > > > delayed destroy */
> > > > > > > > > -			ttm_bo_flush_all_fences(bo);
> > > > > > > > > -			bo->deleted =3D true;
> > > > > > > > > +	if (!dma_resv_test_signaled(&bo->base._resv,
> > > > > > > > > DMA_RESV_USAGE_BOOKKEEP) ||
> > > > > > > > > +	=C2=A0=C2=A0=C2=A0 (want_init_on_free() && (bo->ttm !=
=3D
> > > > > > > > > NULL))
> > > > > > > > > > >=20
> > > > > > > > > +	=C2=A0=C2=A0=C2=A0 bo->type =3D=3D ttm_bo_type_sg ||
> > > > > > > > > +	=C2=A0=C2=A0=C2=A0 !dma_resv_trylock(bo->base.resv)) {
> > > > > > > > > +		/* The BO is not idle, resurrect it
> > > > > > > > > for
> > > > > > > > > delayed
> > > > > > > > > destroy */
> > > > > > > > > +		ttm_bo_flush_all_fences(bo);
> > > > > > > > > =C2=A0
> > > > > > > > > -			spin_lock(&bdev->lru_lock);
> > > > > > > > > -
> > > > > > > > > -			/*
> > > > > > > > > -			 * Make pinned bos
> > > > > > > > > immediately
> > > > > > > > > available
> > > > > > > > > to
> > > > > > > > > -			 * shrinkers, now that they
> > > > > > > > > are
> > > > > > > > > queued
> > > > > > > > > for
> > > > > > > > > -			 * destruction.
> > > > > > > > > -			 *
> > > > > > > > > -			 * FIXME: QXL is triggering
> > > > > > > > > this.
> > > > > > > > > Can be
> > > > > > > > > removed when the
> > > > > > > > > -			 * driver is fixed.
> > > > > > > > > -			 */
> > > > > > > > > -			if (bo->pin_count) {
> > > > > > > > > -				bo->pin_count =3D 0;
> > > > > > > > > -
> > > > > > > > > 				ttm_resource_move_to
> > > > > > > > > _lru
> > > > > > > > > _tai
> > > > > > > > > l(bo-
> > > > > > > > > > resource);
> > > > > > > > > -			}
> > > > > > > > > +		spin_lock(&bo->bdev->lru_lock);
> > > > > > > > > =C2=A0
> > > > > > > > > -			kref_init(&bo->kref);
> > > > > > > > > -			spin_unlock(&bdev-
> > > > > > > > > >lru_lock);
> > > > > > > > > +		/*
> > > > > > > > > +		 * Make pinned bos immediately
> > > > > > > > > available
> > > > > > > > > to
> > > > > > > > > +		 * shrinkers, now that they are
> > > > > > > > > queued
> > > > > > > > > for
> > > > > > > > > +		 * destruction.
> > > > > > > > > +		 *
> > > > > > > > > +		 * FIXME: QXL is triggering this.
> > > > > > > > > Can be
> > > > > > > > > removed
> > > > > > > > > when the
> > > > > > > > > +		 * driver is fixed.
> > > > > > > > > +		 */
> > > > > > > > > +		if (bo->pin_count) {
> > > > > > > > > +			bo->pin_count =3D 0;
> > > > > > > > > +			ttm_resource_move_to_lru_tai
> > > > > > > > > l(bo
> > > > > > > > > -
> > > > > > > > > > resource);
> > > > > > > > > +		}
> > > > > > > > > =C2=A0
> > > > > > > > > -			INIT_WORK(&bo-
> > > > > > > > > >delayed_delete,
> > > > > > > > > ttm_bo_delayed_delete);
> > > > > > > > > +		kref_init(&bo->base.refcount);
> > > > > > > > > +		bo->base.funcs =3D
> > > > > > > > > &ttm_deleted_object_funcs;
> > > > > > > > > +		spin_unlock(&bo->bdev->lru_lock);
> > > > > > > > > =C2=A0
> > > > > > > > > -			/* Schedule the worker on
> > > > > > > > > the
> > > > > > > > > closest
> > > > > > > > > NUMA
> > > > > > > > > node. This
> > > > > > > > > -			 * improves performance
> > > > > > > > > since
> > > > > > > > > system
> > > > > > > > > memory
> > > > > > > > > might be
> > > > > > > > > -			 * cleared on free and that
> > > > > > > > > is
> > > > > > > > > best
> > > > > > > > > done
> > > > > > > > > on
> > > > > > > > > a CPU core
> > > > > > > > > -			 * close to it.
> > > > > > > > > -			 */
> > > > > > > > > -			queue_work_node(bdev-
> > > > > > > > > >pool.nid,
> > > > > > > > > bdev-
> > > > > > > > > > wq,
> > > > > > > > > &bo->delayed_delete);
> > > > > > > > > -			return;
> > > > > > > > > -		}
> > > > > > > > > +		INIT_WORK(&bo->delayed_delete,
> > > > > > > > > ttm_bo_delayed_delete);
> > > > > > > > > =C2=A0
> > > > > > > > > +		/* Schedule the worker on the
> > > > > > > > > closest
> > > > > > > > > NUMA
> > > > > > > > > node.
> > > > > > > > > This
> > > > > > > > > +		 * improves performance since system
> > > > > > > > > memory
> > > > > > > > > might be
> > > > > > > > > +		 * cleared on free and that is best
> > > > > > > > > done
> > > > > > > > > on
> > > > > > > > > a
> > > > > > > > > CPU
> > > > > > > > > core
> > > > > > > > > +		 * close to it.
> > > > > > > > > +		 */
> > > > > > > > > +		queue_work_node(bdev->pool.nid,
> > > > > > > > > bdev-
> > > > > > > > > > wq,
> > > > > > > > > &bo-
> > > > > > > > > > delayed_delete);
> > > > > > > > > +	} else {
> > > > > > > > > =C2=A0		ttm_bo_cleanup_memtype_use(bo);
> > > > > > > > > =C2=A0		dma_resv_unlock(bo->base.resv);
> > > > > > > > > -	}
> > > > > > > > > =C2=A0
> > > > > > > > > -	atomic_dec(&ttm_glob.bo_count);
> > > > > > > > > -	bo->destroy(bo);
> > > > > > > > > -}
> > > > > > > > > -
> > > > > > > > > -/* TODO: remove! */
> > > > > > > > > -void ttm_bo_put(struct ttm_buffer_object *bo)
> > > > > > > > > -{
> > > > > > > > > -	kref_put(&bo->kref, ttm_bo_release);
> > > > > > > > > -}
> > > > > > > > > -
> > > > > > > > > -void ttm_bo_fini(struct ttm_buffer_object *bo)
> > > > > > > > > -{
> > > > > > > > > -	ttm_bo_put(bo);
> > > > > > > > > +		atomic_dec(&ttm_glob.bo_count);
> > > > > > > > > +		bo->destroy(bo);
> > > > > > > > > +	}
> > > > > > > > > =C2=A0}
> > > > > > > > > =C2=A0EXPORT_SYMBOL(ttm_bo_fini);
> > > > > > > > > =C2=A0
> > > > > > > > > @@ -470,7 +466,7 @@ int ttm_bo_evict_first(struct
> > > > > > > > > ttm_device
> > > > > > > > > *bdev,
> > > > > > > > > struct ttm_resource_manager *man
> > > > > > > > > =C2=A0	if (!bo->resource || bo->resource->mem_type
> > > > > > > > > !=3D
> > > > > > > > > mem_type)
> > > > > > > > > =C2=A0		goto out_bo_moved;
> > > > > > > > > =C2=A0
> > > > > > > > > -	if (bo->deleted) {
> > > > > > > > > +	if (ttm_bo_is_zombie(bo)) {
> > > > > > > > > =C2=A0		ret =3D ttm_bo_wait_ctx(bo, ctx);
> > > > > > > > > =C2=A0		if (!ret)
> > > > > > > > > =C2=A0			ttm_bo_cleanup_memtype_use(b
> > > > > > > > > o);
> > > > > > > > > @@ -524,7 +520,7 @@ static s64 ttm_bo_evict_cb(struct
> > > > > > > > > ttm_lru_walk
> > > > > > > > > *walk, struct ttm_buffer_object *
> > > > > > > > > =C2=A0	if (bo->pin_count || !bo->bdev->funcs-
> > > > > > > > > > eviction_valuable(bo,
> > > > > > > > > evict_walk->place))
> > > > > > > > > =C2=A0		return 0;
> > > > > > > > > =C2=A0
> > > > > > > > > -	if (bo->deleted) {
> > > > > > > > > +	if (ttm_bo_is_zombie(bo)) {
> > > > > > > > > =C2=A0		lret =3D ttm_bo_wait_ctx(bo, walk-
> > > > > > > > > > arg.ctx);
> > > > > > > > > =C2=A0		if (!lret)
> > > > > > > > > =C2=A0			ttm_bo_cleanup_memtype_use(b
> > > > > > > > > o);
> > > > > > > > > @@ -624,7 +620,6 @@ static int
> > > > > > > > > ttm_bo_evict_alloc(struct
> > > > > > > > > ttm_device
> > > > > > > > > *bdev,
> > > > > > > > > =C2=A0void ttm_bo_pin(struct ttm_buffer_object *bo)
> > > > > > > > > =C2=A0{
> > > > > > > > > =C2=A0	dma_resv_assert_held(bo->base.resv);
> > > > > > > > > -	WARN_ON_ONCE(!kref_read(&bo->kref));
> > > > > > > > > =C2=A0	spin_lock(&bo->bdev->lru_lock);
> > > > > > > > > =C2=A0	if (bo->resource)
> > > > > > > > > =C2=A0		ttm_resource_del_bulk_move(bo-
> > > > > > > > > >resource,
> > > > > > > > > bo);
> > > > > > > > > @@ -643,7 +638,6 @@ EXPORT_SYMBOL(ttm_bo_pin);
> > > > > > > > > =C2=A0void ttm_bo_unpin(struct ttm_buffer_object *bo)
> > > > > > > > > =C2=A0{
> > > > > > > > > =C2=A0	dma_resv_assert_held(bo->base.resv);
> > > > > > > > > -	WARN_ON_ONCE(!kref_read(&bo->kref));
> > > > > > > > > =C2=A0	if (WARN_ON_ONCE(!bo->pin_count))
> > > > > > > > > =C2=A0		return;
> > > > > > > > > =C2=A0
> > > > > > > > > @@ -934,7 +928,6 @@ int ttm_bo_init_reserved(struct
> > > > > > > > > ttm_device
> > > > > > > > > *bdev,
> > > > > > > > > struct ttm_buffer_object *bo,
> > > > > > > > > =C2=A0{
> > > > > > > > > =C2=A0	int ret;
> > > > > > > > > =C2=A0
> > > > > > > > > -	kref_init(&bo->kref);
> > > > > > > > > =C2=A0	bo->bdev =3D bdev;
> > > > > > > > > =C2=A0	bo->type =3D type;
> > > > > > > > > =C2=A0	bo->page_alignment =3D alignment;
> > > > > > > > > @@ -1131,8 +1124,8 @@ ttm_bo_swapout_cb(struct
> > > > > > > > > ttm_lru_walk
> > > > > > > > > *walk,
> > > > > > > > > struct ttm_buffer_object *bo)
> > > > > > > > > =C2=A0		goto out;
> > > > > > > > > =C2=A0	}
> > > > > > > > > =C2=A0
> > > > > > > > > -	if (bo->deleted) {
> > > > > > > > > -		pgoff_t num_pages =3D tt->num_pages;
> > > > > > > > > +	if (ttm_bo_is_zombie(bo)) {
> > > > > > > > > +		pgoff_t num_pages =3D bo->ttm-
> > > > > > > > > >num_pages;
> > > > > > > > > =C2=A0
> > > > > > > > > =C2=A0		ret =3D ttm_bo_wait_ctx(bo, ctx);
> > > > > > > > > =C2=A0		if (ret)
> > > > > > > > > diff --git a/drivers/gpu/drm/ttm/ttm_bo_internal.h
> > > > > > > > > b/drivers/gpu/drm/ttm/ttm_bo_internal.h
> > > > > > > > > index e0d48eac74b03..ded2a47be0bcb 100644
> > > > > > > > > --- a/drivers/gpu/drm/ttm/ttm_bo_internal.h
> > > > > > > > > +++ b/drivers/gpu/drm/ttm/ttm_bo_internal.h
> > > > > > > > > @@ -27,6 +27,14 @@
> > > > > > > > > =C2=A0
> > > > > > > > > =C2=A0#include <drm/ttm/ttm_bo.h>
> > > > > > > > > =C2=A0
> > > > > > > > > +static inline void ttm_bo_free(struct drm_gem_object
> > > > > > > > > *gobj)
> > > > > > > > > +{
> > > > > > > > > +	struct ttm_buffer_object *bo =3D
> > > > > > > > > container_of(gobj,
> > > > > > > > > typeof(*bo), base);
> > > > > > > > > +
> > > > > > > > > +	atomic_dec(&ttm_glob.bo_count);
> > > > > > > > > +	bo->destroy(bo);
> > > > > > > > > +}
> > > > > > > > > +
> > > > > > > > > =C2=A0/**
> > > > > > > > > =C2=A0 * ttm_bo_get - reference a struct ttm_buffer_objec=
t
> > > > > > > > > =C2=A0 *
> > > > > > > > > @@ -34,7 +42,7 @@
> > > > > > > > > =C2=A0 */
> > > > > > > > > =C2=A0static inline void ttm_bo_get(struct
> > > > > > > > > ttm_buffer_object
> > > > > > > > > *bo)
> > > > > > > > > =C2=A0{
> > > > > > > > > -	kref_get(&bo->kref);
> > > > > > > > > +	drm_gem_object_get(&bo->base);
> > > > > > > > > =C2=A0}
> > > > > > > > > =C2=A0
> > > > > > > > > =C2=A0/**
> > > > > > > > > @@ -50,11 +58,14 @@ static inline void
> > > > > > > > > ttm_bo_get(struct
> > > > > > > > > ttm_buffer_object *bo)
> > > > > > > > > =C2=A0static inline __must_check struct ttm_buffer_object
> > > > > > > > > *
> > > > > > > > > =C2=A0ttm_bo_get_unless_zero(struct ttm_buffer_object *bo=
)
> > > > > > > > > =C2=A0{
> > > > > > > > > -	if (!kref_get_unless_zero(&bo->kref))
> > > > > > > > > +	if (!kref_get_unless_zero(&bo-
> > > > > > > > > >base.refcount))
> > > > > > > > > =C2=A0		return NULL;
> > > > > > > > > =C2=A0	return bo;
> > > > > > > > > =C2=A0}
> > > > > > > > > =C2=A0
> > > > > > > > > -void ttm_bo_put(struct ttm_buffer_object *bo);
> > > > > > > > > +static inline void ttm_bo_put(struct
> > > > > > > > > ttm_buffer_object
> > > > > > > > > *bo)
> > > > > > > > > +{
> > > > > > > > > +	drm_gem_object_put(&bo->base);
> > > > > > > > > +}
> > > > > > > > > =C2=A0
> > > > > > > > > =C2=A0#endif
> > > > > > > > > diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c
> > > > > > > > > b/drivers/gpu/drm/ttm/ttm_bo_util.c
> > > > > > > > > index 3e3c201a02226..7ed085adf1c9b 100644
> > > > > > > > > --- a/drivers/gpu/drm/ttm/ttm_bo_util.c
> > > > > > > > > +++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
> > > > > > > > > @@ -41,6 +41,18 @@
> > > > > > > > > =C2=A0
> > > > > > > > > =C2=A0#include "ttm_bo_internal.h"
> > > > > > > > > =C2=A0
> > > > > > > > > +static void ttm_transfer_object_free(struct
> > > > > > > > > drm_gem_object
> > > > > > > > > *obj)
> > > > > > > > > +{
> > > > > > > > > +	struct ttm_buffer_object *bo =3D
> > > > > > > > > +		container_of(obj, struct
> > > > > > > > > ttm_buffer_object,
> > > > > > > > > base);
> > > > > > > > > +
> > > > > > > > > +	ttm_bo_fini(bo);
> > > > > > > > > +}
> > > > > > > > > +
> > > > > > > > > +const struct drm_gem_object_funcs
> > > > > > > > > ttm_transfer_object_funcs
> > > > > > > > > =3D {
> > > > > > > > > +	.free =3D ttm_transfer_object_free,
> > > > > > > > > +};
> > > > > > > > > +
> > > > > > > > > =C2=A0struct ttm_transfer_obj {
> > > > > > > > > =C2=A0	struct ttm_buffer_object base;
> > > > > > > > > =C2=A0	struct ttm_buffer_object *bo;
> > > > > > > > > @@ -247,7 +259,8 @@ static int
> > > > > > > > > ttm_buffer_object_transfer(struct
> > > > > > > > > ttm_buffer_object *bo,
> > > > > > > > > =C2=A0	atomic_inc(&ttm_glob.bo_count);
> > > > > > > > > =C2=A0	drm_vma_node_reset(&fbo-
> > > > > > > > > >base.base.vma_node);
> > > > > > > > > =C2=A0
> > > > > > > > > -	kref_init(&fbo->base.kref);
> > > > > > > > > +	kref_init(&fbo->base.base.refcount);
> > > > > > > > > +	fbo->base.base.funcs =3D
> > > > > > > > > &ttm_transfer_object_funcs;
> > > > > > > > > =C2=A0	fbo->base.destroy =3D &ttm_transfered_destroy;
> > > > > > > > > =C2=A0	fbo->base.pin_count =3D 0;
> > > > > > > > > =C2=A0	if (bo->type !=3D ttm_bo_type_sg)
> > > > > > > > > diff --git a/drivers/gpu/drm/xe/xe_bo.c
> > > > > > > > > b/drivers/gpu/drm/xe/xe_bo.c
> > > > > > > > > index 85e6d9a0f575b..5843f850339c7 100644
> > > > > > > > > --- a/drivers/gpu/drm/xe/xe_bo.c
> > > > > > > > > +++ b/drivers/gpu/drm/xe/xe_bo.c
> > > > > > > > > @@ -1651,7 +1651,7 @@ static bool
> > > > > > > > > xe_ttm_bo_lock_in_destructor(struct
> > > > > > > > > ttm_buffer_object *ttm_bo)
> > > > > > > > > =C2=A0	struct xe_device *xe =3D
> > > > > > > > > ttm_to_xe_device(ttm_bo-
> > > > > > > > > > bdev);
> > > > > > > > > =C2=A0	bool locked;
> > > > > > > > > =C2=A0
> > > > > > > > > -	xe_assert(xe, !kref_read(&ttm_bo->kref));
> > > > > > > > > +	xe_assert(xe, !kref_read(&ttm_bo-
> > > > > > > > > > base.refcount));
> > > > > > > > > =C2=A0
> > > > > > > > > =C2=A0	/*
> > > > > > > > > =C2=A0	 * We can typically only race with TTM
> > > > > > > > > trylocking
> > > > > > > > > under
> > > > > > > > > the
> > > > > > > > > diff --git a/include/drm/ttm/ttm_bo.h
> > > > > > > > > b/include/drm/ttm/ttm_bo.h
> > > > > > > > > index 8310bc3d55f90..1eae9eea5ff32 100644
> > > > > > > > > --- a/include/drm/ttm/ttm_bo.h
> > > > > > > > > +++ b/include/drm/ttm/ttm_bo.h
> > > > > > > > > @@ -78,11 +78,8 @@ enum ttm_bo_type {
> > > > > > > > > =C2=A0 * @type: The bo type.
> > > > > > > > > =C2=A0 * @page_alignment: Page alignment.
> > > > > > > > > =C2=A0 * @destroy: Destruction function. If NULL, kfree i=
s
> > > > > > > > > used.
> > > > > > > > > - * @kref: Reference count of this buffer object.
> > > > > > > > > When
> > > > > > > > > this
> > > > > > > > > refcount
> > > > > > > > > reaches
> > > > > > > > > - * zero, the object is destroyed or put on the
> > > > > > > > > delayed
> > > > > > > > > delete
> > > > > > > > > list.
> > > > > > > > > =C2=A0 * @resource: structure describing current
> > > > > > > > > placement.
> > > > > > > > > =C2=A0 * @ttm: TTM structure holding system pages.
> > > > > > > > > - * @deleted: True if the object is only a zombie and
> > > > > > > > > already
> > > > > > > > > deleted.
> > > > > > > > > =C2=A0 * @bulk_move: The bulk move object.
> > > > > > > > > =C2=A0 * @priority: Priority for LRU, BOs with lower
> > > > > > > > > priority
> > > > > > > > > are
> > > > > > > > > evicted
> > > > > > > > > first.
> > > > > > > > > =C2=A0 * @pin_count: Pin count.
> > > > > > > > > @@ -109,17 +106,11 @@ struct ttm_buffer_object {
> > > > > > > > > =C2=A0	uint32_t page_alignment;
> > > > > > > > > =C2=A0	void (*destroy) (struct ttm_buffer_object
> > > > > > > > > *);
> > > > > > > > > =C2=A0
> > > > > > > > > -	/*
> > > > > > > > > -	* Members not needing protection.
> > > > > > > > > -	*/
> > > > > > > > > -	struct kref kref;
> > > > > > > > > -
> > > > > > > > > =C2=A0	/*
> > > > > > > > > =C2=A0	 * Members protected by the
> > > > > > > > > bo::resv::reserved
> > > > > > > > > lock.
> > > > > > > > > =C2=A0	 */
> > > > > > > > > =C2=A0	struct ttm_resource *resource;
> > > > > > > > > =C2=A0	struct ttm_tt *ttm;
> > > > > > > > > -	bool deleted;
> > > > > > > > > =C2=A0	struct ttm_lru_bulk_move *bulk_move;
> > > > > > > > > =C2=A0	unsigned priority;
> > > > > > > > > =C2=A0	unsigned pin_count;
