Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F577DB9A4
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 13:10:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62A2010E2A6;
	Mon, 30 Oct 2023 12:10:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1894B10E0BE
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 12:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698667817; x=1730203817;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3m+V8jTemS8C4jt6SE2EgSZ3Y3gYhuvaDhh2m5IlxKc=;
 b=aNF5qKkP9hO3nqsalEaEDPhvf0NgQYZaiayQqGXX4V/8UjqMNaY1Dhzq
 mPB7UD5jrFTALPB3yPdR3GXllRhTA4ZAg9HvpQihN7MMBXP8ka0WDkPEK
 wlDFV3PBHNOxXqJ1eSUacf8Zem5h072vrxT/8aNWdMBzXUAQ8/8YQDWOo
 WWqB0mLw7kV9uaZicGbUWdIRAuyqIy4cgvCY6zFr+gfsXs0q/+EXYk30t
 b3G+Qa8QrPoXjKZfROZd4J0RJ8sEsCx3ER18V+49nVuiGSiODrOJcXjoE
 kHL5TX6Qqo2kGbHMkBp11+lDaizw4BdYjI1dMowUYmnLkjfjtY7YXFq70 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="9592035"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; 
   d="scan'208";a="9592035"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 05:10:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="877110934"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="877110934"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Oct 2023 05:10:16 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 30 Oct 2023 05:10:16 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 30 Oct 2023 05:10:16 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 30 Oct 2023 05:10:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EbIMwZ0zRvdwM4U3zAhGE0I3kdKXWKLPLk5lDhT+cWbZDs+K9tKkqjABBcOznGAocBt7uhl5HW6ATocmrU1OcvkaorO0itrsgpCbkKYBp2GNHyRdDyrxKCogYTrK25DDdxzM5R3jyThsregYxtWsf1ymSOkzk7pWa+Ep4H7eJVS2Br++v80j2Y8jd8cBPJBRHLKNjuv0emp9GZCmfSYnTqUec9aEzo8Y7BHe9KfGjPaohawZYH0oHvS3hZAe9GxU6+a/xla6++rxImZq4nzd19RTNzSSrsVtlF3CDdB2LcVJKMTXtbkqNjtZSdVoCmspNd2tQhUshycO7LWtU9qtjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=osJty++4DjmZ0Ahj5KbIZnPUnvKX3/aza3uG0Dr/cQ8=;
 b=SePoapm9Kod15gA0UhRRHhSKlGtGWUBEOrNExofwP4sYVXF/T7ij66KtqS+9yTccM1o1ZZXziGDBwgl0+rQOghucw7QrkAKoi0h1nFIH5hdsDuBqsGrKP4ek+yYmyzN2CG7c323DUuuUETDe+9f800gnYEA6x8Ri+ZaEuyYu2h7Hg2GkWTUAfcPYs/xb35qQ68cS+qgX39ueW2kwJSq/nXHSuDgN9Gnq5Z95BDUo91pQYnqrO/M8NinKOQE/FTWb8X/mU7KKoOcoyHC5Hxi42FC/pi4ChvjHbyKX5jje29WyJkX4KfBR7nZ4b7hgh+FcfHI/FH0qW0W5aVAF2SMmaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by IA1PR11MB6244.namprd11.prod.outlook.com (2603:10b6:208:3e6::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.28; Mon, 30 Oct
 2023 12:10:13 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::9bdd:1d20:1b4e:3e92]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::9bdd:1d20:1b4e:3e92%7]) with mapi id 15.20.6933.028; Mon, 30 Oct 2023
 12:10:13 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/mtl: Support HBR3 rate with C10 phy
 and eDP in MTL
Thread-Index: AQHaCydosXoGs6sO/U2xu498u67DR7BiPZJg
Date: Mon, 30 Oct 2023 12:10:13 +0000
Message-ID: <SJ1PR11MB612917E0360695A359EF6695B9A1A@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20231018113622.2761997-1-chaitanya.kumar.borah@intel.com>
 <87pm0w5nx7.fsf@intel.com>
In-Reply-To: <87pm0w5nx7.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|IA1PR11MB6244:EE_
x-ms-office365-filtering-correlation-id: d2a0fb30-db08-4524-c348-08dbd9412bc4
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iYYS2RiNtS6LLHUaodcsqjEKb0wVj7TBf0okGXZ0RSyg3DfMgy65+vY+fqe2KhHM9nfVHxv/h3ogX8L0eP297yPC7LWOyMc716GO7u8Ul6tGv0aGdelypsE8XI93QXy1VkIvAzFRVnrjuS1LKjPGXMZu5bc092ZjkxiuEj92zP6sf9tNcj14eOcfFzd9Hp6NXgtP3jCYuGInmQ/457wbc3HVrbyYP0tf9ccnasRoRZMQQJ9B8ioY3dOz9HOYbuWTNKi42biNIXArra0cZK72jOBtDgziK3wkDBrHPD3KQOln16oAjvM00xO4sCYr1Nl53gbzK5DQqkJIlNqZ3QmR7rB9vmtfFNaoUtLbSofWTSGCnmRrMisyZEcjlDF4H+P9Dd9V3/Qr1PnOjOhID1UyGwvMs0x9E3+MTlDgs23MdCMtGM3BfZPzGIKRsiE3MoezK29S/0rdYQ7HhRvhgNihSV2JFPDAa4DeaX25GllGNxPTo6Y7+RMCglwk3Var+HmDkW2oxMRhnTxtnS7IqyJIyptLM55kY3OEN1kSD5zF9hqJW3u4vBC5rxQbNzNJxtrKYEscwcsjXrKdaFq894zOiu90NIVNkzE6eMk5lFC1i57v2yTaU3FsFGZz2Kr/ITDs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(396003)(346002)(136003)(39860400002)(230922051799003)(64100799003)(1800799009)(186009)(451199024)(478600001)(110136005)(7696005)(6506007)(71200400001)(76116006)(66946007)(53546011)(9686003)(26005)(66476007)(66556008)(41300700001)(2906002)(64756008)(8676002)(54906003)(5660300002)(66446008)(8936002)(4326008)(316002)(52536014)(122000001)(86362001)(33656002)(38070700009)(82960400001)(83380400001)(38100700002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?j0whCYdDQySvh2NqSVISojm/aQ6w0NKEWTgFGrJk43Wzx3osdUk/mmg1OSDr?=
 =?us-ascii?Q?eRKiBHM5SHyt06WnXV8W4WqvuICBb8h93+I1voWDIhf3MMDP8nMSAihAlU5l?=
 =?us-ascii?Q?2TjNABOeXmCGgSZG0M04LEZV9C02sfTiVyObQBd6bScKOFgx8R1JHuheZeCG?=
 =?us-ascii?Q?MXCDT/PuKNcnseR+qe09RJBslGwBh5a1r1I2dHwGH6aFADiI9KfKFqkaBLME?=
 =?us-ascii?Q?rj7VwPbo1v0g8H9fhZLb6df5s3c5SgMfJf4nrhyhh/G4fYlB7FXw+zvWIebd?=
 =?us-ascii?Q?8oEwL/cQHkc+IKy4hu8+n7ijfkECrd0AiK0ZdG+lC5WTiAYWIZ92E6Oz82wi?=
 =?us-ascii?Q?a8RstTmta7kaXj4C2xluqvPCvR1HsZvoZLg4wU9ZYQvgwzVBSgViBBSsF6WT?=
 =?us-ascii?Q?lRD923I95EfqVzgAwVrzx41SwKUeEESScavAeHwx+q+HzenzwsZzHUkkyqo9?=
 =?us-ascii?Q?6D39l6xzdTrpqFhuERkRt7MjHTBXXvjXsbg6IId5r5xO6m4FKiueYEK/iY6D?=
 =?us-ascii?Q?Ge81+1YbSxM4OeGzR1FCFvXNMS2r/iF3I2E2iD8tNOf6tjPibC9S+D+b2Tlr?=
 =?us-ascii?Q?V+JoMWACDrQfWC8R7J2ISHWceTc5Qp7YsXqqNgBg6jui2/3Z8PVWJ7iJ4Oy1?=
 =?us-ascii?Q?Qqp6eEP0QcpM7bGqweJc0C2Xzd6YDBxcbGROSYojqd3RR/4Ird1VbesaQIGu?=
 =?us-ascii?Q?V2GmEJmm2hQwGaksFJhMY1sHSMZWCnZBLetuF10yFCKKyAbh9qN9narOou7W?=
 =?us-ascii?Q?orkprbR8vz0fqmkNFav9mBRj5UwDXUTpp1zhQPJdKSFlbshn0x4MFDQxyaYo?=
 =?us-ascii?Q?ESIPrkTOxEEtwCCc9PLAVl/Vvl72Gd/k/tE0kq+Cq+jDxSzFWJl7Tn8Umq4F?=
 =?us-ascii?Q?AIXFGslSZu6ghYJsgU1iIczUcy8qTX/VG0gG2TibeiyfEDj93yeVu5Shkyk5?=
 =?us-ascii?Q?o5bR6gR4cCiVxXLspjWG/VlKedhCBr/UlZ4IIvVeeVQqpdrbAvCVhJnU8HFc?=
 =?us-ascii?Q?Wsnk9GHY36v9l8OyvXMUMnIUNWm25/+IcHvrZ908+rPO+x5PvMN4K274jIOO?=
 =?us-ascii?Q?G5t0GG+J2wxWe+i9YJLRblLKv1UH6SAqSqJKPBkL1dAloGCQbRO2IGH4QO3y?=
 =?us-ascii?Q?yI8rI4Q7cr3+4IvVKYTe6i9mosuh5BnPgdHAaY0aBAPnyCvD6KjOtsKgjt62?=
 =?us-ascii?Q?nBqgmPPTTaBDGrXRBd6kEYTVeffx1FelczJfECFzQNAzhO5ck3JiAC+Nkloj?=
 =?us-ascii?Q?YVBvKYX/Ch5aE7oTbWqy/TZ27A487t8/MKrpODiUeBbYq8ffybilU5Ukovot?=
 =?us-ascii?Q?rtwQ5Opmxjg/WJGWDQv6F9i5L9FRx+eWq9Gf8tX15+kndC668bZqfCvARYzU?=
 =?us-ascii?Q?Z41HinNpwbu9hjrshjx0dkvVKAVwprHlrqgy4HFEc8ud4isRSt7WeAOqh+UR?=
 =?us-ascii?Q?q23u9Bvnl2XqNLpTUBwFx6MkEpGW4orNTe+0sDSwG5t8nVFoTO71U7m3Fv4u?=
 =?us-ascii?Q?cuSvWnQWRJ7XT2g0ivphYmj3ydGP/zGZnN+bYzAZGZXZsQJnOOjU0FBROq17?=
 =?us-ascii?Q?MNyfMZ7tm2iVpzkdwalrc4qxeQDzpOetuguUGXKhxqse73/oARCUvz+5LkT+?=
 =?us-ascii?Q?4A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2a0fb30-db08-4524-c348-08dbd9412bc4
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2023 12:10:13.3308 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uUZfT0WUhVxpGhKISjFcfqCwFs9x2abXeqO5wpgllP2dhLMCp/nmZ2Kohydd7T/4bfkTCn4VTxogOjj+Q/dUDCR2hbhhVvOC0fwjpUcVDLc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6244
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Support HBR3 rate with C10
 phy and eDP in MTL
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, October 30, 2023 5:21 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Syrjala, Ville <ville.syrjala@intel.com>; stable@vger.kernel.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Support HBR3 rate with C10
> phy and eDP in MTL
>=20
> On Wed, 18 Oct 2023, Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com> wrote:
> > eDP specification supports HBR3 link rate since v1.4a. Moreover,
> > C10 phy can support HBR3 link rate for both DP and eDP. Therefore, do
> > not clamp the supported rates for eDP at 6.75Gbps.
> >
> > Cc: <stable@vger.kernel.org>
> >
> > BSpec: 70073 74224
> >
> > Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>=20
> For future reference, the trailers (Cc, Bspec, Signed-off-by, etc.)  all =
go together
> with no blank lines in between.
>=20

Sure Jani, will keep in mind.

Thanks

Regards

Chaitanya

> BR,
> Jani.
>=20
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 1891c0cc187d..2c1034578984 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -430,7 +430,7 @@ static int mtl_max_source_rate(struct intel_dp
> *intel_dp)
> >  	enum phy phy =3D intel_port_to_phy(i915, dig_port->base.port);
> >
> >  	if (intel_is_c10phy(i915, phy))
> > -		return intel_dp_is_edp(intel_dp) ? 675000 : 810000;
> > +		return 810000;
> >
> >  	return 2000000;
> >  }
>=20
> --
> Jani Nikula, Intel
