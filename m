Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D5A9E97B5
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 14:49:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82A9710E0D1;
	Mon,  9 Dec 2024 13:49:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e8A1b1pU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECF1E10E0D1;
 Mon,  9 Dec 2024 13:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733752160; x=1765288160;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=NcSWMHHMeK8SzyJML8KRuH1mucZYSVbGkij32q4ia4o=;
 b=e8A1b1pUKVqVxllvoSSVhoSi+CvxDLaOl16pJCxao0XvNKvWpDsjRkFd
 KgyOVMjwxcOQ4D15CmePjKAgxLDptyfCB+fiBHv3X0DzpOXte8GYe1pKX
 9OKeBfLAoqcpVX168s4ptAco/Hy5Ayo/zdlUc1h7joDq7gJQCTOaQ/YEv
 /tTrCutWEnCOLzsrX6+CfhEyqZCg52GxQmB6qnn8JorL9gkHmyUYk36bD
 n7+R44Fn0vXGUrqBdc+w0mNMxvLfE3PcYJOBEUNSJDYoezUARfZEw+LC3
 z2IVNgtOCcNWCWLGhirc1NXerpDiTpZFtf9hK7nKFPyRWyfzu3q8rwa9C A==;
X-CSE-ConnectionGUID: uKgJiNyFTRCiqsvpJDsZLg==
X-CSE-MsgGUID: nKjCgLXtSUOr1FONK+d+4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="45061030"
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="45061030"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 05:49:19 -0800
X-CSE-ConnectionGUID: Hy/ImksFRRaauweogdXqIA==
X-CSE-MsgGUID: 1DoVvRKUSEiAA+yZTQ0iZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="95534934"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Dec 2024 05:49:18 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Dec 2024 05:49:18 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Dec 2024 05:49:18 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Dec 2024 05:49:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=btVUocXJyK1rBWp0kDtwTm2HkqcrNIZ+nJLEuBfwwwb+z3z0JfQbd+DTP4HU1zTH6x7b/qv9519OrxIiiMdUC93HlLHggb9UlmV3kz+BNuTGRX9pBa7L3MDYNB/YBM1+Eq6MUjzCyBo0UouYmx/GMunu7lvxNH6RMMlu8dvIFQAPHLAKb+wt26r6ssh3PFeu4S1LDLJM1IOFTJHPPHbc95sKcYhIfDnzHZWTiV/l6dAxy6zSEXei+EMBA2/sjcw9HjNj9Jl1JhPDF5YNMGWep84eIxFtX26hwYp9bgEgJpe4IPO9ygh/ZAlAlxW7HLyU6yOyUjD5Xr+XtkB0FOfGAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RzjJdBKpiqFO2DmjHGZ1Waa3X3O6LKT2ZhVM2owZAA8=;
 b=c+gfGQRvrKZ7vGY652F0xNXbUtRudv2hOkaBiAhNcKjMnLGj19x0tXhk3olsrCp4/thcuxr1MHGRN4ZL7pH5orL6kQ339HbSd4lVyPnP3h5WT6vhtDKSqU1EAuW4IDL9auI1Fq1uypHL0khqtFwuLvE3I478czAr3CgvUj4UIBVwuBmzipoHDn1CCl5DFXvS4/5OfQ1gTsTn8hFzWh0v1de7ARi9Wk2BMKo/C/4gOxy3r3PxN2ID/CWOxPW7IFcNl6x9mxA2Mumw42Yy2X0Ai9F+I2p4eF/JbMPQWUyGYKCEOErijOdDje4PSb2iiP0emRS0kdIiX1VzU6gmzCfWMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM4PR11MB7205.namprd11.prod.outlook.com (2603:10b6:8:113::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.18; Mon, 9 Dec
 2024 13:49:15 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8207.020; Mon, 9 Dec 2024
 13:49:15 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2] drm/i915/display: Adjust Added Wake Time with
 PKG_C_LATENCY
Thread-Topic: [PATCH v2] drm/i915/display: Adjust Added Wake Time with
 PKG_C_LATENCY
Thread-Index: AQHbShFd7fjqU6rdrkSsSU42exF2rrLd6Okw
Date: Mon, 9 Dec 2024 13:49:15 +0000
Message-ID: <SN7PR11MB6750190413E1B10E267487D4E33C2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241209074702.3975702-1-animesh.manna@intel.com>
In-Reply-To: <20241209074702.3975702-1-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM4PR11MB7205:EE_
x-ms-office365-filtering-correlation-id: a23c44bf-b661-47ba-a3bc-08dd18584519
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?wfvbsrVOTIQbHBoti/gNEOs9Qymc2S50RIhSS8BvHeDXmYMzI5e3qhP/MtSx?=
 =?us-ascii?Q?oao44V1dTkNZVYITNiuOlcMsnidU7CxAHYHwi6itRr/ifpzJSDPMVy6bdrx+?=
 =?us-ascii?Q?DO1CXpuLvrie7mOtZl91P/u+iCjLxOn8rgCajD2q7caMNlHx2Nu5N37AXDQ2?=
 =?us-ascii?Q?k9TfdGljYmRO9WtpKSfTNEVww6zkDd0f6V7ioB/EtmJ6XXHitMlVwth5/gr1?=
 =?us-ascii?Q?rxamyYa32C60QxOTGm8nblxbdRu5ZQPP3SBnhu3+Yf+mWK5FGNLyIVseRqLz?=
 =?us-ascii?Q?O+sDzdSKMlMk31dhfbKttuJLGXX4wPYriblI2tXpeM1NcX+1k6ZYUdumbOiP?=
 =?us-ascii?Q?OpbbCjMIVFs0r1zdAVAi9/QuxQJ2wYzS0JZDubHDnLRb0p0HgbK6Ff3rkDJ4?=
 =?us-ascii?Q?4uu+S7SRM/aEi/RFwEUesF1Ipfw8HPDRwUG+qXKrnB4+MoznL/6M0fS/r+cD?=
 =?us-ascii?Q?xhaUXSC+pkeqcWY7VXnKmWX/RgLlXC44TuZh9iqen7cWIlqpnnNdwrurPDAx?=
 =?us-ascii?Q?/kwa62XnmkTMYy5suFJck/rfqsjnFlgklD6nE90mCxs2Z1VpvPSzMttR/68T?=
 =?us-ascii?Q?S2nsiIYhqZuaNaFFvAXT2y3AD3iwHGMz8n0m6ytHCOxBU512lrPGHmtvF294?=
 =?us-ascii?Q?mXargnhmHPhQT3FL5WB7bCf+UUgcYbECz2A9l+0gXCjLVOWE3JNXj97vI3SG?=
 =?us-ascii?Q?wUbF11RVBDzCmsxSKVyN0qOYN9mQ2NjLhOCGtLJOjOlU71HWWWdoLFyB0AqH?=
 =?us-ascii?Q?BuYnpLcebfTiCdbsn673faCgiP3wJC1zBgNkk71oY51WSfU5ld0jeuhNHgne?=
 =?us-ascii?Q?8Mg2nx5sILpWFzuelyfIiorZYgXq4Bjv3+wg6pGDN5q5hY4JoR98SsXk606m?=
 =?us-ascii?Q?sb76UL3QH3Z+4fvrDIY5RXFaynzabtqzHv54q8awiQcFW27kSuDvmJAIFx2v?=
 =?us-ascii?Q?hbzEiEsjRnHjJ5lUjhg8FylSrZtRveFtLQA5/VTLcTayj9JnsHB7apw25DCA?=
 =?us-ascii?Q?oeN1ipZO9svSenVnpSf69ODs7PcYGHGBGjCdComw08KqoKMIHpxuUS8a+uBZ?=
 =?us-ascii?Q?ZcBAmUEjxZcRHZEtbt8+YGZdkLcKBCp3LVYYkBqiE2LJpr00iQ/kNozH9mzp?=
 =?us-ascii?Q?1st7WMvWBhiHlCKeO+LNR+fPwEpo6M+yMgttd28v6FJieVKeuzZLrynr2nAg?=
 =?us-ascii?Q?+YwEPuzMLnAJVCBJvGtz3A34Zv4glf3srSfWSt3i7752wZrDIQqdtCwlTKWG?=
 =?us-ascii?Q?MYtGuGIzF6t0XhvLvMTZM2KESPJxFub7ImuMx0me2RxALIqb9c23USQ8e90b?=
 =?us-ascii?Q?MCYg8luK9BIr6m1NhhoyD7j0Kc8TbscSvIpzIujZOhcrPPR5LjHpDvTSUYDQ?=
 =?us-ascii?Q?fgBHBNTMIYMfq5BIRTcrvo7Sbwk8tBq3ZLxFVYd0m1msKxkZsw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?91nZ1SPOFHHRFH1v6uwP5gc/wpU/wnIH1y39Dgk05Q2yzo8t4yMQD6DNPI11?=
 =?us-ascii?Q?q2gGbckafxdJxSHOlJxEYqPp3qLsHrEBF7JESPzz/EbBEfEokVQp+sWSGAJW?=
 =?us-ascii?Q?YLZ/ClzmTJdflTWZKMHTtYIw0giJN2PuB5mQzGztgWhKULf0/kBh0i/6qqrT?=
 =?us-ascii?Q?tIbvShjm7xFF26R+DLlSHLZBUmh40Zw4FUxkTt9MNUvQMaW+dN73yVllGsMa?=
 =?us-ascii?Q?hrEramC+qw2vztwB3ZYpWXnJqed+8hVULbwR7pHxf5KcZdvfvM9LI8pV4+sP?=
 =?us-ascii?Q?hHVcXamM7OFweQ2JemNEwlizj0kaRkDr4oBPiA6nnZ54kzs8GFNZsW9oycPV?=
 =?us-ascii?Q?y0RI5171OI+TgF8qLjgHEN6UGdfLVQo9ok55KTi/lXiJsa2SOTV2zD1TiYZk?=
 =?us-ascii?Q?sCLWT+R44QuF1Z0DcGQkyrjfM7giPfwm7ZlSpBwnmmeT10qEhv3bda5IYwQo?=
 =?us-ascii?Q?6P86SiEwK5b9t7YxwqtpaY/kvvSw5mgoXddzoNrjxUI9NQqtroI2LdGTH3xs?=
 =?us-ascii?Q?9FiToHTj4lQCwo9bLeW/1kmxtvQEdxu4asF5AdOxgSjxXGVEtKUpcCIbj/GC?=
 =?us-ascii?Q?826GO3h3n3klJ6S39SeCmwpEDGZKJ8GnE8XPXk3pSVJXTlJvDN+KRFQhEvcQ?=
 =?us-ascii?Q?7Xj6OrK9kyQur7zvWTHCT/CDjPtYPzErqLqAPhP5YfLvywN5OA7GwB00jKo/?=
 =?us-ascii?Q?ULrDT+ZBK/F5r2JiEyVnR1tJgzMbWy1kq0mp1fkJI7dgo8c17+dLvi6kWE4z?=
 =?us-ascii?Q?yYvWYAD4DqaPRmV7aMlRVs+I6xjLXLCz9Sca7Mhlm+N1l8JgEboiocelwUJb?=
 =?us-ascii?Q?JrWIz09stFkcUrFGr6Zi1e/zhzMT2MOScE0ThXQ1QpKH1QxUX+ViDdrjOYkI?=
 =?us-ascii?Q?5wfb0hsS/NflVYK5GED0sCa/nwbUtFR5f/xrc5y8rc5AsaNAtb467zcArFkk?=
 =?us-ascii?Q?p0XiSQJ1IKtMGZu3M6s3aSnGAc2LTzPAWIpflh+Bn/eYqwZL9AmbTHif+ggq?=
 =?us-ascii?Q?W+/3X1Y1NjMFN7Sq/FNx/K3Uvh7XChqzcDmvDws9Iol4YtiQh7XzESJxbTfy?=
 =?us-ascii?Q?eFu475itFewgDKAUoOT9xMh7OfJs0H8lHQesuKnQecDOS+ABB9tMlmXL9syG?=
 =?us-ascii?Q?2zD+o/HR1J1IV+9uW3iRxtpxK5FW8SpGGv7ENq7wtcTZAIU8EIgdwE531tO2?=
 =?us-ascii?Q?Q0CeDjsllHtmZvwEvkoX1qG8GTi8VMGRivIirAofkkgi67EtvgH4ei+YXQhn?=
 =?us-ascii?Q?prOfkGTzLFi2F2d9B2rV03nk51z509+dC57zKK5PHHtUEjyTSKokj1a6WX8l?=
 =?us-ascii?Q?s73RltQVD1fzCELTBYnXTSMSo0bH72ucytCjaB85A/zYPbV909GjnmwgO0Yt?=
 =?us-ascii?Q?zkBWNUr3Juulj5WJTmST2ucD4ULtQgNLqgFgvCQS+CXAmWw629UNWeeQ3s57?=
 =?us-ascii?Q?bRylADrVLCjfeBwlRj3zBJDy+s+TghwmjXFmA/W5m/8o/pPH1Q1tqeJLIyGl?=
 =?us-ascii?Q?UowNHCMwTnn09GMKaYQvRymJrUZoGxOG54KKJr3MEzh4+5GPqOjRPkegPfpb?=
 =?us-ascii?Q?wU0QHm9MPG7wBdQ+qIjUua0pByoj6IB8WMPq1f05?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a23c44bf-b661-47ba-a3bc-08dd18584519
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2024 13:49:15.1549 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MBqaHBk+LWoNrHhX8LXAWesgI9QMEbxrZnF8E+60Mii9JvFGlv8VDsCIbUUUN7JasbF2IRp+uVUYFNLjrUGg5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7205
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
> From: Manna, Animesh <animesh.manna@intel.com>
> Sent: Monday, December 9, 2024 1:17 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Manna, Animesh <animesh.manna@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH v2] drm/i915/display: Adjust Added Wake Time with
> PKG_C_LATENCY
>=20
> The PKG_C_LATENCY Added Wake Time field is not working.
> When added wake time is needed, such as for flip queue DSB execution,
> increase the PKG_C_LATENCY Pkg C Latency field by the added wake time.

No need to mention the issue when It comes to WA only what the patch is doi=
ng the
Rest of the info is present in the WA

>=20
> WA: 22020432604

This needs to come just above the CC with no new line in between CC and WA =
no.

>=20
> v1: Initial version.
> v2: Rebase and cosmetic changes.
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index d93f6786db0e..f6f7205e06eb 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2894,6 +2894,12 @@ intel_program_dpkgc_latency(struct
> intel_atomic_state *state)
>  			display->sagv.block_time_us;
>  	}
>=20
> +	/* Wa_22020432604 */
> +	if (DISPLAY_VER(i915) =3D=3D 30) {
> +		latency +=3D added_wake_time;

This wouldn't be the correct place to place it in since this would change t=
he value in case the latency fetched is 0=20
From skl_watermark_max_latency and we actually want to write all 1's and wa=
nt to disable the deep pkgc
The best place would be right after fetching  max_latency  so it plays nice=
 with the other WA and makes sure that pkgc latency=20
Is a multiple of max line time when latency is not 0
So something like

If (display_ver && !latency)
	latency +=3D added_wake_time;

this may also require you to move around where added_wake_time is assigned =
so that's a different patch
=09
=09
> +		added_wake_time =3D 0;

Also lets not re assign 0 to added wake time variable let it just be writte=
n its not going to be used anyways and wil
Not have any extra writes from our side

Regards,
Suraj Kandpal
=20
> +	}


> +
>  	clear =3D LNL_ADDED_WAKE_TIME_MASK |
> LNL_PKG_C_LATENCY_MASK;
>  	val =3D REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, latency) |
>  		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK,
> added_wake_time);
> --
> 2.29.0

