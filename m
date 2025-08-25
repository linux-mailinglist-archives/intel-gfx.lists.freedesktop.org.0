Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA13B33537
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Aug 2025 06:38:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 172CF10E2DE;
	Mon, 25 Aug 2025 04:38:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fix9yc0q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72D1410E2DD;
 Mon, 25 Aug 2025 04:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756096725; x=1787632725;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cSuFQLq4v30gEnvrCmiXKQ6cbybSAn/XVc4TZhvnHOs=;
 b=fix9yc0qiLiUtjBdlbm0DXb0z1plTdy3FM5WVJntRFyvlrnenCM/qOI6
 8W/Y3OZSDb8ym29AWLeSkc+TiTwC9hblqXO69KxRGI0VESDdzxq7ahgD7
 TaqT5gSMZPlIGUKmepORLzBIxBvBsPosVGpZPOBd6BAKD71NOZiRDAOf3
 VarX9QklKDRdWE4jbOFKPbyLF2Ur079dadgzsybyFKwUhQzbDwxt5+jTM
 K80F599tF6YYzpA7885eOkjR4g0EVkk3OchRao+qwxAq1Ox6GBSuMFQko
 FhRufCjR+EfU75PVEyKVqkcn37hXSQovgmRE/faJL9N4Hr1OgqogHnwHp Q==;
X-CSE-ConnectionGUID: kvyUqgtHQBCnnT4G2sfHtg==
X-CSE-MsgGUID: VRw106KxQwCTWnMQ3U9QjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11532"; a="57504511"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="57504511"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2025 21:38:45 -0700
X-CSE-ConnectionGUID: 093d5stgSwyZTEHe8ykv5w==
X-CSE-MsgGUID: 8UkmMa5FQRKcHSihSadWow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="173597926"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2025 21:38:45 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 24 Aug 2025 21:38:44 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sun, 24 Aug 2025 21:38:44 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.77)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 24 Aug 2025 21:38:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x6JaTlj9giRhvRtPSW9LPr3D4+FRiA/BxRFL2QZI8BQtTOYRdaPIdIYCDOb1htcveLSYYR4rWM94x4YVwhwckB/cbkVChzlcIHtJJjOz8j+LaKrWKW7oxfBkZn07tE6+onSxwDz1Tda5wz5uELxjBg06ov65vZ6PmyNr1lr3kOlBTXgshqsO/Mj70z6P+H6giU5gd6hhkv/Lo+v2nLaYETm5X6glivqBKrDUTp7XeNlhlT21ObcyespBXg8PhzZfwGEZQeGmhYOiY/h9CzZlfuhYS5YmcYFSX1N9IVAa0vRU9ZeGDSnzV0YjDEg0TxyE+dkFtN3xSsMj0UzJ5SjZgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sykwNLHXfYfDFrxx5PFWNYmgxeDb4T6LV3q/azB0HSI=;
 b=ZKfN3WpsaSSjyjnR5sfTORipRVILrojgLx5ga8OO0nURUGoU6aaXcz0GbhGYDf5otN5xaqR9vWznxzCBedQHkRsRtEcnUNUGqCWE4Ns/8/er77xDNeKKsGZQyyUEdBuHlIl+FJkHYBYArVz82X8YwMRiqodx93u8jfmPPYh16sSwPGTAtV+WfPkVZk/ViqjNOFd9kAcHKye9uBK2A0ytFjvtnSwNhtGW2XUXqKPMYkZ8NWP4/jpE0n67pk8W5EzrT71cuzoW/dwQ3UP/qdHCGoPN5bvWrBh0eN27OCpDKWPacMlSQzfi+o2h2ilTcQFvOungWCz6pG5UMqbMODUhVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SA2PR11MB5132.namprd11.prod.outlook.com
 (2603:10b6:806:11a::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.21; Mon, 25 Aug
 2025 04:38:36 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7aab:2a1f:f728:eb01]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7aab:2a1f:f728:eb01%6]) with mapi id 15.20.9052.017; Mon, 25 Aug 2025
 04:38:36 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH v6 0/3] eDP Data Override
Thread-Topic: [PATCH v6 0/3] eDP Data Override
Thread-Index: AQHcElPbX2AnYous7UGN1byu1LIohbRyz22w
Date: Mon, 25 Aug 2025 04:38:36 +0000
Message-ID: <DM3PPF208195D8D4011885DBE26B3859B92E33EA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250821042653.269227-1-suraj.kandpal@intel.com>
In-Reply-To: <20250821042653.269227-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SA2PR11MB5132:EE_
x-ms-office365-filtering-correlation-id: 3ed26bd8-aa0b-44aa-c803-08dde391419a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?5X64nOuF4fOCa8+RzZWrCfSENfQicQsVY/0Unc9rvYi3u6X/8vDfeslhPfZv?=
 =?us-ascii?Q?UC0sSCzPvyr7wL8JPDQ0ZCBR62Vm4C/8uOXcbpaMirDhFLREyJH84TzOQ2Pw?=
 =?us-ascii?Q?VG7ludduUVm2xtrvXa9GcpLJF4iuk5hdu574TB09ZyFSRDt028XHuwnaMBWo?=
 =?us-ascii?Q?pNzxiuYyfOddJsDw2OXom8nZkhXW5PbbIF28kbXfmrLB9PXD9BLhg8CuEGB8?=
 =?us-ascii?Q?WH6rAT8tZZra6JR60g8cDEJ3x3YpBBNBSSDsr7jeVIOzoeFlH/b0tMOnETzz?=
 =?us-ascii?Q?ui91/eThE0cimgXlekoHzLOJTwFnh+7rfrb2OBqYVqQE8j0GPZGF1Hf93HMi?=
 =?us-ascii?Q?HN5EL2xx/RrjVSoRD+MJZnmqTpd5IID9zdel6NRD93ujw2MavrfVPSiXXWRf?=
 =?us-ascii?Q?QzQUIiLx+ujMqj3uLOPxLH9WsycD4oM3XsPNARZ5ji/w/GJg82F4uKyNyK+J?=
 =?us-ascii?Q?oIdDucXn+o5cFfiZ9DevpNFF6Sk021e6WAS7uG3Fhd23nVMXbBlMv78uUqdV?=
 =?us-ascii?Q?SXeDrRmrypqNKI4EnNGRmc12Aq1TJ2a37f9Ki/lXnokCKMAwRXf+AGa3U8wJ?=
 =?us-ascii?Q?9m/BMhgyABSfN9kvkxmIS2dXHElt4x8MMTYrdbryI2DoI3p5d8/9zEpp17ce?=
 =?us-ascii?Q?Jp8iqFAP0PV7bv4QWwH1oaJPeCaFii31uxtGhg+1NEYnu0jZq30WcU/vHq7p?=
 =?us-ascii?Q?4kPPiUIi/l/bMI3Grta03kjlbbIfMWoitJYoM0y1oK1gaHzkoHtpdELQcOYS?=
 =?us-ascii?Q?So5kB/15ZJ79E2MD0KSTTHt5cClm8k0UBLdXJr+Dqp5M9QMhuWY/JSETM6NP?=
 =?us-ascii?Q?8AE2+7D7flPtL31iJy89FfIutUvQ8ZEDSd3bQizoN1+7Bt2VAlJvosTO6XSz?=
 =?us-ascii?Q?6eZ4UAhNV7JS9Ki+51S9E7V9wRj9GWIX9scw09e5+Rb+j1VLamzsMOanq0ID?=
 =?us-ascii?Q?jLM6WfQTdRV6z9cx1ATM8Q11G6HfSR47i94zSkXK8XUmc3lzeDcLMinmDT8+?=
 =?us-ascii?Q?b+ynFTg4noH2NtVweLCCpSxSurDdDk7MRE6YqxeSdZlHJUqlbUsYYzNKHBKt?=
 =?us-ascii?Q?e6y9dWLQ5Vd6JA4aAGq5NOINmJfTHS/m4R5NhYpvBMTOoXZ6ohX0mfLGu0t8?=
 =?us-ascii?Q?Qc9b6GcTicQv8budaZYPpI74V4bDggW4abUDxY/MqfonAeONMUyHy1BTqBRV?=
 =?us-ascii?Q?Kn5hZ+6mjHwhkcE92tRrUD1sUUqBfWBwxi4TF2SvKQI+3yc/CYAhMggDV5fj?=
 =?us-ascii?Q?0gGI40L+Prbka/reZqPRB69n51fObLddpPtD2o9F04BpBIZ7HBbQtjT772yT?=
 =?us-ascii?Q?g9CN9ZZeKRFaZH3YNk+w59JQpi1LDHfqj94P/lH0km00ngRe1ir5hxbZJxlp?=
 =?us-ascii?Q?VAPpGkJsUxifhl/io1SIGhOpjklYUO/yFJ1JHyxHv6zMlTytj2fYVpH8UiZv?=
 =?us-ascii?Q?6lLRTk2MqLiB5sc0syxAw18eKGxBUfmcaXN3uGZZIUmcsQYJICN7FIW8TKo7?=
 =?us-ascii?Q?YkkB7hyUgSIwze0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?B5vORc+wHy1kiV9GSTAsdO4Ks+JyRJcRIR7FN5UDC7SZTfEcRHCYWJ7JQ38d?=
 =?us-ascii?Q?qIgdIrqe58n+gqNStuMfH22PemnAurKA/2M6+i660f8Oamt+jYOl9tHMKUMn?=
 =?us-ascii?Q?dAwl2/9ob4vBw9j726aWuRzf1F7sKYsUzZAcg8TgD5nXXrgzXfNYplBPQlML?=
 =?us-ascii?Q?0g7WLC0wpmGUZTXU7lkMjwnEu4X8Vgqm8AJMhEYz3EG5jr0Ts6DOrPBOldvy?=
 =?us-ascii?Q?I2+Rt7uX/GxofB3nhvFQnTu81hTRM4UGUaP4vmQ0iGOlJK85A3Y8tzEzgfay?=
 =?us-ascii?Q?+WQD5sMIPuyctA8mOjW/OIAYijzd3T/qiBHl0knV1jRxYlhW4zBPsDv5T9pX?=
 =?us-ascii?Q?ZdAGZCImX75xq0oHxUgxktwQVoAPp6FiwNumIlAlqANVje2Q2mh4zbygB5RA?=
 =?us-ascii?Q?vBI/dvbhutuYvpPUwUjbclwg8kg5U7f+QwWs8arZQ2F8vBcTlpnI9RZhvoBU?=
 =?us-ascii?Q?kErhOtCkIz+Cq2svJZBXpcz884DzfUuWaavyk8crY9NyHnPFPc9AEY0hPANY?=
 =?us-ascii?Q?1CJOLZqPX5NjpJEHII/7ONVqipHZEXFMm9nqZJwnJc0mLDB1k1hmOk5b8ziB?=
 =?us-ascii?Q?K5W+jVWfl2See4Vyh6quaF25At0cT0VOPXw8R06XzaIIeAB8gMJ0IIEZgXHG?=
 =?us-ascii?Q?lJfb6G7S+/7Z8H+qUeY9r0aJ5DK4mT3JoF8ENyCcMQBykG+4fdxW4RguCDQZ?=
 =?us-ascii?Q?BrLnHFFlUgElOCfwvTAPZTi5k5S8gcXZ9q+Hm289FhZRCZ8Z0Vq1Ehe7Ql9m?=
 =?us-ascii?Q?ktjC9SwbvMALOd3mI6Tyysmfk32JVXOWFUw12sZYYVj9fTYniQYxFgohx3WL?=
 =?us-ascii?Q?lqRZSn+9frzd1rM7LMnOwkKu/Pl4xat7M4BmUHFNsAUnGS22mfnUiJNCxmOs?=
 =?us-ascii?Q?/Nbfn1KNhUvMk48WslK+eOdoP/Vnwf3o1LS/FRH9NDcU6fF09PIxo4mIwOud?=
 =?us-ascii?Q?ln6OmmPEpkTVJkmzudtLfYTwYnEKe1y/gcDmuY3MbZJHQkQo8nJwXettIMSo?=
 =?us-ascii?Q?32E47gtv36LGgxKuieTDMocS0zCyPYHHvviV2ah7uKboVY+ucm36w/r6fEQz?=
 =?us-ascii?Q?AjJ4k075LrneMctvm/fvHMwBkv4W87vX1uwHiuu39bz6PPc45rS2xXs9lTWF?=
 =?us-ascii?Q?l5UUZq8rKISY742Q1MOjtQdza+28v4eM45kCHTBZ27uZrRZvelEvBcU0FEUX?=
 =?us-ascii?Q?dPO0jeeSlB6o41hVXX0yh76FeXzosSSKT4sFMIp+kGx5ytlyRm8ozqK9mrvz?=
 =?us-ascii?Q?t0e+yzHDoINMOOqvrwdtLCBLePyqIaucdJFsZvGLd6JOeVnoUzP012cQLJXk?=
 =?us-ascii?Q?4xYrF3/H2ydWeepbPnwvYttMMnkOHNZHo26xqKL4OTRjK+tcQ+rUzQ3r8WDm?=
 =?us-ascii?Q?XKvQ7Ntjw6IZQaZwz032FFE8zQ26CtWYsa/cpS1Ybdbzaeqg9nw7GWz94WcU?=
 =?us-ascii?Q?7ANSbbzHxyOBx5SxCuw/UXCCuskcka+/CIMCtCpj5RYEBLPKStjghvyV2Ux+?=
 =?us-ascii?Q?LZEmovXqZNNARABEwOqAgn5/MQmP4zHaaOdTRc8KtTbpJ9pqykA6BnAJxSFw?=
 =?us-ascii?Q?cC4e4UYgscSRnmVra0Yhf9iv5U3YyJLQrKguorIa?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ed26bd8-aa0b-44aa-c803-08dde391419a
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2025 04:38:36.6294 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kt/JZWKKZKA4nChL+G3+ozl2tViuNM9V7naGEcnWfsxRUIksKUY2Y98UZyfSZhshoX9fWkQ9ZTDxOOTMMmyibg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5132
X-OriginatorOrg: intel.com
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

> Subject: [PATCH v6 0/3] eDP Data Override
>=20
> When using link rates 2.43 and 6.75 causes a strong noise for WIFI bands.=
 Its
> recommended we use 2.7 and 8.1 Gbps instead.
> The solution proposed was a static vbt field that provides us with a mask=
 of
> rates which need to be skipped in favor of the next higher link rate.
>=20
> --v2
> -Optimize looping
>=20
> --v3
> -Break 2nd patch to two parts
> -Rename intel bios parse function
> -Create seprate function for setting rates
>=20
> -v5
> -Fix VBT definition
> -Rename intel bios function
> -Make the function only return mask
> -Protect against broken VBT
>=20
> --v5
> -Fix function naming
> -Define macro for num of rates
>=20
> --v6
> -check broken vbt inside the reject rate function itself -no need to use =
hweight
>=20
> HSD:14022096069
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks for the reviews
Pushed to din

Regards,
Suraj Kandpal

>=20
> Suraj Kandpal (3):
>   drm/i915/vbt: Add eDP Data rate overrride field in VBT
>   drm/i915/bios: Add function to check if edp data override is needed
>   drm/i915/edp: eDP Data Overrride
>=20
>  drivers/gpu/drm/i915/display/intel_bios.c     | 36 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_bios.h     |  2 ++
>  drivers/gpu/drm/i915/display/intel_dp.c       | 19 ++++++++++
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 18 ++++++++++
>  4 files changed, 74 insertions(+), 1 deletion(-)
>=20
> --
> 2.34.1

