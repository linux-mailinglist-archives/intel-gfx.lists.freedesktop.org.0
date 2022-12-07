Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F81645366
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 06:23:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF13010E35A;
	Wed,  7 Dec 2022 05:23:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E63910E359
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 05:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670390619; x=1701926619;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9BNsc0oN/aYXI2XM6HDHH8NfiCwjtBjg6c0sPuo9lzg=;
 b=H+VW0F9Cm3pNW9jXw5aNhHL0dq6Er5s/FPegZQ34u0bsZV8ChctBg4lO
 4FXuXhMfgVQDbA6l3uxGt6uLABzwYP7VjYpXFv+iAM5TGCepggiBGirPB
 NLwLc0iPn3CD5ef9v+DjWrP+hgUp6ShhlVLNreuLm4B68oIMUP5fuyC/l
 S2asKjnvR9iB7uC36wfighPI+hjZsbMAKGuW3i15352gKb8509RCWy/gB
 wQfWh15LvbWn5BzcnQLty8N9kfUkTsWT2Sx+NWiC9Qjhwi37RZ3I2eynF
 BQmjLcfjQ1CARrIPVP7vVQtSPYR7nNmpqQbkXTJ3tNkofk16a+UtM+PhQ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="300226774"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="300226774"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 21:23:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="735269900"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="735269900"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 06 Dec 2022 21:23:38 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 21:23:37 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 21:23:37 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 6 Dec 2022 21:23:37 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 6 Dec 2022 21:23:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YxA9MBIbXQL3U9jIClQHCRUm/G5Sq3KoE6N69BoAJX8sKLOFZZBPQ54meml49u/K6ZJ4qHxBCGCkb7HNE0hUFE1ZOYc5A+3d2dH0JK31LH4g0R7uOmiffRxArf7EK3+DAo5LyB/GWNr5FiMf2UE1xTswMRxkjkIcrqwxvGFMliIwGWqgF/X7UOudHWbrGYAB1Qe8mhfkjnJU329sM5IGiwPbdYcaOoeqMC+ByaYSk2JXUMEceJ1w0baTrdys/kqgfMy1YJu+ObkuyCQi5F/0uG/H0DzBTRoj/SDQ0pfRx02Kbwo6CgC86KqYd4LpdSUflQtQ4pjz2TPCJpcvy22wMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tX6o3rDqHu04H2EtfyE3vcSmBcX2FD+WVDVyMNe7vw8=;
 b=jweZoum81Q0QaGR/MrrGses37axOgaC3n4GjtMCLEX6cet50ONYxmkkGtw45JAxQNZBAciIMTGZJvpdCHxPREwSiUICyAq+PwVMcdewhXXI4o9l6n9FXhG5nspzs1n8PS+cOrRAul5MwbLQKayY7oNHpy6Rs95I98BdpEqzFB0bA4GwLnESDukFJXRERzk0GrqNaBeiD0uzdD9up72suuyUWUrSSlc2ZbFj5uKRmiDUOipJterNdgGFElBHVA+WszunowkiWCTFglGpESaTIUESQT09S/xcIbdUSTnVg6Kpl4UMdrlo7UeSO8ogqea4FPeEUDOHPNB0T32TyvY1NzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 PH0PR11MB5904.namprd11.prod.outlook.com (2603:10b6:510:14e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Wed, 7 Dec
 2022 05:23:35 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::83e5:2c2f:3b78:aa88]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::83e5:2c2f:3b78:aa88%7]) with mapi id 15.20.5880.014; Wed, 7 Dec 2022
 05:23:35 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [PATCHv2] drm/i915/dp: Change aux_ctl reg read to polling read
Thread-Index: AQHZBVBfY2oc4LlqM0CVe0X/+3oxBa5fILKAgALGjaA=
Date: Wed, 7 Dec 2022 05:23:35 +0000
Message-ID: <DM6PR11MB3177C59ECB9C50267BCD41F7BA1A9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20221124070925.3834910-1-arun.r.murthy@intel.com>
 <20221201064437.4180130-1-arun.r.murthy@intel.com> <87bkoi2l0w.fsf@intel.com>
In-Reply-To: <87bkoi2l0w.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|PH0PR11MB5904:EE_
x-ms-office365-filtering-correlation-id: 70b18d96-451b-494b-71b4-08dad813303f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +Dsq++IJUNaAiCJnfkqA4PbGL2f6J18drQeeKeQ2m0EScwshIP26bqUzaoDesu9esiBmVJG1U8ZWvNXRGlyIgYK7nKK9vDaZibvlV1h4v1TilL7T3CQMCOZAV0reOFVRPbv9awS/T4s31Un7DN+ZK/s3N/ttFSpwhECUGZOyWJ0XHpEzWbU3zA8oYEEfmk3+lEbkKdsK/v4Eo0LKkL7JM8oiJuOCQdQqMcMe5Bk3m6ZePY0AWZCPMxchNTRgtDI24c4UXq3NXtTTmI9+JzdAChQ1DfZ57iN4NOoMs1YvJF1AxndCPmfgX6cef+pcgtD1jUNGP27zbfo3QRA8xdLqmXlEabFvrrttHvVQx3hPj7AU95AbaqTJpPZAMiugV0Z6jTPtcGDpG8EnWyHbDHmtVH0uA9hVnyfqd+8/lN7aZ79Yi4gfiggghViXrCk+atC4ELH5NxtdV4Zp00nvXC/lwAdPwKerMexBQRXMjnNAYgMKvU+e1yp9IgY7SC3B3mIHAUNclg2nBmYp4d1r8IhiZWDv704YrcIBv9Q3tTfU9ZJ1/pHKWd0rPMJIyxR1NRP6P9jW820ATiheL/su30BAXP7JagmEz9pW2jYbbY5spCZ4lrYOP01l5IvxSPJ2fsOrjxxBU5Eryihyx17+3BzXgtPg8qgnA+6DWvKmOwO85cBwA52QK41v+138G2Z9IbdnFZ7p+A3jqEIzZ5wygZGEAQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(376002)(39860400002)(136003)(346002)(451199015)(55016003)(53546011)(2906002)(55236004)(5660300002)(41300700001)(33656002)(8936002)(52536014)(6506007)(7696005)(316002)(66446008)(8676002)(478600001)(64756008)(122000001)(76116006)(66476007)(66556008)(66946007)(83380400001)(38070700005)(86362001)(9686003)(71200400001)(82960400001)(6636002)(110136005)(38100700002)(186003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PHmCcilvx28Pvb7y1WU5WU2ufSj89j+BS1xSkT7h/f//jS8Ao3wwIoi5pmxA?=
 =?us-ascii?Q?+sebLROmorSJHxNMJxqcCD/hjT+ybRBT758xo2piZ1lqsyCVstFj+2CTxkH1?=
 =?us-ascii?Q?2CmHmhxxAj8BEVID5mjIslYIRVZV8McGtLh/DwAHqcSv3CqCwll7qVpuh2/G?=
 =?us-ascii?Q?OcyLYhLu9ubMJy5ZAkdLY6nV1pvTpaWYQqMb1rZb/NtdKaLJJ7MtdqXDmxKm?=
 =?us-ascii?Q?tqityFfbJYbm1ZrW4sfyrwmxolmQeyv0JqxTZ3upeDCiG01z8dCCqqb4Cxz7?=
 =?us-ascii?Q?7aRqjfrim2a1U6MEuxUkiIERFk3vBRzPNJuNa8IcCxurW0j9cepVTkoXwZdK?=
 =?us-ascii?Q?5XQn4UyoeL+Lw8yfBNJdWhcS1Rb5iiJX+90KRUC+m8zna7wmSB0VukowXbM/?=
 =?us-ascii?Q?Bj5xmztRY50mVCXhS+HIY1ijAUe0mir2lqGiRhxSVm1DwIU738EfMu1wFph7?=
 =?us-ascii?Q?N93Lsr6sPpTLQHCUuRbqfdfwHm+mHLlLiuOM5Jab37qczVoO5swxILO2X7FD?=
 =?us-ascii?Q?99gZNy2sLR0KsLHqKpDVIL2xKTnjvU0sIe/gW9vxrKFsVOzv6y0bM3/99nw3?=
 =?us-ascii?Q?nrp78t6YvO7lcwaDyC0p8inrOT4QdwS3bib3e2pDvujrIR7su6nem8lxoLU/?=
 =?us-ascii?Q?yUC9LixbMPupxrIaz6U2ftc5hqR3hQp0ypg7bemxPe2cLleFehGP9pbxxvVe?=
 =?us-ascii?Q?fG6pivTXkXpqXj4BlSPUuYab7wdJb2FwFGSGsRd2ZQzmIUEGG+Fo41weshHv?=
 =?us-ascii?Q?CcLHzzIoYMoOrZD/jdLmRBMCCWa9RezlrBFuqrmq4fcWirVFjt8J5dl7rm9f?=
 =?us-ascii?Q?ZtxLvr31B/c3uakL87dE/86LI/BrLBW9u3BAdJ40s7K+p/GQNQSyPqjX94em?=
 =?us-ascii?Q?BtAt44ZQU8Ep4KoODkSbdXKpUD4I5UxKYt1peT4CYMByN9xRXhfNJ68piRpt?=
 =?us-ascii?Q?1DddHFAtnDXInQ6i/107PankjqOgDgmCLiv3wF7VheBW9oC6Vb2e4WEOws60?=
 =?us-ascii?Q?h+PoRxHAIH9y6H1INjAk/55p6SbEWSHMHz5fQpi8LJ+A4GZ3pa9Wu0tE9q3Q?=
 =?us-ascii?Q?9t+wtbIt2wmDudh8LkkQlqyxp2useK7NFPT2mshbCelw1ne+9AUcBg77hkB7?=
 =?us-ascii?Q?ygCM0nS23Llb3dwjdw9/LOgTM4gy10mNLxTjXK1PCcCMHNbuln6ySP7s4KiS?=
 =?us-ascii?Q?R/dBWL6FjNv0VX8L56Ch8Z0MJw3a4UHM6hxhfFLiYFJxdKp8YtCVB32GBFii?=
 =?us-ascii?Q?5j9bxvvcOeTyb4iFJGAMEKp6IHMTtfVm6muEK8l9MiYKtnXJBuMNVF5prhUs?=
 =?us-ascii?Q?7/eojmcrpkU8rEEnouEbifClaGYCTdmcJPxpPeAK1xDR/9f9oGT8tPNqmNXd?=
 =?us-ascii?Q?jQH54pHC9O03vluko1Uvx5q/ypfjEKLrjg0iYqV743CU+hsbasX2ZRQ9GWcU?=
 =?us-ascii?Q?2PyV5Bi6fhtiDY/JwTAvTybNRWjxZkhGQqBgCsHJmycIKWpLZoEoREZE160I?=
 =?us-ascii?Q?b2qnQnoxhIyIzjgcQhXtkxnpM7ukMctJpqzr0JixtjL0RC3y/t5dzK5AfKg6?=
 =?us-ascii?Q?1McwvidDn163hsPNP+6fS9fTjvwSfyBABBE79dij?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 70b18d96-451b-494b-71b4-08dad813303f
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2022 05:23:35.1164 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JKdB0Yx4x1leThuz8LdulhWLEj3xom7Iq7UGi6GVenZrXt4hbNLda6oTAQU4+DrV60yaBW2pLshdI9dLWrldFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5904
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv2] drm/i915/dp: Change aux_ctl reg read to
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
> Sent: Monday, December 5, 2022 4:08 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org; ville.syrjala@linux.intel.com; Deak, Imre
> <imre.deak@intel.com>
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: Re: [PATCHv2] drm/i915/dp: Change aux_ctl reg read to polling re=
ad
>=20
> On Thu, 01 Dec 2022, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > The busy timeout logic checks for the AUX BUSY, then waits for the
> > timeout period and then after timeout reads the register for BUSY set
> > and fails.
>=20
> That's inaccurate. It checks for busy, waits for the gmbus irq, and on ti=
meout
> or irq, whichever happens first, checks busy again.
>=20
> The commit message fails to explain what is wrong with that. The rational=
e is
> missing.
>=20
Sure will elaborate more windows found some issue with this interrupt on re=
ad and hence
are using polling read with timeout. Hence we are trying to bring the same =
over here.

> > Instead replace interrupt with polling so as to read the AUX CTL
> > register often before the timeout period.
>=20
> Again, what's the problem that this addresses? Are you not getting an irq=
,
> and often hitting the timeout? Or do you think there's too much delay
> between getting the irq and continuing? Or what?
>=20
As explained above windows also had some issue on interrupt on read and usi=
ng polling read.

> >
> > v2: replace interrupt with polling read
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_aux.c | 24
> > ++++++++++++---------
> >  1 file changed, 14 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > index 664bebdecea7..22c0a59850df 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > @@ -40,20 +40,24 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
> >  	i915_reg_t ch_ctl =3D intel_dp->aux_ch_ctl_reg(intel_dp);
> >  	const unsigned int timeout_ms =3D 10;
> >  	u32 status;
> > -	bool done;
> > -
> > -#define C (((status =3D intel_uncore_read_notrace(&i915->uncore, ch_ct=
l)) &
> DP_AUX_CH_CTL_SEND_BUSY) =3D=3D 0)
> > -	done =3D wait_event_timeout(i915->display.gmbus.wait_queue, C,
> > -				  msecs_to_jiffies_timeout(timeout_ms));
> > +	int try;
> >
> > +	for (try =3D 0; try < 10; try++) {
> > +		status =3D intel_uncore_read_notrace(&i915->uncore, ch_ctl);
> > +		if ((status & DP_AUX_CH_CTL_SEND_BUSY) =3D=3D 0)
> > +			break;
> > +		msleep(1);
>=20
> I believe msleep(1), while used quite a bit in the kernel, is considered =
bad
> style. You don't really know how long it's going to sleep, it's not that
> accurate. It could be 10-20 ms I think. (IIRC I've seen 100+ ms sleeps on=
 busy
> systems.) So if the condition never happens, you might be looping for 100=
-
> 200 ms here instead of the 10 ms.

Sure, I agree will change this to 500usleep range.

>=20
> And you might wait for 20+ ms before the 2nd read of the register.
>=20
> If your problem is the delay between the irq calling wake_up_all() and th=
is
> actually waking up (which I believe is subject to the same latencies as
> msleep()) then this is all pretty random. You need to analyze and describ=
e
> the problem better.
Yes agree, in the same function just above this where a check is being done=
 for
any previous  AUX channel activity, similar polling read is being done. So =
will replace
both of these to usleep.

>=20
> > +	}
> >  	/* just trace the final value */
> >  	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
>=20
> This should continue to trace the final value. Now you read status once m=
ore
> after this.
Sorry my bad missed it. Will correct.

Thanks and Regards,
Arun R Murthy
--------------------
>=20
>=20
> BR,
> Jani.
>=20
> >
> > -	if (!done)
> > -		drm_err(&i915->drm,
> > -			"%s: did not complete or timeout within %ums
> (status 0x%08x)\n",
> > -			intel_dp->aux.name, timeout_ms, status);
> > -#undef C
> > +	if (try =3D=3D 3) {
> > +		status =3D intel_uncore_read_notrace(&i915->uncore, ch_ctl);
> > +		if ((status & DP_AUX_CH_CTL_SEND_BUSY) !=3D 0)
> > +			drm_err(&i915->drm,
> > +				"%s: did not complete or timeout within
> %ums (status 0x%08x)\n",
> > +				intel_dp->aux.name, timeout_ms, status);
> > +	}
> >
> >  	return status;
> >  }
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
