Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81693295393
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 22:43:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B31546EE85;
	Wed, 21 Oct 2020 20:43:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D81E6EE86
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 20:43:43 +0000 (UTC)
IronPort-SDR: efQVMc4ZhmVJejdn9iAlGyVYYRyN0UBNjCIbPxuO3rJIOBGGhPL1Owep4ifOTY3YVVy6vCRluF
 LvdLd6YNgGqg==
X-IronPort-AV: E=McAfee;i="6000,8403,9781"; a="163940275"
X-IronPort-AV: E=Sophos;i="5.77,402,1596524400"; d="scan'208";a="163940275"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 13:43:43 -0700
IronPort-SDR: eXcY2K7FqPwkPWcmYKgxEMb53D/B2P17UpRkYvfdr8GUdnpylog63emb4zqu8QLP8T1XaYGFet
 GBY/2NlNmYzw==
X-IronPort-AV: E=Sophos;i="5.77,402,1596524400"; d="scan'208";a="359018263"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 13:43:43 -0700
Date: Wed, 21 Oct 2020 13:43:42 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20201021204342.GC627052@mdroper-desk1.amr.corp.intel.com>
References: <20201021133213.328994-1-aditya.swarup@intel.com>
 <20201021133213.328994-3-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201021133213.328994-3-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 02/18] x86/gpu: add ADL_S stolen memory
 support
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 21, 2020 at 06:31:57AM -0700, Aditya Swarup wrote:
> From: Caz Yokoyama <caz.yokoyama@intel.com>
> =

> ADL_S re-uses the same stolen memory registers as TGL and ICL.
> =

> Bspec: 52055
> Bspec: 49589
> Bspec: 49636
> =

> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Caz Yokoyama <caz.yokoyama@intel.com>
> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>

I think you need to Cc the x86 maintainers on this patch and get their
ack to merge it through the i915 tree.


Matt

> ---
>  arch/x86/kernel/early-quirks.c | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirk=
s.c
> index a4b5af03dcc1..6edd1e2ee8af 100644
> --- a/arch/x86/kernel/early-quirks.c
> +++ b/arch/x86/kernel/early-quirks.c
> @@ -551,6 +551,7 @@ static const struct pci_device_id intel_early_ids[] _=
_initconst =3D {
>  	INTEL_EHL_IDS(&gen11_early_ops),
>  	INTEL_TGL_12_IDS(&gen11_early_ops),
>  	INTEL_RKL_IDS(&gen11_early_ops),
> +	INTEL_ADLS_IDS(&gen11_early_ops),
>  };
>  =

>  struct resource intel_graphics_stolen_res __ro_after_init =3D DEFINE_RES=
_MEM(0, 0);
> -- =

> 2.27.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
