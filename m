Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3zLFEIZsV2ogNwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 13:18:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 936C575D7E9
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 13:18:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=TeE0L6QB;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FBFB10EFE7;
	Wed, 15 Jul 2026 11:18:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22D6510EFDA;
 Wed, 15 Jul 2026 11:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784114306; x=1815650306;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=CC6P2wrKIcoZEaiIEWAWWi4FyWI8km0hqh7Ch4T9O7U=;
 b=TeE0L6QB+8tRi0KNvYuc3s17tfNx9U1Ta9gYamUIOspQpMsqIkun8V5P
 fPFpKhg0Y7KSv7HZ2Yl5gnGMEedTBtDqF8E/MPS7FIC/J1bxpxBTuHaAe
 0+Odc8l89ooFJ23XsoJ9qQiTb4CU1ZTKQ+A9XCcZSQCELJIXNfjEDbHJs
 nteUURrZ0yWNDIK2L5Vu1pKp/G89bPGLzrKVrZYUKLnqh1qutozR8M71x
 HPZvsYp42Xn9MmVE6T6q0Z8wbNmMuqxVe6WKEvT3Sq3JcBHr50Wfqb2OV
 n/nuMyUSRtHgi25XVtjsy+ZfCD/K3Eg/qfEmTFSxWSXl7DSdFHxOkT9nl Q==;
X-CSE-ConnectionGUID: rcBPlDzoRb2CFY8X+yA5Aw==
X-CSE-MsgGUID: efQAB7hTQXqSJ9uwlMmzKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="84865540"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="84865540"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 04:18:25 -0700
X-CSE-ConnectionGUID: u2o0R7ErSQCujMnC+Ky4Ww==
X-CSE-MsgGUID: wRSBNKoKSQe4c+CmmbgppA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="251743504"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.25])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 04:18:23 -0700
Message-ID: <18bc657539f1eeacf116e9d7a2b3c823017b953f.camel@linux.intel.com>
Subject: Re: [PATCH v3 1/5] drm/i915/gem: Count mapped pages in a folio
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>, 
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 iommu@lists.linux.dev
Cc: Andi Shyti <andi.shyti@linux.intel.com>, Robin Murphy
 <robin.murphy@arm.com>,  Jason Gunthorpe	 <jgg@ziepe.ca>,
 =?UTF-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>,  Sebastian
 Brzezinka <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Date: Wed, 15 Jul 2026 13:18:21 +0200
In-Reply-To: <20260713095812.1014365-2-krzysztof.karas@intel.com>
References: <20260713095812.1014365-1-krzysztof.karas@intel.com>
 <20260713095812.1014365-2-krzysztof.karas@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.60.2 
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gitlab.freedesktop.org:url,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 936C575D7E9

Hi Krzysztof,

Since reading your commit description I was not really able to understand
what the issue you were trying to fix was about, I'm providing some=C2=A0
comments based on my understanding of the issue.

On Mon, 2026-07-13 at 09:58 +0000, Krzysztof Karas wrote:
> With addition of commit 029ae067431a
> ("drm/i915: Fix potential overflow of shmem scatterlist length")
> max_segment size was included in calculating a number of pages
> for the scatterlist. This meant that segment sizes considerably
> smaller than number of pages in a folio (see shmem_get_pages(),
> rebuild_st label for context),=C2=A0

Two values of max_segment only could and still can be expected, either=20
maximum capacity of a scatterlist, or PAGE_SIZE.  Before the blamed=20
commit, that argument was mostly (unintentionally?) not respected when=20
allocating pages from a folio to a scatterlist.  IOW, complete folios were=
=20
always allocated, possibly overloading the scatterlist capacity, =20
virtually never limited to PAGE_SIZE when requested via max_segment.

The blamed commit took care of scatterlist overloading, and
unintentionally=C2=A0also of respecting the max_segment =3D=3D PAGE_SIZE ca=
se, by=C2=A0
limiting the number of folio pages allocated to a single scatterlist not
to=C2=A0exceed max_segment, but failed to take care of correctly allocating=
=C2=A0
remaining pages from folios larger than max_segment.  That's what this=C2=
=A0
commit description should tell us about, I believe.

> were not enough to jump to the
> next folio, which has never been a problem before folios have
> been intoduced. In result, sg_set_folio() was called multiple
> times with nr_pages smaller than folio size, using multitude of
> scatterlists,=C2=A0

I don't think it matters how many times sg_set_folio() was called or how=
=20
many scatterlists were used, since we may expect them to be huge when=20
shmem_sg_alloc_table() is called  with max_segment =3D=3D PAGE_SIZE.

> all pointing to the beginning pages of the folio
> and never fully covering its range of pages.

Yeah, that's the real issue.  An offset within a folio should be tracked
and used when allocating pages still left in the folio.

> Track how many pages have already been counted in a folio

... and use that number as an offset on consecutive allocations from the=
=20
same folio ...

> to ensure it is fully covered before reading next folio.

> Fixes: 029ae067431a ("drm/i915: Fix potential overflow of shmem scatterli=
st length")
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/15816
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
> v3:
>  * Fixed a bug that caused first folio to never be considered.
>=20
>  drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 120 +++++++++++++---------
>  1 file changed, 70 insertions(+), 50 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/=
i915/gem/i915_gem_shmem.c
> index 06543ae60706..0011d76f5b8c 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> @@ -68,10 +68,13 @@ int shmem_sg_alloc_table(struct drm_i915_private *i91=
5, struct sg_table *st,
>  			 unsigned int max_segment)
>  {
>  	unsigned int page_count; /* restricted by sg_alloc_table */
> -	unsigned long i;
> +	unsigned long next_pfn =3D 0; /* suppress gcc warning */
> +	unsigned long folio_start =3D 0;
> +	unsigned long folio_end =3D 0;
> +	struct folio *folio =3D NULL;
>  	struct scatterlist *sg;
> -	unsigned long next_pfn =3D 0;	/* suppress gcc warning */
>  	gfp_t noreclaim;
> +	unsigned long i;
>  	int ret;
> =20
>  	if (overflows_type(size / PAGE_SIZE, page_count))
> @@ -101,7 +104,7 @@ int shmem_sg_alloc_table(struct drm_i915_private *i91=
5, struct sg_table *st,
>  	sg =3D st->sgl;
>  	st->nents =3D 0;
>  	for (i =3D 0; i < page_count; i++) {
> -		struct folio *folio;
> +		unsigned long folio_page_index =3D 0;
>  		unsigned long nr_pages;
>  		const unsigned int shrink[] =3D {
>  			I915_SHRINK_BOUND | I915_SHRINK_UNBOUND,
> @@ -109,71 +112,87 @@ int shmem_sg_alloc_table(struct drm_i915_private *i=
915, struct sg_table *st,
>  		}, *s =3D shrink;
>  		gfp_t gfp =3D noreclaim;
> =20
> -		do {
> -			cond_resched();
> -			folio =3D shmem_read_folio_gfp(mapping, i, gfp);
> -			if (!IS_ERR(folio))
> -				break;
> -
> -			if (!*s) {
> -				ret =3D PTR_ERR(folio);
> -				goto err_sg;
> -			}
> -
> -			i915_gem_shrink(NULL, i915, 2 * page_count, NULL, *s++);
> -
> -			/*
> -			 * We've tried hard to allocate the memory by reaping
> -			 * our own buffer, now let the real VM do its job and
> -			 * go down in flames if truly OOM.
> -			 *
> -			 * However, since graphics tend to be disposable,
> -			 * defer the oom here by reporting the ENOMEM back
> -			 * to userspace.
> -			 */
> -			if (!*s) {
> -				/* reclaim and warn, but no oom */
> -				gfp =3D mapping_gfp_mask(mapping);
> +		/* Grab the next folio if we exhausted the current one. */
> +		if (!i || i > folio_end) {
> +			do {
> +				cond_resched();
> +				folio =3D shmem_read_folio_gfp(mapping, i, gfp);
> +				if (!IS_ERR(folio))
> +					break;
> +
> +				if (!*s) {
> +					ret =3D PTR_ERR(folio);
> +					goto err_sg;
> +				}
> +
> +				i915_gem_shrink(NULL, i915, 2 * page_count, NULL, *s++);
> =20
>  				/*
> -				 * Our bo are always dirty and so we require
> -				 * kswapd to reclaim our pages (direct reclaim
> -				 * does not effectively begin pageout of our
> -				 * buffers on its own). However, direct reclaim
> -				 * only waits for kswapd when under allocation
> -				 * congestion. So as a result __GFP_RECLAIM is
> -				 * unreliable and fails to actually reclaim our
> -				 * dirty pages -- unless you try over and over
> -				 * again with !__GFP_NORETRY. However, we still
> -				 * want to fail this allocation rather than
> -				 * trigger the out-of-memory killer and for
> -				 * this we want __GFP_RETRY_MAYFAIL.
> -				 */
> -				gfp |=3D __GFP_RETRY_MAYFAIL | __GFP_NOWARN;
> -			}
> -		} while (1);
> +				* We've tried hard to allocate the memory by reaping
> +				* our own buffer, now let the real VM do its job and
> +				* go down in flames if truly OOM.
> +				*
> +				* However, since graphics tend to be disposable,
> +				* defer the oom here by reporting the ENOMEM back
> +				* to userspace.
> +				*/
> +				if (!*s) {
> +					/* reclaim and warn, but no oom */
> +					gfp =3D mapping_gfp_mask(mapping);
> +
> +					/*
> +					 * Our bo are always dirty and so we require
> +					 * kswapd to reclaim our pages (direct reclaim
> +					 * does not effectively begin pageout of our
> +					 * buffers on its own). However, direct reclaim
> +					 * only waits for kswapd when under allocation
> +					 * congestion. So as a result __GFP_RECLAIM is
> +					 * unreliable and fails to actually reclaim our
> +					 * dirty pages -- unless you try over and over
> +					 * again with !__GFP_NORETRY. However, we still
> +					 * want to fail this allocation rather than
> +					 * trigger the out-of-memory killer and for
> +					 * this we want __GFP_RETRY_MAYFAIL.
> +					 */
> +					gfp |=3D __GFP_RETRY_MAYFAIL | __GFP_NOWARN;
> +				}
> +			} while (1);
> +
> +			folio_start =3D folio_pgoff(folio);
> +			folio_end =3D folio_start + folio_nr_pages(folio) - 1;
> +		}
> +
> +		folio_page_index =3D i - folio_start;
> +		if (WARN_ON_ONCE(folio_page_index >=3D folio_nr_pages(folio))) {
> +			ret =3D -EINVAL;
> +			folio_put(folio);
> +			goto err_sg;
> +		}
> =20
>  		nr_pages =3D min_array(((unsigned long[]) {
> -					folio_nr_pages(folio),
> +					folio_nr_pages(folio) - folio_page_index,
>  					page_count - i,
> -					max_segment / PAGE_SIZE,
> +					max_t(unsigned int, 1, max_segment / PAGE_SIZE),

Why?  This function is never called with max_segment less than PAGE_SIZE,=
=C2=A0
then max_segment / PAGE_SIZE can't drop to 0.  If you want to address the=
=C2=A0
unexpected 0 case then I think we should just validate max_segment before=
=C2=A0
using it.

>  				      }), 3);
> =20
>  		if (!i ||
>  		    sg->length >=3D max_segment ||
> -		    folio_pfn(folio) !=3D next_pfn) {
> +		    folio_pfn(folio) + folio_page_index !=3D next_pfn) {
>  			if (i)
>  				sg =3D sg_next(sg);
> =20
>  			st->nents++;
> -			sg_set_folio(sg, folio, nr_pages * PAGE_SIZE, 0);
> +			sg_set_page(sg, folio_page(folio, folio_page_index),
> +				    nr_pages * PAGE_SIZE, 0);
>  		} else {
>  			nr_pages =3D min_t(unsigned long, nr_pages,
> -					 (max_segment - sg->length) / PAGE_SIZE);
> +					 max_t(unsigned long, 1,
> +					       (max_segment - sg->length) / PAGE_SIZE));

The same as above, we may exepect max_segment not less than PAGE_SIZE.

> =20
>  			sg->length +=3D nr_pages * PAGE_SIZE;

The only case for appending more pages to a not yet full scatterlist I can=
=C2=A0
imagine is when first page of next folio is next to the last page of a=C2=
=A0
previous folio assigned here before so contiguity of pages can be=C2=A0
preserved.  Then, I think the above if conditions should better reflect=C2=
=A0
that only case for clarity.

Thanks,
Janusz

>  		}
> -		next_pfn =3D folio_pfn(folio) + nr_pages;
> +
> +		next_pfn =3D folio_pfn(folio) + folio_page_index + nr_pages;
>  		i +=3D nr_pages - 1;
> =20
>  		/* Check that the i965g/gm workaround works. */
> @@ -186,6 +205,7 @@ int shmem_sg_alloc_table(struct drm_i915_private *i91=
5, struct sg_table *st,
>  	i915_sg_trim(st);
> =20
>  	return 0;
> +
>  err_sg:
>  	sg_mark_end(sg);
>  	if (sg !=3D st->sgl) {
