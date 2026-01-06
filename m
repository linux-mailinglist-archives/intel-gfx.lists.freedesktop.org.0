Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B88CF6BF1
	for <lists+intel-gfx@lfdr.de>; Tue, 06 Jan 2026 06:13:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F3C510E042;
	Tue,  6 Jan 2026 05:13:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q+zpfw1v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AE8910E042;
 Tue,  6 Jan 2026 05:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767676436; x=1799212436;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2h3l36JdY36LadRhjEYYX0bS37ub533gveAiAgLO+Yc=;
 b=Q+zpfw1v/mVGNnNqpCK6qvgPW/1oe7fg/83wsY8itXDxFn9cSQ28JlbR
 j3D6cp7MAI6q8GeLNL+G36Lrg0MP1lpVW+KF4cX/R6hIk9EgweQgJeDFX
 sDyxqaP8SM6TW4Zc0KFBk/K5XdxyBOJL8A6O7Kg1y5RVspvhrOSB5c+Yv
 sqjS4pJsnFwdJZpg7G0lJdvavJ1FyNswrmkwnfbMaWQODC9j1fKY17M+a
 71tlAGfwEnG7BPjf3ATWWAJtcyB9pX7iOL0lRMnBt3IsRxYVtNBFqHVpM
 hcfVPPD88tPr57wN72HrBhkIAbA9TqfGZ3v96HCL267bf15Lo5+6SJqgF Q==;
X-CSE-ConnectionGUID: eKgYxV/pSryQa/zKxhqwGA==
X-CSE-MsgGUID: 92mXvg/jQU27Is435YKilw==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="80408427"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="80408427"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 21:13:54 -0800
X-CSE-ConnectionGUID: 63fhRcxYShaRK2XpjNlTwg==
X-CSE-MsgGUID: yH/Q5tg1SOGtbi9UCo2hvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208";a="240059612"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 21:13:54 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 21:13:53 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 21:13:53 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.53) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 21:13:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d1mpuerpRFuFo8pbehDg7fHHf9ANkKe6Qa49yUHY0qZI4G/sCHr5x85y7W17CqHyEoSAd+Oi/WZQAOZta1u2f72BihviKU49Nrvxsbj4dG2XECwxyin2I3n6zOjmdS2xe5zfcAJsnJyDprpCL25z27HOctNyhl1pRgZXWHLGkyWMmbkwl6JVWLXM8QEGvgMOxZ87+APW05o9xOtuy7v0/vt8Vw0dajRfPgmrA88meHn5h/sQM/x+615XX3bjsg81v7afXny+bj69A/aNjfek2SPdg6V2Um9opmxII3BUymPZUBnWEvGl/fqF9d/XGjIz/ga4iNd3GDBvKUInBJCltQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sR4Ojo0UsuYfzabCuxMht+adqg3xGQBLLXj71H0G9gI=;
 b=jpcNhzAQ45mrxDDsz2pLp9Qj+TBrDUp33mSrd2xXsNHEz/YUTyibeie22wtE8n8PEqTa6ZK0zTT1x/TGFevImoD4LQTqwFNedLIZ7fgLuSM9Cp+BYRQ1xn1LGUdizuYuWqikcuze2DWyeEpNAoNCRpRVUPRJ/fgxHtKi/1vkoQp7Q41k0NKdW27EvNnryER85OkSVvyerD/q+JCXQ86x6zR1TvuZlf8gz3JpverpJXjrCcL6Sj/ZtxDrbnVZMxmXwfLiHtJpjYiYUNRpeS6ys+o5UqC89WkE4rEUwHQ7sj8YH8bio3RIfawbS50Okp7PfAceNbQjDkK1/8N1l2MhLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by IA3PR11MB8967.namprd11.prod.outlook.com (2603:10b6:208:574::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 05:13:51 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 05:13:49 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v2 03/15] drm/i915/cx0: Drop Cx0 crtc_state from HDMI TMDS
 pll divider calculation
Thread-Topic: [PATCH v2 03/15] drm/i915/cx0: Drop Cx0 crtc_state from HDMI
 TMDS pll divider calculation
Thread-Index: AQHcb2nj22n6S7Jo/UO+gTE/XiSOhLVEtzdA
Date: Tue, 6 Jan 2026 05:13:49 +0000
Message-ID: <IA3PR11MB893701BD246FFE6AEAD6435EE387A@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251217151955.1690202-1-mika.kahola@intel.com>
 <20251217151955.1690202-4-mika.kahola@intel.com>
In-Reply-To: <20251217151955.1690202-4-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|IA3PR11MB8967:EE_
x-ms-office365-filtering-correlation-id: 9c2c046e-662d-4f78-f7d5-08de4ce26034
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?9NLxy6SAjkV+AVQ1Hz/zXUc4JhYVGbec64W1UtnYoyKIvNZybrVEDooiwYXG?=
 =?us-ascii?Q?GN89PyzKk//41gVruQZA1sd7yuMCnx4kUV1+xMPpI1ID1K78LC3kIq8DwLVz?=
 =?us-ascii?Q?q1WL4xUILBH9IChK6Y5dSoMaAUwKesgNX4aAAEl9veBTPS7OTeJGjTt4Hiwr?=
 =?us-ascii?Q?6kau3lc4iF1/JLGMUO4Hbu8zGVu2UxYXxXfuHQlqVFGMfN/G+qq7EwgBtZSl?=
 =?us-ascii?Q?SgdmFHURsRvuVma3p1PdQj8P7uzqEz/JLmBbqy802eiHJ/dATBkHAbtUiL8c?=
 =?us-ascii?Q?4kSFlD3FXNVcz+eIxP9H6cDVFKJEWwd2WysWp5ih0I/S2RDvBd6OqDDJcdru?=
 =?us-ascii?Q?2YZU6pVDF2DFdSjOuQoA5ZG3C2UOB51SF9I2gVrxlO1TLtnCKQES0If+2fJW?=
 =?us-ascii?Q?NCM9XfYWloyElRucP/HsEN6w0gAWrQ6p5+A6mR7w1+YkCxRvh9LwfQV0RcUm?=
 =?us-ascii?Q?gisbkLMAZSFAmg78xdYBJ1GIKKHowCbXTFt3fObG+rz4jMNvNMRBLs17TQzM?=
 =?us-ascii?Q?OS1l5mlA+HGeKupBrDGN7gH04JE5vUkhnqDhjVZaCh1N/AgV2a6+SeTPgY6Q?=
 =?us-ascii?Q?Z0AnF+90V6pIQH1iJ6kOe2F5p1pBXKnRpMa5prm2wN6+cyQFsBKE0vR8OQc0?=
 =?us-ascii?Q?uuSZTpWdShHoYxSEN5M4GbH+Hkah2L8BUFrouWtJmfLOHMIzupsWePQkTpRf?=
 =?us-ascii?Q?70I5md/rR7GF4vK4bjEJy36YcE6aEQgmhpSk8rdVGIxVRS83IXwLFLmXB9dm?=
 =?us-ascii?Q?McLrIr0OvTlKfqO2Cr51qEfDSYRfM2bmSxGSTtE/EBV0ARRC/Uw60lLgn3GU?=
 =?us-ascii?Q?MtcuaVY8E+Q475Y1oMDbNl8JkTRPxkdQ0crhVYWGAJt4I1bX8gZi0KQZCFMq?=
 =?us-ascii?Q?hZDd4Rz7oMoxRWBbsZLuTsmWULKPk7x1rth1qZSadEdkHoEEMdcUY/BbxWot?=
 =?us-ascii?Q?4gdtvYR6hSPHviiOZ94nrKVMmyrHlwAvnh2LSxI3nlu57OKsFJ9zuMJ6lAA/?=
 =?us-ascii?Q?f5Vvpe3bjl6Kt/K5vNsVX5lU1ag8hl2/Wj3XRhsjKGEmhYUHuhjfGgh+xjY6?=
 =?us-ascii?Q?P/JqcGACxeykJzBEjRtu8mRWG8vUD47YSFmDEtotNugmyrG5AS+WoiQMCZ0O?=
 =?us-ascii?Q?r8WTM1h+Uu4WQvkLcKFXxD5c7pdMADmvGH6g/uppUuSbsdQo3b6DGjvItHew?=
 =?us-ascii?Q?DKOynXwG4eYC02J2fn4XNXbziMboQ4/Q1GHc+/k5BruNzhdOhVA9QHpTv0Kh?=
 =?us-ascii?Q?pY9jK9j44KwqBrxe3Cm34MqhqGHo3Zvuf2ruaMdfC+ABqsMQ/HdXwoTG+v9n?=
 =?us-ascii?Q?FXmg08ahbtS+UTx2RvZUbiQOZZKA53oUQNluZpJtd7FrlVdFg+PWXYcHAjoC?=
 =?us-ascii?Q?FCKJsmgJdjxwNnTgQD3I0/Yw+y/42/O3DUggqKS2j8bGMnwRxaGavzpFaJEB?=
 =?us-ascii?Q?MUfhGVmSwOxpr+Vp81Ao96farV55SnIaTihI2qc2PJH2dHD4fqlaHmr4tZiT?=
 =?us-ascii?Q?45uJiw237IGzLKCkMmTRSYCEtyZwSCHYQbZ+?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?atdL177K20isLwIlLRnMbbEUnCt3wShFZsq+Q/HfBs+gbRsXs395U4zWlb9W?=
 =?us-ascii?Q?OSPNCDM4Qr8d/NgdBWZFOlUkSN0Qbj4K/VGj09o29BubRN8gAxoi8jWizGZo?=
 =?us-ascii?Q?xMRbboRgD8qg+RJb8O+c72IX4GVLs26IbYynm4zuexqCp29M4DIF6PiJDkZS?=
 =?us-ascii?Q?sbbl47x8JAFyuzyBAP6oopx/6BcqPxgk29dEmDR4DKPcU8Jz5zj38RW2I5D+?=
 =?us-ascii?Q?O9RNRQiBauWZgNKb6Do6g3AceEvZCdkDzzKi5s7tL4JzoL738QDM+9LWKsWJ?=
 =?us-ascii?Q?MVJb/XwDEsyuTfNjmQVxmIwhI7zdHfDlBRBOD8T0jIe+xQrq1yt9ozx/byKB?=
 =?us-ascii?Q?bnTpxNMx3WfDiqySjVrXwgnlGfvZN+n1/eWuE2ENqqnb6ATgseibJeq8S4lH?=
 =?us-ascii?Q?KNIdtxNX8SaGWNEdCaQw/HpXVb3GIU6Pgcp/YvlE6AIH2Ue9QMmzdLHZwgAV?=
 =?us-ascii?Q?Un2RsPSsjGq8roAgvREmUOiInXXjm2EtxuZm7W+y6HZlPP40cEY7f/02SXHT?=
 =?us-ascii?Q?Evwd6JOyEjqUDqo2rCIblrnpJdjMSaK/HA2yxGKY8DEj9DQxCG/M1A350YIv?=
 =?us-ascii?Q?VIefBGER0Z7xI7ctquBe8ZbpV/wOXsEffYZGijJQxZ+P/I06+4ll00oXOro5?=
 =?us-ascii?Q?AtJQCTvQZVdOWrRkwXR3oxA77JpxE2+hI62RmJ3mp1cWShVkjhTs8aVloJvn?=
 =?us-ascii?Q?e2BlseudI8Te0PaHCV3LAnKiA46GaQK52zBM8/HiL3/Gi7KIKV7aoiGdx6FX?=
 =?us-ascii?Q?v9l0hVBS8YsPkpxrSbNc9m3Orp3bonvvRCcYg2e/ekVdFwYXYl5qW0vL2QXd?=
 =?us-ascii?Q?8vNVSShy8CjW1bfIsVlYGuCPlvJo1W14ZjhPwK+WZIRvvQCLjBamX2kVWX8u?=
 =?us-ascii?Q?qjV8xhmplJwgaVwlsZyokVmCTkjRoMezdg+VS5Ojdh0Pbbzb8TPMnwkoO6jl?=
 =?us-ascii?Q?OHT3aaTAin8WzTt9xv3Dxsbg3b5xDunSUMHSStFRUx4qk5+T5HIkDZt/XH55?=
 =?us-ascii?Q?nNvsfOHFmsKiXQpTHoWeeNAUskZIJYs3PTIm3oXhC4ofJYvSiCelvH1JMZan?=
 =?us-ascii?Q?hzODw0pmojcaBgPiHMnmA5I0U0NypnV1hKGp1mWTeFeGsAfRp/4C5t9o12ge?=
 =?us-ascii?Q?eJeAhza+wuXbfjGpQrqoJw0/VsBn1RpBDL/zG9OFDOKUUjLlY5S7oTNjeHQi?=
 =?us-ascii?Q?++iU55VcHGve0D8haC0MBMOnp3nbAiod+ZBag8kigiWzW3ihN0Y/2BPB7Pv1?=
 =?us-ascii?Q?1gDDKuCRTPqwMEn3QxAY0tonA3wMOhUCm7f7T4jTx8eRbGvWtF+7rGS2LEpO?=
 =?us-ascii?Q?98dI5aX4AWTLZmMRsDvIoNazYGCuUjrLJqW03PoybuRkONFEnuAvUKHQBogR?=
 =?us-ascii?Q?ODJb+2vMkioPSNDyJQD9ePuCYbLI//qrRBTPtFYWEDKFty184e5WNgdd46SM?=
 =?us-ascii?Q?+RofBwEzgsF1DdQEFfiKm0W9g23X47fLHPatmsm5m/3Zm1X6GNMGJ3Ixt0N2?=
 =?us-ascii?Q?q7ZhYTGp4TRefI3kstjX4ILquyjB9Yp8+qidAlMnwAfbdyaZAj2ZzG2FCy1z?=
 =?us-ascii?Q?heU/cU8WGMdglQ4eHtlG5ltWMb1SfYORIWeRH9qnpn1WSWlrIcuQ6ImhLrHH?=
 =?us-ascii?Q?HDEGSN9mKa2P+s+H6I7ckD6XAubmCtl1zj1n28WgV+eVyaqnfDvZm9srWWCW?=
 =?us-ascii?Q?teB5LRpJQcXUcN3JIC0cOxdYWL450l9li4oQUEEEpb2YBffl0AkDantonghr?=
 =?us-ascii?Q?SOlaA+WYag=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c2c046e-662d-4f78-f7d5-08de4ce26034
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2026 05:13:49.2958 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jyMgjh1FxCdUhKC0DE98UGzIL7HlUqIQzA1gMYjg6v06G8ge7reglRi3QJBDvBsE4Q1wwAW63ZFI7RXvwZ38Eg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB8967
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

> Subject: [PATCH v2 03/15] drm/i915/cx0: Drop Cx0 crtc_state from HDMI
> TMDS pll divider calculation
>=20
> Drop crtc_state from hdmi tmds calculation and replace with the parameter=
s
> that are only required. Follow-up changes will call these functions witho=
ut a

Nit: Capitalize acronyms so HDMI,TMDS, PLL

Otherwise LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> crtc_state available.
>=20
> v2: Keep required crtc_state param for intel_c20_pll_tables_get()
>     and other functions calling this one.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 17 +++++++++--------
>  1 file changed, 9 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 1deb865618b7..664c48dc0ce3 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2414,9 +2414,8 @@ static bool is_arrowlake_s_by_host_bridge(void)
>  	return pdev &&
> IS_ARROWLAKE_S_BY_HOST_BRIDGE_ID(host_bridge_pci_dev_id);
>  }
>=20
> -static u16 intel_c20_hdmi_tmds_tx_cgf_1(const struct intel_crtc_state
> *crtc_state)
> +static u16 intel_c20_hdmi_tmds_tx_cgf_1(struct intel_display *display)
>  {
> -	struct intel_display *display =3D to_intel_display(crtc_state);
>  	u16 tx_misc;
>  	u16 tx_dcc_cal_dac_ctrl_range =3D 8;
>  	u16 tx_term_ctrl =3D 2;
> @@ -2438,7 +2437,8 @@ static u16 intel_c20_hdmi_tmds_tx_cgf_1(const
> struct intel_crtc_state *crtc_stat
>  		C20_PHY_TX_DCC_BYPASS |
> C20_PHY_TX_TERM_CTL(tx_term_ctrl));
>  }
>=20
> -static int intel_c20_compute_hdmi_tmds_pll(const struct intel_crtc_state
> *crtc_state,
> +static int intel_c20_compute_hdmi_tmds_pll(struct intel_display *display=
,
> +					   int port_clock,
>  					   struct intel_c20pll_state *pll_state)
> {
>  	u64 datarate;
> @@ -2452,10 +2452,10 @@ static int
> intel_c20_compute_hdmi_tmds_pll(const struct intel_crtc_state *crtc_s
>  	u8  mpllb_ana_freq_vco;
>  	u8  mpll_div_multiplier;
>=20
> -	if (crtc_state->port_clock < 25175 || crtc_state->port_clock >
> 600000)
> +	if (port_clock < 25175 || port_clock > 600000)
>  		return -EINVAL;
>=20
> -	datarate =3D ((u64)crtc_state->port_clock * 1000) * 10;
> +	datarate =3D ((u64)port_clock * 1000) * 10;
>  	mpll_tx_clk_div =3D ilog2(div64_u64((u64)CLOCK_9999MHZ,
> (u64)datarate));
>  	vco_freq_shift =3D ilog2(div64_u64((u64)CLOCK_4999MHZ * (u64)256,
> (u64)datarate));
>  	vco_freq =3D (datarate << vco_freq_shift) >> 8; @@ -2477,9 +2477,9
> @@ static int intel_c20_compute_hdmi_tmds_pll(const struct
> intel_crtc_state *crtc_s
>  	else
>  		mpllb_ana_freq_vco =3D MPLLB_ANA_FREQ_VCO_0;
>=20
> -	pll_state->clock	=3D crtc_state->port_clock;
> +	pll_state->clock	=3D port_clock;
>  	pll_state->tx[0]	=3D 0xbe88;
> -	pll_state->tx[1]	=3D intel_c20_hdmi_tmds_tx_cgf_1(crtc_state);
> +	pll_state->tx[1]	=3D intel_c20_hdmi_tmds_tx_cgf_1(display);
>  	pll_state->tx[2]	=3D 0x0000;
>  	pll_state->cmn[0]	=3D 0x0500;
>  	pll_state->cmn[1]	=3D 0x0005;
> @@ -2724,7 +2724,8 @@ static int intel_c20pll_calc_state(const struct
> intel_crtc_state *crtc_state,
>  	/* try computed C20 HDMI tables before using consolidated tables */
>  	if (!is_dp)
>  		/* TODO: Update SSC state for HDMI as well */
> -		err =3D intel_c20_compute_hdmi_tmds_pll(crtc_state,
> &hw_state->cx0pll.c20);
> +		err =3D intel_c20_compute_hdmi_tmds_pll(display, crtc_state-
> >port_clock,
> +						      &hw_state->cx0pll.c20);
>=20
>  	if (err)
>  		err =3D intel_c20pll_calc_state_from_table(crtc_state, encoder,
> --
> 2.34.1

