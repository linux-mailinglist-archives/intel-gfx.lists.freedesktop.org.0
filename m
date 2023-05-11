Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3E06FEE71
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 11:14:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9E4210E1F6;
	Thu, 11 May 2023 09:14:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 390AF10E1F6
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 09:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683796468; x=1715332468;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/lIjuG7me/frVs6kPh51biSMKAKMglP6hnXBBhOR6IM=;
 b=iNJFKUsP8U24C9di+3Cma5gvzv4BreAhcR/r/xjjpffQXP4uAF1HBtxI
 5SWKMYaEhK2GuosAx4YS1P2sMjN/azXHfpvAClLi+b8OaLXcV3xRvpzAN
 unFKTMCuIiTrzTdYkdb2ubLD7/yy17qTCWnXFWrvKOnGGsFHMnri3HxYI
 1ySpXX//nqRtIPbUG3SE8/DHqDMgJPrMBQPoTb3Vd4nRd32CpmP5ljyrP
 e5c/TADB+J0Q000bBfUEtpcZvaIqdCkztU25Chxl7+7ptOBVq6dGWeY19
 bHnV8LOssHHq4gS8OIu0NAWYT3glREY3KLvh66sw0yTTkrA63t324DgZ4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="413774400"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="413774400"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 02:14:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="693720099"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="693720099"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 11 May 2023 02:14:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 11 May 2023 02:14:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 11 May 2023 02:14:27 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 11 May 2023 02:14:27 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 11 May 2023 02:14:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d2+f/PHRjlgTEtgVICESSnQbFGeKis6bmBWbdEG8rmldTfSjIJ857nXfi9xMPGHgpyRPbMyrAxsXF33qtfXLnfRkMn2+o5QQ/dq/VJMUWk6r/dN7vNECco6WL3B1TZDPDnPYGDcf03kTgiMwd1NEYgPWkpspOgSTQnf7HCA1+QpZjbZCqekyfH8slwX0/5hJSCbIprzeD6FZw1T/n+sJK0DpE97xCm6a+s0MbxjtiQS5gHBzHKkCVk8gAojj331Y44TJ1fXZX295N/FucTKitK4avNrweV2EqKLRNOAeaL997Fz/0c9endfjSic6jq1Q4/iVsuFipUfsvKn7gU+Upw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iRh3k0WHfvkv2SN0PR0bBwq6Lspz+I4dD4nx9Qt+8BU=;
 b=ArieZwNRABGxQxcYCDvEu/L5rl36X9O3N9zIdjLYo1mEyKa258jVm5Lew/wDtfPxmuyz51GUH1gDuDymNB7E+nlrnoORNwRDOlTkSsdjMlka5pGvFMWo0K72/LtYPhNLu1eES0mT2T+E6vDewLp25agqS41ujOh5q2xfA9MxzdpkwSWIHr2dz0HkX1P6jJPdtOiLXroJ93PFRUWqvaENutpCd5Kq1YlkwwoVENVqU7JdVd99BVogW8NqrrDEYaIDZEFbP1cEi6Wz8rWRW3rqLdNBocrr37fF9cyIHrU2936prIEbYgV5+eEtjPjKmzSEaLoBRAxZesLrDqJ+2dWgzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA1PR11MB6121.namprd11.prod.outlook.com (2603:10b6:208:3ef::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.21; Thu, 11 May
 2023 09:14:13 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3c34:3b9d:4abf:d93c]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3c34:3b9d:4abf:d93c%3]) with mapi id 15.20.6363.032; Thu, 11 May 2023
 09:14:13 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/2] drm/i915/hdcp: add intel_atomic_state argument to
 hdcp_enable function
Thread-Index: AQHZg82ta7N2IOxjwEGwBaw7KMAC0K9UtNeAgAAVUKA=
Date: Thu, 11 May 2023 09:14:13 +0000
Message-ID: <SN7PR11MB67508BD611D81F8E7A957EFFE3749@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230511055705.611809-1-suraj.kandpal@intel.com>
 <20230511055705.611809-2-suraj.kandpal@intel.com> <87cz37mhay.fsf@intel.com>
In-Reply-To: <87cz37mhay.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA1PR11MB6121:EE_
x-ms-office365-filtering-correlation-id: ede48f49-8cbe-4a1d-a39f-08db52001663
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VrqeQ7mi3bfATn4nY/RHdQ1/tuh6cO+5/FYxCehzGcku36KwyJoZtFdypOBjQMxc6Kzd0I9n/H2oXDtB00u2xb8dXLKLl+uo/cvJbl2ssPVcohUysukFGPuIUPxbZT4vNzJfI9bEUzYwEayJhKPFQ6HOMN61YnO5Xs32yvV/DFwe//kaT42krxTAvpKoi7aDpFr5OOHtphofhCRZkgsk2w75/71GUyFTnfSyZQm7xLkeQ3uGtRh6N+iodG8/iejHNxMA61p+HEON8vQH3ILH3/uSOVEUfKCa0QGSkLKG8RjRQ/3lGOqMn1+9/btd4um6OeLf4B/dtAGyqIWxAP4O5VS40pEy8DgZL5Iu89y8SNDkOGrUuQ90LsYuIE2DmuXJDwVoFKE2hY6zTpCbHlmC1k7ZbVJdpizvOfntMhk3NSaK4erEeN98KTyY+5yL0R7qYL3Q4Ozf1Hi+aKyVDBPbnNZ9J/rgpwAXxLJmECX1rhJRlXuOKI3rk4uq3+FWyumJQ/+Sl1VjTgxcTu1Owy8qy5c2Iw0qRd+wIvinkGniAKSI8NHWmlTFcb+9Gs2o/yoI03RNj2aziTdTbm1+5EafYdy/PA3ftRZwsd4lHJkxPORWs/5lQ8Z2rNfT9+f3MOe1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(346002)(39860400002)(396003)(376002)(136003)(451199021)(5660300002)(52536014)(8676002)(8936002)(83380400001)(2906002)(186003)(82960400001)(122000001)(38100700002)(38070700005)(86362001)(33656002)(55016003)(53546011)(9686003)(26005)(6506007)(316002)(66476007)(66556008)(76116006)(66946007)(66446008)(64756008)(71200400001)(110136005)(4326008)(478600001)(41300700001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+P1mJm2GnkKZrZ5UFbS7vmMl9+b2irU46aPWXLGJ4MkCcdUOmv7ldRA+DOOc?=
 =?us-ascii?Q?hBdIEQ0GK3hymxJuJrWP8VJyAssWDxjMi7WrOuly5DSuVKvxIoySgM1uhvD6?=
 =?us-ascii?Q?MKwgT2+jcwNApLrrFrs/QqpN9rqedDtHFC2+AmVPfG9dTP4zudTz258xeD3P?=
 =?us-ascii?Q?eGT4IjBtCxIUaLdApVk1aEXonkTGljeFNHrHTlq0J0mphlC+Ss3xJg69pXPj?=
 =?us-ascii?Q?pJ29/Axox0b55UIfBaHo+KVHgTJdiHORYTgOb4B34TBY/AZFCbIWubCe+5rx?=
 =?us-ascii?Q?zgoZu9HVvlv6h/WBJneK5inTtbTo9YXm/8A7CmFpNCzQcSuKEO6jTqNHdroT?=
 =?us-ascii?Q?gcQiOzvWW5EayGFfJS5IBmImwDJAUq13M9RrvaBpycscNLVGcalniB9/djCo?=
 =?us-ascii?Q?ahx5sxd12JO1QWcdcdVKWR0X/apoW/5KPCHfDEL5umplySevNnTvO7dO1YSa?=
 =?us-ascii?Q?S7bzyI5k58ZZR22Ma71Uy5biWohF/y7hi4zVZAZC5AWfq9G7RFa25VWne3N5?=
 =?us-ascii?Q?PHM0gmf/36MO4r40eBqfvASbTYuw2Vm6Li1FNFkvcqCRrO9iRQgRDe9lmwYp?=
 =?us-ascii?Q?PFwfATTKIKySHgocQBub1PFZXDDvjb28/xK4B8Wtd71P5Se7nofNHdbY4gWM?=
 =?us-ascii?Q?wxfMKtaFdpSuiM9OAzlzXgUHoTjPznqYUbMmOnhenvNmYQDktidRnomV44g7?=
 =?us-ascii?Q?JjdRMMny0oE4aqwUoUjALlPz9wmR5/U+9kXCAYRzq828EV7zauySg+WAa31J?=
 =?us-ascii?Q?Jz7Xr+D+y6Z9i6rLmFANAQ5KWGbvhYJbkEXeLi6L4rXCvdTU+BBIl3Sxkzb6?=
 =?us-ascii?Q?TkReVUReHoKEEqNI+d3C9Ml4RIt8PyvZ57hjslb9iJSfZXR1s6PJyQChb11F?=
 =?us-ascii?Q?7bwA+3xqlVj1UMhnKY8YJwYb80c1QzYuQRTIOS7TZ89oy7nfeXLwxK0H36FL?=
 =?us-ascii?Q?RYuP9a8FVYxfsfHlj5VfB0SymAuc+Wewk1p/hgFJ+gxGPN5v2gvINcIJ0uL5?=
 =?us-ascii?Q?ACErch0E0jJIbo2rYzBXueT/2AzjMBg9VxY3B5DJhqM952f/bRS6UddiRd2k?=
 =?us-ascii?Q?1+WFvDvPKkmFv515c8JPhR1B11eOXPObm3pxxFrXd6K2N+lA/iMMleuTowzf?=
 =?us-ascii?Q?36lHRc25rfeNrSuORP9lXY3Ii27pJUsby8P+9bTyr8Tp1fU9Dn1A4rTXkDOk?=
 =?us-ascii?Q?bw4jKfXu7WiacyDu2GSpgxiuqysC0cikYPBM7fFQqKW9oXr4HACv0CVWM+ui?=
 =?us-ascii?Q?vt01CejBU43pm1NRebiy36Rk5LjyDjB57ohJhQH+k/djzwkHiQbOamdMbf7t?=
 =?us-ascii?Q?ungLuyluVquXsdw3SezL5jNFjKhQF8AxD2ymUDyH/d8cNpnvRnqbY5109jL8?=
 =?us-ascii?Q?wK9RA3aAhhtrXTdcsrAXzsro1OMK9AUem0f61A3NMchhX97MucMxYmD/YneN?=
 =?us-ascii?Q?84CczJV2xf/a2E/PeeV6RsUqTjBKSQYZgj2YY5Y8PMhsDxCrisEmyZvbpBsJ?=
 =?us-ascii?Q?t5vvLRNyBS9Ka9PNOW5/zFEwrFDze2IC7iQ8BgExMNz1uhvCXH/qAzBwiGCj?=
 =?us-ascii?Q?up+yQMUABNI0yPBM9in2WQzMESU4o+vz7NOA64WH?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ede48f49-8cbe-4a1d-a39f-08db52001663
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2023 09:14:13.2155 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CrjTSSOAKfn7TL2RhDgd4IROJ36I++6PiFc86tWBx0STA/ssf1WMdsjfsFvrTCitkPrZ6SL/oH88m/sAhUF7Xw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6121
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: add intel_atomic_state
 argument to hdcp_enable function
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
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Thursday, May 11, 2023 1:27 PM
> To: Kandpal, Suraj <suraj.kandpal@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: Re: [PATCH 1/2] drm/i915/hdcp: add intel_atomic_state argument t=
o
> hdcp_enable function
>=20
> On Thu, 11 May 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Pass all the parameter in intel_encoder->enable() to intel_hdcp_enable
> > as we need intel_atomic_state later down to get acquire_ctx.
>=20
> You're passing connector, not encoder, though.
>=20

Ohh missed that will fix in the newer revision

Regards,
Suraj Kandpal
> BR,
> Jani.
>=20
> >
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c    |  5 +++--
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 ++--
> >  drivers/gpu/drm/i915/display/intel_hdcp.c   | 12 +++++++-----
> >  drivers/gpu/drm/i915/display/intel_hdcp.h   |  6 ++++--
> >  4 files changed, 16 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 29e4bfab4635..e838d56415cd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -3264,9 +3264,10 @@ static void intel_enable_ddi(struct
> intel_atomic_state *state,
> >  	/* Enable hdcp if it's desired */
> >  	if (conn_state->content_protection =3D=3D
> >  	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
> > -		intel_hdcp_enable(to_intel_connector(conn_state-
> >connector),
> > +		intel_hdcp_enable(state, to_intel_connector(conn_state-
> >connector),
> >  				  crtc_state,
> > -				  (u8)conn_state->hdcp_content_type);
> > +				  conn_state);
> > +
> >  }
> >
> >  static void intel_disable_ddi_dp(struct intel_atomic_state *state,
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 2c49d9ab86a2..e1e040434a97 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -800,9 +800,9 @@ static void intel_mst_enable_dp(struct
> intel_atomic_state *state,
> >  	/* Enable hdcp if it's desired */
> >  	if (conn_state->content_protection =3D=3D
> >  	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
> > -		intel_hdcp_enable(to_intel_connector(conn_state-
> >connector),
> > +		intel_hdcp_enable(state, to_intel_connector(conn_state-
> >connector),
> >  				  pipe_config,
> > -				  (u8)conn_state->hdcp_content_type);
> > +				  conn_state);
> >  }
> >
> >  static bool intel_dp_mst_enc_get_hw_state(struct intel_encoder
> > *encoder, diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index 650232c4892b..1928c80cb6a2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -2330,8 +2330,10 @@ int intel_hdcp_init(struct intel_connector
> *connector,
> >  	return 0;
> >  }
> >
> > -int intel_hdcp_enable(struct intel_connector *connector,
> > -		      const struct intel_crtc_state *pipe_config, u8
> content_type)
> > +int intel_hdcp_enable(struct intel_atomic_state *state,
> > +		      struct intel_connector *connector,
> > +		      const struct intel_crtc_state *pipe_config,
> > +		      const struct drm_connector_state *conn_state)
> >  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> >  	struct intel_digital_port *dig_port =3D
> > intel_attached_dig_port(connector);
> > @@ -2352,7 +2354,7 @@ int intel_hdcp_enable(struct intel_connector
> *connector,
> >  	mutex_lock(&dig_port->hdcp_mutex);
> >  	drm_WARN_ON(&dev_priv->drm,
> >  		    hdcp->value =3D=3D
> DRM_MODE_CONTENT_PROTECTION_ENABLED);
> > -	hdcp->content_type =3D content_type;
> > +	hdcp->content_type =3D (u8)conn_state->content_type;
> >
> >  	if (intel_crtc_has_type(pipe_config, INTEL_OUTPUT_DP_MST)) {
> >  		hdcp->cpu_transcoder =3D pipe_config-
> >mst_master_transcoder;
> > @@ -2483,9 +2485,9 @@ void intel_hdcp_update_pipe(struct
> intel_atomic_state *state,
> >  	}
> >
> >  	if (desired_and_not_enabled || content_protection_type_changed)
> > -		intel_hdcp_enable(connector,
> > +		intel_hdcp_enable(state, connector,
> >  				  crtc_state,
> > -				  (u8)conn_state->hdcp_content_type);
> > +				  conn_state);
> >  }
> >
> >  void intel_hdcp_component_fini(struct drm_i915_private *dev_priv)
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h
> > b/drivers/gpu/drm/i915/display/intel_hdcp.h
> > index 8f53b0c7fe5c..6aaec4df6f6c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
> > @@ -28,8 +28,10 @@ void intel_hdcp_atomic_check(struct drm_connector
> > *connector,  int intel_hdcp_init(struct intel_connector *connector,
> >  		    struct intel_digital_port *dig_port,
> >  		    const struct intel_hdcp_shim *hdcp_shim); -int
> > intel_hdcp_enable(struct intel_connector *connector,
> > -		      const struct intel_crtc_state *pipe_config, u8
> content_type);
> > +int intel_hdcp_enable(struct intel_atomic_state *state,
> > +		      struct intel_connector *connector,
> > +		      const struct intel_crtc_state *pipe_config,
> > +		      const struct drm_connector_state *conn_state);
> >  int intel_hdcp_disable(struct intel_connector *connector);  void
> > intel_hdcp_update_pipe(struct intel_atomic_state *state,
> >  			    struct intel_encoder *encoder,
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
