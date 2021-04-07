Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEC73571F6
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Apr 2021 18:14:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83A196E945;
	Wed,  7 Apr 2021 16:14:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FFC06E945
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Apr 2021 16:14:36 +0000 (UTC)
IronPort-SDR: VXoRrb7J7A2vNfwoanNu59nCBWH9yj4gYJZPOxKxjpBCb5vljroJXcuqIYVRx+wkdQyxvPtXrq
 FEN6P53EiHPg==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="213737385"
X-IronPort-AV: E=Sophos;i="5.82,203,1613462400"; d="scan'208";a="213737385"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 09:14:36 -0700
IronPort-SDR: E1QxRK824XrxDKufyjJLeVUJ7qQaKFAhNvDVYrCQY8qAYFixl0jN8bw8nEqLnv9D68/BOBNSov
 7pbktp5fcSGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,203,1613462400"; d="scan'208";a="448309959"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Apr 2021 09:14:36 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 7 Apr 2021 09:14:35 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 7 Apr 2021 09:14:35 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2106.013;
 Wed, 7 Apr 2021 09:14:35 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 3/3] drm/i915/display: remove strap checks
 from gen 9
Thread-Index: AQHXHOZszBnrNmDFR0G6RVbfLtfaTqqpWEDw
Date: Wed, 7 Apr 2021 16:14:34 +0000
Message-ID: <ce463ddb1a9d4543bd645a82880e16df@intel.com>
References: <20210319173603.521779-1-lucas.demarchi@intel.com>
 <20210319173603.521779-4-lucas.demarchi@intel.com>
In-Reply-To: <20210319173603.521779-4-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/display: remove strap
 checks from gen 9
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Lucas
> De Marchi
> Sent: Friday, March 19, 2021 10:36 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915/display: remove strap checks
> from gen 9
> 
> Direction on gen9+ was to stop reading the straps and only rely on the VBT
> for marking the port presence. This happened while dealing with
> WaIgnoreDDIAStrap and instead of using it as a WA, it should now be the
> normal flow. See commit 885d3e5b6f08 ("drm/i915/display: fix comment on
> skl straps").
> 
> For gen 10 it's hard to say if this will work or not since I can't test it, so leave it
> with the same behavior as before.
> 
> For PCH_TGP we should still rely on the VBT to make ports E and F not
> available.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 36 ++++++--------------
>  1 file changed, 11 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 82471961e721..b9af1f1e347e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -11687,34 +11687,25 @@ static void intel_setup_outputs(struct
> drm_i915_private *dev_priv)
>  		intel_ddi_init(dev_priv, PORT_B);
>  		intel_ddi_init(dev_priv, PORT_C);
>  		vlv_dsi_init(dev_priv);
> +	} else if (IS_GEN(dev_priv, 9)) {
> +		intel_ddi_init(dev_priv, PORT_A);
> +		intel_ddi_init(dev_priv, PORT_B);
> +		intel_ddi_init(dev_priv, PORT_C);
> +		intel_ddi_init(dev_priv, PORT_D);
> +		intel_ddi_init(dev_priv, PORT_E);
> +		intel_ddi_init(dev_priv, PORT_F);
>  	} else if (HAS_DDI(dev_priv)) {
> -		int found;
> +		u32 found;
> 
>  		if (intel_ddi_crt_present(dev_priv))
>  			intel_crt_init(dev_priv);
> 
> -		/*
> -		 * Haswell uses DDI functions to detect digital outputs.
> -		 * On SKL pre-D0 the strap isn't connected. Later SKUs may or
> -		 * may not have it - it was supposed to be fixed by the same
> -		 * time we stopped using straps. Assume it's there.
> -		 */
> +		/* Haswell uses DDI functions to detect digital outputs. */
>  		found = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) &
> DDI_INIT_DISPLAY_DETECTED;
> -		/* WaIgnoreDDIAStrap: skl */
> -		if (found || IS_GEN9_BC(dev_priv))
> +		if (found)
>  			intel_ddi_init(dev_priv, PORT_A);
> 
> -		/* DDI B, C, D, and F detection is indicated by the
> SFUSE_STRAP
> -		 * register */
> -		if (HAS_PCH_TGP(dev_priv)) {
> -			/* W/A due to lack of STRAP config on TGP PCH*/
> -			found = (SFUSE_STRAP_DDIB_DETECTED |
> -				 SFUSE_STRAP_DDIC_DETECTED |
> -				 SFUSE_STRAP_DDID_DETECTED);
> -		} else {
> -			found = intel_de_read(dev_priv, SFUSE_STRAP);
> -		}
> -
> +		found = intel_de_read(dev_priv, SFUSE_STRAP);
>  		if (found & SFUSE_STRAP_DDIB_DETECTED)
>  			intel_ddi_init(dev_priv, PORT_B);
>  		if (found & SFUSE_STRAP_DDIC_DETECTED) @@ -11723,11
> +11714,6 @@ static void intel_setup_outputs(struct drm_i915_private
> *dev_priv)
>  			intel_ddi_init(dev_priv, PORT_D);
>  		if (found & SFUSE_STRAP_DDIF_DETECTED)
>  			intel_ddi_init(dev_priv, PORT_F);
> -		/*
> -		 * On SKL we don't have a way to detect DDI-E so we rely on
> VBT.
> -		 */
> -		if (IS_GEN9_BC(dev_priv))
> -			intel_ddi_init(dev_priv, PORT_E);
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
>  		int found;
> 
> --
> 2.30.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
