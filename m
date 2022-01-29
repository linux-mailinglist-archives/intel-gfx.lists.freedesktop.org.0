Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8839A4A2C6D
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jan 2022 08:20:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84B2610F45F;
	Sat, 29 Jan 2022 07:20:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0873310F45B
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jan 2022 07:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643440816; x=1674976816;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/gZEfKVG934P+vfxprKILNfjXFFchs5wwtcUDDpQI9w=;
 b=KNdwXb9qjNv6vSrKHIlyR8aJMyENKvYADPqKchlt3PevBCYuKIdfptZh
 xMg4HU1LPHGu0iySpQoNnbivBHJv2CE3/LkHNsTk0RWSNiTyaOYxGoow7
 BPRWQP9px1MjpC3seMzOF82dIW/Oz9S1OJ3bhMt1qdSa7pX7LoXoSbFXG
 BLQ/cbAum/w0BJBXIeYNA6upACOkertYjR/A0dZdYuzFkNYip9MPsYXaj
 +DGmAWCJ/oE+rWBujxz95S6sF7hpwP6tC2wao4EjVMf62P44sus6690Q1
 c6lWViiNbShM9tPhLMDH8mamZ16d7PDkIdgq7uwTgaxxZ+gKm7YuV7mwL A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10241"; a="247022726"
X-IronPort-AV: E=Sophos;i="5.88,326,1635231600"; d="scan'208";a="247022726"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 23:20:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,326,1635231600"; d="scan'208";a="629364399"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 28 Jan 2022 23:20:15 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 28 Jan 2022 23:20:15 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 28 Jan 2022 23:20:15 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 28 Jan 2022 23:20:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=abi4PwVMyBoBfBzJfhbWn337QQtlxtO48BMd67BQo1CuZQz26fLacVEfNrdNPU8U3DR0pf/QhQXxlW2VDo6nrCZmiaWtlHwZX1WEBOwOdAQlDD0UJ54ZXn6YxjJQbCip/nPcQ6dTfDBUaTq80kS2RcGDn3T41MyxG34PtMhy0Dv8KNCQ3MP4gzXZBEEpmu9LKdlOlzApS0vQkUGCpuAS+oTdIv9ucM+0ymDRFWHjRCodAPHBj4U4GWnNeksRRh6rcVNr+c5jFMxWA/+QcRiRGyD7djvwxZw8yEU11vzAOiRc93UwliiVRfDE1oqJJzM7fa2Zf3qXmDPJgudrxF81XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bOXopWyhibAKhTT8OJrOCFnNOu+6oU8e3KaMR+4FiiE=;
 b=C7TvtwXLsHdYrTxUiT1Rl+oUni66rhQsxJpSPXZ+4S0Oghq9vigPZsU/Z2M0TfG0pncizt5R55SwoxkcGIDWGfTgC5sT/d+T/wIPUqMsoykuFvCT+KzbSKY2+6ZMRoOCUtT0meouJEGv6uBnQisJxZh3FWZemoBr3V+lAc9CqAzElnvcvUY/8RkgaC80rtl1HWtaIc+SyCq5CIzan5oD+GvZNmEFhw4+D+6O2J8OdoCtwnYL0RRLQMbiS1HFl1NCYZdjzM3ABS/WmfgjeYh7+Uq+CMOkfU0LDt9LFcVLihPrMQHfeZrSecvx9ETLMMmgssmsMHLot4mEeClEGX6TVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB2936.namprd11.prod.outlook.com (2603:10b6:a03:8c::17)
 by MN2PR11MB3776.namprd11.prod.outlook.com (2603:10b6:208:ee::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.15; Sat, 29 Jan
 2022 07:20:11 +0000
Received: from BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::75a5:6a77:2323:f31e]) by BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::75a5:6a77:2323:f31e%6]) with mapi id 15.20.4909.017; Sat, 29 Jan 2022
 07:20:10 +0000
From: "Bowman, Casey G" <casey.g.bowman@intel.com>
To: "Cheng, Michael" <michael.cheng@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/2] drm/i915/gt: Re-work intel_write_status_page
Thread-Index: AQHYE9dv7Igo9azOuU+Q2DoPajpdnqx5mVjA
Date: Sat, 29 Jan 2022 07:20:09 +0000
Message-ID: <BYAPR11MB293616704CBF919596F0020EDD239@BYAPR11MB2936.namprd11.prod.outlook.com>
References: <20220127234118.111015-1-michael.cheng@intel.com>
 <20220127234118.111015-2-michael.cheng@intel.com>
In-Reply-To: <20220127234118.111015-2-michael.cheng@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b87e0a5d-0196-42ed-4ee7-08d9e2f7c89f
x-ms-traffictypediagnostic: MN2PR11MB3776:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MN2PR11MB37763A45AD08500C208E8F6DDD239@MN2PR11MB3776.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: symrfkMl5mkrlNbQDxaI95F5Ix9fRsDMMvwTnT+orn6ar7JGaG+thzHCgtu5S8olmRS4G97O1pJ6+eJYHSZPVZ2ZzG3R6PKMMSnSJQh/y0yefP9BdQT/JVsQWnjF1A0km2CDx9kAWRVFb+BUO/lMFGFHKC8akVjg/KysSEaEj68HvCGnRmBLWJtCRWp28CE6DWOi5gotOZLiFtwgOaKBZz8LQcJugoc3c5YSbFMXM/RW99KsgmRYJ5gxzT5lkD0hcKSG8CNmiguKZ0MUVinZmjcRif3YSuRBwH8FzIVv894esMwg1XlqeP+KCYwsRef66rNmGRPbmEDHwCHwkqGJaVaov1OX3NHJI4kkUiGPj7qIu82DvIFgCVYiGH7Zw0jZCzcULgtg4etrizYCp+bw4yewheWWWXJjpD2ZzVxrhYZt5ZNGwthkFXq1eYnGHiQcpBWzdZ9xp48hXCvLkyengx9UqEk09TojwwvPG5AYv8asifpflooTenn88AEASF1GJTgFU1mKNoxXijX6o+RcLZvIMxLtj6w3NP3mKhPZiZDkCFfi3HqgmchbHGFnKm5X9WXNaAK8SGKRU7ri2bc36T+UhWoORlGkG7f27us1IuO6H1nlseXcGRyUWe4T20mj0Fmlz6UdswOsdM9rcXQPLFyfmBhNp95pIzdjM0doPVLsj59vu5Iaycbt+5q5KugCvwmzNm47olhpT4w+mPdMxw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2936.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(82960400001)(86362001)(38070700005)(38100700002)(122000001)(66946007)(76116006)(66556008)(66476007)(4326008)(8676002)(66446008)(64756008)(8936002)(110136005)(54906003)(316002)(55016003)(2906002)(52536014)(5660300002)(71200400001)(186003)(26005)(83380400001)(508600001)(53546011)(9686003)(7696005)(6506007)(33656002)(20210929001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+9a1uQ7wheBaNWhVaoM2pnlE8gTmLbBe5ZLhV2YmyRr4eTvGtBBfJ2IIEhGb?=
 =?us-ascii?Q?99VYIKOYBRzhpnE8ah9fdDKGjvMCjmkAHUKvdOnoNGu+1IfKyj0tnH03cb5A?=
 =?us-ascii?Q?3Pklc3hYQ4Gsjuny8RhFWbDWghlGO4mBEGewZfWTrPTPRfEIrQppySydbITF?=
 =?us-ascii?Q?xRIiNk3TY6O1rx7TKb7PXkhEhC1xiixailoEOp2CBxTq4zfjIAzcXXhwSxUw?=
 =?us-ascii?Q?kyCXn2LnXArvMgqTh/kR5r1p6vUA1hRQKgCNL8puUZenKFugelbPzqmeB+65?=
 =?us-ascii?Q?UUgSxXnNxpcvBQBb2DZo0TwQnQmRNNs8soDy05e/z82ZTqszP5FVMBqPDo3c?=
 =?us-ascii?Q?LhqV9krQF4qRscD3msK1uGpC+ohx0zpOWFSpd+N1lOSbtIx4x2Xsk/WL7Zur?=
 =?us-ascii?Q?fDmJ2uh6hErgzqtKKAmmkLdceAL8TpZAYzpgrJtR4jhzBgVxpOkVH+oM/lRQ?=
 =?us-ascii?Q?l/9551VNy2nqeMseHmzMgLpISzOzlO14v4hd3sDRPYFUdOi+d//2KWK+2jW0?=
 =?us-ascii?Q?3XUvDU0hDthZqmz4OFdBfPirP2nH8MgZSSiRGzY/+Y2TdvFlbBFiK62C5Mmb?=
 =?us-ascii?Q?GpgnUVf6PFNwcGR1qVTcCwnKCGB75Bvckbjg2OAako5hkXEuidrb2Hrb7t/W?=
 =?us-ascii?Q?kCkcawzqajYXoFOTH+g+cCD4HC/KZyqjLsnnww2Qt5rPFutKHYhbyu+tKHuB?=
 =?us-ascii?Q?tq6CQNQNJz4HcXx2mlzdoDZM/xrQnhCrHupM0QkdXY+63Cax5ngY+sHRqciz?=
 =?us-ascii?Q?qCyAzP+pJqFgax3G2zb07fGhi8+IfHj3vuv7+z77Q9DgZ9b9tDpeBiSQ125b?=
 =?us-ascii?Q?vrXXdryWoOQMO5MFN1mxZWvaXsmGd4KnvndFrZ3ZcN23K168TLK/geYbrkYw?=
 =?us-ascii?Q?ucaSyZN/O/fizKtBWgQzyItdbW3HEE2teURfIiaSuHHvpW3Ue8JK7RJyxb6Y?=
 =?us-ascii?Q?YtJM1JHNGsKF6+BRXd5LWpEulUjnJ1MnxCBm7DnBgkMoCssD8j9AX+ggkB08?=
 =?us-ascii?Q?U3k+tX52fUQM5Wb53wxJadGhTbd5wSEe55pjCXK3bie71KJdCt+ymc/KDikX?=
 =?us-ascii?Q?J/vXzxIrPY5pu9ZL/wgcQGMow2SnIbeFVUW39UlouA/iUFRG1pCesaI/cqa+?=
 =?us-ascii?Q?M7Ik8T2sSJAgDHM0QCHnWZruv2o3e0QIDmNltImXksuSmnXXrpKiJYKThlIS?=
 =?us-ascii?Q?zGTwU6WIbBMC0O9GWtxI5bOC94Upe/T2bUsLbSCPTJDB1Kd6tFRuGrgMZTOm?=
 =?us-ascii?Q?l/GAvKoHVovhQ7Ay/RAZbunYn0eEFDqt1W9nMYjtYsKa+jUg/9nZAKFAvjX/?=
 =?us-ascii?Q?dwTej+jEsrrBjiN2tmS4cZz9KVYzL7H6owlJjMSdRDvIx8ABKufbz56xlJY6?=
 =?us-ascii?Q?9SwCpIf71Ro6fir9l2eF6jPYTpwpZ6+X4G28FftqDQXOnXnLSJsMPOB1siJM?=
 =?us-ascii?Q?1QqvgDv/vjxr9tFKbzC8pVffvIspp6kgv0W+F/2nKnckXD83qjsHfOu5pGri?=
 =?us-ascii?Q?5VKjEgsQYk/sCoNS8yIappPXRyEDQrhbLddr3XRZsQn/mXiAeYE9wlqruJg0?=
 =?us-ascii?Q?BnZSEKGucSRe1KH0a6UZ9bg1+LDyCI7VpaW3SHDLmC0/C6Ono8611WEhcXVm?=
 =?us-ascii?Q?VNI8LIfMmFd6bJ5KQOQxSeka+Z4ySRxB4hED5eIx44CM7GKDEKYhYmZZZGX1?=
 =?us-ascii?Q?MIpaEQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2936.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b87e0a5d-0196-42ed-4ee7-08d9e2f7c89f
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2022 07:20:09.9069 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 098AoFRzLV07MQTBdCpMVqmVBszG4+SIKhVSzQi/gsYsDYrbs/jKHuH76Eg7o3BE02Uiam7/zDy6N82iHMFWlEYEWmuI5Mgn6DpzAfnaHMc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3776
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Re-work
 intel_write_status_page
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
Cc: "Kuoppala, Mika" <mika.kuoppala@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Cheng, Michael <michael.cheng@intel.com>
> Sent: Thursday, January 27, 2022 3:41 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Cheng, Michael <michael.cheng@intel.com>; Bowman, Casey G
> <casey.g.bowman@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>; Boyer, Wayne <wayne.boyer@intel.com>;
> ville.syrjala@linux.intel.com; Kuoppala, Mika <mika.kuoppala@intel.com>;
> chris@chris-wilson.co.uk
> Subject: [PATCH 1/2] drm/i915/gt: Re-work intel_write_status_page
>=20
> Re-work intel_write_status_page to use drm_clflush_virt_range. This will
> prevent compiler errors when building for non-x86 architectures.
>=20
> Signed-off-by: Michael Cheng <michael.cheng@intel.com>

Reviewed-by: Casey Bowman <casey.g.bowman@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_engine.h | 13 ++++---------
>  1 file changed, 4 insertions(+), 9 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h
> b/drivers/gpu/drm/i915/gt/intel_engine.h
> index 08559ace0ada..e6189fffa7a3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -4,6 +4,7 @@
>=20
>  #include <asm/cacheflush.h>
>  #include <drm/drm_util.h>
> +#include <drm/drm_cache.h>
>=20
>  #include <linux/hashtable.h>
>  #include <linux/irq_work.h>
> @@ -144,15 +145,9 @@ intel_write_status_page(struct intel_engine_cs
> *engine, int reg, u32 value)
>  	 * of extra paranoia to try and ensure that the HWS takes the value
>  	 * we give and that it doesn't end up trapped inside the CPU!
>  	 */
> -	if (static_cpu_has(X86_FEATURE_CLFLUSH)) {
> -		mb();
> -		clflush(&engine->status_page.addr[reg]);
> -		engine->status_page.addr[reg] =3D value;
> -		clflush(&engine->status_page.addr[reg]);
> -		mb();
> -	} else {
> -		WRITE_ONCE(engine->status_page.addr[reg], value);
> -	}
> +	drm_clflush_virt_range(&engine->status_page.addr[reg],
> PAGE_SIZE);
> +	WRITE_ONCE(engine->status_page.addr[reg], value);
> +	drm_clflush_virt_range(&engine->status_page.addr[reg],
> PAGE_SIZE);
>  }
>=20
>  /*
> --
> 2.25.1

