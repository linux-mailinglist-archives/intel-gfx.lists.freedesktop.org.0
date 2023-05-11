Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A48A46FEAE0
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 06:43:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16E8810E597;
	Thu, 11 May 2023 04:43:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A48D89A16
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 04:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683780202; x=1715316202;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=40miANtb1UaiCiHe2X9UVQzmQ4ktB+F/qZVqahPXzeQ=;
 b=cjmn5tMDm/viGQH4+aDojmb5amuiVbyOnq3gJ1v4pf/4Oco2iPuMFdpf
 YMN8Cs07rut+9O7cbW8AqcXLVV+U8r0l3DmDZm1tZ1fS1LUmKv3/d8a59
 Z0hZwSJPRW30VsLzM9BdLfUL5UjbyKt81Z2e+7LS2OnSi3DoxBMWj+yFj
 4AvryP1mQf4xkb24LFLipG51joi0QOGNfYbUhr+aAFJwK28UMxxzUJLbg
 HevFmftVOOIpi0L0LpZGd+i/gddQkro8NzhsqBh2F2qpEArZM0pCPIFiQ
 mXj6IfKbj8mG8ZayGyMEclCv295yIOmKHvvFSmL5ITO0aY5N6nU4Mm8c+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="436721504"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="436721504"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 21:42:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="843775682"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="843775682"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 10 May 2023 21:42:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 10 May 2023 21:42:04 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 10 May 2023 21:42:04 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 10 May 2023 21:42:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fu3U5YruPq9mOCJMBDE1RbLEYXDRyz5/RKmfBpaIYyxEhj+XgOXsficqvXUIpUBvj9mlsdPIpmcgGRC1pnY7+P+Nn2wv0OLVO+n4OELEfh2hgwuXKOtRRfewXeBvUcVGe1k0PN2ON2gOBHRQbvQPs9/n4nij8rKhrktVsJgYoJN3nIVHMnATJfCZ+P/lmfV5hc1Ad93StNjFAm9HxwrSZfF2qAK8GSfJ0To05aL7Kj9vNGUxgEAQt4nrDrF3cQuw3cUiZ4ohSUakgNDpSrBVJm51GoHhbbQ4xwaZQ3WWlbxZKQ0Zn01gRO6Xanw53GY9XbdBQnOeCUvGemW6tbjLgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v8dPftq8CXPLXKejGd26kSo07QWVnMcGjyEPLxErVaA=;
 b=OovmqdVf5L2WwYZLcXzqvoZ6ZKajOrO6yKvVx9Nt3A512tMRwklJr+A665xpGfkWvfEDJRa6GN06zZ2ktZzXrnzgLuYRSH2/Dx1DhjRLYTwvrQ3RwoT181HO9Xi2z+fWMMWPQvrNJ0scjuATCghIe8e6tIQsbHlif+L+ET+pMFsd3bC+SI5hkyCTBnw7C4pejYC48r5U/K5WOswE8bsgtVJ2lrG8pcA+TwEEoyI9YPx1C4Q2CHMFmiF/G9bZp0OywI3UqhcK0icmqzShusqT86YtzR7yYRYpiPAK5pBQwueWK0VrPMLFOn2St/aTKzoAkEol010I2VpNrd/QWWfsHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MN2PR11MB4695.namprd11.prod.outlook.com (2603:10b6:208:260::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.33; Thu, 11 May
 2023 04:41:56 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3c34:3b9d:4abf:d93c]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3c34:3b9d:4abf:d93c%3]) with mapi id 15.20.6363.032; Thu, 11 May 2023
 04:41:56 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/hdcp: add intel_atomic_state
 argument to hdcp_enable function
Thread-Index: AQHZfjn3MzcVnFsDUEikpeKApJV0NK9ToYYAgADmA1A=
Date: Thu, 11 May 2023 04:41:56 +0000
Message-ID: <SN7PR11MB675030D1004CCC6D9CBAA124E3749@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230504033718.581317-1-suraj.kandpal@intel.com>
 <87jzxgme7d.fsf@intel.com>
In-Reply-To: <87jzxgme7d.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MN2PR11MB4695:EE_
x-ms-office365-filtering-correlation-id: 1e57eaaf-a4d6-4ff9-6e3f-08db51da0cde
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KcED7NOMmebfrAYZ+1+eZo/l4l1gZqX5rahOKhgrJaRc3anYqmch4SkMIo/Wu+4ZvQJ3i0fODD54y6DvgsSz+i1CQKphdMUt+dG3/JvWblZZPialILKIPHg9cciHpGUs6oIXl2pyKm9NgWdsJsk7DG2rqbvG9tdlYM0wuXmE3eCVQXWJ3RuCGcvkzRldaaux6rWwYt3EvD6ceBU3SefsUgpgaa63sJ2f72Sh91Tw74yXfHxy2ImJk8uoCifppDnL58gn14cL9GN/6MPqRL5YKe6VIK84+ksGFyUuvPmgOn+YYrF6lrD1T9WGiQeL7tsSy+P3X2h8NG3vFRKs4RvwIxVbjhcexC/qxeBGng3mwvWypAvWE+GbaFjGo3BsZoM+Q9PIe/0PTNPqAZqNwO5o+N9+MTOtkI4p1kPcwaupmYku1dvVo8C9esNawWx0MGBJlYbRmWgsitHLN53Po+Hv3DqDYWcos7/R9LEngyyFKR5eGJ7pdaq+YcIhzapumowWU2BT/HcZTeCy1fEuingrjIuhGmPLLYojMFyCz4/FJb1Mjf/NeYXApatO2WuRqDfAtGfuShHi2vapHjKGIlCz8FjwPX1xrSbC67NhucLa+2DXFTy1s1sdDLaj4TCENNBX
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(136003)(39860400002)(396003)(376002)(451199021)(4326008)(55016003)(33656002)(66946007)(66446008)(66556008)(66476007)(76116006)(64756008)(8936002)(8676002)(38100700002)(6506007)(26005)(186003)(2906002)(41300700001)(7696005)(38070700005)(71200400001)(5660300002)(52536014)(478600001)(86362001)(9686003)(82960400001)(316002)(122000001)(83380400001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qgcMVOFYgaYzQwWTT9b+xygYX/DYHOMLPCKJ8rbcSM/Fwb8zCZ94VBH3NSGK?=
 =?us-ascii?Q?qa5q9JDV4I/4y7ohg1ZuluC/Wf2x+mGwUl7iOvnSQsBis5Al/qgxlm63U/ZQ?=
 =?us-ascii?Q?3D+9eJpY+wkfgT+igYVWV2a8k4PYhC0b8QV3V634GAYI+9BOoqgqZuGoCGb2?=
 =?us-ascii?Q?DObuZ7iZ8E5FCwRvDaR1hFvzo49jpJrZuM/vjOTh87hYKUVzwIHqdxxAWbMy?=
 =?us-ascii?Q?9vbWFAjHe+KNi6FmhP748vr9TqQyikJNRrAc0J2IPPBDQ+ajPA0BQRg3HaHy?=
 =?us-ascii?Q?kakVSDNYbJSOqUWZjyvvX3V3mFe3hld2Nv2MnVkvVkDwNgD3S/ErjcNm/o9k?=
 =?us-ascii?Q?kQV1Zh0yfcRZ3Gs7anH/B7svu4zlv6xXOOeybanYnKqa+ej6WZiNjKymBbXp?=
 =?us-ascii?Q?pxFSWAv8m55fCxrq2QYQfhcV5j0O/bCDwYFWDVgUGaWWC57zHjipVYV8Uqjk?=
 =?us-ascii?Q?/0jA/RjkX97vbmtrtRy02UZIoK8umRLsEl2+IJpKPQp1jHd5H2lwC/NFxKF7?=
 =?us-ascii?Q?wfLO0m9dJAYzqLu+PIOdmmQYlcQbfxVx4toTbmrx70OUIHRPbXWiew+JDd/E?=
 =?us-ascii?Q?mjSBD4HUaYvB3dr3y2QoXihEMr6f9aJc5k7QZK2FVaTkSlwa6o4cz8o0eSP8?=
 =?us-ascii?Q?GGaPO12p7+zzr9agaCU8Y6m/qh7iP3txVP91rF+4k3x0KT1PUHnUf0Y6lTYc?=
 =?us-ascii?Q?8AXlIjs/wIQF+pTAZdRX3zEJtudD8f+rlFR5rRhI/+mbp+O9Rxuqw8uc0yhR?=
 =?us-ascii?Q?IXj53ijzEQiqQInx1r6QfaNJotkTS6QBW1BtMeDfS5voV8ycHOtG2xWnVrlZ?=
 =?us-ascii?Q?508GkXJPj3mZT+OHS8wixcph+ZsQMiqjl4lV/b4DXjbQUMz/rqrgSPoiHvcR?=
 =?us-ascii?Q?Tt/gJCj0jwQpdAxYJWKVfqWI4RGrFsxPe3Gb8HqUYK07OylChrzla3vzaGpz?=
 =?us-ascii?Q?yIMeFMWzbdDtzWoKgBp5XLx3TQKQEJBGknWAF2BBwsICTUVStKhuzJA9JrtA?=
 =?us-ascii?Q?HjmnUHlIqyU0zb2VjxpdDMiWxSs/vZSl9+lHwhzpuIWGdYPxiZEGQVFwkk1O?=
 =?us-ascii?Q?5983pCHvCu9WPv3ieeoANGie2HBjHm07khw5zWte2rMkkyOaJJ80S1IvmORA?=
 =?us-ascii?Q?Rw37NCfFKpoHUyWwlhnlJCTQ3zEMPjIvfwnngd0HAXEl88hFGZcwIzBT/H6/?=
 =?us-ascii?Q?JO2YxBm3x+dwDUL4+Z2r0jE8T/8oVUUb393MGVvfdptUhs2hL6a/VI+nUhiP?=
 =?us-ascii?Q?BZnO0sq7rP1TpWRJpmw/XdmxaYqu0MXDMcR6WqO96w5r0/RbOMAPJv/Vpwau?=
 =?us-ascii?Q?J1cy4oa2vvJdnDM/QhN5BDAahJKvKOEkh/zsQ4qRHj9hxnWQKVZhGS7z6bzp?=
 =?us-ascii?Q?k471XVomBzYvfR27WgpJNIz0tZIFxfUa23oCj0P79GiTJS87V4Woq/k9hTB7?=
 =?us-ascii?Q?Oig4g5FI0tx3cVMoPMpNjQIxgA+m5LBQ1m/9lp5uTSRXprHhjB8/LqjNDZBz?=
 =?us-ascii?Q?LJabEjMXUpG9Za12m8uxnQ+X4TcRJu18MPQ+mWKCF4sQ3raN/X4Faz4Rf0a4?=
 =?us-ascii?Q?JEyP8DydeuoqbkKztU0cleaJ6XCQD3wZlE4RfuZR?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e57eaaf-a4d6-4ff9-6e3f-08db51da0cde
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2023 04:41:56.3577 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g7YBdOHerO31Ff3K/y9PhS8ONxbselvm1GYVrngwbLHyH4xH4FhOquJezH8a8fHA74hS9PEh90IE/vjaVmhfew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4695
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdcp: add intel_atomic_state
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

> On Thu, 04 May 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Since topology state is being added to drm_atomic_state now all
> > drm_modeset_lock required are being taken from core this raises an
> > issue when we try to loop over connector and assign vcpi id to our
> > streams as we did not have atomic state to derive acquire_ctx from
> > hence we fill in stream info if dpmst encoder is found before enabling
> > hdcp.
> >
> > Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>=20
> The subject implies you're just passing an extra parameter, but that's re=
ally
> not the case. You're doing something else, and to achieve that, you also =
pass
> an extra parameter.
>=20
> One approach might be to have a separate patch to change the parameters
> only, and it might be sensible to actually pass all the
> intel_encoder->enable() parameters i.e.
>=20
> (struct intel_atomic_state *state,
>  struct intel_encoder *encoder,
>  const struct intel_crtc_state *pipe_config,  const struct drm_connector_=
state
> *conn_state)
>=20

Sure Jani will break the patch into two and pass all the intel_encoder->ena=
ble() params

> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c    |  3 +-
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +-
> >  drivers/gpu/drm/i915/display/intel_hdcp.c   | 50 ++++++++++++++++++---
> >  drivers/gpu/drm/i915/display/intel_hdcp.h   |  3 +-
> >  4 files changed, 49 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 29e4bfab4635..182b8815b20d 100644
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
> >  				  (u8)conn_state->hdcp_content_type);
> > +
> >  }
> >
> >  static void intel_disable_ddi_dp(struct intel_atomic_state *state,
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 2c49d9ab86a2..c92b00ceaae0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -800,7 +800,7 @@ static void intel_mst_enable_dp(struct
> intel_atomic_state *state,
> >  	/* Enable hdcp if it's desired */
> >  	if (conn_state->content_protection =3D=3D
> >  	    DRM_MODE_CONTENT_PROTECTION_DESIRED)
> > -		intel_hdcp_enable(to_intel_connector(conn_state-
> >connector),
> > +		intel_hdcp_enable(state, to_intel_connector(conn_state-
> >connector),
> >  				  pipe_config,
> >  				  (u8)conn_state->hdcp_content_type);
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index e1dc3d96e708..c8cdf25914f7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -30,7 +30,8 @@
> >  #define KEY_LOAD_TRIES	5
> >  #define HDCP2_LC_RETRY_CNT			3
> >
> > -static int intel_conn_to_vcpi(struct intel_connector *connector)
> > +static int intel_conn_to_vcpi(struct intel_connector *connector,
> > +			      struct drm_atomic_state *state)
> >  {
> >  	struct drm_dp_mst_topology_mgr *mgr;
> >  	struct drm_dp_mst_atomic_payload *payload; @@ -42,7 +43,7 @@
> static
> > int intel_conn_to_vcpi(struct intel_connector *connector)
> >  		return 0;
> >  	mgr =3D connector->port->mgr;
> >
> > -	drm_modeset_lock(&mgr->base.lock, NULL);
> > +	drm_modeset_lock(&mgr->base.lock, state->acquire_ctx);
>=20
> The return value must be checked and handled for ctx !=3D NULL. Please gi=
t
> grep for examples.
>=20
> >  	mst_state =3D to_drm_dp_mst_topology_state(mgr->base.state);
> >  	payload =3D drm_atomic_get_mst_payload_state(mst_state,
> connector->port);
> >  	if (drm_WARN_ON(mgr->dev, !payload)) @@ -54,7 +55,6 @@ static
> int
> > intel_conn_to_vcpi(struct intel_connector *connector)
> >  		goto out;
> >  	}
> >  out:
> > -	drm_modeset_unlock(&mgr->base.lock);
> >  	return vcpi;
> >  }
> >
> > @@ -99,7 +99,6 @@ intel_hdcp_required_content_stream(struct
> intel_digital_port *dig_port)
> >  		if (!enforce_type0 && !dig_port->hdcp_mst_type1_capable)
> >  			enforce_type0 =3D true;
> >
> > -		data->streams[data->k].stream_id =3D
> intel_conn_to_vcpi(connector);
> >  		data->k++;
> >
> >  		/* if there is only one active stream */ @@ -122,6 +121,41
> @@
> > intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
> >  	return 0;
> >  }
> >
> > +static int
> > +intel_hdcp_get_content_stream_id(struct intel_digital_port *dig_port,
> > +				 struct intel_atomic_state *state)
>=20
> To me it seems like this *sets* the stream id, not get. This doesn't retu=
rn any
> id.
>=20

Right will change the name.

> > +{
> > +	struct drm_connector_list_iter conn_iter;
> > +	struct intel_digital_port *conn_dig_port;
> > +	struct intel_connector *connector;
> > +	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> > +	struct hdcp_port_data *data =3D &dig_port->hdcp_port_data;
> > +
> > +	data->k =3D 0;
> > +
> > +	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> > +	for_each_intel_connector_iter(connector, &conn_iter) {
> > +		if (connector->base.status =3D=3D
> connector_status_disconnected)
> > +			continue;
> > +
> > +		if
> (!intel_encoder_is_mst(intel_attached_encoder(connector)))
> > +			continue;
> > +
> > +		conn_dig_port =3D intel_attached_dig_port(connector);
> > +		if (conn_dig_port !=3D dig_port)
> > +			continue;
> > +
> > +		data->streams[data->k].stream_id =3D
> intel_conn_to_vcpi(connector, &state->base);
> > +		data->k++;
> > +
> > +		/* if there is only one active stream */
> > +		if (dig_port->dp.active_mst_links <=3D 1)
> > +			break;
> > +	}
> > +	drm_connector_list_iter_end(&conn_iter);
> > +
> > +	return 0;
>=20
> This is 95% copy-paste of intel_hdcp_required_content_stream().
>=20
> > +}
> >  static int intel_hdcp_prepare_streams(struct intel_connector
> > *connector)  {
> >  	struct intel_digital_port *dig_port =3D
> > intel_attached_dig_port(connector);
> > @@ -2333,7 +2367,8 @@ int intel_hdcp_init(struct intel_connector
> *connector,
> >  	return 0;
> >  }
> >
> > -int intel_hdcp_enable(struct intel_connector *connector,
> > +int intel_hdcp_enable(struct intel_atomic_state *state,
> > +		      struct intel_connector *connector,
> >  		      const struct intel_crtc_state *pipe_config, u8
> content_type)
> > {
> >  	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> @@
> > -2374,6 +2409,9 @@ int intel_hdcp_enable(struct intel_connector
> *connector,
> >  	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
> >  	 */
> >  	if (intel_hdcp2_capable(connector)) {
> > +		if (intel_crtc_has_type(pipe_config,
> INTEL_OUTPUT_DP_MST))
> > +			intel_hdcp_get_content_stream_id(dig_port, state);
> > +
>=20
> The call chain below already leads to:
>=20
> _intel_hdcp2_enable()
> hdcp2_authenticate_and_encrypt()
> intel_hdcp_prepare_streams()
> intel_hdcp_required_content_stream() (for MST)
>=20
> and as I said, that's almost the same as what you're adding as
> intel_hdcp_get_content_stream_id().
>=20
> So I don't get the point of doing almost exactly the same thing twice her=
e.
>=20

So the issue here is I want to pass intel_atomic_state to conn_to_vcpi() wh=
ich was
called in intel_hdcp_required_content_stream() but I cannot get the atomic_=
state here
as intel_hdcp2_enable gets called in places other than intel_hdcp_enable wh=
ere its not possible
to derive intel_atomic_state.
But I do see the point and will try to remove redundant code.

Regards,
Suraj Kandpa;
> >  		ret =3D _intel_hdcp2_enable(connector);
> >  		if (!ret)
> >  			check_link_interval =3D
> DRM_HDCP2_CHECK_PERIOD_MS; @@ -2486,7
> > +2524,7 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state=
,
> >  	}
> >
> >  	if (desired_and_not_enabled || content_protection_type_changed)
> > -		intel_hdcp_enable(connector,
> > +		intel_hdcp_enable(state, connector,
> >  				  crtc_state,
> >  				  (u8)conn_state->hdcp_content_type);
> >  }
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h
> > b/drivers/gpu/drm/i915/display/intel_hdcp.h
> > index 8f53b0c7fe5c..a6f4bf93f9bf 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
> > @@ -28,7 +28,8 @@ void intel_hdcp_atomic_check(struct drm_connector
> > *connector,  int intel_hdcp_init(struct intel_connector *connector,
> >  		    struct intel_digital_port *dig_port,
> >  		    const struct intel_hdcp_shim *hdcp_shim); -int
> > intel_hdcp_enable(struct intel_connector *connector,
> > +int intel_hdcp_enable(struct intel_atomic_state *state,
> > +		      struct intel_connector *connector,
> >  		      const struct intel_crtc_state *pipe_config, u8
> content_type);
> > int intel_hdcp_disable(struct intel_connector *connector);  void
> > intel_hdcp_update_pipe(struct intel_atomic_state *state,
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
