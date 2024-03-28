Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC2388FD6B
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 11:51:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7052210E3C3;
	Thu, 28 Mar 2024 10:51:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ksGruiO2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F355010E3C3
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 10:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711623115; x=1743159115;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lAGFebIzU7AjflTGCOaKnDahb7GF6vYqWIyPNRgCddo=;
 b=ksGruiO20IA8wMeE3WIeRTzTYjj1Jdmy89thhLjEuqU6JlXiB/mfq6A7
 /mqOxPJm4zMZjq02hR0MhYJqTmN5hNkbSJepo90sEgAHm1i3HyNQN1tWh
 W6TTszB0n9SDmy2ZaVOke0yA6llDj+YHbcskdtauOCIhIMQrdpjxbudeS
 QWzW5MvHGidUlhMBKz0w/62LzBKozLvsYtMUBBBd/OEiRELi1fLmIQIsI
 yZPfyuug1uo+DJ/c5siU9dSVOj3PBHCWU36sWKWCv2RdFFVUUds0FzkG/
 Cwj778O6mRAyFgAxgwmF3tvMo1qX12Zm8rz1CKlgGK74HuJtVb2eo/GBz g==;
X-CSE-ConnectionGUID: 6k1kvoq3SAytYLsJ9pSyaw==
X-CSE-MsgGUID: w8qblzluRSaloXuxSJPOPw==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="10563180"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="10563180"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 03:51:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="16607246"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 03:51:53 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 03:51:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 03:51:52 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 03:51:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y3xV7buoWmqqU1Y5fNvDFt42NhBV1MGD9hQFTzCIfWtEipKl5l/O/7wzlDtLt2nmEPzdn7zjGBxT33PvxUldsquIdK9LkLfQ4SpYDgrBgbmt/ros6/HNeSkGDcSJCkPUxy4WfYQAyaoL1bgLRYhI4S2DXTIIRsus4tl6pw9aWNuctC+xPa523bVv89kIEBtsjM602J9h36nmRgwHkwt6SBDOwOqrYXReScx1QcH220Ni0/Wm34gcx3A2GV/Vm8PkkgkHI+MNQyKn7z8AFogRCHGqFT+ZaNLFIcd3YqqnN/qRD6Fo0qAMoPr++zKH0SktyB6VYpSqZe9ApIHLAMTNtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=izqfMrNJ3Jg1XOrNZ7jNnLZfW8hpFEjGVp0t1rEvBGQ=;
 b=BuwDQzZBUC+mcj/5KicZdRoswpGiIuzIRPtfJlJxPHs0+9nQQl7Yzn740cHX/M6FgNzfVlgrrPYbmFwUm8aISqo5H5PnrlFhNPHmuHOX2XOay9V8rBCWvloQCOg6Cri8glQY8NReOGvOSG9vqIxwaYo28SufwcPwuRIsOqTyDPXn7sUntzJxB+eJeeXYu9qxQssPqY52ypvPEhKYV5z9yucqgGmQkm+91yhINaImVSZ23ljGKyDXlASGtXUgR9qKq6uFlV4ynUK8ud7mWU9mkT9hOKP9SZ1oz2RW3ds+QqrCAC7QrD+NXNlpUlvCqyABFM3JKQByxcq5u+5isPG1DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by IA1PR11MB6466.namprd11.prod.outlook.com (2603:10b6:208:3a6::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Thu, 28 Mar
 2024 10:51:43 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::86fd:8a6:5f86:104e%6]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 10:51:43 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/2] drm/i915/hdcp: Fix get remote hdcp capability function
Thread-Topic: [PATCH 2/2] drm/i915/hdcp: Fix get remote hdcp capability
 function
Thread-Index: AQHagAHU2+gMsOSVeUOZ0BU6A+eTh7FM86HwgAAHnuA=
Date: Thu, 28 Mar 2024 10:51:43 +0000
Message-ID: <SJ1PR11MB6129E7C39A21BF5961659DF8B93B2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240327044422.240398-2-suraj.kandpal@intel.com>
 <20240327044422.240398-4-suraj.kandpal@intel.com>
 <SJ1PR11MB612979E44F022A83FD417ABAB93B2@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB612979E44F022A83FD417ABAB93B2@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|IA1PR11MB6466:EE_
x-ms-office365-filtering-correlation-id: f8f37eaa-36b8-4d8a-b812-08dc4f150e82
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gpo9djyRqnqUaxroeigS4uLYvNI1vf2RXP8C9YfioZ1KtLj9seNCrP71s+zyhn1+Fe2TB3cFUfNdLzyghsOvUnk1HuWi84cm//Q0FseBmi0IfxNrbH2um/0gr47sRnG8MvVL/PVke/l87jIVL1dy2CTwuILoJg55iAdnfmfQ7nxD1yziEUHrmHkV5My2wDvWzc1y9G9GLE7bgR+mqMoXdAzE5KtHvCklv6twV8ndWbc61PVk7xu3aDtUnFg7sGNr65GK0spBzqvO3o9vTeti8E4o5TPRhHc+0OM2g4mdn3rjRWebr6+fqe9LxDMT6iqJSOl1GugOHn5M81cle0PMQW6Az8JHLwwqCjAj0I6h0RFH277cMlY3Lc5xK9nm63i7DpT0NRXnt0k6lorO0LGXOzJTpZgv8TUsMMSLnDxYNQShC1LRvUYzvlnhCU/gztzKFrbv3P3A7PiTDZ6HAdkrcfcdMtmtExjM/J7xq/SyYUKmN2eUWVRuLzIdZ1wnKm44gksRNygmUAMsI6LB/FFlB89KlUq+gMRHWdVfFVDBYu60UWFWQJcLSXAb3jc96+VOV2i+5evLGwfa83XURnqWCKXrOlwH2/EjFwuEKgD6QJ64XuDQkbT7CFpaf6ByRP/aYnCpxmCUV/NsSm4woQXV15KCyL1QYCdgA+0x+0p6L0PeKIMmiLPt2TdLfRUVpywBsMe8pECe/Lwg6otFTw8Q4g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nNgBhSjCvSJjBPe818B1aoiGqUIYGbqLJ5sEdAwHl3L7GZ/54wpWl/vUI0ra?=
 =?us-ascii?Q?fOV8pUai5wCfOyRkEaPMIkCq9OUn4JrKiG4Ghv7R58AeAYZydkoqO5FRm03e?=
 =?us-ascii?Q?3IfbkFZZdtPfJw1+GX+vtakmXVRha2ASZjWnrGhNugOAtsGA+AOKriFn6RLa?=
 =?us-ascii?Q?pKc2+8h/Y5blqchiVayBXOE483mxRitlZK+d5svfIYiJyu2nF49i6coD/rx0?=
 =?us-ascii?Q?ZZz6tQQJ6KYoF+9hC/M3aLqKqgrf4yyvv2s0LgF3dG5WhcRUMozJ19hBNT+c?=
 =?us-ascii?Q?oGt62CUBtVi/KgqbKZ6nvU4NKyFiYiDxbbsepj3IiNJ8EIGG5T7DJUNu7LrJ?=
 =?us-ascii?Q?oCsityvH2DcYIqdexqCFUSix6ZFXnuQO4PjoqA3uheG6E1P2sVlhDDH49mun?=
 =?us-ascii?Q?4c363+U7vZ2vdVzDK8zwN1/ivRo9XMOek90kRImOpPsX2ZAvDbKnYO1doafn?=
 =?us-ascii?Q?iw+aREWi2x2eAfMq3zjca9XBgV/Zfj5ePUGNQGAFhNdrMqyfKuf59NWfkIXn?=
 =?us-ascii?Q?aIe4X3ylA5+/Co15op6IeIlrlUPPOP3B35UmwG6urabrgZDwhni3FWuNIzG7?=
 =?us-ascii?Q?5K7XfFYFjt2ZycaBvsNwd+sltn34Jaqt0+Dl2MKBmyTfUKRuWDcE9UzsxmDj?=
 =?us-ascii?Q?SFknnGdQrdODMOw3hfs5IE7/kdVnhnLxNcDXljYWa0624LDWktzQG8nvumga?=
 =?us-ascii?Q?f8hB7epboKnbrk0NRy7YYu1RV0HwOlzMNc36ewpFfgNib2pfuD1mZkj1QCo6?=
 =?us-ascii?Q?t3fsuaNObNNFTDEIPzjGKUrvTEOmFJCAZRkhiImlkXuOvYdsqn2ntDi/KpDb?=
 =?us-ascii?Q?FfZthoCvL5uspwfk7XXJ8rbTUwDvg/u/IBFvmLIRKeKKwCUlgGx/u0wt7g4m?=
 =?us-ascii?Q?ETgVqdSagAZmAADvqfpw0qyfe1yTzwHsuXa2K3j9RINUzQdo8RbBG96J69Pq?=
 =?us-ascii?Q?/OoLzZElEVD32/p8zbKSgxpDvwFxf3qHwkzGnEBxRcWFfx2Ns6cMiIyT70TS?=
 =?us-ascii?Q?k3tHKb7jXaw23m70Lzy/fO7ZACvWfiy2c1OVcue9XNJkMPbY7bZzYY4dQt9I?=
 =?us-ascii?Q?/B7dLs5bXBMn+MxvQ+hmuFfQJLq0bvC0MWYe/MRWr5lOH8wv1atnSW3zlipJ?=
 =?us-ascii?Q?gDJf9KeisRvC/5RihyZ2RYiGeap45ax9e4QptRp2eFwaxO/DKYNV80wZiVBt?=
 =?us-ascii?Q?TmVX2hZNOIlfErSW88BQB/MdAvGdc6EUtweQotYRJInrbitI3HXVk2wWCvjh?=
 =?us-ascii?Q?5m9BHyxsSzerZ2opUSM/a0s5TrBerNy/n/C4VCynvcgY60spier2mWXTorr7?=
 =?us-ascii?Q?++8Tng47tPEeJWnuu5Pol1v78co1LGkLNRH/GKNUc7xhtaxpvlN6xxc532n/?=
 =?us-ascii?Q?biaDtr0j6W6h9uLC4qxId3oF6KJgKdgeCz9+WHZKyJ6+buGR+LwFbHwYx7iI?=
 =?us-ascii?Q?SBmRZanMJB+pajuBOo58UbdqWGUPFx8eBJ4Bg1RwdDnj7OLPBoIA3bwFFuhY?=
 =?us-ascii?Q?7Xng1oyxjYjGUAq+8CGrSeaiZlw/S+L9cjHlanuVrkkf9TcHDUkLWTyMx3pz?=
 =?us-ascii?Q?ZioiDszQlpiYQsuM1OJLdfVI6kEjU0hOvvAQVVVkCkh5sGABXKCFa0xDdazO?=
 =?us-ascii?Q?ng=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8f37eaa-36b8-4d8a-b812-08dc4f150e82
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 10:51:43.5995 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CP304J1vf4F3RYREXBm+Oly973RarbUKmwRmUczFMu/fZlUJVRuz2HBlieP50KuTGoRqLu6vCbdO5RuJ9XIRIpDLehl9Lu4AjS+GqGeSMCk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6466
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
> From: Borah, Chaitanya Kumar
> Sent: Thursday, March 28, 2024 3:56 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop=
.org
> Subject: RE: [PATCH 2/2] drm/i915/hdcp: Fix get remote hdcp capability
> function
>=20
> Hello,
>=20
> > -----Original Message-----
> > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > Sent: Wednesday, March 27, 2024 10:14 AM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Kandpal,
> > Suraj <suraj.kandpal@intel.com>
> > Subject: [PATCH 2/2] drm/i915/hdcp: Fix get remote hdcp capability
> > function
> >
> > HDCP 1.x capability needs to be checked even if setup is not HDCP 2.x
> capable.
> >
> > Fixes: 813cca96e4ac ("drm/i915/hdcp: Add new remote capability check
> > shim
> > function")
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 9 ++++-----
> >  1 file changed, 4 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > index b98a87883fef..7f52043b0f9f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> > @@ -688,7 +688,7 @@ int intel_dp_hdcp_get_remote_capability(struct
> > intel_connector *connector,  {
> >  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> >  	struct drm_dp_aux *aux =3D &connector->port->aux;
> > -	u8 bcaps;
> > +	u8 bcaps =3D 0;
> >  	int ret;
> >
> >  	if (!intel_encoder_is_mst(connector->encoder))
> > @@ -696,15 +696,14 @@ int intel_dp_hdcp_get_remote_capability(struct
> > intel_connector *connector,
> >
> >  	ret =3D  _intel_dp_hdcp2_get_capability(aux, hdcp2_capable);
> >  	if (ret)
> > -		return ret;
> > +		drm_dbg_kms(&i915->drm,
> > +			    "HDCP2 DPCD capability read failed err: %d\n", ret);
> >
> >  	ret =3D intel_dp_hdcp_read_bcaps(aux, i915, &bcaps);
> > -	if (ret)
> > -		return ret;
> >
> >  	*hdcp_capable =3D bcaps & DP_BCAPS_HDCP_CAPABLE;
> >
>=20
> Let's keep the behavior same for both hdcp_capable and hdcp2_capable in
> case of failure.
>=20
> Either assign both of them as false, or not assign anything.
>=20

IMO, assigning them false could be a better approach if you don't see any h=
arm in it. It is not great to be dependent on the semantics of them being i=
nitialized first.

> Regards
>=20
> Chaitanya
>=20
>=20
>=20
> > -	return 0;
> > +	return ret;
> >  }
> >
> >  static const struct intel_hdcp_shim intel_dp_hdcp_shim =3D {
> > --
> > 2.43.2

