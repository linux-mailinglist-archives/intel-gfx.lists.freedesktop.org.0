Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E693C77FD
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 22:30:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E87926E12C;
	Tue, 13 Jul 2021 20:30:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BAA26E12C
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 20:30:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="271350012"
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; d="scan'208";a="271350012"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 13:30:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; d="scan'208";a="570577241"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 13 Jul 2021 13:30:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 13 Jul 2021 23:30:10 +0300
Date: Tue, 13 Jul 2021 23:30:10 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <YO330qFZi58X36PJ@intel.com>
References: <20210709164750.9465-1-ville.syrjala@linux.intel.com>
 <20210709164750.9465-2-ville.syrjala@linux.intel.com>
 <ab04666c-229c-fbd2-07f3-6955b46985db@linux.intel.com>
 <YOxkBeICOosZcVEY@intel.com>
 <dcc41a8e-8076-5798-75da-1c356756d9b0@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dcc41a8e-8076-5798-75da-1c356756d9b0@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/4] iommu/vt-d: Disable superpage for
 Geminilake igfx
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
Cc: intel-gfx@lists.freedesktop.org, David Woodhouse <dwmw2@infradead.org>,
 iommu@lists.linux-foundation.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 13, 2021 at 09:34:09AM +0800, Lu Baolu wrote:
> On 7/12/21 11:47 PM, Ville Syrj=E4l=E4 wrote:
> > On Mon, Jul 12, 2021 at 07:23:07AM +0800, Lu Baolu wrote:
> >> On 7/10/21 12:47 AM, Ville Syrjala wrote:
> >>> From: Ville Syrj=E4l=E4<ville.syrjala@linux.intel.com>
> >>>
> >>> While running "gem_exec_big --r single" from igt-gpu-tools on
> >>> Geminilake as soon as a 2M mapping is made I tend to get a DMAR
> >>> write fault. Strangely the faulting address is always a 4K page
> >>> and usually very far away from the 2M page that got mapped.
> >>> But if no 2M mappings get used I can't reproduce the fault.
> >>>
> >>> I also tried to dump the PTE for the faulting address but it actually
> >>> looks correct to me (ie. definitely seems to have the write bit set):
> >>>    DMAR: DRHD: handling fault status reg 2
> >>>    DMAR: [DMA Write] Request device [00:02.0] PASID ffffffff fault ad=
dr 7fa8a78000 [fault reason 05] PTE Write access is not set
> >>>    DMAR: fault 7fa8a78000 (level=3D1) PTE =3D 149efc003
> >>>
> >>> So not really sure what's going on and this might just be full on duct
> >>> tape, but it seems to work here. The machine has now survived a whole=
 day
> >>> running that test whereas with superpage enabled it fails in less than
> >>> a minute usually.
> >>>
> >>> TODO: might be nice to disable superpage only for the igfx iommu
> >>>         instead of both iommus
> >> If all these quirks are about igfx dedicated iommu's, I would suggest =
to
> >> disable superpage only for the igfx ones.
> > Sure. Unfortunately there's no convenient mechanism to do that in
> > the iommu driver that I can immediately see. So not something I
> > can just whip up easily. Since you're actually familiar with the
> > driver maybe you can come up with a decent solution for that?
> > =

> =

> How about something like below? [no compile, no test...]
> =

> diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
> index 1131b8efb050..2d51ef288a9e 100644
> --- a/drivers/iommu/intel/iommu.c
> +++ b/drivers/iommu/intel/iommu.c
> @@ -338,6 +338,7 @@ static int intel_iommu_strict;
>   static int intel_iommu_superpage =3D 1;
>   static int iommu_identity_mapping;
>   static int iommu_skip_te_disable;
> +static int iommu_skip_igfx_superpage;
> =

>   #define IDENTMAP_GFX		2
>   #define IDENTMAP_AZALIA		4
> @@ -652,6 +653,27 @@ static bool domain_update_iommu_snooping(struct =

> intel_iommu *skip)
>   	return ret;
>   }
> =

> +static bool domain_use_super_page(struct dmar_domain *domain)
> +{
> +	struct dmar_drhd_unit *drhd;
> +	struct intel_iommu *iommu;
> +	bool ret =3D true;
> +
> +	if (!intel_iommu_superpage)
> +		return false;
> +
> +	rcu_read_lock();
> +	for_each_active_iommu(iommu, drhd) {
> +		if (drhd->gfx_dedicated && iommu_skip_igfx_superpage) {
> +			ret =3D false;
> +			break
                             ^
Missing semicolon. Othwerwise seems to work great here. Thanks.

Are you going to turn this into a proper patch, or do you
want me to just squash this into my patches and repost?

> +		}
> +	}
> +	rcu_read_unlock();
> +
> +	return ret;
> +}
> +
>   static int domain_update_iommu_superpage(struct dmar_domain *domain,
>   					 struct intel_iommu *skip)
>   {
> @@ -659,7 +681,7 @@ static int domain_update_iommu_superpage(struct =

> dmar_domain *domain,
>   	struct intel_iommu *iommu;
>   	int mask =3D 0x3;
> =

> -	if (!intel_iommu_superpage)
> +	if (!domain_use_super_page(domain))
>   		return 0;
> =

>   	/* set iommu_superpage to the smallest common denominator */
> @@ -5656,6 +5678,14 @@ DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_INTEL, =

> 0x1632, quirk_iommu_igfx);
>   DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_INTEL, 0x163A, quirk_iommu_igfx);
>   DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_INTEL, 0x163D, quirk_iommu_igfx);
> =

> +static void quirk_skip_igfx_superpage(struct pci_dev *dev)
> +{
> +	pci_info(dev, "Disabling IOMMU superpage for graphics on this chipset\n=
");
> +	iommu_skip_igfx_superpage =3D 1;
> +}
> +
> +DECLARE_PCI_FIXUP_HEADER(PCI_VENDOR_ID_INTEL, 0x3184, =

> quirk_skip_igfx_superpage);
> +
>   static void quirk_iommu_rwbf(struct pci_dev *dev)
>   {
>   	if (risky_device(dev))
> =

> Best regards,
> baolu

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
