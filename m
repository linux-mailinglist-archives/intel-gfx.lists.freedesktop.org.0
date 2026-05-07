Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GI1yJKWi/Gn2SAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 16:33:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FFA4EA408
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 16:33:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D22010F177;
	Thu,  7 May 2026 14:33:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q75QIqUE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18DE210F177
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2026 14:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778164385; x=1809700385;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=IGg/prndKvpSZuMSGYphuO1INLP283uFtBKcwyZuqdQ=;
 b=Q75QIqUE0ItW3CaQjYU/vGpdBwjaRFChyM+ITabRKkIsfBI02WgJEb/Z
 1TtBvvtX/RYD1UOZUjl8/yD0Xj4KRdQHdQC9O+2FFE0lXzLjwC8OUc6Da
 HcjhX/lXAY4/4aC5jxUcTDZJtUAeFhSJpS1utvyb0WdE1q3Db16Vd7YR7
 IPgMKveaUOsFU54pANuvhFuAMt+2wGhXJsFk0a1dfaq0vW2ExGD/5Zkyl
 0FE3LGcj8Wfq5VO5JSX9GT7NSef5HyeFzNklO1AKApW1C4Ra4Q0iUAmm9
 nEpzESrIPurHFpB9pgvJDODE2JOZ6F4eAE7RNCpBwWZQAC9ZXRmwrgcih g==;
X-CSE-ConnectionGUID: 2+2DWwo5RSiwG6kiYmmc8Q==
X-CSE-MsgGUID: vrlBLc0HSiaatKUPXWGSMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="90216912"
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="90216912"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 07:33:05 -0700
X-CSE-ConnectionGUID: NiQEUQMpQUmeKWQbtY9bQg==
X-CSE-MsgGUID: LruoOwAGSvy0zw1eDzRMBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="266852100"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.245.136])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 07:33:04 -0700
Message-ID: <ec3ac16b8cc597c91e935ca819c07cc885ac6fb9.camel@linux.intel.com>
Subject: Re: [PATCH v9 2/2] drm/i915/selftests: Run vma tests only if
 current->mm is present
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka	
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Date: Thu, 07 May 2026 16:33:00 +0200
In-Reply-To: <20260507142409.1913513-3-krzysztof.karas@intel.com>
References: <20260507142409.1913513-1-krzysztof.karas@intel.com>
 <20260507142409.1913513-3-krzysztof.karas@intel.com>
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
X-Rspamd-Queue-Id: C9FFA4EA408
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.karas@intel.com,m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim]
X-Rspamd-Action: no action

On Thu, 2026-05-07 at 14:24 +0000, Krzysztof Karas wrote:
> This set of tests require userspace memory to map objects, so
> run them only if this that memory is available.
>=20
> Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>

Reviewed-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

> ---
>  .../gpu/drm/i915/gem/selftests/i915_gem_mman.c   | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers=
/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> index 9d454d0b46f2..d01acfb7d93d 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -1847,11 +1847,12 @@ static int igt_mmap_revoke(void *arg)
>  int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
>  {
>  	int ret;
> -	bool unuse_mm =3D false;
>  	static const struct i915_subtest tests[] =3D {
>  		SUBTEST(igt_partial_tiling),
>  		SUBTEST(igt_smoke_tiling),
>  		SUBTEST(igt_mmap_offset_exhaustion),
> +	};
> +	static const struct i915_subtest vma_tests[] =3D {
>  		SUBTEST(igt_mmap),
>  		SUBTEST(igt_mmap_migrate),
>  		SUBTEST(igt_mmap_access),
> @@ -1859,15 +1860,14 @@ int i915_gem_mman_live_selftests(struct drm_i915_=
private *i915)
>  		SUBTEST(igt_mmap_gpu),
>  	};
> =20
> -	if (!current->mm) {
> -		kthread_use_mm(current->active_mm);
> -		unuse_mm =3D true;
> -	}
> -
>  	ret =3D i915_live_subtests(tests, i915);
> +	if (ret)
> +		return ret;
> =20
> -	if (unuse_mm)
> -		kthread_unuse_mm(current->active_mm);
> +	if (current->mm)
> +		ret =3D i915_live_subtests(vma_tests, i915);
> +	else
> +		pr_warn("No current->mm to safely borrow userspace memory from. Skippi=
ng VMA tests.\n");
> =20
>  	return ret;
>  }
