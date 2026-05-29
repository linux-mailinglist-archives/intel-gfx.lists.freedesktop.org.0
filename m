Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YMEmIZl3GWqwwwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:25:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E416F60194A
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 13:25:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B09F510FD54;
	Fri, 29 May 2026 11:25:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XpK81qP7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 013CD10FD54
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2026 11:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780053909; x=1811589909;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=tZcgQjoZzS4r+G2zDnhFWhWWN+HuYdVbBOewapsasFk=;
 b=XpK81qP7G5Z/AY6BVUvX+LvaaWaK3kYnmFLlbhikRUxx+6EwcdQYeoSZ
 ENyJ+7N7AdPViQb13zMFWlsmONdUJ0B82uRgEdcIL+78RKQgpnzKoy7hD
 Rwv6f7pO8sZdfAgFHmE8klzhkZifPPrgamg4mDWQMxreLfrNLeriOhtvF
 dxP6XlLwUqdNut8JE4pepA95pX8U1YJAuOHHX5qwbNVMF0KxawC4IPUOJ
 jZXOvojT8Yf+/zPD7LPuprsWCNugPdr05iBrWi6jWZiFNYNhBef6OcNPk
 WcdTQC/4NMFKoG+ZxIT/0oMXAnvxhaPe9eCQA7pBDjulioRtQv6lAHKJp w==;
X-CSE-ConnectionGUID: 6ygAOno1SsSGSU6ogsHyew==
X-CSE-MsgGUID: FZJMQotPSKGmTvuPtw4U+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="91476588"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="91476588"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:25:08 -0700
X-CSE-ConnectionGUID: 0mfHzOA4S4WuCThhEDI3/Q==
X-CSE-MsgGUID: 6l8Nrq3kRHGycsfjOPvD3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="238425213"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.65])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 04:25:07 -0700
Message-ID: <f269fded6370d32d432c890a4ad381c72435fbae.camel@linux.intel.com>
Subject: Re: [RFC 1/2] drm/i915/shmem: Prevent overflows on small segments
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Andi Shyti <andi.shyti@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Date: Fri, 29 May 2026 13:25:04 +0200
In-Reply-To: <DIUD102LPZ8R.166MO2E63L1MG@intel.com>
References: <20260527140804.2866189-1-krzysztof.karas@intel.com>
 <20260527140804.2866189-2-krzysztof.karas@intel.com>
 <DIUD102LPZ8R.166MO2E63L1MG@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.3 
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.brzezinka@intel.com,m:krzysztof.karas@intel.com,m:andi.shyti@linux.intel.com,m:krzysztof.niemiec@intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	HAS_ORG_HEADER(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Queue-Id: E416F60194A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Sebastian,

On Thu, 2026-05-28 at 15:55 +0200, Sebastian Brzezinka wrote:
> Hi Krzysztof,
>=20
> On Wed May 27, 2026 at 4:08 PM CEST, Krzysztof Karas wrote:
> > With addition of commit 029ae067431a
> > ("drm/i915: Fix potential overflow of shmem scatterlist length")
> > max_segment size was included in calculating a number of pages
> > for the scatterlist. This meant that segment sizes considerably
> > smaller than number of pages in a folio [1], were not enough to
> > jump to the next folio. In result, sg_set_folio() was called
> > multiple times with nr_pages smaller than folio size, using
> > many scatterlists, all pointing to the beginning pages of the
> > folio and never fully covering its range of pages and corrupting
> > mappings.
> >=20
> > [1] See shmem_get_pages(), where segment size is set to
> > PAGE_SIZE.
> >=20
> > Suggested-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > Fixes: 029ae067431a ("drm/i915: Fix potential overflow of shmem scatter=
list length")
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/158=
16
> > Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/dr=
m/i915/gem/i915_gem_shmem.c
> > index 06543ae60706..ac9b263c341a 100644
> > --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> > +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> > @@ -156,7 +156,7 @@ int shmem_sg_alloc_table(struct drm_i915_private *i=
915, struct sg_table *st,
> >  		nr_pages =3D min_array(((unsigned long[]) {
> >  					folio_nr_pages(folio),
> >  					page_count - i,
> > -					max_segment / PAGE_SIZE,
> > +					i915_sg_segment_size(i915->drm.dev) / PAGE_SIZE,
> I don't think we can use i915_sg_segment_size() here, please correct me
> if I'm wrong.

Looking at this again, I think you are right to some extent, and
unfortunately my suggestion to use i915_sg_segment_size() here wasn't based
on sufficiently deep analysis of the issue Krzysztof was trying to address.

While my commit 029ae067431a ("drm/i915: Fix potential overflow of shmem
scatterlist length") suggested that clamping nr_pages also to max_segment
was needed only to avoid the overflow, in fact it also changed the way
pages were allocated when current scatterlist length exceeded max_segment
and a new scatterlist was allocated.  Assuming the intention of calling
shmem_sg_alloc_table() again with max_segment =3D=3D PAGE_SIZE once it fail=
ed
when called with max_segment =3D=3D i915_sg_segment_size() was to allocate
pages one per scatterlist, that rule was never followed after commit
0b62af28f249b ("i915: convert shmem_sg_free_table() to use a folio_batch")
and newly allocated scatterlists were still populated with nr_pages not
clamped to max_segment =3D=3D PAGE_SIZE.  With my change addressing the
potential overflow, number of pages allocated to a single scatterlist is
now always clamped to max_segment, and one page per scatterlist mode should
now work as designed.

That said, I think we need to revisit the issue identified by Krzysztof and
try to find its root cause again.  Maybe we should also revisit either the
idea or implementation of allocating one page per scatterlist in case when
allocating larger chunks failed, because that seems to be strictly related
to what Krzysztof describes as problematic in his commit description ("...
sg_set_folio() was called multiple times with nr_pages smaller than folio
size, using many scatterlists, all pointing to the beginning pages of the
folio and never fully covering its range of pages ...").

Thanks,
Janusz

>=20
> When DMA mapping fails, shmem_get_pages() sets max_segment =3D PAGE_SIZE
> and retries. If we replace max_segment with i915_sg_segment_size() in the
> min_array, nothing really changes between the first and second attempt,
> we end up computing the same nr_pages as before and building the same
> sg table that just failed to map.
>=20
> It also breaks the sg->length check on line 163. After the first folio,
> sg->length equals i915_sg_segment_size(). With max_segment=3DPAGE_SIZE th=
e
> check sg->length >=3D max_segment is always true, never and the PAGE_SIZE
> retry has no effect.
