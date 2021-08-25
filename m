Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1663F7166
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 11:04:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A622488735;
	Wed, 25 Aug 2021 09:04:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C8CF88735
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 09:04:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="303063837"
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; d="scan'208";a="303063837"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 02:04:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; d="scan'208";a="527142158"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Aug 2021 02:04:06 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 25 Aug 2021 02:04:05 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 25 Aug 2021 02:04:04 -0700
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.010;
 Wed, 25 Aug 2021 14:34:02 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Deak, Imre"
 <imre.deak@intel.com>, "Tangudu, Tilak" <tilak.tangudu@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/runtime_pm: Let's avoid the
 undocumented D1 opregion notification.
Thread-Index: AQHXmP8GIsxlPl1BFk6aMzFQ3OBPTquDsgfg
Date: Wed, 25 Aug 2021 09:04:02 +0000
Message-ID: <d245d1add9d14f199a4e8db2c252abfa@intel.com>
References: <20210824154452.2066678-1-rodrigo.vivi@intel.com>
 <20210824154452.2066678-2-rodrigo.vivi@intel.com>
In-Reply-To: <20210824154452.2066678-2-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/runtime_pm: Let's avoid the
 undocumented D1 opregion notification.
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ro=
drigo
> Vivi
> Sent: Tuesday, August 24, 2021 9:15 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Deak, Imre <imre.deak@intel.c=
om>;
> Tangudu, Tilak <tilak.tangudu@intel.com>
> Subject: [Intel-gfx] [PATCH 2/2] drm/i915/runtime_pm: Let's avoid the
> undocumented D1 opregion notification.
>=20
> At least for newer generations, let's try to do the right thing that is t=
o notify the
> opregion that we are going into D3hot.
>=20
> But to avoid breaking the world let's keep the older undocumented behavio=
r in
> place.
>=20
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Tilak Tangudu <tilak.tangudu@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_runtime_pm.c | 24 ++++++++----------------
>  1 file changed, 8 insertions(+), 16 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c
> b/drivers/gpu/drm/i915/intel_runtime_pm.c
> index 43cdc2f3ff9e..371bbc58db92 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -706,27 +706,19 @@ int intel_runtime_pm_suspend(struct
> intel_runtime_pm *rpm)
>=20
>  	rpm->suspended =3D true;
>=20
> -	/*
> -	 * FIXME: We really should find a document that references the
> arguments
> -	 * used below!
> -	 */
> -	if (IS_BROADWELL(i915)) {
> -		/*
> -		 * On Broadwell, if we use PCI_D1 the PCH DDI ports will stop
> -		 * being detected, and the call we do at intel_runtime_resume()
> -		 * won't be able to restore them. Since PCI_D3hot matches the
> -		 * actual specification and appears to be working, use it.
> -		 */
> -		intel_opregion_notify_adapter(i915, PCI_D3hot);
> -	} else {
> +	if (GRAPHICS_VER(i915) < 8) {
>  		/*
> -		 * current versions of firmware which depend on this opregion
> -		 * notification have repurposed the D1 definition to mean
> +		 * Some older versions of firmware which depend on this
> opregion
> +		 * notification had repurposed the D1 definition to mean
>  		 * "runtime suspended" vs. what you would normally expect
> (D3)
>  		 * to distinguish it from notifications that might be sent via
> -		 * the suspend path.
> +		 * the suspend path. Unfortunately there's no documentation
> +		 * available right now to justify this flow. However let's
> +		 * keep for historical reasons.
>  		 */
>  		intel_opregion_notify_adapter(i915, PCI_D1);

> +	} else {
> +		intel_opregion_notify_adapter(i915, PCI_D3hot);
This is going to call the opregion ACPI SBCB method with function SWSCI_SBC=
B_ADAPTER_POWER_STATE i.e. value =3D7 and with input PARAM value as input p=
ower state (PCI_D0, PCI_D1, ...).
Below is the TGL  SBCB method code block for command SWSCI_SBCB_ADAPTER_POW=
ER_STATE (this method can be retrieve from one of SSDT table in /sys/firmwa=
re/acpi/tables/SSDT*)

If ((GESF =3D=3D 0x07))
                {
                    If (((S0ID =3D=3D One) && (OSYS < 0x07DF)))
                    {
                        If (((PARM & 0xFF) =3D=3D One))
                        {
                            ADBG ("IgSbcb:GUAM(1)")
                            \GUAM (One)
                        }

                        If (((PARM & 0xFF) =3D=3D Zero))
                        {
                            ADBG ("IgSbcb:GUAM(0)")
                            \GUAM (Zero)
                        }
                    }

                    If ((PARM =3D=3D Zero))
                    {
                        Local0 =3D CLID /* \_SB_.PC00.GFX0.CLID */
                        If ((0x80000000 & Local0))
                        {
                            CLID &=3D 0x0F
                            GLID (CLID)
                        }
                    }

                    GESF =3D Zero
                    PARM =3D Zero
                    Return (SUCC) /* \_SB_.PC00.GFX0.SUCC */
             }

With above code block, it either checks for input PARAM value either 0 or 1=
.
I am not sure but passing PCI_D3hot as input parameter may affect the SBCB =
functionality. here=20
Thanks,
Anshuman  Gupta
>  	}
>=20
>  	assert_forcewakes_inactive(&i915->uncore);
> --
> 2.31.1

