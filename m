Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE9977DA4F
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 08:14:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31D7810E2DF;
	Wed, 16 Aug 2023 06:14:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7D2B10E2DF
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 06:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692166471; x=1723702471;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Og/fw/6o9lQJeIrMDjsrMuPfDqao3hCh7jxjry9k21g=;
 b=KS9Vz6ijO3KU/wieQcApHU5qlRyvOSfkyJ52pS+N3TL9QkIWY47kKKH/
 8+Jcidrzn6Qs7LoVl8dtCowhi0Y1/U+3lWt+3q2FekSOs1FRMZBJxyqK4
 G96N98DpjRaf2sWJDz+61CgS/jbYZrMeh2ynSbxKKDzoD79tfN5l9spZa
 83kesqt/KtHN4osI08BU6RXGZpIeIR3yjlLKnaw83mLRxopjcSBk017UB
 XE2iyI/AwOR+v4qkzQ/KyoV7bESSJwtBX7BKNfTXgRYmuG8TcWMYHDcGv
 axTbBNLTP9/Q7A+b0HdCbE80KYCNvoPiu0yon541NpqOWHLS6GTwh+cKT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="372449529"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="372449529"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 23:14:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="710995569"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="710995569"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 15 Aug 2023 23:14:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 15 Aug 2023 23:14:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 15 Aug 2023 23:14:30 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 15 Aug 2023 23:14:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FijveGzgEqKVK6W+6wxYcHAY/M0uXnPs8GQyYHENm54A2dnGfqNhPLx8duUAWdIuwq3ji3GuMyQJ5UWr9hEIsdogR05JB/I+3xVjsLA4HDwQWAg+dJITUkgQ10/hhIKyXyKAILnrr/2tBDpTQ7H3tVZ3fDZzKnlwpVq2Tiu9o3DqbdqOuGWOTd5stXvBvfawUE3ELUdV0/hdASV9RKibPdm9qrWDtsGxZWLVVA7q3Ovf/cMyfspeu3JqnwHkxUaDD8wE7ie5YSZIYsBI6h8it4K9A6+EnseyIB6rojesEEjuTf3AVjVXYpkjrTGwJhrLAg3IbWG15wRhz94oSYl3GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3gk0O3b/KXP811n6TaYFaBPrmyz7KsBIDY8XrnguCVE=;
 b=ZGsGCn3kmLlZMeSwxYnAQbZ6miyT5jvaFiD/os1C/mnay0KNLqUMcowJviwvlUSXDjJ7yYHY+cO/J2AT2/pVdjASNF6OYPYxx74MBvz1AurpKRHLlPSixmR9FyWlsZeiGOioynNw5XMaX7dQtMD8k2146SGUhfSgAWcf6wLZC98usetulogv6biP8+TIFmBEPfcQJMKP0U2WvCWkQwL88FxbLgkcfqU666CvXzRrZmuPGgLHudPLC1qYpGI1r63yMqOWV0PbbU8ishLN5YJ0hKLx+xaaCsY83GSUJamJ/fKSLDeXzl/B2ouJBTXohDfFyHDapBOBbbLuinhF+WO3cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CO1PR11MB4882.namprd11.prod.outlook.com (2603:10b6:303:97::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Wed, 16 Aug
 2023 06:14:23 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%6]) with mapi id 15.20.6652.029; Wed, 16 Aug 2023
 06:14:23 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dsi: Explicit first_line_bpg_offset
 assignment for DSI
Thread-Index: AQHZyTuX88jRBTXNmE+A94pYAvDtHq/rzCwAgACr/7A=
Date: Wed, 16 Aug 2023 06:14:23 +0000
Message-ID: <SN7PR11MB6750D24920061E5DDD3F2171E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230807142754.3891787-1-suraj.kandpal@intel.com>
 <877cpwayob.fsf@intel.com>
In-Reply-To: <877cpwayob.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CO1PR11MB4882:EE_
x-ms-office365-filtering-correlation-id: 7b7e0fab-2eb5-4adf-82c7-08db9e200910
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KZcmtnXAI1CEQhUOl24w6oX9gDGnR42XqI8JhXPKqrlsaCvYiY/DeXoUoHQYFOxBARJx140YF9Yw4O+ZxZNXShhfZjdlkrWGwkIl9AnlxNARB9xV8gUtOU4n3iG8whlHfweTyZ+7j7KE26xGOq9BW8h0811Ts11FES9uo/XN4bTZUszCiA+NHKaYqbXRPd96Jeo7lsAPanerXGhfnnP5/YAvY7xPPTmpaZAavwSUmvymzx7uDngK1sAP6XyQwMH8Xbw6XpVuG8lkPGKDeaV5HSVMmgM/kpZUZT0fpb5YUCoXHFv5iVC3TTW1YOnF1EBm40SvUFfsVy/MAo+1G8lQIw+2v2ELjT5cVhIjlp0aatMRCuREFsqJp+vwCcvidcSrT6l+4exxobeoP5Yht7dJo1TRTI/x0XbAr5aZj5Asmi106JYR/D+QdmmE9AUV858JwHPJvfAc1ZIzSgY6ezN32v5+rOfke/Kznm/jgMfDT34flAgDMoR+keJlT179TUhWT4nTWmFiO+ZtSjEj97CX2TKtpdANp3RQyTmkT19wlA91JHbK69JKABdpQ3qO32xQjiouKvnS4/xSuLEDu1aLE3P42V8TUicbGg6UOj3Gp2fh8lFCqt9OihhA+p5+SG+x
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(39860400002)(396003)(346002)(136003)(1800799009)(451199024)(186009)(71200400001)(64756008)(54906003)(66446008)(76116006)(66476007)(66556008)(66946007)(7696005)(6506007)(2906002)(478600001)(9686003)(26005)(110136005)(5660300002)(52536014)(41300700001)(316002)(8936002)(4326008)(8676002)(122000001)(38100700002)(38070700005)(82960400001)(33656002)(86362001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gs1OSy/DETTpjtGwDAzkKujQyvddARPg78PBWLHtycn6477Jk1EZxAblHanu?=
 =?us-ascii?Q?O61iLqwZflHesOSK0h+SQOZTd3xp82I/uqrBwvOn+zwgACf6KXoEt+LWLTU6?=
 =?us-ascii?Q?Y1WkN8YNw/O/NRF0h18ki7U7tTUlhDAjESNRZ5UlO7wnnq+9P6eZsMBz+YLV?=
 =?us-ascii?Q?SlEaoABMXs5LmBn6fWazQdQPl5EnhM/cL3rmtyfnwBH6kZWg9lw6QGcpFm9S?=
 =?us-ascii?Q?A5XXkXigK7DYFPTFuB2rHbNu4kgBjJc80OjWe0nCCPW7fhxFgvKR3O67HJz5?=
 =?us-ascii?Q?YFw5FlVZE8mPhznCEWGNtZlCfWrc8K7rMMqXqHuKdagym9SFDX7zV+AhGUWu?=
 =?us-ascii?Q?H02DM4fdEUb1jaxA5GADD2zw/AkzTza5rwV18hk+BQ//6duPLVDk03L2MmBz?=
 =?us-ascii?Q?mWkTzSisRhGoqj3RLk3kmRYjRx3b9H8mDjrkRJyicFFGcpeAty7GZhtvwCEZ?=
 =?us-ascii?Q?xqpGahFcdWRFB6OPReDbZNUlhjw43ZOAzy6joFcZ8/bsys9Dzo6o5sNe6jfI?=
 =?us-ascii?Q?0s7rNS6Y8LvnEHT/aYBVI4keVUQGxrOsEfP2tHUSoGoLRYPG3tixiSURRtfy?=
 =?us-ascii?Q?G108yhUVOy7sM4NMD0m9T6QiVFanRENR2hyDaPrW1qtkdKjLZ+NnxE7U9esF?=
 =?us-ascii?Q?CLYwX6nUsifx/QZ+HwWWNmv877c6puI2ih97x//okhII0jBGLfLg0Jsah4bI?=
 =?us-ascii?Q?fgccIaNyO/6H1ilp6boKUOhSs21rW34zpKkLV0xEUSgvONWwy8I2Yf5e479W?=
 =?us-ascii?Q?EzY5uwO2RMEJONLHNaIwTQxfUBjQ/jbMbTrFZnMDrjCpbiscbQGW3scB6Sxt?=
 =?us-ascii?Q?eP2wcr7CqEOTWzaCmJt1eSKcZOqKgrlwpnLlQZUlg363V+isrJbe/abB8RG/?=
 =?us-ascii?Q?YAmCCBq35BWSUNgeZ1QVnJDjGFjlYyQ8Z77zJJwNa0osfA2YhRjHV5XzKzbP?=
 =?us-ascii?Q?9Gx39Bc9mdcu4D9iTgEhCkoTpzN6j1znEGnRg4ljPlmAwLVk5DhP4pap9R5v?=
 =?us-ascii?Q?ueW7nrZV8vKofQdXJ6lYBAiCw052zK6KuAH30cv7IDGUUCo2v9mkxkW6DNRs?=
 =?us-ascii?Q?hp32Bf8XKFeWCZeoqIBLS1QBRZo2VUPeCtiIF5gqbb77cfKCELvIWnKgZ/uk?=
 =?us-ascii?Q?XfXu0OcU2AbElDF+z3/Lkei1M2hnH3cshQutGZDWP0Wh/N7zmg625h05MNuW?=
 =?us-ascii?Q?MrmJtb0oNduFanaHz1xEaxWDDpV0DxM4TideQPTzlgNM/4SRDaBl/5PwhV55?=
 =?us-ascii?Q?JWB4Bgc8wx3mK7n5P8VuTyY/t8FtXQpxnTPkHJfYvD8owtwZ4vU8EFB2i/oe?=
 =?us-ascii?Q?0kWW5AyxD7Gwg/kJWsqFmkEOptAlzAXsFVMhwadmJBsKTDXD5w5y6ijVC1dk?=
 =?us-ascii?Q?WLUasplBDE1YQoVDC77LI6tA1X32NU7KZcDvmVIBS6Fi8GfAqRZ84ybypYqe?=
 =?us-ascii?Q?Cotv+BJwasM/GMlo93VQ7Z/pU281IoJq7/tiwmd7ypP7xOLXYMVHrTfujwfN?=
 =?us-ascii?Q?x8MyjwHa1p7tiJ/KS+D5s/JeS1CqKJFhfCibWd4ipbDDZ6SGFKJux9J9giB5?=
 =?us-ascii?Q?biIZKhgGjPNAghfhb4b9fiSSRPZgbAQWIJE8oSmb?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b7e0fab-2eb5-4adf-82c7-08db9e200910
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2023 06:14:23.0817 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ldct1hTMt59aAxe5JBL3ZF6OVCFyX0k3AJUSx0+vUE15zOKy7B2qPeL9u2ti+3xHeUvvamUEpyu6DxKnFGXarg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4882
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: Explicit
 first_line_bpg_offset assignment for DSI
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
Cc: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>, "Tseng,
 William" <william.tseng@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


> On Mon, 07 Aug 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Assign explicit value of 12 at 8bpp as per Table E2 of DSC 1.1 for DSI
> > panels even though we already use calculations from CModel for
> > first_line_bpg_offset.
> > The reason being some DSI monitors may have not have added the change
> > in errata for the calculation of first_line_bpg_offset.
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/icl_dsi.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c
> > b/drivers/gpu/drm/i915/display/icl_dsi.c
> > index f7ebc146f96d..2376d5000d78 100644
> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> > @@ -1585,6 +1585,11 @@ static int gen11_dsi_dsc_compute_config(struct
> intel_encoder *encoder,
> >  	if (ret)
> >  		return ret;
> >
> > +	/* From Table E-2 in DSC 1.1*/
> > +	if (vdsc_cfg->dsc_version_minor =3D=3D 1 &&
> > +	    vdsc_cfg->bits_per_pixel =3D=3D 128)
>=20
Hi Jani,
Thanks for the review

> So, vdsc_cfg->bits_per_pixel has 4 fractional bits, and that's 8 bpp
> compressed?
>=20
> Better describe it that way, instead of as 128.
>=20

Yes would be better to right shift (vdsc_cfg->bits_per_pixel)  by 4 then co=
mpare with 8
to avoid confusion.

> But... looking around, in intel_vdsc.c we set:
>=20
> 	pps_val |=3D DSC_BPP(vdsc_cfg->bits_per_pixel);
>=20
> and we have:
>=20
> 	#define DSC_BPP(bpp)	((bpp) << 4)
>=20
> however, when reading it back in intel_dsc_get_config(), it's just
> directly:
>=20
> 	vdsc_cfg->bits_per_pixel =3D pps1;
>=20
> Are we always sending x16 bpp in PPS?

Yes we are always sending bpp x16 considering the fractional bits also in i=
ntel_vdsc_regs.h
We have=20
#define  DSC_BPP(bpp)                           ((bpp) << 0)
Which in hindsight can be renamed as it has the same name as the one in drm=
_dsc_helper.c
But then again the DSC_BPP macro there is more local to that file.

Moreover vdsc_cfg->bits_per_pixel is being set in intel_dsc_compute_params(=
among other places
but is still being set x16 the value).

vdsc_cfg->bits_per_pixel =3D compressed_bpp << 4;

Regards,
Suraj Kandpal
>=20
>=20
> BR,
> Jani.
>=20
>=20
>=20
> > +		vdsc_cfg->first_line_bpg_offset =3D 12;
> > +
> >  	/* DSI specific sanity checks on the common code */
> >  	drm_WARN_ON(&dev_priv->drm, vdsc_cfg->vbr_enable);
> >  	drm_WARN_ON(&dev_priv->drm, vdsc_cfg->simple_422);
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
