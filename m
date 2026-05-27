Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wI/jOm8BF2o70wcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 16:36:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDBE5E5FAE
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 16:36:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF31D10E7C1;
	Wed, 27 May 2026 14:36:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JSECRKKz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8D7810E825
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2026 14:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779892589; x=1811428589;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=0/hOoqMK1lMgNS69Pv3RXiPJEAxGqeZIXxjjBCjmKP0=;
 b=JSECRKKzbZTiqnrKffeTH/HaT6m7qofYpLiqsdoJ1PLVxrRU1VupnOev
 Er1qRKlS3IIK5FBEBIJ2hMi1X8bq9j6WnQbTvIF9p9tD/Kkg5LzdN9/nU
 MpuiVXj/pyM8rcsNMQ/msCBTaHhDSjUg7rso1+cRxYA2VbGG1K0fNRq2o
 QbSQ9ghMVhlGnRQfAIWBSnO6tDxdZgVM2vKKPtxFFOj7qOvgCX4WAHjw5
 d9Dh2Rsgu+3d8TLsy6+0b9QIqjLFFaDXqBvB3vE1HjXHgfbTkcPartAWD
 GzBL38GAw3q5gU6XD/Yb7MNnHooWK1s/K0fexpzyiHKV1KnK9OT4RVHpK w==;
X-CSE-ConnectionGUID: UOFU6v/8SryZMw8fXdidmA==
X-CSE-MsgGUID: Gp5MqGFXRHy68PWbm80P+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="80693809"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="80693809"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 07:36:28 -0700
X-CSE-ConnectionGUID: Fi8iud0WT96rtfrSd0beVw==
X-CSE-MsgGUID: pdbG+XHnQiWFFMGqYUSgtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="247336082"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.6])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 07:36:26 -0700
Message-ID: <aa9ed4e294988640d886fd8990079f318a5aa003.camel@linux.intel.com>
Subject: Re: [RFC 2/2] drivers/iommu: Unroll unsuccessful mapping
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka	
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Date: Wed, 27 May 2026 16:36:24 +0200
In-Reply-To: <20260527140804.2866189-3-krzysztof.karas@intel.com>
References: <20260527140804.2866189-1-krzysztof.karas@intel.com>
 <20260527140804.2866189-3-krzysztof.karas@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim]
X-Rspamd-Queue-Id: 7EDBE5E5FAE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Krzysztof,

On Wed, 2026-05-27 at 14:08 +0000, Krzysztof Karas wrote:
> Currently, if iommu maps fewer bytes than requested (iova_len),
> it proceeds to free the iova, but never tries to unmap already
> touched bytes. This behavior may cause memory hogging down the
> line.
>=20
> Correct that by unmapping before exiting.
>=20
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
>  drivers/iommu/dma-iommu.c | 10 ++++++++--

You have to submit this patch to IOMMU DMA-API LAYER maintainers (see
MAINTAINERS file for list and maintainer addresses) in order to get binding
comments, I believe.

Thanks,
Janusz

>  1 file changed, 8 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index 54d96e847f16..64ac2bdfc574 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -1515,8 +1515,14 @@ int iommu_dma_map_sg(struct device *dev, struct sc=
atterlist *sg, int nents,
>  	 * implementation - it knows better than we do.
>  	 */
>  	ret =3D iommu_map_sg(domain, iova, sg, nents, prot, GFP_ATOMIC);
> -	if (ret < 0 || ret < iova_len)
> +	if (ret < 0 || ret < iova_len) {
> +		if (ret > 0) {
> +			/* Unmap partially mapped bytes before freeing IOVA */
> +			if (iommu_unmap(domain, iova, ret) !=3D ret)
> +				ret =3D -EIO;
> +		}
>  		goto out_free_iova;
> +	}
> =20
>  	return __finalise_sg(dev, sg, nents, iova);
> =20
> @@ -1525,7 +1531,7 @@ int iommu_dma_map_sg(struct device *dev, struct sca=
tterlist *sg, int nents,
>  out_restore_sg:
>  	__invalidate_sg(sg, nents);
>  out:
> -	if (ret !=3D -ENOMEM && ret !=3D -EREMOTEIO)
> +	if (ret !=3D -ENOMEM && ret !=3D -EREMOTEIO && ret !=3D -EIO)
>  		return -EINVAL;
>  	return ret;
>  }
