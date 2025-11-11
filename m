Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF79C4B916
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 06:48:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4F3710E4E5;
	Tue, 11 Nov 2025 05:47:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jHvVyl3G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3F2810E4E5;
 Tue, 11 Nov 2025 05:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762840078; x=1794376078;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2TmdniFGY5iezvvb3+/63U6DBYQJ8RS2IZC0/tE4yBE=;
 b=jHvVyl3GbcMr4T+PvVBiS23o2x+tDIs0rHqBbBD/F9TLPuTqHq7Wock5
 y+XkTen6qPYtYI/QW5i8P4cyVEQV1RK2cw1AX+SZWfp2t6NhGcMZaSiJe
 gySeDGbqlivGnG8YmP3Ctc2gYuu+8FYnxJZ1zq0ZlAumLohNYU9pqTrgN
 ooDTscQ4TUQewug8OTUDWvKoYuISWNRVjSr2vLqYy9nu4Ze/R3N7JGKB8
 hqLTKUK7Vi849RK3B8DNp5fGIPIZnv/cf5b+l28s+JWzNJx/sZVrt6vyR
 tFp/N84SQJg/ZSJdCMnWKz0qvCiunrvUGMGEHtx2JqgDgEzKzKyOw/v+1 A==;
X-CSE-ConnectionGUID: OImdp0zYTp2nHT+W4ij9eA==
X-CSE-MsgGUID: EC9kvgwJSMaLHktgcApqdg==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="76245464"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="76245464"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 21:47:57 -0800
X-CSE-ConnectionGUID: 7A7r8N11QUCUdnm+eQxmGw==
X-CSE-MsgGUID: STQz7gO/QdeIcbXTG8vAyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="188711984"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 21:47:57 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 21:47:56 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 21:47:56 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.24) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 21:47:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X2T9aHXRCwbctwsdwqS9Vgu3g/ktjPl5wHtxU4wW0rXJDO68Cj0jH76wdv5uP+qi6ZNmOkQlp1deyL3dpa8xRwi9kjVUP5iD2IPNyw3A9TLX0mtlxPfdkwx1p1QRDa4o8/5tqIfrma16lpRln4/DLApQ1uEVlodHciITIhWGpuWsDOcFO38IeWBs+EbP7p0nGNRhissOhxjPObY3D2u8oRyLyW6/bcTK9Vz2dnOoA0vuysXP8hCilnyc6TuIm0IFlf2/NtvVjsx73ZfZbMaYN1+RNYBJHkSyRUQxnNCjIPvzdRmkFW8OTKlAjxn5cpDyvVlBlqi6Mitd9q36ceLINg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EByVCY9V4FR7EiTsB9/WXLopUQuC7hqaw+2J3eofYao=;
 b=kkxqtB6w9q+09RKV6A910LmdHZ0tscYYtMK2UxOroCjE//DAOUd2lA43F4q+vazEc4yhLQGPHrKUQIUql2iQV+NWTd63F1PQ4ehGfAl/RAtfiwdVFYNrAO65x7o7vWGbYuaIva9UCJ6HahEh+zFLbgeM48pOjGDmu6EmyFuon9uqUW3V3HDoqoCNI/yq9RQZe2VlEhms/c3vPtqJHZkgrK5ot5qk+U+y5gze0Vy4+vuW/vr4uO0FFtu5Y9Z5gTCY2Qrsomd81sWh0maKGbFKb6U/ciFRJFYuy93GTq6CGwTU82CQezOHgt5OhXgauHsFJErYpTFiAT2r1WgxWNLKDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by DM6PR11MB4753.namprd11.prod.outlook.com (2603:10b6:5:2ac::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 05:47:53 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 05:47:53 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [CI 07/32] drm/i915/display: Add macro to get DDI port width from
 a register value
Thread-Topic: [CI 07/32] drm/i915/display: Add macro to get DDI port width
 from a register value
Thread-Index: AQHcSl7rIstTHSA0WkCWUEtzc4yx5bTtCIVw
Date: Tue, 11 Nov 2025 05:47:53 +0000
Message-ID: <IA3PR11MB89373C9700603ADD8CDE45BAE3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-8-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-8-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|DM6PR11MB4753:EE_
x-ms-office365-filtering-correlation-id: efb31c1a-c134-4956-1862-08de20e5db98
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?BEZknJEKU6RpOvrXe/ibUXelt3vvPEZ5M+cU8AqU5fC9jVimmFtm6ce0YtMw?=
 =?us-ascii?Q?DNxq8bC0xhw4sGiOFTTNlODnbTeE616A3tEdjUeRscslzB2BcX9g0AXqdZaY?=
 =?us-ascii?Q?0cS/FdUKv3knnnmAdthN2ENCRRNRA/TN3qN70qWn7Vcs0vDKCq0k4UDiy23M?=
 =?us-ascii?Q?9EY/IZ3RUzZPIDYcVzQCNjeMIAvgd8IxE9PlVOnd/objTkNguWbB+t87GXxl?=
 =?us-ascii?Q?d1ieqP3Mf9u8UjPhitnj2GnUKntaXxYsmhymx8OTbQHvPnJAVBKIVcIHjCSb?=
 =?us-ascii?Q?bZ8HZExhD4omznI2z0A5Y3YTuDpKb3MTaQ0wtwqJ5GgFg8fxdpmxbRcrZI4j?=
 =?us-ascii?Q?1nnsYjoOc1cLl2J54rz9+2B3eAqsc1sfFSnR3wU5IzB5bN7bYCFwbN7Hn09/?=
 =?us-ascii?Q?Y66k0ZAtMEfGmZwa966IwzcFlmwLnkVOUWb51a/6ATc9HIMBLrTvuFKKt0NB?=
 =?us-ascii?Q?xjeuxAiXoxugusB1CAePzlvGInmEDFWmxtJ8LCySLJSz0tBs3N95AxAvr06J?=
 =?us-ascii?Q?938U9tMSeCV6wol/X9yEF5EPPMrnOwqmHDugYdLQSf7RFffWcz3VlTikyeir?=
 =?us-ascii?Q?CEIOitHUMu1eCDbcl6BlMVys6zLUa2RtYleQVA2V2o6ZPWiXBnnCEuaGpKVZ?=
 =?us-ascii?Q?OR6DhCpm2QEcwBN52DHyKNWE+B7oralG9FTmOr0BhDEIDw0sOEg6eBw38ps1?=
 =?us-ascii?Q?mv/JLZ1sj3aN2KFs0OYiTpeB8QOkCPLCuoBadvLejM11fkMPVWSl55xVeZgn?=
 =?us-ascii?Q?3pG13Yt+FHoi80zI7LeOxHrvyLu/pJkMx9ymHFbg/8YJ69KsscMnT/++D0Vf?=
 =?us-ascii?Q?Up4c01hXptG3aHhLL+nC9kxZA9mZAjpeGxoEhlvFE+zdBvZCQZ3J+tg1Q560?=
 =?us-ascii?Q?FFL/d8pAvAmHc+K6QgZ8crItFEJVXFTfSElfVASki2vpZj5TROVCsio4lmDm?=
 =?us-ascii?Q?zo66SUbtdp3Do14CuEgujriCFd4tHyzpqTU9y8dyZlgEeW5K2p53O699WA3T?=
 =?us-ascii?Q?8ovXrI9PEmQ7Gxm5+yFuLV79zsRXUXKBB/gnZZbIgbUcBpn2vHGIDxOu5a2I?=
 =?us-ascii?Q?ESQ1wJEsbDxpc6/ATqrWc4zmpHISWQK9PwnYkzIg64HuvpgGmIKxxUZqttbF?=
 =?us-ascii?Q?PvGMxSdvsQaJjAuDtou6XM++9pFFKoQGXQrlub8vcaiK/gLO1j+DXBBsU+Ho?=
 =?us-ascii?Q?6QJz6OSf38kta9V8inCQY1iuRNQRgW0yFY2R5Y0PeS4/B8NHFRxCfXGS3++Q?=
 =?us-ascii?Q?j+JyHM7O8wgzYoUAZDmnRAmZv/wSuk8g7J2co6KeD4OMNDC7+jZdGkJ2fj1d?=
 =?us-ascii?Q?Yy6eNOZRqTir+wXS5Xdd0s97AHOnKK47nOWCrHzxPJXHt4jv9OLxQLqTiIQV?=
 =?us-ascii?Q?akGo/S6lnq/ff9txFOPXqVMpbpRA4TNYh9I7a30vNtO1/Z5krTbH1wtr/5gg?=
 =?us-ascii?Q?BT5F8xvYixvo8O6pcgb3DyEU3A+jq+w/Lli4r+5tLMrndYaH4I4Yyne/EomD?=
 =?us-ascii?Q?+fwc/hTPRy1BvTAKqiVgPDrwzMylm/bSPzlx?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7X0EF5b+8A1o0AZ6YgAjbAi+HUpyY2xPopRlRNjENQKOGUTM1S9EChCnAZEt?=
 =?us-ascii?Q?ivutrLjf6BPRcaqcasqAAXnIQaipd/NW6SIqtgIdqV/RO/S3GDn12WvYRoMn?=
 =?us-ascii?Q?V/Mx/45Ulb7Qs2JAbl60sDyMhgHCSnl/6Wm+PktndzvuxYDHIAHF38AB9ct/?=
 =?us-ascii?Q?/JmochxivmCFT2V4B5skM+02mYlKsTzo4XtQ8wyD4KcWdbpe+b3P1fytz0mT?=
 =?us-ascii?Q?pCBP1f3oIGA2Q6MGMUWRrbwbv1uDwkSbVPn8+5wDODVraJDvgAhUbV2ej84X?=
 =?us-ascii?Q?VRopfXNDRgWp5/DJZiX/73bqeSMY7zRs+RXVLSYhSqA9q8uz/84ckUwdx24m?=
 =?us-ascii?Q?Ixu34QS1xqboYiLwWULV49kmeSp+Yag6QFWNqXp9met2pK4/8tOsCdne4h4S?=
 =?us-ascii?Q?Cy3VaVxH+QfJts+ukhIGR+ctuexvCD3qMW4ePY36Ic3x1d/hJfIqCQ+2ymW2?=
 =?us-ascii?Q?zV+JG57iLuqK8RfVqwX5/XHYWS5N13jigo1dArL2NCA/F4KW6nP14vfylShN?=
 =?us-ascii?Q?KskA9OhoTLBRoiwkb0GHmqcJ3CC+wIEOizipqQo7DMcCsNB6eeavX9gH6/w6?=
 =?us-ascii?Q?7Vh1K3zHpV4tSh5T4YM2Gf2oWK1fHw+n3O1OTVA2e7ebW9vCVIXuaafdxKbk?=
 =?us-ascii?Q?ttUZBdw5bOiN5onYCrdyg8hCoU7E1phbn3BHlUpuGUr3ryc8bmxL846wS2Hb?=
 =?us-ascii?Q?muiL1bWLTcgx9xkR/eLNULJQePE3GUgNeUGEbv/dAPmbsCMMnbkEvn5hteFb?=
 =?us-ascii?Q?EiZbf0Ck3E8UyEXMwEpo40QiuhbPHzA5wv292pQVRyV94RL6ug8nYeD0mnme?=
 =?us-ascii?Q?SsQx63FmuYR1MYHCaGaKIysmkpBXHRTqJ4CfI8xDG/8rixeXMuQttcD1pomv?=
 =?us-ascii?Q?MS89sNjqo/loAF+giZF+u+a3p4EbKB+L81fBDya+O+U1noMQXzEZuAGcsNzk?=
 =?us-ascii?Q?+6+HynmjJF78iFOlT0a9BiDomEMToMARmkDmdAEaTgCuMyZKNO8TZfvnDsxh?=
 =?us-ascii?Q?/P/1WOZ7joZyK5eGJzmsoKu4946sEWadC+gN+NMtK90O/bPdl78Dh711YPq1?=
 =?us-ascii?Q?U+XiOXjitHz6nrrdTDOIiQT5DLblMu8VbjPb4O5fuLZd52mvEMPky7VeDpn4?=
 =?us-ascii?Q?XV669cyIe4DO1Dn9lelrUPe1gYv4ieiaCDWcU3sudbwTkMX8Z5jPuRU9mD/m?=
 =?us-ascii?Q?DGofD/HBU8AEY9Tr/VuKBeVIJCOSpcTkjeaHNrd+Ya0zr1uskwblbpxCnCb1?=
 =?us-ascii?Q?2jkZDZ4Jh/blKNZ43juRF7eVZ9OhRXHaFmGmcu4IUrNAFYdFyrId+SHXZx3G?=
 =?us-ascii?Q?HI+6F5CzGEsXtuL4BmhSiqAuDglqM4/1K+sg3o0xHHP1aGCPY8Bdjf1Yfx30?=
 =?us-ascii?Q?rdCeT3oUcjwM9fUgs66c7JkJdyUiHFcViaQxDB97/dO4TMuOzWuZlJyheLyY?=
 =?us-ascii?Q?NkgxYUbvuPIMA7InwvlHky/JcgqXU2Z1Xqtyfh5mOlpkH5R752NmscfBq9+a?=
 =?us-ascii?Q?dZmlfTTRlBKbxzQ9edN/b+Sgq28n4/xaJH8ohEHqr3ZBNE675RPoaI0Ogv/s?=
 =?us-ascii?Q?I99OiUtJV+pXoODk5RbvcbNMZam6m4+k/aCZeWRu?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: efb31c1a-c134-4956-1862-08de20e5db98
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 05:47:53.6820 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UGMm8IGb2FoIY9RrT3AR6XLnhv/+Kmlj+7bYnfHYZ1FZCdye7fHtdV3L9WHaHqdFOtBu4R30LginOm70dIjKmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4753
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

> Subject: [CI 07/32] drm/i915/display: Add macro to get DDI port width fro=
m a
> register value
>=20
> From: Imre Deak <imre.deak@intel.com>
>=20
> A follow-up change will need to retrieve the DDI port field from the regi=
ster
> value, add a macro for this. Make things symmetric with setting the field=
 in the
> register.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_regs.h | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 9d71e26a4fa2..c14d3caa73a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -2349,8 +2349,13 @@ enum skl_power_gate {
>  #define  DDI_BUF_CTL_TC_PHY_OWNERSHIP		REG_BIT(6)
>  #define  DDI_A_4_LANES				REG_BIT(4)
>  #define  DDI_PORT_WIDTH_MASK			REG_GENMASK(3, 1)
> +#define  DDI_PORT_WIDTH_ENCODE(width)		((width) =3D=3D 3 ? 4 :
> (width) - 1)
> +#define  DDI_PORT_WIDTH_DECODE(regval)		((regval) =3D=3D 4 ? 3 :
> (regval) + 1)
>  #define  DDI_PORT_WIDTH(width)
> 	REG_FIELD_PREP(DDI_PORT_WIDTH_MASK, \
> -							       ((width) =3D=3D 3 ? 4 :
> (width) - 1))
> +
> DDI_PORT_WIDTH_ENCODE(width))
> +#define  DDI_PORT_WIDTH_GET(regval)
> 	DDI_PORT_WIDTH_DECODE(REG_FIELD_GET(DDI_PORT_WIDTH_MAS
> K, \
> +
> 	    (regval)))
> +
>  #define  DDI_PORT_WIDTH_SHIFT			1
>  #define  DDI_INIT_DISPLAY_DETECTED		REG_BIT(0)
>=20
> --
> 2.34.1

