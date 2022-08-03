Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A7158887E
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Aug 2022 10:10:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD65711A4EA;
	Wed,  3 Aug 2022 08:10:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2043611A391
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Aug 2022 08:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659514210; x=1691050210;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MhVp5uRyaFRnAt3AjbKM12ZicC3fUY31nIKhxrFptPI=;
 b=NxB/NsqDoM74mXzamikVC7acTuPbpeKfFN6XoOaVPfg2RfnxB2yxuI+i
 8wmqfUp2sY+tJB3NehJLkNzP42BBkd8NbEMiu2EaW1W6lv9xGM1goYIck
 C4q/JiJXaJD9lhiysYNfF9uo+IELJ/ixCXtI6njzle1XaBdxtxv2b4CjD
 avOX0YBx/+e7xkmkhNIpnUQqr896cuCSBJiPNPoUwmqzWvq1hrxfV7aid
 XfRgLSceVPYA5LK0RMIuHOgDdyxc7jGvnUQddrkjhojwwasvzNv+2ERiS
 gln23jpq0kEwVoPEk8HIDju844jp4nYhEkqMwqFCQkBAwoXdyCAGnP56G A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="272663143"
X-IronPort-AV: E=Sophos;i="5.93,213,1654585200"; d="scan'208";a="272663143"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2022 01:10:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,213,1654585200"; d="scan'208";a="692160893"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Aug 2022 01:10:09 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 3 Aug 2022 01:10:08 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 3 Aug 2022 01:10:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 3 Aug 2022 01:10:08 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 3 Aug 2022 01:10:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jz55Jq2qtLN/HGSluAxF6+Gfvac/J3P7tsqnYFwNU030BjXEluMPMtUgbnkD8xEhS0/xhCVrushCziapblNmZoQYe9LJ2G5fI45A+qWZG35R55DuoMOIkoNC3mmAHg6eqMcm7CpbHgEG74UWjHPHsSiud1VB6WCRf9lgEAcuNksN3M5RiwMR+DotnN1nJwbUVEyj2d77B6SxdKlsKVFXwuvytkEFuFo7dVZzo2mzAm/SI6/+6ds0tjuGEMGcVspjO/dCRSXI8lt6OljxxYFUsNtVv1berSDwZUVz3WmNqHi2nGlU0Oqrl8nNA94nXyjHiWRyZiyJgTSILiSY8Utysg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ccVJoGwmxfAnSD6MweyEdh/lH6qDut/bIGe5gsOWCZo=;
 b=KeHrxIhFBNfMGxCnxOsduq8eFHqomoOgjGnJCeQsmdo178ER2x9mM5YlrtTs7vLTBxiJZDWNdaslkEFbpjmg8QDknfu5W45qwLMugbsizeOE94r2PvxBNqL+woIByw2+UCe+c6vZ4VMNlz9YHnG9xGtxQaDSPUi4HvCIMM6nEV32FiwDgN6gTFdaSpyW8hy+Q6DHcQVawSbYXNA8k0b9NYClXVNwUyIVcujdwo/Y8qaRso149Hx8W/2CZFPZQt9leQcXrZ/Q1T3fWlqt3N3mjLXmQ/ccj14GX/b2pkX7WdyOvdo2xZO/CfTucufm7MPv1rkcdgvRxE4Ch3/he+ppDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BL3PR11MB5713.namprd11.prod.outlook.com (2603:10b6:208:350::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Wed, 3 Aug
 2022 08:10:06 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5504.014; Wed, 3 Aug 2022
 08:10:06 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCHv2] drm/i915/display: add support for dual panel backlight
Thread-Index: AQHYlpEZktQKvFQ9bUiTU1p8aggGaq2b1DMAgAEfMXA=
Date: Wed, 3 Aug 2022 08:10:06 +0000
Message-ID: <DM6PR11MB3177F5883A2C9802E538E9BFBA9C9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220602141850.21301-5-animesh.manna@intel.com>
 <20220713081747.1729689-1-arun.r.murthy@intel.com> <87r11yellj.fsf@intel.com>
In-Reply-To: <87r11yellj.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 799deb99-e17f-4dde-941d-08da75279349
x-ms-traffictypediagnostic: BL3PR11MB5713:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 33dS03jeGIat8cR6kCG52JnEuetDZu9iJu+kfudI5CawFRnKkeJwCOiEKohDKn3VJbFCY037vlZEd8fLyccKbOvLlH8WYFCYVU1/K/gduSlWyokp9VsAx0wIdPh5OcdbcpgPk7XfNnr9mdFrfGF/7JjcPv8yuCwx1eR1zSFZ+UFNtEEjst10eawkSPnFzPjMdiGoaD1u/RRR28w493qnukQ7d/MvntZg0ocrk30xLZUecIAaPj3mG18GlKDRrIFUU+BNGttypzwao4RK7OBI21toG44Dd7C1lOII+RaKFdmWl4Ga7HPHSpE3wj2OQ5RbHRN8bxUXGr+1Y2GYSGdzqcO8cGouw7F4us9g/wfFQoAq+XViVyalOCLXJyhKC2F7lJLGj5iLIKS+KkglmPcHWnSrLoQRv9CycTL0vNqWLhQ6ZrP4vTR1kowi6H9i/zAZEzPXsv1IOYvb/j+sGAvO4UMPjV3s8RMBjAI40StEbi57wxBxB/itSvdc1hBUctsBNxUazZlkKLOX0xnzL+CjFEono0u9RY7NE4zPtV62o2KctWlQTg54mpO4ESmLIFBh9jjKUTBY031QsDxu7GAvhrPsZv+Y7qFplv+xym2s5LR2Ql/OHGybgxynORBrCENhog3lQxl7dmXQ9wEzz0Mxa0MSjQo+PIQf19B+cXUf9eOGT7hN81wIQO3l9cngYQMtsogi6eXnbbcYkmwNU7uHq1D75YYdgUVTnFesmM8aQEOtdhjDgtgWe7zgDEqFv5hRhA+PJxF49bJdQO6Rk2zwrfkIaXOVXCpIHj84wLpbxsEMG0f/0WoBRNal/wc5nUZO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(136003)(396003)(39860400002)(376002)(366004)(4326008)(8676002)(38070700005)(83380400001)(66476007)(66446008)(64756008)(76116006)(52536014)(5660300002)(186003)(8936002)(66556008)(66946007)(107886003)(71200400001)(110136005)(2906002)(54906003)(478600001)(316002)(41300700001)(122000001)(53546011)(33656002)(55236004)(38100700002)(86362001)(6506007)(55016003)(9686003)(7696005)(82960400001)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?MHqhPDqbSSWWS+cNNtte8QiCy6solBby3/NKGOIIPUKlZm2xNWJIk4W8tfGG?=
 =?us-ascii?Q?EwP28fxjmaLM7Gx2MP+yey7+Pr6rxoBttRrl1CsnNsDcCAdMINJ2EcPtxbHO?=
 =?us-ascii?Q?k3Xdj30vw7mX3KVW2PYqoZfHsWyYZtSD3rFvTRj4QJzgjTSBe8KxfdZ3yr96?=
 =?us-ascii?Q?OuKAklwh/8wUERBBEuyzNCYKFbGb1yqE53EeUN1htSEi8d3seucVC1wpnf+O?=
 =?us-ascii?Q?+PAckrM0kfD+NyLFz6VHWy2MLqoM+nhZveFkJCPYYzc7frV8y3UEGMwwXvT0?=
 =?us-ascii?Q?65HiidK+E97Cq5bJMfBPVGOaQ34FZYj2DQta9A/M8a1ff8y9YNGp39zVK1zT?=
 =?us-ascii?Q?eaWIY9eQOGGu9Dr2ix2JwXxLbfFSpjPlzEdE9xj2ZoZ55mNQUFUfWCUMOOZe?=
 =?us-ascii?Q?ATjCGf1Jp5xadyy5B2y6/n5U3OPDKA6iqpfKWsEf2XmMpO57P1ccDSzjjn1n?=
 =?us-ascii?Q?Iu5VUMh9UKH2aDDG6d9UH5K5HnUF0Ebs7PEfRtSIRDlH6SKaNld17lP/XB6J?=
 =?us-ascii?Q?aZcEW/QTwT6Fx8BfLz77bXoBO/LkA/IM8g5htWmKWyhdM86aya/QfwfxdS68?=
 =?us-ascii?Q?xjJsqi85G5BYSalvvhnPFDT0Ne9t2U+ECJZaGryT83nI92Lbh6NWNuTXmrs7?=
 =?us-ascii?Q?bMY24MIhnuoqhcIEw900F+cSMVhoAP8UVE3Gi8+OPaY+/quD0IszeFLlI5i/?=
 =?us-ascii?Q?vhTZp/lddGQVgqfCWPKtPs+DCOiqCfkpMbEEWt75no9LdJ8fikRTuhrZQGaj?=
 =?us-ascii?Q?6+rpnc1SESDrTJw09QgN0uI9oJqtt6ecc3MhB8YY8lZrDJbvxpc7F+m26mkK?=
 =?us-ascii?Q?LartZuycOokcgL7F/o+fa1Po63R+DEdbbIHYZPkxn1Dp6WwHG3uvrgbW8ITd?=
 =?us-ascii?Q?MAatpPEbkr3WSCYt9n1tqsH4Yj7wL0dPu91ZqXdiDuz+uj9tYeBg8PzCGndB?=
 =?us-ascii?Q?WvzNmAX7Zt7oQ/S+NsC5K4V9p2IM6EqCUdzL5B94GjF/UcIpbjIkvHS6cyIe?=
 =?us-ascii?Q?lk4BZa4qGtJyA8csxBvXWHuGGK7OxZFZIQpe43PmFU13Ay333sXEoYOSEMRF?=
 =?us-ascii?Q?y78Zy6wAMn/P6nWLIM9CM+F0sej2GbCUkSeUwlc4jecwLosZy3vrlM0o/een?=
 =?us-ascii?Q?G4TXJKBWG98NRs3st8hXCin7bjbQeNZXHhY2p5KAqxN99Mm+AE1sod9ytYGe?=
 =?us-ascii?Q?QV03ADJdAOOSacGYSD/80MfGS4k5oa+xgc6PYNSmdKLRFnv2fQ2U7/MgIbIW?=
 =?us-ascii?Q?F9FPN1vDDcbfR0vCddrKQcbdpBpPumikW12LwH/Wkk5qTwzkXKHFIqt10YJW?=
 =?us-ascii?Q?zs3QNlaG81qY3zWe2RgiekJfF7tINdpYrhtM8e1+oA8IFJy1nCQmYeBlqTBq?=
 =?us-ascii?Q?15URz3EPSo5j2hh9nv3qy2J80xSWuf6AI1BON2wKJBIeiQRJDBqw+9L7wxdS?=
 =?us-ascii?Q?fFvOhZ/vwTpssFU5+0bgoDtbV+ntZMsh7FlS4SgL0F1QQ1FJx1lZAvvDNo1s?=
 =?us-ascii?Q?cD9ZjAgpV/+C0ySQI0XU5OP1tdAdYPGcPXO3Urim3+4dbzQyHqEhCGlZfc53?=
 =?us-ascii?Q?5yln/L7GV8BxFo8+y9uGImNWOfzC1K1lgZ2yTef1?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 799deb99-e17f-4dde-941d-08da75279349
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2022 08:10:06.1281 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ii/zelVgOiXWTDN8MHMwQ3svpxFkyDYjOqrY9r4YnZfqkofN3cVl38KfB5gMUUr4TPyofKsaIBtNwxjQ9ejTVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5713
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv2] drm/i915/display: add support for dual
 panel backlight
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
> Sent: Tuesday, August 2, 2022 8:31 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>
> Subject: Re: [PATCHv2] drm/i915/display: add support for dual panel
> backlight
>=20
> On Wed, 13 Jul 2022, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > The patch with commit 20f85ef89d94 ("drm/i915/backlight: use unique
> > backlight device names") already adds support for dual panel backlight
> > but with error prints. Since the patch tried to create the backlight
> > device with the same name and upon failure will try with a different
> > name it leads to failure logs in dmesg inturn getting caught by CI.
> >
> > This patch alternately will check if the backlight class of same name
> > exists, will use a different name.
> >
> > v2: reworked on top of the patch 20f85ef89d94 ("drm/i915/backlight:
> > use unique backlight device names")
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_backlight.c    | 24 ++++++++-----------
> >  1 file changed, 10 insertions(+), 14 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c
> > b/drivers/gpu/drm/i915/display/intel_backlight.c
> > index 110fc98ec280..1e550d048e86 100644
> > --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> > +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> > @@ -971,26 +971,22 @@ int intel_backlight_device_register(struct
> intel_connector *connector)
> >  	if (!name)
> >  		return -ENOMEM;
> >
> > -	bd =3D backlight_device_register(name, connector->base.kdev,
> connector,
> > -				       &intel_backlight_device_ops, &props);
> > -
> > -	/*
> > -	 * Using the same name independent of the drm device or connector
> > -	 * prevents registration of multiple backlight devices in the
> > -	 * driver. However, we need to use the default name for backward
> > -	 * compatibility. Use unique names for subsequent backlight devices
> as a
> > -	 * fallback when the default name already exists.
> > -	 */
> > -	if (IS_ERR(bd) && PTR_ERR(bd) =3D=3D -EEXIST) {
> > +	if (backlight_device_get_by_name(name)) {
>=20
> This leaks a reference count to the backlight device. It needs to be some=
thing
> like:
>=20
> 	bd =3D backlight_device_get_by_name(name);
> 	if (bd) {
> 		put_device(&bd->dev);
>=20
> 		/* ... */
> 	}
Thanks, Corrected and sent a revised version on patch!

Thanks and Regards.
Arun R Murthy
--------------------
