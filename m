Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4buCO8lNPWol1AgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 17:48:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1846C72B3
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 17:48:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=LWDXcJ+z;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F27DC10F311;
	Thu, 25 Jun 2026 15:48:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E0AE10E219;
 Thu, 25 Jun 2026 15:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782402500; x=1813938500;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=1+A6gPT4LQUsY2QnTfPNBJkWRgFjnYZMeyYX+1UYPNk=;
 b=LWDXcJ+zH+ZGMNgOmUOiKgzOkAHDM35/bFsuoLOrFa9OROAt2obIr4ZW
 5uyB3Brl5ShcoLLUC/+Pne3+SMPl5nPEUQrQGnwt7Dvrp0Gh08Z6n/Tph
 6F/qXqveor3a0fRRYx/3Ov2ZWwmpZTYi5W5Qj6+eB2ZmxTMMm3GfjW7LC
 C2ngSYUd6kW9vaNMT19O+giUvV8xWYAoIWUftaqiptW1i8ch89grGbWoq
 sJhqCt/v20yvl5xuFpK9mIRx2cMGUELJUA9TRxhB+LvKqymJ06XyfRk+A
 9vmpdcVMlGsA3VmLIjWu7Nq+MsCYMaemVVRwCzfb4eGyaYoXuOU4xmk3B A==;
X-CSE-ConnectionGUID: TaTcoHFWR0+A5Xyn0QyxUw==
X-CSE-MsgGUID: hrhsxAbuTKiTvefJk4k73A==
X-IronPort-AV: E=McAfee;i="6800,10657,11828"; a="94672790"
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="94672790"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 08:48:19 -0700
X-CSE-ConnectionGUID: bnTDR+9oSp2v6LlaA//k7g==
X-CSE-MsgGUID: bsv1XPUrSYWzkAVo2KV/4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="249751034"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 08:48:16 -0700
Date: Thu, 25 Jun 2026 17:48:14 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
 iommu@lists.linux.dev, Andi Shyti <andi.shyti@linux.intel.com>, 
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, 
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>, 
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>, 
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH 1/3] drivers/iommu: Unroll unsuccessful mapping
In-Reply-To: <20260625134342.1102921-2-krzysztof.karas@intel.com>
Message-ID: <5016dea0-5710-b0f9-754b-36d0c7325d46@intel.com>
References: <20260625134342.1102921-1-krzysztof.karas@intel.com>
 <20260625134342.1102921-2-krzysztof.karas@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-886975909-1782402498=:605841"
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7F1846C72B3

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-886975909-1782402498=:605841
Content-Type: text/plain; format=flowed; charset=ISO-8859-2
Content-Transfer-Encoding: 8BIT

Hi Krzysztof,

I'm wondering about changing the prefix of patch's title into
iommu/dma:, but there are commits changing dma-iommu.c having other
prefixes as well; not sure if it matters.

On Thu, 25 Jun 2026, Krzysztof Karas wrote:
> Currently, if iommu maps fewer bytes than requested (iova_len),
> it proceeds to free the iova, but never tries to unmap already
> touched bytes. This behavior may cause memory hogging down the
> line.
>
> Correct that by unmapping before exiting.
>
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
> drivers/iommu/dma-iommu.c | 10 ++++++++--
> 1 file changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index 381b60d9e7ce..c4c058ba07ef 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -1515,8 +1515,14 @@ int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
> 	 * implementation - it knows better than we do.
> 	 */
> 	ret = iommu_map_sg(domain, iova, sg, nents, prot, GFP_ATOMIC);
> -	if (ret < 0 || ret < iova_len)
> +	if (ret < 0 || ret < iova_len) {
> +		if (ret > 0) {
> +			/* Unmap partially mapped bytes before freeing IOVA */
> +			if (iommu_unmap(domain, iova, ret) != ret)
> +				ret = -EIO;
> +		}
> 		goto out_free_iova;
> +	}

Also thinking whether not to split this into two separate if's,
something like:

ret = iommu_map_sg(domain, iova, sg, nents, prot, GFP_ATOMIC);
if (ret < 0)
 	goto out_free_iova;

if (ret < iova_len) {
 	if (ret > 0) {
 		/* Unmap partially mapped bytes before freeing IOVA */
 		if (iommu_unmap(domain, iova, ret) != ret)
 			ret = -EIO;
 	}

 	goto out_free_iova;
}

But that's probably just a matter of opinion. Whether it applies or not:

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

>
> 	return __finalise_sg(dev, sg, nents, iova);
>
> @@ -1525,7 +1531,7 @@ int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
> out_restore_sg:
> 	__invalidate_sg(sg, nents);
> out:
> -	if (ret != -ENOMEM && ret != -EREMOTEIO)
> +	if (ret != -ENOMEM && ret != -EREMOTEIO && ret != -EIO)
> 		return -EINVAL;
> 	return ret;
> }
> -- 
> 2.34.1
>
>
--8323329-886975909-1782402498=:605841--
