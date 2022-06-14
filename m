Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A4554BBD8
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 22:36:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECDF2112E4E;
	Tue, 14 Jun 2022 20:36:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5253112E4E
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jun 2022 20:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655238980; x=1686774980;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1S+9a7Lqyl3+IjvoAta5qVKQhqBUMSu+1EamX9B+Hyc=;
 b=a7fdby60P9E8fUh/ut0nG+h/lJBaO2OzdwyCsDL9ABLBirTX7mS7roP6
 Aqog60OjoIfgIV8S3wh5guui2thEjTuje6BdplK4/TxrvsLMsX7mNf19y
 RgI8hVrEyn4gbZUtIhdtAwF9mXwEMfqS5baFR7M7HS8MkyTGRtRvdey9u
 mpZ2btBc3VsbgWP+KLtybqe0FAre2Krc37u1DK7RF/uzwgsQ5s+agshfd
 r7ngQQMqPePB+4W9iE2WktV9pyR3ntuDvKKlcGs2V4QlN+UbZvnIBRZL1
 Iw6j93SwvNnLrsNUU2pN6hB11LjKskNNQ4EgdyLmgNPROq6CWWUNG0z4E g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10378"; a="267423040"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="267423040"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 13:36:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="762117014"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 14 Jun 2022 13:36:19 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 14 Jun 2022 13:36:18 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 14 Jun 2022 13:36:18 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 14 Jun 2022 13:36:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dNpRt4622cpGgzu8kdCzo3IvkZPirzpcez9KspWTVz1xJU29nfI4X4NXubzc2o98fV7IK5EJ5iotwJ+0jkUdOoodvAcM6nH6oEYZqJdrP8hPoSapbN8PbMp4CiHqnss2ZZ0LaMlC11ZKlBzRpmJCkl+BoKY7XHU5VMSVaXJOP3+2qHffXVC5VQ+CwK50dx4YKjdWn/nEsH3Tq/K/EeggjVyehV06t4qrWqjvGrm6YzAjxMHlQoOmmoUmyFqnP/HhY90ySMhNLzx3PQQopcQL4rLYu4+x+yK8hK8bu9Nkp2bopvqL7pbvb6q0TaLxdT+0I/UHGT4PlZJhx2gK9sFjuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OypdH/WP/Lm11kcNyiJGeTYx9tvjzhSJ35YG0+Q1MyE=;
 b=WWCmnUxeOCUO1Fk9yfas8xQHeoydy+E66Bt4syYaYmH3jLNszEv7NtrlHvIvo1VM7WpaDzwvJOBpJeqlUeq65h8ctl5lQeBMeTq3syHVicYxKRTrXiijuKNJrv2kxFQEPYp2SQtG1w89jr4h1vnDl72xWvxw2mKCam3aWPx2NIltgSyFjQMPGbvOcL2tJjBFyCfxbJyhHqJ1gTeEwls2Sn3OWy20r+cYuI68eS3akMKYrEl5ZS0LZSLzB6Dvn0VdUN0x0HAsbpV21sRmkkjLYNk2mkYhZifm9QzbKIX14dszUnDU+SR6GiY+PGeGKgQwjvdrgg6yuAK/sSnItGQUkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by BN6PR11MB0018.namprd11.prod.outlook.com
 (2603:10b6:405:68::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.20; Tue, 14 Jun
 2022 20:36:16 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::350d:e444:cb85:a1b1]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::350d:e444:cb85:a1b1%10]) with mapi id 15.20.5332.022; Tue, 14 Jun
 2022 20:36:16 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/pvc: Adjust EU per SS according to
 HAS_ONE_EU_PER_FUSE_BIT()
Thread-Index: AQHYfR7+g5vEx+nmVEK28Hx1je0dWK1PYnNw
Date: Tue, 14 Jun 2022 20:36:16 +0000
Message-ID: <CY4PR1101MB2166FC46D80A3FDE87C2749BF8AA9@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20220610230801.459577-1-matthew.d.roper@intel.com>
In-Reply-To: <20220610230801.459577-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 26ab2c56-da8d-402a-8f4c-08da4e4587ba
x-ms-traffictypediagnostic: BN6PR11MB0018:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN6PR11MB00188B82F958851DFB98B6F3F8AA9@BN6PR11MB0018.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xeU91+TUsK+6Y5Hiwmv2bKAl7eeF7cKT7zrFrKsgIH09dCasLwuMZK+vqyOiI6ULzFLZxCETdfd0q37PvLqt0kgsEzepZjvqeIomDl+hHqDvktQ0gJ1sNQB66t4DruyZJO/W2D3EM+bAGjy9XW8h25xsJHHJc01Mln7K5xtGquJRaHaGFaaF6Xg7Fcq4zbGlTtoK0ws7M6966WUiI0fCQuyr+f06fG+nDgLl9ANbIlXEbWo+Y6Q7yYxpaNHdYd7MfnI+inQLjM2/DP4zi3O6A0e7Smg1A4wom4nFiFkOVWaWzRBTA9dkKF3XWym5YEHtJoO8Rxyne3nvTf9gDqAQEAjeFxMJFwmW9oxFTzOBU91yLnobJk/7g1CDoK9zqtz7b3RnhLjjeedWelu5s5nvhCeTBMlKrur24R0LxWsDh2/9itEEGVYggatywzTCbS09T2G+ejt01XIq7Pt4ZCiVlLZ8r1eq/tlWrRRtJm/HB3T0bX4ES5FqQ1O7sfHcC0j4lj92e2PRWcYL3p5UUXRM80B+gnpA6cA2ZVkxZw5XMilnuux5+ROtkqMLxiCEUhEtHx0PPghBW4zlfu//ihpzfWceAyEiXDTv1mnjfFhHTNkfe22OSUKZdvpq/qAwntYhjPTp/u0VCI2OIBMEub5DN9BDs/wL46FLarWcY68ZT1R2/3/PIawmUNE3LbsaAGK+008gn+x0K8Le5pUX4fZm1A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(66946007)(66476007)(186003)(66446008)(71200400001)(64756008)(55016003)(66556008)(5660300002)(8676002)(38070700005)(82960400001)(76116006)(53546011)(7696005)(110136005)(83380400001)(26005)(86362001)(38100700002)(8936002)(2906002)(33656002)(52536014)(316002)(6506007)(508600001)(9686003)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FF8nacOVEgQ/Imts0HbboReoue48Uqe75X0vTHXO4FNIAmm1e5lfkeeHYFmz?=
 =?us-ascii?Q?Mb7LLOTB02hL7/jADw36RuKZbJv6QoHFKpbe6wJUb/Zp1cGtVNVFgB0KG4OS?=
 =?us-ascii?Q?N5H/T9aXpT33mf9iLzSusWlTA5n2jrlRi9nRYARJ10szeF+iHZlJyNThacxR?=
 =?us-ascii?Q?J9QbuJAnqrmGltzsbqeQSwMxH9Kf1wDHAhtnRu4wJOOc2xLIllCcsa0jrWBn?=
 =?us-ascii?Q?Y6EjJdbaYkJh/5k2lwk6qMHX7/GlLc4zcSd0rkKjSisl+i908G/BsJb3Ro/0?=
 =?us-ascii?Q?vnjZILskkU58oKlCupK0j0z+esdzbXmTWlMLC6okLxQuLFRNqLvy1Dp3/Dtk?=
 =?us-ascii?Q?QCAl1hur042MSecFxPws936elY3TDaAzh5KmryIakYhS7dLCKZ5osTOU67jv?=
 =?us-ascii?Q?R9U1bZZ7C1xj0c/pMYzhQvV3HT5b+QzsEiVw3AOS8ifKORFvGfsQwNv0Qega?=
 =?us-ascii?Q?Cla2nXTWCc55AlutS4oSNrS4/n+yjAjuyhM5cogTPPzNrIhGfwD/N8K1oU1v?=
 =?us-ascii?Q?Vho9q0wihrGA3/J2KBkbWVomPzOPtDYOJgHs9aG12FJYHwExhiE0Y1BfVL0Z?=
 =?us-ascii?Q?i1gAie0uQrYrUn/XdlEve/mNnRLZQcFIHUWNvdaF8rNZj9XuNHLgpJKvkYOS?=
 =?us-ascii?Q?/LCXNHve7YMNHBRhW+akZE2LE2xFMcEhCUe05pzZsfF8tcwK86RTP8nYQDLx?=
 =?us-ascii?Q?81DqTb3hC4rrFDO87E/WBwt8TKWMfVxW+D5sbN8xXhyAbrb3iaHay1H8tG9g?=
 =?us-ascii?Q?fZg0bedgJbjK3v+hrODjzjCkOS+60G5uBU3kPvKPBpPBt/A4J4vPOP6yh0yV?=
 =?us-ascii?Q?9yDt12xhdd5HuzFZn/OPJmCsemsZac4AhYK+tbzxMLtHhGubh1tcFZL3GIkL?=
 =?us-ascii?Q?bD4kEMzyDkgnBe2hDRRt0dKyw+WDR0k+snEltLC/aDauyoHKRuJLcORhhpx4?=
 =?us-ascii?Q?qthVTMow/0g23C8wCw8qOaku0aqUbMuztelH3xR/+h029mXTwIMnLFZ35yrE?=
 =?us-ascii?Q?z1d+rIA1uVBivFFxxzTO3r9oqiL+KoErd2Wqtreem+70K4xfS4h7UY/x6lJo?=
 =?us-ascii?Q?hTZtc4/dkMbVQiK4quPEmmAYJIlMmZ5+Z3UvmJ/gXsXurehbPzWGVX5absae?=
 =?us-ascii?Q?PTmIJi+rCmTxdvr2fr9IC6nIAEuyZv3gOF8A8umDevsrCvix2bGXajwajX2A?=
 =?us-ascii?Q?bGL9/xIIhQDSrBv5Hal/ou2S61Ddn4G5dEBltNrfcyEhEMVd++/vFzbcbjH1?=
 =?us-ascii?Q?h77c1gIDqrDxuG2UhvOSu/AUXWrTA+RjkWZM7bkdNdWgcY3QdyyxyCx0rHU6?=
 =?us-ascii?Q?E2aJ5BpqxoAHDwgCwQRaQ9fN5g9XTfQnW1qEcYdNlQXKR8ozoKHlR+RFfwR2?=
 =?us-ascii?Q?E4Y29CQ2rIjNkhX25Z0jrfrcjyJw0h1WrHURjklYN7+ps0JDfbrQuT6WHFqO?=
 =?us-ascii?Q?pUhI8s0BFItQmv/Hq9oU2l/VQ1GS5TqBTS4sV/vAMKgteW3CwIVu3TbJWwlM?=
 =?us-ascii?Q?pcu3oGt/N74lcWr/Ih2mX4EMNEscOLCSokWaXgSpuqKcmZCIKIVjh6dTfR3O?=
 =?us-ascii?Q?IpE0AIIPbt1xf3m6kwh/ej3drYokIGnrijUY/M9YkZeG040GZcazTyVIoLbj?=
 =?us-ascii?Q?r+7x37dIOPgwej8jvYpIU/etcave62KExPRrWtQdI+fOGmwx+A54X1ESJF8O?=
 =?us-ascii?Q?fw1QOQJu0yGtulxdfmj2mQ90d1ntKYa9vgTchFHJrHP8YbhhZyOaIHr9ypU8?=
 =?us-ascii?Q?djhLYLfPSMqPghLH1W1Mgr3J9qdsFh4=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26ab2c56-da8d-402a-8f4c-08da4e4587ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2022 20:36:16.2894 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X3bjWDISh6w/BLiKcUTADwjc2lVCJ89lWAcmLJCeWnLzDKCJGBhLfTmBG/xLfqJ0GgZZ0c57ru57fCsd2slJuY+4/4NAdbwOsqpUrKBOwPM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB0018
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pvc: Adjust EU per SS according to
 HAS_ONE_EU_PER_FUSE_BIT()
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ma=
tt
> Roper
> Sent: Friday, June 10, 2022 4:08 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH] drm/i915/pvc: Adjust EU per SS according to
> HAS_ONE_EU_PER_FUSE_BIT()
>=20
> If we're treating each bit in the EU fuse register as a single EU instead=
 of a
> pair of EUs, then that also cuts the number of potential EUs per subslice=
 in
> half.
>=20
> Fixes: 5ac342ef84d7 ("drm/i915/pvc: Add SSEU changes")
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Anusha Srivatsa<anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_sseu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c
> b/drivers/gpu/drm/i915/gt/intel_sseu.c
> index 7ef75f0d9c9e..c6d3050604c8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_sseu.c
> +++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
> @@ -229,7 +229,7 @@ static void xehp_sseu_info_init(struct intel_gt *gt)
>  	 */
>  	intel_sseu_set_info(sseu, 1,
>  			    32 * max(num_geometry_regs,
> num_compute_regs),
> -			    16);
> +			    HAS_ONE_EU_PER_FUSE_BIT(gt->i915) ? 8 : 16);
>  	sseu->has_xehp_dss =3D 1;
>=20
>  	xehp_load_dss_mask(uncore, &sseu->geometry_subslice_mask,
> --
> 2.35.3

