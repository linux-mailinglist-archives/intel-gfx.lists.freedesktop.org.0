Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF946C6CDA2
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 07:03:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F7DD10E578;
	Wed, 19 Nov 2025 06:03:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ea6GNiTv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F02C10E578;
 Wed, 19 Nov 2025 06:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763532220; x=1795068220;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zdkUHujB/59AAQgt+5J7RNjBJvPP7dOUvqWKqwvOhPI=;
 b=ea6GNiTv8Mh2wGcAmfsZaqLzSLWWdOlxEd+yEQhLIbPcx2ZroFvoXQ2D
 H+oUCgOS74oTGpU7LD+9beUpbT7vKDy9lMToHDmJjpoAqqKCR1cV08Fxw
 aNpU3XUAkvxsGj5dnbX8IEcFZF3MUptX1s7Jg8oNhQJAtGM7/pLbM/Tu1
 EKGs5RpwPmOzup5lJch+y+k1dqQ38P1CMh5VqkVVCCHsGYVl5pNWa774S
 //US3ADwcZDI/cW+rlNozntZ3OtgkXVrLSMFP3CcRE2HrSU+2d52mPzWP
 RGlPJnGL/wHweloX4bao+e43quaG/fmsUUR0fcAeho733a6npV9/YGP9Z Q==;
X-CSE-ConnectionGUID: HSSkbs7CTv2LhkkzXpp1AQ==
X-CSE-MsgGUID: 9MoWnUvTSTq5R0/gz29xbg==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="65267552"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="65267552"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 22:03:39 -0800
X-CSE-ConnectionGUID: L6Hqkwt/QYq4/KQEgPYexQ==
X-CSE-MsgGUID: 4l44txydQLWbkuLNbAc/EA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="195075459"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 22:03:39 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 22:03:38 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 18 Nov 2025 22:03:38 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.9) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 18 Nov 2025 22:03:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lv1tYUc0MgEloMRn0aytG7X/32x44W39yxjEQaY2gXXnDiPfjmYqLi4Zt3bhjx8TkNWzQyF72WN4l9xdJ72egfrJZ2FsANvCwJRR00aRZN8lPd7rbelecPY5BTeyYFuGUZz0Lf4fapK3ufTlf9gUpLOwgFSaAV3agNPfeMk6yonGtmCqUBydlgPIIp3OCaHpusI8T4UKXQyNC4tlINAXOmK2MShRBwEUW9mMkLK8RLUHwJ5hnsauXbc79ZARiXckp/gwt9gnS83LCIq+9pHexM2bBnUA980/v4XblrPBAcBG1gSadbb56HXbxYMkKALkSYyrGruXZTjQsk0dN9jgvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+4ZeKthuVQ3K5gETkV0+0WJ+7SiRBokF5GEkrDl9ZjQ=;
 b=vrwAds/sSk3bGbKc/hVHniWoC7+d1XF7owkAwU0JJUvQjsGegJFANcrTMLQGMFKsTnLHYUInKQOzMzyqElxxcUNbvF3oA90gVa4lUF4nGnbLy4kAofvskrK93HFmgrt0WUj/C0bljteteN0RDhKsMvW3bCj+zusIvXlMiAqBHH5x9Fsn6101Rgjvuy4IzVgEyckBcd4goxM2ASWtd7JuOXOhV3CmLeVP443Wdh0Q/ZUAj6kslCcC8wgQMc6J6thfY2D7zqNUHANNz9uDV+UAzJ6EYrOTBGAwrcjkRODICSr7rnNG9AH4qcn7aN7IeSQYZoYV1guNchZvy3KXy9AIMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by MN0PR11MB6035.namprd11.prod.outlook.com
 (2603:10b6:208:376::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.10; Wed, 19 Nov
 2025 06:03:36 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%6]) with mapi id 15.20.9343.009; Wed, 19 Nov 2025
 06:03:36 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 31/32] drm/i915/cx0: Add MTL+ Thunderbolt PLL hooks
Thread-Topic: [PATCH v2 31/32] drm/i915/cx0: Add MTL+ Thunderbolt PLL hooks
Thread-Index: AQHcV7QVVOTHeZMyxU+LehYxpi+ccrT32oyggABoVYCAAUIAAA==
Date: Wed, 19 Nov 2025 06:03:36 +0000
Message-ID: <DM3PPF208195D8D4EDA838A8EFA925BE2F9E3D7A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251117104602.2363671-1-mika.kahola@intel.com>
 <20251117104602.2363671-32-mika.kahola@intel.com>
 <DM3PPF208195D8DAE2A5842846681C9EBE2E3D6A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <aRxPcb7tHZlHZf1B@ideak-desk>
In-Reply-To: <aRxPcb7tHZlHZf1B@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|MN0PR11MB6035:EE_
x-ms-office365-filtering-correlation-id: 0b5d3b0c-d72c-4e7a-f193-08de273160ab
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?Z8nWWvyVU1dCWMAitEjPo+WxF0wjYrKw2pVmsYxKDdL0RQJNk/zZO8sPo8jh?=
 =?us-ascii?Q?EpzaxcGM8gUtHu46rrZqHqVrAgJj2FIQkaCjMPSwb2YYiEtN6bsoKeGjk48+?=
 =?us-ascii?Q?uMaAVMD8RGgqMaApx9fWkGlIwwZswaSa1QyezqrjXNbHgAh/n4b62Nr1pLd1?=
 =?us-ascii?Q?B8I9XBZnoAsoi4wV33013Nn6XYSWtqd293G6ujGIPy4RF0760JPXVyv9QNT9?=
 =?us-ascii?Q?P63saJxXBEKG23DU5o5GEOutBqDsNiR6RGM+BvORpILAp9kOMiCnjfKZN/DZ?=
 =?us-ascii?Q?T5pdNspF+ZYtE3AHL/k0yMENieBZelf5aUlwzDoo2GF1KEQjHTu7gMyCBEnm?=
 =?us-ascii?Q?V+hLTHj78tuKPWbQsS6IQDEH2SoIkOilGhpmsExu895vsiqbldLMlASGs3ao?=
 =?us-ascii?Q?NJ7hgGm4CpVEARp8exWbaZsg3GFwONyObrVC2hwNPRjMBIlEMaCXPsjmKDhM?=
 =?us-ascii?Q?u/RISAh+tOyMsJ7NAS7c0PtMwK9MVA/s6xnuQPkVlPfJsDkmaRN1fv4cq3L1?=
 =?us-ascii?Q?YEkMcQWbAdL5THe6/WHMRW2RP/zJ3i7VshS1Al7bwHI06D/jCqdSI2AzKfq1?=
 =?us-ascii?Q?O7Bb2wOWrWHD2U+hcJnCXa4Snhu07LC9xbiarcMsWyUNg/VBuf4RtY6uRbro?=
 =?us-ascii?Q?R2ngKSWUm/82VOdyFpQnAdUEbmCkLD6OPOYnWb/IOghGw+DpAFKwjEfzBput?=
 =?us-ascii?Q?ByANKYUqES2ldekQFuxCAKHhTaSx/QcuySxk3MpWDfujL9DVh8TLbVtpguBz?=
 =?us-ascii?Q?4EHVeVHBc/8tMLMwc+2hjbTq/HO2ke9HcNYDRC/xRkGLDXRrpZK3KZZMyyiv?=
 =?us-ascii?Q?teR4OzSCQBZ4j1AlDEZ3YjxgK4+AOinA1sIAH3SQXO/+6a0IPBZLM384ky6I?=
 =?us-ascii?Q?dBqHV8MusMhPmC9SHURRlcwPM99CyTMiyovEL6+4oHMjOj5dd/wA7QVa4bvK?=
 =?us-ascii?Q?pToPIpAVQZmeLTRXYAVuouxnjD+bZJy0AnsBGygbTueYDz0coI/icPjzJhMt?=
 =?us-ascii?Q?UDRJybFXuEmqNqp4E/RuJxxKDMJ7Q9ElVXrcscpnondBfcpjFbGM+j5O5z3U?=
 =?us-ascii?Q?WLuedEUjGivtSlhDk/cjTRT3qCRcDKYiXI4BgmfTLhJ3/s0NyOpFz68Nr/rE?=
 =?us-ascii?Q?YOGzkNSoDdqClkOcaCxEfwqEwSuEXVIJnh9hOI/WgQ50/WV6+J7YTKsusioT?=
 =?us-ascii?Q?gllTVd6xno1rykqZQigzldkTR9AbbQOsBnJJAP3Qk816fG76dBLYr/XiJc1b?=
 =?us-ascii?Q?ViNX2VKj67i9PEEat62YBHB/dOYfW8CM+e/xVzx+qoX3AznnWZ0bCeAjw0ZD?=
 =?us-ascii?Q?ybUrPaKO++EWDzhI3LSFWmqBq327NOLgnAFnCpZqSPd23G0lpQVwfEo0eWra?=
 =?us-ascii?Q?b49wO8NalvmQ6FiKVZLJURGYfegCaB7/YULLIEUeyvIGD9vjYuA6njCwtp85?=
 =?us-ascii?Q?hGPeMMoZz224qKl8KG1egoHcr8SAzkFyvwUkSjpqEtreDYAv2jyjn7lSV+32?=
 =?us-ascii?Q?sIDBhhBNP+oBlaLmkp9xLYxAWUuRDvEVY7Rq?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mmTPJ1xNp7RPJoQ2vZippM/iBasSNqFurK62GDSmK2Iz7CLjf9H3a01Kirti?=
 =?us-ascii?Q?1JpOxAbNyFxesfhH2q0caD59hyRwdHPlb8Vv/SZWJaVhtjXZypIF2LzXBjgM?=
 =?us-ascii?Q?8Cf3J1SHCTJcjWVBAvNdP8E2mZx9PjCE4j9RM8bF5fy5JDMRAzU/oc1vu/ov?=
 =?us-ascii?Q?Kcdord/9zv3IsG8M+Gw/p2C+5SmaSEdJb9DNgqygzeiBylAr09+NDY1B3xM/?=
 =?us-ascii?Q?4c19bKxSc2aCTP/Y7HY6eCDLO2vG2Evcq6KzmNT6usOX3PSYW11eg7ThQCF4?=
 =?us-ascii?Q?/827HGz3Q0sppiBKRNPYL12Q/O3h/Ru7f+cHFTMK9Zhj4jGEdsfs0coC1XJa?=
 =?us-ascii?Q?td6ulSsBXXNrBPpy4xNdMNm27JjfroDkxZQb53Vxx20d2qZrBKG3Nuum58rH?=
 =?us-ascii?Q?eyLBWJotbv0femN6GIUne6SIhF0kpw7EQmG0s5zg3HecYNLc02uwNrg8yJbP?=
 =?us-ascii?Q?/Pz5gRA8eRb0FrLpRlQsppYjqA02J6X8AnBDJ1k06drpdL+00HMbNhZ3XJEL?=
 =?us-ascii?Q?jwKxvZu6PJIJR2kTMcq6MKF5rx5KLnAUmMfbuFMiUKtQ8ROkZ3RcOy1EUR4S?=
 =?us-ascii?Q?fL/QEHx1DTpoc2yquiYQn5RwO1DczmtRybkFnFs/15TecYuDw/dztoxtTRlB?=
 =?us-ascii?Q?m/OC2MYGiJrZBehg0LEMmqSPHlv9H07pnS9GewswzSItsRFbMOV7SYiLo7w2?=
 =?us-ascii?Q?qEnv2YERmRDzn0Ti8tBezHI8ZKJa0iIDzPwK3gcHG2CGKL2fkaBWbWDxbQc2?=
 =?us-ascii?Q?dUxxEQRMrW5FKcKPA49YxPuen572TClMDn0CPmol72CNCMh+BjPGT5Qs1ES8?=
 =?us-ascii?Q?lOGTmJnzcHUyNj/yEd6KlghhYbb2YdZ6IhdbsPLIdvX3hNyWGqwnor7L4lWX?=
 =?us-ascii?Q?pk6t88y14DfjIRDd426xlkK2xNWNzyMRtdGz2p9Wc6Qr8NPpg8xHx5JlpzW2?=
 =?us-ascii?Q?ra3NhsryP163MLEZsiHT92PZI7MKgzayRKgnhxXqiU22OfB8Bof/xcBmwReL?=
 =?us-ascii?Q?1qTDfBauE6XTdfIQLGOhr6/YoYeW/TsmyPHFjAtbNw0SrccAX0gEJ59po9XC?=
 =?us-ascii?Q?wj/fU3JFLcDCGwrD3ssw5BTIBxC6YzDGBtR1teWZZhr8jSvJxKcHMa9AWtgf?=
 =?us-ascii?Q?buLdQdm2TLOfVlV+tcl+r3SZXdZaqhkjA3o5xfmatrdAGlIn/5Tc7i07+EpH?=
 =?us-ascii?Q?d/NK2c9bJJMvTsyDEzuYQiDfDNLN9qzsdgPiJkCTa9yWAA2j5LhIPvcUaf8T?=
 =?us-ascii?Q?h3d3G4lzgWT6gOwfVIDgHSzm8Gr+vBl2MZNzv1pu/10FrU6reXEOd4OQdT2a?=
 =?us-ascii?Q?qBn2V6G0DoaHOum+Hkra6herVLyyQYqAoqQYS5JEa4GYNNufZdbth/xaTOQd?=
 =?us-ascii?Q?HWzN3WQnuUsd7+RDTzxLdjm3tRnCzMa/naN+5OHAiNbhTxTQ4hCRjywxKvoW?=
 =?us-ascii?Q?fzZjIPvbZE6z4crOl7jshls2cyuCPLOWkbugAFjGZL3lyQIEDua9HkDl/dQE?=
 =?us-ascii?Q?mX1naAe2v0cmGChPoqZZOjIu9wM5fPP8VPeCHIRj0jDyn2UuY+HVb7UoiCPz?=
 =?us-ascii?Q?VspSc07P2oynlslKiMdVj4iRNUDfi5usFxKkiMB9?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b5d3b0c-d72c-4e7a-f193-08de273160ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2025 06:03:36.1901 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kNTtkON+cg3nZmaaWYv9n8yAmOOideZWHD885+SDeg5OZC2/41GeGvNOS2Z4GndufZ9T01RaJzsHoFPoGfutMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6035
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

> Subject: Re: [PATCH v2 31/32] drm/i915/cx0: Add MTL+ Thunderbolt PLL
> hooks
>=20
> On Tue, Nov 18, 2025 at 06:38:13AM +0200, Suraj Kandpal wrote:
> > [...]
> > > +static const struct intel_dpll_funcs mtl_tbt_pll_funcs =3D {
> > > +	.enable =3D mtl_tbt_pll_enable,
> > > +	.disable =3D mtl_tbt_pll_disable,
> > > +	.get_hw_state =3D intel_mtl_tbt_pll_readout_hw_state,
> > > +	.get_freq =3D mtl_tbt_pll_get_freq,
> > > +};
> > > +
> > >  static const struct dpll_info mtl_plls[] =3D {
> > >  	{ .name =3D "DPLL 0", .funcs =3D &mtl_pll_funcs, .id =3D
> DPLL_ID_ICL_DPLL0, },
> > >  	{ .name =3D "DPLL 1", .funcs =3D &mtl_pll_funcs, .id =3D
> DPLL_ID_ICL_DPLL1, },
> > > -	/* TODO: Add TBT PLL */
> > > +	{ .name =3D "TBT PLL", .funcs =3D &mtl_tbt_pll_funcs, .id =3D
> DPLL_ID_ICL_TBTPLL,
> > > +	  .is_alt_port_dpll =3D true, .always_on =3D true },
> > >  	{ .name =3D "TC PLL 1", .funcs =3D &mtl_pll_funcs, .id =3D
> DPLL_ID_ICL_MGPLL1, },
> > >  	{ .name =3D "TC PLL 2", .funcs =3D &mtl_pll_funcs, .id =3D
> DPLL_ID_ICL_MGPLL2, },
> > >  	{ .name =3D "TC PLL 3", .funcs =3D &mtl_pll_funcs, .id =3D
> > > DPLL_ID_ICL_MGPLL3, }, @@ -4470,7 +4502,8 @@ static int
> > > mtl_compute_tc_phy_dplls(struct intel_atomic_state *state,
> > >  	struct icl_port_dpll *port_dpll;
> > >  	int ret;
> > >
> > > -	/* TODO: Add state calculation for TBT PLL */
> > > +	port_dpll =3D &crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
> >
> > Should this be DPLL_DEFAULT or MG_PHY
>=20
> The Thunderbolt PLL state should be stored to the ICL_PORT_DPLL_DEFAULT
> port PLL index, as above.
>=20

Got it.
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> >
> > Regards,
> > Suraj Kandpal
> >
> > > +	intel_mtl_tbt_pll_calc_state(&port_dpll->hw_state);
> > >
> > >  	port_dpll =3D &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
> > >  	ret =3D intel_cx0pll_calc_state(crtc_state, encoder,
> > > &port_dpll->hw_state);
> > > --
> > > 2.34.1
> >
