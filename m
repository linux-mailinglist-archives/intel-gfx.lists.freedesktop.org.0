Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 420C5605B75
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 11:48:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A11510E1BA;
	Thu, 20 Oct 2022 09:48:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC54689EFF
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 09:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666259303; x=1697795303;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Mchtwqfqv3yr9UFWPH/g3SOFsanCjTeIOwa3qVBTFGM=;
 b=X+Qk+B8MiuPrri1C+tteRFSb1mY1uTI8SLKVMix7ADZ7Dboj/JQ3SJtq
 IlUZqqmkNwvcgCu8ydaxfwIdFUVG1kP/4OIOo6XDVQhGGOwVo27hl6FO4
 qWKkdjOiO5VsQ9IJvxDyIIHVcLL9gW1OpO11wnnHOEFheF+p/MGI0XuZw
 m0dCHgerE9POjgs8tnhQVRZAzm5WXtgCEeg4vyN7WRHRjh6ZCdkqiSl1Z
 d9O6YgnvdAy2p3faUQwiHUbO5ba80ZH0fQqAJ0Z4Lm0azNZLcHT7pXmoQ
 Yp4WKDgUd1HGoLzNaAHHXq5YPIKgwmxZBfEzmcrDuUeh9jjBpRSH1kAWe Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="286383062"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="286383062"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 02:48:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="874902346"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="874902346"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 20 Oct 2022 02:48:22 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 02:48:22 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 02:48:22 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 20 Oct 2022 02:48:22 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 20 Oct 2022 02:48:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eel+0Xl4jDqBXyE0AiTgOQoXdq7l1+4EoU4Gny8klPyKNH+h367GKWz87wVXXuEGs7iore9M0OLXvzucqPMaWHDXU4xgN2oeR430g5NEWpFnu0GN+09a5gjLGYU6JlWJy6e298PeV3mWtJcjrkJZnGLdXHBrnhNqou2ywOcLkxL4aXqLDD0mtzFVuYmeNXDAoFyTSqgneCXCOIsSrM6PtV0Xmj/v9Yyi+Jg+Zx3n28hPvyDWaWnfX7KZ8D84oHHaWqtfw6Qw+MOVmxNtYZV7C5QprmPseJjuWbFQgV7JzAQ37ZGNpL/F2Z3QjH15KXg9AFTYaIuqSuvmb+CSeNfEpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=78Swouf+YdVZdYOf9i7uax/X4lOJ97gLTEtNYQk+b4s=;
 b=XvsQ3+5vTqDmQBOBEy8028GvoUzJkZvY9MCfQBc2aPcc7cmvcqSSZ5lW2RMFssbGcCYEzC+hI7QKQ7NzgEbeu5XEIM0viY8e2zDqxY6WDAm+rdSW1E6zH97ApdsQSW6XXthK56Dv96dWXxiUGsAEvR57XLG+NkNZizYcfpq5RITh99NEFmzXK0orVhJfhGsdfW+8Z8zCa43k8ZU5+qYk1IPQzHAu7yTL9yFUDlaOKU71Ic3uh5kx1O3VFQpYbF9rCa+Iv5vFmcwHLC/9AfSvpfG46tVdvLP5w01zdUZC8E0y8el8hWvx7Suau4qwBbLAO/O5Lf+RuhbjvliAt5GW3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by CY8PR11MB7314.namprd11.prod.outlook.com (2603:10b6:930:9d::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Thu, 20 Oct
 2022 09:48:20 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::8d08:a767:54b8:7677]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::8d08:a767:54b8:7677%8]) with mapi id 15.20.5723.034; Thu, 20 Oct 2022
 09:48:20 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915: Removing one use macro
Thread-Index: AQHY5GV0/GwkGEHhpkeomSDT1pcRf64XBmyAgAAAziA=
Date: Thu, 20 Oct 2022 09:48:20 +0000
Message-ID: <MWHPR11MB17419A6372C3C39271D84FF8E32A9@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20221020092049.857144-1-suraj.kandpal@intel.com>
 <20221020092049.857144-2-suraj.kandpal@intel.com>
 <Y1EW6TdHhpZ4YqHk@intel.com>
In-Reply-To: <Y1EW6TdHhpZ4YqHk@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1741:EE_|CY8PR11MB7314:EE_
x-ms-office365-filtering-correlation-id: d1fb3a22-fe6e-46cf-d9c7-08dab2803893
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WuHnbdIWkmORpflNwj5rkc2vre7hEY2lyJX8ErlIVmInTvUsniuNOSFmJ7pow73+JfCHJhVYBuBiPr1t2f0zurrIL6YH33FbU9VClMHhsRYH4DBkIGLCTv9iIBiBMvAdz+1vCX90VDCwrYs41qlcNb40fq/rJ6IOrzoPeZjH13SZHUczAVFLWibfCGxiV28EdYpu+t5P3cvGn2fuqF6Hvuzm2UuhZ3vd7ydFLPcpHSAqoGerOVRKII+cL1nbTcjlWxIPqeVuVN7cIb21J+8oabx6mQCUY6P0c0ItravSY6yGlWJyTVTptaHc850V3NX/cU/tXCM9122ofIge+p6O6xvjLDsdE7Yvu1rzGZWOPwrieFROZo6suTArnpic75UoqjQMh+xCzdJ+FbgKaTq4VuyziGbvYpw9LbBypDrIJeopcNdeDvczAkk93dJ5OLs5HAbbGgv4NLKxyX1RDYTy/lux8ewReqZpEQXNrtFlOfmJuFQSsL0BuTYhZ1po1yKHsgvT3r3fJnxz7UNXpm5OvkVjx5yafJp38+mTw4MVzA3QNfUNxfzbgb8/YmXdpF7mumHU/B48fsilDAUHjjyMoiVNhPf8KzezoncwETS0mCDpGjN/TNIcNtZLnQ2kqFx35PqfqWcTiGBMQGwdu/c9ZydLWkJkisoHT4hNCSpU7d5KQyKK4/M9zaKTh7gs41Wo/7/13XKdWS+UxQq7PgSwtBzduwyjO9rDtwrxD3dr2DitSCxTlcg5G5exkhcKaW5+nd8YNKIas+TYNDt3HgQtgw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(346002)(366004)(396003)(136003)(451199015)(41300700001)(9686003)(4326008)(66946007)(66446008)(64756008)(66476007)(71200400001)(76116006)(6916009)(66556008)(38070700005)(186003)(54906003)(5660300002)(82960400001)(38100700002)(7696005)(122000001)(6506007)(8936002)(55016003)(2906002)(52536014)(33656002)(8676002)(478600001)(86362001)(26005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?2MdnKpw18hLnjfU7AUOCkyb5pdju+NKHkuzjY7Txo5et7OkQUVm4Sf7XNh?=
 =?iso-8859-1?Q?WB1bdUcHWkiQ6P9YVtkB4aLyYmGcVaPABmuGm3NXLdIgd6YN+SLF7/LpXl?=
 =?iso-8859-1?Q?rS/DiPGMkSmasNGasJ7rKK8gFTKe90lJVPhyYoFx5knJOCZLwxSDQb+/Bs?=
 =?iso-8859-1?Q?s9h3CYnrcW4CCjpkAloDIoRgdVcNA1rDRI6vMcheDUXxiJw995buObHsF+?=
 =?iso-8859-1?Q?wLqOBI6PdtJ/GItX0lj3hybSzBRVc0ZjB3D/ko4Xs6MwZB1H9XWZZdDMEm?=
 =?iso-8859-1?Q?Zj2+RUX709en0e5WnsKpNJoi0hGZlyWO/B1/zEZ/fYW1Ahlr9DmbkcvBpy?=
 =?iso-8859-1?Q?v8MnLwSvZ+Xqvhv93pMjZ0qUxKI2epvFNyya4wiyg/2uTdV+VhW0Th7FFW?=
 =?iso-8859-1?Q?KJvVR6eJsXDYy/72+QedjV7JtfQO6RtLzc66DQiQ6KaX0PKZEnr11VymvC?=
 =?iso-8859-1?Q?nObn71BdWDqsjvGOLxzGLHbHe1ieCXGo1+AedIKWAOS9fio2l6iXycnwgF?=
 =?iso-8859-1?Q?iZiVaomhA0qln67UG25UTgRrGHSW0qkKyFH3bt3xddi6TDeiH+Qj76/kYP?=
 =?iso-8859-1?Q?OPYiuLGZ1UGPZsB8AbauWILkb8Uvj6ELBxXwnMosOtdw/BF7vmlZZ25Ryo?=
 =?iso-8859-1?Q?8YAocVLWT60cRXcTAmNHZ8MTXHPDy7Xd66+PTl1bzzJ72ywCwmLe3Uy9t7?=
 =?iso-8859-1?Q?AgRFDK19dtCtd2p8dsNW9qF1EjQr6hn40YRpPnuSOy5ziL412pxQzCnboI?=
 =?iso-8859-1?Q?CGiLLc4n8OMx1Obggrt/rELQLdI2F5KrKrSXlGU82ufOp8qVWutxrMn8b/?=
 =?iso-8859-1?Q?d4JwSqF+ekPadzqWF2uoXd8rlrSM+80eZrBMOU2rfvVp7b4fyxG/Spb8qR?=
 =?iso-8859-1?Q?YG/wdSOBRKwR6oWGxTdysHT1ltKZob0OgxkfG6sq6ZWXLDQWO51ktda3Q4?=
 =?iso-8859-1?Q?2sYAipnuKIp/FHzX7NCBmAi5PxPSLah9JObuUVDo4npJaK/cy3xUyQMaaA?=
 =?iso-8859-1?Q?qO3eVhNnR/HJ5Jzuy1Wg3++tkErpfAg92kspbU/G0Xm/mup/+GVcaja7uk?=
 =?iso-8859-1?Q?ferBxGN3sqNzNByy7b9dVRsc7VO6ngcrE7hILhz+lttdKG4jiYoT/CnqRH?=
 =?iso-8859-1?Q?nhk5YN6k+QDmjXDS6EjqhUroxhFcpkuLAZ1idzvYJw/Qkb2bc928nT7guV?=
 =?iso-8859-1?Q?2Z4NJXfSJ8J7WfmnILBL2t98ELNHMng8QpZRtrq9pXG+b0nO70BWRLWGi9?=
 =?iso-8859-1?Q?aNLum5t99pvhSoHtYGEFZ3bSw9G2kVu0HV4ZhgNCA58ieHI0AS4hLHxAen?=
 =?iso-8859-1?Q?aVoW211jUJqrDjVskVn8enPpK/UIkb0PQ6l9qyiSRw8tdyaPOSrCggpMLO?=
 =?iso-8859-1?Q?pjm6aXs+5Sq66Qd+u7TiIf80oi14Urj9yj95EQGjsOpuhl37/Rv112C1Ld?=
 =?iso-8859-1?Q?rV6kTMCLFcSAjpp9yH6lMPtMJIUY4KrsFw6XDi2VV3aDOlOXTOhvtl31GW?=
 =?iso-8859-1?Q?xUD2QyeyvLGDXxDRzFG5Gjf8ioj5qIEfKVevsjtty9/S3x7Bjg/h+A8B1E?=
 =?iso-8859-1?Q?ac4y8yfsDtFm7Iwgt18lFzVVfVKGhWa8j5YOQDNHgUtfkeZD7CAcVABs+N?=
 =?iso-8859-1?Q?yykL7kK1LrqcMqUbpZ26Zq/J2ezYFrjoA7?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1fb3a22-fe6e-46cf-d9c7-08dab2803893
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2022 09:48:20.0493 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LAo8wbjYJP1UX03wtaV5zg0CqcoGsCSIse+MKE1PCqQG4k/BXn9ymT8hWaA/N2Z7r5zmYfIuFq8ctnWGMv6DpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7314
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Removing one use macro
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> > b/drivers/gpu/drm/i915/display/intel_display.h
> > index 2af4a1925063..c803330a276d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > @@ -469,10 +469,6 @@ enum hpd_pin {
> >  	list_for_each_entry((intel_encoder), &(dev)-
> >mode_config.encoder_list, base.head) \
> >  		for_each_if((intel_encoder)->base.crtc =3D=3D (__crtc))
> >
> > -#define for_each_connector_on_encoder(dev, __encoder,
> intel_connector) \
> > -	list_for_each_entry((intel_connector), &(dev)-
> >mode_config.connector_list, base.head) \
> > -		for_each_if((intel_connector)->base.encoder =3D=3D
> (__encoder))
> > -
> >  #define for_each_old_intel_plane_in_state(__state, plane,
> old_plane_state, __i) \
> >  	for ((__i) =3D 0; \
> >  	     (__i) < (__state)->base.dev->mode_config.num_total_plane && \
> > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > index cbfabd58b75a..31ce4ac4059c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > @@ -205,12 +205,22 @@ static bool intel_crtc_has_encoders(struct
> > intel_crtc *crtc)
> >
> >  static struct intel_connector *intel_encoder_find_connector(struct
> > intel_encoder *encoder)  {
> > -	struct drm_device *dev =3D encoder->base.dev;
> > +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> >  	struct intel_connector *connector;
> > +	struct drm_connector_list_iter conn_iter;
> > +	bool found_connector =3D false;
> >
> > -	for_each_connector_on_encoder(dev, &encoder->base, connector)
> > -		return connector;
> > +	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> > +		for_each_intel_connector_iter(connector, &conn_iter) {
>=20
> Bogus indentation.
>=20
Hi Ville,

Will remove the bogus indentation.

> > +			if (&encoder->base =3D=3D connector->base.encoder) {
>=20
> Still using the legacy pointers so not great. But I suppse it's still bet=
ter than
> before because the horrors are now better contained in this file rather t=
han
> in an official looking macro.

Any suggestion on how I could make this better or should I go ahead with th=
is
approach for now

>=20
> I do have some work in some old branch to get rid of the legacy pointer
> crap, but it'll probably need a rewrite by now...
>=20
> > +				found_connector =3D true;
> > +				break;
> > +			}
> > +	}
> > +	drm_connector_list_iter_end(&conn_iter);
> >
> > +	if (found_connector)
>=20
> I would make that a pointer to the connector, then you can just return it
> directly. And as a bonus we don't use the loop iterator outside the loop
> anymore, which is a bit questionable in general.

Ah got it .

Regards,
Suraj Kandpal

>=20
> > +		return connector;
> >  	return NULL;
> >  }
> >
> > --
> > 2.25.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
