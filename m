Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A107EA885
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 03:07:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54F3C10E1A9;
	Tue, 14 Nov 2023 02:07:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 842B310E1A9
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 02:07:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699927650; x=1731463650;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Oo5V9ZsRdh7QXoDBwGtidbPfC/1HaE+eqygACoYMdlE=;
 b=MRoetEtq6r5AtMTv1rcJVrvmkQWSLkwK1MwuHBMPfFP4BQ/BGjK7fl3N
 nNs7kzF4vOEQI2+CThvRjHgDFo2xfrzUR2eDXTMl2sNCyfOueuG9UH6X3
 hHRk3tCp+dD7g46G2xl1gf9oPujQBWHQlbPWU7Z3ZKfWCnKewpPmpbt9r
 +rf4KcRwQZRoXWj4EajiYZE1Lm8zs4iPzd9lmUSPJnPgjnpprkWLohSMk
 Acoby6ZNiZH4FpQmLg4s4h0jcSPwhndasNI+nVytIVEr9UVlFeo+Z8plK
 4J79zt5koIBzddYZqM0GGSXjFRLyUK/GGRteWkf9vmWnxCa732v55dlXT A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="394457223"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="394457223"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 18:07:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="855135905"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="855135905"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Nov 2023 18:07:20 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 13 Nov 2023 18:07:20 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 13 Nov 2023 18:07:20 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 13 Nov 2023 18:07:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EAQEf1RJ8zZpAYI5DRbDVctD0H10gixhA06haKGqOZntcBugwI91vbzNnLFJ3BhkFs0LkjG+YHZLWlM3yiKFFqSK7Dd8pkO/kicMnYbFOmScQT3T64yhttGPdGnUPkCZue+A/3NfmXV9QBV4CCqK3Az+PIZfl/KUZDzTD1L3slPZJGI+7TAY/7bE/+M4dDUpGalhte5xayNAoGk4X4FrDpjq3i2WQkF/oKfED3Muacy8GJzAGA1LgGQVqx1U19G2xVQIwqdeMF9N0qUVRA5PA0G0TZuNnbLBMlbpI7Z+ilTgiqrrrJCYV89GTUF4goUKzA7OnT/LILa04zdB0C8ToQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C7ar7dZARzzBG0G59WxmFH2htAtQWvce+vjCXax5Npk=;
 b=SSRx11vQFCRr+EQkiIZMOzI0zziGoz4WtyEq77crQlWDS6fM+QvKaK4XePAQS5NthX/z4Biu05okP5e+D7gzAoyAfRFQc7xHZ0zRAdTzGPQKi+Zpdzgy7V+LZO72cmS4jNNv3S7P7GRZuKXQ6DF4Ea2Vwkfg0E2jWINMBTFPTueJmYfTTNZSsMczePWnl/JKoLYd4t8jNvL78qmwVdSHwSUH/aNuoQ1vtW9vq304QkdxRq7NubzPE9pVctzfF6Q5Yw2ucCCTZe8WWBQRIDRiwOeSqp4kPtlCIGXWQXAoR0gtLfoj2TwlwU+wXbjrFw0TEGr2NwATYpUS2ZlEI/hLFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8740.namprd11.prod.outlook.com (2603:10b6:8:1b4::5) by
 DM4PR11MB5294.namprd11.prod.outlook.com (2603:10b6:5:391::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6977.31; Tue, 14 Nov 2023 02:07:18 +0000
Received: from DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4]) by DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4%6]) with mapi id 15.20.6977.029; Tue, 14 Nov 2023
 02:07:18 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/4] drm/i915/dp: Account for channel coding
 efficiency on UHBR links
Thread-Index: AQHaFm2d3E11+ReN90SMcdX7w25OuLB5EYNg
Date: Tue, 14 Nov 2023 02:07:18 +0000
Message-ID: <DS0PR11MB87405EFBA49A3675FCB09551BAB2A@DS0PR11MB8740.namprd11.prod.outlook.com>
References: <20231113201110.510724-1-imre.deak@intel.com>
In-Reply-To: <20231113201110.510724-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8740:EE_|DM4PR11MB5294:EE_
x-ms-office365-filtering-correlation-id: 69c2be58-073f-4cd0-36c9-08dbe4b66ddb
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dUcQfrpFplO6lvsMzF5s2+U3wHTui+absZ/RsRvPmc92fANAfs6ZRZqdVYVum6bXBYwT1nxABh9ZHuvz4ZFysgsx5xErL+u7bGL8qqzwDMeotd2IsazvZkG5h/x9Q4s/hHQTEQIaapCps5FZ37IOyfW38C52ZorbqkYmka5cNhNblu/4QlGw08plIyXh8nNBWukGg3r1h8o1W2uuyTAsnEYv8oDnlHWBQFhGJdlSpsy9bBTK+NBGJ+1mRLnr/dKq8YSxGGM+nEo4H5kyRrvIOuLwWdCW7dG5ayGvnfKuRQHiQCSiDhTVkj4d3sOtqhnJRZRX2+hicxAZwpsPTi/3hjVIc1RDq7e6Vkb+Cr4Yl/k0kIJ9ng7cHO5FwGW7hnG14TYKPoi2gKvs16v0wJABHYxr8yDy9v4rsVaCbklrqB5QRGOOZ+04aU+0wNH7Uf/A2sueta0IdQs32dj/pG619veMHTObMvAb6SVHaX7Xj5aQqfL64wEcZriUXzxqbaGneFi6V1nIRFl4HFbKRQ0Zuw5sfIGDRDtJATu/f5hVQ0USnH8cqC/63FlLzG1wyGCUyHdw/CC/SusUSZT2hcFQGShgZ7t1+Erbwk7nx55lukdcqUWzGUpSvwwRY4eV/7FR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8740.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(396003)(136003)(39860400002)(376002)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(2906002)(8676002)(52536014)(8936002)(66946007)(76116006)(316002)(64756008)(66556008)(66446008)(66476007)(110136005)(33656002)(41300700001)(15650500001)(86362001)(5660300002)(55016003)(83380400001)(38070700009)(82960400001)(122000001)(26005)(38100700002)(478600001)(71200400001)(55236004)(9686003)(6506007)(53546011)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4mffrFSylLlvktB8U27Y6g1WHgPfX7VM/515b1dJInHdCkdAIeajl8e/1313?=
 =?us-ascii?Q?9OHtAbAvq/mKgh9+Nd7uPVqjBT4l1KWFWsKxfJ/6cJlxIyl3jicRCR0igV2k?=
 =?us-ascii?Q?FdgjDTIVmmwFcyQAqzKdkOJxzDSUBw7PnbDr9X22CNT0rOidGVgz97drT2cX?=
 =?us-ascii?Q?9sgUFN4dpB2jO6+99X+DJpcXiWmS0BOHL1xms5eiTAs8GOP6RoXtrgWLkviD?=
 =?us-ascii?Q?M79CdUXskO1JYetm9KnMA2M/FexsqomgyChji05fCao4bF9d3ko1Obp+LtQG?=
 =?us-ascii?Q?qN7pvzNb1HGnNCAN6eywBqd8q0Yb1jdIDZ95Iy0k/J2IvqS+jNwhDf/y3Fwa?=
 =?us-ascii?Q?8elffNfPPIDaaapTuqc2Ws0QjPt74lNKpy4EcaAVVUDsoc7C8fibuOyVYB20?=
 =?us-ascii?Q?LDiUDgZS4qxueQAXXyQJeGTt3jyeXhOcAyh34SrGCwGnnm3IpKDfHLvYm1sK?=
 =?us-ascii?Q?0lElRkYTV7t6TrqkT7MACg/hsq3a2P0wapw28psZ5zsllNVrtD92fjgxWkzN?=
 =?us-ascii?Q?KzE15KZ2V2FChAx7DsvbvDJv797utk+stojyxUbwgzSIf5KuOKWrbG276i6V?=
 =?us-ascii?Q?xLq9G9I0fUR9oScbPtDFR+NG7s35T53M1yIceU7ZMnH2JfUDAp1xOVBGb8UQ?=
 =?us-ascii?Q?hVXMiulPSH7qZagUnk+g1luxBFjMiXet4IOVYTE1dhHdkWDgved2e3XMJLz0?=
 =?us-ascii?Q?0vC4A0E8nsH/5VZ2MnhxXVsbuE6Y5Hh3pl6wlk42+Xn/Q2y37qHz5c0tUEvc?=
 =?us-ascii?Q?JiEn5v4fZZnMAi+vUbgop7wvM5uOTt5gDUuhtEedu7B0AFuSyKNhO5EIDpiv?=
 =?us-ascii?Q?WS/bVOYQnSYx32Ozlxg8nkN4cwWQLuEtcqi1e9f1fHK/hOpap77FhqvY0yBL?=
 =?us-ascii?Q?AYLU9YKui6l3znMi1xYBIpxyPX4tgwJ5ZaCtrdkGx/oxxVO4KpHf8kl+79H+?=
 =?us-ascii?Q?YOurXAYJFmoNQdl5AMEL85anmYIYx+pUnzgUlxw0SgqWI3N0sew0Ko5japei?=
 =?us-ascii?Q?DN6mw8YLXz3PePdsTuz+k3uQi+j4H9MJAO1XoNHBFJ/wUv3LSaGTFXhDDH0Q?=
 =?us-ascii?Q?zPfxjhfN9JdyNvBzjy8uePXizOsmRDUELymx3+qW+vfvavT2ovu/5Gp2dywz?=
 =?us-ascii?Q?rFbJLc4Hyu15GxlAqgj8MA1ymdNFUDlC9naomw6eL0Lex4KlNYB+Edq51TZK?=
 =?us-ascii?Q?XypjSNQZJAsQ6vF8iMixzbIRg1D2TLb7rQvxNn+6DV+g9INCZzdZTMweQWoO?=
 =?us-ascii?Q?nNxKTa/kvS1qjxpNZ0+4M7CNYkyHbBVMqPaQ9+b23z81Dxk2BMl/25mLcZoX?=
 =?us-ascii?Q?rv2rYfeSJv40THG8/6zgiwVLUxW3vHxqlk5mRKx1r8bo6s0hnV3Q/S8Su0X7?=
 =?us-ascii?Q?+CtPhx1giD6NrLEsqhzpPK+vkid+fbkCJrGagnJe9HpKDkJ7brq9uGQcnHzP?=
 =?us-ascii?Q?mlfn/kPlvd0Wt1gItOUXE8NIX6PgJlU9wLKnESqr7qfKt585REC9cf08win4?=
 =?us-ascii?Q?kVU/ZHZjiVs7GLV56ED9b8PJASDmp5KDAg/JdRvR/wzRTRqC912yXpF7ca5B?=
 =?us-ascii?Q?9qQvV3xFghwU8AjXAQl6JulIbnhiPb1x/1N/oOjS?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8740.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69c2be58-073f-4cd0-36c9-08dbe4b66ddb
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2023 02:07:18.1146 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zowvfbwt5FmPLhDrdR1MdaQO1Dfzq1Q/GTheGMO/tYy52PFRWfou4d1QptRDEvULtJY5vPa2ZD3ne3OeBaeACA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5294
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/dp: Account for channel coding
 efficiency on UHBR links
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re
> Deak
> Sent: Tuesday, November 14, 2023 1:41 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 1/4] drm/i915/dp: Account for channel coding
> efficiency on UHBR links
>=20
> Apply the correct BW allocation overhead and channel coding efficiency on
> UHBR link rates, similarly to DP1.4 link rates.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 10 ----------
>  1 file changed, 10 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 3effafcbb411a..24aebdb715e7d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2398,16 +2398,6 @@ add_bw_alloc_overhead(int link_clock, int
> bw_overhead,
>  	int ch_coding_efficiency =3D
>  		drm_dp_bw_channel_coding_efficiency(is_uhbr);
>=20
> -	/*
> -	 * TODO: adjust for actual UHBR channel coding efficiency and BW
> -	 * overhead.
> -	 */
> -	if (is_uhbr) {
> -		*data_m =3D pixel_data_rate;
> -		*data_n =3D link_data_rate * 8 / 10;
> -		return;
> -	}
> -
>  	*data_m =3D DIV_ROUND_UP_ULL(mul_u32_u32(pixel_data_rate,
> bw_overhead),
>  				   1000000);
>  	*data_n =3D DIV_ROUND_DOWN_ULL(mul_u32_u32(link_data_rate,
> ch_coding_efficiency),
> --
> 2.39.2

