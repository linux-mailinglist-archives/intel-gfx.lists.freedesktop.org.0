Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2AD605954
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 10:09:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25B7210E375;
	Thu, 20 Oct 2022 08:09:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5C1710E43F
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 08:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666253347; x=1697789347;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ssAHlyqmrtVvEKsXXjsvYwk2VdlzrMDz8yEPWCQ1Bek=;
 b=Hr8krQS2zoucPdyBjrqQQwXuJ7s342DPN0ORLdNmfUYzG3HoIBSzDMwc
 C8aERjD4PUKnDkbo6sTV1MeM1s/WSPnkBV6ZIwmbuQ5Bpqb2k9Ys2mm01
 DB8J7uqSmNlFEAtxKe4Ugfud6gUwftyhrEzC0N9+fgFuNuLbyfL0e8iSo
 oq+U2HvVyQ4BRV6QFqoGc6/TShWG/qs4m4cvQUe7kC5Eqa4XPfE8SCJwN
 qopP/lypUB73U0RYOApqfcDcqk99htr3bmm26fwuFHzRFJTyzg3If3Y2W
 hCTmFRfxZTdaM2fxMrSgLWlihf6uAhUS11IvTFUG2AwRphtSxgdpzUkLO g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="287042447"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="287042447"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 01:08:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="734680509"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="734680509"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 20 Oct 2022 01:08:59 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 01:08:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 01:08:58 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 20 Oct 2022 01:08:58 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 20 Oct 2022 01:08:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ap8jXEVMIj8MLrTXIOJ9bIseUbJA47mUuVoNOo7uWQ649q7aFCKGw6VQtX/vUHd/IXteADLv1KQmsYg84fWGUwU+UIXT/m6cng9vDtkMk9b3OI6buiHJlM/104adZwgSKFG+vB9McU0ij50Ng+3nbEWQQkvhQkpw+Kn1DVHLPANXKns8d8VMUwwajHjZxgoztVZ3Wx5GGas12xSYH2KGvRgND+5XwlpC4nwKrn3TTKyVpOTENrHAB1TFGiUnqugpT+Um7JmzBxWpc4C+KspOBRX4EbwqzcmkYrxaR+5uxl8WbvyzPhktj9OBpAD0+qrwutcrFk1OAI3QG2MzuDdSRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nR75MzYBj4f2iP5ZmgTljujs1OKpBzUzlaLFcYUJi5A=;
 b=VHZ34n4w0gqzNWMoeJ4yVUZNUu71QKQnMIzAcH6SjyU/oOMGFOm6OtlaL713xquALK0vH1Pi7v+AQ2izZfJh5iET41a/8tcLQFEP6JacjMpewRUxkGobgZ3vLgK+mxu1nhtTkEQmlHNtlje86qlyqJL78o7pNu6Oja8KpXVyXklnnVKC3Adi8tF0va0PhpYMppfyla4wcafnfQyCg3yZ+8mEmymxPwXY8qpL1jWWVrhlKM1eqSxNHf1vfLGZMsZo7q0trnSdhkt1O9npWMlRi21B3qvZdxFJBzXnkeeyuj5Q2lCrsH5VZIdkz4RhiRQ2Spk5YKWHX1KohHxtcPY44Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1741.namprd11.prod.outlook.com (2603:10b6:300:10d::20)
 by PH7PR11MB5958.namprd11.prod.outlook.com (2603:10b6:510:1e1::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.30; Thu, 20 Oct
 2022 08:08:52 +0000
Received: from MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::8d08:a767:54b8:7677]) by MWHPR11MB1741.namprd11.prod.outlook.com
 ([fe80::8d08:a767:54b8:7677%8]) with mapi id 15.20.5723.034; Thu, 20 Oct 2022
 08:08:51 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v6 2/3] drm/i915 : Changing intel_connector iterators
Thread-Index: AQHYzCijSSn1TEteKkSv7gN804VTya3/srMAgBdqoYA=
Date: Thu, 20 Oct 2022 08:08:51 +0000
Message-ID: <MWHPR11MB17418451B1D7D2C2B23D14A0E32A9@MWHPR11MB1741.namprd11.prod.outlook.com>
References: <20220919130505.1984383-1-suraj.kandpal@intel.com>
 <20220919130505.1984383-3-suraj.kandpal@intel.com> <877d1esgtt.fsf@intel.com>
In-Reply-To: <877d1esgtt.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1741:EE_|PH7PR11MB5958:EE_
x-ms-office365-filtering-correlation-id: 605fc6b5-0f5a-4e8e-da36-08dab2725317
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ju2HqlWz68AbUala0ifehcGkwMs3vpDUjqW9UYltHQJS4EEvTDvCDY+qCadocHX5o5N/dyt16R5WIA0bowJ3Hsp/sg0VojDovk/N8lorhQaeqiYal+YlxaqH9XwhREGSsv+t2gJiMZvpqTSvmtSSMfUDlkRJkNO4tPkuq01NOp7if7KYhqf+OqX/GJhnMKOhlz5XO66+rij6JL7Ffx53KhizEEFWC1RK4DrbiuAzy2K6+hAd6TGgLdOwHgjeaDSI0BrLfOGBuN8/kBEz2E1EbRlclPmnTT3BJ4ja644uvReZijTgk7I0v4xU49E27TyXDCdhMLYTczhwlVDP/X+UBIZu8AzR66h6SWF1ZX8GEm50tcpr6kR2Aal5lce0gf2vhsH6xvBXUDJl3Oj94L31SDg6Q143yI/VhKtir+/Qiz9g/H1Y6lZe2ZSKycS/hhm1myVYwOfNDDvYDFyW3UgwpLn9vtiydtiV2NZUpJgJprkCSjiKByJ3/4ki12nCvyoXzTxbcioykaEqEJHJJVRpy1LEkxaKM3bBRHaxhdFiqIUItDrgQwE1TObp/+55cgcfwTCXakcoN13x+PvLJ2BDeiC4i6/ISLBDd6wbHxV+HyJV1rc/cUVEcsuURUxTyN0wcV9qzI097zWxV5UwooI8al959dvCGG6VK6xtRAOb1mcCi/IC/RGH0Dk2VYdVMj3FooGYG6yfLAMGysqqQjMFdeU0QcCQcjlaFufETShAIDYdHYO9QKa8EAG7jhmWGzQiYs8sf8WNBQIZDaCfiKkOAw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1741.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(376002)(346002)(39860400002)(366004)(451199015)(52536014)(66946007)(64756008)(38070700005)(8936002)(8676002)(4326008)(316002)(66446008)(66476007)(76116006)(66556008)(86362001)(82960400001)(33656002)(41300700001)(5660300002)(2906002)(38100700002)(478600001)(6506007)(26005)(83380400001)(54906003)(110136005)(107886003)(122000001)(55016003)(71200400001)(9686003)(7696005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4uvfF68ly8fSRoApsbh8wZcXBev7yCMfGmxiCMwkQa3esA9JIdXq62Yivtwk?=
 =?us-ascii?Q?zmCxUI/GYlfJ4kO22oNKf7NgSi2brE553NsBGzTJXc9/q5rvTO5mnG9S/lIR?=
 =?us-ascii?Q?p9neDRxuh5GoNFOR5VKdUIEmZTqRvNyEa4B88AuvP6Migdth/lBN6G9+nU9H?=
 =?us-ascii?Q?g9Aaio5fvgm1wdi02ydioFRtj4eoptQ8FSk9qaOmCf1Ej9SVAeHxr15+K69s?=
 =?us-ascii?Q?N4x1KAZIFnrgo8G1NdNhBcQiel9PfTtkaqteJlXsgrtLhP91jzAOQicdiial?=
 =?us-ascii?Q?BSgMPhp420jJBtg6lA2q+kUwLOhpxKMBKgVRjFQakQY8K6D+VBDPcTKItnYY?=
 =?us-ascii?Q?EDyUtJz6nBfHS1Cog4I3Qe4p7Lbx0HeZyyQV7YvjkftKQLPvrya5yT34qVIi?=
 =?us-ascii?Q?wQww0gspqQEVVx+vnzoYSDNFwEvC9h8wJCNtlCOJys53SZmxI898MKmXc4tx?=
 =?us-ascii?Q?D/a6lyJ+z/sn/xoT+2SrVoAcjwFuAGgP9yrQA5VbxhX9SNF5JSUlkFyzmQdi?=
 =?us-ascii?Q?WU95GSGtMtCyXAgSNtMtLV5jxt83ScXtVMrMaYO4RntkaJwFl07S9VURkXy6?=
 =?us-ascii?Q?UrD/uKgB3MTOQWNVazLE1Hc5qnQXYooIw8kDOvk1i3yMCi1LlBTG/5RXbK+Q?=
 =?us-ascii?Q?i7pCcH/3s2bLYev3fXR47mxngwFEL5bjwvzVccZ9rKdcj//Ir/ZJJdKwxocA?=
 =?us-ascii?Q?X9YNirKlOh1B4ATw9sq2/kIb9jInvsi1KpAktINu1//zzvNKSkDyoTLgeDGI?=
 =?us-ascii?Q?fmcf3DzU6XqZhdoFmRovLvQVP66JSquPxH8mitSeaMjBwGi0VGuAxT3pSilU?=
 =?us-ascii?Q?QNh5Z6hu6YDqxM8z9dwGLXZDr1UO+r5wiq41A1TYBrE2O3zduqlxTqU3CcHb?=
 =?us-ascii?Q?4KV0pUkW8yC40XxYoAziwhYCU61YyBEnR/CYIuLY26DIE3yV+V2zR56Q8rkE?=
 =?us-ascii?Q?tQS3WaSerne7/ryTVyjHM0AuOhrmEl+GQMSXihHzytolmf0Eo5eRPg201ImY?=
 =?us-ascii?Q?pU4fII9+xhzg5isn5Lw2J3PB20BNL80SEkzVCtACsAkaZoV1bvwxwNG/P1fX?=
 =?us-ascii?Q?VpJrXNt1thfrHkI1drjkx73zv6cqjyg0pfwX2+SBL/XXOhyTVnLVFzzKtnA4?=
 =?us-ascii?Q?XjZ9cKiCXEyisIeufa9HjcrZeUrp9xvWesZF/6wvJKZysFCRYJSJA99gAks8?=
 =?us-ascii?Q?ES71OW+XST0odvMmK0qxKgG6xwFdcUgPkL5MHclGNX9UubN8K+Yk+fyRWe3W?=
 =?us-ascii?Q?6MNXHJXQH0nyWjE+DXvxhVzL5GUqQNqL+VJUkmXFpFPjEo9p//rYp3ev84kC?=
 =?us-ascii?Q?lskUrtrF2h3W+p3lAjrSHB9t7r+khl1eQnlPbXuJIllfNLUZj/o/NIciaE74?=
 =?us-ascii?Q?ffliiXu+omz6scZcFvpY36Nfc1AnXCZvvre+lpahbkBnKdo3P7k0x5rbjW+3?=
 =?us-ascii?Q?GlECroHTi5E2VV43mZcAtZjT8FZyekR8ylE75LVUb58QG5S/Fw/VZ3iZq6Us?=
 =?us-ascii?Q?XlSakNTwdiHhfSVKOG3S5SlbjPpKypDM8lOc8iwS1iCHnuQs3MGAvA7YvNvd?=
 =?us-ascii?Q?TCQ66ObF5tIabFrTtH618aEbZhdMR5DbPORDfw5F?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1741.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 605fc6b5-0f5a-4e8e-da36-08dab2725317
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2022 08:08:51.5965 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fxM9D8JRdMW4vXncO7aYdY1H3jG7BxzPGs/JgHesXzvfQaU/iRhUPwL021tU30B/xtTHpQEw2mfq/o5AUr1qNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5958
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 2/3] drm/i915 : Changing intel_connector
 iterators
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

> > diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c
> > b/drivers/gpu/drm/i915/display/intel_acpi.c
> > index 9df78e7caa2b..912fe5c2ffe5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_acpi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_acpi.c
> > @@ -349,8 +349,13 @@ void intel_acpi_video_register(struct
> drm_i915_private *i915)
> >  	 */
> >  	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> >  	drm_for_each_connector_iter(connector, &conn_iter) {
> > -		struct intel_panel *panel =3D &to_intel_connector(connector)-
> >panel;
> > +		struct intel_panel *panel;
> > +		struct intel_connector *intel_connector =3D
> > +					to_intel_connector(connector);
> >
> > +		if (!intel_connector)
> > +			continue;
> > +		panel =3D &intel_connector->panel;
> >  		if (panel->backlight.funcs && !panel->backlight.device) {
> >  			acpi_video_register_backlight();
> >  			break;
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> > b/drivers/gpu/drm/i915/display/intel_display.h
> > index a1ed9c82e2ed..102bf7d47ccc 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > @@ -52,6 +52,7 @@ struct intel_crtc_state;  struct intel_digital_port;
> > struct intel_dp;  struct intel_encoder;
> > +struct intel_connector;
> >  struct intel_initial_plane_config;
> >  struct intel_load_detect_pipe;
> >  struct intel_plane;
> > @@ -469,16 +470,12 @@ enum hpd_pin {
> >  		for_each_if(intel_encoder_can_psr(intel_encoder))
> >
> >  #define for_each_intel_connector_iter(intel_connector, iter) \
> > -	while ((intel_connector =3D
> to_intel_connector(drm_connector_list_iter_next(iter))))
> > +	while ((intel_connector =3D intel_connector_list_iter_next(iter)))
> >
> >  #define for_each_encoder_on_crtc(dev, __crtc, intel_encoder) \
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
>=20
> Getting rid of this macro should be a separate change. As the first patch=
,
> could've been merged already.
>=20
Hi Jani,
This change has no dependency on the last patch  as the only place this is =
called (intel_encoder_find_connector)
Is also being fixed in this patch itself so creating a new patch for this m=
ay not be necessary

Regards,
Suraj Kandpal
> >  #define for_each_old_intel_plane_in_state(__state, plane,
> old_plane_state, __i) \
> >  	for ((__i) =3D 0; \
> >  	     (__i) < (__state)->base.dev->mode_config.num_total_plane && \
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 633cacd79074..a2d294929a64 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1498,12 +1498,14 @@ struct cxsr_latency {  #define
> > to_intel_atomic_state(x) container_of(x, struct intel_atomic_state,
> > base)  #define to_intel_crtc(x) container_of(x, struct intel_crtc,
> > base)  #define to_intel_crtc_state(x) container_of(x, struct
> > intel_crtc_state, uapi) -#define to_intel_connector(x) container_of(x,
> > struct intel_connector, base)
> > +#define to_intel_wb_connector(x) container_of(x, struct
> > +intel_wb_connector, base)
>=20
> Note that all of the macros here are sorted alphabetically.
>=20
> The wb/wd difference is a pretty bad eyesore. Maybe we should use one or
> the other, not mix them. (Except if we go with writeback, leave the regis=
ter
> macros WD because that's what they are.)
>=20
> >  #define to_intel_encoder(x) container_of(x, struct intel_encoder,
> > base)  #define to_intel_framebuffer(x) container_of(x, struct
> > intel_framebuffer, base)  #define to_intel_plane(x) container_of(x,
> > struct intel_plane, base)  #define to_intel_plane_state(x)
> > container_of(x, struct intel_plane_state, uapi)  #define
> > intel_fb_obj(x) ((x) ? to_intel_bo((x)->obj[0]) : NULL)
> > +#define to_intel_connector(x) (((x->connector_type =3D=3D
> DRM_MODE_CONNECTOR_WRITEBACK)) ?	\
> > +				NULL : container_of(x, struct
> intel_connector, base))
>=20
> Would need to have (x)->connector_type, with parenthesis.
>=20
> The problem with this is that we currently have 131 uses of
> to_intel_connector() and practically all of them expect to get non-NULL
> result.
>=20
> You're going to get 131 static analyzer reports that you don't check for
> NULL. You can't check for NULL in most places, because they're in the
> middle of local parameter initialization.
>=20
> >
> >  struct intel_hdmi {
> >  	i915_reg_t hdmi_reg;
> > @@ -2069,4 +2071,26 @@ to_intel_frontbuffer(struct drm_framebuffer
> *fb)
> >  	return fb ? to_intel_framebuffer(fb)->frontbuffer : NULL;  }
> >
> > +static inline struct intel_connector *
> > +intel_connector_list_iter_next(struct drm_connector_list_iter *iter)
> > +{
> > +	struct drm_connector *connector;
> > +	bool flag =3D true;
> > +	/*
> > +	 * Skipping connector that are Writeback connector as they will
> > +	 * not be embedded in intel connector
> > +	 */
> > +	while (flag) {
> > +		connector =3D drm_connector_list_iter_next(iter);
> > +		if (connector && !to_intel_connector(connector))
> > +			continue;
> > +
> > +		flag =3D false;
> > +
> > +		if (connector)
> > +			return to_intel_connector(connector);
> > +
> > +	}
> > +	return NULL;
> > +}
>=20
> This gets pretty ugly. I've got an idea, I'll send patches later today.
>=20
> Code is worth a thousand words, it's easier to explain that way.
>=20
> BR,
> Jani.
>=20
> >  #endif /*  __INTEL_DISPLAY_TYPES_H__ */ diff --git
> > a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > index cbfabd58b75a..e1a90331c230 100644
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
> > +	for_each_intel_connector_iter(connector, &conn_iter) {
> > +		if (&encoder->base =3D=3D connector->base.encoder) {
> > +			found_connector =3D true;
> > +			break;
> > +		}
> > +	}
> > +	drm_connector_list_iter_end(&conn_iter);
> >
> > +	if (found_connector)
> > +		return connector;
> >  	return NULL;
> >  }
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
