Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eloPCxOdTGpOnAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 08:30:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6149717F75
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 08:30:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=FzIpHvSM;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09D1310EB80;
	Tue,  7 Jul 2026 06:30:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE6E310E440;
 Tue,  7 Jul 2026 06:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783405837; x=1814941837;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=tjykPpqNThv13fVTU05MVt5WRE9yK93srf+WnySaidw=;
 b=FzIpHvSMxtgbVfKDqPhkTafAl5fT38UJE87jr1VuXNRX8ht+/3OWOzTs
 YBf5RjZ1WDnQ4z0yx8+uMt1hrMK8Tjzky5yMg/7ILOvfzZop5qtZRmePZ
 U9Ii59h8Wm3FadJ8K1fWICQ0EjscCKimVzmtF8KWiqxtQx7IR0NbW0UW8
 NcOjmcmpQcx8+Bs+JsFjAwo6vu+mFZvfY0W4TNzBO0xlpmSb5n6aQ+gL7
 0+88Z1d4Rj78zu0+t9PxLsNKkRhVDKMG6uo1ZgSBFpSLkpPaWObZYzAVQ
 NaBQZj7OyvnKl2W3S8EWQcVwYukXDzYpPwwJkoeBQzERNhVbm2PnhpNth w==;
X-CSE-ConnectionGUID: 85JrD1nATj+kItODydLf3w==
X-CSE-MsgGUID: H7ZFfjzKTmuCf51wGVbeUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11839"; a="95425555"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="95425555"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 23:30:36 -0700
X-CSE-ConnectionGUID: udT0Egv6RbitC4FPHTr4VA==
X-CSE-MsgGUID: eM2ZdVrbT8y+KwZFS4ziyw==
X-ExtLoop1: 1
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [10.245.244.199])
 ([10.245.244.199])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2026 23:30:32 -0700
Message-ID: <8d654c651754e5f3ba0a2ce57639e471b883993c.camel@linux.intel.com>
Subject: Re: [PATCH 02/10] drm/ttm: replace TTMs refcount with the DRM
 refcount v4
From: Thomas =?ISO-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
To: Matthew Brost <matthew.brost@intel.com>
Cc: Christian =?ISO-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Natalie
 Vock <natalie.vock@gmx.de>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>,  Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen	 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>,  Tvrtko Ursulin <tursulin@ursulin.net>, Huang Rui
 <ray.huang@amd.com>, Matthew Auld <matthew.auld@intel.com>,  Alex Deucher
 <alexander.deucher@amd.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, 	intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, 	amd-gfx@lists.freedesktop.org
Date: Tue, 07 Jul 2026 08:30:29 +0200
In-Reply-To: <akvugeeF5zfAauf3@gsse-cloud1.jf.intel.com>
References: <20260703-ttm_2_drm_exec-v1-0-43685ac1286b@gmx.de>
 <20260703-ttm_2_drm_exec-v1-2-43685ac1286b@gmx.de>
 <b2932c85fee8e4bf89fdd80ada8883c199d823c0.camel@linux.intel.com>
 <88614266-6ee3-4488-9e2f-030ae0266e0e@amd.com>
 <7031c630c987940d814eaef9d1696969be12d81b.camel@linux.intel.com>
 <akvrBLBhgbQodMNi@gsse-cloud1.jf.intel.com>
 <230890fdfb6c3e855636ad7731f60210a078e2c6.camel@linux.intel.com>
 <akvt1GtqVKVVtmEU@gsse-cloud1.jf.intel.com>
 <akvugeeF5zfAauf3@gsse-cloud1.jf.intel.com>
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
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[amd.com,gmx.de,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net,lists.freedesktop.org,vger.kernel.org];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thomas.hellstrom@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gmx.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C6149717F75

On Mon, 2026-07-06 at 11:05 -0700, Matthew Brost wrote:
> On Mon, Jul 06, 2026 at 11:03:00AM -0700, Matthew Brost wrote:
> > On Mon, Jul 06, 2026 at 07:53:12PM +0200, Thomas Hellstr=C3=B6m wrote:
> > > On Mon, 2026-07-06 at 10:51 -0700, Matthew Brost wrote:
> > > > On Mon, Jul 06, 2026 at 07:01:27PM +0200, Thomas Hellstr=C3=B6m
> > > > wrote:
> > > > > On Mon, 2026-07-06 at 16:49 +0200, Christian K=C3=B6nig wrote:
> > > > > > On 7/6/26 15:14, Thomas Hellstr=C3=B6m wrote:
> > > > > > > On Fri, 2026-07-03 at 18:31 +0200, Natalie Vock wrote:
> > > > > > > > From: Christian K=C3=B6nig <christian.koenig@amd.com>
> > > > > > > >=20
> > > > > > > > Instead of keeping a separate reference count for the
> > > > > > > > TTM
> > > > > > > > object
> > > > > > > > also
> > > > > > > > use
> > > > > > > > the reference count for DRM GEM objects inside TTM.
> > > > > > > >=20
> > > > > > > > Apart from avoiding two reference counts for one object
> > > > > > > > this
> > > > > > > > approach
> > > > > > > > has
> > > > > > > > the clear advantage of being able to use drm_exec
> > > > > > > > inside TTM.
> > > > > > > >=20
> > > > > > > > v2: adjust XE assert as well and re-enable disabled
> > > > > > > > test
> > > > > > > > v3: handle another case in i915
> > > > > > > > v4: set GEM driver funcs of transfer BOs to point to
> > > > > > > > the TTM
> > > > > > > > free
> > > > > > > > callback (Natalie)
> > > > > > >=20
> > > > > > > I think the main review issue from the last time this was
> > > > > > > on
> > > > > > > the
> > > > > > > table
> > > > > > > was that we shouldn't resurrect the gem refcount. Apart
> > > > > > > from
> > > > > > > the
> > > > > > > risc
> > > > > > > of getting barriers wrong, both xe and IIRC i915 partly
> > > > > > > rely on
> > > > > > > the
> > > > > > > gem
> > > > > > > refcount never being resurrected and that callbacks for
> > > > > > > bos
> > > > > > > with
> > > > > > > zero
> > > > > > > gem refcount means that the gem part of the object is
> > > > > > > unusable.
> > > > > >=20
> > > > > > I've spend quite some time thinking about that and came to
> > > > > > the
> > > > > > conclusion that this is actually harmless.
> > > > > >=20
> > > > > > The drivers shouldn't be able to see the resurected BO,
> > > > > > except if
> > > > > > they go over the LRU list manually (which they shouldn't).
> > > > >=20
> > > > > The shrinker uses the TTM helpers for this. Basically the
> > > > > check
> > > > > needs
> > > > > to be ported to use the zombie interface but the present
> > > > > change
> > > > > also
> > > > > widens the window where we can't evict / shrink at all due to
> > > > > zero
> > > > > refcounts.
> > > > >=20
> > > > > While it might be made harmless, resurrecting a refcount like
> > > > > this
> > > > > is
> > > > > IMO not something that should leak into the gem refcount.
> > > > > Nobody
> > > > > else
> > > > > does this in the kernel tree. The bo in reality becomes a
> > > > > zombie
> > > > > once
> > > > > the gem refcount reaches zero.
> > > >=20
> > > > When you say resurrecting a refcount - what exactly do you mean
> > > > by
> > > > this?
> > > >=20
> > > > ref -> 0 -> init ref count 1 -> 0 again?
> > >=20
> > > Yes, the destructor re-initializes it to 1 again. Prevously this
> > > was
> > > confined to the TTM refcount only and had limited visibility.
> > >=20
>=20
> Opps, missed pasting in a line here:
>=20
> Ok, yes, this is also something in the pipeline for Xe related to CPU
> bindings:
>=20
> >=20
> > Put a PT BO on a deferred list -> reinit -> sometime later, do an
> > async
> > put. This is all done using the TTM refcount. Of course, we don't
> > have
> > to do it this way, though.
> >=20
> > In general, I agree that tricks like this are not the most
> > desirable
> > approach. If I recall correctly, I implemented this in the Xe code
> > because it followed an existing paradigm.

I figure if you completely repurpose the refcount and there is a
documented way to easily assert that the two different use-cases never
collide then it would probably be acceptable. But note also Dave's
comment about Rust. If we extend this practice others may use it as a
precedent....

/Thomas


> >  If we want to merge the TTM
> > and GEM refcounts, I agree that we should likely move away from
> > this
> > paradigm, since the GEM refcount significantly expands its scope.
> >=20
> > Matt
> >=20
> > > /Thomas
> > >=20
> > > >=20
> > > > Matt
> > > >=20
> > > > >=20
> > > > > >=20
> > > > > > >=20
> > > > > > > For example xe_bo.c:
> > > > > > >=20
> > > > > > > 	if (!xe_bo_is_xe_bo(bo) ||
> > > > > > > !xe_bo_get_unless_zero(xe_bo))
> > > > > > > 		return xe_bo_shrink_purge(ctx, bo,
> > > > > > > scanned);
> > > > > > >=20
> > > > > > > So IIRC the conclusion was when removing the ttm refcount
> > > > > > > we
> > > > > > > shouldn't
> > > > > > > attempt to resurrect the gem one. If the
> > > > > > > get_unless_zero()
> > > > > > > fails
> > > > > > > during
> > > > > > > evict walk, we simply find something to wait for. See
> > > > > > > previous
> > > > > > > discussion there.
> > > > > >=20
> > > > > > Yeah, I considered that as well but the problem is we often
> > > > > > doesn't
> > > > > > have anything to wait on.
> > > > >=20
> > > > > That's not the conclusion of the previous discussion?
> > > > >=20
> > > > > https://lore.kernel.org/dri-devel/20250716160555.20217-2-christia=
n.koenig@amd.com/#r
> > > > >=20
> > > > > >=20
> > > > > > >=20
> > > > > > > I fully support removing the ttm refcount, but not if it
> > > > > > > means
> > > > > > > resurrecting the gem refcount.
> > > > > > >=20
> > > > > > > If we want to sidestep that problem, in favour of getting
> > > > > > > the
> > > > > > > proposed
> > > > > > > locking functionality in and future proof it, I suggest
> > > > > > > using
> > > > > > >=20
> > > > > > > https://lore.kernel.org/all/20260605112700.181040-1-thomas.he=
llstrom@linux.intel.com/
> > > > > > >=20
> > > > > > > And rebase this series on that. This means we can use the
> > > > > > > ttm
> > > > > > > refcount
> > > > > > > for the transaction refcounting, and also that if we add
> > > > > > > a dma-
> > > > > > > buf
> > > > > > > map
> > > > > > > interface with a dma_resv_txn_obj, we could use that to
> > > > > > > also
> > > > > > > have
> > > > > > > exhaustive eviction that originates from a dma_buf map.
> > > > > >=20
> > > > > > I don't think that this is a good idea. It just adds
> > > > > > another
> > > > > > layer of
> > > > > > abstraction and doesn't solve the problem in any way
> > > > > > possible.
> > > > >=20
> > > > > This comment confuses me. Exactly what problem isn't solved
> > > > > by
> > > > > this,
> > > > > and which of the stated benefits/use-cases in the cover-
> > > > > letter do
> > > > > you
> > > > > think aren't worthwhile?
> > > > >=20
> > > > > Also for reference: (Section at the end and follow-up
> > > > > messages)
> > > > > https://lore.kernel.org/all/3716d43462188590743060755b37e3d060f76=
00f.camel@linux.intel.com/
> > > > >=20
> > > > > Thanks,
> > > > > Thomas
> > > > >=20
> > > > >=20
> > > > > > Regards,
> > > > > > Christian.
> > > > > >=20
> > > > > > >=20
> > > > > > > /Thomas
> > > > > > >=20
> > > > > > > >=20
> > > > > > > > Signed-off-by: tChristian K=C3=B6nig
> > > > > > > > <christian.koenig@amd.com>
> > > > > > > > Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
> > > > > > > > ---
> > > > > > > > =C2=A0drivers/gpu/drm/i915/gem/i915_gem_ttm.c=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 35
> > > > > > > > +++--
> > > > > > > > -
> > > > > > > > =C2=A0drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c |=C2=
=A0=C2=A0 8
> > > > > > > > +-
> > > > > > > > =C2=A0drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c=C2=A0=
=C2=A0=C2=A0 |=C2=A0=C2=A0 2
> > > > > > > > -
> > > > > > > > =C2=A0drivers/gpu/drm/ttm/ttm_bo.c=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 | 135
> > > > > > > > +++++++++++--
> > > > > > > > ----------
> > > > > > > > =C2=A0drivers/gpu/drm/ttm/ttm_bo_internal.h=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 17
> > > > > > > > ++-
> > > > > > > > =C2=A0drivers/gpu/drm/ttm/ttm_bo_util.c=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=
=C2=A0 15
> > > > > > > > ++-
> > > > > > > > =C2=A0drivers/gpu/drm/xe/xe_bo.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 2
> > > > > > > > +-
> > > > > > > > =C2=A0include/drm/ttm/ttm_bo.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 9
> > > > > > > > --
> > > > > > > > =C2=A08 files changed, 111 insertions(+), 112 deletions(-)
> > > > > > > >=20
> > > > > > > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > > > > > > b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > > > > > > index df3fcc2b1248e..642296602de69 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > > > > > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> > > > > > > > @@ -939,7 +939,7 @@ void i915_ttm_adjust_lru(struct
> > > > > > > > drm_i915_gem_object *obj)
> > > > > > > > =C2=A0	 * Don't manipulate the TTM LRUs while in TTM
> > > > > > > > bo
> > > > > > > > destruction.
> > > > > > > > =C2=A0	 * We're called through
> > > > > > > > i915_ttm_delete_mem_notify().
> > > > > > > > =C2=A0	 */
> > > > > > > > -	if (!kref_read(&bo->kref))
> > > > > > > > +	if (!kref_read(&bo->base.refcount))
> > > > > > > > =C2=A0		return;
> > > > > > > > =C2=A0
> > > > > > > > =C2=A0	/*
> > > > > > > > @@ -957,30 +957,21 @@ void i915_ttm_adjust_lru(struct
> > > > > > > > drm_i915_gem_object *obj)
> > > > > > > > =C2=A0	 *
> > > > > > > > =C2=A0	 * TODO: consider maybe also bumping the
> > > > > > > > shrinker
> > > > > > > > list
> > > > > > > > here
> > > > > > > > when we have
> > > > > > > > =C2=A0	 * already unpinned it, which should give us
> > > > > > > > something
> > > > > > > > more
> > > > > > > > like an LRU.
> > > > > > > > -	 *
> > > > > > > > -	 * TODO: There is a small window of
> > > > > > > > opportunity for
> > > > > > > > this
> > > > > > > > function to
> > > > > > > > -	 * get called from eviction after we've
> > > > > > > > dropped the
> > > > > > > > last
> > > > > > > > GEM
> > > > > > > > refcount,
> > > > > > > > -	 * but before the TTM deleted flag is set on
> > > > > > > > the
> > > > > > > > object.
> > > > > > > > Avoid
> > > > > > > > -	 * adjusting the shrinker list in such cases,
> > > > > > > > since
> > > > > > > > the
> > > > > > > > object is
> > > > > > > > -	 * not available to the shrinker anyway due to
> > > > > > > > its
> > > > > > > > zero
> > > > > > > > refcount.
> > > > > > > > -	 * To fix this properly we should move to a
> > > > > > > > TTM
> > > > > > > > shrinker
> > > > > > > > LRU
> > > > > > > > list for
> > > > > > > > -	 * these objects.
> > > > > > > > =C2=A0	 */
> > > > > > > > -	if (kref_get_unless_zero(&obj->base.refcount))
> > > > > > > > {
> > > > > > > > -		if (shrinkable !=3D obj-
> > > > > > > > >mm.ttm_shrinkable) {
> > > > > > > > -			if (shrinkable) {
> > > > > > > > -				if (obj->mm.madv =3D=3D
> > > > > > > > I915_MADV_WILLNEED)
> > > > > > > > -
> > > > > > > > 					__i915_gem_obj
> > > > > > > > ect_ma
> > > > > > > > ke_s
> > > > > > > > hrinkable(obj);
> > > > > > > > -				else
> > > > > > > > -
> > > > > > > > 					__i915_gem_obj
> > > > > > > > ect_ma
> > > > > > > > ke_p
> > > > > > > > urgeable(obj);
> > > > > > > > -			} else {
> > > > > > > > -
> > > > > > > > 				i915_gem_object_make_u
> > > > > > > > nshrin
> > > > > > > > kabl
> > > > > > > > e(obj);
> > > > > > > > -			}
> > > > > > > > -
> > > > > > > > -			obj->mm.ttm_shrinkable =3D
> > > > > > > > shrinkable;
> > > > > > > > +	i915_gem_object_get(obj);
> > > > > > > > +	if (shrinkable !=3D obj->mm.ttm_shrinkable) {
> > > > > > > > +		if (shrinkable) {
> > > > > > > > +			if (obj->mm.madv =3D=3D
> > > > > > > > I915_MADV_WILLNEED)
> > > > > > > > +				__i915_gem_object_make
> > > > > > > > _shrin
> > > > > > > > kabl
> > > > > > > > e(ob
> > > > > > > > j);
> > > > > > > > +			else
> > > > > > > > +				__i915_gem_object_make
> > > > > > > > _purge
> > > > > > > > able
> > > > > > > > (obj
> > > > > > > > );
> > > > > > > > +		} else {
> > > > > > > > +			i915_gem_object_make_unshrinka
> > > > > > > > ble(ob
> > > > > > > > j);
> > > > > > > > =C2=A0		}
> > > > > > > > -		i915_gem_object_put(obj);
> > > > > > > > +
> > > > > > > > +		obj->mm.ttm_shrinkable =3D shrinkable;
> > > > > > > > =C2=A0	}
> > > > > > > > +	i915_gem_object_put(obj);
> > > > > > > > =C2=A0
> > > > > > > > =C2=A0	/*
> > > > > > > > =C2=A0	 * Put on the correct LRU list depending on
> > > > > > > > the MADV
> > > > > > > > status
> > > > > > > > diff --git
> > > > > > > > a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> > > > > > > > b/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> > > > > > > > index 56ad8ef325840..904cb4da6c9b3 100644
> > > > > > > > --- a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> > > > > > > > +++ b/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
> > > > > > > > @@ -127,7 +127,7 @@ static void
> > > > > > > > ttm_bo_init_reserved_sys_man(struct
> > > > > > > > kunit *test)
> > > > > > > > =C2=A0	dma_resv_unlock(bo->base.resv);
> > > > > > > > =C2=A0
> > > > > > > > =C2=A0	KUNIT_EXPECT_EQ(test, err, 0);
> > > > > > > > -	KUNIT_EXPECT_EQ(test, kref_read(&bo->kref),
> > > > > > > > 1);
> > > > > > > > +	KUNIT_EXPECT_EQ(test, kref_read(&bo-
> > > > > > > > >base.refcount),
> > > > > > > > 1);
> > > > > > > > =C2=A0	KUNIT_EXPECT_PTR_EQ(test, bo->bdev, priv-
> > > > > > > > >ttm_dev);
> > > > > > > > =C2=A0	KUNIT_EXPECT_EQ(test, bo->type, bo_type);
> > > > > > > > =C2=A0	KUNIT_EXPECT_EQ(test, bo->page_alignment,
> > > > > > > > PAGE_SIZE);
> > > > > > > > @@ -176,7 +176,7 @@ static void
> > > > > > > > ttm_bo_init_reserved_mock_man(struct
> > > > > > > > kunit *test)
> > > > > > > > =C2=A0	dma_resv_unlock(bo->base.resv);
> > > > > > > > =C2=A0
> > > > > > > > =C2=A0	KUNIT_EXPECT_EQ(test, err, 0);
> > > > > > > > -	KUNIT_EXPECT_EQ(test, kref_read(&bo->kref),
> > > > > > > > 1);
> > > > > > > > +	KUNIT_EXPECT_EQ(test, kref_read(&bo-
> > > > > > > > >base.refcount),
> > > > > > > > 1);
> > > > > > > > =C2=A0	KUNIT_EXPECT_PTR_EQ(test, bo->bdev, priv-
> > > > > > > > >ttm_dev);
> > > > > > > > =C2=A0	KUNIT_EXPECT_EQ(test, bo->type, bo_type);
> > > > > > > > =C2=A0	KUNIT_EXPECT_EQ(test, ctx.bytes_moved, size);
> > > > > > > > @@ -969,6 +969,8 @@ static void
> > > > > > > > ttm_bo_validate_allowed_only_evict(struct kunit *test)
> > > > > > > > =C2=A0	ttm_mock_manager_fini(priv->ttm_dev,
> > > > > > > > mem_multihop);
> > > > > > > > =C2=A0}
> > > > > > > > =C2=A0
> > > > > > > > +extern const struct drm_gem_object_funcs
> > > > > > > > ttm_deleted_object_funcs;
> > > > > > > > +
> > > > > > > > =C2=A0static void ttm_bo_validate_deleted_evict(struct kuni=
t
> > > > > > > > *test)
> > > > > > > > =C2=A0{
> > > > > > > > =C2=A0	struct ttm_operation_ctx ctx_init =3D { },
> > > > > > > > ctx_val=C2=A0 =3D
> > > > > > > > { };
> > > > > > > > @@ -999,7 +1001,7 @@ static void
> > > > > > > > ttm_bo_validate_deleted_evict(struct
> > > > > > > > kunit *test)
> > > > > > > > =C2=A0	KUNIT_EXPECT_EQ(test,
> > > > > > > > ttm_resource_manager_usage(man),
> > > > > > > > big);
> > > > > > > > =C2=A0
> > > > > > > > =C2=A0	dma_resv_unlock(bo_big->base.resv);
> > > > > > > > -	bo_big->deleted =3D true;
> > > > > > > > +	bo_big->base.funcs =3D
> > > > > > > > &ttm_deleted_object_funcs;
> > > > > > > > =C2=A0
> > > > > > > > =C2=A0	bo_small =3D ttm_bo_kunit_init(test, test->priv,
> > > > > > > > small,
> > > > > > > > NULL);
> > > > > > > > =C2=A0	bo_small->type =3D bo_type;
> > > > > > > > diff --git
> > > > > > > > a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> > > > > > > > b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> > > > > > > > index 5cfe8f3f80d75..b7ab19e0e4b2b 100644
> > > > > > > > --- a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> > > > > > > > +++ b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
> > > > > > > > @@ -189,8 +189,6 @@ struct ttm_buffer_object
> > > > > > > > *ttm_bo_kunit_init(struct kunit *test,
> > > > > > > > =C2=A0	bo->bdev =3D devs->ttm_dev;
> > > > > > > > =C2=A0	bo->destroy =3D dummy_ttm_bo_destroy;
> > > > > > > > =C2=A0
> > > > > > > > -	kref_init(&bo->kref);
> > > > > > > > -
> > > > > > > > =C2=A0	return bo;
> > > > > > > > =C2=A0}
> > > > > > > > =C2=A0EXPORT_SYMBOL_GPL(ttm_bo_kunit_init);
> > > > > > > > diff --git a/drivers/gpu/drm/ttm/ttm_bo.c
> > > > > > > > b/drivers/gpu/drm/ttm/ttm_bo.c
> > > > > > > > index 3980f376e3ba4..2b470c1746f60 100644
> > > > > > > > --- a/drivers/gpu/drm/ttm/ttm_bo.c
> > > > > > > > +++ b/drivers/gpu/drm/ttm/ttm_bo.c
> > > > > > > > @@ -246,88 +246,84 @@ static void
> > > > > > > > ttm_bo_delayed_delete(struct
> > > > > > > > work_struct *work)
> > > > > > > > =C2=A0	ttm_bo_put(bo);
> > > > > > > > =C2=A0}
> > > > > > > > =C2=A0
> > > > > > > > -static void ttm_bo_release(struct kref *kref)
> > > > > > > > +/*
> > > > > > > > + * All other callbacks should never ever be called on
> > > > > > > > a
> > > > > > > > deleted
> > > > > > > > TTM
> > > > > > > > object.
> > > > > > > > + */
> > > > > > > > +const struct drm_gem_object_funcs
> > > > > > > > ttm_deleted_object_funcs =3D
> > > > > > > > {
> > > > > > > > +	.free =3D ttm_bo_free
> > > > > > > > +};
> > > > > > > > +EXPORT_SYMBOL_FOR_TESTS_ONLY(ttm_deleted_object_funcs)
> > > > > > > > ;
> > > > > > > > +
> > > > > > > > +/* Returns true if the BO is about to get deleted */
> > > > > > > > +static bool ttm_bo_is_zombie(struct ttm_buffer_object
> > > > > > > > *bo)
> > > > > > > > +{
> > > > > > > > +	return bo->base.funcs =3D=3D
> > > > > > > > &ttm_deleted_object_funcs;
> > > > > > > > +}
> > > > > > > > +
> > > > > > > > +void ttm_bo_fini(struct ttm_buffer_object *bo)
> > > > > > > > =C2=A0{
> > > > > > > > -	struct ttm_buffer_object *bo =3D
> > > > > > > > -	=C2=A0=C2=A0=C2=A0 container_of(kref, struct
> > > > > > > > ttm_buffer_object,
> > > > > > > > kref);
> > > > > > > > =C2=A0	struct ttm_device *bdev =3D bo->bdev;
> > > > > > > > =C2=A0	int ret;
> > > > > > > > =C2=A0
> > > > > > > > =C2=A0	WARN_ON_ONCE(bo->pin_count);
> > > > > > > > =C2=A0	WARN_ON_ONCE(bo->bulk_move);
> > > > > > > > =C2=A0
> > > > > > > > -	if (!bo->deleted) {
> > > > > > > > -		ret =3D ttm_bo_individualize_resv(bo);
> > > > > > > > -		if (ret) {
> > > > > > > > -			/* Last resort, if we fail to
> > > > > > > > allocate
> > > > > > > > memory for the
> > > > > > > > -			 * fences block for the BO to
> > > > > > > > become
> > > > > > > > idle
> > > > > > > > -			 */
> > > > > > > > -			dma_resv_wait_timeout(bo-
> > > > > > > > >base.resv,
> > > > > > > > -					=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
> > > > > > > > DMA_RESV_USAGE_BOOKKEEP, false,
> > > > > > > > -					=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 30 *
> > > > > > > > HZ);
> > > > > > > > -		}
> > > > > > > > +	ret =3D ttm_bo_individualize_resv(bo);
> > > > > > > > +	if (ret) {
> > > > > > > > +		/* Last resort, if we fail to allocate
> > > > > > > > memory
> > > > > > > > for
> > > > > > > > the
> > > > > > > > +		 * fences block for the BO to become
> > > > > > > > idle
> > > > > > > > +		 */
> > > > > > > > +		dma_resv_wait_timeout(bo->base.resv,
> > > > > > > > DMA_RESV_USAGE_BOOKKEEP,
> > > > > > > > +				=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 false, 30 * HZ);
> > > > > > > > +	}
> > > > > > > > =C2=A0
> > > > > > > > -		if (bdev->funcs->release_notify)
> > > > > > > > -			bdev->funcs-
> > > > > > > > >release_notify(bo);
> > > > > > > > +	if (bo->bdev->funcs->release_notify)
> > > > > > > > +		bo->bdev->funcs->release_notify(bo);
> > > > > > > > =C2=A0
> > > > > > > > -		drm_vma_offset_remove(bdev-
> > > > > > > > >vma_manager,
> > > > > > > > &bo-
> > > > > > > > > base.vma_node);
> > > > > > > > -		ttm_mem_io_free(bdev, bo->resource);
> > > > > > > > +	drm_vma_offset_remove(bdev->vma_manager, &bo-
> > > > > > > > > base.vma_node);
> > > > > > > > +	ttm_mem_io_free(bdev, bo->resource);
> > > > > > > > =C2=A0
> > > > > > > > -		if (!dma_resv_test_signaled(&bo-
> > > > > > > > >base._resv,
> > > > > > > > -					=C2=A0=C2=A0=C2=A0
> > > > > > > > DMA_RESV_USAGE_BOOKKEEP)
> > > > > > > > > >=20
> > > > > > > > -		=C2=A0=C2=A0=C2=A0 (want_init_on_free() && (bo->ttm
> > > > > > > > !=3D
> > > > > > > > NULL))
> > > > > > > > > >=20
> > > > > > > > -		=C2=A0=C2=A0=C2=A0 bo->type =3D=3D ttm_bo_type_sg ||
> > > > > > > > -		=C2=A0=C2=A0=C2=A0 !dma_resv_trylock(bo->base.resv))
> > > > > > > > {
> > > > > > > > -			/* The BO is not idle,
> > > > > > > > resurrect it
> > > > > > > > for
> > > > > > > > delayed destroy */
> > > > > > > > -			ttm_bo_flush_all_fences(bo);
> > > > > > > > -			bo->deleted =3D true;
> > > > > > > > +	if (!dma_resv_test_signaled(&bo->base._resv,
> > > > > > > > DMA_RESV_USAGE_BOOKKEEP) ||
> > > > > > > > +	=C2=A0=C2=A0=C2=A0 (want_init_on_free() && (bo->ttm !=3D =
NULL))
> > > > > > > > ||
> > > > > > > > +	=C2=A0=C2=A0=C2=A0 bo->type =3D=3D ttm_bo_type_sg ||
> > > > > > > > +	=C2=A0=C2=A0=C2=A0 !dma_resv_trylock(bo->base.resv)) {
> > > > > > > > +		/* The BO is not idle, resurrect it
> > > > > > > > for
> > > > > > > > delayed
> > > > > > > > destroy */
> > > > > > > > +		ttm_bo_flush_all_fences(bo);
> > > > > > > > =C2=A0
> > > > > > > > -			spin_lock(&bdev->lru_lock);
> > > > > > > > -
> > > > > > > > -			/*
> > > > > > > > -			 * Make pinned bos immediately
> > > > > > > > available
> > > > > > > > to
> > > > > > > > -			 * shrinkers, now that they
> > > > > > > > are
> > > > > > > > queued
> > > > > > > > for
> > > > > > > > -			 * destruction.
> > > > > > > > -			 *
> > > > > > > > -			 * FIXME: QXL is triggering
> > > > > > > > this.
> > > > > > > > Can be
> > > > > > > > removed when the
> > > > > > > > -			 * driver is fixed.
> > > > > > > > -			 */
> > > > > > > > -			if (bo->pin_count) {
> > > > > > > > -				bo->pin_count =3D 0;
> > > > > > > > -
> > > > > > > > 				ttm_resource_move_to_l
> > > > > > > > ru_tai
> > > > > > > > l(bo-
> > > > > > > > > resource);
> > > > > > > > -			}
> > > > > > > > +		spin_lock(&bo->bdev->lru_lock);
> > > > > > > > =C2=A0
> > > > > > > > -			kref_init(&bo->kref);
> > > > > > > > -			spin_unlock(&bdev->lru_lock);
> > > > > > > > +		/*
> > > > > > > > +		 * Make pinned bos immediately
> > > > > > > > available to
> > > > > > > > +		 * shrinkers, now that they are queued
> > > > > > > > for
> > > > > > > > +		 * destruction.
> > > > > > > > +		 *
> > > > > > > > +		 * FIXME: QXL is triggering this. Can
> > > > > > > > be
> > > > > > > > removed
> > > > > > > > when the
> > > > > > > > +		 * driver is fixed.
> > > > > > > > +		 */
> > > > > > > > +		if (bo->pin_count) {
> > > > > > > > +			bo->pin_count =3D 0;
> > > > > > > > +			ttm_resource_move_to_lru_tail(
> > > > > > > > bo-
> > > > > > > > > resource);
> > > > > > > > +		}
> > > > > > > > =C2=A0
> > > > > > > > -			INIT_WORK(&bo->delayed_delete,
> > > > > > > > ttm_bo_delayed_delete);
> > > > > > > > +		kref_init(&bo->base.refcount);
> > > > > > > > +		bo->base.funcs =3D
> > > > > > > > &ttm_deleted_object_funcs;
> > > > > > > > +		spin_unlock(&bo->bdev->lru_lock);
> > > > > > > > =C2=A0
> > > > > > > > -			/* Schedule the worker on the
> > > > > > > > closest
> > > > > > > > NUMA
> > > > > > > > node. This
> > > > > > > > -			 * improves performance since
> > > > > > > > system
> > > > > > > > memory
> > > > > > > > might be
> > > > > > > > -			 * cleared on free and that is
> > > > > > > > best
> > > > > > > > done
> > > > > > > > on
> > > > > > > > a CPU core
> > > > > > > > -			 * close to it.
> > > > > > > > -			 */
> > > > > > > > -			queue_work_node(bdev-
> > > > > > > > >pool.nid,
> > > > > > > > bdev-
> > > > > > > > > wq,
> > > > > > > > &bo->delayed_delete);
> > > > > > > > -			return;
> > > > > > > > -		}
> > > > > > > > +		INIT_WORK(&bo->delayed_delete,
> > > > > > > > ttm_bo_delayed_delete);
> > > > > > > > =C2=A0
> > > > > > > > +		/* Schedule the worker on the closest
> > > > > > > > NUMA
> > > > > > > > node.
> > > > > > > > This
> > > > > > > > +		 * improves performance since system
> > > > > > > > memory
> > > > > > > > might be
> > > > > > > > +		 * cleared on free and that is best
> > > > > > > > done on
> > > > > > > > a
> > > > > > > > CPU
> > > > > > > > core
> > > > > > > > +		 * close to it.
> > > > > > > > +		 */
> > > > > > > > +		queue_work_node(bdev->pool.nid, bdev-
> > > > > > > > >wq,
> > > > > > > > &bo-
> > > > > > > > > delayed_delete);
> > > > > > > > +	} else {
> > > > > > > > =C2=A0		ttm_bo_cleanup_memtype_use(bo);
> > > > > > > > =C2=A0		dma_resv_unlock(bo->base.resv);
> > > > > > > > -	}
> > > > > > > > =C2=A0
> > > > > > > > -	atomic_dec(&ttm_glob.bo_count);
> > > > > > > > -	bo->destroy(bo);
> > > > > > > > -}
> > > > > > > > -
> > > > > > > > -/* TODO: remove! */
> > > > > > > > -void ttm_bo_put(struct ttm_buffer_object *bo)
> > > > > > > > -{
> > > > > > > > -	kref_put(&bo->kref, ttm_bo_release);
> > > > > > > > -}
> > > > > > > > -
> > > > > > > > -void ttm_bo_fini(struct ttm_buffer_object *bo)
> > > > > > > > -{
> > > > > > > > -	ttm_bo_put(bo);
> > > > > > > > +		atomic_dec(&ttm_glob.bo_count);
> > > > > > > > +		bo->destroy(bo);
> > > > > > > > +	}
> > > > > > > > =C2=A0}
> > > > > > > > =C2=A0EXPORT_SYMBOL(ttm_bo_fini);
> > > > > > > > =C2=A0
> > > > > > > > @@ -470,7 +466,7 @@ int ttm_bo_evict_first(struct
> > > > > > > > ttm_device
> > > > > > > > *bdev,
> > > > > > > > struct ttm_resource_manager *man
> > > > > > > > =C2=A0	if (!bo->resource || bo->resource->mem_type !=3D
> > > > > > > > mem_type)
> > > > > > > > =C2=A0		goto out_bo_moved;
> > > > > > > > =C2=A0
> > > > > > > > -	if (bo->deleted) {
> > > > > > > > +	if (ttm_bo_is_zombie(bo)) {
> > > > > > > > =C2=A0		ret =3D ttm_bo_wait_ctx(bo, ctx);
> > > > > > > > =C2=A0		if (!ret)
> > > > > > > > =C2=A0			ttm_bo_cleanup_memtype_use(bo)
> > > > > > > > ;
> > > > > > > > @@ -524,7 +520,7 @@ static s64 ttm_bo_evict_cb(struct
> > > > > > > > ttm_lru_walk
> > > > > > > > *walk, struct ttm_buffer_object *
> > > > > > > > =C2=A0	if (bo->pin_count || !bo->bdev->funcs-
> > > > > > > > > eviction_valuable(bo,
> > > > > > > > evict_walk->place))
> > > > > > > > =C2=A0		return 0;
> > > > > > > > =C2=A0
> > > > > > > > -	if (bo->deleted) {
> > > > > > > > +	if (ttm_bo_is_zombie(bo)) {
> > > > > > > > =C2=A0		lret =3D ttm_bo_wait_ctx(bo, walk-
> > > > > > > > >arg.ctx);
> > > > > > > > =C2=A0		if (!lret)
> > > > > > > > =C2=A0			ttm_bo_cleanup_memtype_use(bo)
> > > > > > > > ;
> > > > > > > > @@ -624,7 +620,6 @@ static int
> > > > > > > > ttm_bo_evict_alloc(struct
> > > > > > > > ttm_device
> > > > > > > > *bdev,
> > > > > > > > =C2=A0void ttm_bo_pin(struct ttm_buffer_object *bo)
> > > > > > > > =C2=A0{
> > > > > > > > =C2=A0	dma_resv_assert_held(bo->base.resv);
> > > > > > > > -	WARN_ON_ONCE(!kref_read(&bo->kref));
> > > > > > > > =C2=A0	spin_lock(&bo->bdev->lru_lock);
> > > > > > > > =C2=A0	if (bo->resource)
> > > > > > > > =C2=A0		ttm_resource_del_bulk_move(bo-
> > > > > > > > >resource,
> > > > > > > > bo);
> > > > > > > > @@ -643,7 +638,6 @@ EXPORT_SYMBOL(ttm_bo_pin);
> > > > > > > > =C2=A0void ttm_bo_unpin(struct ttm_buffer_object *bo)
> > > > > > > > =C2=A0{
> > > > > > > > =C2=A0	dma_resv_assert_held(bo->base.resv);
> > > > > > > > -	WARN_ON_ONCE(!kref_read(&bo->kref));
> > > > > > > > =C2=A0	if (WARN_ON_ONCE(!bo->pin_count))
> > > > > > > > =C2=A0		return;
> > > > > > > > =C2=A0
> > > > > > > > @@ -934,7 +928,6 @@ int ttm_bo_init_reserved(struct
> > > > > > > > ttm_device
> > > > > > > > *bdev,
> > > > > > > > struct ttm_buffer_object *bo,
> > > > > > > > =C2=A0{
> > > > > > > > =C2=A0	int ret;
> > > > > > > > =C2=A0
> > > > > > > > -	kref_init(&bo->kref);
> > > > > > > > =C2=A0	bo->bdev =3D bdev;
> > > > > > > > =C2=A0	bo->type =3D type;
> > > > > > > > =C2=A0	bo->page_alignment =3D alignment;
> > > > > > > > @@ -1131,8 +1124,8 @@ ttm_bo_swapout_cb(struct
> > > > > > > > ttm_lru_walk
> > > > > > > > *walk,
> > > > > > > > struct ttm_buffer_object *bo)
> > > > > > > > =C2=A0		goto out;
> > > > > > > > =C2=A0	}
> > > > > > > > =C2=A0
> > > > > > > > -	if (bo->deleted) {
> > > > > > > > -		pgoff_t num_pages =3D tt->num_pages;
> > > > > > > > +	if (ttm_bo_is_zombie(bo)) {
> > > > > > > > +		pgoff_t num_pages =3D bo->ttm-
> > > > > > > > >num_pages;
> > > > > > > > =C2=A0
> > > > > > > > =C2=A0		ret =3D ttm_bo_wait_ctx(bo, ctx);
> > > > > > > > =C2=A0		if (ret)
> > > > > > > > diff --git a/drivers/gpu/drm/ttm/ttm_bo_internal.h
> > > > > > > > b/drivers/gpu/drm/ttm/ttm_bo_internal.h
> > > > > > > > index e0d48eac74b03..ded2a47be0bcb 100644
> > > > > > > > --- a/drivers/gpu/drm/ttm/ttm_bo_internal.h
> > > > > > > > +++ b/drivers/gpu/drm/ttm/ttm_bo_internal.h
> > > > > > > > @@ -27,6 +27,14 @@
> > > > > > > > =C2=A0
> > > > > > > > =C2=A0#include <drm/ttm/ttm_bo.h>
> > > > > > > > =C2=A0
> > > > > > > > +static inline void ttm_bo_free(struct drm_gem_object
> > > > > > > > *gobj)
> > > > > > > > +{
> > > > > > > > +	struct ttm_buffer_object *bo =3D
> > > > > > > > container_of(gobj,
> > > > > > > > typeof(*bo), base);
> > > > > > > > +
> > > > > > > > +	atomic_dec(&ttm_glob.bo_count);
> > > > > > > > +	bo->destroy(bo);
> > > > > > > > +}
> > > > > > > > +
> > > > > > > > =C2=A0/**
> > > > > > > > =C2=A0 * ttm_bo_get - reference a struct ttm_buffer_object
> > > > > > > > =C2=A0 *
> > > > > > > > @@ -34,7 +42,7 @@
> > > > > > > > =C2=A0 */
> > > > > > > > =C2=A0static inline void ttm_bo_get(struct ttm_buffer_objec=
t
> > > > > > > > *bo)
> > > > > > > > =C2=A0{
> > > > > > > > -	kref_get(&bo->kref);
> > > > > > > > +	drm_gem_object_get(&bo->base);
> > > > > > > > =C2=A0}
> > > > > > > > =C2=A0
> > > > > > > > =C2=A0/**
> > > > > > > > @@ -50,11 +58,14 @@ static inline void
> > > > > > > > ttm_bo_get(struct
> > > > > > > > ttm_buffer_object *bo)
> > > > > > > > =C2=A0static inline __must_check struct ttm_buffer_object *
> > > > > > > > =C2=A0ttm_bo_get_unless_zero(struct ttm_buffer_object *bo)
> > > > > > > > =C2=A0{
> > > > > > > > -	if (!kref_get_unless_zero(&bo->kref))
> > > > > > > > +	if (!kref_get_unless_zero(&bo->base.refcount))
> > > > > > > > =C2=A0		return NULL;
> > > > > > > > =C2=A0	return bo;
> > > > > > > > =C2=A0}
> > > > > > > > =C2=A0
> > > > > > > > -void ttm_bo_put(struct ttm_buffer_object *bo);
> > > > > > > > +static inline void ttm_bo_put(struct ttm_buffer_object
> > > > > > > > *bo)
> > > > > > > > +{
> > > > > > > > +	drm_gem_object_put(&bo->base);
> > > > > > > > +}
> > > > > > > > =C2=A0
> > > > > > > > =C2=A0#endif
> > > > > > > > diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c
> > > > > > > > b/drivers/gpu/drm/ttm/ttm_bo_util.c
> > > > > > > > index 3e3c201a02226..7ed085adf1c9b 100644
> > > > > > > > --- a/drivers/gpu/drm/ttm/ttm_bo_util.c
> > > > > > > > +++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
> > > > > > > > @@ -41,6 +41,18 @@
> > > > > > > > =C2=A0
> > > > > > > > =C2=A0#include "ttm_bo_internal.h"
> > > > > > > > =C2=A0
> > > > > > > > +static void ttm_transfer_object_free(struct
> > > > > > > > drm_gem_object
> > > > > > > > *obj)
> > > > > > > > +{
> > > > > > > > +	struct ttm_buffer_object *bo =3D
> > > > > > > > +		container_of(obj, struct
> > > > > > > > ttm_buffer_object,
> > > > > > > > base);
> > > > > > > > +
> > > > > > > > +	ttm_bo_fini(bo);
> > > > > > > > +}
> > > > > > > > +
> > > > > > > > +const struct drm_gem_object_funcs
> > > > > > > > ttm_transfer_object_funcs
> > > > > > > > =3D {
> > > > > > > > +	.free =3D ttm_transfer_object_free,
> > > > > > > > +};
> > > > > > > > +
> > > > > > > > =C2=A0struct ttm_transfer_obj {
> > > > > > > > =C2=A0	struct ttm_buffer_object base;
> > > > > > > > =C2=A0	struct ttm_buffer_object *bo;
> > > > > > > > @@ -247,7 +259,8 @@ static int
> > > > > > > > ttm_buffer_object_transfer(struct
> > > > > > > > ttm_buffer_object *bo,
> > > > > > > > =C2=A0	atomic_inc(&ttm_glob.bo_count);
> > > > > > > > =C2=A0	drm_vma_node_reset(&fbo->base.base.vma_node);
> > > > > > > > =C2=A0
> > > > > > > > -	kref_init(&fbo->base.kref);
> > > > > > > > +	kref_init(&fbo->base.base.refcount);
> > > > > > > > +	fbo->base.base.funcs =3D
> > > > > > > > &ttm_transfer_object_funcs;
> > > > > > > > =C2=A0	fbo->base.destroy =3D &ttm_transfered_destroy;
> > > > > > > > =C2=A0	fbo->base.pin_count =3D 0;
> > > > > > > > =C2=A0	if (bo->type !=3D ttm_bo_type_sg)
> > > > > > > > diff --git a/drivers/gpu/drm/xe/xe_bo.c
> > > > > > > > b/drivers/gpu/drm/xe/xe_bo.c
> > > > > > > > index 85e6d9a0f575b..5843f850339c7 100644
> > > > > > > > --- a/drivers/gpu/drm/xe/xe_bo.c
> > > > > > > > +++ b/drivers/gpu/drm/xe/xe_bo.c
> > > > > > > > @@ -1651,7 +1651,7 @@ static bool
> > > > > > > > xe_ttm_bo_lock_in_destructor(struct
> > > > > > > > ttm_buffer_object *ttm_bo)
> > > > > > > > =C2=A0	struct xe_device *xe =3D
> > > > > > > > ttm_to_xe_device(ttm_bo-
> > > > > > > > > bdev);
> > > > > > > > =C2=A0	bool locked;
> > > > > > > > =C2=A0
> > > > > > > > -	xe_assert(xe, !kref_read(&ttm_bo->kref));
> > > > > > > > +	xe_assert(xe, !kref_read(&ttm_bo-
> > > > > > > > >base.refcount));
> > > > > > > > =C2=A0
> > > > > > > > =C2=A0	/*
> > > > > > > > =C2=A0	 * We can typically only race with TTM
> > > > > > > > trylocking
> > > > > > > > under
> > > > > > > > the
> > > > > > > > diff --git a/include/drm/ttm/ttm_bo.h
> > > > > > > > b/include/drm/ttm/ttm_bo.h
> > > > > > > > index 8310bc3d55f90..1eae9eea5ff32 100644
> > > > > > > > --- a/include/drm/ttm/ttm_bo.h
> > > > > > > > +++ b/include/drm/ttm/ttm_bo.h
> > > > > > > > @@ -78,11 +78,8 @@ enum ttm_bo_type {
> > > > > > > > =C2=A0 * @type: The bo type.
> > > > > > > > =C2=A0 * @page_alignment: Page alignment.
> > > > > > > > =C2=A0 * @destroy: Destruction function. If NULL, kfree is
> > > > > > > > used.
> > > > > > > > - * @kref: Reference count of this buffer object. When
> > > > > > > > this
> > > > > > > > refcount
> > > > > > > > reaches
> > > > > > > > - * zero, the object is destroyed or put on the delayed
> > > > > > > > delete
> > > > > > > > list.
> > > > > > > > =C2=A0 * @resource: structure describing current placement.
> > > > > > > > =C2=A0 * @ttm: TTM structure holding system pages.
> > > > > > > > - * @deleted: True if the object is only a zombie and
> > > > > > > > already
> > > > > > > > deleted.
> > > > > > > > =C2=A0 * @bulk_move: The bulk move object.
> > > > > > > > =C2=A0 * @priority: Priority for LRU, BOs with lower
> > > > > > > > priority are
> > > > > > > > evicted
> > > > > > > > first.
> > > > > > > > =C2=A0 * @pin_count: Pin count.
> > > > > > > > @@ -109,17 +106,11 @@ struct ttm_buffer_object {
> > > > > > > > =C2=A0	uint32_t page_alignment;
> > > > > > > > =C2=A0	void (*destroy) (struct ttm_buffer_object *);
> > > > > > > > =C2=A0
> > > > > > > > -	/*
> > > > > > > > -	* Members not needing protection.
> > > > > > > > -	*/
> > > > > > > > -	struct kref kref;
> > > > > > > > -
> > > > > > > > =C2=A0	/*
> > > > > > > > =C2=A0	 * Members protected by the bo::resv::reserved
> > > > > > > > lock.
> > > > > > > > =C2=A0	 */
> > > > > > > > =C2=A0	struct ttm_resource *resource;
> > > > > > > > =C2=A0	struct ttm_tt *ttm;
> > > > > > > > -	bool deleted;
> > > > > > > > =C2=A0	struct ttm_lru_bulk_move *bulk_move;
> > > > > > > > =C2=A0	unsigned priority;
> > > > > > > > =C2=A0	unsigned pin_count;
