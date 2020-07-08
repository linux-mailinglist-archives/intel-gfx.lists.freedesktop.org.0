Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D66D72180A1
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 09:17:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACADA6E86F;
	Wed,  8 Jul 2020 07:17:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E8336E86F
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 07:17:28 +0000 (UTC)
IronPort-SDR: UtHV7oZ6lEucZ0X9cyApQ5zhR+5UMgGUecyxHQ8jmbST+vnlX7Avojus3uUnmB2Uq/UAL6YLr9
 ovmzg/J0XJ5w==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="212695330"
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="212695330"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 00:17:27 -0700
IronPort-SDR: KD6Uh5E9t1zo+Jc0LcyQFTKF14ekT1s1TJFC51YkkaMvvC0qoDCpTGSN4QAuxsRTuGCzBKCObM
 /pLfThs94bdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="268399943"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by fmsmga008.fm.intel.com with ESMTP; 08 Jul 2020 00:17:27 -0700
Received: from orsmsx116.amr.corp.intel.com (10.22.240.14) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Jul 2020 00:17:26 -0700
Received: from orsmsx107.amr.corp.intel.com ([169.254.1.92]) by
 ORSMSX116.amr.corp.intel.com ([169.254.7.172]) with mapi id 14.03.0439.000;
 Wed, 8 Jul 2020 00:17:26 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 19/28] drm/i915/dg1: Don't program
 PHY_MISC for PHY-C and PHY-D
Thread-Index: AQHWUAMpL2kRQv0b802ZeTtxysohmKj9T4Yw
Date: Wed, 8 Jul 2020 07:17:25 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B0734C6C2F2F@ORSMSX107.amr.corp.intel.com>
References: <20200701235339.32608-1-lucas.demarchi@intel.com>
 <20200701235339.32608-20-lucas.demarchi@intel.com>
In-Reply-To: <20200701235339.32608-20-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 19/28] drm/i915/dg1: Don't program
 PHY_MISC for PHY-C and PHY-D
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
> Subject: [Intel-gfx] [PATCH v3 19/28] drm/i915/dg1: Don't program
> PHY_MISC for PHY-C and PHY-D
> 
> From: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> 
> The only bit we use in PHY_MISC is DE_IO_COMP_PWR_DOWN, and the
> bspec details for that bit tell us that it need only be set for PHY-A and PHY-
> B.  It also turns out that there isn't even an instance of the PHY_MISC
> register for PHY-D on this platform.  Let's extend the EHL/RKL logic that
> conditionally skips PHY_MISC usage to DG1 as well.
> 
> Bspec: 50107
> Cc: Aditya Swarup <aditya.swarup@intel.com>
> Cc: Clinton Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_combo_phy.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> index 77b04bb3ec62..8604d4392e6a 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> @@ -189,7 +189,8 @@ static bool has_phy_misc(struct drm_i915_private
> *i915, enum phy phy)
>  	 * other combo PHY's.
>  	 */
>  	if (IS_ELKHARTLAKE(i915) ||
> -	    IS_ROCKETLAKE(i915))
> +	    IS_ROCKETLAKE(i915) ||
> +	    IS_DG1(i915))
>  		return phy < PHY_C;
> 
>  	return true;
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
