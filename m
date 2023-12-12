Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0451C80E42A
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Dec 2023 07:09:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07FF710E54B;
	Tue, 12 Dec 2023 06:09:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FD9210E54B
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Dec 2023 06:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702361385; x=1733897385;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=b/pPCmwVFqxcbW1Plsi0QcdVXAXShaUk1BZmWYb9Q6I=;
 b=i9YJcvGbwm391ke/YXAnYEV9MdwSdztcu1C/tGH5Z9IvPktXO2TkDX/K
 7oXbgI8Ops+AfjCMAG+/eHrgrzBrmCl1/OvT/H5b/a+vSNx6UbX12OfwC
 pYVJB8BiIBf5wJWN/iEWG27ZQPKaIEdZOTZtr/kAX7tkrZOi7wXdXNvaP
 KpVWwcIadTuJBdA3yqr3lewuxs4z0gfap+a7PvFcnUnSKcdH1ixNvYbB/
 WJEObqjTbNWWVE5MaCDQyc1qoP0kNVOiMsh6bAQzNvOXc7z7st4IwS8GI
 rpCiQWk9P24ZPi6f9/6mZbrp339VF1bn3iUhuU4Nj5FlZQ/6S4A8bXy3R g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="459073239"
X-IronPort-AV: E=Sophos;i="6.04,269,1695711600"; d="scan'208";a="459073239"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 22:09:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,269,1695711600"; d="scan'208";a="21388074"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Dec 2023 22:09:44 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Dec 2023 22:09:44 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Dec 2023 22:09:43 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Dec 2023 22:09:43 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Dec 2023 22:09:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JKvO1kCKneRQGsdKZSliP+rsEwaY7St6FT7BYIchy/CU4XPxvnu86uakb1QRw5AurKrPWYJnrMlTyZG4lv5ib+HSlTxzPpD38Cq8rqPicZo/NQp9zHgFmvVakKJtZNBIOLj656Cxum1kAubYp5w9flhiubqjqipqQ0zyHZkl80y/izcU23vebJKxBL1iRM/GRBsgOY5CgvCTKdTM2zC1VyTjLn7fzFdl2LVTA7NohVTLx1ixFVA1u/AIZLcUVIliR9NGW7hNYPjsdRNmWLkWZp2+XdHy3VfS9zAApK0gYNXjuiRDaAxjEvyAudC/uK8ixyV50ZoCNwEpPwq9YeFStQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WsyiBRSO3+0TElDLkYSR8s2upUd2Pr/sySRR2PpawPY=;
 b=DBLoIpaTeFrD18fA4rWLXwl1rqYnn6kK6Loj29DhCY1tK6m2JaBrxzrPk7EdArbgfqy2UCf3b0afHkxXTaNANdgFOXlRjLZ+Kl3EeC76r8ZB8RKJZSMols16DyHDBUuZ5gpOTQj1FBFFOquGTaWuv5JjT1aCUD4HkvP1i0sxEn6GEAkohkSmeygmHCQ9sbngqyJ2d81xn8PgYMmkrFUaDHzVpTvg/uR0/TPGlUhrgGOz0LyLGcPPqk7hrMf7S9k4+txp7kKF5iLuVWXvXzhWlK80Dcu18U5n69+iVBzfRYuQABczyA6OH5CGDi1Se5V/fBLT3qwWLIPRkFIcze024A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8740.namprd11.prod.outlook.com (2603:10b6:8:1b4::5) by
 LV2PR11MB5973.namprd11.prod.outlook.com (2603:10b6:408:14e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.32; Tue, 12 Dec
 2023 06:09:35 +0000
Received: from DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4]) by DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4%6]) with mapi id 15.20.7068.031; Tue, 12 Dec 2023
 06:09:35 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: [Intel-gfx] [v2 1/2] drm/i915/display: Add support for
 darskscreen detection
Thread-Topic: [Intel-gfx] [v2 1/2] drm/i915/display: Add support for
 darskscreen detection
Thread-Index: AQHaCLvYrjfmIDoOKEmYxo3N+DIp6LClVWRw
Date: Tue, 12 Dec 2023 06:09:35 +0000
Message-ID: <DS0PR11MB8740AD290181E2A926B1F177BA8EA@DS0PR11MB8740.namprd11.prod.outlook.com>
References: <20231027095336.3059445-1-nemesa.garg@intel.com>
 <20231027095336.3059445-2-nemesa.garg@intel.com>
In-Reply-To: <20231027095336.3059445-2-nemesa.garg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8740:EE_|LV2PR11MB5973:EE_
x-ms-office365-filtering-correlation-id: ab423271-121a-45e1-141a-08dbfad8ea92
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iwFAD7iGPgkOniDAWPTMcES/vLg8KPVrBNly7rtoC9qanmBJEojqVVkt66n7/DUiYnKAqYQTuvJx3eH7B/i0ISlq2Bauo3DNu0He1duLgQwr6ePMyeo14/C6AFPd7xzufdZLJ0+0Ub0ld6RuektTganAp/0Hyc++olCryFMhbEPxBTaGqP57Q6KUgcecbu7QOo0AX8lEV6e40BBnzxeRQVOa7DWzxh435Hc/z1MErArA+fOgyu7qpMnjZlSkSOodlY2XiU5K0YUhj7+VVfveSbXmydKPeemdIR0TTrZ5QbhW6T9NH+mQUDNtKsvotPv5ys3TikGPSbsGX/3lABZtVzum8qb7iD+NdkjJggHX4KnDxs3/CCZg+HYOqutH15w+WDRneSIgTY3OzDtU6MIta1u7Pb2SN4rNK9MAdwu1058BeXhuXtYb1tBhkpArDpXyJQKam0mhPw3ob0yAw/WXrEqyykLhgj6eSdCmtEf8KqYMpaNP8Tjn+p8sHbMXy6YjEYgxuJx3Ys6G7TakRjYXrJFt0TUoqceeRPZ7ABgR8NQ7RqKsPcm++5sErlXzKsdVgGdCru4G+lAbBT7r7FwW1V0zI3g/kQMBk06WxNDc8VQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8740.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(396003)(136003)(39860400002)(366004)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(83380400001)(2906002)(41300700001)(478600001)(86362001)(82960400001)(64756008)(38070700009)(66446008)(76116006)(66556008)(66476007)(66946007)(110136005)(122000001)(71200400001)(316002)(38100700002)(7696005)(8676002)(8936002)(55016003)(53546011)(6506007)(9686003)(52536014)(33656002)(5660300002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?ZPJ/PKQL6EhnGZA5zMmD7VINg1IlJol9TKboy7E2rTwxE0GUQ/rb0GZr1A?=
 =?iso-8859-1?Q?nqvZ1UtMM2Dn6yXDs/k6wobVWzhKBgLJg0s6f9Y5Rywnaa5S4+YjNuKgLm?=
 =?iso-8859-1?Q?ntY8HV5Z8axmmDFZU/hzbKTR5Zd+QVLDK59spR/o6bILwjH+1lgby8/cB6?=
 =?iso-8859-1?Q?JEEbZpsbGjCBkVW0scQIUHltuclO+AoCuhUYx9vAg+esAK/84ok3SYrH6N?=
 =?iso-8859-1?Q?Rn4q5xhztQLPqLqSouTTJs5ttXzw6E3ibv2Niybrzv8uAy6nZC72pWV2rg?=
 =?iso-8859-1?Q?dhQnAdJthJVYkZnLHOo+wyjXHzS5iEpoWPcuWSBJuIk7hB8eHbPSfPfBT7?=
 =?iso-8859-1?Q?NEKLbL5kQq8Dxmo3Q76J3+1Cwqeh4dPsocw2cI/G4KjJnTX1ug1IfOH4AO?=
 =?iso-8859-1?Q?era+4ujlqIVl9E5pe74HYH1c4xF9vTzq+UB5Uoet+TsPF/iYm3mOMRZfv7?=
 =?iso-8859-1?Q?0fNS0e2dDAAOMIzFoBQ40zhNMceyDkQgbfpI4ui1FdyZPjh5Pzur6SLSkk?=
 =?iso-8859-1?Q?N1r04sdlT3yg09LDdghj4aKlzd0HwlKNFTEDgWqVAJNU3eatdVuVXWv0pY?=
 =?iso-8859-1?Q?WrYf+Km1G6NDoRgTAlP+kR7EOF3exS9+jLQPsgBWiZnwXabyDgrmTamv94?=
 =?iso-8859-1?Q?BqCT8eHILD9EOAAFgKgpxmArx8kvuJOLl7PTJHrILC3/77KipprPxZ259f?=
 =?iso-8859-1?Q?W2J95uvZ9Md6eFpBWUgen0ge2eWlboSAuqG2Hw6ZiFKgzn51fyThVV7aNv?=
 =?iso-8859-1?Q?MReVuLnaysQ/0AvBiKAjvimf407Sy0uNdoM2RwDRGXhXIE2wTfkgBKUMVW?=
 =?iso-8859-1?Q?Mh89JmhTknaaSLQIv9vh5kRyx7H3/WDsSekSG1jkuuddsuUVyt2cZN1X0k?=
 =?iso-8859-1?Q?0uzO6ZYP3ub4RskypyPY96Lb5T5lWq4HpgXtYGdJ8X7FJP21d1gi0tai6I?=
 =?iso-8859-1?Q?UYi7QWunVM+VERf0uyXf/Bn3+6sh3PGUKZkzsthDAKhAs6MqC78V1LXv2Z?=
 =?iso-8859-1?Q?cjTUnybjbXCy0524AgoYN/8UTaUlP9m7ODYIzP71WpEW67W+FEhKpiaH5p?=
 =?iso-8859-1?Q?wvy0N25/GHzOiFsOlMUiOlFz0TpptpGrUYeLI6RGesH+b0mNz3ICAtXWv+?=
 =?iso-8859-1?Q?tssZdsIRoysCrCOxLg+EGQFK3OqBjgNT+3Ij8r5mODNKUXY/L4NZ2coeLJ?=
 =?iso-8859-1?Q?0jJKIcyVMXQCF3qlnqT1atfFHzAfCdp60PYnesO+N9tZKoSBUgSNA4/HKd?=
 =?iso-8859-1?Q?4oH0fwVbKRfy48Dfg45mObu2ig86kAUZB6Zo9WJWEQI1oGEEHrg/7Q8WHZ?=
 =?iso-8859-1?Q?i5alcTy+5XqX36p20V/JY3NSl1nGcqnmfki+iWX7zB/3eV3v+809QUw2S9?=
 =?iso-8859-1?Q?sKs3ZDvGxH3l5KgIge6fecs9sLK7JU84CpQPqx7YKDlYPWpc69yn8oDmNN?=
 =?iso-8859-1?Q?xJydzrLww96yalGlqTjosLjLkAzmRwEtpjiwBu938J0lM3Et4PvyJpCJmA?=
 =?iso-8859-1?Q?ltzdN0ougY+RmpEVaESqXsbzc7/EBiZXFRf/Xl2h9JR6nGl6994x71XAEL?=
 =?iso-8859-1?Q?Y74dnEN+NWjnvKRyokXEj83NYqwvdmuToOTLrv6/AC5NR8+1a2hzhFvMfL?=
 =?iso-8859-1?Q?EedQRzjqHj0f82FXFGX8Mv+HGAJLFIxtWl?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8740.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab423271-121a-45e1-141a-08dbfad8ea92
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2023 06:09:35.8005 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yEzEDjNS1OLXorGfildZkjis+/hJLoLMnWXFw8Cfo13Qjco67zDC8hXjbnwEQKxKSYP0Y68OoF9CxMRU+gWE9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5973
X-OriginatorOrg: intel.com
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ne=
mesa
> Garg
> Sent: Friday, October 27, 2023 3:24 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [v2 1/2] drm/i915/display: Add support for darskscre=
en
> detection
>=20
> Darkscreen detection checks if all the pixels of the frame are less then =
or equal
> to the comparision value. The comparision value is set to 256 i.e black. =
So upon
> getting black pixels from the pipe, the dark screen detect bit is set and=
 an error
> message will be printed.
>=20
> v2: Addressed review comments (Jani)
>=20
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |  1 +
>  .../gpu/drm/i915/display/intel_darkscreen.c   | 87 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_darkscreen.h   | 26 ++++++
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  drivers/gpu/drm/i915/i915_reg.h               |  8 ++
>  5 files changed, 124 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_darkscreen.h
>=20
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefil=
e
> index 88b2bb005014..538d5a42f9e3 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -254,6 +254,7 @@ i915-y +=3D \
>  	display/intel_crtc.o \
>  	display/intel_crtc_state_dump.o \
>  	display/intel_cursor.o \
> +	display/intel_darkscreen.o \
>  	display/intel_display.o \
>  	display/intel_display_driver.o \
>  	display/intel_display_irq.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_darkscreen.c
> b/drivers/gpu/drm/i915/display/intel_darkscreen.c
> new file mode 100644
> index 000000000000..0be719c76c4e
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_darkscreen.c
> @@ -0,0 +1,87 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2023 Intel Corporation
> + *
> + */
> +
> +#include "i915_reg.h"
> +#include "intel_de.h"
> +#include "intel_display_types.h"
> +
> +#define COLOR_DEPTH_6BPC 6
> +#define COLOR_DEPTH_8BPC 8
> +#define COLOR_DEPTH_10BPC 10
> +#define COLOR_DEPTH_12BPC 12
> +
> +#define COMPARE_VALUE_6_BPC 4
> +#define COMPARE_VALUE_8_BPC 16
> +#define COMPARE_VALUE_10_BPC 64
> +#define COMPARE_VALUE_12_BPC 256
> +
> +#define COMPARE_VALUE_CALCULATION_FACTOR 12
> +
> +/*
> + * Checks the color format and compute the comapre value based on bpc.
> + */
Can we have this in proper kernel doc format?

> +void intel_dark_screen_enable(struct intel_crtc_state *crtc_state) {
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	u32 comparevalue;
> +
> +	if (!crtc->dark_screen.enable)
> +		return;
> +
> +	if (crtc_state->output_format !=3D INTEL_OUTPUT_FORMAT_RGB)
> +		return;
Better to have an error print saying not supported.

Thanks and Regards,
Arun R Murthy
-------------------
> +
> +	switch (crtc_state->pipe_bpp / 3) {
> +	case COLOR_DEPTH_6BPC:
> +		comparevalue =3D COMPARE_VALUE_6_BPC;
> +		break;
> +	case COLOR_DEPTH_8BPC:
> +		comparevalue =3D COMPARE_VALUE_8_BPC;
> +		break;
> +	case COLOR_DEPTH_10BPC:
> +		comparevalue =3D COMPARE_VALUE_10_BPC;
> +		break;
> +	case COLOR_DEPTH_12BPC:
> +		comparevalue =3D COMPARE_VALUE_12_BPC;
> +		break;
> +	default:
> +		drm_dbg(&dev_priv->drm,
> +			"Bpc value is incorrect:%d\n",
> +			crtc_state->pipe_bpp / 3);
> +		return;
> +	}
> +
> +	comparevalue =3D comparevalue <<
> +		(COMPARE_VALUE_CALCULATION_FACTOR - crtc_state-
> >pipe_bpp / 3);
> +
> +	intel_de_write(dev_priv, DARK_SCREEN(cpu_transcoder),
> +		       DARK_SCREEN_ENABLE | DARK_SCREEN_DETECT |
> +		       DARK_SCREEN_DONE |
> DARK_SCREEN_COMPARE_VAL(comparevalue));
> +
> +	intel_de_wait_for_set(dev_priv,
> +			      DARK_SCREEN(crtc->config->cpu_transcoder),
> DARK_SCREEN_DONE,
> +1);
> +
> +	if (intel_de_read(dev_priv, DARK_SCREEN(crtc->config-
> >cpu_transcoder)) &
> +			  DARK_SCREEN_DETECT) {
> +		drm_err(&dev_priv->drm,
> +			"Dark Screen detected:%c\n",
> +			pipe_name(crtc->pipe));
> +	}
> +
> +	intel_de_rmw(dev_priv, DARK_SCREEN(crtc->config->cpu_transcoder),
> 1, DARK_SCREEN_DETECT |
> +		     DARK_SCREEN_DONE);
> +}
> +
> +void intel_dark_screen_disable(struct intel_crtc_state *crtc_state) {
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +
> +	intel_de_write(dev_priv, DARK_SCREEN(cpu_transcoder), 0); }
> diff --git a/drivers/gpu/drm/i915/display/intel_darkscreen.h
> b/drivers/gpu/drm/i915/display/intel_darkscreen.h
> new file mode 100644
> index 000000000000..366e43499fc4
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_darkscreen.h
> @@ -0,0 +1,26 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2023 Intel Corporation
> + *
> + */
> +
> +#ifndef __INTEL_DARKSCREEN_H__
> +#define __INTEL_DARKSCREEN_H__
> +
> +#include <linux/types.h>
> +
> +struct intel_crtc_state;
> +struct intel_crtc;
> +
> +struct intel_darkscreen {
> +	bool enable;
> +};
> +
> +#ifdef CONFIG_DEBUG_FS
> +void intel_dark_screen_enable(struct intel_crtc_state *crtc_state);
> +void intel_dark_screen_disable(struct intel_crtc_state *crtc_state);
> +void intel_darkscreen_crtc_debugfs_add(struct intel_crtc *crtc);
> +
> +#endif
> +
> +#endif /* __INTEL_DARKSCREEN_H_ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 65ea37fe8cff..bd0306e9318f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -49,6 +49,7 @@
>  #include "i915_vma.h"
>  #include "i915_vma_types.h"
>  #include "intel_bios.h"
> +#include "intel_darkscreen.h"
>  #include "intel_display.h"
>  #include "intel_display_limits.h"
>  #include "intel_display_power.h"
> @@ -1517,6 +1518,7 @@ struct intel_crtc {
>=20
>  #ifdef CONFIG_DEBUG_FS
>  	struct intel_pipe_crc pipe_crc;
> +	struct intel_darkscreen dark_screen;
>  #endif
>  };
>=20
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index 135e8d8dbdf0..a9f7b80a56cf
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2097,6 +2097,14 @@
>  #define   TRANS_PUSH_EN			REG_BIT(31)
>  #define   TRANS_PUSH_SEND		REG_BIT(30)
>=20
> +#define _DARK_SCREEN_PIPE_A		0x60120
> +#define DARK_SCREEN(trans)		_MMIO_TRANS2(trans,
> _DARK_SCREEN_PIPE_A)
> +#define   DARK_SCREEN_ENABLE		REG_BIT(31)
> +#define   DARK_SCREEN_DETECT		REG_BIT(29)
> +#define   DARK_SCREEN_DONE		REG_BIT(28)
> +#define DARK_SCREEN_COMPARE_MASK	REG_GENMASK(9, 0)
> +#define DARK_SCREEN_COMPARE_VAL(x)
> 	REG_FIELD_PREP(DARK_SCREEN_COMPARE_MASK, (x))
> +
>  /* VGA port control */
>  #define ADPA			_MMIO(0x61100)
>  #define PCH_ADPA                _MMIO(0xe1100)
> --
> 2.25.1

