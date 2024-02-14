Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1CE854B13
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 15:06:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7C6D10E260;
	Wed, 14 Feb 2024 14:06:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RQmMbfJZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0811E10E28F
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 14:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707919599; x=1739455599;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=akNiBxNLga2mn2ppG4lY6SlkxKY1v0o55SLIpVlOoZw=;
 b=RQmMbfJZIRKUl0jp1ts54Z3Dj0U1PsjSHaL10KlUojQNJu/AETm2DcUk
 TnELogRD7FWCOzaVcoD4bJW1437EYovYEhceewon14FXcOd2kEHbLw+UR
 3a6IUW2QEJZWBos6fD50GSPoGulX+RcdiHbtehNh5ktRYc+MVzOYaaA7Y
 ROLMTfOg9+EXR+T2NCSM3/SR3NbwU0wO+bb6l1Gf/3ZppYmeBlbtrYWER
 TFriDfmHjjWQdv83Kg0a3hlgVD2ANl17gND8jypRktRskSg5LiSmSdPsK
 9woKo1gsxbPYlUWXIcahzsBcKpjq4Pi6oY+NObK8TRTbO5ZpGQK4HhV/u A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="2087502"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="2087502"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 06:06:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="3265367"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 06:06:29 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 06:06:28 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 06:06:28 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 06:06:28 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 06:06:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=akWgeGreKCMJEbZZWQ2P2gfzJvwD14c551GQSF0VV3kLBiM0IxifDOrEkuGD9wdaZnQXTeTAim8dkbL0ABpdgIRlwVW4LkRWKMGZ3vQ9EqPP01BwItTzEwBKE1M+n0Pg/Hjj8HHueaT/7izong46LxVwBB6Dzk4XkU8YfDpNeqMLgKygIRdXjPcmpjft8AlIXZcvLhQordLw7/wWiGHIDDsFegWPDDInlhBo5B1OsSIUNlTk/pMLLDo/p5TrVqCt7Pxixy1GFJ2HaalmcsVHhPFFTtlNf8wUwSGziDL6LyTlFEjHSoQOqJnDN4z5KMVJHgKITYpoM17f0kLieyecQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7IWQeXaSAICQ7oADZkIjw3qYY05u4L+DuO67bFMEC+4=;
 b=gg3vWXltevLPrN/A+8gEUle0YcnWG831pa1i7CCSao/MFQoH9C3BiIhzfMrsfVwAOBjQZ7kMJt6UwtSmLgVOQ2NZbkHETnCPKOxi9CX2s+CaAbKwFtag5C4nbQFRkzvodWxOUjmBtvxgMmbqumwsvo2ABfua/EEwOrZpNQXrrqQWjaywEoQYOfg1bBUG1RF+tVW7Tv/3an0PNGa7685WHJAtWWY/0WF8/D9x9keY1oJhr4GdorAbmuXLY3YcYmikGXpuff8fOey1+9J8Ze1ICEUlypojCH6mTBJcq+s5QXU7g6PRKa0AzEV1xDP4TWvEL0uoJHmPE3LbQVA4HC7wzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH7PR11MB5941.namprd11.prod.outlook.com (2603:10b6:510:13d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.41; Wed, 14 Feb
 2024 14:06:24 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5%4]) with mapi id 15.20.7270.036; Wed, 14 Feb 2024
 14:06:24 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [RFC 1/4] drm/i915/display/dp: Add DP fallback on LT
Thread-Topic: [RFC 1/4] drm/i915/display/dp: Add DP fallback on LT
Thread-Index: AQHaWOtnHbs4/LtqAEeOiG/7Dqlos7EInkOAgACkuECAAHu1AIAAJoMA
Date: Wed, 14 Feb 2024 14:06:24 +0000
Message-ID: <IA0PR11MB730746959160978F412BAC19BA4E2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240206104759.2079133-1-arun.r.murthy@intel.com>
 <20240206104759.2079133-2-arun.r.murthy@intel.com> <871q9g8cac.fsf@intel.com>
 <IA0PR11MB7307A5B0207F5C72F5D5DCC4BA4E2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <87le7n70ht.fsf@intel.com>
In-Reply-To: <87le7n70ht.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|PH7PR11MB5941:EE_
x-ms-office365-filtering-correlation-id: 148977bc-afd3-4fd3-d78b-08dc2d66213e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4FY03FlWAXnD/2Nzo7me8c+HEt2zzSZBDgEaWut2iiPgEx1LJomQ0flrsuzT+/YxxrWjfYJ45W1SCxolfixW1IBeMqvS4fPisFUzrMPzQBhy5CqnDU2ZZ6xN0K8ZUDp8K6PqBTIVC0GxeQVhTqLFFD97NE8Q6fQPiRI6zlFIbJ5WkIEFgBo9l/poylSI+9/vDI0AyP9NFAw8nnbjAx28q5GsmjGfE5PhY0LmUUks00bZUjD9sl6G3LDXJRX3Ads18nwEwBqe5puPHxxA66v86jpp7FLgCA7TIxMcOoCtpgrHsvQOR8eMwsMyfnSyJH8JDx9zYJcQaCUCBuh6JhaQi4d2cOalWG9o54zQXpMN91OJTzdkEGaFtKfLci5lD25UAqDwOXD4AkDOwmFY9HEWd6xFxGpymHHtZ/IpzL8M0Qe9QGMR/fb3KB4aSh733n6z0d7uT2kF2T0wB7kCCWAoEbmxzrLT+oeILYobU4Doy52pFkzT104FGoznio8rPJvlqia1Folou42dkpAvw+LTNCh+Y0z4/Agc7HenCW1FIX8IlC4xpQpTIbBeiwNPdV0wwNr7zwL9bwoFmI6PSLYuLf+9wZjwZewRsSHkCew/xEcRydIKDWLYNKBPiyGFTLKV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(366004)(39860400002)(376002)(346002)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(86362001)(33656002)(55016003)(66946007)(66476007)(5660300002)(8936002)(8676002)(64756008)(66446008)(478600001)(52536014)(76116006)(66556008)(30864003)(4326008)(2906002)(7696005)(6506007)(9686003)(82960400001)(107886003)(38100700002)(83380400001)(122000001)(54906003)(316002)(53546011)(41300700001)(71200400001)(38070700009)(110136005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HmX+Jq1iX5qcVtkXGBiTU8ryzN9noQttD5LJMEfL8FoKnXuPuMHh9DLeTDzm?=
 =?us-ascii?Q?IpGlXOP0rnfrGYuLMU8DsbG2DVPswR8OZOg+PT32dnM3+UobfRRG2ZnMVqkW?=
 =?us-ascii?Q?k/FJbCuJxnHjZM4kTt5VuzNw75dR9B6LB2gFTVsZ9lVRVdCkbc7/i4lt3BhV?=
 =?us-ascii?Q?E3PKvbofbtxgUphEGfaY6Lgu6bBW4KIURGBgaG7Pk5l+NqhhdlfaQCYbD8ig?=
 =?us-ascii?Q?DlHFN/hO7xV9zhF34lCigfwnwWHobRRkymI9w4p+LkGhiYlSezprBsWXmXXM?=
 =?us-ascii?Q?ze4DNh+/tGHyEcj+BhGbaNbiVJX9yPuSVLIB5avMFWzYIgNJ1d3fLIkxxz2m?=
 =?us-ascii?Q?7EtF6tSAz8LicD9yiV66qoAK65bbiQhVlkE/i1FZTg5uMZ6+SINU4ymDux3x?=
 =?us-ascii?Q?gozvBxG838vQIDpwURS5sQfPRJ0nqxci3x1MgNR5Q6DkyEe7PHWupxzsmfQy?=
 =?us-ascii?Q?UOkK2FV7YiMVLQUaIy0NmWW5gbo6sVlQM4hwHkr+FOxBN7V8/hW8ycc00YRk?=
 =?us-ascii?Q?QxNuSRSfwqti9X2cAjzjxihbt71YGuQLWXAW05XimW5LrIpX7J3gN0KyQAsm?=
 =?us-ascii?Q?jjN9VasO+gWSZb73cAXiV6QCiVSQTO+eKuE3FMxNgbzBx694E27GdOHFkhqi?=
 =?us-ascii?Q?ioP+L6i/3JFFzEZwdNEsSUq+kHf7Xri78KNY5SmuwM0ciCSOfoOJAxab096r?=
 =?us-ascii?Q?FnGmpwlfuL3xaHv5lzScHYROxL7MZ6AcEgFocnEFRLH+40jwn3A2UcdNVnar?=
 =?us-ascii?Q?E6CCGiqDqlv1LVq4tkFoNzf44p4RFv9c96SpRQTotNRtgo09oiu/l0c2YwdV?=
 =?us-ascii?Q?gq5bcm0wR6l744TQlkj5tkQvRX9RG/1SlIpKJplLuDtCy6biM51nt9O9zX7r?=
 =?us-ascii?Q?OeiQ1+MQXJIn1i3Oe15FrYpLOnYBFEYDYP2CwnnsjYUff6iiHGpKTI3n/cKE?=
 =?us-ascii?Q?Sjk7xNGUSHuwfocAMNjvsfOoTQOg1y8ZYXY0eTjFlanJbHMhOGOi6Qburt6I?=
 =?us-ascii?Q?gZX90TrMGqE5AyfMrVxbcJJ1U2MbEQBxvJr+P83mrdJ2baSQ+WF5r821jM1c?=
 =?us-ascii?Q?bFLmBqQ95JwU6Un3SktcOPLN1QwJ9J8uohPQdFCoVMjqpoUtguu50Ip4SylB?=
 =?us-ascii?Q?POSwD80BMM3HGdzuOHpPlaSuX6BDFw7UCTQkKHjjQKvEZ7hmjAna63+fdI69?=
 =?us-ascii?Q?rxN+3VwjvxE3kY3q3ZHBFVT3XCtXd2DTuQ1p89bagiXMkNIng9Wtamk3sdh/?=
 =?us-ascii?Q?PVWq4XoZhGlVD5t1qOWI8DvlgNoYJ6a8OmeBT91Ccimik2yA+MFqEWoruBxV?=
 =?us-ascii?Q?DOVD6rbHE0/5WIOiYUa8iU1VjSeM+SRFKDkSle9+KOzQjnim7zM5tAOEUVPQ?=
 =?us-ascii?Q?HXfY/Wpq/onww53kNPOZz5pNdL9BOmMKEocgVwCuHL88hki4Qsyybrp4OBEC?=
 =?us-ascii?Q?KGxkDh7hGZgqIs6sJLwk+MAgbUgKca4oSSmMKpLj85JhA0iE6NQE7wy5QCeQ?=
 =?us-ascii?Q?4m3fsGSb5/87MAR5/HJigrPLPgcFULlXP+N2pDfbbIj8DXj+5lKfKQzdrwvB?=
 =?us-ascii?Q?XoZr4JXcUyiNKPk/MSKpf0ogrXeZsReV9iH18hyNeflYNeRJBTlQ+1BQUG1A?=
 =?us-ascii?Q?xd4jVgRsvhla5ttUFH+vfbXDwdt2W6vuEp2qPsirdXYm?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 148977bc-afd3-4fd3-d78b-08dc2d66213e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2024 14:06:24.7356 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A0N9FUvaR0E6HCG9qj2jJOEkoqEtI9xVpcLUh8YygaTSAPifar4rWHQYXJRQ6+wO7Urj7acr8nodogufAuReuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5941
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
> Sent: Wednesday, February 14, 2024 4:54 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop=
.org
> Cc: Deak, Imre <imre.deak@intel.com>; Syrjala, Ville <ville.syrjala@intel=
.com>;
> Shankar, Uma <uma.shankar@intel.com>
> Subject: RE: [RFC 1/4] drm/i915/display/dp: Add DP fallback on LT
>=20
> On Wed, 14 Feb 2024, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> >> -----Original Message-----
> >> From: Nikula, Jani <jani.nikula@intel.com>
> >> Sent: Tuesday, February 13, 2024 11:41 PM
> >> To: Murthy, Arun R <arun.r.murthy@intel.com>;
> >> intel-gfx@lists.freedesktop.org
> >> Cc: Deak, Imre <imre.deak@intel.com>; Syrjala, Ville
> >> <ville.syrjala@intel.com>; Shankar, Uma <uma.shankar@intel.com>;
> >> Murthy, Arun R <arun.r.murthy@intel.com>
> >> Subject: Re: [RFC 1/4] drm/i915/display/dp: Add DP fallback on LT
> >>
> >> On Tue, 06 Feb 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> >> > Fallback mandates on DP link training failure. This patch just
> >> > covers the DP2.0 fallback sequence.
> >> >
> >> > TODO: Need to implement the DP1.4 fallback.
> >> >
> >> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_dp.c | 92
> >> > ++++++++++++++++++++++---
> >> >  1 file changed, 82 insertions(+), 10 deletions(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> >> > b/drivers/gpu/drm/i915/display/intel_dp.c
> >> > index 10ec231acd98..82d354a6b0cd 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> > @@ -104,6 +104,50 @@ static const u8 valid_dsc_bpp[] =3D {6, 8, 10, =
12,
> 15};
> >> >   */
> >> >  static const u8 valid_dsc_slicecount[] =3D {1, 2, 4};
> >> >
> >> > +/* DL Link Rates */
> >> > +#define UHBR20             2000000
> >> > +#define UHBR13P5   1350000
> >> > +#define UHBR10             1000000
> >> > +#define HBR3               810000
> >> > +#define HBR2               540000
> >> > +#define HBR                270000
> >> > +#define RBR                162000
> >> > +
> >> > +/* DP Lane Count */
> >> > +#define LANE_COUNT_4       4
> >> > +#define LANE_COUNT_2       2
> >> > +#define LANE_COUNT_1       1
> >> > +
> >> > +/* DP2.0 fallback values */
> >> > +struct dp_fallback {
> >> > +   u32 link_rate;
> >> > +   u8 lane_count;
> >> > +};
> >> > +
> >> > +struct dp_fallback dp2dot0_fallback[] =3D {
> >> > +   {UHBR20, LANE_COUNT_4},
> >> > +   {UHBR13P5, LANE_COUNT_4},
> >> > +   {UHBR20, LANE_COUNT_2},
> >> > +   {UHBR10, LANE_COUNT_4},
> >> > +   {UHBR13P5, LANE_COUNT_2},
> >> > +   {HBR3, LANE_COUNT_4},
> >> > +   {UHBR20, LANE_COUNT_1},
> >> > +   {UHBR10, LANE_COUNT_2},
> >> > +   {HBR2, LANE_COUNT_4},
> >> > +   {UHBR13P5, LANE_COUNT_1},
> >> > +   {HBR3, LANE_COUNT_2},
> >> > +   {UHBR10, LANE_COUNT_1},
> >> > +   {HBR2, LANE_COUNT_2},
> >> > +   {HBR, LANE_COUNT_4},
> >> > +   {HBR3, LANE_COUNT_1},
> >> > +   {RBR, LANE_COUNT_4},
> >> > +   {HBR2, LANE_COUNT_1},
> >> > +   {HBR, LANE_COUNT_2},
> >> > +   {RBR, LANE_COUNT_2},
> >> > +   {HBR, LANE_COUNT_1},
> >> > +   {RBR, LANE_COUNT_1},
> >> > +};
> >> > +
> >> >  /**
> >> >   * intel_dp_is_edp - is the given port attached to an eDP panel
> >> > (either CPU or
> >> PCH)
> >> >   * @intel_dp: DP struct
> >> > @@ -299,6 +343,19 @@ static int
> >> > intel_dp_common_len_rate_limit(const
> >> struct intel_dp *intel_dp,
> >> >                                    intel_dp->num_common_rates,
> >> > max_rate);
> >> }
> >> >
> >> > +static bool intel_dp_link_rate_supported(struct intel_dp
> >> > +*intel_dp,
> >> > +u32 link_rate) {
> >> > +   u8 i;
> >> > +
> >> > +   for (i =3D 0; i < ARRAY_SIZE(intel_dp->common_rates); i++) {
> >> > +           if (intel_dp->common_rates[i] =3D=3D link_rate)
> >> > +                   return true;
> >> > +           else
> >> > +                   continue;
> >> > +   }
> >> > +   return false;
> >> > +}
> >> > +
> >> >  static int intel_dp_common_rate(struct intel_dp *intel_dp, int
> >> > index) {
> >> >     if (drm_WARN_ON(&dp_to_i915(intel_dp)->drm,
> >> > @@ -671,15 +728,6 @@ int
> >> > intel_dp_get_link_train_fallback_values(struct
> >> intel_dp *intel_dp,
> >> >     struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> >> >     int index;
> >> >
> >> > -   /*
> >> > -    * TODO: Enable fallback on MST links once MST link compute can
> >> handle
> >> > -    * the fallback params.
> >> > -    */
> >> > -   if (intel_dp->is_mst) {
> >> > -           drm_err(&i915->drm, "Link Training Unsuccessful\n");
> >> > -           return -1;
> >> > -   }
> >> > -
> >>
> >> By removing this, the claim is both 8b/10b and 128b/132b DP MST link
> >> training fallbacks work...
> > Yes! This series focuses on the fallback mandates mentioned in DP2.1 sp=
ec and
> doesn't fallback from MST to SST or vicecersa.
> > Hence if it is MST the fallback will be within MST and if its SST the f=
allback
> will be within SST.
> >
> >>
> >> >     if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
> >> >             drm_dbg_kms(&i915->drm,
> >> >                         "Retrying Link training for eDP with max
> >> parameters\n"); @@
> >> > -687,6 +735,31 @@ int
> >> > intel_dp_get_link_train_fallback_values(struct
> >> intel_dp *intel_dp,
> >> >             return 0;
> >> >     }
> >> >
> >> > +   /* DP fallback values */
> >> > +   if (intel_dp->dpcd[DP_MAIN_LINK_CHANNEL_CODING] &
> >> > +DP_CAP_ANSI_128B132B) {
> >>
> >> ...but this only addresses 128b/132b, and the 8b/10b MST drops to the
> >> existing SST fallback path.
> > Yes! As said above this fallback is based on fallback mandates
> > mentioned in DP2.1 spec in Table 3.31 and Figure 3-52 which focuses on
> > reducing the link rate/lance count and nothing to with MST/SST
> >
> >>
> >> And with the current code, DP_CAP_ANSI_128B132B does not decide
> >> whether we use DP MST or not. So this will also cover 8b/10b fallback
> >> for displays that support 128b/132b but have DP_MSTM_CAP =3D=3D 0.
> >
> > Yes, the series doent depend on MST and SST and doest fallback from MST=
 to
> SST or viceversa.
>=20
> What I'm saying is, this changes the way 8b/10b link training fallback is
> handled.
>=20
The first loop has a if condition for 128/132b and is executed only if its =
128/132b and if not falls to the existing code. i.e 8/10b link training fal=
lback sequence.

> First, it starts handling 8b/10b MST link training fallback.
>=20
As far as I see, at the entry of this function 128/132b is checked and link=
 training fallback values for this obtained and if not link training fallba=
ck values for 8/10b is obtained. Have taken care as to not modify the exist=
ing 8/10b fallback.

> Second, it changes the way 8b/10b *and* 128b/132b *and* SST *and* MST lin=
k
> training fallback is handled for all displays that support 128b/132b chan=
nel
> coding.
>=20
MST/SST configuration and then the link training happens. This link trainin=
g by writing to dpcd registers is done over here by sending certain pattern=
s. The fallback in this RFC is done only in this small link training sequen=
ce. On failure the handler doesn't return back instead retry from starting =
of link training is done. MST/SST configuration is not touched upon, if any=
 required for this as part of fallback can be taken up in the next step.
This RFC is aiming to achieve fallback for the link training sequence only.

> That's *wildly* too much in one patch.
>=20
Will surely break this into multiple patches based on the functionality.

> It also duplicates the existing code in the same function, with a differe=
nt
> mechanism. We don't want to have two different ways to do this, and of al=
l
> things based on sink's 128b/132b cap. Just one.
>=20

The way for obtaining link training fallback values for 128/132b is done an=
d the same code will be utilized for 8/10b as well but with a different tab=
le.
If the RFC is approved then will work on getting this done in a cleaner and=
 optimized way.

> >
> >>
> >> > +           for(index =3D 0; index < ARRAY_SIZE(dp2dot0_fallback);
> >> > + index++)
> >> {
> >> > +                   if (link_rate =3D=3D dp2dot0_fallback[index].lin=
k_rate &&
> >> > +                           lane_count =3D=3D
> >> dp2dot0_fallback[index].lane_count) {
> >> > +                           for(index +=3D 1; index <
> >> ARRAY_SIZE(dp2dot0_fallback); index++) {
> >>
> >> I honestly do not understand the double looping here, and how index
> >> is managed.
> > The first loop is to find the present link rate and lane count in the f=
allback
> table. Once we find this, we will have to traverse from that index below =
to get
> the next fallback link rate and lane count. The second loop is now to tra=
verse
> from this index to see the supported link rate and lane count.
> > For ex: if the link rate is 10Gbps and lane count is 4. First loop is t=
o find this in
> the fallback table, index would be 3. Then next loop is to traverse from =
this
> index 3 to find the fallback values. This would essentially be UHBR13P5 l=
ane
> count 2. But MTL doesn' support this. Hence will have to move index by 1 =
to get
> UHBR10 lane count 2. This second loop will be used for this purpose.
>=20
> Needs abstractions i.e. more functions instead of trying to make it all h=
appen in
> one loop.

Sure will work on this and will float the patch.

>=20
> >
> >>
> >> > +                                   if
> >> (intel_dp_link_rate_supported(intel_dp,
> >> > +
> >>       dp2dot0_fallback[index].link_rate)) {
> >> > +
> >>       intel_dp_set_link_params(intel_dp,
> >> > +
> >> dp2dot0_fallback[index].link_rate,
> >> > +
> >> dp2dot0_fallback[index].lane_count);
> >>
> >> intel_dp_set_link_params() is supposed to be called in the DP encoder
> >> (pre- )enable paths to set the link rates. If you do it here, the
> >> subsequent enable will just overwrite whatever you did here.
> > This is taken care of so as to not override and retain this fallback va=
lue.
>=20
> I don't understand.
>=20
With the existing code the driver sends uevent and a new modeset along with=
 dp_init is done and the values will be overwritten. In this RFC we don't s=
end uevent for all the fallback values instead re-iterate only the link tra=
ining part without touching the dp enable sequence.

> >
> >>
> >> The mechanism in this function should be to to adjust
> >> intel_dp->max_link_rate and intel_dp->max_link_lane_count, and then
> >> the caller will send an uevent to have the userspace do everything aga=
in, but
> with reduced max values.
> >>
> > If falling back within UHBR rate, so with a mode that supports the new
> fallback link rate then we don't essentially have to send uevent to user =
and new
> modeset may not be required.
> > For Ex: the link rate is 20Gbps with mode 6k, Link training fails. So w=
ith the
> new fallback linkrate falling within UHBR need not do a modeset. Only if =
the
> fallback link rate falls to HBR rate for which 6k is not supported, only =
then
> uevent will be sent to user.
>=20
> For SST paths we'll always choose the optimal link parameters, and the mo=
de
> will not fit if we have to reduce the parameters. And as I just explained=
, your
> changes impact SST paths as well.
>=20
> For MST we'll start with max parameters, so yeah there's a possibility we=
 could
> reduce the link parameters without having to reduce the mode. However, I'=
m
> inclined to always go through userspace here, using the same tested paths=
 for
> link training failures. This will also give userspace some form of transp=
arency
> into what is going on, and why an additional MST stream might not fit whe=
n it
> should.
>=20
> >> This is all very convoluted. And I admit the existing code is also
> >> complex, but this makes it *much* harder to understand.
> >>
> > Hopefully upon cleaning up some redundant code and re-arranging this
> implementation with a formal patch traversing the fallback code might bec=
ome
> a little simple.
>=20
> If we want to use a list for the parameters, I think the first step shoul=
d be to
> modify the existing code to use the list. No additional changes, no funct=
ional
> changes.
>=20
Sure will ensure that would be the first patch in this series before touchi=
ng upon anything on the 128/132b fallback.

Thanks and Regards,
Arun R Murthy
-------------------

> BR,
> Jani.
>=20
> >
> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
> >> BR,
> >> Jani.
> >>
> >> > +                                           drm_dbg_kms(&i915->drm,
> >> > +                                                       "Retrying
> >> > + Link
> >> training with link rate %d and lane count %d\n",
> >> > +
> >> dp2dot0_fallback[index].link_rate,
> >> > +
> >> dp2dot0_fallback[index].lane_count);
> >> > +                                           return 0;
> >> > +                                   }
> >> > +                           }
> >> > +                   }
> >> > +           }
> >> > +           /* Report failure and fail link training */
> >> > +           drm_err(&i915->drm, "Link Training Unsuccessful\n");
> >> > +           return -1;
> >> > +   }
> >> > +
> >> >     index =3D intel_dp_rate_index(intel_dp->common_rates,
> >> >                                 intel_dp->num_common_rates,
> >> >                                 link_rate); @@ -716,7 +789,6 @@ int
> >> > intel_dp_get_link_train_fallback_values(struct
> >> intel_dp *intel_dp,
> >> >             drm_err(&i915->drm, "Link Training Unsuccessful\n");
> >> >             return -1;
> >> >     }
> >> > -
> >> >     return 0;
> >> >  }
> >>
> >> --
> >> Jani Nikula, Intel
>=20
> --
> Jani Nikula, Intel
