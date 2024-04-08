Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 810FE89BFB5
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 15:00:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE928112567;
	Mon,  8 Apr 2024 13:00:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H3sm7fM5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DF85112495;
 Mon,  8 Apr 2024 13:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712581224; x=1744117224;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6zcVT7EK3XSYwhoAr8ZWUoLYP/XR+/nUDYnLVfu2aq8=;
 b=H3sm7fM5yp2QQMIRBgI/KiD08H0l5Yy6X4iigDuf03uTQbWHnt/jZlt3
 T09pqJJzeO+bK7uy1e7g1FZZ144q9XK2PN/zeY0yzJFvjCzI/VGvtOX10
 K7/mVSd3SxLvvVrWgBMqUIIzuKKfo+tyufdvJxGKglFaWp0Dv53Ja5Ju7
 owOmg1s8HypiRemfKACQ16Si6c9hdAWtL33H/qGrh0350aA267jPyJFA5
 yk3ktqcGKf0uCosNakvvUpgZ+GoHArSrdcUXYZStc3ydgLWNOsG04BNRn
 7NPxGaI0aLkf/fO3xfgkOse44artCumlNbrfbx+zMwFq1njyrFvW4DhZC A==;
X-CSE-ConnectionGUID: fh0EGd9tS6SKLkGjTQHcRA==
X-CSE-MsgGUID: rpvdoyenSreo/NKIh286nw==
X-IronPort-AV: E=McAfee;i="6600,9927,11038"; a="18999176"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="18999176"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 06:00:13 -0700
X-CSE-ConnectionGUID: TGqKYvIDQeawEBs4txS1/Q==
X-CSE-MsgGUID: y4GdTqrGQ4WjamMxgXDIsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="43043511"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Apr 2024 06:00:13 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Apr 2024 06:00:12 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Apr 2024 06:00:12 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 8 Apr 2024 06:00:12 -0700
Received: from outbound.mail.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 8 Apr 2024 06:00:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H04Eh/aTtdMa4c9VrJfKqDQHRMQbDJjSj1Ugt8VcgkJCOMSfMtgaG/0w5AesbgQX/Fmh0cw1R9c8vnyrGYyDWII+F0lDTIry+aVRqZEk3j6LLZ3RiAgJvLgcYIk+0WmIJseLu4cKjXXbbiuSBVWLxV/fVRnRLiW71RcnKtFinbCZCAbnHim2JBno4hhePgogRw69zslVGA8RfE/0Y9T/qRKMtQwB1cyNoLH0Y+C36Ck1Qi5c6g7pPCyq06KaisWw7MmDF4NcbMpXQVhjhV/h2sQXPEFiUmo9N+y1uhpK1rY2sXduKVAfz5qH2KCeGPZi6fFfOhshhyM7112YfsgYlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sjhUmygvqTRqVPQD8i2ug+l9HThxqo4CncibW9c9q/A=;
 b=LR3aS13Sx9bZb6SXTfEo4JFyvsPbmR1l81WX/K7/BelgEeFxKBx3W7a7k0hcGy8GioaJOMS+dUTz/upKNhrYovxmkfipwLjx8F9CfwWrWVdjQr8bRfOCYDYFx57x3HgbBcrl6+SvbhpR00gsMTk5JO23y0c6R/nWQ89Iu+osUnMbUphK6NssHki57p8PRjooemBczMAflWBdn5iSrf+XQsyu352p+KPyS/93NWPah0alo3DIPk6pSK1AR/m4JtNgOgJh1rqPm7mchiULyswLEsrf/Ag6JwfrtYP0YhgvMMyMNNN7o7gPbNS1vpheIKC7y83MhCa1dYnNVD702tCScA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by CH3PR11MB8093.namprd11.prod.outlook.com (2603:10b6:610:139::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7430.46; Mon, 8 Apr
 2024 13:00:10 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::3e5:27b2:966b:5a2b]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::3e5:27b2:966b:5a2b%4]) with mapi id 15.20.7452.019; Mon, 8 Apr 2024
 13:00:10 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Roper, Matthew D" <matthew.d.roper@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, "Vivekanandan, Balasubramani"
 <balasubramani.vivekanandan@intel.com>
Subject: RE: [PATCH v2 20/25] drm/i915/bmg: BMG should re-use MTL's south
 display logic
Thread-Topic: [PATCH v2 20/25] drm/i915/bmg: BMG should re-use MTL's south
 display logic
Thread-Index: AQHahbloEHl8yb5/l0eF4Xo9aMBYjLFeKWEA
Date: Mon, 8 Apr 2024 13:00:10 +0000
Message-ID: <IA1PR11MB62661388DCE7ECDAB4D6B0FCE2002@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
 <20240403112253.1432390-21-balasubramani.vivekanandan@intel.com>
In-Reply-To: <20240403112253.1432390-21-balasubramani.vivekanandan@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|CH3PR11MB8093:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: H9TblNIl+hn0JhgljVpa5kPdXt3MtaEP/ZXKfqsJ5H2F2f2DfvMRTOzCIUD8t0XRd2vQCBbhZVqOTrJVaKa0JdDHofIrlxOlC0d4EhQUV8VEIBUdEQe04OmhB7or3T9kSGk0tWNX9DiurTVHOreKo/gCOTuqiaWD7x30O9hxeSm7nF27DOI+LePhfyEVeN9qOhUZP1RT5C270nZgO7bjhpvCJIUzCF3CAG7GDuC9JZC6DvbXwhJJQBfxeY1zNlDD5ExqTWNAyEI6F5zYi+ZF5lYp5X8WguLNAOHgitsQAcjrabMOQ4HeQBoE+4Qs6zEC8kq3yAymJJbB2qIEQuGYnncsOjMN1jHsa54llQ35fxWINEKaGBTSgKWVed/z7yUtU6pXV1cIy5USs/SwGUtHjbXAg5ATCM5EQQyRPBK36DrFaIExfXkQcw22Ay+Elwn/F0CPhm+pl1Fs7+4q6K8jRGOsp/xCE/gJrB9Ld+EPsO++NkYO2DI/j/f6VYr+RzkbqFbpl0QTJOV98uhEXbM7uMzmlaAgda50MEcFbszx2U/w5ndvO/PcMgBLCIxbbjvY92EscTIqVDwgPrg7eOd4nauT8qiD0ZdNH1nIIMbluI9qgLuwsPK/7gC4AOOGgKgENfFDuA5eWZ6hbnINbtmxFC8QuR/PcJUkQrIQX6z/UyI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?COhvO5XTNs7iUAbwLAcDEEtpF/U9MOQNVuszk7I9tHXlAh7nideawyN7JspD?=
 =?us-ascii?Q?exEnHm+N4nDiNIAJwQY97nOAq+RnQkECA7gbMOma5r0KGGYh8hMpJfPzzXKS?=
 =?us-ascii?Q?9ld91ulCcRQVmiHnukUCyZVZGEZwYjSJei+mNayt7FiDGERLB8MU2g5SAwuW?=
 =?us-ascii?Q?Smu+ArHM0j4T9+XAtQiolSyp8iWnnkCJ17W5p8f8zwlGCxzTglewmW3iK/73?=
 =?us-ascii?Q?zqC5T2MNC/soUvPnsr3DTSWPThw77BAEYk4MOMgMDhy3W8rjw3WRVDGKNu7e?=
 =?us-ascii?Q?xx6iLdLzt9PGqINmXjONo7jzqbRBS4yBvVoh6lNh/YPzLvvdY9MHeJutu/L6?=
 =?us-ascii?Q?nHotLr/UTeC7entON2FBoz8Xm4Es2QYsI7HrVLeZsgtI3m72WIrdQ/Oi1lCB?=
 =?us-ascii?Q?LgpqcsNUguyoi8LJcOU2KV17eNmyj+CqqhLeKrUHlyqno+y9tMPnSBNZHoGb?=
 =?us-ascii?Q?DbuCKzQFtkWboCaK7UIPKGH+T+CUxBU249Whrt1MR2rPnpXtJvFNuB1YlVyJ?=
 =?us-ascii?Q?tpb5WjapixVE5tJuS8jyLZeNedYuoYgHrjrnGdAJ3Xc4fol0a1+xYe+3gyBu?=
 =?us-ascii?Q?RsTpct1nprScjHzIx6C1t/If9Na5pqkHtZmjaLXbhTHD46YwUY12YSoMCHfa?=
 =?us-ascii?Q?hGyXzGiWBOFnbj6E3TiRh6YfZziYiVeeNy9P/NqWFchShRl+xDSmr6sbFlW2?=
 =?us-ascii?Q?lGAuORFQaRjw+pgfN1CH4Lkj8dfpox5tG1J7BFb4KSe8EylgnDykcpWG/axY?=
 =?us-ascii?Q?/sQ5BdvO5HqHP0GsN56GOb9o/cnenukXeEUMkf/NI07yWakDBXvPiE7m95hn?=
 =?us-ascii?Q?HxkVvZzxOstHEavFW7BqC0iGeq4xCs+gZ1qI84yrOb5YTyrKH7yd0Skjoq5X?=
 =?us-ascii?Q?jVMBB9wq3oSFL/C1YY6ZplkmNI311hibxW3KbWrNDqFontVShkW/CwXDLKWk?=
 =?us-ascii?Q?n1n4kb0MZtuTRFKF9g5oe9nX0/7dH/96kqqVB0slRq43xtjv9hZqu2FeLI5E?=
 =?us-ascii?Q?l2KME9Wejs4PPrMTqESVoUU/+MKCiyQf1QvxBUpuLB7gJO/6dmXKCb2+qcl2?=
 =?us-ascii?Q?umQF7YFU+4l4pYGlgWJYFHPQCq8mU8Bo+iSWZ9QU8yQzrD8ruXU3tvwdXeVM?=
 =?us-ascii?Q?/0TXxYGt8BspH8OrsHJcCU6v4owdG4VNoGEvcfKZVfR6Tdw9zwJSptgkn5G8?=
 =?us-ascii?Q?gRyrt5ecfZeechNifb4qIir57swlNHm+ZW8vcd4LqqUhZYIu29FfeJ0NJ8lY?=
 =?us-ascii?Q?c1Volgzzzs3y5pJlqNEcpB+RRF9Rtfe8h2Vrd43QYSAHzNAAf9zIGYZvgbSI?=
 =?us-ascii?Q?Ww2WWWVTwEM/ncxfSSqJd1eEGuj2J2GGYwWSfIAROKVB/F4q3AIlyijN/fik?=
 =?us-ascii?Q?pt8vvtbXn3EMUJy49N85uIDEm8ksOPzru6xrkzGTIri8yTlQu/FZAVnXlBwW?=
 =?us-ascii?Q?a9Op/SjG+oOHkkiApS2UO8EBNMaoP7YH9FOwfH1/xgpL3Ggr6HPD9q0t9RU3?=
 =?us-ascii?Q?yKX3eHL4JjHt9PV66XG1iC5kPfuWq+2RL0tbAV6D4WBFMhw6/taTNx9YviGq?=
 =?us-ascii?Q?KkrnVS7ssmTASh/+JfkhUke/YHp/kPEEk/nG8/tmMbhrk0ONVQPUq6PD7I5U?=
 =?us-ascii?Q?zQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48b633a9-1a74-4188-0305-08dc57cbd2a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2024 13:00:10.3261 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z4MLkVcfuT9l4kHka+AVU1ow5MBNyyYJeZJCNafkOiXz2IIP7fBS0c8Z4/YOeuQgmU368wiusZ8GjGjJYO6WuEi3wuSqdQW3+UrAYicDKPY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8093
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
> Balasubramani Vivekanandan
> Sent: Wednesday, April 3, 2024 4:53 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>; Vivekanandan, Balasubramani
> <balasubramani.vivekanandan@intel.com>
> Subject: [PATCH v2 20/25] drm/i915/bmg: BMG should re-use MTL's south
> display logic
>=20
> From: Matt Roper <matthew.d.roper@intel.com>
>=20
> Battlemage's south display is the same as Meteor Lake's, including the ne=
ed to
							                          ^^^
Hi Bala,
We might want to rephrase this description a bit to fit in sentence.
> invert the HPD pins, which Lunar Lake does not need.
>=20
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Balasubramani Vivekanandan
> <balasubramani.vivekanandan@intel.com>
> ---

With this change LGTM.
Reviewed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Dnyaneshwar Bhadane

>  drivers/gpu/drm/i915/soc/intel_pch.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c
> b/drivers/gpu/drm/i915/soc/intel_pch.c
> index 3cad6dac06b0..542eea50093c 100644
> --- a/drivers/gpu/drm/i915/soc/intel_pch.c
> +++ b/drivers/gpu/drm/i915/soc/intel_pch.c
> @@ -218,10 +218,10 @@ void intel_detect_pch(struct drm_i915_private
> *dev_priv)
>  	if (DISPLAY_VER(dev_priv) >=3D 20) {
>  		dev_priv->pch_type =3D PCH_LNL;
>  		return;
> -	} else if (IS_METEORLAKE(dev_priv)) {
> +	} else if (IS_BATTLEMAGE(dev_priv) || IS_METEORLAKE(dev_priv)) {
>  		/*
>  		 * Both north display and south display are on the SoC die.
> -		 * The real PCH is uninvolved in display.
> +		 * The real PCH (if it even exists) is uninvolved in display.
>  		 */
>  		dev_priv->pch_type =3D PCH_MTL;
>  		return;
> --
> 2.25.1

