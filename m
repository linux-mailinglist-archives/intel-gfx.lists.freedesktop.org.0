Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4B7C4BA00
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 07:14:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AE0510E4EC;
	Tue, 11 Nov 2025 06:14:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O0pEPDxA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6240510E4E6;
 Tue, 11 Nov 2025 06:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762841644; x=1794377644;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5paTTyThziEfUR7fltfAYFUWR8/60waoMhgX2oFG1U8=;
 b=O0pEPDxA+BNY4XmgGTv4VgxDlgkvdpRUecPTnXNuqziWHZXFFFBWUHsg
 CunzyU1l936EpN1Gz1LPqVne8uoYBrMWU5EirJ545cA0pGq0y5bLxRtvG
 eOZqctUZBIXn4a+6c1k7muY3avnG+WiUlYQ1NSPvcxnz/4ADaNrsEuLtC
 Kwls9NuyPl3hSo2ouhkr38B+Qxu09x0x9cgcjerR/KlI8Clk78f+E+/Jv
 U14lpCOajjijMGl9EBEFkxN2NL8rmy9ajh4kOlAtndYGabITfUzvcdlWO
 38tCXsPew727eMSH3a3ZjZSDQUqNqUv8nxiC76jXCM9/+0lnJ6YtvVtNB w==;
X-CSE-ConnectionGUID: YPe3a+AXR0qUAVMOkjlsXw==
X-CSE-MsgGUID: I6CxjWqGRTq17TxAWzU9zw==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="64106872"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="64106872"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 22:13:40 -0800
X-CSE-ConnectionGUID: 6djj/M4oRYOg6pq2CFGF2g==
X-CSE-MsgGUID: Y+6mlSx3QR6Yx001gVTwcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="212266152"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 22:13:40 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 22:13:39 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 22:13:39 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.52) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 22:13:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u6pa+StafkkqJZj4neV85HQ9FDbXRsjqxMR3avrwPrqTTxXv0ni/cuWx9tsSYFKERoKlxAQunUw1M2SniuraN6fA1Zx2B4s+SDY/Zsqk2sIyWweM6S2E9+AMucS8tdMOg/ikP5w3/prDNbUDhJ9tWy0ukMhQmWEGSVD1LgmFCVxivONiOWXxaY3fSZNVKrkplEknrDAMQGP+xB6/CFPEeR320tOTUn6oj1q0r3NtSooV8AwQp6zzP7vhNaZ1YemQcqORNuqHf7enFx/z+E+BVQS38u0qKU6RHUC8618xdez6SYYEO/tFk6Kdfy1BMuKMHbXQOY+/T0/FyEom1V+f3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TCAJBqQxhe5zqqBQUdt1Wjz3nYV36pZCfjSJn4Trtjo=;
 b=p4C6hotSDkxUQPsFMU9xUdvEFs4LVu+eRlcNIyaI/ZB5KgfFyU+74ovgz7u2+LxxjfVU2B5FeolBLZN5WziZ+QICuL32Vn9gTrlKKkQe3V77VpvhmKA/xiIJDGSOTMhGLc70SdBXk48vNCgSBT4vAhNtVo77STG6pAdFq70CyOa7kaJB4etT9qB9CXjiXusfnFJoJpERbQ68bTUgpOMO0Dm5lIZus2KWhd3ke5F8wA6v9mZXAnWeRq5hhJsoaIohvSH2Uv+UaHKxggjyUGIZmhULxzx4J0NLQwA+fwE1wr5RkkpAvWgTeZ3GSu04MqNmyFh3f1pLTN8amyGRTfkJ2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by SJ0PR11MB5103.namprd11.prod.outlook.com (2603:10b6:a03:2d3::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 06:13:38 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 06:13:38 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [CI 13/32] drm/i915/display: Zero Cx0 PLL state before compute
 and HW readout
Thread-Topic: [CI 13/32] drm/i915/display: Zero Cx0 PLL state before compute
 and HW readout
Thread-Index: AQHcSllQB4NeBshyy0GYOoX7mfmogrTtD8kg
Date: Tue, 11 Nov 2025 06:13:38 +0000
Message-ID: <IA3PR11MB8937F24C8AB2A908F38E6E25E3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-14-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-14-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|SJ0PR11MB5103:EE_
x-ms-office365-filtering-correlation-id: 2f48da8e-6dfb-413d-6dc0-08de20e9741f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?+5wELRJno4FIa4f3TMmX96HN7vJ6go6yl4KBL7C1JkjRFWV/z2gt9hrLJ1gI?=
 =?us-ascii?Q?SZL7K7tC6DxAtt+BSAPqXndVFEca1EyN9P9+g1R9NBEWqZmUKvIp3AoXjU8F?=
 =?us-ascii?Q?o/nwNttFxr5JPz9bazKmZaT1rYoGEHjwaDAHLbjfPm4QzIzlYCPq+LyAmsQd?=
 =?us-ascii?Q?hT3PkflAV/94csv4E6kSPB3RtQQC3cGP/fZdyOGTw7ZfbsedSX4o6F6gYj5C?=
 =?us-ascii?Q?u+s+AHs5+TLSfC5zVv38Cfet2IQRBifcq3JwA8AGKOlMuHUp5ibrkiGcBpEI?=
 =?us-ascii?Q?H7NWZUNNEvqfa1SlkKYrEfLLSoaLg4gJzFh6jszUDzKoIZ8BZcCesgfP+09t?=
 =?us-ascii?Q?0LX/unbUrI7mFYP3tLoLPUA26KmLo06lyTuJTB8HBgB3oEiBUCXJ7CP5Yetf?=
 =?us-ascii?Q?NiCkVCVPAYtZFXefB4atJTrnJvXgiS5pG5NbSEkVj8I5j/UJXyMVp3ghpLSM?=
 =?us-ascii?Q?6CnKW2sGVOQGFnKxBv/d0XRdbFYqOx6+5caCMaGxQr6c9dPnr7NON78TGys+?=
 =?us-ascii?Q?3r3qnUmCtydlLgRkQ2n5GfMJRV7S9wWa8i1B7vtqsi66KUw/VP2flUEVk+Tn?=
 =?us-ascii?Q?jrR2ESQrDrsneT4wmOsxqlfN7SvvypQalL3GHoWID2dinaChWzh7iXy29kbW?=
 =?us-ascii?Q?pJqkHOEMyNSxAqBYKLdxntiyFUeK9RF4Pw1gO3w1mV831u6TnnsuTEnhxSjB?=
 =?us-ascii?Q?YCnC/TFTx9dyq5ElWBB23UyIPU3kZ0jejCiWGa1i+jU3mHZjchEgi3ABresX?=
 =?us-ascii?Q?ha8X7ccS4uuJd4G3yxnsZ3fLCIm7frjuc10rnn7D/EdpMU+nKuySX+ifOlsK?=
 =?us-ascii?Q?AkUnIWHt4MlLjSaZmNe9jAf+8ziKuE3BTlte2NErrclwlezGzSA36sHT6UhY?=
 =?us-ascii?Q?Ifwu4uzmkmJP5Xgq7RimevMnLsuhO8n7rue2OdJ1rogDsWY5Y8xaGJMVMCyj?=
 =?us-ascii?Q?zZVFRZGAwJG8c6gZCs4pNJA/wMw60q1/wJf1xMT70j3VBPb7qGDQwFYukIBF?=
 =?us-ascii?Q?FVZo1WNpaABMrouqLfR+SxRma/od6JoBwyaPOyiZtWXysTTnWA+S0nI48SkO?=
 =?us-ascii?Q?01NQVmpw797ajSBZRrEve/muzT3uX9301Lrnq5Cs/hC/LiWN/y2EXYynB+q6?=
 =?us-ascii?Q?ruax/wLflCXMS8P9+kuYFP4P85r0UPfnUCMPJ0pKVBGwa2oJNZGI8IQvF4w4?=
 =?us-ascii?Q?76dhZEtFJ8HTY0lAJ61H2Q+xkyR/YR0oNu2GWkZYZx7cG4bH2A2aWa1AalAx?=
 =?us-ascii?Q?KE91bnDdjCeW8wyjI2YFz6Qq7jI3q+JAsw7KTtFa3bJzy1obAu9v1mm2wwVv?=
 =?us-ascii?Q?EFg8seoH8zO9iEUQGGYoOFCTmIbFPvqNCIuRrunXjzNzpVMH631mlHCG3+OX?=
 =?us-ascii?Q?MuPUfXBwdWP24crQn1zeMDTUn0cPnrX9H6bglNknuP22XpkWOyEvvWy+W/Zl?=
 =?us-ascii?Q?ovQyzPOewURxJ0pLbt0NoS45HZpfnkLH5Nb3lafjU/w8wKt47ouIvcMuzQeH?=
 =?us-ascii?Q?piybhAv2QnNlBSb90x5hYH72ezuAAGfFeGJQ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Lm4eOO9BiHRrzKt4OziCb5xVUeIFuK0xMtKqBm5OtPhvQlm0QIV0oYcnDev6?=
 =?us-ascii?Q?SbT/wqsfzQDuqaByFS3gGwns6tljgkwVzM1O6muHIbhUdGSorffoW36f2sBh?=
 =?us-ascii?Q?HTnZ7/7F9eRfCSnl3TbPN9SFiJ2G1JIefANIzdef+np2nJR2TgouSkIMS9ta?=
 =?us-ascii?Q?P5Jw/FWg6h4LcegFTvF7HuKfqhmYRYjgs28hgPGuJENPWNYRgKYAIyerXcvu?=
 =?us-ascii?Q?mPG/T2JrD6yH1UUc5mhjYTUgl/G+nuov2sizVKlIuaGEA9qoNWyyjZvAGcVf?=
 =?us-ascii?Q?afXAv0RZ/CbXp9ttbdtNxPV2h/KC+zCwW2UsZ0HK2m/mjxNye8Z2hDF4Jezv?=
 =?us-ascii?Q?t/FdANqAozDBkGhd8lvJzvdxEyN/YPsB+yFFnHrPeuiIwlxe3VoNcUlKrb+t?=
 =?us-ascii?Q?uoq2cJTYIwUhJDZh7IxD4VEMI3Gy+R+/rusgYj0xSjhdXeL0NonYy0RtwlNn?=
 =?us-ascii?Q?eex2ND4jX6UwEukqEEpcW0mLSoOsK4aEpFpkJEsiKBJU5YbrQNx1lCxGpjQK?=
 =?us-ascii?Q?oU22oj/Z4ZQS7i6srN44f1Z1qMY7/ClFd7ETO1Y2GcsEORnsQx7RP/XfOQ1C?=
 =?us-ascii?Q?Wf8Ex995wH7CJ4l8frSOd2kcxOz/4SoDzyNQT0PT+r0yKPUUOgWaiVFSHRaR?=
 =?us-ascii?Q?RKddnSssxQ4OXxfdjx2TLp8+pY5rbMTAoZpzlaiGnrn/pDFeisCZV/21WsBL?=
 =?us-ascii?Q?tppUpNwZ9c9u/KgrfS9/7ZnZJlhWfJC4YtznS0M5r4lV7RJ84ekJr0qEp1CX?=
 =?us-ascii?Q?cTro+UtQSOwOhqJOaab83JhJ1NJGoIIzB1Ur/pJv/UH/ethkodFqyGChWCnG?=
 =?us-ascii?Q?m3nvDoUHQO3ZLhmFpi5ZDCXY/DVAddabIvOF0jfTlcJfdVOb04TAcRIye8qP?=
 =?us-ascii?Q?r0p25xJl3cqzIq9kbKLKDamMI9oUR5+ev7/QqHVpGaYWcJIj7rURV/EIWdMN?=
 =?us-ascii?Q?WHx9Kv7+EjfNOtVAlN+6qMFMfcy6wOkjvz1cLV/CgXdosEm0WYCdWQvORlXp?=
 =?us-ascii?Q?rUC8FREebZL/KRrJ2aEIJHpQifK7IWoRNSLlfDf8bFNK4oztLTJgtI1Lg1sj?=
 =?us-ascii?Q?ysKP7EdOifQyI2JuOHhcCWwBBZb049tECC8BBS3NEjtyOgtVdohEq41d8+L7?=
 =?us-ascii?Q?M0jWu4Cqh2wAsmjJULVH+HNilGFUtMsUTPbiH31BRRpXV2gBj9VIN0df3HAc?=
 =?us-ascii?Q?qW/cMfaiaRuZks3cu5k8uCr9bbc9m7oAOPGpOqxHxWioS6ACShNOHKP5svM3?=
 =?us-ascii?Q?Y14o3X+7ch54AWUq8OdaZTY/hdcP+xtXfM6QVqFTzBywtZC5OR0vU6/OBAfz?=
 =?us-ascii?Q?NpnR8aremjW+xsA/oc1ET7epM4cPYIhp0WiSxTm9d7tjojCwEFEgSTzO/u3E?=
 =?us-ascii?Q?JlOKHhyX3uEsj6K4MiEipf54RSpn75bZPTyRjLNl44XFOvr7Jlsu9JCBEX0g?=
 =?us-ascii?Q?RGrDv1G7jVw00J6/2tGxZvIgN6kgieWoBu7/+Jv3CO1tr4ZxKEcS5luRF1us?=
 =?us-ascii?Q?HvykaUHifqMNLxogaC5wtdhTkzagfZGdYKvfhlBUZNGAeGi7DW3N4lrMfUCw?=
 =?us-ascii?Q?3KBnQKKKGG7W0l5wmnrpL+MaEL0fbDDRfAMDv6/H?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f48da8e-6dfb-413d-6dc0-08de20e9741f
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 06:13:38.0720 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tfwJTWAfOVyRSHIuluF3inDLXq/JvhsBmeiAthlCtinu0rwSgdDTlm4BPTJPgzLJ6qIdEoesc93XbBDXWOpYaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5103
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

> Subject: [CI 13/32] drm/i915/display: Zero Cx0 PLL state before compute a=
nd
> HW readout
>=20
> From: Imre Deak <imre.deak@intel.com>
>=20
> Ensure Cx0 pll state is initialized to zero before any computation or HW
> readouts, to prevent leaving some parameter in the state uninitialized in=
 the
> actual compute/HW readout functions later.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 29bcfe8fb6f5..3418fc560faf 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2698,6 +2698,8 @@ static int intel_c20pll_calc_state(struct
> intel_crtc_state *crtc_state,  int intel_cx0pll_calc_state(struct intel_c=
rtc_state
> *crtc_state,
>  			    struct intel_encoder *encoder)
>  {
> +	memset(&crtc_state->dpll_hw_state, 0,
> +sizeof(crtc_state->dpll_hw_state));
> +
>  	if (intel_encoder_is_c10phy(encoder))
>  		return intel_c10pll_calc_state(crtc_state, encoder);
>  	return intel_c20pll_calc_state(crtc_state, encoder); @@ -3635,7
> +3637,7 @@ static void intel_c10pll_state_verify(const struct intel_crtc_=
state
> *state,  void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder=
,
>  				   struct intel_cx0pll_state *pll_state)  {
> -	pll_state->use_c10 =3D false;
> +	memset(pll_state, 0, sizeof(*pll_state));
>=20
>  	pll_state->tbt_mode =3D
> intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder));
>  	if (pll_state->tbt_mode)
> --
> 2.34.1

