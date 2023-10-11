Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 016357C5041
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 12:35:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B3E410E661;
	Wed, 11 Oct 2023 10:35:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22B2910E675
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 10:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697020520; x=1728556520;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=thuxJjXH1QdJvAKSPZvSJhLRP7ZIu8fdoKokwdDlv8g=;
 b=bCGCyh8WPoSsahklhvDOvAhiyimn6N9ErQ0uLR7nnHvInzdXtDjFU1I6
 NlG79L5DoawWGsTuoV2fxA/K7GOb8z0mfQhtQT1IXy0eAR/crC/Bz30OU
 JZsZvuCVxhiYumSPBtzTQZfU7kPcHOsV4XM4dBzUCS4p9mV6OyCTIpxm3
 /p3fa134TuDdNhyDPEmWr/xi4LF8PXF3PV1Ml6ocwuX2ZOawJFmdN2WD6
 qJpb5TLLouHzApeMKWKZDqImJ5ZzMUiOvF38ZDbBNUnk3tBFff3Y24V7l
 fsOiS80Ki1tTccul6gahOsJ3mRilh3XaI2k9UPKh4x+8J/HSnauoh8OOs g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="448829589"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="448829589"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 03:35:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="753768854"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="753768854"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 03:35:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 03:35:19 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 03:35:18 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 03:35:18 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 03:35:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=er7vy4Ssldm14DBCKzEB5x4CRGCQXyOyUavsPMfbZJ2r5WTrU4P78ChcBtoQx73r+XUbp+/Uc972WeVDSOtUDf3i7VCRGr2Ab7m06ElzOZLjzL8F90Mda5e1YTvb54RujO2eoE2+emA4SeAXk8RNgt4QKW1GMLMrL8oU5s87qDS9r1AJCL4HOhhC2Pexlww0CpZ9tuS407OY8bLPNALZtpYNtokxgnrk3z+dWsqiyJxykj9J+02nGgZXCETrU5MK2rFF3g6VQW6A4eETPKkZLx20h3zrTbjPM/FxCEM94MS//iMpZznY/a9DXi6nG09d99LAUhvs7I7g3Pwbolq7Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VfqZAhLm3drk0/Hbohr8JMzzuA4mOH4nQSb8LWYU02M=;
 b=PhxQAa+Dei7w4ulaxWXJwHVLJPyf/WZ4FrkkRHcyg/xi1oFHKPLNOsjv86tSoBcU0c9VUWtvTchc2kIROD0iysepFq16qfIR/0nMrYjpoKrR2pyA7KQinWeyDks9KLes67h1bFLqFH8cXMDh5i+YjxPe6TAPS2oRHyw2tagXus9JbESb30bJK2asdIVNpXdghw2EtpcxnUtU8vAFGwf1zfnOaAkz+Jc1RY4dt4XLItm1YVKU65mwqHTDa3OlBlU9li5HYFFeWQdtLmwZFgNl70cdT1dl2FoTdc/E8YCQ4aeSRgpjhZDblFXCIhlsPtGF7LCW6ZkYmZGFtt9nkpgX/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB6495.namprd11.prod.outlook.com (2603:10b6:8:c1::22) by
 BN9PR11MB5402.namprd11.prod.outlook.com (2603:10b6:408:11b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Wed, 11 Oct
 2023 10:35:16 +0000
Received: from DS0PR11MB6495.namprd11.prod.outlook.com
 ([fe80::8e22:eced:1e8:192a]) by DS0PR11MB6495.namprd11.prod.outlook.com
 ([fe80::8e22:eced:1e8:192a%5]) with mapi id 15.20.6838.040; Wed, 11 Oct 2023
 10:35:16 +0000
From: "Lobo, Melanie" <melanie.lobo@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Support FP16 compressed formats on
 MTL
Thread-Index: AQHZ/CtIGSUjsFI5uEqbDSVmISamvbBEYR+AgAADJgA=
Date: Wed, 11 Oct 2023 10:35:15 +0000
Message-ID: <DS0PR11MB649568F25660881918C1C61388CCA@DS0PR11MB6495.namprd11.prod.outlook.com>
References: <20231011102356.22014-1-melanie.lobo@intel.com>
 <87o7h54fyg.fsf@intel.com>
In-Reply-To: <87o7h54fyg.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB6495:EE_|BN9PR11MB5402:EE_
x-ms-office365-filtering-correlation-id: ad12f667-261e-4e15-e315-08dbca45c1c8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UVpKSwLe1PFJxwbklf8vbSYtr68bInwp7aD6iQggKgLdQtvW/wHfYubrzalEqrHCxmbv1YS4MDke0zniLj3q5MK/2e9nOOIaRDHYbJt37fBow1kTxuoT0otqslEAO06mAf/y7+aMGMlNTBX9LBBmYe57w4gT6a3JTuYUd/2ebVaOKvG+/7sAzGbzv/+9bnMySm/9xpXyoan3xfwfouDBH6boHFvspdvctOO7LkjH/zCel2bGNkbM4Qu0CrOdGM6+yhrqoV+HmCVpg0wQ6iDfCNLcsrEK+xMZjUJ4N/vRyj38Jd29eSKu/oQiZ4JFhQGbfd43Hai2I7U5NwrTPX170Xr0ohhav+jazSC0y3gXjdyAhy+Si4ytaxO662iLPVgXwWAOSRW5edVSeK9oDjA2FNkkZjeCoPJMj5ZRVaLf6olo/o4kMz0h0IQOO7zh2elM3+QKVMkhMl76PeYPWcRmn9lqGqj/uzZus0UpFWX0RMlWNs/p6NWvsZwbQ8yMlEozZ/MT6xCu7kMfUJVKFpsTU+XpuBocBLxxSXhqusO6+FYMPDGkMS/lgMvcrw81XXmNlhKd2kVryQJ2EJhvyRPZEWSIs2vmnleFmKktlfAUgHU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB6495.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(376002)(366004)(136003)(39860400002)(230922051799003)(186009)(64100799003)(1800799009)(451199024)(55016003)(9686003)(8936002)(2906002)(71200400001)(7696005)(83380400001)(26005)(110136005)(66556008)(66946007)(66446008)(66476007)(316002)(76116006)(64756008)(8676002)(4326008)(41300700001)(5660300002)(6506007)(966005)(52536014)(53546011)(478600001)(38100700002)(33656002)(122000001)(86362001)(82960400001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lrvHMRksZpLTiCd5Du+azwAbOA/ybEk/0nRo6cIuHXrPJXNXZSodAxPs0oM7?=
 =?us-ascii?Q?/r0lpnU6PkZCGVBpciav4wGDpJrPGyHGrSiRrntIxdxNoUnUHGIwmL7Mv5iq?=
 =?us-ascii?Q?yGcBeDNJDs/4I4ZSE5XqINJJ2yVAPkPm+XRs/ONSEFhsnz5fRA4acM4JNx5Q?=
 =?us-ascii?Q?E+LkcebuZXOl6n5prNHvQ+tkRC6/JvAjYdcTKr0ZTbSn+ssaZ3VD0qbig74W?=
 =?us-ascii?Q?DBBQUxb6FxE9T76HYAGXzrbKVwOIInuWIbRBJFAnK4O5Yg31bnOyBHKbquM3?=
 =?us-ascii?Q?uUu2H40Q1DuHFr3B6MPA94Knw0UfqSu/LR42yOErV2JAHuHDUIZ4WFb+ksxW?=
 =?us-ascii?Q?nn3GN+y4NGDChqSmDCf8e9boU86ca1lq9G/Xa/ejcnSQKlHsMYsRrXTSg3JI?=
 =?us-ascii?Q?eKI7y434G2DQCK/ldT4nEVem1rRUhnrFVy4bBafBe7wJttUq9H4l44dfw8C6?=
 =?us-ascii?Q?gN4SZhS9zkvxy8fcLTgMiVT6TvCz9oFceJNE1loOUrJSgczVp/oi2Cqb3Re6?=
 =?us-ascii?Q?RelaogQrmPpwRVcuRKIOK3Hsz1yrHMRcq9N/OT+uUaNDGng/DdzOLpPIIbtY?=
 =?us-ascii?Q?mkvrx9i5QO6sytj96WbwwFzQwfPLFCPTigkcNm7+xEC4pAv3RiVWWmvIYH8x?=
 =?us-ascii?Q?asqi9/XZv5iVR4CYZNJu0jHx8dft0ALlS+cqwH+/Nkdzx3XBk1QyCrFC/+w4?=
 =?us-ascii?Q?Q2GsZ/4lfctirdnwYZK092UXqH6+saWgBMCgl0eV9DfrQYprPaOVobTmJWmT?=
 =?us-ascii?Q?JdfBiG8MByG9+dxg6eIts4CL/1xfp+LFDyv50yROPAO9ZZY0ipok4r3Ecxyx?=
 =?us-ascii?Q?05T0zEIt8th65RG3E8qrpS7SlqKln2ezsCRUuG4GuvpQWL5GNm4ozflU6DbD?=
 =?us-ascii?Q?SzhSun9kro6SW0k6NPHjtGkpNLNYuK19S+9eZablGuesv83y9eMAcK0qitkF?=
 =?us-ascii?Q?dwkmO9yQbe263de4KtgQFLAV2Pt92T/rH43kkryWFksCPGwtMTW/07ElQCb/?=
 =?us-ascii?Q?tUiWJdL/ET9JCEfo8/4Crjxjqjt9J19WJctlebYro0DHWJBZit8fV4rpbTr9?=
 =?us-ascii?Q?f3vDIphPiIGRkxRXzPW+WWLXQzbVFqmKFzlilPEABsQD5HRlJk6umwXVslV3?=
 =?us-ascii?Q?Pp07NstcZHFutzATGTgEvQQbfLjNqkaqg8pBCj3cdCFGxCXCJHvCqt4q5AwH?=
 =?us-ascii?Q?RhxwoNDDT08xGm9NXnHSt8PtB4kh/gytS6j2WD/td/6oUSccM7KbR7wXe0fI?=
 =?us-ascii?Q?WTYDG8A+3npwN3s1xuSKFP3oXL+7p3c3yQna3NuHUfToEPl3NjdgapWsfTQP?=
 =?us-ascii?Q?JB9FtxDHZEQKdGsTeC946r3nQqVcqpTXKnFRMOMRgOKaaHHaf8dgpOkouXyy?=
 =?us-ascii?Q?sODt2tLrTB+Y9uNRak9RoF1ftd5xW/QOJyEyiiCK+2yN+wk//sZPYkKzHk1C?=
 =?us-ascii?Q?CsEJ7ajc1v418HR3eTccJXutIPnVJm5LL1YbT3YCPQNxhGmHGQipMGpcFTns?=
 =?us-ascii?Q?DTOyBJ09qRm6O3+BdQWL78/qFrwHVRIq0ouyulRSYBB4XveuA28c9J14LnBu?=
 =?us-ascii?Q?uiN1fhhi9razsFm1dHNHX1Yw+qRIZMX0R9WEQlnP?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB6495.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad12f667-261e-4e15-e315-08dbca45c1c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2023 10:35:15.5503 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oR+AbdLTiHekObtrJNrJEg7Hghg48MU7M6Rfrg6MNBNXF0sf+J/ll7X4HmVCc+bMEqExiU51FejthsC7j4QVRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5402
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Support FP16 compressed formats
 on MTL
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
Cc: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, October 11, 2023 3:52 PM
> To: Lobo, Melanie <melanie.lobo@intel.com>; intel-gfx@lists.freedesktop.o=
rg
> Cc: Heikkila, Juha-pekka <juha-pekka.heikkila@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] drm/i915: Support FP16 compressed format=
s
> on MTL
>=20
> On Wed, 11 Oct 2023, Melanie Lobo <melanie.lobo@intel.com> wrote:
> > MTL supports FP16 format which is a binary floating-point computer
> > number format that occupies 16 bits in computer memory.Platform shall
> > render compression in display engine to receive FP16 compressed formats=
.
> >
> > This kernel change was tested with IGT patch,
> > https://patchwork.freedesktop.org/patch/562014/
> >
> > Test-with: 20231011095520.10768-1-melanie.lobo@intel.com
> >
> > Signed-off-by: Melanie Lobo <melanie.lobo@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fb.c            | 2 ++
> >  drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 +--
> >  2 files changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c
> > b/drivers/gpu/drm/i915/display/intel_fb.c
> > index e7678571b0d7..868cfc75e687 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > @@ -91,6 +91,8 @@ static const struct drm_format_info
> gen12_ccs_formats[] =3D {
> >  	{ .format =3D DRM_FORMAT_P016, .num_planes =3D 4,
> >  	  .char_per_block =3D { 2, 4, 1, 1 }, .block_w =3D { 1, 1, 2, 2 }, .b=
lock_h =3D { 1,
> 1, 1, 1 },
> >  	  .hsub =3D 2, .vsub =3D 2, .is_yuv =3D true },
> > +	{ .format =3D DRM_FORMAT_XRGB16161616F, .depth =3D 64,
> .num_planes =3D 2,
> > +	  .char_per_block =3D { 4, 1}, .block_w =3D { 1, 2}, .block_h =3D { 1=
, 1},
> > +.hsub =3D 1, .vsub =3D 1 },
> >  };
> >
> >  /*
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 245a64332cc7..64c1d6c2bd76 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -2122,8 +2122,7 @@ static bool
> gen12_plane_format_mod_supported(struct drm_plane *_plane,
> >  	case DRM_FORMAT_Y216:
> >  	case DRM_FORMAT_XVYU12_16161616:
> >  	case DRM_FORMAT_XVYU16161616:
> > -		if (!intel_fb_is_ccs_modifier(modifier))
> > -			return true;
> > +		return true;
> >  		fallthrough;
>=20
> This becomes nop.

Thank you for your suggestion. I will float the next version by removing "f=
allthrough" statement.

Regards,
Melanie Lobo

>=20
> BR,
> Jani.
>=20
> >  	default:
> >  		return false;
>=20
> --
> Jani Nikula, Intel
