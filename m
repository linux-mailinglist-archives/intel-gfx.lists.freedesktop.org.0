Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6C099E2C1
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 11:25:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0928C10E2BF;
	Tue, 15 Oct 2024 09:25:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XFjoh+/z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B44B710E2BF
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2024 09:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728984329; x=1760520329;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/6qpXKeScOVgwdIlE63ZCKtRFLBx0CCyY0AsoyW1lws=;
 b=XFjoh+/zO8QWTITpxPP6F75dp4590vFWTNdJ5IoLCFQPewAaLeeBkFJH
 jnObi566WD//Rs4/w3dhBSA42hixDTUMB2us73wUoZPyofNnIEBvD59na
 cxR4N9rUkV7uqXlb4uEjVjXXWYMZA6o8mezl0uGr4Q4qteffO6PltYNfh
 ji4b0koAgSM5HGSvdIxHUHXktdJavXQsjIFWrfqkoJyKsYfNPJb3HkH1C
 +l2rua5WGZwfT9FAn/bjwyuqz7k/B0RTSIGyJWWcscdpctiTPS/TJNaAm
 rpsnjiavHjErdGtgpfUXWUCx1UoY9G3kZMvDiyo4kzm4BplttJtqBdl5i A==;
X-CSE-ConnectionGUID: KpyW38jERs6EyThgqU3vvA==
X-CSE-MsgGUID: /ukZJvx/ST+K57B0qBOuKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39487538"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39487538"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 02:25:29 -0700
X-CSE-ConnectionGUID: HkuNWAJgRAubwl4lXrAhkA==
X-CSE-MsgGUID: p7yj3RBURoWZorRGBV593w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; d="scan'208";a="78661340"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Oct 2024 02:25:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 02:25:28 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 15 Oct 2024 02:25:28 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 15 Oct 2024 02:25:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eAmNu2aOGQXUjQMd063Mr7naeLFNFEAQyACyGx104POr35yNzQHLa72si0pZUvhWO96DZ9VJj+ahX4YNTQEvdOs56IeFyB4S18wAHm6Mg7QX5agdyTNQ6JHGnFw6gdksRyXFiSpkiH8RDQxzYXlfDE0vkvOEmwa3w3O/JCBvKw1yfXWOrcufPeisi+r73bgXkEpuKzvFYlEsuVN6DfuBbWlhjaG97d4cY2QTxRbc3AiKyJN4LUd6tWXFXvgk5juJkPg5cE1KB8rCgNij8HG1ac3Dfh46iMygPbN9KjlhjWp6K3MLPtoOBHO5jWpXwdxtD3+bcgwdhNWiUGIJFgQkNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dlDlBaFHbWAzBTdDp9UVTQ1+6gc7SUhFBW9lbn1D0i0=;
 b=PI+8+fxVtmuwkzgdTysy9cehFUaTjDEQA9xuWk5BLCMmItK14IF0YBhBw7LAJQ/yZbP1bKMC+WV86MwIwJ5pfbWJyHzlnggHM4RJ4ETcf+CaOm+PYJl+FI+SaWV0VJ1kzvuS8/OFNPV96mCkIsQmbbIWVr87j0YikcejVKnHsHFyxaiCvJ7ln2c4gZ3aI5k9dlv2gLfcnVowm2hcrRkzeSkF++J+Eh+JwvNv3NL80LNN8y/argm+Go7KuQEJ2dzTtk/gjhcF/UJ+QMXNJBIGuRjMwp88Fj69PP0ASVSo8jwo2lJAfaYs0/FMqAa5F1aONGNijYYvZBl9pWxYbN3GNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CH2PR11MB8777.namprd11.prod.outlook.com (2603:10b6:610:283::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.27; Tue, 15 Oct
 2024 09:25:25 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8048.020; Tue, 15 Oct 2024
 09:25:25 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Garg, Nemesa" <nemesa.garg@intel.com>
Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for planar
 yuv
Thread-Topic: [PATCH] drm/i915/display: Workaround for odd panning for planar
 yuv
Thread-Index: AQHbEyss5I8hhBCHpEq+5+sR31waxLKHnp8w
Date: Tue, 15 Oct 2024 09:25:25 +0000
Message-ID: <SN7PR11MB67500EDC1756999D257653D7E3452@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240930112343.2673244-1-nemesa.garg@intel.com>
In-Reply-To: <20240930112343.2673244-1-nemesa.garg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CH2PR11MB8777:EE_
x-ms-office365-filtering-correlation-id: 639cb036-ff36-4740-1d19-08dcecfb4d5d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?HQcUIS2yL+ZlnhYtgrbcRgu6ykKqp+lTjREnKL1if52VzxQeOJFNvgz2l2Fl?=
 =?us-ascii?Q?vr5xgoW5hUrxBEKCTKiNQ8QK71KA72brFcH+QK6RB82x6KdGNjOyBfwowjGV?=
 =?us-ascii?Q?NtOl/38Kt945i9kRXCFej1rzPsyPA9MwmVx8W6e0C7+iokiBop/v5wr49y0A?=
 =?us-ascii?Q?N5RiHi0Q6kolzP8N2Ql7pOUnQViCrqwaCCoQ8gKjsPNbCaxK2m7JhLn2CRei?=
 =?us-ascii?Q?DXsg1UGJ+SdK26onvPZ9S+SFL24/jddJyBYLpFshhc2TMatUbnhCbHqK0jd/?=
 =?us-ascii?Q?re5mUpsg5qjYvanrKyPx6Wtkhm2btRBz6rRxXoOBXDmhFoC7MYc5xtXNSrOF?=
 =?us-ascii?Q?1iXuMjrlZGFXAWOFWRBvAINFgTdtC9LFi6rbh5WjptpNR5DtZsTBGxK7fj/u?=
 =?us-ascii?Q?30RKOjbeO8zE+5FMJBqQNbjUqgl24YJe5MsOoeY5tS4Dld+HbndpVQnWZuFm?=
 =?us-ascii?Q?HVNE8Df8FUDwh5dpqZ9YNn+vgKybPyjKkwTFW0npJyj37dFVoIB5w05L0FqI?=
 =?us-ascii?Q?GE1dxELepNrPT0nEl1qTuL2riE5pM1RrPx/3XLBT/xs/FaQMFQlfPBnF+xMP?=
 =?us-ascii?Q?CZ5GM0QP1Mo+NzmByviYdB6u3vG/f1LevYRLgPD+AgqE+prBI6QGWG4jXYsY?=
 =?us-ascii?Q?T5MltrLw7lD3klSO4nZGuQvaT4hNV4PAJFMwPxAA2/NmRpmW5fucO0nd+rwo?=
 =?us-ascii?Q?2oSrI4jps4J3ljAMA50CfVQ49yTNqE4Snu2ZZSnJJO6Iya5wlimJ/KnkfWKl?=
 =?us-ascii?Q?4t3DuAXtuRjAbQJpHlHJZ0lUWFlGAQsHOKvKZDg0SL8gYYNMjTty8Goh92Lj?=
 =?us-ascii?Q?NKjRdSgF/iV3LrMIBywgJQowF3ezXJV5fbDu868AdZOFOHtp/dtOEGCktRog?=
 =?us-ascii?Q?Znv8xRQHVorSORKLkpCeBuCfzKY51hPZ00ikIp/kqE9QBSrGYhM2eRhYqipl?=
 =?us-ascii?Q?Mfbfy0frNj+i+OhK4dkPsCSVcNvGTF05/hopbY1ru/cnhAjJRQ8xy771DSH+?=
 =?us-ascii?Q?7DrBJqSKiWG/y2JEwMG+Vip12HEHPFLSYMbDeluFWafgRb3CNzYRzwtGlz2A?=
 =?us-ascii?Q?OPJtEmvDFQmn/PTw4iXwi3Ng9DHvk4bmVtOkivBd7l8aA5QV0rzGZHlVtjTB?=
 =?us-ascii?Q?/9g/OmKr0HtqVo9CNoeJ3sPuNsqph6PoTGmDs6B92iGygt9BqKq2Hxz2Qtsg?=
 =?us-ascii?Q?So5F8qpcJtuVJdoYSNg96j8QBHMwERTyXzlURXWt7HPGqcl1N/o21YPuwILw?=
 =?us-ascii?Q?CIszVdhf2e+677y+rKmZeos+jHGQlTIOX1lo0zrxg7LTl7mHqWR8IEfcQKdu?=
 =?us-ascii?Q?p7JjP9hByS8JuJJ0T5Xw8dWLIdPx6Cr4ICvpnYOt1j9uLQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VL5SWmqkQJBJLfOcZZ2CbtNoxG4vkvsSl6RHxgZGSyH5Pvy0eJR96+mavAmW?=
 =?us-ascii?Q?mjHjyMdAA4fT42bTcze+YHdfi0p1DIl6b2QxNSHlFCwnQGjgkmsYk5U6JRhC?=
 =?us-ascii?Q?+ue88WEyhueAXsu1d6bcV04Ud5VwRkfugnDZ3W0rZ0I/R/DAMt17MkdawmHc?=
 =?us-ascii?Q?/bTRhcZPqQEjMLKDsEyOnND3rQ2HCv9wDzSM4svwJvYsVQ/m1yDLbRDMwKMU?=
 =?us-ascii?Q?BnjBZVd8OuAySN3JAQFYkYYUqLiDkaos7siZtnkzDl8oOZPTCkCuosWr+bIf?=
 =?us-ascii?Q?RLCwMndYj+uRvHAgH77zrrEr98jr0ZFR6lGooY7P9IawnNWZaf7EWZBBypyD?=
 =?us-ascii?Q?/VZqvWtS+TZtHlSARaOZ9cVTvuwj0eVwdQ58Sz7ZLpd4MFG2FV5op357Wm0G?=
 =?us-ascii?Q?GCeNjH2PEhDgNjueI1J+jEg4QQrD6ZP5Cp8kUYHddW3xECoZcDWYTSVAUS7I?=
 =?us-ascii?Q?r8TAH2XPBLZS8lqReX3m3hfx2M+DIX3/wJ3O+Gu2lzhAeQJF7pXgOxBsOEtM?=
 =?us-ascii?Q?C8M0l/Getgktkt4WcAHY4lQ7nVEl7r3H5UpMFLLhcfs4PBwbn3G1BKcOUR9x?=
 =?us-ascii?Q?jHn4jbR0IyU4+1C7m+dcSzBAFH/7LD1zNFuZwFRSGndixowX9Bw9Iy+8VtYL?=
 =?us-ascii?Q?Stsp4Ccasg5EcxIaSMhaZyDt+LaSB4qO7rAqzkO/8L6E6hmZe81cm4TrK35H?=
 =?us-ascii?Q?ppnYLEQU+hJfDnZWEj0v9MWzn/OuYYYXGjPm//dBbEZeecxyc3/Eo4T9Gox2?=
 =?us-ascii?Q?UImUwQNqhLHyu8gi14KSeENCVGUj6QthE+XAJxtPLZgn9EzsCmoSIxeZjR4f?=
 =?us-ascii?Q?ABTrHQpgTc3Y8f91Xb4DloR4uIInNR1ugzpEvPzDksjVuEZ2XYxYsrqcEf18?=
 =?us-ascii?Q?cBbru3SlQdeeOYyt3/3tYvBh+wFDjhXazFigUPrXl0D7V9+IlqTXwFVYxrjN?=
 =?us-ascii?Q?SobOpJruVMee84lZudBED9Hn3wPE/4tJi1ViYKw0kx08fTVpUCzv0Om5zeNq?=
 =?us-ascii?Q?Cw1up1YX6JAj9ZXxFslcHpD/PdpN7gOflm7rc9P5B3dDUHOXjxpyzAGHG8Pa?=
 =?us-ascii?Q?+mnQhC+Lsfltsc1mfmZRP+TZ9HRmElLn1YRK6Xtz7jTx/Iau4uivKwY1QfPQ?=
 =?us-ascii?Q?BCB8yqXqzh5uzu6S8caMyWM8BaLSzI1M2XnYZumNnYYSOomGS+XenUIsHBtW?=
 =?us-ascii?Q?HnaZS+FZRjtiMk7rjGvZ7OSEigpiVzhduCh/U6qN7WD0j4MAi0SEQpG0xey2?=
 =?us-ascii?Q?JgGvU+xZ7SIlGn1cR16JPJ2dgiAD4vIhks+NyxegKQZ2JZFY8tBZT+udJWGP?=
 =?us-ascii?Q?MWttv+yvVQWK5fhSUV4m/px6ZCJfj5VqSiadvpDF6W8dCWRNlShQ5sROyM0Q?=
 =?us-ascii?Q?hQ8yksx5KNbs2fDenMKrA8813zOxE+EAZDoySQxzUvwrvt5+RLZcwKek0fVE?=
 =?us-ascii?Q?jzedVlUp8r/bvqSUfCcMxF+nHMtkMFngYJACl6qijCgBFilXwI+eh32WLVy3?=
 =?us-ascii?Q?cXXUy4pv6g99o94Di6m/2rTkOWPeXADUzoGKZ/uVoaTvjgz6QITgCm2CIEpy?=
 =?us-ascii?Q?+UjVg7mpEbpPPZq1Tg9Dp3OBBx2+BNeNaZBYa2tY?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 639cb036-ff36-4740-1d19-08dcecfb4d5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2024 09:25:25.8503 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dZ/61UA2m0VOD/2PPRS+HoUiUWe6IKWCU7iCoKvugde94ofy2GML1ce8LWZx61SL8C2LUVEfPcGKymbEDQQ9Cg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB8777
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Nemesa Garg
> Sent: Monday, September 30, 2024 4:54 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Garg, Nemesa <nemesa.garg@intel.com>
> Subject: [PATCH] drm/i915/display: Workaround for odd panning for planar
> yuv
>=20
> Disable the support for odd x pan for even xsize for NV12 format as
> underrun issue is seen.
>=20
> WA: 16024459452
>=20
> v2: Replace HSD with WA in commit message [Suraj]
>     Modified the condition for handling odd panning
>=20
> v3: Simplified the condition for checking hsub
>     Using older framework for wa as rev1[Jani]
>=20
> v4: Modify the condition for hsub [Sai Teja]
>     Initialize hsub in else path [Dan]
>=20
> v5: Replace IS_LUNARLAKE with display version.
>     Resolve nitpicks[Jani]
>=20
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index e979786aa5cf..e3401a4f7992 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -1029,6 +1029,14 @@ int intel_plane_check_src_coordinates(struct
> intel_plane_state *plane_state)
>  		 * This allows NV12 and P0xx formats to have odd size
> and/or odd
>  		 * source coordinates on DISPLAY_VER(i915) >=3D 20
>  		 */
> +		/*
> +		 *  Wa_16023981245 for display version 20.
> +		 *  Do not support odd x-panning for even xsize for NV12.
> +		 */
> +		if (DISPLAY_VER(i915) =3D=3D 20 && fb->format->format =3D=3D
> DRM_FORMAT_NV12 &&
> +		    src_x % 2 !=3D 0 && src_w % 2 =3D=3D 0)

Also one more issue here according to HSD " Odd Pan position  + Even plane =
size for YVU420 ..... SW decision is to not allow Odd Pan X position"
Which would mean you need to check src_w and src_h instead of src_x to chec=
k even plane.

Regards,
Suraj Kandpal
> +			return -EINVAL;
> +
>  		hsub =3D 1;
>  		vsub =3D 1;
>  	} else {
> --
> 2.25.1

