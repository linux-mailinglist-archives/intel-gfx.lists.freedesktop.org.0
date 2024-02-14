Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB3A85423B
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 06:04:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A31C10E0E0;
	Wed, 14 Feb 2024 05:04:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fbA/1PDz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25DFC10E0E0
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 05:04:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707887080; x=1739423080;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eNYzvUNOuBD/ONX/pFZhaKht3kSxclUl2tH2hFFKsIM=;
 b=fbA/1PDzssVLy1IGQMSKx6eA1gf0QtaF/fIAQJyXYytf70s2+VQgz/xO
 Q9dkZjvLw2/eMv3M1tzT9IE3P5ihd1/VqWGAIj3gxUreJttVI2LBy/fOD
 fTkjAmN30JX8hHlVfzUh7tiHVg9ZaPxGPnoT14qPNFK5eImVkxxX1jDmj
 5P3BQp+HMgZ4VZDZz0NSST45NHmEoR8uhTs2hpIFxkBPLuRhnlz6fFU1a
 uSlXYdWZs7h+Z69mWGik/6GFOU+SXTtF4WLOjqmPdDDO+18z2XzRVOC/m
 9b1OOfSVys36wf/AN7hyBovrTIl6Xw3/Q9ozOVBtz1v1wABpF6SAwHgDT w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="13014492"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; d="scan'208";a="13014492"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 21:04:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="7735160"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2024 21:04:34 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 21:04:34 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 21:04:33 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 13 Feb 2024 21:04:33 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 13 Feb 2024 21:04:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P3aPjWzxUMNnxWRK9pWJoOYv3Dsbc3tt/AA3wg5XHl5uPAqsQ/MyjlVxSb4Ejtps6pOczOy+wq/65YwSfPRBSPjQQKG5cEvuryhkSAkjjrcvmeGQG8Ml+OuDl5oOa5n7JnURPSbMFcU25y9sjeclTxp5p1y6qW8NUWolY9ysq6r0dPqwdMbr7HN82EJYWoEhif+mpXVY8bw6rbZuorqgvp6Tzb5MGo7jWdmpdz80UXh98jstMMVMUN4KTEyYnRKRSVnemqSJ5xyw7TgDJIeVkcRYebCbmEd5SPk6AGFH4ckmdhF+nkrCcf5ldnfn3b4CmVhR9h9Zow6yoRwUkQbKoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FYSlr52HxAHNs93/qQrDT7KpRcII7cjXQeJ31aNDU2k=;
 b=ijnqvJW5XUPOp8xs5zILpkcPKNV5ocT8V+ZUqRQ7VP3CEVn/AGJjNjA3o2Nbqr/2aN2b7EnT4IetI1UDomQyGumQcDn7+JzoJWuzB4qi0VfKsS0iy3DfCpC5SWDM9u+Nl/JNAqDMnzTna0azNvYd2d6wclj3qtgvqbqFT1doOqtnqn/8h2e76pbr7kUC4qAlBwDQY9mp7aYzRX6B6k2YPyotOqsDJn5iCkVg0ECqwmODF/PPYjaLCDVE2uPMtvDFLzZqqabzp9G/XHrVhhMh6qkwJMY/ZO/FhidasRGnzgSngIlIzihIX0DWurp66y8XeWpCIgTQC0BC0Mm4TIUG9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DM4PR11MB6552.namprd11.prod.outlook.com (2603:10b6:8:8f::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7270.35; Wed, 14 Feb 2024 05:04:31 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5%4]) with mapi id 15.20.7270.036; Wed, 14 Feb 2024
 05:04:31 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [RFC 1/4] drm/i915/display/dp: Add DP fallback on LT
Thread-Topic: [RFC 1/4] drm/i915/display/dp: Add DP fallback on LT
Thread-Index: AQHaWOtnHbs4/LtqAEeOiG/7Dqlos7EInkOAgACkuEA=
Date: Wed, 14 Feb 2024 05:04:31 +0000
Message-ID: <IA0PR11MB7307A5B0207F5C72F5D5DCC4BA4E2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240206104759.2079133-1-arun.r.murthy@intel.com>
 <20240206104759.2079133-2-arun.r.murthy@intel.com> <871q9g8cac.fsf@intel.com>
In-Reply-To: <871q9g8cac.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|DM4PR11MB6552:EE_
x-ms-office365-filtering-correlation-id: f0fb9545-cb19-475d-dee0-08dc2d1a6dd6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Spi1hO/mUmunWIXBbnlU7btK8gd4JPfbB0sZbP7qZ1wzjoEnJaDWo6qc/WRPmDvky3QlOMw/qTuxwD2mjobAo1xl9e3bZbC/qMJ8LFzuYZUEnJvDuzosHY3VvcRryiV/RfwV1Ytwa3XR0lj0Ii/yB/+AkE9GYCtzWaeolRxlfFPfv/97xV6w3dpiuZDvlkphcvXyG8Q36WGIIFxS8q6Fix+S0vic5IgA03NiRi5RKeQ8s6zpnFF18zm3ny3vxbexTsS1QjJgP1qEH3EDR+ipzr9IvUAgIMS8gR3Fl3lhlQUmH82S/XYW3VpfXJycDFqkLL3ibUHllYshez+y95u1R8ATHih7H3CM2aG9Hsp9FBeMTVQ7vuowe8u3SOzpd3hgEjDAPFpBzDR88L/Z72jdGwuj7ut9+c0PiHs2QfgOcC74IBTu2n7/sU/2gtuD0c2/IiGUqfyG5waueQ/X+FIrXlmzS3z4j0LfDMXMozoZTd7Or23KdkQokCiWuqeYE2I1Xv/g7UyG7yf6AQufeAtoSleBdXHm0taGdA1Kn5AC3bp1nsgzcdYIzCJOWFKJv1k23afvqGFQDlpSTk2cGAt1qkJDM3mdtPMmOE+d7YED0c6d1bXincFnFV6s3eXyjBIY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(39860400002)(376002)(136003)(396003)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(38100700002)(122000001)(86362001)(2906002)(82960400001)(316002)(76116006)(110136005)(64756008)(54906003)(8936002)(8676002)(66946007)(4326008)(66556008)(66446008)(66476007)(478600001)(52536014)(83380400001)(53546011)(9686003)(7696005)(6506007)(71200400001)(107886003)(5660300002)(33656002)(38070700009)(41300700001)(55016003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QUH4RzwwCOBhEzFbAGxWiCBilq/SSTAb9I8tYPzrJrJ9bm0IXMsFxuwMQZ2z?=
 =?us-ascii?Q?Q+aNJITW/F8Q5E4+3MfrLkn8nqV/mVTdKU7XwwHwYt7/Yv8MtEPiVNHdG6yv?=
 =?us-ascii?Q?s8ovyw1X5rDE5UlSkDW26QF/G/bamRop7Lw+Yg+28kQhSlFeWC1z4+dOPh6M?=
 =?us-ascii?Q?cYppxpi8PEaAdcFyLHpMXDtxuvPl1/cNbhbrZCSBbh/En5zDfksdCPWsCNBB?=
 =?us-ascii?Q?ewG02hkNiolKoEKcv0zUzMhucKXZcTzHKeAOlelau1lmB30h+H95j0WsQSYk?=
 =?us-ascii?Q?upqSX3j6h0nt6wlk9XML+YLEB/ULWrtS7ZOV4HNzndXiZjxi+cSN6ozq8XaK?=
 =?us-ascii?Q?tI63oMPDxT2gwl+TmxBm9H3OU9YUoJZnE7T7jJcAPMQcWA80mkOMzy6RTPvi?=
 =?us-ascii?Q?Mep8BKmvjpbGQmqnf5dhIQj5D/YoymaNM9+lQtVI2P2EFzdgCwDXFVlF5D4F?=
 =?us-ascii?Q?iHjKTBh2MpiXatYUIUtFgaEttjVE/MqsMcQKhsg60F/9glSn3qvQtRB9Gx5s?=
 =?us-ascii?Q?wkn0LG1y1jx+ExqA27yUItBo41j0bGY3tmhcfHyfXLwzVbZbftdS0aQnZeVP?=
 =?us-ascii?Q?i5fg4nq/wQ7hrUtG5O8CO57DLQhg5NxjRIrOhUSzWo4G/3hS0WaJSrpcWCFa?=
 =?us-ascii?Q?kzVwc3imRbrsv1xmmh6WxZkRH+CV5Nb62Je5iwuyt69iVF1AAGFN4J9u0DHD?=
 =?us-ascii?Q?bvI/8SpowatwIkgRj2RTeOuheCnrDaKA/AYd2vmuG9pgRjVT7WtTtaHmrZLZ?=
 =?us-ascii?Q?aUZLsapCkJIGUOkJA56mjOPsMURDCYfCGregvfZv1AtFrmqE0QZNhIJe/jXV?=
 =?us-ascii?Q?Am3sdiBo58NZ6CD6EnVPhs0I84LcmniiI73SHpjc/pE+QQN6pre1LI0tar0N?=
 =?us-ascii?Q?QJLKC5qbc35eFnBb5/YXyd79QFFh1ueuGLGwqBrjs9cq02bi8F8DTnBj0d9f?=
 =?us-ascii?Q?hErCPm40/DScBMq38YVIPTvVl7jI/e/gw8N9MEIpSyzdZYxKFwms+BkW59KL?=
 =?us-ascii?Q?8Zd9Yj28F1oXjIC12XRkwMNEH0JZOXDpikEv3Wd9B40ndPVeMS7Gttf4jqQ5?=
 =?us-ascii?Q?qM2bEpiG0l29qn589Z5qBJBGQn+cvapQLnw1+hp+zS5WTcC8orXo++PMMFC6?=
 =?us-ascii?Q?BxiAEoYxDUI6rUd7homg8kjN5Ct460qcz9Mc3+n3M+LRggGzGVZgNWwpwDod?=
 =?us-ascii?Q?CSYgjNaJqinALLNiDcEpT2uCJwwcNOpVJWSvVlwzduIVJ+M/A6Y7g6UdTxNc?=
 =?us-ascii?Q?/uiwFC9QIuXZrKQenDObW1NCrnb5Sr41XGiFcV9YigXDg6OV+xnnPxeFghXY?=
 =?us-ascii?Q?swnTqgyrAMk+IZejzB4ZOpqjCIu6GnSQH+3ksyRp/p9T+aDhyXIv+biDF45t?=
 =?us-ascii?Q?91NCurqUzU0LVsBom+WCXUFokyIqu++1xWpQ55V7aduMOwtohAjYmgEkwwTT?=
 =?us-ascii?Q?eEunGcyDX6Ouqo+RIiwOmMbFxoawpDcfYwBg5eyNjGjN4ElIj6A3h8Zas+lW?=
 =?us-ascii?Q?6hpXJnx+jezgyvbxiKJ6rZxn8hZUr9xwQfv9TmNI3Z8mt89O0tr+E3Xq2JmK?=
 =?us-ascii?Q?arrUierZvbVF5Tkmn/seE3F3jpslPPyotW+yZsFfzXE1YWzYZJomuu+hCzX7?=
 =?us-ascii?Q?q5Q069UtKsQ0IwnUJXAzGPEpqUVuG89YOK77QvnovzZg?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0fb9545-cb19-475d-dee0-08dc2d1a6dd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2024 05:04:31.4366 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aq1iP9cgRdzVQkc4JqWX/BpO1jxz7RRmnAoAGV0lUTI/JN/GnpGQuNEg855HnoeOJzLE3JmeC9XT9WDvGd4FmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6552
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
> Sent: Tuesday, February 13, 2024 11:41 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop=
.org
> Cc: Deak, Imre <imre.deak@intel.com>; Syrjala, Ville <ville.syrjala@intel=
.com>;
> Shankar, Uma <uma.shankar@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>
> Subject: Re: [RFC 1/4] drm/i915/display/dp: Add DP fallback on LT
>=20
> On Tue, 06 Feb 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > Fallback mandates on DP link training failure. This patch just covers
> > the DP2.0 fallback sequence.
> >
> > TODO: Need to implement the DP1.4 fallback.
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 92
> > ++++++++++++++++++++++---
> >  1 file changed, 82 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 10ec231acd98..82d354a6b0cd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -104,6 +104,50 @@ static const u8 valid_dsc_bpp[] =3D {6, 8, 10, 12,=
 15};
> >   */
> >  static const u8 valid_dsc_slicecount[] =3D {1, 2, 4};
> >
> > +/* DL Link Rates */
> > +#define UHBR20		2000000
> > +#define UHBR13P5	1350000
> > +#define UHBR10		1000000
> > +#define HBR3		810000
> > +#define HBR2		540000
> > +#define HBR		270000
> > +#define RBR		162000
> > +
> > +/* DP Lane Count */
> > +#define LANE_COUNT_4	4
> > +#define LANE_COUNT_2	2
> > +#define LANE_COUNT_1	1
> > +
> > +/* DP2.0 fallback values */
> > +struct dp_fallback {
> > +	u32 link_rate;
> > +	u8 lane_count;
> > +};
> > +
> > +struct dp_fallback dp2dot0_fallback[] =3D {
> > +	{UHBR20, LANE_COUNT_4},
> > +	{UHBR13P5, LANE_COUNT_4},
> > +	{UHBR20, LANE_COUNT_2},
> > +	{UHBR10, LANE_COUNT_4},
> > +	{UHBR13P5, LANE_COUNT_2},
> > +	{HBR3, LANE_COUNT_4},
> > +	{UHBR20, LANE_COUNT_1},
> > +	{UHBR10, LANE_COUNT_2},
> > +	{HBR2, LANE_COUNT_4},
> > +	{UHBR13P5, LANE_COUNT_1},
> > +	{HBR3, LANE_COUNT_2},
> > +	{UHBR10, LANE_COUNT_1},
> > +	{HBR2, LANE_COUNT_2},
> > +	{HBR, LANE_COUNT_4},
> > +	{HBR3, LANE_COUNT_1},
> > +	{RBR, LANE_COUNT_4},
> > +	{HBR2, LANE_COUNT_1},
> > +	{HBR, LANE_COUNT_2},
> > +	{RBR, LANE_COUNT_2},
> > +	{HBR, LANE_COUNT_1},
> > +	{RBR, LANE_COUNT_1},
> > +};
> > +
> >  /**
> >   * intel_dp_is_edp - is the given port attached to an eDP panel (eithe=
r CPU or
> PCH)
> >   * @intel_dp: DP struct
> > @@ -299,6 +343,19 @@ static int intel_dp_common_len_rate_limit(const
> struct intel_dp *intel_dp,
> >  				       intel_dp->num_common_rates, max_rate);
> }
> >
> > +static bool intel_dp_link_rate_supported(struct intel_dp *intel_dp,
> > +u32 link_rate) {
> > +	u8 i;
> > +
> > +	for (i =3D 0; i < ARRAY_SIZE(intel_dp->common_rates); i++) {
> > +		if (intel_dp->common_rates[i] =3D=3D link_rate)
> > +			return true;
> > +		else
> > +			continue;
> > +	}
> > +	return false;
> > +}
> > +
> >  static int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
> > {
> >  	if (drm_WARN_ON(&dp_to_i915(intel_dp)->drm,
> > @@ -671,15 +728,6 @@ int intel_dp_get_link_train_fallback_values(struct
> intel_dp *intel_dp,
> >  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> >  	int index;
> >
> > -	/*
> > -	 * TODO: Enable fallback on MST links once MST link compute can
> handle
> > -	 * the fallback params.
> > -	 */
> > -	if (intel_dp->is_mst) {
> > -		drm_err(&i915->drm, "Link Training Unsuccessful\n");
> > -		return -1;
> > -	}
> > -
>=20
> By removing this, the claim is both 8b/10b and 128b/132b DP MST link trai=
ning
> fallbacks work...
Yes! This series focuses on the fallback mandates mentioned in DP2.1 spec a=
nd doesn't fallback from MST to SST or vicecersa.
Hence if it is MST the fallback will be within MST and if its SST the fallb=
ack will be within SST.

>=20
> >  	if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
> >  		drm_dbg_kms(&i915->drm,
> >  			    "Retrying Link training for eDP with max
> parameters\n"); @@
> > -687,6 +735,31 @@ int intel_dp_get_link_train_fallback_values(struct
> intel_dp *intel_dp,
> >  		return 0;
> >  	}
> >
> > +	/* DP fallback values */
> > +	if (intel_dp->dpcd[DP_MAIN_LINK_CHANNEL_CODING] &
> > +DP_CAP_ANSI_128B132B) {
>=20
> ...but this only addresses 128b/132b, and the 8b/10b MST drops to the exi=
sting
> SST fallback path.
Yes! As said above this fallback is based on fallback mandates mentioned in=
 DP2.1 spec in Table 3.31 and Figure 3-52 which focuses on reducing the lin=
k rate/lance count and nothing to with MST/SST

>=20
> And with the current code, DP_CAP_ANSI_128B132B does not decide whether
> we use DP MST or not. So this will also cover 8b/10b fallback for display=
s that
> support 128b/132b but have DP_MSTM_CAP =3D=3D 0.

Yes, the series doent depend on MST and SST and doest fallback from MST to =
SST or viceversa.

>=20
> > +		for(index =3D 0; index < ARRAY_SIZE(dp2dot0_fallback); index++)
> {
> > +			if (link_rate =3D=3D dp2dot0_fallback[index].link_rate &&
> > +				lane_count =3D=3D
> dp2dot0_fallback[index].lane_count) {
> > +				for(index +=3D 1; index <
> ARRAY_SIZE(dp2dot0_fallback); index++) {
>=20
> I honestly do not understand the double looping here, and how index is
> managed.
The first loop is to find the present link rate and lane count in the fallb=
ack table. Once we find this, we will have to traverse from that index belo=
w to get the next fallback link rate and lane count. The second loop is now=
 to traverse from this index to see the supported link rate and lane count.
For ex: if the link rate is 10Gbps and lane count is 4. First loop is to fi=
nd this in the fallback table, index would be 3. Then next loop is to trave=
rse from this index 3 to find the fallback values. This would essentially b=
e UHBR13P5 lane count 2. But MTL doesn' support this. Hence will have to mo=
ve index by 1 to get UHBR10 lane count 2. This second loop will be used for=
 this purpose.

>=20
> > +					if
> (intel_dp_link_rate_supported(intel_dp,
> > +
> 	dp2dot0_fallback[index].link_rate)) {
> > +
> 	intel_dp_set_link_params(intel_dp,
> > +
> dp2dot0_fallback[index].link_rate,
> > +
> dp2dot0_fallback[index].lane_count);
>=20
> intel_dp_set_link_params() is supposed to be called in the DP encoder (pr=
e-
> )enable paths to set the link rates. If you do it here, the subsequent en=
able will
> just overwrite whatever you did here.
This is taken care of so as to not override and retain this fallback value.

>=20
> The mechanism in this function should be to to adjust intel_dp->max_link_=
rate
> and intel_dp->max_link_lane_count, and then the caller will send an ueven=
t to
> have the userspace do everything again, but with reduced max values.
>=20
If falling back within UHBR rate, so with a mode that supports the new fall=
back link rate then we don't essentially have to send uevent to user and ne=
w modeset may not be required.
For Ex: the link rate is 20Gbps with mode 6k, Link training fails. So with =
the new fallback linkrate falling within UHBR need not do a modeset. Only i=
f the fallback link rate falls to HBR rate for which 6k is not supported, o=
nly then uevent will be sent to user.

> This is all very convoluted. And I admit the existing code is also comple=
x, but
> this makes it *much* harder to understand.
>=20
Hopefully upon cleaning up some redundant code and re-arranging this implem=
entation with a formal patch traversing the fallback code might become a li=
ttle simple.

Thanks and Regards,
Arun R Murthy
--------------------
> BR,
> Jani.
>=20
> > +						drm_dbg_kms(&i915->drm,
> > +							    "Retrying Link
> training with link rate %d and lane count %d\n",
> > +
> dp2dot0_fallback[index].link_rate,
> > +
> dp2dot0_fallback[index].lane_count);
> > +						return 0;
> > +					}
> > +				}
> > +			}
> > +		}
> > +		/* Report failure and fail link training */
> > +		drm_err(&i915->drm, "Link Training Unsuccessful\n");
> > +		return -1;
> > +	}
> > +
> >  	index =3D intel_dp_rate_index(intel_dp->common_rates,
> >  				    intel_dp->num_common_rates,
> >  				    link_rate);
> > @@ -716,7 +789,6 @@ int intel_dp_get_link_train_fallback_values(struct
> intel_dp *intel_dp,
> >  		drm_err(&i915->drm, "Link Training Unsuccessful\n");
> >  		return -1;
> >  	}
> > -
> >  	return 0;
> >  }
>=20
> --
> Jani Nikula, Intel
