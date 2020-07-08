Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C62B2181C9
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 09:51:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBB1E6E0C2;
	Wed,  8 Jul 2020 07:51:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E5316E0C2
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 07:51:38 +0000 (UTC)
IronPort-SDR: oiOp8hO5wNtXMaRGaRTQqjv4FSwColguLOE1m5VFRvaHarXpwS0UjreNmJixwuv/hbrfpYXPdi
 uaWMOIfatJdA==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="135988169"
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="135988169"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 00:51:37 -0700
IronPort-SDR: AKwkhTELtyZL96MZnmBC70ZjyZega3qPwt8cTjpk4f31hnVYrv03a3LP7NSh+3nwgd/kohAJmF
 5osbWk3iwTSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="279874227"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga003.jf.intel.com with ESMTP; 08 Jul 2020 00:51:37 -0700
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Jul 2020 00:51:37 -0700
Received: from orsmsx107.amr.corp.intel.com ([169.254.1.92]) by
 ORSMSX111.amr.corp.intel.com ([169.254.12.75]) with mapi id 14.03.0439.000;
 Wed, 8 Jul 2020 00:51:37 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 20/28] drm/i915/dg1: Update comp
 master/slave relationships for PHYs
Thread-Index: AQHWUAMV1Q+7uZip+02iXES/vLiAFaj9WOfw
Date: Wed, 8 Jul 2020 07:51:36 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B0734C6C2FA5@ORSMSX107.amr.corp.intel.com>
References: <20200701235339.32608-1-lucas.demarchi@intel.com>
 <20200701235339.32608-21-lucas.demarchi@intel.com>
In-Reply-To: <20200701235339.32608-21-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 20/28] drm/i915/dg1: Update comp
 master/slave relationships for PHYs
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Lucas De Marchi
> Sent: Thursday, July 2, 2020 5:24 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v3 20/28] drm/i915/dg1: Update comp
> master/slave relationships for PHYs
> 
> From: Matt Roper <matthew.d.roper@intel.com>
> 
> As with RKL, DG1's PHY C acts as a comp master for PHY D.
> 
> Bspec: 49291
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_combo_phy.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> index 8604d4392e6a..2fad4871d4e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> @@ -243,14 +243,14 @@ static bool phy_is_master(struct
> drm_i915_private *dev_priv, enum phy phy)
>  	 *
>  	 * ICL,TGL:
>  	 *   A(master) -> B(slave), C(slave)
> -	 * RKL:
> +	 * RKL,DG1:
>  	 *   A(master) -> B(slave)
>  	 *   C(master) -> D(slave)
>  	 *
>  	 * We must set the IREFGEN bit for any PHY acting as a master
>  	 * to another PHY.
>  	 */
> -	if (IS_ROCKETLAKE(dev_priv) && phy == PHY_C)
> +	if ((IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv)) && phy ==
> PHY_C)
>  		return true;
> 
>  	return phy == PHY_A;
> --
> 2.26.2
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
