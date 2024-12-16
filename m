Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D8D9F3477
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 16:27:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CC3910E6D3;
	Mon, 16 Dec 2024 15:27:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dzEmIiIL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C75110E6D3;
 Mon, 16 Dec 2024 15:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734362844; x=1765898844;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9bmNpHKr7XQgeIcsmAHveWVJylTVd7no5Dccpro7Xf0=;
 b=dzEmIiILyGUNp2B4BPHxpV1Uby/Inj235cG0C8Q5SNdfM5Js2iknxpzE
 cWKCNLLM97DDzJG2FTZVHeUlSS+VfpbnhvsiJwlPNKVEecJ5c5klB2OR9
 5GSrl0OvCBVOQ20Lr4B0sxsr+j+7Sxi1i8qzKLNLKUQHrQzpLtZ8dwqda
 QOYo1qOPzxAMjRVTNyXFh5/ybm6vwgF0ZN44HO6AFCouKFMFsYO3BnzH6
 J9rvM7Zi5SDd4fntCFTEq8wxiMoZxc939NDFjea9+azjxipHEPxRMjMnt
 iQZW58nnP/9kLDNOF6VF9EOvGDNQTYhTlIkCdDJVJ+vIKyCR7zAA0Cm2b w==;
X-CSE-ConnectionGUID: gHMjEOHMS1auPTyXbXyszQ==
X-CSE-MsgGUID: gj40ddgRRx6n+0+TViJ/Bw==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="46162931"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="46162931"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 07:27:24 -0800
X-CSE-ConnectionGUID: NwJWr4noT/OocqMlbM+6Tg==
X-CSE-MsgGUID: Kv4LNQg9StGHkAnDCt0Yeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="98020999"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Dec 2024 07:27:24 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 16 Dec 2024 07:27:23 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 16 Dec 2024 07:27:23 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 16 Dec 2024 07:27:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wz/kT2unCL6CbWHhWGDOXDyRyo3CDX2zIccHfRhhPhqyTyYH6Dvb6Tie9rkF0zYK7AbVZr5chvszkkbb4gHqcSrh+KJHrsM4G22x3BLAuBoN7vMi3wzZNYZUtXBrHWco60/S8CjwFOHYF/qYOi09jT9UzPpL/5oYPE3s2O+Yuz/e5BNa93VKQQv2VUuaHt9B/76ok54kbie3piMix4A9ae+PclE/X8a5FU9BbLnBL+EnKJtzHrHKRIWbKgzo2VRLWXXPU2GiMax9SwmDFKVtTxeULVni0oHQrdeVLyLmXM41NE+8m0Sl/HH3UJFLZCqy5F+j4x66IAqzHyf4dMXo0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AwzhLDEE43OBmtO2fM3NihcET6FZxPJMqBS+LmO5ACY=;
 b=MyWa9XI69ftUV8KVESGVIKR/Cx23CpZfnu5ahEhXD9mktYKC3XKCthI0Tbv2wZXNIo4KXBFJzAMWqwPfYvMMbc72jg6JSZq+JbnW2E4Oyc6ktkrrdg/FFNWtp9oNyxgpOmvT3t2fcJ6fmtgenO7L8Nx7f7/YFAFcJffpsh8aNx8KXIF8RsNxRBXxXPHYl58/sh4yHjWOw8WwsqlKr7P1SUtRp/LUcWGLE2/K1s4seUO/uYPCNn+a+nNV+6QisrdieeWbS/VhoU1ug3Kupp0WopPrjFbPYkl7+q9Ib8PLqejO5xcmgedfjDdGGT76LsftEbzO5wrKadgnlC1JJlwt4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6312.namprd11.prod.outlook.com (2603:10b6:8:a5::11) by
 CYYPR11MB8386.namprd11.prod.outlook.com (2603:10b6:930:bf::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8251.20; Mon, 16 Dec 2024 15:27:20 +0000
Received: from DM4PR11MB6312.namprd11.prod.outlook.com
 ([fe80::faad:f9ae:2b45:e9ba]) by DM4PR11MB6312.namprd11.prod.outlook.com
 ([fe80::faad:f9ae:2b45:e9ba%4]) with mapi id 15.20.8251.015; Mon, 16 Dec 2024
 15:27:20 +0000
From: "B, Jeevan" <jeevan.b@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "kai.vehmanen@linux.intel.co" <kai.vehmanen@linux.intel.co>, "Saarinen, Jani"
 <jani.saarinen@intel.com>
Subject: RE: [PATCH v2 0/6] prunue audio frequencies based on bw limits for DP2
Thread-Topic: [PATCH v2 0/6] prunue audio frequencies based on bw limits for
 DP2
Thread-Index: AQHbQMT+w0qnOJElK0i9vbCsVwKeO7LpG94w
Date: Mon, 16 Dec 2024 15:27:20 +0000
Message-ID: <DM4PR11MB6312F3BC8DA2C9C161204638903B2@DM4PR11MB6312.namprd11.prod.outlook.com>
References: <20241127120715.185348-1-vinod.govindapillai@intel.com>
In-Reply-To: <20241127120715.185348-1-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6312:EE_|CYYPR11MB8386:EE_
x-ms-office365-filtering-correlation-id: 927df4ce-e36a-4315-f2b8-08dd1de621e3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?zzw7FKZ4GJgdHt2OtZ6CWtYaemOJvV4NxxkAjWohecnAuIpva8reSJd1zncj?=
 =?us-ascii?Q?Gu1E+vPtrEfvAv+2gAq6FcHsKL8V+NcgVtz9S65+K0iFc1AI8tkeiX8usXqM?=
 =?us-ascii?Q?kAW0i/mHf5h5l9Pp96Hm0a2Z9s962ywogD8oEghai7QqzjXPj6wBkYzkfk+A?=
 =?us-ascii?Q?Ju5P3h+2Cf16FkcCF3jA5lDtLs4VrPaTQK368Wwlv/VCMBua9qgVQ7ya5h2v?=
 =?us-ascii?Q?ABfKaPvsgaF9qtj+oXPcdk2Pa+pHl/N62V7KPOgTPS4b1cvfos17NrPUBo/q?=
 =?us-ascii?Q?FFb09mZRzYqbRfoh7PlYsGeRFjvQ+GRx3kCeSYzAeBFrm/sXk3xB2iVmXhBk?=
 =?us-ascii?Q?n7Z75si3RAXbhsoE9dhBUnKFJroNVTnvek09rECw/BlYEDrM7S0deQMv5rWO?=
 =?us-ascii?Q?dcQk43QLcD4Riz7urrRVGDIOHTTqf1+Qsyixln2PtwQpuKhbLmMpS1XerHt+?=
 =?us-ascii?Q?Jj6no5rVuy0M9OHZwIGMBpjBa5pdBfIYX4vRm8rhPaLpsHbmH7ugYfTjFqpq?=
 =?us-ascii?Q?VprQqdf6xKWkLYTg3kIkGDLlwbuM76+q9yPKoYfW1HbHp6ITi5y4Awhjj7SA?=
 =?us-ascii?Q?nygfpi+IKwJiczw4PMNMzjkzftSoLvqR614Q55AyOhFwRlKXZc5smG+qo1SR?=
 =?us-ascii?Q?mEBmeOkNyvj+YRy3hCHh9tiBEgcvXt3/po+CzaYM9e6V9rznnShwmWRXJOO8?=
 =?us-ascii?Q?D13RPZp8CLzBM/aZ1ZX1ICtxz6SGlncHiVTjyXdBms4vvZ1bPO3TASjp3/lZ?=
 =?us-ascii?Q?PudeaL+4lcE5NWo30owTS4rbxJclMiPwKwSUIPJ7CBRzg9RurLj841H8l210?=
 =?us-ascii?Q?8SAvlXzRoYuTs7zWJBaZ+crbvpz5ZMOHjE62rrGXymhuebpNLWbIlHTik8NA?=
 =?us-ascii?Q?Hwa2QYtEwPKLejmhA1yoyPQhfRWB6jfVMnZVmQz+cFoNsKzTTy2aMTbnocUt?=
 =?us-ascii?Q?Qk7Z+WTS7j4YcAsZaLVjzcwaMWzp19N6KekZnOn7ZHfCMoEbHZ28VqjeJI/r?=
 =?us-ascii?Q?R625D2Ihc2JQJAY/q56Jpakibc23DyrYrDzsnnJnUBJwoAFqBsPZwH2FhFKI?=
 =?us-ascii?Q?CEBmqmvCSD23fHwIHDhIRHg4qyi3Wg7hdET+2zYmnse6k436S00n2m68gJjy?=
 =?us-ascii?Q?r78UGBYKvS/eYOy3/f5Hhnn9wLR7DskkwqoHuoRE83w7WWJpKUoFNao7ZNBV?=
 =?us-ascii?Q?b6u70xq++ZNEPYsLwy5HGC5FGhZf8r1sytefTlP9VIpdQT5313S2gG+BIh9B?=
 =?us-ascii?Q?tSYmM4pue36buhdepZOWomiu/9IK9LMAQkK8lfdz9ICi/XUvwtlfKyinHk2c?=
 =?us-ascii?Q?ypC0XcnC59bpc1FOdqpfsYvZZErWz6YUAuSzAiGogKCbE162oNT2UM0MLUGk?=
 =?us-ascii?Q?LaPOBIyHWw+VYwXuDdwpy4Tj+pxTAefgz+8nG0Axk41pMv9v/Mm24SEYFB4X?=
 =?us-ascii?Q?L460YcSlBcyDkg4BKLMAGm16KYDJ/tuw?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6312.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?X/I8vFACOiDxPEd638rMB0SxMQSlkNhTHOY+IMv72rn5GNzO/jArYzQFQhNy?=
 =?us-ascii?Q?zaNk92dSUODlEGTIugK1kEurcUuuJYESU9xxNuDID56OiQ3tVbUsllICcZlZ?=
 =?us-ascii?Q?DO/r1oP73GjRBR9urcqQa48T2qq+f9+m5QP3j0PhVAthwGu9HupNDEbnKetc?=
 =?us-ascii?Q?fWfxOug3nuMdinyWeQ0+7KLjZJsTg1cMQzab5Z1Rl269WIVmxn3swBbuyy2/?=
 =?us-ascii?Q?kUeylDcdllUoXmxdKQ2RnAbO3XuO3ZQWJR67MaKhijZrgmzgY72xOn25Ys+8?=
 =?us-ascii?Q?jxoDarVOsMxpzmE8s7pxDX2E2uZ75635NegmdgfyFaU9UhDwkG7Mv42JQ0Us?=
 =?us-ascii?Q?yK/GodU6s4r25lZBbGy6dzXscyJAEbFSs9NyPCabHfIT1O5h436dBz0DSTE0?=
 =?us-ascii?Q?FP/S4qKj8RT1eSU2UPvVdyneRMYTLrkYKXubmjLimNFeqqLvb5NSEFK1qW+K?=
 =?us-ascii?Q?9hot3wJsHJjjnY8IFXKN+aree1B/rQeXKrP6OPFB7+y0N1vDSjIlWKi5H5ir?=
 =?us-ascii?Q?PJR/llDfXh0b2YC+s9CPt1lmrFUfhAb+Y/grTku4veCAW0dYyUiiEDulk1w8?=
 =?us-ascii?Q?ISKi0BR+Yn1HPcYeuwXSiWbk0Swl8yOyuMo9bzymF4zeTzkCw9kx2uA8Jw97?=
 =?us-ascii?Q?SRVKNgkNFRQGYF4zb6fQfDMq8JeAuym6j29PAKB6nF9GTI3UnNLClH5MDHhY?=
 =?us-ascii?Q?WmYEy9cbOT1VJhnO+aug1N+D8Jgd2GlD90/ZdvXa2ON7+g8A36tREDSwdHJc?=
 =?us-ascii?Q?shtPBk7FAa3QY323BRfHpKNHSM/Bzc2q8+EAErTddGavxjbOoMx5+5eoJkow?=
 =?us-ascii?Q?7EMqtjL80AdVpHS0T5KQFEbKL7OTxx8/+Qgto/uW5NwG+rxAQwLO2KHnVevn?=
 =?us-ascii?Q?MVm4VtGZYi92DSASpL6/kSRCumc8d4CvFyI6gMHp+BmGtU4RjOgx4aSrm1X8?=
 =?us-ascii?Q?YLAIY0+1tZ3LYttByvAHgVs7x5jpl/BhpbzqOBzBW2Ctje293pwgnZkawSOH?=
 =?us-ascii?Q?6YYYAGB87qDwC2xr/0Eg5NaYLWGv/tOgWRVMUTRAiMheja5wfEST2FYMNozh?=
 =?us-ascii?Q?jYQAyvOhRCDuuXx+dOzAOhBtMYSthOftr8n5pQT7seHYSSB35qS/FI5Mky5r?=
 =?us-ascii?Q?lZ/VQPISXF6RI3mNYJleJDNVq6+J9G/UBXKz05ld6ADF+rOHcScmCrVMISLj?=
 =?us-ascii?Q?Rkngb1eOJVGBlieSkkqvhPuDwZVbOCYWh+4V1OOsmRP5bRVwGI5Jm2PaZrG/?=
 =?us-ascii?Q?Fp0GW9B+B47UidsVZxdnLaCKt/CB9IPGWI4RP/3WghZ4fig5VNKOm4RnzZu7?=
 =?us-ascii?Q?p7lpy6F38nepr1V9h8p3XcZRUGng6rJ+3ELNXOYWF/ijWuiqG31qlVhVS6ns?=
 =?us-ascii?Q?knAp8U/4wddsjL9dKpIluNyj9Ge9asSIXJSc9YKKL5NUJglvMCPtlUbSLsDm?=
 =?us-ascii?Q?W0+ORW5E6MDExjYs6VwUEwum63lIQmMJV79f7G1mWQQgRHtlOkLyB9VIG4f/?=
 =?us-ascii?Q?7N1ghZpCTIxYCfOprLXdZEFu37xoRvEH3h6mPpD0EbuP0Q08y/jHP7LIloVf?=
 =?us-ascii?Q?Sf3MRfl4OnlnKiYTef4=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6312.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 927df4ce-e36a-4315-f2b8-08dd1de621e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2024 15:27:20.4547 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +W/nIXnmXShbrEitxZrOLVXweIKwFXVsl+rkHF3TWUYT3J+KQ0he0NxRGf31xgedjc6sWbkO+MFMdp5sCt/IDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8386
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

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Vi=
nod
> Govindapillai
> Sent: Wednesday, November 27, 2024 5:37 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>;
> kai.vehmanen@linux.intel.co; Saarinen, Jani <jani.saarinen@intel.com>
> Subject: [PATCH v2 0/6] prunue audio frequencies based on bw limits for D=
P2
>=20
> Implement pruning of unsupported audio frequencies from SAD frequency lis=
t
> based on the audio bw calculation specified in Bspec: 67768. First for th=
e
> maximum number of channels, supported audio frequency list is checked. If
> there are no available frequencies exist for channel, channel is reduced =
and the
> assessment is done again. Eventually both supported audio frequency and
> channels are updated to SAD in ELD.
>=20
> v2: updated the series based on review comments. One patch from the
>     previous revision is dropped and two other patches squashed to
>     another patch
>=20
> Audio bw limits calculations for xe3 need to be addressed separately
>=20
> Vinod Govindapillai (6):
>   drm/i915/display: create a common function to check validity of ELD
>   drm/i915/display: update call to intel_dp_audio_compute_config
>   drm/i915/display: check and prune audio frequencies based on bw limits
>     in DP2.0
>   drm/i915/display: iterate through channels if no feasible frequencies
>   drm/i915/display: update audio support based on the available
>     frequencies
>   drm/i915/display: update audio bw calculations for MTL

Acked-by: Jeevan B <jeevan.b@intel.com>
>=20
>  drivers/gpu/drm/i915/display/intel_audio.c | 159 ++++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_audio.h |   4 +
>  drivers/gpu/drm/i915/display/intel_dp.c    |  78 +++++++++-
>  3 files changed, 231 insertions(+), 10 deletions(-)
>=20
> --
> 2.34.1

