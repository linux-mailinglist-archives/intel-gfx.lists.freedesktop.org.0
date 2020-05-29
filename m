Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 785781E837E
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2020 18:19:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC0C16E944;
	Fri, 29 May 2020 16:19:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C2AC6E944
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 May 2020 16:19:42 +0000 (UTC)
IronPort-SDR: FVUc+DlTrXZ410wFBwVNDBD4Brgy6LlHPfY+kF2UpOHFIoR5zO/x5IohKNssMLUwVaC5InGyXT
 aGT3YNkoA5FQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2020 09:19:40 -0700
IronPort-SDR: IEo9I+ZuZrGSKU5XWl2loovu/TbHw38QUJj2GWBTwFQitsy/PJFZBbmQOLk3TAvG7OQN3lWGjJ
 NOvKiyFLSpsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,449,1583222400"; d="scan'208";a="257372976"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga008.fm.intel.com with ESMTP; 29 May 2020 09:19:40 -0700
Received: from fmsmsx104.amr.corp.intel.com (10.18.124.202) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 29 May 2020 09:19:38 -0700
Received: from fmsmsx115.amr.corp.intel.com ([169.254.4.85]) by
 fmsmsx104.amr.corp.intel.com ([169.254.3.199]) with mapi id 14.03.0415.000;
 Fri, 29 May 2020 09:19:33 -0700
From: "Paauwe, Bob J" <bob.j.paauwe@intel.com>
To: "Dhanavanthri, Swathi" <swathi.dhanavanthri@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915/ehl: Extend w/a 14010685332 to
 JSP/MCC
Thread-Index: AQHWLzvv5OoUz/VZAEeXQpo9bP47D6i/SbHQ
Date: Fri, 29 May 2020 16:19:33 +0000
Message-ID: <2BC816AD90F74A48BE4D753FE4818233C865AAD9@fmsmsx115.amr.corp.intel.com>
References: <20200521064448.29522-1-swathi.dhanavanthri@intel.com>
In-Reply-To: <20200521064448.29522-1-swathi.dhanavanthri@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/ehl: Extend w/a 14010685332 to
 JSP/MCC
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We've tried this on EHL and it doesn't work.

The intent of the workaround is that the bit must be toggled after all sout=
h display registers are
accessed before entering a S0ix state.  If any south display register is ac=
cessed after this bit is
toggled, it resets things and the bit needs to be toggled again.

When we test this on EHL, the workaround isn't working.   Based on some add=
itional testing
It appears that something is accessing a south display register after this =
point. We need to
find the correct location such that this is the last thing that accesses a =
south display register.

I suspect that this is also not working for ICL

Bob
--
Bob Paauwe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
Bob.J.Paauwe@intel.com
IOTG / Platform Software Engineering
Intel Corp.=A0 Folsom, CA
(916) 356-6193=A0=A0=A0=A0
(530) 409-0831 (cell)

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Sw=
athi
> Dhanavanthri
> Sent: Wednesday, May 20, 2020 11:45 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v3] drm/i915/ehl: Extend w/a 14010685332 to
> JSP/MCC
> =

> This is a permanent w/a for JSL/EHL.This is to be applied to the
> PCH types on JSL/EHL ie JSP/MCC
> Bspec: 52888
> =

> v2: Fixed the wrong usage of logical OR(ville)
> v3: Removed extra braces, changed the check(jose)
> =

> Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_irq.c
> b/drivers/gpu/drm/i915/i915_irq.c
> index 4dc601dffc08..bc82d0d8ad5b 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2902,8 +2902,10 @@ static void gen11_display_irq_reset(struct
> drm_i915_private *dev_priv)
>  	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
>  		GEN3_IRQ_RESET(uncore, SDE);
> =

> -	/* Wa_14010685332:icl */
> -	if (INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_ICP) {
> +	/* Wa_14010685332:icl,jsl,ehl */
> +	if (INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_ICP ||
> +	    INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_JSP ||
> +	    INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_MCC) {
>  		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
>  				 SBCLK_RUN_REFCLK_DIS,
> SBCLK_RUN_REFCLK_DIS);
>  		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
> --
> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
