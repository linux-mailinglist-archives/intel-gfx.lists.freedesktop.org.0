Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA636885CC
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 18:59:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B59F10E15B;
	Thu,  2 Feb 2023 17:59:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7229010E15B
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 17:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675360767; x=1706896767;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=W7HgmmfzfAjs1oXBDZExxzPHMRFciA4HlWFMDmTHOlo=;
 b=A2p7fs8NHsbsO7mSwSgsucuZ274+ol96NAaBlw1GO7Bw1ua4HQMuUHdV
 W2gP+5s8bzBXL9ZHHJT/Xp68NSW6OwS5Uyov6ZKehkAJfeyTiEdoH7qeB
 OzujU1m7ZmDJBOvCI3/tZ4lMuQncr3Kb1NY19iCkaVMRZD9wgTIeFR/IR
 JFOqxp50m8mgp3n0PfHEw5e8p+tQJG2iYYhn1xpO+qnlrc3MVwdrNBJzd
 mIYfjdOl4rRRVQr5rDTgs+rfQzEXD1SHGkHXSoGL8kV+pIYDJmjtDOClq
 2cF/PUzswQLLFprTH9vSMuzmALT0mWbPsR35na5ofaNND0pPUAQbJOcNt g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="330646027"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="330646027"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 09:59:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="734024093"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="734024093"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 02 Feb 2023 09:59:26 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 09:59:25 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 09:59:25 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 2 Feb 2023 09:59:25 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Feb 2023 09:59:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gpq8ckourE9JKoL6s3d9FVQR7VeAUtZCg5tgM3JcOeAPk1fPn7FwEa1FxNQKpkQQC3zr8nx1+moH5kL/EZhFEPwOFzr2bVD39exqb38graZmex1w6b8IWnqJafPNMsf3TPwssMjZk5J7+nZ6xS7r3YZsdIr33nGQXBxzpUU7IdnvoUvMjkDLHgIwJ+cchOtndb+J9NnTqnIUyHiWXRqo8FRraAb7JQ6Sl13BI7YhMrqBANYFt7lAnxeDG9HGciZ1sm7rrAf339AYLIakF9tt/nWcd3nsPpeD9LhJMoqsDBvNpDAmDLioqH3yC9N+HvoulnisYrvGwBYeCbeXsgx08g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2XniHGM+TKJ9GRBwx4wNfIB/XUa47jesa83mNGWKaUE=;
 b=SzwSUBtXu8NWfrBQOx1FWORlGgXJ7SAuWtMTkbttbZoJHkKBBMDROuxDy9Zft2nyxjsHxQaeOeSmXaRiURW2QHOgEtBjpSd4vb8X70BZeTfgdE9PhmEEpDBXLmYjAbKesSun5Qs9J3aDeBdzjAhvjwCEIqLzlJfiWdWk5Gk4uhlDLa1Pf9GX2Dv93iCWsYDgksG231ChYWn79lgJjAejCio5h+XB12/LDFWoYzDPo0FuVo1RUE2wYPneherOJSTp+mPEW51KcLK1qYGlTOG45ON2kbBWCWfAzgToVHNMtbH2HKz/Z1jAbOhT/hc+nKqHwSVE94aLxBdQwgd/22MZkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by DM4PR11MB5470.namprd11.prod.outlook.com (2603:10b6:5:39c::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.27; Thu, 2 Feb
 2023 17:59:22 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::469:cdec:dfa7:2c73]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::469:cdec:dfa7:2c73%7]) with mapi id 15.20.6043.038; Thu, 2 Feb 2023
 17:59:22 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915/dp: Fix logic to fetch
 slice_height
Thread-Index: AQHZNvwcF1Np1it1dE2tnyVXcmAdh667n1mAgABMI4A=
Date: Thu, 2 Feb 2023 17:59:22 +0000
Message-ID: <MWHPR11MB174174ABEFE34DFDF469A757E3D69@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20230202114613.3177235-1-suraj.kandpal@intel.com>
 <20230202114613.3177235-2-suraj.kandpal@intel.com> <87fsbo1apu.fsf@intel.com>
In-Reply-To: <87fsbo1apu.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1741:EE_|DM4PR11MB5470:EE_
x-ms-office365-filtering-correlation-id: 01905d64-ec06-4edb-6804-08db054736b0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CA8j27LO8KTz9rJu2Hg7Nd4ZQ+PoaBsKtFdpP6p29GZxZJI5/USOEOiZQktNO5R+Szw1WqMa6mCdR4UZKVf3JHv2N+aXTjFKNEUzuAxcXMT+mrafLZ8e/W8wfoIcfIOSAPnSaCWp4/okwLJSeW1o/p8Y2FTGw2CbjqsCN17q2OG4NecmoV6Ok5KF+sRDw9dYNbkYH1oZl9jzwu4/Of6phYwz4n6DXCGQN1S3WkfF5bBQ1aAUAsYrzJuAFLlAQg6JJhde50DZqKxdpI+HkXMhgOzwBlnoMITT7MEnetx8udyHagltkCNRkLmcuuyo9ZhbFIbIO1Zwbt/6WeUxMOIfn0KHU+yLPy5yjd/kYI9wMhVRez1iZyxlIJrh6obPb/Gr+ZJl+299+K7CxHAh7SbCQXTf1N479KISDZ67D/DcHt8fWbkpq+TfEZINXIms49fhPP8spNnb2zIlF/OAkjlJzbKfKdkd5Wz42FjteOqdUTRqUFIaXc3XnfjyGeiLH5eSNCZ3zQ/NurJ6+re+MNwfZsyX3e0dd3OOAE01NGHFMrGuwqlzq94vrPXMUocj0qxcwpkfK52fBSeqpizFqtbcgx6/iYBGY2Ki2lz1cldaXWbyJZDAEpRzgMEdyxk0RUDoJGvpUSda3AwREIvd2g84XEdkDjfAMrfN81ny4g2WEgcjRshbQxazQfPzsBhe/Mf2mx7VjwsqnarVvhQXYgXvrw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(376002)(396003)(136003)(39860400002)(366004)(451199018)(82960400001)(38070700005)(38100700002)(122000001)(55016003)(71200400001)(64756008)(66446008)(76116006)(66946007)(66556008)(66476007)(41300700001)(8936002)(86362001)(83380400001)(33656002)(186003)(478600001)(7696005)(316002)(110136005)(8676002)(52536014)(9686003)(26005)(6506007)(2906002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?j7MHB08w2wrM5FsPcN6u5AU/W607BUc+ABoajrq+ctWQjc7N/kjPMpnHVV9R?=
 =?us-ascii?Q?JPJQ6pJyvdm96aBGhWovtYM2Abm8EiqMPzwAQeaB6qlmA9VwEjhw3iXS4/qB?=
 =?us-ascii?Q?uCwHTiMPTKiy7QAM4aeNXsXXgGg6CenAhyqFiXRBIGm4kTa/jM9EKsB8CAP1?=
 =?us-ascii?Q?xs6lxT4If8025F+8CptXniGPFQlwl+K0of7WebYO7grZpwsgDhiNU2tkuBMS?=
 =?us-ascii?Q?y/m2xZ054qe9vrMx+jP0lSlhUIE2AjlMKtUoIAXGchu5ce+ff4jOkjpACpz3?=
 =?us-ascii?Q?PqIf7SYZsxdZ9asa9b9+BcGA8rrMXvmax5b6tF8KGubRXeZ4F4SS7xp62mlO?=
 =?us-ascii?Q?U4IQl82Ic7266oqxSDujp6NpCjXt2JYdPJt+/x2HUvGGDoewyJEDZCAU3x9g?=
 =?us-ascii?Q?3e1QgbsApS3VCxx321XNI0LfF5B2eRAwI7C5gKADb8ExZV1JcloW8Ft3xU6Y?=
 =?us-ascii?Q?MxGXW5mXq1jsfddCjIXijo9VceON8nW5ImT0qX0opjjP7InH5KtfpRM6D9Iw?=
 =?us-ascii?Q?WMVj7v0i/Tyoqy0HLDrHY9jN4/nbz3MM5sl9dHgWexePbUTdbT2D0E6f9Cqs?=
 =?us-ascii?Q?bNHOt8NM3iM6tXZF02/6LwijM4YHMl8RW6egqlAtypvTr40YvKMgEJcCOK+y?=
 =?us-ascii?Q?QxBxYKZol5J49gUnDJKRfnO4v0VOV+zG6JAo2OtJXLYqnIC15dMPvPWU/fQ/?=
 =?us-ascii?Q?qZKIZQabz8CP3mWIsk9CxM3oHhsgF8inW5UYQhC1uI4y+z4rBUiAcWf+/GoJ?=
 =?us-ascii?Q?w8qyy4UFB8fbUCM/027l9fJvEnIY3dr1COzuP2LKu+sc1wBimsjSWi8cF/bF?=
 =?us-ascii?Q?CxKTA4ugg7H+x7ij9mcxm4JHzsD4894lCGD+pfQjc0vkJd6yPLCplC5wIxYT?=
 =?us-ascii?Q?AFpOT5HMKHMSNNEMSi9nNIxI4xoOhMAvmw4K+u/TBk4/v59tpKlfSFRiAFmW?=
 =?us-ascii?Q?ZgqlZzWmsTqUWpiqSO5/66FfIf6Qvmla6/Ydwn/oeX1INoQv17KywF4rS/TV?=
 =?us-ascii?Q?IFBss+ztlC5RzWBwptqBlStJ/xz+25irqYoB1IPUaxMKQXaHYOADfBUJkmxe?=
 =?us-ascii?Q?qBNV+UkwcoWjs0EjWNK5xA3bHsKKr5MzdHwhSyysl2IbIpUV8SDakxBZBD2I?=
 =?us-ascii?Q?g+2X+zUjzZaIg70QpgTAVTqwo15g9/rpbmLKFwCEg7tyK7RY5UaBFMXXjJG1?=
 =?us-ascii?Q?xuJtwCc9GUIwuAdFrj0tAywX68XtBFNwrFaYfRog5hFr5Zl6GE03saCRsmmL?=
 =?us-ascii?Q?jXGqn3NBY16Ez5KcLYfHLUPlQvZaVUw/TaHM/lcX1WZB1c2t51JBd5SFAn8R?=
 =?us-ascii?Q?eBnyqEb1dNI9NATT5IkOtUEUPha8a69yAy7kWNh2G8cGTPHmYTEN9a3HelBH?=
 =?us-ascii?Q?SSn74FmRN/GOwS3Mn3H5cbrrOvfKl9eI+b5yAkMTQBOYsg+PZLxp85ksgQb6?=
 =?us-ascii?Q?JMVASXf7TVsXjEGy3dN+0D00FHv3IP72FJd2oZBFMuc9M12P33FwDV8mLMKr?=
 =?us-ascii?Q?LCgVD8B6D+T1LzcckODmIidx1v4CD6Gv02vOtZPROoHPn7IFiWKjBU9s04t0?=
 =?us-ascii?Q?yXXgSZ9MQzkYCNDyxbeXU16SOOtuYv78OaMV3TBP?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01905d64-ec06-4edb-6804-08db054736b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2023 17:59:22.0935 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e0IMMXBVsiWKPbst+u7Iy7d6YkyKVPc0YgNCQJbGuvTldhN3nBjMniW5K/1apz0xjfDkyMvC224MKv3Ci3QLAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5470
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/dp: Fix logic to fetch
 slice_height
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
> On Thu, 02 Feb 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > According to Bpec: 49259 VDSC spec implies that 108 lines is an
> > optimal slice height, but any size can be used as long as vertical
> > active integer multiple and maximum vertical slice count requirements a=
re
> met.
>=20
> The commit message and subject should really indicate that this increases
> the slice height considerably. It's a 13.5x increase at a minimum, could =
be
> much more. Seems misleading to call it "fix logic", as if there's a small=
 issue
> somewhere.
>=20
> Bspec references should be here:
>=20
> Bspec: 49259
> > Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > Cc: Swati Sharma <swati2.sharma@intel.com>
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 62cbab7402e9..7bd2e56ef0fa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1415,6 +1415,22 @@ static int
> intel_dp_sink_dsc_version_minor(struct intel_dp *intel_dp)
> >  		DP_DSC_MINOR_SHIFT;
> >  }
> >
> > +static int intel_dp_get_slice_height(int vactive)
>=20
> intel_dp_dsc_get_slice_height
>=20
> > +{
> > +	int slice_height;
> > +
> > +	/*
> > +	 * VDSC spec implies that 108 lines is an optimal slice height,
>=20
> Please be more specific with spec references than vague "VSDC spec". Spec
> version is required at a minimum. Section and section title are a nice bo=
nus.
>=20
> > +	 * but any size can be used as long as vertical active integer
> > +	 * multiple and maximum vertical slice count requirements are met.
> > +	 */
> > +	for (slice_height =3D 108; slice_height <=3D vactive; slice_height +=
=3D 2)
>=20
> Where does it say 108 is a minimum, and you should go up only...?

So in VDSC 1.2a section 3.8 option for slices it says=20
"a slice height of 108 lines typically provides better
performance than a slice height of 8 lines."
It also states the following=20
"Also it says There is no cost associated with slice height because
there is no additional buffering or any other additional resources required=
"
 that's why I decided to move up from slice height of 108

>=20
> > +		if (!(vactive % slice_height))
>=20
> Matter of taste, but please use (vactive % slice_height =3D=3D 0) for cla=
rity on
> computations like this.
>=20
> > +			return slice_height;
> > +
> > +	return 0;
>=20
> I guess it's unlikely we ever hit here, but you could have the old code a=
s
> fallback and never return 0. Because you don't check for 0 in the caller
> anyway.

I will do this

>=20
> Also makes me wonder why we have intel_hdmi_dsc_get_slice_height()
> separately, with almost identical implementation. Maybe we should
> consolidate.=20

That's separate because the minimum there starts from slice_height of 96 as=
 indicated in=20
HDMI spec

Regards,
Suraj Kandpal
>=20
> > +}
> > +
> >  static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
> >  				       struct intel_crtc_state *crtc_state)  { @@
> -1433,17
> > +1449,7 @@ static int intel_dp_dsc_compute_params(struct intel_encoder
> *encoder,
> >  	vdsc_cfg->rc_model_size =3D DSC_RC_MODEL_SIZE_CONST;
> >  	vdsc_cfg->pic_height =3D crtc_state->hw.adjusted_mode.crtc_vdisplay;
> >
> > -	/*
> > -	 * Slice Height of 8 works for all currently available panels. So sta=
rt
> > -	 * with that if pic_height is an integral multiple of 8. Eventually a=
dd
> > -	 * logic to try multiple slice heights.
> > -	 */
> > -	if (vdsc_cfg->pic_height % 8 =3D=3D 0)
> > -		vdsc_cfg->slice_height =3D 8;
> > -	else if (vdsc_cfg->pic_height % 4 =3D=3D 0)
> > -		vdsc_cfg->slice_height =3D 4;
> > -	else
> > -		vdsc_cfg->slice_height =3D 2;
> > +	vdsc_cfg->slice_height =3D
> > +intel_dp_get_slice_height(vdsc_cfg->pic_height);
> >
> >  	ret =3D intel_dsc_compute_params(crtc_state);
> >  	if (ret)
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
