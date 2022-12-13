Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4642D64AF64
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 06:44:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C966B89FA7;
	Tue, 13 Dec 2022 05:44:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5552789FA7
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Dec 2022 05:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670910254; x=1702446254;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ZWGFcd6Bl2jMr8yWTGRkfqzJ+bEbWMyo4oDmIpDYNKo=;
 b=Fk9zlgCQeCfQK8dcXJhQKWkfSuhZhUKIAVQnZUeBQ4OWeioragCU6XDY
 nz2djldDKvGJKcIYOSR8mUcQlqP2dHQDbH7Qw/5sCBJuQyDxACjgPpJHi
 GrKzkj1RliXI8paJZ+Z1zGsnvfsbF8q57c0OinDrw79L3k8A07T3cKE3i
 lgd6sdZ6ZLbfs+ij1Xxkodm/twTBpmYKveEdFPmQNLjOCcSIyviq6LVKj
 dDi2V5CqIIY4+wOJa/9XQiRFpff2yqKoFdhgZ9KqWBlzeiIDJfdLPOGND
 a65hJuUNfJIiqGQl7EsHy4EPMUhTN+I7hz3gjOlf9Hc83JCIGFhMMlrbR A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="316750345"
X-IronPort-AV: E=Sophos;i="5.96,240,1665471600"; d="scan'208";a="316750345"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 21:44:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10559"; a="977326321"
X-IronPort-AV: E=Sophos;i="5.96,240,1665471600"; d="scan'208";a="977326321"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 12 Dec 2022 21:44:13 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 12 Dec 2022 21:44:13 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 12 Dec 2022 21:44:13 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 12 Dec 2022 21:44:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PBxKriC7NW2MnZRJPIE3gFf2JkypnSSowJ5Rwd3upaInRAhzD14NM3ywnoa8mvodj7HliRlx5Cy8MeBLA2oztMZNAxrYOB780Sdoph3nW/kCIp/jg6y/72Re+IbGr2BMvYkqJ6Q0LzQ1Ufpmpj0D/RLl5EfU2NXBF0/INkgxUG+nfuywpnP6SjX+oZcTtYGOTaFW3iP3tpK591yaIJ6Cm0oKfT+yxMORfIP7DfMOh6r3r5kjwVWezIW94XTApRrNAD3yRT4ojmSpSOvAdiCsO0JxFbjYjz/DRmgqRZkJydFtW6RZRUgIn9Ev40wIV/kT/KX00b/EIP/7j8XL+020cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=15R2xu9EPyNELDeQA2xwcRvl12kpj3avhFyTVCIxPMU=;
 b=nZX+q1avHf5nmvgESi35pvIEjah8cYxuW5tejuQh58J/pucWanLAs57ZQAdSISFWt2ANQm9dC6RoM+c/hqa8UKp387PocxhwTZtltOIy0uc6VRJDe9xrytb8sus2hPkJ1wnZ7fJV7zuLyhRPo/QfoL23sWI2x1D+SwDSPT0TI6aKEe1gyXDCt5za8wIXjEUEtXbfszS4YcI7qmBbuYn0AZ7g8K9zI5+6sF0x+3vd+PihdlIQSS+ncXjcY41WmNd3ab/esAKwTYBZ3iZNa0BmC7aI4puUIbejjeLme2sy8vz5P+iEoLaLPA1L1J/Ql/uOhlyhWEw16gEGZDtXsWqdfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DM4PR11MB5534.namprd11.prod.outlook.com (2603:10b6:5:391::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.19; Tue, 13 Dec 2022 05:44:06 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::83e5:2c2f:3b78:aa88]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::83e5:2c2f:3b78:aa88%7]) with mapi id 15.20.5880.019; Tue, 13 Dec 2022
 05:44:06 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [RESEND PATCHv3] drm/i915/dp: Change aux_ctl reg read to polling
 read
Thread-Index: AQHZC6klJrwE1VM3ZkuGCaQOS5GvYa5lX2yAgAXzckA=
Date: Tue, 13 Dec 2022 05:44:05 +0000
Message-ID: <DM6PR11MB3177460353B550B64AA3CB4CBAE39@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20221124070925.3834910-1-arun.r.murthy@intel.com>
 <20221209083510.475948-1-arun.r.murthy@intel.com> <87cz8szwha.fsf@intel.com>
In-Reply-To: <87cz8szwha.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|DM4PR11MB5534:EE_
x-ms-office365-filtering-correlation-id: e4906ccf-3de8-4c35-290f-08dadccd0c61
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hxEeJvOfcMygFjIqtCPz7PqtLQkmWte2rLgrfvURMioKioZkKxaDcfahZ+XlUWamKYqghmTBfLoMv6ONjjUTCF2ZOaq23svSjDemWH1g1NxnNqlEo+dKns0otD18wpE1zlV/V9iS+pBFfFxRUKY54onxG4JaSdRCzJMNkloMpSLNYee9pEUK4lqHxjccjgNegGqnxZlT3nXqkQ+BIF1CPTULkRUKONX2qthtYj5JRCZtmOuxbMBFqBSsKQohhisOkmZKL+zC9HrbpBwTh/X0nB4ehj2LzLL9ewNZJkekfe6afeK9FKZelV8Fq+kwkDhxnZEL9Kn9jLVQqmjk2woZswJCHxLG/Pap2XEfKra8fsgHRnemxW8XqpFxQQHBvAIUh5lJcmJ9MZCyTu+befYMgkw6jqrDPZqzk4s/Chjln+NqXBiJM3pDbMBntI/vp7aTTztwNTwh0q7Tpb6c01cJ3rj9mWdEoy8BIEvIHuEUOCdi4R5hbS6/7CgxUdp5Lxn02KZ9SiGLnUot7nKBqXVU4vcOwCWUp+npy+hQAPagSGXmJKCetFkNa5yLu3muDcuLTikSLtgcpocYhh5ZMi+f2NKpAml/jaFSa5KjhegIAN9Sgr3+5LUAjUfCE1XsqU+tRszi7Jyr8uo6ZhEWohF2Ll32rz0rVq1kI6OCUUxer7FbO8Fa4OtNG43w3NNjoEjO5V71bwQ773MVy7eZsAaoag==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(366004)(376002)(346002)(136003)(451199015)(122000001)(82960400001)(41300700001)(38070700005)(86362001)(38100700002)(55016003)(52536014)(478600001)(8936002)(71200400001)(316002)(186003)(8676002)(66556008)(66946007)(110136005)(6636002)(64756008)(76116006)(83380400001)(7696005)(2906002)(26005)(6506007)(66476007)(9686003)(53546011)(5660300002)(66446008)(55236004)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?RldB7SPMRzgjWus64O/UVIuN758xcp+PGCm+AYmYTwtOrPm+6Dr/HiPWCM3S?=
 =?us-ascii?Q?S5R83fC8P/9E5voTBTlf2RGV5kagoZ+7pGn5vmVrDxq9WvCeiZpWy1YbF7BX?=
 =?us-ascii?Q?3watJLsGSHnrlWn7GUVlFmH28l6DPj6nz50yzVkQEGJftVjIpCmMXpw5O8rc?=
 =?us-ascii?Q?ybZHeSSCDmHtaZXnm/9zT3/Yn1WcJNMj+ew2UXL4w7aVDcse8vsgm4SQhWRJ?=
 =?us-ascii?Q?yp218crci6dI3CqqViEQTbRvCZ5h87Cf0tNKM/peHfPFscLXrtdjATVPHbTa?=
 =?us-ascii?Q?9Q8tLulzwDoqq0EmPrmQmvzSKoaqvztkCnkQsVQj+pK5PTSbS+cksquTGOTS?=
 =?us-ascii?Q?pjCNu1MwZsOnH/ZpfNktXCjwGmME+ti1d4MaM/7GiX3XRcTx/T1+6+pLtbQB?=
 =?us-ascii?Q?o53rClB0jFic8LVC7TeeJs8zT4+XNH4ZupSsrkkExN88Sbz5APPtl+lrLssq?=
 =?us-ascii?Q?0XMBRq1YuL9JT8tQpac0qdOjPtw5FmltUFTIoKdqyBqDHTx3fqnqe6qujBs3?=
 =?us-ascii?Q?dbchX3ihzwQcBnczkTmA0NdPJYLsp0+P3d9zW+zczUJTmzS3aQTbqB1cU6Xg?=
 =?us-ascii?Q?iPzydJx/157QxEVb5iALTJWzICc5gjNgfuaHNjKrFMaUzKFEknm+3QzhOscM?=
 =?us-ascii?Q?Hxl6vx/HwWZYv6NpM0n6/T+7j8rVPvhh142NyNV2OB37kzYXk/SBShJc8owx?=
 =?us-ascii?Q?pPAMpaI4OwCmbYwNbEOYFM/zIJCzOPiJjRA7JHEZbV+Hopzn8w5r5HNBewrE?=
 =?us-ascii?Q?k3GCCZajTRfjP+qDyLEVGORQdHav8jDW5Hw5cwj7E6zfUyVK8/TnhXc8sbYW?=
 =?us-ascii?Q?RURC9mldDxDeCxRxLYvyOeWMUD1bhZU4bKPYyli8Jk+YrArAw0yiUifSPqJ4?=
 =?us-ascii?Q?8jV5MT5E4KN0UIOwFSKbCAAI5MWgdSPSS9lqrTDlwaGfYLb8n4u52wfgsyqS?=
 =?us-ascii?Q?FD188HMuGE8UNoYzO/lWWON7B9OhPtBUh5dX9MHVziXylVNZH25kE3SRhkow?=
 =?us-ascii?Q?rJDWt3RV+oVwvj1xaZV8U1LN8axApPajUW16L8ErWv0ye3I3PU/M5bsN8EhN?=
 =?us-ascii?Q?fNqyibeTkY7GFJ9Gy2bBzl2H0DRxVOKWphweWU7Rme5JFwP8LsT1ZC5/mtpo?=
 =?us-ascii?Q?BlDJOHaObmN98RNAI797O84hpNowr5PVrU/YFaalmkG+afjZzVapq3PLLOKx?=
 =?us-ascii?Q?9Z9rRmUgXOTuFY2o9/6y+iQWzwyYpxQMgdZ8R9APhgxuFqYqK/Kxi1emCOgy?=
 =?us-ascii?Q?DMJuXT6Qjsi8dvovzOeFmUH1Vz/YDKA0uLfbKROfwals2w5nwMhmC+dAeLv0?=
 =?us-ascii?Q?lRXZ/2yIahFTRm0x8WaWlBb9WXpMtWoo5wqbisJoQG6pg1lcNzfEBdhz7VM9?=
 =?us-ascii?Q?S8thiqdiv+0I+3Z++DvQWV6eRGikMZKiQd5HW5xxq4+Gm0FyyYmKrn27KQBT?=
 =?us-ascii?Q?wKyAwHPKLMkbA0QwUMfQMPmHKzfFx5v4KwzYpBz+L3Ktf5qO0i0re+rAi2j0?=
 =?us-ascii?Q?wUN0FtVt7Utmjcgdggjnw7TV2zB8hBr4PGZZuIOUeJHkaYANMCYSUsVvjoJJ?=
 =?us-ascii?Q?0aSEo9fDP73NijvDkZo0HEywx9UUI2491Xsdsjrq?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e4906ccf-3de8-4c35-290f-08dadccd0c61
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2022 05:44:05.9822 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5YNYIBRx4RSxjSzFU+j/wW94nqztveJPQ8j0DrDuILRQfhOwEILk8PiS1iBcxiGTxecJY/KUycpJtOpk0unjeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5534
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RESEND PATCHv3] drm/i915/dp: Change aux_ctl reg
 read to polling read
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
> Sent: Friday, December 9, 2022 4:16 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org; ville.syrjala@linux.intel.com; Deak, Imre
> <imre.deak@intel.com>
> Cc: Murthy, Arun R <arun.r.murthy@intel.com>
> Subject: Re: [RESEND PATCHv3] drm/i915/dp: Change aux_ctl reg read to
> polling read
>=20
> On Fri, 09 Dec 2022, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > The busy timeout logic checks for the AUX BUSY, then waits for the
> > timeout period and then after timeout reads the register for BUSY or
> > Success.
> > Instead replace interrupt with polling so as to read the AUX CTL
> > register often before the timeout period. Looks like there might be
> > some issue with interrupt-on-read. Hence changing the logic to polling
> read.
> >
> > v2: replace interrupt with polling read
> > v3: use usleep_rang instead of msleep, updated commit msg
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_aux.c | 24
> > ++++++++++++---------
> >  1 file changed, 14 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > index 91c93c93e5fc..230f27d75846 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > @@ -41,21 +41,25 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
> >  	i915_reg_t ch_ctl =3D intel_dp->aux_ch_ctl_reg(intel_dp);
> >  	const unsigned int timeout_ms =3D 10;
> >  	u32 status;
> > -	bool done;
> > +	int try;
> >
> > -#define C (((status =3D intel_de_read_notrace(i915, ch_ctl)) &
> DP_AUX_CH_CTL_SEND_BUSY) =3D=3D 0)
> > -	done =3D wait_event_timeout(i915->display.gmbus.wait_queue, C,
> > -				  msecs_to_jiffies_timeout(timeout_ms));
> > +	for (try =3D 0; try < 10; try++) {
> > +		status =3D intel_uncore_read_notrace(&i915->uncore, ch_ctl);
> > +		if ((status & DP_AUX_CH_CTL_SEND_BUSY) =3D=3D 0)
> > +			break;
> > +		usleep_range(400, 500);
> > +	}
> > +	if (try =3D=3D 3) {
> > +		status =3D intel_uncore_read_notrace(&i915->uncore, ch_ctl);
> > +		if ((status & DP_AUX_CH_CTL_SEND_BUSY) !=3D 0)
> > +			drm_err(&i915->drm,
> > +				"%s: did not complete or timeout within
> %ums (status 0x%08x)\n",
> > +				intel_dp->aux.name, timeout_ms, status);
> > +	}
> >
> >  	/* just trace the final value */
> >  	trace_i915_reg_rw(false, ch_ctl, status, sizeof(status), true);
>=20
> Okay, so there are still a bunch of issues above. For example, try < 10 v=
s. try
> =3D=3D 3, reverting back to intel_uncore_* functions after conflict resol=
ution,
> having duplicated reads and conditions.
The logic tries to read in a loop for 10 times with a sleep of 500usec betw=
een each reads.
Finally after the 10th iteration for the last time the register is read aga=
in and the status is returned.

>=20
> Now, I should've taken a step back earlier and realized you should use th=
e
> helper we already have for this: intel_de_wait_for_register().

I checked this earlier. The reason for not opting this is this function is =
its
interrupt-on-read, but we need a polling read with timeout.

Thanks and Regards,
Arun R Murthy
--------------------
>=20
> All of the above shrinks to just a few lines:
>=20
> 	ret =3D intel_de_wait_for_register(i915, ch_ctl,
> DP_AUX_CH_CTL_SEND_BUSY, 0, timeout_ms);
> 	if (ret)
> 		drm_err(...);
>=20
> Sorry for missing this earlier.
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
> > -
> >  	return status;
> >  }
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
