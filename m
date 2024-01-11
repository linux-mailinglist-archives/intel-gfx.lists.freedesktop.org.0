Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E776B82AFEB
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jan 2024 14:47:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E39010E089;
	Thu, 11 Jan 2024 13:47:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE95D10E089
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jan 2024 13:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704980826; x=1736516826;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version;
 bh=gQnjsujYxtKfP6lTytw2KNJ8WZGmLarcVNsDSrr6Wn8=;
 b=CGskGTOVtkARGcZ1LQ2dp+yo3905LQ+/6RzMZjM05a17ZBG1tpLM7KMJ
 bN5gDBmgJAnmurzyel5060q55hL5in5mesjEFmmTb48MtReMaodWoT6RJ
 jXmum0h80RGL1e13hNNmpcq6L04i7yccyUbAFYo4TUNDl8u22mMAoBac3
 8npH9/hgA7WARuidlNk2u1hN6OaXBS+uUlDkgDAFJxJzN9W+YT37j+eBa
 BcYauo9QWjHrHBUI8IudzRjThJ2bdmNHN24S6wXOstxHxcafN3MYVRgVu
 sefcESKGnXwxXpmo5KP0oP8g1n+OKkYfB4/JlgOGeHIwwQPUSjuj2UTvp Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="430030113"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; 
 d="scan'208,217";a="430030113"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 05:47:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="785996359"
X-IronPort-AV: E=Sophos;i="6.04,186,1695711600"; 
 d="scan'208,217";a="785996359"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jan 2024 05:47:06 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Jan 2024 05:47:05 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Jan 2024 05:47:04 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Jan 2024 05:47:04 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Jan 2024 05:47:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VtvUUYIksKJRxFgxSgyda9ccyVCKj4fkpZM1tYmA/icFgh0CNa4xFrL57M37a2vi9P86DRdtRbcGWLHt2yapv5AczBRodeydFL376ysLoRTkZVb+oSzg05naC5KGd2n98pLxeq+nzuKbcyhdAPTIkEhe6iewjLIJWQbqnMmxGa1HqD2mDOeT4bLKBcIT4CVaNYkqRyeITUMKXLcBNgINeRiofu7gLDUc7QckfhBBx327/c2mdHaMuPvW3k9qD0vDFlO5qRo5rg+Y0/LfrV0fhYIRzu6eiaFQqO7LkWN9MI695Dg+7/iunC+nMEil+RSkbI2bwVTKH7+w4RSeUUU+4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hLtiE9T6NPFwvmJOJINqwGFblT5BO1SYq04g4q22DVQ=;
 b=Y5Gq5AdjK6ngXWzhuUY5GnV6d0VjwYQzQRrgl3x5qRKe2OBcOgvitLrFvTyHePIXmOow0IC4x8eHzUu32fGTT/54R8vHsgu+RhBQlLvHzqb3QJaLpbbOSSuWpuLsdcc/qH3HgNM55RzNe2/wVfPVrwShoi5Gc6SN6cYp6wT1wyXUzAgJb3/m9iZn6Wm163vRwUsejH7HZksy8XItqrqp7QVQnr79AseO5hDjKHIS9zTgsX+mGySBdcOBIcyrgWbS/BfCBD8BLZKWJhvF+sfFmeXxxvFwozoudAL/b8zH753MYVN+wCa6gQzW80Q//pCCoEiQIzDlVuyTSfBXFwhUmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SJ0PR11MB4813.namprd11.prod.outlook.com (2603:10b6:a03:2df::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.19; Thu, 11 Jan
 2024 13:47:02 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::81e3:1bc5:e10c:404f]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::81e3:1bc5:e10c:404f%7]) with mapi id 15.20.7159.020; Thu, 11 Jan 2024
 13:47:02 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v1 1/2] drm/i915/display: use PAGE_SIZE macro for FBC cfb
 alloc
Thread-Topic: [PATCH v1 1/2] drm/i915/display: use PAGE_SIZE macro for FBC cfb
 alloc
Thread-Index: AQHaQ7Rh9hd0WuMiOE+nnnYnMDDKnrDUoRkAgAAAgLY=
Date: Thu, 11 Jan 2024 13:47:02 +0000
Message-ID: <CY8PR11MB7777554397E901BBB52CA6B3F6682@CY8PR11MB7777.namprd11.prod.outlook.com>
References: <20240110110009.28799-1-vinod.govindapillai@intel.com>
 <20240110110009.28799-2-vinod.govindapillai@intel.com>
 <ZZ_wqnWx5I5h7hKZ@intel.com>
In-Reply-To: <ZZ_wqnWx5I5h7hKZ@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SJ0PR11MB4813:EE_
x-ms-office365-filtering-correlation-id: 1a15cde1-5115-4ce8-c29e-08dc12abca90
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qrCmUNyx9Oy1zS0QWbItPtKzQ9201vJ2GNGvtusR9iaQenveLn/juYf+16qCh/hEYcDfSxt8skUopEMY5R3FJgrWPUJPTaqIIbHMD/7z5T/uQzTW0/iw5UVbCssG0LyBL166UjMYMcgCk08SqncJej6fg67yPJx1rRmv4dSc+BmO9ewB0iY5If2KY0YxItCtGHPgu80WEHMTUV5z2CNKCNHKSAN9OBB8APkgjvPDLEN/D43slfLFgYFrB1lvtgs5DJWyUNGKoKcYithHKPr81dOoKlZ5YXZJ7EbiSvFgMcO5+/3C9Y2H6BUJwyA/98ibU6/Rwa+zVYl54ci72U6rDK729L9iOFOjVi+p6kVB/IZzb0NHn1AybjXUw0NuuqXFKQ6HMMAW/lKkMJJuS3QQ0NA0EL5OZ8FNUq+sZbtTaNzbJmknYjo9KVvcVltjCet8jL342y/VlWPoxEvsMgkpFpuoxIAPXcbHXN2xdQjKtkla+wlYrZ3S7+QHo80KVFL7x5UBSpSbFwWwwt3GbPJ47FryHt/aeeqcBJBeFW6Zx46O8lLOhSsFAH9D8i3uhiG+W06xh+i93ifN52D9JkB23nxG9kA4i7D/S7aXB8G6XCUbxwM8SvdaQQhBiDv08P+4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(366004)(376002)(39860400002)(136003)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(7696005)(9686003)(53546011)(71200400001)(26005)(6506007)(478600001)(83380400001)(66574015)(5660300002)(2906002)(41300700001)(66946007)(66556008)(54906003)(66446008)(66476007)(64756008)(76116006)(316002)(6916009)(91956017)(8936002)(4326008)(8676002)(52536014)(38070700009)(38100700002)(122000001)(86362001)(33656002)(82960400001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?coPWmwLQfnam9qZqzRl6Tm0Sew8xmqG1aTLgnYvd6745bauJ2MmFrKpoXZ?=
 =?iso-8859-1?Q?APs36l+95toC6CRiHGC875/qQyOWzEZ6F9CnXQm/+pDjHtT1TISwZQVf+V?=
 =?iso-8859-1?Q?qUYfxb8nZYo7bd5bJJLA7ZBUd3Mh3/uQEwywt8kmK/kUarBPzBACjq8jcm?=
 =?iso-8859-1?Q?pfvs/lR09bje9BecwqH3Cwq3rrw/MoWihY3odxYiutm1t25pXgG9tvR94k?=
 =?iso-8859-1?Q?G6OM3+3Hl8hIRLFqMiRFhSYm5ocoE0iUwYTMD+XEGDpxTUOEFt1zA9xgxW?=
 =?iso-8859-1?Q?RrCX6TPhE5PEtdfzmV5BicNCAZOTNh7EihdQf24Q+qtg2s6RKjBhTJJ1L5?=
 =?iso-8859-1?Q?oB9pXXDkSXAH8lgWw6KExLWSikS4UXrZjMqP67hlHsRSZDmKcQR0pdE1s2?=
 =?iso-8859-1?Q?l3BmWW/EHmWvw/sXQUw2qcBlzr/RTS6HOvlBDR9GmFlYROqGSV1V4QRCnh?=
 =?iso-8859-1?Q?oClzm0YbUo9f8DSHqBc7oSd+D64adIyeYzJT/MHFSQIfx/E0zeVesJtWqW?=
 =?iso-8859-1?Q?dlRNSGArLWzzzRETWDSuGsV3beBFuHIy81GHjqQBhGA+5+088Dv5m0/L0p?=
 =?iso-8859-1?Q?p8z2Ml9duk60c+/qgGx0JiGUnM9x+x/bPcIIAR0NnJRY2ZohP4Yp1PFAHd?=
 =?iso-8859-1?Q?pfN4jVCbdNF+/LTNhbPpEWksR0nmBh72rm4T5tfH0LzA4fIujpx1/OcvWd?=
 =?iso-8859-1?Q?avoNbxgHGRr2OdEsOqk7PoQI9YxI78fGiGXfeSVZE4+G6BLemU2ppL0Q0c?=
 =?iso-8859-1?Q?QWQIX5p0YuvfirptHm3TeL72cqFTA1hN55Klzg/1a01O076WChJAS7Ox5S?=
 =?iso-8859-1?Q?yssvnUxXGLweQVEKAnD/2L00FVWWGQen4zneefX8yQO74tdOG6+zKybB6C?=
 =?iso-8859-1?Q?YGNvv7v4dJqzZMndATDBlp9Or/x90Y3AN/IDOfLJRZX0/cwEM39Hl9tmUC?=
 =?iso-8859-1?Q?WdutJzj6H1aXtmJl9jdlkqm3QIfWhWJqL8QH3eOmQhqpRtKylgPdCHtLl0?=
 =?iso-8859-1?Q?Jgrys0IKcMW4TYR38uXj5cyBx8goerrJd0gOq6xfEuj5SP6qZ8Vza3vaCx?=
 =?iso-8859-1?Q?xcT4gTWUZSsSuvq0ZbA3sL5eqLwM2LiXvqSmqL1fABE8/Qvs2kOcDMZzT0?=
 =?iso-8859-1?Q?TNzqHMweZHB7r+trwY5hy2FbZuP39vnqBE0kuU0Uq0zOeqMbM9tfmmlAPR?=
 =?iso-8859-1?Q?hTQ7qgOo9MNuxvYe8kErvALQ0BaM+ngpvcKI8efsPChuhnxjm3eIuUxrta?=
 =?iso-8859-1?Q?GlQlmzf4b82nsGEXn+puMiqee11SGYjHHqCrqriIDLFogSS+1kn67lqW3z?=
 =?iso-8859-1?Q?lly1mGx3Nq/cHiSQToD8XvEP0IiRdFkG4LGygwkZ6BcQLniOIw7ZckXT5r?=
 =?iso-8859-1?Q?VRUzigNCPOXQpn0iN6AldjAWQkFhQUvOiKw4VwlrsL9TpXm5k0ufNMWitu?=
 =?iso-8859-1?Q?JoJ5RTF36FRu8Rl0a7Z6tOgRuTjyr8ecoR4XtzTkt47Ixnjxbz/qXb8Q7y?=
 =?iso-8859-1?Q?XZR3Ld1GPv1CIHz3DbPF+Hm7nvB4rih2suXaSjVGxPjhzxoQZJWbHzSLuI?=
 =?iso-8859-1?Q?rcQVNWEWZQEPJakdgvMkEfRZHV8o0LkxI3cbZC4nIM6RobMpRqU9+q6Wo9?=
 =?iso-8859-1?Q?jVbvl0iFz7ll/elLSa7NaXiq22EFQ57Nw4nKIerjCH3GU7rRohylHBApp0?=
 =?iso-8859-1?Q?4BpZS5+M4Mi/haU4/qs=3D?=
Content-Type: multipart/alternative;
 boundary="_000_CY8PR11MB7777554397E901BBB52CA6B3F6682CY8PR11MB7777namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a15cde1-5115-4ce8-c29e-08dc12abca90
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2024 13:47:02.6890 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LXmxBHB4ZR7b5F3GvA6cd2N4sXExfgyvabtXZtowBp6KTJ9osnbaf1FOycpm+yeP/M0HK46a+/1RXALMgDGf5Cml1WqPcsAxx44rMnj3Ut8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4813
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--_000_CY8PR11MB7777554397E901BBB52CA6B3F6682CY8PR11MB7777namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Ville

The fix is in the next patch.

This pach changes the 4096 to page size macro as the BUG on is based on tha=
t macro explicitly.

Br
Vinod

________________________________
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
Sent: Thursday, January 11, 2024 3:44:22 pm
To: Govindapillai, Vinod <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org <intel-gfx@lists.freedesktop.org>; Syrj=
ala, Ville <ville.syrjala@intel.com>
Subject: Re: [PATCH v1 1/2] drm/i915/display: use PAGE_SIZE macro for FBC c=
fb alloc

On Wed, Jan 10, 2024 at 01:00:08PM +0200, Vinod Govindapillai wrote:
> FBC compressed frame buffer size need to be PAGE_SIZE aligned
> and the corresponding the drm_gem functions check the object
> size alignment using PAGE_SIZE macro. Use the PAGE_SIZE macro
> in the cfb alloc as well instead of the magic number.
>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index f17a1afb4929..9b9c8715d664 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -764,13 +764,15 @@ static int find_compression_limit(struct intel_fbc =
*fbc,
>
>        /* Try to over-allocate to reduce reallocations and fragmentation.=
 */
>        ret =3D i915_gem_stolen_insert_node_in_range(i915, &fbc->compresse=
d_fb,
> -                                                size <<=3D 1, 4096, 0, e=
nd);
> +                                                size <<=3D 1, PAGE_SIZE,=
 0,
> +                                                end);
>        if (ret =3D=3D 0)
>                return limit;
>
>        for (; limit <=3D intel_fbc_max_limit(i915); limit <<=3D 1) {
>                ret =3D i915_gem_stolen_insert_node_in_range(i915, &fbc->c=
ompressed_fb,
> -                                                        size >>=3D 1, 40=
96, 0, end);
> +                                                        size >>=3D 1, PA=
GE_SIZE, 0,
> +                                                        end);

PAGE_SIZE is 4k so I can't see this doing anything at all.

The correct fix is probably either:
- fix the xe gem code to always page align the size
- page align it in xe's i915_gem_stolen_insert_node_in_range()

>                if (ret =3D=3D 0)
>                        return limit;
>        }
> --
> 2.34.1

--
Ville Syrj=E4l=E4
Intel


--_000_CY8PR11MB7777554397E901BBB52CA6B3F6682CY8PR11MB7777namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<div dir=3D"auto">Hi Ville</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">The fix is in the next patch.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">This pach changes the 4096 to page size macro as the BUG =
on is based on that macro explicitly.</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Br</div>
<div dir=3D"auto">Vinod</div>
<div id=3D"mail-editor-reference-message-container" dir=3D"auto"><br>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" style=3D"font-size: 11pt;"><strong>From:</strong>=
 Ville Syrj=E4l=E4 &lt;ville.syrjala@linux.intel.com&gt;<br>
<strong>Sent:</strong> Thursday, January 11, 2024 3:44:22 pm<br>
<strong>To:</strong> Govindapillai, Vinod &lt;vinod.govindapillai@intel.com=
&gt;<br>
<strong>Cc:</strong> intel-gfx@lists.freedesktop.org &lt;intel-gfx@lists.fr=
eedesktop.org&gt;; Syrjala, Ville &lt;ville.syrjala@intel.com&gt;<br>
<strong>Subject:</strong> Re: [PATCH v1 1/2] drm/i915/display: use PAGE_SIZ=
E macro for FBC cfb alloc<br>
</div>
<br>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">On Wed, Jan 10, 2024 at 01:00:08PM +0200, Vinod Go=
vindapillai wrote:<br>
&gt; FBC compressed frame buffer size need to be PAGE_SIZE aligned<br>
&gt; and the corresponding the drm_gem functions check the object<br>
&gt; size alignment using PAGE_SIZE macro. Use the PAGE_SIZE macro<br>
&gt; in the cfb alloc as well instead of the magic number.<br>
&gt; <br>
&gt; Signed-off-by: Vinod Govindapillai &lt;vinod.govindapillai@intel.com&g=
t;<br>
&gt; ---<br>
&gt;&nbsp; drivers/gpu/drm/i915/display/intel_fbc.c | 6 ++++--<br>
&gt;&nbsp; 1 file changed, 4 insertions(+), 2 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/dr=
m/i915/display/intel_fbc.c<br>
&gt; index f17a1afb4929..9b9c8715d664 100644<br>
&gt; --- a/drivers/gpu/drm/i915/display/intel_fbc.c<br>
&gt; +++ b/drivers/gpu/drm/i915/display/intel_fbc.c<br>
&gt; @@ -764,13 +764,15 @@ static int find_compression_limit(struct intel_f=
bc *fbc,<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /* Try to over-allocate to r=
educe reallocations and fragmentation. */<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D i915_gem_stolen_inse=
rt_node_in_range(i915, &amp;fbc-&gt;compressed_fb,<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size &lt;&l=
t;=3D 1, 4096, 0, end);<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size &lt;&l=
t;=3D 1, PAGE_SIZE, 0,<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; end);<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (ret =3D=3D 0)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; return limit;<br>
&gt;&nbsp; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for (; limit &lt;=3D intel_f=
bc_max_limit(i915); limit &lt;&lt;=3D 1) {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; ret =3D i915_gem_stolen_insert_node_in_range(i915, &amp=
;fbc-&gt;compressed_fb,<br>
&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size &gt;&gt;=3D 1, 4096, 0, end);<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size &gt;&gt;=3D 1, PAGE_SIZE, 0,<br>
&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; end);<br>
<br>
PAGE_SIZE is 4k so I can't see this doing anything at all.<br>
<br>
The correct fix is probably either:<br>
- fix the xe gem code to always page align the size<br>
- page align it in xe's i915_gem_stolen_insert_node_in_range()<br>
<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; if (ret =3D=3D 0)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return =
limit;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; -- <br>
&gt; 2.34.1<br>
<br>
-- <br>
Ville Syrj=E4l=E4<br>
Intel<br>
</div>
</span></font><br>
</div>
</body>
</html>

--_000_CY8PR11MB7777554397E901BBB52CA6B3F6682CY8PR11MB7777namp_--
