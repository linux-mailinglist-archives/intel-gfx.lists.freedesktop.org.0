Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BFE780713
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 10:24:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA95810E07E;
	Fri, 18 Aug 2023 08:24:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CB0F10E07E
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 08:24:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692347075; x=1723883075;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QBB+Sh3rGPbHHfiIj0sqtSowBMFA9Sca6z9Wec7bstk=;
 b=hog5yuPuT+c0oPHfByJzKIccucyIMPWZM6jGqfHuTD345aW/YuP10RQd
 9YIWcVSLcr35m0Y7zxiikY2OPFpllR0HUKhNPEvZvzX5g3qAXgJxQ8O34
 OpgzaeBb8b8m6O/kAerwQx/4T5vY0H8ghCxu9if8z943lsVafC4FhswWF
 /ucX1s5ATsloGpPNBTojrfQhtT/9z59tMdKx0TML0ux0luXBnIp+jyJRF
 bTfPd/zNXBktsTyUAcTUfiXWzNfoLpHNRgXXvoowDndR4USE02+Pe++IY
 FakKBooPcYPD6RPzymNnIgsoyH2Yh0BHgAs3Iac6jhE5XDAkX7IpoliKn Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="459401581"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="459401581"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 01:24:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="1065657537"
X-IronPort-AV: E=Sophos;i="6.01,182,1684825200"; d="scan'208";a="1065657537"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 18 Aug 2023 01:24:34 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 18 Aug 2023 01:24:34 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 18 Aug 2023 01:24:34 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 18 Aug 2023 01:24:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k/JqRiozINQx04aMLn77WZtWtag/tykdeNB0vlv207kvcEmimE4/b8n4Uu5mnVhvbiz8LP86Io3YT67FuwW1JpfxdX7gQIJe3DO+zc91DolXxnMKLqKXRF6jUjLxO14rXCgU2UmhFI1Wo6+1b1A7M/07kz06EwOswV35NKfcWOg/as0lFAgcbtHhWJZkMgbABP7FolKDnNNZtYSvPIenjTpo5W9FzZoOK7tagE9zuOMMVJsyVZr/PwFdTAdBZ4V8V1p0IiysHOyxSEROKgc15CPPixeJOdAL0BkxpGsTloJC1gYmrZURkcQgeQ9L/PMQSOc+i94U3ygi+qMfNi9oyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nXQBOEdoLQTru2M+9cW/kY1mbMTaCONx6x1f1DVfWEo=;
 b=jwPTBXOnAitUF4+it4u3NqLzIEm4l8b0fx+pNDiUrYVdXE36XOODYdVRvTDmM3ko6j2XPUIijTdp8+czuDGXt2pnUEEU14eYoOt5azxwx5VF45oN0JousVWxVeth83jlZMK95NNtv6dhY85s3j0wiEjS2zDEZPgl7G5ubHqLJOiLu7fpwcJ/adIg5efJYCFG+alxrXi4zB9tMkXKlxq8mRA7juEWpCQlIaqdT9dgUPrycblNNORRQdF6QC3IndGjIvlEeP/aN9EHdh9jfWpg6HgKhf0pWpQV9A3ZpkCKxjCvdog28eT9t6axnTT2g+Ji6/J8ZXx0fTaSPKjjBzUl3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB6796.namprd11.prod.outlook.com (2603:10b6:510:1ba::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20; Fri, 18 Aug
 2023 08:24:26 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%6]) with mapi id 15.20.6652.029; Fri, 18 Aug 2023
 08:24:26 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Deak, Imre"
 <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 02/17] drm/i915/dp: Track the pipe and link
 bpp limits separately
Thread-Index: AQHZ0SaKdoCpUuX6wU6faPt7Gm78za/urRsAgAEIY8A=
Date: Fri, 18 Aug 2023 08:24:26 +0000
Message-ID: <SN7PR11MB6750FEB6F3106D3FB71B26BEE31BA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230817161456.3857111-1-imre.deak@intel.com>
 <20230817161456.3857111-3-imre.deak@intel.com> <87fs4h8wib.fsf@intel.com>
In-Reply-To: <87fs4h8wib.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB6796:EE_
x-ms-office365-filtering-correlation-id: bb7e51ea-1a4d-413c-042d-08db9fc48927
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2Wm7ZFtvCeajxDFn7MpnuSBDhhP89Mr6kySiL1fXRuFYfI/QkiMohqqei6dx0c2ERILKVviwGnpjAhxnDd5K3HBc/S0ka7Nb2JsTg501l79AbfXfM5yuCdTx7PObFX1AkqSs1nqvaN8Cc1wj9zaTaSx0/a7iQfFHc2K4Hx3+ZTX/qF1PEdjc8ax+GQAZNYc1njxpo9OfZaU/tJPcr2r4pU/9smO+5pXinRqs3nBg+P0WRgjnfAlDLqvCuXdm6ln3cYw5uNEA/rqcPyADreph7PSRT5DquRtrZ7lItXJySv83We51/6dEGM173rFpkTJ7sFkZCo+EvAaxgZRkVSjdO9nbv81mnrfHu5WDUJzDSgoRvRfeiRZU84sOTh0iCi0ZKQnrIH2oDmgwGyP+QGFWFLejpbcDQEjNK8PA2ZHnMY1i28QHvq+EZtPKWrjk2w8bBjGJaw3coV7tLXdeHvR0rp0QkMEJ7jyyzlu8dK4OYg9WRy9/4VJ6KbuaSCJBSi2TZbOo8r+GG8Bmf2ssPnuXlFsXrTbqas7oHDkGxRrfQLm7Tkta/LjQ7PK7ob42QNAj781v3ZywIBCoIUwPt2IF5sNiyHzmkD6MZ30G1A9a6VpDXC8gx20VYOM7itDAO/7x
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(376002)(366004)(396003)(39860400002)(451199024)(186009)(1800799009)(26005)(71200400001)(6506007)(7696005)(9686003)(83380400001)(5660300002)(8936002)(8676002)(52536014)(2906002)(478600001)(41300700001)(76116006)(110136005)(66946007)(64756008)(66446008)(66476007)(66556008)(316002)(38100700002)(38070700005)(122000001)(55016003)(82960400001)(33656002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?B54UV8U4BmEi5wSH0EJwOY3cucZCxDVb8qsOUUxeqKvheJDfHXrPqNSi2ttF?=
 =?us-ascii?Q?cyKagW78eNFKsdvfBW9JFuvnqkpcVdXw5LjTdbnL3NMV1t3F+EILyRxmp2Az?=
 =?us-ascii?Q?K1Eum/0B675a0xX2fxMTVRSgp14r50BYt1QM9ibwTED8/Ww+E+LNj5Ynwmmv?=
 =?us-ascii?Q?pAHXKJcuCC9o84v9wRIBAnJNFx4+uWMbaAnDcFPK7N5mVhlT2in/oIMO0sSl?=
 =?us-ascii?Q?YLXCgNH5wKBJ3xbDhwxE5pl+XiuQ2W4VMGNoeTT4sq7PWi6oQliOyl77HflM?=
 =?us-ascii?Q?Fd/LTow88GtZ2qXDRgGTBqlmlYOWgh/one0wOelV32PbtLfGm9EAU23UDTtv?=
 =?us-ascii?Q?ml2RHl3qIfjDMoy39C+xlboyx8MqaFg03RyLzDfo2azivJ7aLqtbytyA8O+2?=
 =?us-ascii?Q?LQHjhkPmlXrvYKQMG+ihDnvAC0389JPZj9UgNRoUYyqGzgY7GlONfNvTfY3B?=
 =?us-ascii?Q?05YwuRdgLeQX4WtscgJH0ETwXivsjO6/zVdL5GpXo+qlGzM0aBlLW5XA4AVN?=
 =?us-ascii?Q?tH5mjRvgWo61KNv0HFnArE0lugRlsaoaKQPJi5XoU7svC9odH4OFeBJ+0vS7?=
 =?us-ascii?Q?Vw2dftwr3GkIQK+B6G3yfg8nGbqnSP91HcwcHqa7DW9DWcluUNTqGKClysoz?=
 =?us-ascii?Q?yANjWLaFEAdr3ehidJK7Jzp4IKiKAmbT7FXmMdxVuZnOsuNQbCEJ4XUzQnoE?=
 =?us-ascii?Q?WZv/spfSmO3X2onFIYlS2SVGZavisB1K1+uqoYQKJXzsmIBQcw6lR03zGG8i?=
 =?us-ascii?Q?rChfvhRCQPksHxqyl5VJ2BNpiLdPQzBO9wVwBesecfE8BDnpuBb49zKjS+XJ?=
 =?us-ascii?Q?xM/c5prpwIpPMcaRgIecKXkuJigjdsYxeRidcG4m+LH0Z/2l7vXaC+n1PPlH?=
 =?us-ascii?Q?aCXwDKFyQG5R0Vvbpyryu01cs/1MxpjHeyMX4qTK8O1EVL+FdsngzchIjCv0?=
 =?us-ascii?Q?zlQB4tynBWDlRuNV31IWTXrhisyKZJps/njsV1n1dCOynZUM4zvjJmTkYV4n?=
 =?us-ascii?Q?Ie0S0tXk7jG2K3sXeYznNMxsZKzwfpq4gsGbcJHBo03Fb92aCmB334OdHOju?=
 =?us-ascii?Q?K9TjhdhgRxCimOsjCkVf7oKBUeR8BhGnFe9QXTMWOYHvJEqR5e4mgITPaf7C?=
 =?us-ascii?Q?X+jRqrMrcSNBWgGuvt9UCK4mQYr/njcvFKKfWU+vYsFVCJddudJ67FV4VgO9?=
 =?us-ascii?Q?pn3Lwjs4fCQ7Vem9Ib4BTbZcON8Vc+MNznfEFI05TMAF7/Tn3tW7koaXg3Xd?=
 =?us-ascii?Q?7g3oxW8Ud6jAGA3AWOfT2OPsE63eLyx0AggfLDJ1/u7tlKqFacyQNeI6Olr4?=
 =?us-ascii?Q?sFG05TlK9JuPzSVdeDxwDlkJydh0hsAVlZStviVeuwW274nUxY7tvnMAwzqp?=
 =?us-ascii?Q?t92o7Jaw9/ZXBTDhuLsHVrUo/a2uoU1/izcwqkKqbuEqlZ1jSAh/terkmPYu?=
 =?us-ascii?Q?ycm2ZNJT6GolC/2C7L2zX03d6xEVdRcGkEuREZg9zFQ6+UQAQmGvPEYuwdTf?=
 =?us-ascii?Q?dyomTFHi2WBDBaKRErIguIo0laSq0rnr5uHHChyeDoBf4ABSjhDJiBtBQUbJ?=
 =?us-ascii?Q?DZFciY5fLhFWxef7KtY6wLhCnn8Jz/qxO9+9B8VW?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb7e51ea-1a4d-413c-042d-08db9fc48927
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2023 08:24:26.6088 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MX8hWwMTiZXUiYKWqFvQNRClsQhllmKqU7YgWVyxk6hzIH6F/L3S0TX5Mv65cnhb0CGSmcFC0FSukMtu5vS2AA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6796
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/17] drm/i915/dp: Track the pipe and link
 bpp limits separately
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

>=20
> On Thu, 17 Aug 2023, Imre Deak <imre.deak@intel.com> wrote:
> > A follow-up patch will need to limit the output link bpp both in the
> > non-DSC and DSC configuration, so track the pipe and link bpp limits
> > separately in the link_config_limits struct.
> >
> > Use .4 fixed point format for link bpp matching the 1/16 bpp
> > granularity in DSC mode and for now keep this limit matching the pipe b=
pp
> limit.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c     | 17 +++++++++++------
> >  drivers/gpu/drm/i915/display/intel_dp.h     |  9 ++++++++-
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 17 +++++++++++------
> >  3 files changed, 30 insertions(+), 13 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 89de444cfc4da..f4952fcfb16e9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1419,7 +1419,7 @@ intel_dp_adjust_compliance_config(struct
> intel_dp *intel_dp,
> >  	if (intel_dp->compliance.test_data.bpc !=3D 0) {
> >  		int bpp =3D 3 * intel_dp->compliance.test_data.bpc;
> >
> > -		limits->min_bpp =3D limits->max_bpp =3D bpp;
> > +		limits->pipe.min_bpp =3D limits->pipe.max_bpp =3D bpp;
> >  		pipe_config->dither_force_disable =3D bpp =3D=3D 6 * 3;
> >
> >  		drm_dbg_kms(&i915->drm, "Setting pipe_bpp to %d\n",
> bpp); @@
> > -1481,7 +1481,9 @@ intel_dp_compute_link_config_wide(struct intel_dp
> *intel_dp,
> >  	int bpp, i, lane_count, clock =3D intel_dp_mode_clock(pipe_config,
> conn_state);
> >  	int mode_rate, link_rate, link_avail;
> >
> > -	for (bpp =3D limits->max_bpp; bpp >=3D limits->min_bpp; bpp -=3D 2 * =
3) {
> > +	for (bpp =3D limits->link.max_bpp >> 4;
> > +	     bpp >=3D limits->link.min_bpp >> 4;
>=20
> I think I'd like to see some helpers for the >> 4 and << 4, to make this =
self-
> documenting code.
>=20
> to_bpp_int(), to_bpp_x16(), or something along those lines maybe.
>=20
> With proper variable/member naming, you'd get:
>=20
> 	bpp =3D to_bpp_int(bpp_x16);
>         bpp_x16 =3D to_bpp_x16(bpp);
>=20
> And it would be obvious what's going on.
>=20
> > +	     bpp -=3D 2 * 3) {
> >  		int output_bpp =3D intel_dp_output_bpp(pipe_config-
> >output_format,
> > bpp);
> >
> >  		mode_rate =3D intel_dp_link_required(clock, output_bpp); @@
> -1812,9
> > +1814,9 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
> >  	limits->min_lane_count =3D 1;
> >  	limits->max_lane_count =3D intel_dp_max_lane_count(intel_dp);
> >
> > -	limits->min_bpp =3D intel_dp_min_bpp(crtc_state->output_format);
> > -	limits->max_bpp =3D intel_dp_max_bpp(intel_dp, crtc_state,
> > -					   respect_downstream_limits);
> > +	limits->pipe.min_bpp =3D intel_dp_min_bpp(crtc_state-
> >output_format);
> > +	limits->pipe.max_bpp =3D intel_dp_max_bpp(intel_dp, crtc_state,
> > +
> respect_downstream_limits);
> >
> >  	if (intel_dp->use_max_params) {
> >  		/*
> > @@ -1831,10 +1833,13 @@ intel_dp_compute_config_limits(struct
> intel_dp
> > *intel_dp,
> >
> >  	intel_dp_adjust_compliance_config(intel_dp, crtc_state, limits);
> >
> > +	limits->link.min_bpp =3D limits->pipe.min_bpp << 4;
> > +	limits->link.max_bpp =3D limits->pipe.max_bpp << 4;
> > +
> >  	drm_dbg_kms(&i915->drm, "DP link computation with max lane
> count %i "
> >  		    "max rate %d max bpp %d pixel clock %iKHz\n",
> >  		    limits->max_lane_count, limits->max_rate,
> > -		    limits->max_bpp, adjusted_mode->crtc_clock);
> > +		    limits->link.max_bpp >> 4, adjusted_mode->crtc_clock);
> >  }
> >
> >  static int
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h
> > b/drivers/gpu/drm/i915/display/intel_dp.h
> > index 22099de3ca458..a1789419c0d19 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > @@ -26,7 +26,14 @@ struct intel_encoder;  struct link_config_limits {
> >  	int min_rate, max_rate;
> >  	int min_lane_count, max_lane_count;
> > -	int min_bpp, max_bpp;
> > +	struct {
> > +		/* Uncompressed DSC input or link output bpp in 1 bpp units
> */
> > +		int min_bpp, max_bpp;
> > +	} pipe;
> > +	struct {
> > +		/* Compressed or uncompressed link output bpp in 1/16 bpp
> units */
> > +		int min_bpp, max_bpp;
>=20
> The 1/16 bpp units is a source of confusion, and I think we should start
> denoting them in naming.
>=20
> min_bpp_x16, max_bpp_x16
>=20
> > +	} link;
> >  };

Also a small question here do we need to track both pipe and link bpp separ=
ately
When we can have the helper mentioned above maybe we can call it
pipe_to_link_bpp
Also if it is really required to track link bpp for dsc and non dsc scenari=
o won't it be
Better to have link_dsc and link_non_dsc structs rather than pipe and link =
since both
are bpp for link with dsc enablement differentiation.

Regards,
Suraj Kandpal


> >
> >  void intel_edp_fixup_vbt_bpp(struct intel_encoder *encoder, int
> > pipe_bpp); diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 998d8a186cc6f..1809643538d08 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -156,8 +156,10 @@ static int
> intel_dp_mst_compute_link_config(struct intel_encoder *encoder,
> >  		&crtc_state->hw.adjusted_mode;
> >  	int slots =3D -EINVAL;
> >
> > -	slots =3D intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state,
> limits->max_bpp,
> > -						     limits->min_bpp, limits,
> > +	slots =3D intel_dp_mst_find_vcpi_slots_for_bpp(encoder, crtc_state,
> > +						     limits->link.max_bpp >> 4,
> > +						     limits->link.min_bpp >> 4,
> > +						     limits,
> >  						     conn_state, 2 * 3, false);
> >
> >  	if (slots < 0)
> > @@ -200,8 +202,8 @@ static int
> intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
> >  	else
> >  		dsc_max_bpc =3D min_t(u8, 10, conn_state-
> >max_requested_bpc);
> >
> > -	max_bpp =3D min_t(u8, dsc_max_bpc * 3, limits->max_bpp);
> > -	min_bpp =3D limits->min_bpp;
> > +	max_bpp =3D min_t(u8, dsc_max_bpc * 3, limits->pipe.max_bpp);
> > +	min_bpp =3D limits->pipe.min_bpp;
> >
> >  	num_bpc =3D drm_dp_dsc_sink_supported_input_bpcs(intel_dp-
> >dsc_dpcd,
> >  						       dsc_bpc);
> > @@ -318,7 +320,7 @@ intel_dp_mst_compute_config_limits(struct
> intel_dp *intel_dp,
> >  	limits->min_lane_count =3D limits->max_lane_count =3D
> >  		intel_dp_max_lane_count(intel_dp);
> >
> > -	limits->min_bpp =3D intel_dp_min_bpp(crtc_state->output_format);
> > +	limits->pipe.min_bpp =3D intel_dp_min_bpp(crtc_state-
> >output_format);
> >  	/*
> >  	 * FIXME: If all the streams can't fit into the link with
> >  	 * their current pipe_bpp we should reduce pipe_bpp across @@ -
> 327,9
> > +329,12 @@ intel_dp_mst_compute_config_limits(struct intel_dp
> *intel_dp,
> >  	 * MST streams previously. This hack should be removed once
> >  	 * we have the proper retry logic in place.
> >  	 */
> > -	limits->max_bpp =3D min(crtc_state->pipe_bpp, 24);
> > +	limits->pipe.max_bpp =3D min(crtc_state->pipe_bpp, 24);
> >
> >  	intel_dp_adjust_compliance_config(intel_dp, crtc_state, limits);
> > +
> > +	limits->link.min_bpp =3D limits->pipe.min_bpp << 4;
> > +	limits->link.max_bpp =3D limits->pipe.max_bpp << 4;
> >  }
> >
> >  static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
