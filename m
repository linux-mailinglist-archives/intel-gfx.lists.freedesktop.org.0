Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D32E5EE824
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Sep 2022 23:16:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E54110E96F;
	Wed, 28 Sep 2022 21:16:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BABEA10E96F
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Sep 2022 21:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664399804; x=1695935804;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=81g1rHnhQLQiSutrapO+xTy1XHrxXefbdJskZ0k+Wqw=;
 b=IoE3R47o78CTbnI4szm5laMIloTmRY2O7r9fKxMe3VpuPJs+3kT+j+mI
 F1VSMrpPG0grIu5FIQtZtyuzFlOsgrbSc/oHhYeSjiKoTnFcK2BYMXB7d
 zA7dAxsr8S8r3/eLAjDORX1zaBiQJixnfBuRWUjHn8jkF/nRYDOX9sMlz
 4GTIJ58CR58/iR42Ywg+p8Kb0AcMHWJBa6Y3wizFokem+Xx/xe8XnradU
 yyeipYOPH9KdClC0LClsIuNTVN/BQXJiUPpSw7E6iOu2aP77IB9imluva
 QdPGJMoUf+gRU2rfLgsVbbiBc40j+dvRvMy1kIoAJdSUQCHAeaGc9pp1I Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="282083023"
X-IronPort-AV: E=Sophos;i="5.93,353,1654585200"; d="scan'208";a="282083023"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2022 14:16:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="652837776"
X-IronPort-AV: E=Sophos;i="5.93,353,1654585200"; d="scan'208";a="652837776"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 28 Sep 2022 14:16:43 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 28 Sep 2022 14:16:43 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 28 Sep 2022 14:16:43 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 28 Sep 2022 14:16:43 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 28 Sep 2022 14:16:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JO0N7Ym0OJ7fqaWr21Al9FVjyIRZSjVAxLQvu+SqLm/BVCTW05bztlZkB+C7XY4wT8LRErQ4zp4SqyEZIQO6l54AhSoXB6qpi17oeX2juz/behYj4YUlDCSFUpDdY1zPhMMmft9rgTLC81UxkPbnv8YOVX/txb4lAVvHIabxM5/RIcAPcjhikQ8/VW+mU/nh5SNbsF+ppkbt1XmMtvrVB2Mv72Wl29p/tMU6qaxxJMAEhoMBOaqa/fNFJr+QiFM7ZQ/qZEyjUjvSHXWCNq7AzfD88XKUyb9tnjPmtOJxb5nLnkLx1ibJBiVg9zt6PgEG5+bcvgRcsuLWxpxrLA/7/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JYO9RHhazug7IFARB6V8Yw3HVi8Fw9n3WGE0Ynw69c0=;
 b=arTnsgD1vOm/mzYZag7EHECOmsb1PjDWVLIJjXp8RgELYBYWN7/9hvzYxAZdDvQgYax9popH7unxrllajMPnQHFamCs8DVdFuQ8qfGjaZYqlvV/oSw6LAi3WtlFlkJV4NxsWOanBr45qBgUsGy4z86c9uSWHv9/eHZFvAW7q52U/H2qihDL0rlNos9VAkk38caNbUOxEyXBeD8j0Qub70QK6RqTM01hmov3GYDaW8HiqdJIoL/fO1CxxFaWglo4lEtgeuq5L2F5n8L7wW02iKxXd5ecXq0csRt3OnnaNiXrNBya52nTQ2g/RwhEKKrIQFwXoRP4r4bchlp2SAXQWng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by SJ0PR11MB5598.namprd11.prod.outlook.com
 (2603:10b6:a03:304::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.17; Wed, 28 Sep
 2022 21:16:38 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::6552:707f:7dca:30e%10]) with mapi id 15.20.5654.026; Wed, 28 Sep 2022
 21:16:38 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/display: Add CDCLK Support for
 MTL
Thread-Index: AQHY020gXXdfJ8HDDUS6g0p5YS/8da31OL6AgAAd+tA=
Date: Wed, 28 Sep 2022 21:16:38 +0000
Message-ID: <CY4PR1101MB216659C0D939E10127822557F8549@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20220928190415.282665-1-anusha.srivatsa@intel.com>
 <20220928190415.282665-2-anusha.srivatsa@intel.com>
 <YzSfNTJqBGRkdwTW@intel.com>
In-Reply-To: <YzSfNTJqBGRkdwTW@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2166:EE_|SJ0PR11MB5598:EE_
x-ms-office365-filtering-correlation-id: f6995c4d-e716-40f0-93bc-08daa196bb2e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MReNWkwa5yAmazN/PClQhUrqSCc0bIe8sF+V/cIsC9w2i8bNTemvDCqJMIqSkqUyLWxCHfie7ymZPOi0XHQF1hU1Pjn1e/j7oKxb34p3fQdRZX/auUiBDO96H053fdkOLcBiMbMHt65ONROgijraU9A7RIVOJE4APeQhZX1IhEelNKGqEGafnSBoZx0UYX4t9G60QYoF4gtjFkOXF/qP9Ri+24j9N+3pJRyOg/iyxBQTwlSZSJ2CxAAHSsRyhR4642kt3imVjFEX2nCcZHOKHs2x83Y5MhaQFC0blrS4/qYMjwRSUT3mDsTfW+M/oPXUpBaLdSx1VFXztK6rrw6AdrL5HUfBU/wylCyM5XjVr4ZJNz6rumh25kzJk/QFrF13dPaDVQ2f44DPWkOhxlCzuc/6kHmuuHpt+WXuH7ZgorlEkyFDz8LJdO8riMJTEAkXYAWi6Bj1MPpVqjLTuRu8zrlKYTklwOEczSM3YZLsEA0NsofxqJAlo3m5uq+PANPsopZ6FxmSArgf4y9kLcmJ45lxXAANmXGV5XucqdIky8qX0k/kxz+U5vXTW94yzQPBMna2UQHLXAAnjBdpD5CxALgV3vob/vDs9vnVz5yJpXt306+DBPCChfs7S8c8IyNYNVW383Dr/Kwgv3PNuOCAb8vccw2nG1sXV3Dx7vI1DCQzb/udkcudesbV5kxFgNWJF46F881XOitVgRlSLQxRwVSqbGIGZWpzmVHOvZkDobni1X2Bmh6UPFPLs1+aNcXeh93RNYEEUH84riIQyJ5fKA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(39860400002)(346002)(136003)(396003)(451199015)(2906002)(52536014)(5660300002)(4326008)(64756008)(66446008)(66476007)(66556008)(38100700002)(38070700005)(8936002)(55016003)(66946007)(41300700001)(76116006)(8676002)(316002)(122000001)(6916009)(33656002)(82960400001)(71200400001)(478600001)(86362001)(186003)(53546011)(7696005)(6506007)(9686003)(26005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?MbFlyF1wXBEja7I2TvlE7M4A8VfGO4SrYo9lelSt8iogqQ2nMMFZ1pQk5o?=
 =?iso-8859-1?Q?F9bGefnl7r8CFrD8jwWj+7u4AbBATXrhW9xqSpESFkwQAvXgRefAul6urp?=
 =?iso-8859-1?Q?4yysOhgO9O2KglLTcDIDpy5547AYaG9oMbQuZy3bKrhcPBhzfviEVWeUGn?=
 =?iso-8859-1?Q?+Bzzam0WFrnj0Wv4bELTJ3m0LYuw5mGxN1pqlBcQAuATq1kuDHzpMeENs3?=
 =?iso-8859-1?Q?ioFI+jJ0Cz1et82wdV+8yr4r3fL15NRTEEsHkdgxz8NWCfwbFemAkoyz8H?=
 =?iso-8859-1?Q?awbcUJw0ODgDRGVXwbhboX9GJLnn0NSAtq69nzMMWB2xJt/d+38ZdJvu5h?=
 =?iso-8859-1?Q?FkAamansJ35QP/1PKedQPxOGmmOSCHZirPB8CQf0AsF+DDnODQZV+aE0SV?=
 =?iso-8859-1?Q?scEcxiPtN6H6Su+EBvBfCwOspic/rVYi97PMoDScSbwkP0TVrCZd8mIscM?=
 =?iso-8859-1?Q?K1/BRSVk1dEggmWElwKRFT2voa++6IVlEpJGMhkM2Uk84SWBA2x5Y7uobT?=
 =?iso-8859-1?Q?qEWJ+tnboHivmabdn/ZolF3o0a2r4wdYewx86rFzWhGRsw3jE/fljnUWnR?=
 =?iso-8859-1?Q?JiD0TKzivSASG2fqA/2oVDqMRdqg2NePqEaX+ZUmyZvFtPJq8fb6BRKmcD?=
 =?iso-8859-1?Q?Ri1cofKRi0dUQvHHWwvA3WyEliCifElE8bToPepBcrmhaZ7xqnjr5xLjtT?=
 =?iso-8859-1?Q?mGqiserT5T1xzrkA7TDQNx6c3T3Q4J4jCXn5ae4E0Q2ZWUwpibOq0U+qPX?=
 =?iso-8859-1?Q?TT1wAU3zPNy44chLMkPhXS5ltOrIFVpmr5lk08qao/9FABNBpU6QrIqoZC?=
 =?iso-8859-1?Q?96J/bmNw9V6Og9SALJONlTRN8iYxQRXjcNSydyTY6ayZ3xloO/I1/VIgZw?=
 =?iso-8859-1?Q?Py2mLv/vRRdag64UYESEl+ISiC9ebt+9xb87lBo2jqjSEedf+hzOpu4CJq?=
 =?iso-8859-1?Q?24sk3sxdo8fsMnj4bLg+0c1cReGk9es1tx/fX7UhatLj8Sh5S3iG4wRU/G?=
 =?iso-8859-1?Q?EDNLob5GcCfvt39r6VhGEIgdfPcPUppteCuIVwdxcHxLi5r5tuqd+ne0wQ?=
 =?iso-8859-1?Q?3ii/3JOndyVTm2e9AL6f0SuEpFBDBqYA7ucV6gHR1qgqJHb85pN2FmX0XZ?=
 =?iso-8859-1?Q?uY7H5f9Ip2x/kFRXLuYLrHe3JCQpynMSBDKZcziVL0Qt2dTzQPvDFvQQ7V?=
 =?iso-8859-1?Q?zNJAKn5rhqiFWZ8v8PZ26py0sqsuMWQGrHLsC4LLq6xwjG+B1P9Gdpj6QK?=
 =?iso-8859-1?Q?fDoCATj2zWguhqf2idhV9ib5XQs3XmzkGUU2FUDb+rd++LFs5IyXFP684O?=
 =?iso-8859-1?Q?VmWpjLMbZOTP55nP0V/qErWc/hcCuqvqdywsKvBYZcr8bVE40evpdV2Lug?=
 =?iso-8859-1?Q?Yh5nXJ77F4CBt88gqgG7DLJEPZdF6N2uKo7iyUXLqJpc5orQbs864Xn40Z?=
 =?iso-8859-1?Q?8ytDBGQaKEsw/5gWMMDvRJVK2QmoZxmm0lJTtzuEP6KuBdZ0xmKbzMWGdg?=
 =?iso-8859-1?Q?ikXArppMHa7nhgY+NkAuYHgMApFjjskoIM/17+tJ1fuOKrZq6BzK1/u2GV?=
 =?iso-8859-1?Q?JpPbzEYR0A3pcA1Yq0nBzfaCFZu/H2dF7/yaDEJxkmi4wQknkm9Ra0trhe?=
 =?iso-8859-1?Q?FoFBq7zmSEw7BmaezmqXaGdDfW7VcYc+n3U/LiQlpOJ2gNBVG+/CFy7A?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6995c4d-e716-40f0-93bc-08daa196bb2e
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2022 21:16:38.3435 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Kk34yXpd12Q7fL2NjMgnzjPq5dywrJhV9a0hDBbD6JNZfNouP4EH6A2g8y2OilxJAK1+JNu+jpC/UUvMRDHPUwj9QjbA6Hmghx1oRBZtysg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5598
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: Add CDCLK Support for
 MTL
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, September 28, 2022 12:24 PM
> To: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: Add CDCLK Support =
for
> MTL
>=20
> On Wed, Sep 28, 2022 at 12:04:15PM -0700, Anusha Srivatsa wrote:
> > As per bSpec MTL has 38.4 MHz Reference clock.
> > MTL does support squasher like DG2 but only for lower frequencies.
> > Change the has_cdclk_squasher() helper to reflect this.
> >
> > bxt_get_cdclk() is not properly calculating HW clock for MTL, because
> > the squash formula is only prepared for DG2.
> > Apart from adding the cdclk table, align cdclk support with the new
> > cdclk_crawl_and_squash() introduced in previous patch.
> >
> > BSpec: 65243
> > Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 95
> > +++++++++++++++++++++-
> >  1 file changed, 93 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index f7bc1013b149..6271eed0d7cf 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1222,7 +1222,7 @@ static void skl_cdclk_uninit_hw(struct
> > drm_i915_private *dev_priv)
> >
> >  static bool has_cdclk_squasher(struct drm_i915_private *i915)  {
> > -	return IS_DG2(i915);
> > +	return DISPLAY_VER(i915) >=3D 14 || IS_DG2(i915);
> >  }
> >
> >  struct intel_cdclk_vals {
> > @@ -1350,6 +1350,16 @@ static const struct intel_cdclk_vals
> dg2_cdclk_table[] =3D {
> >  	{}
> >  };
> >
> > +static const struct intel_cdclk_vals mtl_cdclk_table[] =3D {
> > +	{ .refclk =3D 38400, .cdclk =3D 172800, .divider =3D 2, .ratio =3D 16=
, .waveform
> =3D 0xad5a },
> > +	{ .refclk =3D 38400, .cdclk =3D 192000, .divider =3D 2, .ratio =3D 16=
, .waveform
> =3D 0xb6b6 },
> > +	{ .refclk =3D 38400, .cdclk =3D 307200, .divider =3D 2, .ratio =3D 16=
, .waveform
> =3D 0x0000 },
> > +	{ .refclk =3D 38400, .cdclk =3D 480000, .divider =3D 2, .ratio =3D 25=
, .waveform
> =3D 0x0000 },
> > +	{ .refclk =3D 38400, .cdclk =3D 556800, .divider =3D 2, .ratio =3D 29=
, .waveform
> =3D 0x0000 },
> > +	{ .refclk =3D 38400, .cdclk =3D 652800, .divider =3D 2, .ratio =3D 34=
, .waveform
> =3D 0x0000 },
> > +	{}
> > +};
> > +
> >  static int bxt_calc_cdclk(struct drm_i915_private *dev_priv, int
> > min_cdclk)  {
> >  	const struct intel_cdclk_vals *table =3D
> > dev_priv->display.cdclk.table; @@ -1479,6 +1489,76 @@ static void
> bxt_de_pll_readout(struct drm_i915_private *dev_priv,
> >  	cdclk_config->vco =3D ratio * cdclk_config->ref;  }
> >
> > +static void mtl_get_cdclk(struct drm_i915_private *i915,
> > +			  struct intel_cdclk_config *cdclk_config) {
> > +	const struct intel_cdclk_vals *table =3D i915->display.cdclk.table;
> > +	u32 squash_ctl, divider, waveform;
> > +	int div, i, ratio;
> > +
> > +	bxt_de_pll_readout(i915, cdclk_config);
> > +
> > +	cdclk_config->bypass =3D cdclk_config->ref / 2;
> > +
> > +	if (cdclk_config->vco =3D=3D 0) {
> > +		cdclk_config->cdclk =3D cdclk_config->bypass;
> > +		goto out;
> > +	}
> > +
> > +	divider =3D intel_de_read(i915, CDCLK_CTL) &
> BXT_CDCLK_CD2X_DIV_SEL_MASK;
> > +	switch (divider) {
> > +	case BXT_CDCLK_CD2X_DIV_SEL_1:
> > +		div =3D 2;
> > +		break;
> > +	case BXT_CDCLK_CD2X_DIV_SEL_1_5:
> > +		div =3D 3;
> > +		break;
> > +	case BXT_CDCLK_CD2X_DIV_SEL_2:
> > +		div =3D 4;
> > +		break;
> > +	case BXT_CDCLK_CD2X_DIV_SEL_4:
> > +		div =3D 8;
> > +		break;
> > +	default:
> > +		MISSING_CASE(divider);
> > +		return;
> > +	}
> > +
> > +	squash_ctl =3D intel_de_read(i915, CDCLK_SQUASH_CTL);
> > +	if (squash_ctl & CDCLK_SQUASH_ENABLE)
> > +		waveform =3D squash_ctl &
> CDCLK_SQUASH_WAVEFORM_MASK;
> > +	else
> > +		waveform =3D 0;
> > +
> > +	ratio =3D cdclk_config->vco / cdclk_config->ref;
> > +
> > +	for (i =3D 0, cdclk_config->cdclk =3D 0; table[i].refclk; i++) {
> > +		if (table[i].refclk !=3D cdclk_config->ref)
> > +			continue;
> > +
> > +		if (table[i].divider !=3D div)
> > +			continue;
> > +
> > +		if (table[i].waveform !=3D waveform)
> > +			continue;
> > +
> > +		if (table[i].ratio !=3D ratio)
> > +			continue;
> > +
> > +		cdclk_config->cdclk =3D table[i].cdclk;
> > +		break;
> > +	}
>=20
> NAK. Readout must not depend on these tables. Otherwise it's not proper
> readout and bugs can slip through. What is the supposed problem with the
> already existing code?

IIRC we were getting wrong values with the existing mathematical calculatio=
ns for cdclk. This way we force to pick an entry from the table.=20

Anusha
> > +out:
> > +	/*
> > +	 * Can't read this out :( Let's assume it's
> > +	 * at least what the CDCLK frequency requires.
> > +	 */
> > +	cdclk_config->voltage_level =3D
> > +		intel_cdclk_calc_voltage_level(i915, cdclk_config->cdclk); }
> > +
> > +
> >  static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
> >  			  struct intel_cdclk_config *cdclk_config)  { @@ -
> 3138,6 +3218,13
> > @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
> >  	return freq;
> >  }
> >
> > +static const struct intel_cdclk_funcs mtl_cdclk_funcs =3D {
> > +	.get_cdclk =3D mtl_get_cdclk,
> > +	.set_cdclk =3D bxt_set_cdclk,
> > +	.modeset_calc_cdclk =3D bxt_modeset_calc_cdclk,
> > +	.calc_voltage_level =3D tgl_calc_voltage_level, };
> > +
> >  static const struct intel_cdclk_funcs tgl_cdclk_funcs =3D {
> >  	.get_cdclk =3D bxt_get_cdclk,
> >  	.set_cdclk =3D bxt_set_cdclk,
> > @@ -3273,7 +3360,11 @@ static const struct intel_cdclk_funcs
> i830_cdclk_funcs =3D {
> >   */
> >  void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)  {
> > -	if (IS_DG2(dev_priv)) {
> > +
> > +	if (IS_METEORLAKE(dev_priv)) {
> > +		dev_priv->display.funcs.cdclk =3D &mtl_cdclk_funcs;
> > +		dev_priv->display.cdclk.table =3D mtl_cdclk_table;
> > +	} else if (IS_DG2(dev_priv)) {
> >  		dev_priv->display.funcs.cdclk =3D &tgl_cdclk_funcs;
> >  		dev_priv->display.cdclk.table =3D dg2_cdclk_table;
> >  	} else if (IS_ALDERLAKE_P(dev_priv)) {
> > --
> > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
