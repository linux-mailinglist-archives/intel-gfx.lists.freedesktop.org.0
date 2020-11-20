Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81AA82B9F09
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 01:12:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 714AF6E832;
	Fri, 20 Nov 2020 00:12:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA5F56E832
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 00:12:06 +0000 (UTC)
IronPort-SDR: /wfDnicbeSiRK2lZ7FFZ0B5M9vDPpUTKeo4gBWGU7/drOC09DlbxyOfcaic+dtLHMwB7Jd3hLk
 ovhdnpFEubmg==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="167876905"
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="167876905"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 16:12:05 -0800
IronPort-SDR: saaDsYN6Zp4mOwjib5xm871wDoiMASkSPm4cFbrt6TGvlxc0UmQLIR3CE+A0k6ATzQzVwH9q7V
 TU+zidILa5PQ==
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="360225041"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 16:12:05 -0800
Date: Thu, 19 Nov 2020 16:12:04 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20201120001204.GA2099117@mdroper-desk1.amr.corp.intel.com>
References: <20201117185029.22078-1-aditya.swarup@intel.com>
 <20201117185029.22078-7-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201117185029.22078-7-aditya.swarup@intel.com>
Subject: Re: [Intel-gfx] [PATCH 06/21] drm/i915/adl_s: Add Interrupt Support
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

On Tue, Nov 17, 2020 at 10:50:14AM -0800, Aditya Swarup wrote:
> From: Anusha Srivatsa <anusha.srivatsa@intel.com>
> =

> ADLS follows ICP/TGP like interrupts.
> =

> v2: Use "INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP" of hpd_icp (Lucas)
> =

> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_irq.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_=
irq.c
> index dc6febc63f1c..758ed4f6c9f3 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -191,8 +191,7 @@ static void intel_hpd_init_pins(struct drm_i915_priva=
te *dev_priv)
>  =

>  	if (HAS_PCH_DG1(dev_priv))
>  		hpd->pch_hpd =3D hpd_sde_dg1;
> -	else if (HAS_PCH_TGP(dev_priv) || HAS_PCH_JSP(dev_priv) ||
> -		 HAS_PCH_ICP(dev_priv) || HAS_PCH_MCC(dev_priv))
> +	else if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
>  		hpd->pch_hpd =3D hpd_icp;
>  	else if (HAS_PCH_CNP(dev_priv) || HAS_PCH_SPT(dev_priv))
>  		hpd->pch_hpd =3D hpd_spt;
> -- =

> 2.27.0
> =


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
