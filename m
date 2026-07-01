Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xKDAGSkBRWqx4woAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 13:59:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F4D6ED06D
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 13:59:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=arm.com header.s=foss header.b=Omdspmqr;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=arm.com (policy=none)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AEDB10E1EF;
	Wed,  1 Jul 2026 11:59:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by gabe.freedesktop.org (Postfix) with ESMTP id E177610E1EF;
 Wed,  1 Jul 2026 11:59:33 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DD4C42BCC;
 Wed,  1 Jul 2026 04:59:28 -0700 (PDT)
Received: from [10.2.212.23] (e121345-lin.cambridge.arm.com [10.2.212.23])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7CF123F66F;
 Wed,  1 Jul 2026 04:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
 t=1782907173; bh=tHsd6ybOVzAA4iRKUUUSr1a7MLJwo183qF7gRG6rm4I=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=OmdspmqrjZ6SdTUbWo9Znf1IiELwK95KpINCbox+m1AZGHFndr5W2CL2RJlCajAR0
 zGqOorBe+dfC+DUnfjq6+FOOjvyj2uYm08YjnRPuxAf2c+ND2xGeekVbUD8Mp13bcr
 A6Y/m7Z0AZCp5fK1pG3wd3SHPZD5DiRNG6Lwk7r4=
Message-ID: <b65c0f9f-184e-42fb-85dd-aa6c06dc91d8@arm.com>
Date: Wed, 1 Jul 2026 12:59:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] drivers/iommu: Catch scatterlist length overflows
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 iommu@lists.linux.dev, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 =?UTF-8?Q?Micha=C5=82_Grzelak?= <michal.grzelak@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>
References: <20260701104437.236979-1-krzysztof.karas@intel.com>
 <20260701104437.236979-4-krzysztof.karas@intel.com>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <20260701104437.236979-4-krzysztof.karas@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[arm.com:s=foss];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[arm.com:-];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robin.murphy@arm.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,arm.com:email,arm.com:mid,arm.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D8F4D6ED06D

On 01/07/2026 11:44 am, Krzysztof Karas wrote:
> It is possible, when a very large mapping uses a single
> scatterlist, that padding overflows scatterlist's length field.
> This results in:
>   1) silently wrapping the value
>   2) smaller than desired mappings produced by iommu_map_sg
>   3) leaving mapped bytes in memory (no iommu_unmap)
> 
> Address this issue by adding overflow detection for previous
> scatterlist length field.

Awesome, thanks for figuring it out! Looks like this must date all the 
way back:

Fixes: 809eac54cdd6 ("iommu/dma: Implement scatterlist segment merging")

> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
> v2:
>   * Address overflows instead of unmapping erroneously mapped
>   memory (Robin).
>   * Put this patch last for easier reproduction of the issue.
> 
>   drivers/iommu/dma-iommu.c | 14 ++++++++++++--
>   1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index 9abaec0703ef..c403057577df 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -1493,8 +1493,18 @@ int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
>   		 *   time through here (i.e. before it has a meaningful value).
>   		 */
>   		if (pad_len && pad_len < s_length - 1) {
> -			prev->length += pad_len;
> -			iova_len += pad_len;
> +			if (overflows_type(prev->length + pad_len, prev->length)) {
> +				/*
> +				 * For large mappings spanning multiple GBs we
> +				 * may not be able to fit all needed padding into
> +				 * sg->length.
> +				 */
> +				ret = -EOVERFLOW;
> +				goto out_restore_sg;
> +			} else {

Nit: we don't really need an "else" after a goto, but it's hardly a big 
deal (however if you did want to respin, note also that the preferred 
title tag here is "iommu/dma: ..."). Either way,

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

I'd imagine Joerg can take this as an IOMMU fix, but FWIW if you did 
want an ack to take it through drm-fixes to keep it with the i915 
patches, I wouldn't foresee any significant risk of conflicts.

Thanks,
Robin.

> +				prev->length += pad_len;
> +				iova_len += pad_len;
> +			}
>   		}
>   
>   		iova_len += s_length;

