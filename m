Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA7C652502
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 17:55:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47C9610E38F;
	Tue, 20 Dec 2022 16:54:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21FF410E38F
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 16:54:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671555291; x=1703091291;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5I0XBgNJewEEizUz8JvDzDgi+4lO2aNqWhFhN+W5ooE=;
 b=mRAnsZjYPNZ2OPCd3I7LKDdyrC3bAE/zkKWvljPGuTefU9kZgk64oujg
 SB89cuyNTVKOKid8U8bYuEMwnUY9Lwh2cYKo24MnEcjJwDJYp1/H2K+js
 xQ+LoqoID91WmFDNloEowxYnIumlHVg7P5v7hnLddcSlLTPr8TXKqXeXY
 ehD4u6Lej4Ikq7oWMFgbv4rWi7gnKEeuP5HICypQbLyZCEbwIttmqPFTx
 QoxDmI8dA5o+NO9FM/jrBltCqu9g77lVCujDF4lqLUSNvbp/8tW8Obu23
 wbuWKPF3rKXIcfPs3aM1Hp2V/lENe3QKUR48XcLTJZZ0F06815OgUgYaX A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="318354116"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="318354116"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 08:54:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="601165815"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="601165815"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 20 Dec 2022 08:54:33 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 20 Dec 2022 08:54:33 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 20 Dec 2022 08:54:32 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 20 Dec 2022 08:54:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k5g6OsYVf9Jj8BZ3UGcXaDMAHewr16WOEqlJ8/MzDM00kyQHO3Rcr/seEol2+8oTI+6/wsvyX6DOD6A8LV5iiSvEFvuWBm5cuo/AH/PjZhts9Vzprejg6rrnbYf1ZlwMSVE0l8kajv5Ax+fnFyeir+IlLapM/dgYQ3DhvzV9Ld5rbdYb63OvLR6iTnZcXhlcDl2wMlRkVw7k1Wu9YiDvAudz5b+qURfZXRUwXZjHFT2B3hwknaUz8sNosCmTqQE31miF4bW4YjH5PgZJ9TLbS488cjclKL6VeN4DeuB+YzpFbb/QEr1fc1v0/elU1c5+kEaDrVTUU3gWdUDsrM9A6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x3uFhZXuZShEPG91E+1rEZ9dK2Nik20swriLA7EXMJY=;
 b=DPXEYYIN/e572Bzkj/sUVLu+qCFQMmSXNBrJMQLpNnHo90Qyb6cfDBfDdqSevhNd8EjW23NR77akZtpj2JeAtwI1YaSYkXCv5oj3qFo6THJ2ylgmDlnbUK05eBwCHZGV5XCQy39MRr2qiA4wPKUejQb3va+dbevxRpM2jdRgHaOQGgFY1suno93zC9YWLvyNHEXanJHVVkcNoxxSgrYoDvKVB0liNbRzPkMIAaBqiROtbq6NliCsPTcY2zXtGI5boo515tPD6sXk0x38O7cT7qTBwoSGDq5Uyml943hWT+5N50m3i9btaK4ELHuCjBBc37Cwwwc1SR00NzKliddknQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CY8PR11MB7393.namprd11.prod.outlook.com (2603:10b6:930:84::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5924.16; Tue, 20 Dec 2022 16:54:31 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11%5]) with mapi id 15.20.5924.016; Tue, 20 Dec 2022
 16:54:31 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCHv6] drm/i915/dp: change aux_ctl reg read to polling read
Thread-Index: AQHZEHZH9p8xU8QYAEeI6c7UMkLoL651BTHwgAHy8ACAAA260A==
Date: Tue, 20 Dec 2022 16:54:31 +0000
Message-ID: <DM6PR11MB3177C23771ACBA36E1027AA2BAEA9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20221124070925.3834910-1-arun.r.murthy@intel.com>
 <20221215111338.1080698-1-arun.r.murthy@intel.com>
 <DM6PR11MB3177E122AC904FB5F30EF6EDBAE59@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87len22hcd.fsf@intel.com>
In-Reply-To: <87len22hcd.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|CY8PR11MB7393:EE_
x-ms-office365-filtering-correlation-id: 8e1ada18-ef2c-4f29-30e1-08dae2aadd56
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: y1WNXCWcjXZ9471bxL50iHsM2OduHsOT4sCCXU1TIaWrLans+SweNwNeqnXVkjj/mccAatAI2Yo7DO0otW9+ZdnwqIC2efQzjWyravSOwJIYZpi++FMy5pN6GPTnlZbsqFsgSZ0IHlqPdOT9FMQP+RyS3ccP8j0bsONatYkI2TXMrXTzKwpPf2KOuG7enK/ikSm/pLeMH+tV5wUoV0fyXCBmpy0MuGwc0gKslfDhQ/MYUqBviLq5xbmpOYLrm9Ig0/xd96lswE1Jtr/laVMgp9CSAdczuush4Cd9H3ncc+uvDldapTho4I3h0X3F6T2jCxDH+72FDPFpVB71bvUDLE7HX8QGF+AoBHWpejs/HXCvzo45TOO6YjIYsy5yJ5HerLuTLthmX64v/5xehooHtFXXrHgMDB4fGK5nJDu4Pafd99fxlgq4xaTXG64XYfl30O72TakdFr4jFZx/haWIiKqxe12uJDYCqgCbc0sd1PiPeZLIlpymGxTijuhbEqCxcOHy32PbLlBWLq6xtf0jI9p6ipD8WsNfkf+m8nlsLmeAlew0qreYC5J9iSrf48RmC1/1KybSAy2twCaBLLVGSzZTpq8TRRI+oriZ2+E6P39dzqMOWeD7xdftLqqeQFFhUwHW06h8wNZs52bg303vjhm7vVhOon9w+4ubCJf7Ej/3KMYKSDlhSZFTvIrjq64Y
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(376002)(346002)(366004)(136003)(451199015)(478600001)(6506007)(7696005)(66446008)(66476007)(64756008)(76116006)(26005)(9686003)(186003)(66556008)(55016003)(86362001)(110136005)(66946007)(316002)(6636002)(55236004)(71200400001)(8676002)(8936002)(52536014)(2906002)(5660300002)(82960400001)(33656002)(38070700005)(41300700001)(53546011)(122000001)(38100700002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?R4h9Npv/v7DWCn5LZ274tLdVHgLzHn11tf3bn04ubuzhj6o+guQtwdz/IiFs?=
 =?us-ascii?Q?k9/EsdfMXkbAJQNZXL4KnN38LTPGWi41aFp1keMZiqLcTDVJJFJF+TBYxsGm?=
 =?us-ascii?Q?4nsUniD8qCDrQ7UnryMLWPeIzLdUnrC3nesYXoFYtDqlQlRIiGY4z82Mh7VV?=
 =?us-ascii?Q?vCd8G2aLiJZXyb5/BviBC/DHvHCo9nSJzFooopewtxQLoyusRnOgYv+i65VB?=
 =?us-ascii?Q?BqcbsJAifHaQbCUych44I4EDu0jaHVYtc2DvsVm8TVvXGwfmVWAOYnvudivx?=
 =?us-ascii?Q?SxgG9ZaFkYYQWQVLHunzM93Nz8e5pZVACRCKBj4uxUux/owPtnSLiCPQbAo8?=
 =?us-ascii?Q?VQvlRpY3z1zaRgYDdc2LEGfgxhFYMgPLCFgiNC5KwmPNVMV+vv+7foNhyIIY?=
 =?us-ascii?Q?XecZ0u9/psOKhNEuPq6xIApV09MGwarlxXhvh+SL1Nwunb+P0ApKiopev23G?=
 =?us-ascii?Q?wbZVZWvRzyGa9oImNCSUjr0OIglspwoaSw5XBsvn93z32jI1re/D8+UG/a3f?=
 =?us-ascii?Q?rOalehLRpuZ+s26LIjh0gkRLvjnMNSMUSgsXuVXE16PmkewlzQTMwBFcLe0N?=
 =?us-ascii?Q?QLSyY9hjPTt+ee1zj4adpIjZpw4P0rtTE8Yg51THxe/qzwSqsZqDVePpqGJN?=
 =?us-ascii?Q?lzdKA4hZc3K+UtHgkyvbN/3AhJ7jxh72NcAxmZMyyxLk3t+sI2l/MTqynfEZ?=
 =?us-ascii?Q?sapYTzYrgEQ/QsJG9+FNsVrPhPmPquuPoC9JxKlI0XgspRNpkvO9fhZQWamY?=
 =?us-ascii?Q?RFUkUH7PYQe7TXrd7j5isVQ6mxa5A25JH9Z3G4PHqNOy6rdxP4wYpqJbFBjJ?=
 =?us-ascii?Q?HSHEfHFrIqAXXxETejEAevmG326XfQp/cF8AZznm1N8+TvQau9QCB/eJdikQ?=
 =?us-ascii?Q?oBA9Z8RyQXYf0VehPgpdcgkSAWJxkVRz0XetzB3+4OQFFqUKFuqOQ0AfaYSM?=
 =?us-ascii?Q?/HRkrsnJXdyZr/2IxdnerrXqjMsC4e1Pn4eqeTsc+e7ahyAHyQqZxU/oCrAf?=
 =?us-ascii?Q?EpZisBC+9OmGcVgOIVBEiHZIPhzAzYYFamBZmi084pwZgsOt9Wjg0mz4DaVz?=
 =?us-ascii?Q?4G+kLORTgefZ9cjo47oghN2EE01mCaClWMNl6F28Gw4yrAniVENSlXx2JOqG?=
 =?us-ascii?Q?hD2rFAF8FROC4wzR97etFDFxPzyo+90IHZNupyUvhPa3aTW7ACS8N+IPVydU?=
 =?us-ascii?Q?1INja29GKk804KUb5Fhv0N50itJU15okjPt3+Dvb7nxWCQCvuACDTSlNWCGl?=
 =?us-ascii?Q?CCK4xChegDsTR0bJd3HKP9PvNTzL6RoE/aAbPsv/IbDrAwBlO/1ajNi20Aeh?=
 =?us-ascii?Q?6oJL2Zq5b1pmuM1cf8XHMCRjkyU9s+Gzj/uaYZvNI+sRzCc9on/p/zsYPkf4?=
 =?us-ascii?Q?NNPocZWmjzrYpa2gOHwFkKXv2cBapFIydH47c/vM9TjQEZCvcvB1YuVEOL7n?=
 =?us-ascii?Q?IaQI6DC4FiEEWxKihPx8xo8OHkhrAP3blAyz1/HipHMajvQsX3UWWSzp0I8z?=
 =?us-ascii?Q?3b19J9Q4DB+NZcSpMtksmyoF9lDBf/4ALSH66wyac27jJXktkEilIWYXvaVd?=
 =?us-ascii?Q?NmIbQZjRVTkNMepSi3VNA5/71NqpJIsPRKgjzgwj?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e1ada18-ef2c-4f29-30e1-08dae2aadd56
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2022 16:54:31.1921 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5CRuwKIWU6d0tnz6bQDlVLwn2+FAylQmtfRBOrd6nTDy8U79abRtqErJKjZecuanbVzp3p9/VsuY+zRRXauReQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7393
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv6] drm/i915/dp: change aux_ctl reg read to
 polling read
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
> Sent: Tuesday, December 20, 2022 9:33 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org; ville.syrjala@linux.intel.com; Deak, Imre
> <imre.deak@intel.com>
> Subject: RE: [PATCHv6] drm/i915/dp: change aux_ctl reg read to polling re=
ad
>=20
> On Mon, 19 Dec 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> > Any comments?
>=20
> From #intel-gfx:
>=20
> <vsyrjala> bashing the hw for 500 usec seems a bit harsh
>=20
> Which is true. The default for intel_de_wait_for_register() is 2 us. Shou=
ld
> probably stick to that.

Recommendation as per windows code base is 50us interval for polling the re=
gister, so will change it to 50us.

Thanks and Regards,
Arun R Murthy
--------------------
>=20
> BR,
> Jani.
>=20
>=20
> >
> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
> >
> >> -----Original Message-----
> >> From: Murthy, Arun R <arun.r.murthy@intel.com>
> >> Sent: Thursday, December 15, 2022 4:44 PM
> >> To: intel-gfx@lists.freedesktop.org; ville.syrjala@linux.intel.com;
> >> Nikula, Jani <jani.nikula@intel.com>; Deak, Imre
> >> <imre.deak@intel.com>
> >> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> >> Subject: [PATCHv6] drm/i915/dp: change aux_ctl reg read to polling
> >> read
> >>
> >> The busy timeout logic checks for the AUX BUSY, then waits for the
> >> timeout period and then after timeout reads the register for BUSY or
> Success.
> >> Instead replace interrupt with polling so as to read the AUX CTL
> >> register often before the timeout period. Looks like there might be
> >> some issue with interrupt-on-read. Hence changing the logic to polling
> read.
> >>
> >> v2: replace interrupt with polling read
> >> v3: use usleep_rang instead of msleep, updated commit msg
> >> v4: use intel_wait_for_regiter internal function
> >> v5: use __intel_de_wait_for_register with 500us slow and 10ms fast
> >> timeout
> >> v6: check return value of __intel_de_wait_for_register
> >>
> >> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 14 +++++---------
> >>  1 file changed, 5 insertions(+), 9 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> >> b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> >> index 91c93c93e5fc..973dadecf712 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> >> @@ -41,20 +41,16 @@ intel_dp_aux_wait_done(struct intel_dp
> *intel_dp)
> >>       i915_reg_t ch_ctl =3D intel_dp->aux_ch_ctl_reg(intel_dp);
> >>       const unsigned int timeout_ms =3D 10;
> >>       u32 status;
> >> -     bool done;
> >> -
> >> -#define C (((status =3D intel_de_read_notrace(i915, ch_ctl)) &
> >> DP_AUX_CH_CTL_SEND_BUSY) =3D=3D 0)
> >> -     done =3D wait_event_timeout(i915->display.gmbus.wait_queue, C,
> >> -                               msecs_to_jiffies_timeout(timeout_ms));
> >> +     int ret;
> >>
> >> -     /* just trace the final value */
> >> -     trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
> >> +     ret =3D __intel_de_wait_for_register(i915, ch_ctl,
> >> +                                        DP_AUX_CH_CTL_SEND_BUSY, 0,
> >> +                                        500, timeout_ms, &status);
> >>
> >> -     if (!done)
> >> +     if (ret =3D=3D -ETIMEDOUT)
> >>               drm_err(&i915->drm,
> >>                       "%s: did not complete or timeout within %ums
> >> (status 0x%08x)\n",
> >>                       intel_dp->aux.name, timeout_ms, status);
> >> -#undef C
> >>
> >>       return status;
> >>  }
> >> --
> >> 2.25.1
> >
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
