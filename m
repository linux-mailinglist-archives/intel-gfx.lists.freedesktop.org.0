Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id itiDIyI0RWqQ8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:37:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7876EF50A
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:37:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ktR4M2kx;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EBD510F008;
	Wed,  1 Jul 2026 15:37:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCFDB10F007;
 Wed,  1 Jul 2026 15:36:59 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id ECE9D6001D;
 Wed,  1 Jul 2026 15:36:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A9531F000E9;
 Wed,  1 Jul 2026 15:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1782920218;
 bh=7PMyPj49ff92f1DaqsDh3uAzfXfDvH/ocFqvDS3U5Sc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=ktR4M2kx8zAi2arn+ibq69x76kDkmaMWw0nujrGJ0ZgnUjvN6n+VCsnXdyx4TBxqc
 y2Q//eJ7God84zRv3Orgod57tsmFoVMzQfoEDMms+XVkq0XXwIOJh8WqW+gXehTtB+
 Cjk03q6cKspXSJcv2K+LnLdnrR9o8h80yDFLX52Jq13FpDh9vzvIAmH2HNPAthbjkE
 gZS6ZDZfK1ZsJ0xWKN2dt8OpU5sdV+0A9wqfRZqwp7bGfJiot3fFpP22rzVdaTGCLB
 MxMh7rIrqu7M0fhNiwc2MXgEMrO8Dl1VMF/KH43+1SBAG7/S2jEvxlMca91OhC3b91
 sx5FA2P/PV5eQ==
Date: Wed, 1 Jul 2026 17:36:54 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 iommu@lists.linux.dev, Andi Shyti <andi.shyti@linux.intel.com>, 
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, 
 =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>, 
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH v2 0/3] drivers: Improve memory management for large
 object allocations when i915/shmem is used with iommu
Message-ID: <akUzCar-MMOMGtGB@zenone.zhora.eu>
References: <20260701104437.236979-1-krzysztof.karas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260701104437.236979-1-krzysztof.karas@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[zenone.zhora.eu:mid,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3D7876EF50A

Hi Krzysztof,

> Krzysztof Karas (3):
>   drm/i915/gem: split shared memory allocation table logic
>   drm/i915/shmem: Count mapped pages in a folio

Please move the refactoring after the fix. We don't want to
create a dependency between a fix and a code refactoring, as
that makes it harder for maintainers to backport the fix.

Thanks,
Andi

>   drivers/iommu: Catch scatterlist length overflows
> 
>  drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 191 +++++++++++++---------
>  drivers/iommu/dma-iommu.c                 |  14 +-
>  2 files changed, 129 insertions(+), 76 deletions(-)
> 
> -- 
> 2.34.1
> 
