Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id naQpD2QmRWpy7woAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 16:38:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B20286EED96
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 16:38:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=B6xyVSEr;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8C8210E3B1;
	Wed,  1 Jul 2026 14:38:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E740A10E3B1;
 Wed,  1 Jul 2026 14:38:24 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id 2464D60138;
 Wed,  1 Jul 2026 14:38:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B9A51F000E9;
 Wed,  1 Jul 2026 14:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1782916703;
 bh=FCJc8Y4JmEOreL4L+vTlFLlPE/nMLhzyI1DM8YdqDxY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=B6xyVSErGQCC8QTMJYXKkOjLc7Mv9Rv2B6Ifr7ClnfKg36JsUPDYDajR/pLRNaXuJ
 8DIyBokdUdMBU6UbRRrEdjbUWCytV2AxOQuI6NViO5B4xKkDxo7+9Qi0Iu4MCoqBH2
 Nkew2CpAno/k2fyqTTt57p8FX+zsY0EWkxmv6+Gz5+BZOkiCytNHyIWS9xPtXj2CO6
 pKKfgW0Fg4Yr+G9SlUm2vb5zyzayQ2C+Xb1OI4EjEKGu6z3hqR2aWEFDQZ7DopzOUW
 bGTNsAD8D6mgksC/d2TZbjZG97hJH+jsP67CDPe6n7TARhzTc/YcrL9t6o5K9WNTsN
 OL/pwav2TNtSg==
Date: Wed, 1 Jul 2026 16:38:11 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 iommu@lists.linux.dev, Andi Shyti <andi.shyti@linux.intel.com>, 
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, 
 =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>, 
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH v2 1/3] drm/i915/gem: split shared memory allocation
 table logic
Message-ID: <akUibf3NyThHnXco@zenone.zhora.eu>
References: <20260701104437.236979-1-krzysztof.karas@intel.com>
 <20260701104437.236979-2-krzysztof.karas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260701104437.236979-2-krzysztof.karas@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,zenone.zhora.eu:mid,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B20286EED96

Hi Krzysztof,

On Wed, Jul 01, 2026 at 10:44:35AM +0000, Krzysztof Karas wrote:
> shmem_sg_alloc_table is a complex and hard to read function.
> Split its logic into smaller pieces to improve readability and
> reduce indentation. Change the main "for" loop into "while" to
> get rid of obscure iterator "i" and be more explicit in
> traversing scatterlist.

any chance we can split this cleanup into smaller pieces?

> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>

...

> +static struct folio *shmem_shrink_get_folio(struct address_space *mapping,
> +					    unsigned long folio_index,
> +					    gfp_t gfp, unsigned int pages_left,
> +					    struct drm_i915_private *i915)
> +{
> +#define MAX_READS 2

This MAX_READS here is very ugly! Just use 2 and explain it in a
comment. In the 'if' below you can check out of "if (... || i)"
and still explain it in a comment.

> +	struct folio *folio;
> +	unsigned int i;
> +
> +	for (i = 0; i < MAX_READS; i++) {
> +		cond_resched();
> +		folio = shmem_read_folio_gfp(mapping, folio_index, gfp);
> +		if (!IS_ERR(folio) || i == MAX_READS - 1)
> +			return folio;
> +
> +		i915_gem_shrink(NULL, i915, 2 * pages_left, NULL,

/pages_left/page_count/

> +				I915_SHRINK_BOUND | I915_SHRINK_UNBOUND);
> +

...

> +	}
> +
> +	/* Should never happen */
> +	WARN_ON_ONCE(1);

no need.

Thanks,
Andi

> +	return ERR_PTR(-EINVAL);
> +}
