Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9421C7210
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 15:49:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25B936E878;
	Wed,  6 May 2020 13:49:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 895D46E878
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 13:49:08 +0000 (UTC)
IronPort-SDR: 5u5YIhN60SDmaDyFqlIkH1Q6ddNIUQUtmpK/WdYofsZgfjHtbOsyBR0JTGIn1OAZxXECA2t3wm
 JG2OhthzBBhQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 06:49:07 -0700
IronPort-SDR: OOe/yWnCh9Ii9mGdnN/h1t7gF4QiXVFI0sLyHCtxoTsrS3Y4FjBQ8t2XiiOt8Um6jJTTBO45b8
 lDCUyWW8bJ3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,359,1583222400"; d="scan'208";a="263561125"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga006.jf.intel.com with ESMTP; 06 May 2020 06:49:07 -0700
Received: from orsmsx160.amr.corp.intel.com (10.22.226.43) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 6 May 2020 06:49:07 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.68]) by
 ORSMSX160.amr.corp.intel.com ([169.254.13.187]) with mapi id 14.03.0439.000;
 Wed, 6 May 2020 06:49:07 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 10/22] drm/i915/rkl: RKL only uses
 PHY_MISC for PHY's A and B
Thread-Index: AQHWImbK9azIzebuokKkEAQMoT9x2qibFL0g
Date: Wed, 6 May 2020 13:49:06 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073482C1471@ORSMSX108.amr.corp.intel.com>
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
 <20200504225227.464666-11-matthew.d.roper@intel.com>
In-Reply-To: <20200504225227.464666-11-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzY3MjliMWQtZGVkOC00ODM5LWE4ZmEtNjgxN2UwZmI2NGEyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiS1lqeENCNUhcLzhCNVlVWUxyVkhhMCtrbzRWSzNsNHJ4aUsyWWpXNXFqVnFuSUpTS3k0UkZ5YmFnV05xZmR6S1UifQ==
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 10/22] drm/i915/rkl: RKL only uses
 PHY_MISC for PHY's A and B
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Matt
> Roper
> Sent: Tuesday, May 5, 2020 4:22 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v2 10/22] drm/i915/rkl: RKL only uses PHY_MISC for
> PHY's A and B
> 
> Since the number of platforms with this restriction are growing, let's separate
> out the platform logic into a has_phy_misc() function.
> 
> Bspec: 50107
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_combo_phy.c    | 30 +++++++++++--------
>  1 file changed, 17 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> index 9ff05ec12115..43d8784f6fa0 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> @@ -181,11 +181,25 @@ static void cnl_combo_phys_uninit(struct
> drm_i915_private *dev_priv)
>  	intel_de_write(dev_priv, CHICKEN_MISC_2, val);  }
> 
> +static bool has_phy_misc(struct drm_i915_private *i915, enum phy phy) {
> +	/*
> +	 * Some platforms only expect PHY_MISC to be programmed for PHY-A
> and
> +	 * PHY-B and may not even have instances of the register for the
> +	 * other combo PHY's.
> +	 */
> +	if (IS_ELKHARTLAKE(i915) ||
> +	    IS_ROCKETLAKE(i915))
> +		return phy < PHY_C;
According BSpec 50107, there is an instance of this for combo PHY C as well. 

Anusha
> +
> +	return true;
> +}
> +
>  static bool icl_combo_phy_enabled(struct drm_i915_private *dev_priv,
>  				  enum phy phy)
>  {
>  	/* The PHY C added by EHL has no PHY_MISC register */
> -	if (IS_ELKHARTLAKE(dev_priv) && phy == PHY_C)
> +	if (!has_phy_misc(dev_priv, phy))
>  		return intel_de_read(dev_priv, ICL_PORT_COMP_DW0(phy))
> & COMP_INIT;
>  	else
>  		return !(intel_de_read(dev_priv, ICL_PHY_MISC(phy)) & @@ -
> 317,12 +331,7 @@ static void icl_combo_phys_init(struct drm_i915_private
> *dev_priv)
>  			continue;
>  		}
> 
> -		/*
> -		 * Although EHL adds a combo PHY C, there's no PHY_MISC
> -		 * register for it and no need to program the
> -		 * DE_IO_COMP_PWR_DOWN setting on PHY C.
> -		 */
> -		if (IS_ELKHARTLAKE(dev_priv) && phy == PHY_C)
> +		if (!has_phy_misc(dev_priv, phy))
>  			goto skip_phy_misc;
> 
>  		/*
> @@ -376,12 +385,7 @@ static void icl_combo_phys_uninit(struct
> drm_i915_private *dev_priv)
>  				 "Combo PHY %c HW state changed
> unexpectedly\n",
>  				 phy_name(phy));
> 
> -		/*
> -		 * Although EHL adds a combo PHY C, there's no PHY_MISC
> -		 * register for it and no need to program the
> -		 * DE_IO_COMP_PWR_DOWN setting on PHY C.
> -		 */
> -		if (IS_ELKHARTLAKE(dev_priv) && phy == PHY_C)
> +		if (!has_phy_misc(dev_priv, phy))
>  			goto skip_phy_misc;
> 
>  		val = intel_de_read(dev_priv, ICL_PHY_MISC(phy));
> --
> 2.24.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
