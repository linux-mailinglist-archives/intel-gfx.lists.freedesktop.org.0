Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Gw2Crv/FmoJ0QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 16:29:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F79C5E5E0D
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 16:29:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2559810E074;
	Wed, 27 May 2026 14:29:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m428A/Sb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC5C010E074
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2026 14:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779892151; x=1811428151;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=djiede5uPUxDBYKA84ovM1Cn3WeGL38m3hJ7hPfrxG4=;
 b=m428A/SbcM11/MFff9EBHV0zMPkb8KnJavRkKRc7/3THqvWTj3ZqhLtl
 duM0UCfdyQsh9QfN+HGI4P2IPMTcoDuCEXlMa2ftsNeQqU8xaicRlo8oO
 Z9ayNPMk+lJA7Tt27hxwPIXMrRt8ZI/HoiQk29RDEEVBwqUcZtiexhz9I
 ucaWKQMK5CkOu0OhQOL+rpNqSdv9iSMN1hU2Vz2g8vCFmQVrUSJYthfY6
 mtmDFf18F5ohzFHhFKtxKG1RI96S2v1RNj+5hBZocD9e/d/QHbWwx/bMd
 mjg4XdmJrq02WkeDa5oMhpZ/0FSrk/tmthSXVXhSX0IWS+q9frMLuu5k9 Q==;
X-CSE-ConnectionGUID: fgDM2NHlTfKK0MP0dt41JQ==
X-CSE-MsgGUID: rrmsCu2hR9qWrLgDA7n3MQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="91828655"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="91828655"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 07:29:10 -0700
X-CSE-ConnectionGUID: lcJ/3K6JRl2tR0xuy8mT9w==
X-CSE-MsgGUID: fBBSRwZTSb6hyfpXc28D1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="241218421"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.6])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 07:29:09 -0700
Message-ID: <3d45428246f2048becb332375c547c2f91ee9305.camel@linux.intel.com>
Subject: Re: [RFC 1/2] drm/i915/shmem: Prevent overflows on small segments
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka	
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Date: Wed, 27 May 2026 16:29:05 +0200
In-Reply-To: <20260527140804.2866189-2-krzysztof.karas@intel.com>
References: <20260527140804.2866189-1-krzysztof.karas@intel.com>
 <20260527140804.2866189-2-krzysztof.karas@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.karas@intel.com,m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gitlab.freedesktop.org:url,lists.freedesktop.org:email]
X-Rspamd-Queue-Id: 5F79C5E5E0D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Krzysztof,

On Wed, 2026-05-27 at 14:08 +0000, Krzysztof Karas wrote:
> With addition of commit 029ae067431a
> ("drm/i915: Fix potential overflow of shmem scatterlist length")
> max_segment size was included in calculating a number of pages
> for the scatterlist. This meant that segment sizes considerably
> smaller than number of pages in a folio [1], were not enough to
> jump to the next folio.

I think that scope of the issue you are addressing was limited specifically
to max_segment =3D=3D PAGE_SIZE, passed from shmem_get_pages() to
shmem_sg_alloc_table() after first attempt with max_segment =3D=3D
i915_sg_segment_size() failed.  Then, if that's the case and I'm not wrong,
your "considerably smaller" wording is not strict enough for me.

Other than that, I think that this change correctly fixes the bug that I
introduced with the blamed patch (sorry).

When resubmitting, please add dri-devel@lists.freedesktop.org to Cc:,
that's mandatory for i915 patches.

Thanks,
Janusz


> In result, sg_set_folio() was called
> multiple times with nr_pages smaller than folio size, using
> many scatterlists, all pointing to the beginning pages of the
> folio and never fully covering its range of pages and corrupting
> mappings.
>=20
> [1] See shmem_get_pages(), where segment size is set to
> PAGE_SIZE.
>=20
> Suggested-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Fixes: 029ae067431a ("drm/i915: Fix potential overflow of shmem scatterli=
st length")
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/15816
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/=
i915/gem/i915_gem_shmem.c
> index 06543ae60706..ac9b263c341a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> @@ -156,7 +156,7 @@ int shmem_sg_alloc_table(struct drm_i915_private *i91=
5, struct sg_table *st,
>  		nr_pages =3D min_array(((unsigned long[]) {
>  					folio_nr_pages(folio),
>  					page_count - i,
> -					max_segment / PAGE_SIZE,
> +					i915_sg_segment_size(i915->drm.dev) / PAGE_SIZE,
>  				      }), 3);
> =20
>  		if (!i ||
