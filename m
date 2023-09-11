Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A502479AAA1
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 19:51:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C1EA10E32C;
	Mon, 11 Sep 2023 17:51:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0FE010E32C
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 17:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694454683; x=1725990683;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NejlvcbBa3zp8ak0hEysDhjMJ8UUwLw69rKhJTR9Ua8=;
 b=II/H0I0FT86hwjerwyPKqjPZlu25WOXOJPgHmFuZFI0we++7r81u5Jr1
 tBeNgG/UFvgAOCjD5arzKqBLGlY59UQ9/3i/j3opGDH9k5gP9LtZswywb
 G0NahUrx3nme6QR2oMIiaXlhyAAswfZDnEPi67FaRai7646bjWO2O/xA9
 9z4Apvp6QN95tvy3jr5knOWgU1P5f5v/yEPNbdyx3ick0WyZpFHTy17rY
 agBqG+O8ywYCsSY7DBL/8LsKWSxmOsBfoS95xrih0jEUePRtfmKanOLUn
 EPC6HHAH+mv3A8fzr2/B1vjxFowb8MQELpvEZsva4xJCqOPpMUs2OMq8r Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="444591271"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="444591271"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 10:51:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="778475672"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="778475672"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 10:51:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 10:51:22 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 10:51:22 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 10:51:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WyeyoEOLYni1+brkEQrYZJUoUZ4o9ep4y58GBhcOBxLNyACar8LTNUl7UhPwBOvBcMMpquMvCq9yFxMrKlwNk3lcPi2gubEoWu/4MQpnAnnDGDSKv2chthhEmfHNvnBfK3gr6r1GOlpRCRJGiLGapByVPZ3SwS5NjA3i3qzNOZh451GIc+6dR32NRwH+PAj3/84eAkPdmqxsi8O8Dy1hTyoCxV5yi2pj4k23eFGznqeA4hZeqpIfEsMGc9BBMcefrVlNAY2RSVkfHG0pB7bW7AG0wrtWUwcyyM+gvfuaptbJw+NBbZOFW1xTEj0mnxQNaBVRAmPnegF7aT7DykOLSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4nceL+XDqVm9+dN25xywdBkMbx6Xnzu6brgB+NzWGn4=;
 b=U8ITbH4dZMFDkdQO8XPy1i7sZjfWGC9h9KREcKSxvArcEkk28BFVDVSS/H4M96uh9gRda7K3FmMBYfH5vhJlmUUYmTgcwXhTdaj+F7bkAIv0rwS1UL8fjUmWd1WKYUtt8wQ4gmRyZNZNkceM+1wECZbL1rhSYN4WfMOs8+cl7V6XSuNdbXzNqWv+06mf3Exll+yvJj75E9eWq5kEW/LrAK5s6h7HRRnxGu3kjA5sbI4oa75q8x8MUr8q708pw4Jzb5/Xw7jUSzfmYYeAVi70wqnj4iS8/Xh2p1G3xnRE7bhS3vfCz5oiTrKyciUzwXMZi1OE85xS6y5TZj2sl9kl1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Mon, 11 Sep
 2023 17:51:15 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::f525:287c:b2c:81c5]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::f525:287c:b2c:81c5%6]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 17:51:15 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/dsc: Fix pic_width readout
Thread-Index: AQHZ4hDxq5DM2dS/mkOuJpgEOEZuvbAV6gCA
Date: Mon, 11 Sep 2023 17:51:14 +0000
Message-ID: <SJ1PR11MB612990A2EBA3C46F3428CA74B9F2A@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230908045538.806063-1-suraj.kandpal@intel.com>
In-Reply-To: <20230908045538.806063-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|IA0PR11MB7307:EE_
x-ms-office365-filtering-correlation-id: 2d04e54f-2bfa-4cdb-2f93-08dbb2efb1bf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HvJ9eZyUzfwXM1VWAPlhuyxpY9kPCoO1V2+IBLWPDBeJi3sxzKaXMnwy8lcgxumKMLH4by71zqmrVR0nzJIPvTE55MkvkLTqj4fyvHAxurtrUMFmpxP9ypIXYEXLEdyz0UKAxrPdhwIBQmw62bClO67FFyhjMgVztNzd4VDMUyobZY/OO3qzx9hGQXrNjx1g3FMaN0LNhHcPmlQqgDifQaoFckZ3h3gIlXrfEMAmgYR+nBspsc7cyQpTVyEFIVePIvsE3U/4jaX0K++IzctVSCKSMgpE3iuYKQqr9Ds3CcDPkAmHx3g8h+wC078ObblWqY40iP7kE2dwnn9HiRpLBQbgjPXY8cFzmZVq9XeS0eVtmei/OqTPiMvCrMBVV4PEeWsLOJ4z5tQikNH+xkDD4y30Z1rN6fU9/1rFCxqBwF3H/f3vS0RCsWKC46pX1wP5WdmOYD98ENNmP543lVtRUfFQ9t85lwtrLfnDxuPuMGyX8I/GkvoHpoVSVz8wxxLs3ooDDkw+oKKSb7veYyBdDvFtpWvIEFnoe6H0pZDyNJJwIcHh5H/obIM+vDodcF0GrFBELRQnCXYxYrPlHtieHcuiwveakAdlgSFUTYj/Pyg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(346002)(39860400002)(136003)(366004)(1800799009)(186009)(451199024)(5660300002)(110136005)(53546011)(6506007)(7696005)(71200400001)(122000001)(55016003)(86362001)(33656002)(82960400001)(38100700002)(38070700005)(26005)(2906002)(9686003)(478600001)(966005)(83380400001)(52536014)(41300700001)(4326008)(8676002)(8936002)(107886003)(64756008)(66446008)(54906003)(66946007)(316002)(66556008)(76116006)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IeVeJUCbu+VnEWS32/ynx8LBBP8+XG/9EcXow5U/cE1Ln1cW362xZkiO/Avd?=
 =?us-ascii?Q?bCbF9r6cP3KcExZKjrNVHKAbuoB0tqwQtrvh1/KvJ5DaHqCGtTe6ZT0RH1/S?=
 =?us-ascii?Q?7/5QpPRbDyz1UH0lPtDhnZfIT1pVt0mWFORcSyu5xQLUWJautMYiEUK4z+lY?=
 =?us-ascii?Q?5q1iR91U1C9w+cKgx44mM00BpvQ0fVV9ADYVRTVwzSA8WDpRKfK95fr36jwA?=
 =?us-ascii?Q?QjRC3ap4LdQZCSXl7ImPERIkP3VZT9jEDLZ1KwIkY+PXUa13YMQawZxEdIxg?=
 =?us-ascii?Q?cWJuvX2JSAASZzfpDBJk18G85Hwj1oLxKGFH6dqagHllk09Pv8gWhJHJ6C6x?=
 =?us-ascii?Q?Y1ZMYEhLwAnAUuatY4zp0boYZF92WymQVhjNSSNNZ9CtMUJmByPpgr07MuEe?=
 =?us-ascii?Q?6XjXH1gxguSprYS0DPHtHPYw1IFJESW1oDz7FPie56PzRqtfqOsbEfI3lqGg?=
 =?us-ascii?Q?xCkIuC4whV/LLtrG1P94M3DBNK3E47vygd+s6vk0EtfnzeB5dsP+3IBifpwy?=
 =?us-ascii?Q?R9PWHM7d3w6JLkUhv3PZYS/qqDzuT+0U9PmJgwLqu/9B3UZRdlsrA5I7io+l?=
 =?us-ascii?Q?byiuu/xkqgknfoXIsyjvHe0rBzZrlVp4KxHfgu3ErZpUAlqZ88iCOmepyssf?=
 =?us-ascii?Q?+vzCIkcyyagPrB4kptAzg2hJ75kUWQ2QEEx3mocSxsqMPE/6V0WsXB6ozyR6?=
 =?us-ascii?Q?lyovXoilEnF33FBfz2yKClkTJsVkfP06YyTNaiQKqUA4jvIJKS1Y9LnTltBT?=
 =?us-ascii?Q?I1GUfKo4wTsimh6191PH55gbfkpS806dTvnb66eJvVRcYLEm5OjOoEqv6NSx?=
 =?us-ascii?Q?8r5IZ1hOD5WsKfh+hLEOHJzI9W+lVyPkMPJ41WPqTPs6Ucu4jSUD/IU35RFR?=
 =?us-ascii?Q?Ld+iEp1mFvYWvaB7VM98R0OLhHnwgO/hhYAO3eGxU6y93jpLDOKZc5DCZzTb?=
 =?us-ascii?Q?H1R9VVJzSHA9VdnTXSmS2dza6WadL8iTzhsNuc/NXfisyUg2Eacy2dudG1Xt?=
 =?us-ascii?Q?tJXNV39UdT+Q3X2Jn3dCo3yam7SJ/14xme7UPf6LuawX3d4G8YgmRiiQTmDf?=
 =?us-ascii?Q?gT1xj6m3MNZJu2w/wnZOAv/MfrjLrZ8Z8jzVBpZ+Eq0HYFlGDSM54eRObIEh?=
 =?us-ascii?Q?oLW20M5uHXGmmem18Kwu8lyDkjKgMJ55isn8tfEVGYKS75FuaXtRjBewtF3q?=
 =?us-ascii?Q?zUia0TTTQ5rNRw2vp+4u77JAHIgpoKOvWxI9UADbCFx37Zx6rfkSyBZ7k2uf?=
 =?us-ascii?Q?idmLE9ro4DrIZcsdnKDMyhVtJmC/FySuSumoGHOnhjiw17Kd4jl46xPyDu7O?=
 =?us-ascii?Q?SwQ21E7Kwn+mJyIRuFH8YaJl6fZIbca/Cy8lSaAF6+pezZEa6gXm7Sj6aaGV?=
 =?us-ascii?Q?xytP7BiN1LenqISzYwDCUSysaD/crEy8rrP/kVgNj3IZIItBRVtCCuGFsrJd?=
 =?us-ascii?Q?zO+U1FQK+zou8HZVcNsSSpFPrxvthTmSmx7uRtVrpzXOs5nc2+YnqjrTxAyk?=
 =?us-ascii?Q?jUpBohC6YiQJCDGn96tmjLqANwE6HWfVBkQvImebsq1YutSd8UfId2YpmiQT?=
 =?us-ascii?Q?BSXeBBXY7711CnVPap4uUge8ZOccFFKSd1End1lkrpq/xylM6n9QPT6nDBh2?=
 =?us-ascii?Q?JQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d04e54f-2bfa-4cdb-2f93-08dbb2efb1bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 17:51:15.1086 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9SmhE8gpPo0wPfm8nxyiesaoaq0wh9oVpuAnjtyaVLZVAl+6UMYngw9xmGzlWZaGhnhzoM71LaQxKOVy8rvC4jK6motf9s8X0k9nB+jeR1I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7307
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsc: Fix pic_width readout
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

Hello Suraj,

> -----Original Message-----
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Friday, September 8, 2023 10:26 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/i915/dsc: Fix pic_width readout
>=20
> pic_width when written into the PPS register is divided by the no.
> of vdsc instances first but the actual variable that we compare it to doe=
s not
> change i.e vdsc_cfg->pic_width hence when reading the register back for
> pic_width it needs to be multiplied by num_vdsc_instances rather than bei=
ng
> divided.
>=20
> Fixes: 8b70b5691704 ("drm/i915/vdsc: Fill the intel_dsc_get_pps_config
> function")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index b24601d0b2c5..2d4279df9521 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -883,7 +883,7 @@ static void intel_dsc_get_pps_config(struct
> intel_crtc_state *crtc_state)
>  	/* PPS_2 */
>  	intel_dsc_read_and_verify_pps_reg(crtc_state, 2, &pps_temp);
>=20
> -	vdsc_cfg->pic_width =3D REG_FIELD_GET(DSC_PIC_WIDTH_MASK,
> pps_temp) / num_vdsc_instances;
> +	vdsc_cfg->pic_width =3D REG_FIELD_GET(DSC_PIC_WIDTH_MASK,
> pps_temp) *
> +num_vdsc_instances;

The patch need a rebase after

https://patchwork.freedesktop.org/patch/555835/

Change look good to me. Will wait for the rebase for the rb tag.

Regards

Chaitanya

>  	vdsc_cfg->pic_height =3D REG_FIELD_GET(DSC_PIC_HEIGHT_MASK,
> pps_temp);
>=20
>  	/* PPS_3 */
> --
> 2.25.1

