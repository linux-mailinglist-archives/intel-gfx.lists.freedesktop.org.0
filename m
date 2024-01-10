Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B62C382984B
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 12:05:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 853D010E597;
	Wed, 10 Jan 2024 11:05:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BDF110E597
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 11:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704884727; x=1736420727;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=SmksPV7GTVYMLQSKjN/E5LGG3zEnoT9HtlELVE3T1XE=;
 b=KIuiM9FE++e+TD4QOvjEsYos/xJUWtOxI3Xh+He3tw4MbGvNi9ZXfTrV
 o1Zz8dvc52ocygBfsPjO1vnBa/vX0BSWxPHUyPz5r2Dd7PV7/uZ5PihOF
 ljfAlr43lJep/V/WWmUDPoRseHdA6YWYjo7fszvHM+rcfWwr2WNwoNYqr
 sn8dfWDwGnq29oVCtbPxHkm+uETRXe/XBBr3h+8ihRGGOn5+2OdiI3LdT
 KuLn6kVBusS6JcN54alVSGA79P6F5R6ppZ6QXFsdwQEH1dJXgCehxcZY6
 vOa1Cq+G3MBa5P9E9uYMZzsLfUeTtHwjEKRsOea6f1pKuaVvhsdVOOZNx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="484663742"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="484663742"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 03:05:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="782137582"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="782137582"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jan 2024 03:05:25 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Jan 2024 03:05:25 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Jan 2024 03:05:25 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Jan 2024 03:05:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b8syDDRs4LPFZVS1oNwSnI0dzoP6Nth8b0Cg+76OV7Xo9Fv9l4pi1e4puW+D0/oLKU0ws0FOp5tOE3MEm0f9pE4dTwuhc4k2AQ3CaXlbPkT2LygpJjq/98FBSH8kaayyH1YXLSQNGLUP1HaRY/a067tahi0UivWGfqAfzlPXIrlYk5eCLzUcJNydxCs2ufZoevQk0B5NGdvBNtWuoTM/LnbCMoM8nRC2lgGUZEykzv6901zNfOhShxOi4d2zFC91xTejz3UjOa71jl0Q/r3vMIwKIMWg2ET2mj2obHOEha/aEmkHWZO+We/EgAyOGEjl+MgBJAprpOtAUFxOeuFDyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PK0VAJXjudmdAuMfofLteTZKEijAGgXPIaX43eM3Rsc=;
 b=RatGq6qks2yw8pj+1YuktQX0vtiMhWhkSLgeWNwomNy2j/dzH9QjD5vVyMCTD+NWsSTqaXXm0BPPs/g0fE6uCpaocPMjG0ebJk5iw/uRN+pKLYeWAQXemoR1TuwGtHPvxS5CqCw2sd4q/6YfyH7aZmilwAM1vO597nRkCK8BouVpIyOPBAODQqdwZOyxjuLvxy0i1kdbgbcg+yc+wFvfbGNyLfxW2OYXQ2aiSdZiAqWnPGASc5Qo/DdYNQFt6cwlrVnCFOo0VwqMAE/xM3D1796U9oaA+ci0npvg0ulhe0PAFrO9CZ6mrNIDbjIsb9bRt0+D31im9md1/h6gQOIdHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SA3PR11MB7434.namprd11.prod.outlook.com (2603:10b6:806:306::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.23; Wed, 10 Jan
 2024 11:05:22 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5%4]) with mapi id 15.20.7181.015; Wed, 10 Jan 2024
 11:05:22 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH] drm/i915/display/dp: 128/132b DP-capable with SST
Thread-Topic: [PATCH] drm/i915/display/dp: 128/132b DP-capable with SST
Thread-Index: AQHaPiWugxUDmfbxeEuHGhQ3RnYr6bDP8XUAgADan0CAAHPqgIAAAFOAgAGoflCAAAGEgIAAAg0g
Date: Wed, 10 Jan 2024 11:05:22 +0000
Message-ID: <IA0PR11MB730720499FEFF4CD218D785BBA692@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240103090715.307309-1-arun.r.murthy@intel.com>
 <875y04x88t.fsf@intel.com>
 <IA0PR11MB730740C0117353DC60DAC4B4BA6A2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <87zfxex3do.fsf@intel.com> <87wmsix3bq.fsf@intel.com>
 <IA0PR11MB73073A46D0967A2E6A569165BA692@IA0PR11MB7307.namprd11.prod.outlook.com>
 <878r4xwjay.fsf@intel.com>
In-Reply-To: <878r4xwjay.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SA3PR11MB7434:EE_
x-ms-office365-filtering-correlation-id: 690cd87f-c0d4-4c61-a383-08dc11cc0a3d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Q4zbjIwSWGGcld9TO/79RXdmAX8FOJfw/V+aH1ZmSEY4GNa8lU8wc8Fc3G5k5QBc0an6qXP/X4DyyZsJ4ZpwRC8vAgY2GFtk22grNmMsbR4LMvnj3Tilg+8fFHAA6Ffa6mimjxy+ZjQKw7JRIiSVgQ5Eiqb7rRaemn/FXNwx7wlzPa1nQLvFp79OlNg7RKgk5S3r1lvK9H/A4WNFZfhVyMIQQXjGReeWua7l5ebhoGYjPgwy4j0Xf4/cGGdW96CIn3gq9oMabWrHRXN0nS6OsLDtjYEMs6IqU09KPVFXGeb5S8lTGCIkL9/OYJEGW4meU9lp/3u2fCibSHSZd2Jee8OHcEy1QGlxnwv9ioPfayxwJu4KhUR8lxCnlzTQkR5bLakSmL8xCz1ye1elqdLEWQMWmcFXl0qBRQ9HRLYY26VhotpH741EwjgLCkVBFsWHEZP4vZgAauiaN6KP6bYVM5Mr46BOS167Dx0q0GiRRtkbTvkPjYNc09knV7cnM3mOkrZbsXSUFVHwnIlL5WqWPN2/m+7AJhCn/8rd6Kg249AgJ4IQAGme9AP1QuVJvJI2rHKWP5mambswVcpY7PCPneyF4VVIKmOJd0rPya9d1bitzTTRSJ1s3qwwfSNysQSR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(376002)(346002)(39860400002)(136003)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(2906002)(5660300002)(6506007)(33656002)(86362001)(7696005)(9686003)(71200400001)(26005)(53546011)(478600001)(8676002)(8936002)(316002)(110136005)(82960400001)(41300700001)(66556008)(6636002)(66946007)(66476007)(66446008)(76116006)(64756008)(122000001)(38100700002)(83380400001)(52536014)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/zIlrzbNn5cTJ3cJcPVPgvIkH7MxzQaR0P/KmS1Q5J9wJ6m5Hbr0RNY34EsB?=
 =?us-ascii?Q?aEhueGuuf/PPZuJt70qjFuy5I1tnWvbHj1pbJ/Kg43IrTp3eBdGrib3ARnQl?=
 =?us-ascii?Q?7ed6RhAo5UBwY2bQG19uDztwbdwBClB+CCYz009zbVsWFi3foU3jgDusSy2T?=
 =?us-ascii?Q?KJ/Im+anLFvKLbbipl7Z3KUN9kiCRpjPYV8PpET8X6IsfIUhetp0agos3gql?=
 =?us-ascii?Q?rsXmOXg5+DCdbhTsflaqtITR4LKf9VWzYN5W4QqTN74Tzb47cL7xuL1vgpeL?=
 =?us-ascii?Q?kaPr08RY1QFgoO1/Wdxqu90kuEoNgzLjtpwRH8/C0ae0A0GJAPR2sCe2Jw6S?=
 =?us-ascii?Q?YeHS3p7ZtCXyiw2fZaV9qHmCNt1bDaIORnh+FcK0VSTYhGXV6gfoqaWZ8tZl?=
 =?us-ascii?Q?pRY8ObOyWGCQpkDJIvVeYrJvX3ZeJMeceJ8K1Okyh7y3xVOl+aQMbeVKYWVj?=
 =?us-ascii?Q?uaFBrIjxZUUfo3VNdB81EAWaS2hJ/0ddI/uaRi/aFabSrSwKXRO1A3fC6hO6?=
 =?us-ascii?Q?FSyUXfGVfPMJgANX8GV+9JMBV/XhiqDiZaxIfEZseOmv0LIlnUuJx/wfWcDl?=
 =?us-ascii?Q?IPxZhquw0hTeVIDx+uZ1DxclUHdnWcZWnjCUkzs3j4FL5ojEscVxDzBUsHwL?=
 =?us-ascii?Q?Lu/g14KCC4YIZ8Sib7SzlBXpDP+qiiVCsKduoxc5RoR+FD2fNUM17WwYDWCf?=
 =?us-ascii?Q?6GfF5ZVKBmrHncc5GA6ZHEVQKbAOb2N4P5kSjHYRIOQgf/Wtkcn4SWgMm1ru?=
 =?us-ascii?Q?beq50DTdIAaueXWFXileZUh3oOgLX0AlSNYFbZGn/oIvvY5kZapVgZkoS3LX?=
 =?us-ascii?Q?LLUsTuXLZnlECudnCcBicY7XTNgbtbpFO6Jk3257k2aRNlv6ICJbejegs75u?=
 =?us-ascii?Q?qkeOFK8sj4JtSIxhSd7510BvFP5joOC1/BBiW0DXJ/i+fdLMudASnGN1H7Ig?=
 =?us-ascii?Q?c5E3W9o9XirOuMnbx56vC8ktK3gwoLQy0FlBoWWYB5dSN1WPUC/CfMGWV0xn?=
 =?us-ascii?Q?SjfViQV+jlLuZ7qlNI6piN/RVeemY49sn/u9X0eW1rLYH9JhG2NNEDD62p3W?=
 =?us-ascii?Q?oa2Bn/9t9pqTcX1X/4sRCeiI3Q+Mej4Qs03R70oCsoN6mpui3EfKTqva7izs?=
 =?us-ascii?Q?P3pLI9iR7yyT9Twx1cJlTjrXVz3euK7i6CVl8fYRAxgQqA7vaQ5E5Ibgpb0+?=
 =?us-ascii?Q?4syqHjUlxNcL80Pk03e8vfZLHhvPYiXzSbncpb8y64hgMNK4ouisBSVCHqYo?=
 =?us-ascii?Q?lcFseINy/VZlXZ9dt0PmzFP2kTAjwk6Z+x6nAEr8lAoq7n5snkUEbd07gcKA?=
 =?us-ascii?Q?Dx5VtbuPzOl4kZR4qGBBz7AEgyCNrq/kie3hFnP9FnSRd2WcejijoVL0vavi?=
 =?us-ascii?Q?tWBlCpik3qMTnv2qDgxu5LIq+5ybX3kIIQ5eAq8ejA0j+Tv8eoyxir3uINTJ?=
 =?us-ascii?Q?Hxkx7y0JHubedhNq/x1srgRLcUMvwacniI4JyPvsLbFkCcjhkymUdl9GYDv7?=
 =?us-ascii?Q?P7bmh6UpINBlI6mqeWa4dlHbfnSqZmHInfYR55kyW/Xr9vKsUavpv3xOiLOs?=
 =?us-ascii?Q?tyAnvszOrIk+EO4yHCmsQl19vs0C7NDYeZn+czz3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 690cd87f-c0d4-4c61-a383-08dc11cc0a3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2024 11:05:22.2517 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NVyA3WuWw8VpPRoUl8wfwrWZVkoTKcK6WC5ipmo3psa+/jLE0CEqOycLlpJd5cbKujydePr7Pa21OwjNgPeSkA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7434
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Wednesday, January 10, 2024 4:24 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop=
.org;
> Deak, Imre <imre.deak@intel.com>
> Subject: RE: [PATCH] drm/i915/display/dp: 128/132b DP-capable with SST
>=20
> On Wed, 10 Jan 2024, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> >> -----Original Message-----
> >> From: Nikula, Jani <jani.nikula@intel.com>
> >> Sent: Tuesday, January 9, 2024 2:59 PM
> >> To: Murthy, Arun R <arun.r.murthy@intel.com>;
> >> intel-gfx@lists.freedesktop.org; Deak, Imre <imre.deak@intel.com>
> >> Subject: RE: [PATCH] drm/i915/display/dp: 128/132b DP-capable with
> >> SST
> >>
> >> On Tue, 09 Jan 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> >> > On Tue, 09 Jan 2024, "Murthy, Arun R" <arun.r.murthy@intel.com> wrot=
e:
> >> >>> -----Original Message-----
> >> >>> From: Nikula, Jani <jani.nikula@intel.com>
> >> >>> Sent: Monday, January 8, 2024 7:01 PM
> >> >>> To: Murthy, Arun R <arun.r.murthy@intel.com>;
> >> >>> intel-gfx@lists.freedesktop.org; Deak, Imre <imre.deak@intel.com>
> >> >>> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> >> >>> Subject: Re: [PATCH] drm/i915/display/dp: 128/132b DP-capable
> >> >>> with SST
> >> >>>
> >> >>> On Wed, 03 Jan 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote=
:
> >> >>> > With a value of '0' read from MSTM_CAP register MST to be enable=
d.
> >> >>> > DP2.1 SCR updates the spec for 128/132b DP capable supporting
> >> >>> > only one stream and not supporting single stream sideband MSG.
> >> >>> > The underlying protocol will be MST to enable use of MTP.
> >> >>> >
> >> >>> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> >> >>> > ---
> >> >>> >  drivers/gpu/drm/i915/display/intel_dp.c | 9 +++++++--
> >> >>> >  1 file changed, 7 insertions(+), 2 deletions(-)
> >> >>> >
> >> >>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> >> >>> > b/drivers/gpu/drm/i915/display/intel_dp.c
> >> >>> > index 9ff0cbd9c0df..40d3280f8d98 100644
> >> >>> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> >>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> >>> > @@ -4038,8 +4038,13 @@ intel_dp_configure_mst(struct intel_dp
> >> *intel_dp)
> >> >>> >     if (!intel_dp_mst_source_support(intel_dp))
> >> >>> >             return;
> >> >>> >
> >> >>> > -   intel_dp->is_mst =3D sink_can_mst &&
> >> >>> > -           i915->display.params.enable_dp_mst;
> >> >>> > +   /*
> >> >>> > +    * Even if dpcd reg MSTM_CAP is 0, if the sink supports
> >> >>> > + UHBR rates
> >> >>> then
> >> >>> > +    * DP2.1 can be enabled with underlying protocol using MST f=
or
> MTP
> >> >>> > +    */
> >> >>> > +   intel_dp->is_mst =3D (sink_can_mst ||
> >> >>> > +
> >> >>> drm_dp_is_uhbr_rate(intel_dp_max_common_rate(intel_dp)))
> >> >>> > +                       && i915->display.params.enable_dp_mst;
> >> >>>
> >> >>> We use drm_dp_is_uhbr_rate() in intel_dp_is_uhbr() to determine
> >> >>> whether the link rate in the *crtc state* is uhbr, and by proxy
> >> >>> whether the link in the *crtc
> >> >>> state* is 128b/132b.
> >> >>>
> >> >> Yes! If the link rate in crtc_state is not uhbr then we dont enable
> 128/132b.
> >> Also the return from drm_dp_read_mst_cap() return 0 or 1 and if not
> >> mst then 128/132b is not enabled. We need to deviate here and a value
> >> of bit[0]=3D0,
> >> bit[1]=3D0 in MSTM_CAP register is 128/132b with SST. Hence this hack
> >> is added to see if the return from MSTM_CAP is 0x00 and if uhbr rates
> >> are supported then enable 128/132b.
> >> >
> >> > Per spec it depends on intel_dp-
> >dpcd[DP_MAIN_LINK_CHANNEL_CODING]
> >> > & DP_CAP_ANSI_128B132B, why not use that here too?
> >>
> >> Also, shouldn't we ensure we don't try to do more than one stream?
> >>
> > Yes, this will be taken care of in a separate patch, tracked as part of=
 separate
> JIRA. VLK-55112.
>=20
> Well, you shouldn't really first open the possibility for a broken config=
, and then
> say it'll be taken care of in the future.
>=20

Sorry, I misread it as single stream sideband msg. As per the transport is =
considered not more than one stream will be considered(In this case MSTM_CA=
P=3D0x00) based on the sink capability.
If a hub is connected inbetween the panel and the source, then source reads=
 MSTM_CAP as 1xb and native MST will be enabled.

Thanks and Regards,
Arun R Murthy
--------------------
> BR,
> Jani.
>=20
>=20
> --
> Jani Nikula, Intel
