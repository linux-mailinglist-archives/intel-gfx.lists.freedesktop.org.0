Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 693C36E411A
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 09:33:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAE0210E3AC;
	Mon, 17 Apr 2023 07:33:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A0BA10E111
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 07:33:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681716815; x=1713252815;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wVir0i0bTAtdXLgSi5wLYwhkf+z0YwxBdN1OMcC6Phc=;
 b=PaFgqwQZYAIFGS+X0m4t89X7TjSb3rJdQKObfSHWCP+eU7Ktf0GKSGTE
 BM0icI/e/2upWCu/n/BdgSuo2Q2rQuXTXezuwAq+4H8odLXkLYu8sENlC
 9EnCdTfu40TyaQ+80p1JJovQBYcsxdsEHos0Rt5fw4DONmiF7ZIog5WqL
 Y82leoQUiukWzvmjlelTXbz31MzYOzCGrjZZA/0qspsUBQDbY8mrefTZZ
 NmucozyIkx1aibX+Xknsmit292UBy0VwFmVfhjOIeWf0yC+DHnh/HOx8n
 xJDVVtZckkLCAg4bGag31yIWVHZFS5ws0MWUpsK16qmwFvzKfkoP5VGNv A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="328993718"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="328993718"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 00:33:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="864913802"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="864913802"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 17 Apr 2023 00:33:33 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 00:33:33 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 17 Apr 2023 00:33:33 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 17 Apr 2023 00:33:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nOdpBTBVdmr0m/Ph9X6dNTZHDTPI+hEaeQqiMXyMKFa8vMCQOJNXixjF/0/VraC4KVdWc5vGvDNETUzlYTk+wgme07G6ScBvnxXtI0yzkYta/kFxxs1DMx/QxudvIfSfBR+QZNqgi/tVtu8gJyLpJjHw4AI7dn5CnYuRNwSOqyPaO3evqQHm24sN5kzDeHEPhH2L6bjSy6FYBvmq6ThzHx35JuyQ6FHly3p1EuArlqv5aOJukmEg0akvzwOzbUfPNN/9Pc1xqhQK15eHUfCTvwfelJs6G867zjChEVBV6OlNyuL/ipgO54c2noXup01Z3MZ2OuSAvJCx8G4+mP+TMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=arZt2XFQN37md+cjUTEMKF+Yd2poiHdPDCZlXly0T+c=;
 b=ZMx/2fgHxBsYTa3NKuf+CxUWCe6mhtgMekSb0DCPWCTkQOFY94OUQAl/II4tRK0E2fe4+iXyqwX5Dp8SohBEt3Ma8Ytw1MS0ONux+cmzyJYpTEr8yMrEF5QAPk43RksmMlfzlueQyheiZDOyRq52+W9VA79DJNhgKqg5IUWYaO2itJSjbLmtDRmO2G78h+llzb07DJWS8Lgky14gxSFiVqC2U/vdafV7vx4QU19/cArk9wKB3s0/3544/bR/zvoEqmU5ZGSB4lxr5UXxcqGLXm3n/dPL5CsUd9VgzpxmSXyDbqfg4QFBMUh8Htj2fNIodqTjmtFDm1h9ceb57KIpBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 IA1PR11MB7854.namprd11.prod.outlook.com (2603:10b6:208:3f6::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6298.45; Mon, 17 Apr 2023 07:33:31 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::b522:b698:5cfb:bd28]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::b522:b698:5cfb:bd28%6]) with mapi id 15.20.6298.045; Mon, 17 Apr 2023
 07:33:31 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915/display: Increase AUX timeout for Type-C
Thread-Index: AQHZZ48eMnElWjrRckOo2ZTAc2MdJ68u+xEwgAAn4gCAAAs1QA==
Date: Mon, 17 Apr 2023 07:33:30 +0000
Message-ID: <DM6PR11MB31775B9A63F9123CEF285B56BA9C9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230403080154.1239873-1-suraj.kandpal@intel.com>
 <20230405071951.1258132-1-suraj.kandpal@intel.com>
 <DM6PR11MB3177E1A5DF6394F2A668E86DBA9C9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <SN7PR11MB6750FFB8B5D19B1AC08FE1EAE39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750FFB8B5D19B1AC08FE1EAE39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|IA1PR11MB7854:EE_
x-ms-office365-filtering-correlation-id: b96db58b-189f-4386-f974-08db3f160afd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2Wtr9TNnfp6IpJNr5defV75VpN5aw4VbvpoBCeLSUcej2idkA9Uzs0IgiTm2KVpETdZNOYxjqAjqI30jbNz0+OIUiSWKeB0gvWAQSBeCUUA4TRV2O64ZfudeGi0538n6Y3PtGlmeLViW3h5oMSdr+If8+M46bALR3k8SOGKykaUx82In9Ht1w3Gd9U4o5U/pBkhzzP0T0IjsV+GyGHOukuq7vds3mAGte1I86pdY8ISSXFy7FCuxgkwoXq6qP1FEolDEoRf0jKm7OxYI7sgduCqoEgYqJncZ9c6EaNtrBIgGtyFc++pn9zTYklVMS6QsbngtH5cSTmZKFR2mVqlhqBguGQAEcJiLzd19SBDi5chmyLsJaNgCYjoriMu65YwIIzddKHYa6VYj+mqTLa1DcZTIiY1SP0E+Z6BVs48c/9IwNHdGxKZYcIxHzYvClZdXGfqAvnI+WcwjmHCGfFuUJzJTSoPqbqjjm+WkK3VCIo+Yswj3kdHjP/Pr7S6N7q3VegSLh8U7rei+Rz1QbWMy6H0k+WR0h4ssJKlirFV+5ta93YOcWpm0Ws3Hg3ZF7gvuOT+JZGWE7OiNOai/TwRtIxYMDqxx/BNrq/sR6Qqqdl58EMHz8uLW5u03HKzbKKAh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(376002)(346002)(366004)(136003)(451199021)(478600001)(71200400001)(38100700002)(8936002)(8676002)(316002)(82960400001)(41300700001)(55016003)(66476007)(4326008)(76116006)(66946007)(66556008)(66446008)(122000001)(110136005)(186003)(107886003)(2906002)(55236004)(53546011)(38070700005)(26005)(6506007)(64756008)(86362001)(9686003)(83380400001)(33656002)(52536014)(5660300002)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0tiXVd8//mG+FzEbFXRDAHzefDvjazEohrebwHcQ74XQjDE2d8J88GEfciHO?=
 =?us-ascii?Q?n3am+GB1i4KQvFMnbSsapeOMbfoRHmuenXapN318K8XlDHXN0a5gZvLOc95K?=
 =?us-ascii?Q?8CZtTxNfJ3hbq7aj6uUC6O0abU58wJ28haZQkwHJNTojuEz/GdejHh4ugi2F?=
 =?us-ascii?Q?IzN3LPGWo6qNru1UyFSlxs/B5xJC0TeRBqYMiW6Mn4a5dpqp8aSNPbuYz3gx?=
 =?us-ascii?Q?PGoS0Inc7uN9KHAoHfwHhVR5SXE5Mn7az27gKhjVl/TOokxEc77PWi2KcvXI?=
 =?us-ascii?Q?hbXEARIrbc+FGmEivvfekyW4vuprB7+bhrfmzcCzQ36POEkOeX4m5zd89xsc?=
 =?us-ascii?Q?oMpaX9Kug5CcVmloHcfC5r09BXELVY+0/AHOThmf4D1zenjTh7DByM2mmPYh?=
 =?us-ascii?Q?7mv6vA2KJrd+dV2wrOMO/l4efnwV/g0U9mDX4I6/nWq/jl35SHIo1ChUOrr9?=
 =?us-ascii?Q?6bJxPaLPFvt7J8FwKxJNphjlc9A4yZMDcfAnsYY9L760qMMKS4PANM2HpYKm?=
 =?us-ascii?Q?YmR2LU5Kh4N0LBI1VlFcVeYjVI8F/rkd5Hbd2arA0gMxwRBpgS9AcKJCJYri?=
 =?us-ascii?Q?8k0GI7vk3fBb8OHdRCeOMvvfqZFYX8r8RRox5cUND4GyVpDDdowp9ktT0DS+?=
 =?us-ascii?Q?SoQCLsGFqeTsGesdQ8xHfhWW9stI+TIkGNAOOTDN5plwMhvuXiKU0trAu9uJ?=
 =?us-ascii?Q?WIA7Ym9PFx1UBx/B7rTQ4xzRQJc+IDRK2/4W3gmYA/dqpPgfZOImcfYJW1wA?=
 =?us-ascii?Q?zVWXGZHcf68yYkUxBHX3OE8+XVv4TLZz7EzbtVb8HKx2GzsjGCc731toqB9U?=
 =?us-ascii?Q?BvqnnRwP5gGT4F4exvBLv3Z/dQ9iC5RuZeeiKKaEBU4g5ACPelK4E/VTLuSH?=
 =?us-ascii?Q?pHaMFZ9f4HNg9MxvJTS7PZuLc63x0oYbWao5OAPy/8a7TfluUkQ2UuaL++YG?=
 =?us-ascii?Q?gKUQEoxtQwx4QKwUfN65ze/TqXqP2Oi/RrSCrmFXZUc33+6odYvBWavz7Z9I?=
 =?us-ascii?Q?LdApKt2C/RuIa80AzigEiLn12zU3pgn7KXabIA/Nko2fcVzLwSeTMYgWsdXU?=
 =?us-ascii?Q?MBbX5BGx9O5wEMtETng/4JQ4Ej14GmotGUutAu2Ff1czsNyJoSdig/IsIEax?=
 =?us-ascii?Q?HYX44VXLZM6HdomLKzcXh0ujAtZmODl/WRmAl0EHhb6M7E9I/MQt7WRshWuu?=
 =?us-ascii?Q?2ywwHgHV//2hAoIHF3Lzi48Cj9ALsijvoC7n4daIRl0ipXDs/NJ6zf8Escri?=
 =?us-ascii?Q?F2nh3/i3yyyz8gxBWm6ZKyC6kfCf0lM0FjvlVK6I8TgtaPcUFQSuCQT7C3LW?=
 =?us-ascii?Q?b2drjcx6BI3h4PmyVlqY3askMQIbT/ENdh2ja1q9d03jIbdvwh4n97k8XaSe?=
 =?us-ascii?Q?hd9O6lpEKq+uz77iZ0sUpzRNWBbCBd08R9nVJoTM0JtB3Jw+CGQLvTX56EsY?=
 =?us-ascii?Q?c3ew7LsauA17Vp2cAdqXvW9MfmmWycoWlxChAAUjArFnVQQ5z9TmI+9OVXqn?=
 =?us-ascii?Q?wwn50UCOnUtMRQN8+gCo0H22TD/bOfXQmugiqtqfJwuGvo+2luZFML39S44a?=
 =?us-ascii?Q?AGNVoIaRy3E0RtK6PkOppyt+69/PofLlTwBKCVTo?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b96db58b-189f-4386-f974-08db3f160afd
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2023 07:33:30.9257 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: k2FeX1BFumh8ZMzXp+CfZW0UszDbTx5kmZhmAM9Scr9G3K9Cgtu83tuVVSekZBDXuquwDz5vaI5ur/3FSfQBQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7854
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Increase AUX timeout
 for Type-C
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Monday, April 17, 2023 12:21 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Sharma, Swati2 <swati2.sharma@intel.com>
> Subject: RE: [PATCH v2] drm/i915/display: Increase AUX timeout for Type-C
>=20
> : RE: [PATCH v2] drm/i915/display: Increase AUX timeout for Type-C
> >
> > > -----Original Message-----
> > > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > > Sent: Wednesday, April 5, 2023 12:50 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: Murthy, Arun R <arun.r.murthy@intel.com>; Sharma, Swati2
> > > <swati2.sharma@intel.com>; Kandpal, Suraj <suraj.kandpal@intel.com>
> > > Subject: [PATCH v2] drm/i915/display: Increase AUX timeout for
> > > Type-C
> > >
> > > Type-C PHYs are taking longer than expected for Aux IO Power Enabling=
.
> > > Workaround: Increase the timeout.
> > >
> > > WA_14017248603: adlp
> > > Bspec: 55480
> > >
> > > ---v2
> > > -change style on how we mention WA [Ankit] -fix bat error
> > >
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > ---
> > >  .../i915/display/intel_display_power_well.c   | 30 +++++++++++++++++=
+-
> > >  1 file changed, 29 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > index 62bafcbc7937..52f595929a18 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > @@ -489,6 +489,34 @@ static void icl_tc_cold_exit(struct
> > > drm_i915_private
> > > *i915)
> > >  		    "succeeded");
> > >  }
> > >
> > > +static void
> > > +adl_aux_wait_for_power_well_enable(struct drm_i915_private *i915,
> > > +				   struct i915_power_well *power_well,
> > > +				   bool timeout_expected)
> > > +{
> > > +	const struct i915_power_well_regs *regs =3D power_well->desc->ops-
> > > >regs;
> > > +	enum phy phy =3D icl_aux_pw_to_phy(i915, power_well);
> > > +	int pw_idx =3D i915_power_well_instance(power_well)->hsw.idx;
> > > +
> > > +	/*
> > > +	 * WA_14017248603: adlp
> > > +	 * Type-C Phy are taking longer than expected for AUX IO Power
> > > Enabling.
> > > +	 * Increase timeout to 500ms.
> > > +	 */
> > > +	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy)) {
> > > +		if (intel_de_wait_for_set(i915, regs->driver,
> > > +
> > > HSW_PWR_WELL_CTL_STATE(pw_idx), 500)) {
> > Feel that v1 patch was pretty simple and clean. Only change required
> > on v1 patchset was to add a variable for timeout and initialize that
> > variable with either 1 or 500 based on the platform.
> >
>=20
> Hi Arun,
>=20
> If we see the rev1 we were able to see some kernel pointers issue in bat
> when we try to retrieve phy and check if it's type c because
> hsw_wait_for_power_well_enable is being used in many different places and
> not just where aux c is available which made me go this way.
>=20
> Regards,
> Suraj Kandpal
>=20
This entire function will have to eb cleaned up to accommodate type C else =
a separate function has to be used for handling type C.
I feel this can be taken up as a separate activity.
For now
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
> > > +			drm_dbg_kms(&i915->drm, "%s power well enable
> > > timeout\n",
> > > +				    intel_power_well_name(power_well));
> > > +
> > > +			drm_WARN_ON(&i915->drm, !timeout_expected);
> > > +		}
> > > +		return;
> > > +	}
> > > +
> > > +	hsw_wait_for_power_well_enable(i915, power_well,
> > > timeout_expected); }
> > > +
> > >  static void
> > >  icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
> > >  				 struct i915_power_well *power_well) @@ -
> > > 517,7 +545,7 @@ icl_tc_phy_aux_power_well_enable(struct
> > > drm_i915_private *dev_priv,
> > >  	if (DISPLAY_VER(dev_priv) =3D=3D 11 &&
> > > intel_tc_cold_requires_aux_pw(dig_port))
> > >  		icl_tc_cold_exit(dev_priv);
> > >
> > > -	hsw_wait_for_power_well_enable(dev_priv, power_well,
> > > timeout_expected);
> > > +	adl_aux_wait_for_power_well_enable(dev_priv, power_well,
> > > +timeout_expected);
> > >
> > >  	if (DISPLAY_VER(dev_priv) >=3D 12 && !is_tbt) {
> > >  		enum tc_port tc_port;
> > > --
> > > 2.25.1

