Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3811D52E665
	for <lists+intel-gfx@lfdr.de>; Fri, 20 May 2022 09:40:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75DBB11B714;
	Fri, 20 May 2022 07:40:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 071C611B714
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 May 2022 07:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653032421; x=1684568421;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=zoYKVJjpPsowF8XAlNRkyLHkYCEZRHO6uMmbelLwW98=;
 b=l0ARWNPWIpEu0Y1GfK5gNfMAbP/owkmq3EfkjSGnOlqsOOCHwkUTNlY7
 WufccNl8z3Eu6pf5y+3eMsU7BuZh3fs34Vixbn6oPEoyge7PDHnsUVihe
 dSsSI36v4sDvLneQ/M2baoXwW62oVpzrKfFsuwUCVde3tuWyHxnwnUqDf
 3sOJ+j7Uiv7ySmpffQjqhHVUevjdnvR2ISQ//gLkZGvMyHALIjr4fIOcc
 MrsHCMKwjodkxYvcjGFbP1kIrS5nfVIj3nCuR7kLGoKLBN3O+NzsfYZeM
 9CzlcY3uLOlRxZPST7YoFTG32LModj46vCAd9oIrrP2Mc7mvv+Z3vKSC2 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10352"; a="253043497"
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; d="scan'208";a="253043497"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2022 00:40:07 -0700
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; d="scan'208";a="743372744"
Received: from kpradzyn-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.134.23])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2022 00:40:04 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Piorkowski, Piotr" <piotr.piorkowski@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220120113049.213361-1-piotr.piorkowski@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220120113049.213361-1-piotr.piorkowski@intel.com>
Date: Fri, 20 May 2022 10:40:01 +0300
Message-ID: <875ym0d54e.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Sanitycheck PCI BARs on probe
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

On Thu, 20 Jan 2022, "Piorkowski, Piotr" <piotr.piorkowski@intel.com> wrote:
> From: Piotr Pi=C3=B3rkowski <piotr.piorkowski@intel.com>
>
> For proper operation of i915 we need usable PCI BARs:
>  - GTTMMADDR BAR 0 (1 for GEN2)
>  - GFXMEM BAR 2.
> Lets check before we start the i915 probe that these BARs are set,
> and that they have a size greater than 0.
>
> Signed-off-by: Piotr Pi=C3=B3rkowski <piotr.piorkowski@intel.com>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pci.c         | 33 +++++++++++++++++++++++++
>  drivers/gpu/drm/i915/intel_pci_config.h |  5 ++++
>  2 files changed, 38 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index 8261b6455747..ad60c69d9dd8 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -29,6 +29,8 @@
>  #include "i915_drv.h"
>  #include "i915_pci.h"
>=20=20

Superfluous blank line.

> +#include "intel_pci_config.h"

Please put the includes together and sort.

> +
>  #define PLATFORM(x) .platform =3D (x)
>  #define GEN(x) \
>  	.graphics.ver =3D (x), \
> @@ -1181,6 +1183,34 @@ static bool force_probe(u16 device_id, const char =
*devices)
>  	return ret;
>  }
>=20=20
> +static bool __pci_resource_valid(struct pci_dev *pdev, int bar)
> +{
> +	if (!pci_resource_flags(pdev, bar))
> +		return false;
> +
> +	if (pci_resource_flags(pdev, bar) & IORESOURCE_UNSET)
> +		return false;
> +
> +	if (!pci_resource_len(pdev, bar))
> +		return false;
> +
> +	return true;
> +}
> +
> +static bool intel_bars_valid(struct pci_dev *pdev, struct intel_device_i=
nfo *intel_info)
> +{
> +	const int gttmmaddr_bar =3D intel_info->graphics.ver =3D=3D 2 ? GEN2_GT=
TMMADR_BAR : GTTMMADR_BAR;
> +	const int gfxmem_bar =3D GFXMEM_BAR;

We don't usually bother with const for non-pointer local variables.

> +
> +	if (!__pci_resource_valid(pdev, gttmmaddr_bar))
> +		return false;
> +
> +	if (!__pci_resource_valid(pdev, gfxmem_bar))
> +		return false;
> +
> +	return true;
> +}
> +
>  static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_=
id *ent)
>  {
>  	struct intel_device_info *intel_info =3D
> @@ -1206,6 +1236,9 @@ static int i915_pci_probe(struct pci_dev *pdev, con=
st struct pci_device_id *ent)
>  	if (PCI_FUNC(pdev->devfn))
>  		return -ENODEV;
>=20=20
> +	if (!intel_bars_valid(pdev, intel_info))
> +		return -ENODEV;
> +
>  	/* Detect if we need to wait for other drivers early on */
>  	if (intel_modeset_probe_defer(pdev))
>  		return -EPROBE_DEFER;
> diff --git a/drivers/gpu/drm/i915/intel_pci_config.h b/drivers/gpu/drm/i9=
15/intel_pci_config.h
> index 12cd9d4f23de..c08fd5d48ada 100644
> --- a/drivers/gpu/drm/i915/intel_pci_config.h
> +++ b/drivers/gpu/drm/i915/intel_pci_config.h
> @@ -6,6 +6,11 @@
>  #ifndef __INTEL_PCI_CONFIG_H__
>  #define __INTEL_PCI_CONFIG_H__
>=20=20
> +/* PCI BARs */
> +#define GTTMMADR_BAR				0
> +#define GEN2_GTTMMADR_BAR			1
> +#define GFXMEM_BAR				2

Is anyone outside of intel_pci_config.c going to need these? They could
be there if not.

BR,
Jani.


> +
>  /* BSM in include/drm/i915_drm.h */
>=20=20
>  #define MCHBAR_I915				0x44

--=20
Jani Nikula, Intel Open Source Graphics Center
