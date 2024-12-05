Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 830AE9E4BDB
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 02:36:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 627ED10E0BB;
	Thu,  5 Dec 2024 01:35:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i/35ES66";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD21610E0BB;
 Thu,  5 Dec 2024 01:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733362558; x=1764898558;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=TCBbi6K2z53y/T4WdzUPaTC0RR+cfqBuZuIpRj0fDoQ=;
 b=i/35ES66bfrkz/89LTRsx86GU1gAJRl4wg6YkWA7XvpRW5ioIfXTb4rm
 mFb4OIstNClCzqh+/okTrcfLVv71EfOZyNiDTVJWl/PiSz3otbh0+iJEt
 9cyYqcFNIPwgbiQ5dyZXDDGeDMcxz8MtP5EC6KGBFrcb3JlO8cgrng1mw
 yiPuB8XjlJM3ID8ChWUQ07p/B7woRQ8qjlCeFqemaTeq9fbz2yffM5BSZ
 FEw6JiexVj1V4E0SNzALdFA2VYsmwTk8VgiE5CVwNrUq6qSFSJbelr51L
 S0KzzmXIeacxMs30OOKTp0cTWkSXQ1tjcBi1ZOZq4QLoCbWwp+6NaWFEQ w==;
X-CSE-ConnectionGUID: pRfWqrLXQUW1m9QtabTa2g==
X-CSE-MsgGUID: c5Tgm+CYS121gNCs1Qvflw==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="37432874"
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="37432874"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 17:35:58 -0800
X-CSE-ConnectionGUID: glVTY/2JSUG8OkBwp1ceuA==
X-CSE-MsgGUID: n+ZfhvUlR2KvShvEMLURMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="93812545"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2024 17:35:57 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Dec 2024 17:35:56 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Dec 2024 17:35:56 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Dec 2024 17:35:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mQxTGn2j7XHlnYNmcW7sw7wwv9DuJcI0iGIdlb/iYMUc/awZaw3jYxQtx31YfF/v7G8vjKshlmcL8D4GpildsKEaPBse41gRLEp76bEG19TcrdkxtvVbnF/pOqPxdLz/dwGboJYggT7Xk4R7hmEXr14E7NjhWWTsxGs7QGtv86Aarz4IZTBrag0pG5pNrnTJRgvcrPjd2OBAsN/ZX5qubhJPMQ6M8nXk4TPF6jm6IlCrO6nVJbe54WYWNXmQtZp5uEc2FUpZZ/gVnOyJ5KZHqpKNqTb5ogy5TExAr6w5Giy7Mdtt0gup6vh30mMUrG4M+WAjFsFAPY1fcogp72rCSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yS80T53e2pblz3b+2eHWVRTqCjqmkUWKIEB8yHs6uzc=;
 b=lPQ2A+A6jxhLdOmJjterBwp3myPEcAIJJe2Kwa/vI37yhjyZeozlkEjqZmJc9vI3R1hU/bPVNWKFg+1Jamfa6Y4SP94Ry9vkFv80u4ZuPlhHIikfDz6syDJpSZ2ietHYFzS4rPwYKgW3NlwBc/wma7o/GsUPEKTlNz9ikqMl1li8xNByppIcP1rVjqCRyI+el3g/Pb4FB6rHhDXMiZ/zOWXU53jRIsAs5WnWgE5ibhwwxc7iK4xu/6zo0s+MVIAPTdITW9BswBi9YvFUAMyUONWQzTHxb6fGnLqWswAgb/5iXSMXpliewFbJDYcEbg3NO5v5mlAGVxpTcE6TnBC+FQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by DS7PR11MB5992.namprd11.prod.outlook.com (2603:10b6:8:73::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.18; Thu, 5 Dec
 2024 01:35:53 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4db5:b0d9:b6b3:bb52%5]) with mapi id 15.20.8207.017; Thu, 5 Dec 2024
 01:35:53 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 1/6] drm/i915/wm: Initialize max_latency variable to
 appropriate value
Thread-Topic: [PATCH 1/6] drm/i915/wm: Initialize max_latency variable to
 appropriate value
Thread-Index: AQHbRWAAxgFwwOB42U6MGnqhJf6JV7LW4Sdg
Date: Thu, 5 Dec 2024 01:35:53 +0000
Message-ID: <IA1PR11MB6348C8AAE0E078BA1B1DA6ABB2302@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20241203084706.2126189-1-suraj.kandpal@intel.com>
In-Reply-To: <20241203084706.2126189-1-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|DS7PR11MB5992:EE_
x-ms-office365-filtering-correlation-id: 35019db3-00cc-4b0b-6917-08dd14cd284e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?vHta9cFb31cCrc1i0il6kH9boxhyPD7h5SUpzoq9d+CXDWHdPnnlbun+yI3+?=
 =?us-ascii?Q?zR3MaaAn1kbWtB9RlZvIP17dBz+gSkZpDHEhPwYZo7yxiVaFF80QvJq+Ebrc?=
 =?us-ascii?Q?1KcLM0v8fNPGxxDnGSTRTPC2mETHTkvB95hE/cN2JMM6piveaPKeLfaVDO5y?=
 =?us-ascii?Q?CX7e46HrKk03A/oR+Cvh5aW4M4mxSWb3zZc8sUiHzsiVraoz/hx2FI552yOJ?=
 =?us-ascii?Q?YSkAsBmPATa9p0fcU4040jza1/78VJgyoQMlXvvBnr9uGyUbYxPcDn1eWU2y?=
 =?us-ascii?Q?UGabaOdNQzN6KjvKUE+0hW+vG+9ehFG/UQGCd+nKsenN3ezSLHGQpivin4vt?=
 =?us-ascii?Q?mFxkKqkjmEfYzBiEYRaWD9V93x0XIdaK3SIMJ+DoEDfChslEygVBANKDEIu5?=
 =?us-ascii?Q?Kwi9A2ierbT9o9jLKwt0p2L9SfNKY0iQJDG1Mlm7n4RULeb84IVTT8bHdcAZ?=
 =?us-ascii?Q?AKb4O7Fx+nEkZfKC2nmECZ9iAmaAmMXBlnQyC7HhZuSrEbXz41FYceN8Nsr8?=
 =?us-ascii?Q?KZ/M417/QyoHMl1PgkY9W/N3Dzl2lriK9SHOq9Fbt/mHsY3dzFBfmo7EYy1F?=
 =?us-ascii?Q?JZAknwqEH/b0CcNizs8zuAJ2SDCkuiHnGGP+QluV5JIY466yobUnuH+seD4J?=
 =?us-ascii?Q?oB7OeRfhr8T0j+Se5gzoFhhePAmwUeAHCh1hrmbZLR2qohEb9g1l+CvOY/27?=
 =?us-ascii?Q?IKTgJy5bJ/onp/6dQo3eRt6UY/SackTRYnInN9vBetw/6BAsfpxxomP9gped?=
 =?us-ascii?Q?eZs19G8okzh7mtfzDYFMhb1kEs3BjHb3SFiub2gte/Ez9pIWpG+r/uwrpElJ?=
 =?us-ascii?Q?uv1C61bchc1U+S1/cFHImdxd2OiFRkRZbG+o/opFm09/Nt3/T2VlcmPJ565G?=
 =?us-ascii?Q?GCzdgoz+fa62Vv4AZTnbWsEoB64AjeyaB0+sslql9FjLjiZi08RftatwK3IC?=
 =?us-ascii?Q?ySf7nvDaNH0NZrOAbzHn4y6oZ6CfWS2vyKRomoCTkpv02qEMfaZFzzKpYlog?=
 =?us-ascii?Q?t87ZgwODwN/RCeTYStjioD14i3+Co/Olv2Y4Jv3XgNwgeCO9iR9w8v/hCS43?=
 =?us-ascii?Q?BisWmmELMmDBpkuMD0s0lAl78qmBj8h/edh4Esi7LD9G3wu1sT1aVcAjSnkx?=
 =?us-ascii?Q?5RP5OlXaZafd2GnxCqpfDWsT1kkGE/K9ILLE69flCQ8dcY8xrzhYgiO+Y85D?=
 =?us-ascii?Q?qw29GSSCRF6ND/021qTwJ5TPi8pU/fy4jwQDhYDjVpHEs6ttZ6DiX26s1gXX?=
 =?us-ascii?Q?mOFQO1PxkVCqalXvGWPRDnGJjBQ/enVGeaCGa56Pk876qaGEWriR8IOs0foj?=
 =?us-ascii?Q?gKNfyofZ+H+bg1vZsE8m9YWZ1Z24hozxC5zWC7Tm08lf9LzX/skhA883JGC0?=
 =?us-ascii?Q?JLp8Yc8y188Pc0zP0I5YIJe936kZHocSu9vMxNwnUmsZ2OWR8g=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZUA3N5G3/+wTPNMJ8BlurGL8TxU04se8TyKKk7WrNt2/31DEqsbVh7glLyBM?=
 =?us-ascii?Q?XWLZg5CUAHlLfEbcKpsS82Lqi4drNkQxW5OjqoRlvOXoKCuM0+othLTPpCUF?=
 =?us-ascii?Q?NekxuCAgkqmoxlDA41mcLj1MYiETUQJSFhDDUn/1V3O7RJmSU9MX7emBdb/m?=
 =?us-ascii?Q?BpjP1Tal7I9G4uJ5s2Wgtbobfev4vCuKmphOtCvk/ZfBt3OqWu7XYNuO9or5?=
 =?us-ascii?Q?Gd9m0p0MS1zrstVY9FzLDDgWvGjKOFP5sPoH7Z2e2c9dFoqqrv1qkrEkf4jR?=
 =?us-ascii?Q?llTqX9wHYow2k8ua36LjeB9Gs6f0BgK25NegKejqWMxTmK7XCugPHmdwBSDr?=
 =?us-ascii?Q?kZXNlCNPdBKAVVJ7PzjziltAuBrys2oCSReBPgGeNun1j5YOZ3Y9XMWALgyi?=
 =?us-ascii?Q?JYVQkKaLkRq8cM8aq19UNUBOxgG9HjXt+GL40uBlgpjzl4QsND+cvD0wbg+R?=
 =?us-ascii?Q?hU8GKIt/e8hjinXia9dy7HA29vK+soVDCIvUQh+IIqmgIfamtKzdTzm5WwYC?=
 =?us-ascii?Q?BXhT4vNdu6XiFqlK+ss+M/wjATWCdNlonFoxvB97KS2PUDgdvMWnI22kQKXg?=
 =?us-ascii?Q?jwoyyyXN2sPKYCPY8/VuSpjkBy4WHRYn20cUqKIfdFH23FKyOFZf+vBMtouo?=
 =?us-ascii?Q?ZThqLyutIloZeP6M7h8703ZPS6xen72oToL6DoA/oa6tCC/0zlhBgG0z6gvO?=
 =?us-ascii?Q?uzbeVon2MpCXpXTZAfvR5yJvHGkjPoj/UekdHPshPvSnhL7pD4gwT7/wsQJW?=
 =?us-ascii?Q?sITjti7J5xbO30PUVMEzTWgNz4MjZ8x7gOgpjx9VK9pRPPCy1tYf/pkMsO7d?=
 =?us-ascii?Q?qcHXlG4h22C4miR4OhxD+0wWrxjXH9b52UjIkZp+iNEEgkCqTxqNT5f/sUpq?=
 =?us-ascii?Q?lkUE8l4hYBKGFgm0mdkzu8rIL3iMrySK8zs5tvfUy7NCHfLDv/lnxyHLlOO0?=
 =?us-ascii?Q?knZ0zJhh6EzQwaxu+QIR009mPGi1Xbhsf2umPbjc36eEyEmMkxoNFHYrK9Hw?=
 =?us-ascii?Q?r4ajjN+I/SrfidksiV7c5EdEJEA9HqhBSMlSHMcA6GG+3j9lIeulCHBURJ7C?=
 =?us-ascii?Q?TpURhp2UJpF673KXXg4wutl58vTUX9JUJhhkpnm7+p/RDaxRZu/C+2bSMXMw?=
 =?us-ascii?Q?sHhyIJy2jH9BKuUwHuC5QKTF5z0D6x5Mnvhh/2Ty5RH6J7w3be1rpmXZ76FR?=
 =?us-ascii?Q?oleVF7/aQdWcoKi8rMUCBjh2QzZbmA7re9ekQRvz7Wdn/Lw5MsTMXMh5uhh5?=
 =?us-ascii?Q?yCmhLAiIYLtSAyd3Ov6VDT7c0Ip5/QbncrdWgHEc2yflykX86CW0GVS7HG5w?=
 =?us-ascii?Q?RecFB3BDDSYEO3fZrl+3Ocp+//6AKvGgLIRIVavyiVrvqBTa1WSKJiNAjVIR?=
 =?us-ascii?Q?N10eqsiP/7PX+7eupcWwmpoY4WSfh//TMvWCUCJdbDVMvsFrPDz6re9vLgdz?=
 =?us-ascii?Q?haDyDyQQub0BOjZJfwi2vvjHhUhbLmz/CRp+09p/1h9gaHiiMu7Gw/4NoOgR?=
 =?us-ascii?Q?qS2gCjmo0ShU9+Uw6dIz1DG4lJMtNzNMMDKPQY7RG+ZlL4IW/ph7ODyVisvS?=
 =?us-ascii?Q?bVo1jeXufa9d/czoPKfINGp1UMvDtW5kDvUN4iMj5JgDrB1x3RMkoMrIpxfJ?=
 =?us-ascii?Q?qarL4fgMtiYz53Kj6wUJWZc=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35019db3-00cc-4b0b-6917-08dd14cd284e
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2024 01:35:53.3215 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qo/d6q+p5xyWlbr51QFfYmQqdw9R77b74X/8tsi/3GCfA0HnqSdAVaQUCLve06IWXhJt7CMtFtvFMX8o4q707EEQ64W75DpgqdYkozKeR0epEkCsJ4O/LGHYWR5n+Tm0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5992
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: 03 December 2024 14:17
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com>;
> Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH 1/6] drm/i915/wm: Initialize max_latency variable to
> appropriate value
>=20
> Initialize max_latency variable to LNL_PKG_C_LATENCY_MASK which helps to
> eliminate the else block and make the whole code a lot cleaner.
>=20
> --v2
> -Seprate patch to club variables together [Mitul]
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 1a4c1fa24820..c40e0173a5bd 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -2857,7 +2857,7 @@ static int skl_wm_add_affected_planes(struct
> intel_atomic_state *state,  static void  skl_program_dpkgc_latency(struct
> drm_i915_private *i915, bool enable_dpkgc)  {
> -	u32 max_latency =3D 0;
> +	u32 max_latency =3D LNL_PKG_C_LATENCY_MASK;
>  	u32 clear =3D 0, val =3D 0;
>  	u32 added_wake_time =3D 0;
>=20
> @@ -2870,9 +2870,6 @@ skl_program_dpkgc_latency(struct
> drm_i915_private *i915, bool enable_dpkgc)
>  			max_latency =3D LNL_PKG_C_LATENCY_MASK;
>  		added_wake_time =3D DSB_EXE_TIME +
>  			i915->display.sagv.block_time_us;
> -	} else {
> -		max_latency =3D LNL_PKG_C_LATENCY_MASK;
> -		added_wake_time =3D 0;

Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>  	}
>=20
>  	clear |=3D LNL_ADDED_WAKE_TIME_MASK |
> LNL_PKG_C_LATENCY_MASK;
> --
> 2.34.1

