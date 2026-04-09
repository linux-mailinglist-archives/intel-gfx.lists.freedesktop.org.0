Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGhFNLxm12myNggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 10:43:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1247C3C7DDE
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 10:43:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B385910E7A1;
	Thu,  9 Apr 2026 08:43:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JK7eSMNy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2C8F10E7A1
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2026 08:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775724217; x=1807260217;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Ra+54xVNaiVIiq7uAAj3xLnxU52yD3G5ZikXrzq8eIg=;
 b=JK7eSMNy5bM313tVdWIJ1MXGd/eRjY0Nowy+XCVITh0mfmsuGtlFjwzN
 dEV+/YHjBJeh3MH51MeojmpqGdCHL+cx6oTsgpwOb5XxCg2H83zo5OR0N
 rFKB5YdMwkCjtKGaBsxXjBBHcYVt3Mtligxt8P5atYZXoMMQwl5+F61ep
 eA48VKbnfBLL8YdPvjDaz+8ZtfwhzM4uoeA6/TpPzT2cv7fmyv9dI+rWh
 gxjUm9BqFTa+0+wMibjHgnmr7NzFWA4M9YHli0usZddX/kaD1uBNg4jPj
 Yz+pdLQgZhpCwmr3IVOlNShawnoQI6KtXBvBpoHbEUwduwSMrzAfaWPdd g==;
X-CSE-ConnectionGUID: GhLCoOuATpGIWTtSj3lWNQ==
X-CSE-MsgGUID: k5oUCfQ/RXqGwHm7wy4RIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="87799424"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="87799424"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 01:43:36 -0700
X-CSE-ConnectionGUID: yW8bjEtZQ9ihvnvy6nFw6A==
X-CSE-MsgGUID: 4l0GB3YWR1+fVf+Rg295/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="230379027"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.ger.corp.intel.com) ([10.245.246.83])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 01:43:35 -0700
Message-ID: <8ad654540c17a0ad8314545fe6c0ed9907671ac0.camel@linux.intel.com>
Subject: Re: [PATCH topic/core-for-CI] iommu: Do not call drivers for empty
 gathers
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Thu, 09 Apr 2026 10:43:32 +0200
In-Reply-To: <20260402092506.2612595-2-janusz.krzysztofik@linux.intel.com>
References: <20260402092506.2612595-2-janusz.krzysztofik@linux.intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url,intel.com:dkim,intel.com:email,linux.intel.com:mid,nvidia.com:email]
X-Rspamd-Queue-Id: 1247C3C7DDE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 2026-04-02 at 11:23 +0200, Janusz Krzysztofik wrote:
> From: Jason Gunthorpe <jgg@nvidia.com>
>=20
> An empty gather is coded with start=3DU64_MAX, end=3D0 and several driver=
s go
> on to convert that to a size with:
>=20
>  end - start + 1
>=20
> Which gives 2 for an empty gather. This then causes Weird Stuff to
> happen (for example an UBSAN splat in VT-d) that is hopefully harmless,
> but maybe not.
>=20
> Prevent drivers from being called right in iommu_iotlb_sync().
>=20
> Auditing shows that AMD, Intel, Mediatek and RSIC-V drivers all do things
> on these empty gathers.
>=20
> Further, there are several callers that can trigger empty gathers,
> especially in unusual conditions. For example iommu_map_nosync() will cal=
l
> a 0 size unmap on some error paths. Also in VFIO, iommupt and other
> places.
>=20
> Cc: stable@vger.kernel.org
> Reported-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Closes: https://lore.kernel.org/r/11145826.aFP6jjVeTY@jkrzyszt-mobl2.ger.=
corp.intel.com
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>
> Reviewed-by: Samiullah Khawaja <skhawaja@google.com>
> Reviewed-by: Robin Murphy <robin.murphy@arm.com>
> Reviewed-by: Vasant Hegde <vasant.hegde@amd.com>
> Signed-off-by: Joerg Roedel <joerg.roedel@amd.com>
> (cherry picked from commit 90c5def10bea574b101b7a520c015ca81742183f)

That commit is already in mainline, no need to pull it into core-for-CI=C2=
=A0
any=C2=A0longer.

Thanks,
Janusz


> Link: https://lore.kernel.org/all/1-v1-13a02eb0e031+a5-iommu_gather_jgg@n=
vidia.com
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/15478
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  include/linux/iommu.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/include/linux/iommu.h b/include/linux/iommu.h
> index 54b8b48c762e8..555597b54083c 100644
> --- a/include/linux/iommu.h
> +++ b/include/linux/iommu.h
> @@ -980,7 +980,8 @@ static inline void iommu_flush_iotlb_all(struct iommu=
_domain *domain)
>  static inline void iommu_iotlb_sync(struct iommu_domain *domain,
>  				  struct iommu_iotlb_gather *iotlb_gather)
>  {
> -	if (domain->ops->iotlb_sync)
> +	if (domain->ops->iotlb_sync &&
> +	    likely(iotlb_gather->start < iotlb_gather->end))
>  		domain->ops->iotlb_sync(domain, iotlb_gather);
> =20
>  	iommu_iotlb_gather_init(iotlb_gather);
