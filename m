Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4537C4BA31
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 07:20:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF78310E4EF;
	Tue, 11 Nov 2025 06:20:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XKZZ5JVg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A0AE10E11B;
 Tue, 11 Nov 2025 06:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762842037; x=1794378037;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5ql3HcSyQpm+RRAxncUAiLZVqOFXoJtipKFygyH+eA8=;
 b=XKZZ5JVggFh7UEWK8ZMFClwzpbwmlyeDdRgUDsNV9BosB4jR6jNUtuOR
 +6qL12Itdhqu7J+rujVnUxJP99NXB6rK1639Uw3TRx0ZTvduz8Ru4SBwq
 A/nPilgWAtV7p51E7jSzZwdixZPhPVib0pNyzTOnFsbq1w7OawpH8YoVS
 xqwZXAYEnwdJPHteiWq8sg1KyutN1wUU/BTu7iELgNRQE0dM8M6XM6jYk
 F+hgwD2PS8iwItAJUmbE5C+90EWJhQfVtR6E9BEvnbR8P2cssEQihbIyi
 12m5UefITl7M0dTQQ0PCgUCdyTDglAjDMvh5OfxDyWrk1byx8a9h4p8MM g==;
X-CSE-ConnectionGUID: oIOrDViNTQi8HM6mXYHjAw==
X-CSE-MsgGUID: l4cUxsIoTLeu80EzNDbZsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="75195946"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="75195946"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 22:20:36 -0800
X-CSE-ConnectionGUID: FPZFgPpYShqkK9s00lZ7xQ==
X-CSE-MsgGUID: AgyHs6DwTpWRlr/65xfWpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="188208295"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 22:20:36 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 22:20:35 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 22:20:35 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.11) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 22:20:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ygmenz+L5Z6U1kBOvM/HPmIfGmvnvDFhLwFUpqdq9eDPjuqrlfeNyFJqazmMB6EkQvfvL2veimJ3/HdvEKeFTxdFDOeeys2eUi0AnP0f5nWDa1+g9O6tJ+X98vY1fvKEBoZz0amKvzsnATO91hy9flFHffkqS1UpN8foCRoZBJSknGfiMIhzXgEuzQfqCZA4O0yns+uO7aLOl/qyaQf5SFfskVy5C9+u9mE9P1vTW5tHxApQR5YH33Wu2ZJYjqrg5THGEK0pRILoJDAItyu3pD3ftu+cFmXUqT6A1p1VDvtL+LtTMRfRpPwOGgZcUg6w3yr+HoleCzlePPix07xbAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1m3O2GVVWatiT6w0SxS4lMk5+z2fVjxRJ6ZPeJkc4DA=;
 b=LHx34gI8d2t2uMXjpZLmJ7gVEsW/xfctqHJOdoUhpMIbfAIS1kFH7OTgRPMSc68Ct/ZmBhWELGi4yHu8z12JrlWpDBvL1fBl0JASGLFIo+rorHBNyKCyEoFZR8Ul7Z3sXjji1W2pzpxKdJI0smbmkutAp4SD90bRtrFyqPLN2Y6a7ZA+NXXF5fB8QXqW4TabYI1NodzCIIZAQkv0xjU+DKBnYte3/BsyNf9bq+ThFUyZjw7SYnRZG8+3+1Spfi/vXti4m3sypjgsRr5A6fBmPILtci6YZUhOt3QeLvoGQjlyQi4bab+Tepf32oeECvabmy5sm8i+q0UpiB8kPSXuNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by PH7PR11MB6449.namprd11.prod.outlook.com (2603:10b6:510:1f7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 06:20:30 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 06:20:28 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [CI 15/32] drm/i915/display: Remove state verification
Thread-Topic: [CI 15/32] drm/i915/display: Remove state verification
Thread-Index: AQHcSmiwcMzzUIsLNUCJEmlo+y6rQLTtEZAQ
Date: Tue, 11 Nov 2025 06:20:28 +0000
Message-ID: <IA3PR11MB89375EDA75FFDCB1128A48E7E3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-16-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-16-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|PH7PR11MB6449:EE_
x-ms-office365-filtering-correlation-id: 172a0155-f3ad-4fc7-5653-08de20ea68ad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?brlLKkzwR6LDWb74shMPwIQNbgAUYsW8TvS99nB4QfHpt9uMDtVWWnoLB0q7?=
 =?us-ascii?Q?KvXA8Xe2slAc1MuEdXBn6b5sCf6LGqVO5+Ho7/qEtqlIq2GnoIkNSg56u6By?=
 =?us-ascii?Q?IjD7C/nkpa4i3gnLOPHUbpTD40Z+OGKN041WhEC+5+RGoUKLlMjl8vnBB/Kk?=
 =?us-ascii?Q?ZOqij1l529XVu28VL2iAr4TTZF8OVjVrXW67T5AbtWNGYK5hnKcFcPL5U4WG?=
 =?us-ascii?Q?siOQJyBLTA8w/WXl8H8dARdrs0+99psURdq43s3PI4L0+VLbxDXOctLxkH7J?=
 =?us-ascii?Q?0UHm6Dsdm8Wm3B6NUATszZyzWvZXijXKIG0JbHoLvNDYfNG6SGyj+3BIsP6H?=
 =?us-ascii?Q?4tYvNIYf8LFUURN7/067bOw0JKJ+I3iUqaejzlS9vYX1taCy5XF/5bqjt11s?=
 =?us-ascii?Q?NjG9oU2FcvCqOd2Q6Y8oG7kaGRqSfnuzPix5MfMhSMY65p+fS8ejkM8xt3JW?=
 =?us-ascii?Q?8WUxl2WAjnEsp/EGAhrQhC+5POkFkjyB2uKejGb/gFsrLzv/wDKL5Ot5MSYZ?=
 =?us-ascii?Q?DT9uS2okdHIOXercXeq6vbSUCv1Uz5QP1FEQeJlNUPdpbxonH+SyPEZn2V6J?=
 =?us-ascii?Q?9VVUBKpu3C+ueMjvIY1AD04/YHUESKgKfs5KBP+Zi9+OJFIYsk3lJySanlet?=
 =?us-ascii?Q?RJrD0tj9mH9xKg5RTEt59j5ZBKigUyfCdL/CFF3p47D/YJUf8CVT3EjX+EoM?=
 =?us-ascii?Q?V+CjTTBnDnhSSxZ9QH8hrw64YL9TNtDDzm2MsDL5lp75LC822ABdXuaSlOjf?=
 =?us-ascii?Q?h8cMmCCXlV/Glp56AqxKfX/FUmcK/+JQnle34bgPTq75OD59u1CM4ipjOTIp?=
 =?us-ascii?Q?hFDK8k9z05s3qcEwW/szI6sgJXORYYNMy9vwsCWr8aMpI/oLK0x3Lm49AEz8?=
 =?us-ascii?Q?082qW577gc3I2UL/OsLohATU5QIQHfknBcAOWm46qxoMIyC4OBAwlKh+HlIQ?=
 =?us-ascii?Q?rrLOhqb1o9UQqWyRDLsYWzDQAi9L7CIMqe2I2V6reuddIiZhQ2luKaO+UHBo?=
 =?us-ascii?Q?BBj2bt+meheJFnmy8Toy+XjTl0fJjvoRBzgQxMDbAVWHgo8PCu4vU5HoR0P8?=
 =?us-ascii?Q?1Up01Ndj2SAaIoF5Ou7M81HK3JDJhfeNjVkupRlqj+CfPU9qcnYjY2FeNHMZ?=
 =?us-ascii?Q?2/xzLsIeLJRGlFIOK8kAmspTJNuj0lTDSHmnPB37u25xDRZcqIsIFXBFicYn?=
 =?us-ascii?Q?zAfe7mGVMaTfGHIouNfCyir7HORngh+oHx4fD/jX+ZdMpj6zKHUBBsc5FkcA?=
 =?us-ascii?Q?ZL7vJ/nw91kdmGRTCX1CTxHawnSlIsN6sJlnDfa4wEQlU16Z8nKxdUYeA2zL?=
 =?us-ascii?Q?kTqMqPTmkW0wbkxO1/I++gXb5poU1XYOK+RcoRkaY23MxJso3haHULpBQXAM?=
 =?us-ascii?Q?iPC0Yw+MJegNL3i+YWrimXEGas/mBQtXDvTGOjLaodrwQQrRVl1HD6hiA2rt?=
 =?us-ascii?Q?dzzZQplX+M53Q1G/g0FxHTD6hE2NZ9YkBHuQHTHo8NgLz7KQVmVCJztcJ8HU?=
 =?us-ascii?Q?BGmes4BddEqgwT4Hz7Qe3dkijib4o9aC8qDJ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OrQ7wki8sTM/RQoJBtE15r9VJRFh9YkjD/DIa1ZR3KFCShmW/45e62rEBbc2?=
 =?us-ascii?Q?/Z1L908i6Xx6jBJXKzAkIxcqBGWNpWTEFZLCBOiK227YLkGpgv/R07kbzuJP?=
 =?us-ascii?Q?s0BbBadj3TKvW4jcNj/U/8egO7rafMZEAX/YFnBA6Xnhp/XPopptei5RLKsK?=
 =?us-ascii?Q?hvKVKdia9GtvBraplynf3EUSxbJ+eru9NLHKOVD6xwEOhJxIbGq7LpnoJ6gm?=
 =?us-ascii?Q?3DO5EfQv+JSg61erzVtiFOIFpSWCAJ5EVZ0E+iLk0Y2e1Uxdk/jKJNZ/5UHu?=
 =?us-ascii?Q?wVq4SyH/3dep/tvykhWuMm9PMibgeSdqZcVVd3cvPrzmob/NkeF8asK3VVmV?=
 =?us-ascii?Q?GPOYQPPGwm2lYVDoTknvmmN7k4oCReNA013Y/SyXM1kRR/sNQpXz2X6wx8TO?=
 =?us-ascii?Q?H5Rh3vXJbMPw0CvxSJ1KBykl2SS0dhNAYylX6oxQXejBrMNQ1PYx/45vTPA8?=
 =?us-ascii?Q?TgBhqa1Dix1Wv6iW+v3qAcqtsdLRrOWD+5oTCaRviKDi5S5uuQrouokcv1hR?=
 =?us-ascii?Q?opc7rwLy8CzTtvbTlL4jAfKhqmlBxrRq3cw774kEpzBOaUVOV97Oj3jUtt/P?=
 =?us-ascii?Q?axLK1DEKDnl1thz1nYGI0Y/nnnngZI+4dXdRMSARUbDMzQYyzgS2NoJcWjgz?=
 =?us-ascii?Q?3QSjGO6qaoUFICukGd3znGF1MwbOV2G1CP3gqVLG642knpBzjVKTgBMzWA5G?=
 =?us-ascii?Q?8afyi5YS9X71nU0UikdL4HTmpZpLUpE1b3zAwFEh80kSRByB1P6niOb2G1Ac?=
 =?us-ascii?Q?Mj/UW6U0MS1WHiNZMmRFyLGSBoHcguhP1hRmnIUwcu8A+gPNNxfjPtYJjqUp?=
 =?us-ascii?Q?fS+R6jC/tnQc67mS3tF02KATXYWUNoHGuw/ncWn5eXCuFIo+3s3M0frdw7J3?=
 =?us-ascii?Q?qzyZLI1BKzLv9pb/QNRmHZV7YJDZN8TAVkSgMSN+PKAwHnq33KL/r5VSqSRa?=
 =?us-ascii?Q?Sa93stA0oA1FoNO9dxCT5/0Eb1oFeZ+22fPYDxq18oCa5d5BdfN1LJX9Jb9S?=
 =?us-ascii?Q?I9ebQFC607Pm2dePBK0tRDj6DiXAaHeMEgSt0I98MnZWQC5aLs/ZzVQjjeXI?=
 =?us-ascii?Q?j09Pg8k6GwBkbRCFpNieJxYns1HexgSVVY13du33Wkqx9iEQRbKjoaMSYsob?=
 =?us-ascii?Q?Ar39WsqZV1poaSEVquQM8VA0sLtuBarJ7cXxvli1DBWu2LzxnbGVl3rRwxBg?=
 =?us-ascii?Q?hUK8RHN9GKESZeikMaNaBMYevQugkozkwy0xVz7eeEY94lszC9NH5g+YGdnz?=
 =?us-ascii?Q?AtlKw6/MoXlT+9C20cBpX8AF9dxRixzTNMyolNahXYjjIk4RndbZLO6ZxwBb?=
 =?us-ascii?Q?/Mjx9TW8s/tg7t915l0uVgDQ2r10muWhA/3jvHxDQ6H6Ij0xvRInnA5wnATH?=
 =?us-ascii?Q?14YeOLBVaBWmxGs1k4fSIIWcMOSyTFKsk1kFReEHJGxTvsrG4kVGpzZGe6pW?=
 =?us-ascii?Q?5Q7dSUFU1sn/eh7L5aU2rT0bSRP2dtq+wF9UTNi0TyhXP2/Zw2lV3Zg+Oc7S?=
 =?us-ascii?Q?dZE4gyEk87/HjC5zH1JnvCi1pxzkvGG5O9+rHzr+UuwsEwVpznaQCwn97xW2?=
 =?us-ascii?Q?qnNMou/W0hQhnYe95JvPs925n2sbl2Qilv9BrmQW?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 172a0155-f3ad-4fc7-5653-08de20ea68ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 06:20:28.3491 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dIwZVYp4qIoQWUdUINQxBmj8Nld/34g1oWQCWnk8CV5WYwbiTNZm4etQlrhr1wJJIDPfPG8yw7toNX4Db5SrfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6449
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

> Subject: [CI 15/32] drm/i915/display: Remove state verification
>=20
> When pll's are moved to dpll framework we no longer need Cx0 specific sta=
te
> verification as we can rely on dpll state verification instead.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 114 ------------------
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   2 -
>  .../drm/i915/display/intel_modeset_verify.c   |   1 -
>  3 files changed, 117 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 1e68a73c2ca8..5332f33800e7 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -3617,35 +3617,6 @@ intel_mtl_port_pll_type(struct intel_encoder
> *encoder,
>  		return ICL_PORT_DPLL_DEFAULT;
>  }
>=20
> -static void intel_c10pll_state_verify(const struct intel_crtc_state *sta=
te,
> -				      struct intel_crtc *crtc,
> -				      struct intel_encoder *encoder,
> -				      struct intel_c10pll_state *mpllb_hw_state)
> -{
> -	struct intel_display *display =3D to_intel_display(state);
> -	const struct intel_c10pll_state *mpllb_sw_state =3D &state-
> >dpll_hw_state.cx0pll.c10;
> -	int i;
> -
> -	for (i =3D 0; i < ARRAY_SIZE(mpllb_sw_state->pll); i++) {
> -		u8 expected =3D mpllb_sw_state->pll[i];
> -
> -		INTEL_DISPLAY_STATE_WARN(display, mpllb_hw_state->pll[i]
> !=3D expected,
> -					 "[CRTC:%d:%s] mismatch in
> C10MPLLB: Register[%d] (expected 0x%02x, found 0x%02x)",
> -					 crtc->base.base.id, crtc->base.name,
> i,
> -					 expected, mpllb_hw_state->pll[i]);
> -	}
> -
> -	INTEL_DISPLAY_STATE_WARN(display, mpllb_hw_state->tx !=3D
> mpllb_sw_state->tx,
> -				 "[CRTC:%d:%s] mismatch in C10MPLLB:
> Register TX0 (expected 0x%02x, found 0x%02x)",
> -				 crtc->base.base.id, crtc->base.name,
> -				 mpllb_sw_state->tx, mpllb_hw_state->tx);
> -
> -	INTEL_DISPLAY_STATE_WARN(display, mpllb_hw_state->cmn !=3D
> mpllb_sw_state->cmn,
> -				 "[CRTC:%d:%s] mismatch in C10MPLLB:
> Register CMN0 (expected 0x%02x, found 0x%02x)",
> -				 crtc->base.base.id, crtc->base.name,
> -				 mpllb_sw_state->cmn, mpllb_hw_state-
> >cmn);
> -}
> -
>  void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
>  				   struct intel_cx0pll_state *pll_state)  { @@ -
> 3722,91 +3693,6 @@ int intel_cx0pll_calc_port_clock(struct intel_encoder
> *encoder,
>  	return intel_c20pll_calc_port_clock(encoder, &pll_state->c20);  }
>=20
> -static void intel_c20pll_state_verify(const struct intel_crtc_state *sta=
te,
> -				      struct intel_crtc *crtc,
> -				      struct intel_encoder *encoder,
> -				      struct intel_c20pll_state *mpll_hw_state)
> -{
> -	struct intel_display *display =3D to_intel_display(state);
> -	const struct intel_c20pll_state *mpll_sw_state =3D &state-
> >dpll_hw_state.cx0pll.c20;
> -	bool sw_use_mpllb =3D intel_c20phy_use_mpllb(mpll_sw_state);
> -	bool hw_use_mpllb =3D intel_c20phy_use_mpllb(mpll_hw_state);
> -	int clock =3D intel_c20pll_calc_port_clock(encoder, mpll_sw_state);
> -	int i;
> -
> -	INTEL_DISPLAY_STATE_WARN(display, mpll_hw_state->clock !=3D clock,
> -				 "[CRTC:%d:%s] mismatch in C20: Register
> CLOCK (expected %d, found %d)",
> -				 crtc->base.base.id, crtc->base.name,
> -				 mpll_sw_state->clock, mpll_hw_state-
> >clock);
> -
> -	INTEL_DISPLAY_STATE_WARN(display, sw_use_mpllb !=3D
> hw_use_mpllb,
> -				 "[CRTC:%d:%s] mismatch in C20: Register
> MPLLB selection (expected %d, found %d)",
> -				 crtc->base.base.id, crtc->base.name,
> -				 sw_use_mpllb, hw_use_mpllb);
> -
> -	if (hw_use_mpllb) {
> -		for (i =3D 0; i < ARRAY_SIZE(mpll_sw_state->mpllb); i++) {
> -			INTEL_DISPLAY_STATE_WARN(display, mpll_hw_state-
> >mpllb[i] !=3D mpll_sw_state->mpllb[i],
> -						 "[CRTC:%d:%s] mismatch in
> C20MPLLB: Register[%d] (expected 0x%04x, found 0x%04x)",
> -						 crtc->base.base.id, crtc-
> >base.name, i,
> -						 mpll_sw_state->mpllb[i],
> mpll_hw_state->mpllb[i]);
> -		}
> -	} else {
> -		for (i =3D 0; i < ARRAY_SIZE(mpll_sw_state->mplla); i++) {
> -			INTEL_DISPLAY_STATE_WARN(display, mpll_hw_state-
> >mplla[i] !=3D mpll_sw_state->mplla[i],
> -						 "[CRTC:%d:%s] mismatch in
> C20MPLLA: Register[%d] (expected 0x%04x, found 0x%04x)",
> -						 crtc->base.base.id, crtc-
> >base.name, i,
> -						 mpll_sw_state->mplla[i],
> mpll_hw_state->mplla[i]);
> -		}
> -	}
> -
> -	for (i =3D 0; i < ARRAY_SIZE(mpll_sw_state->tx); i++) {
> -		INTEL_DISPLAY_STATE_WARN(display, mpll_hw_state->tx[i] !=3D
> mpll_sw_state->tx[i],
> -					 "[CRTC:%d:%s] mismatch in C20:
> Register TX[%i] (expected 0x%04x, found 0x%04x)",
> -					 crtc->base.base.id, crtc->base.name,
> i,
> -					 mpll_sw_state->tx[i], mpll_hw_state-
> >tx[i]);
> -	}
> -
> -	for (i =3D 0; i < ARRAY_SIZE(mpll_sw_state->cmn); i++) {
> -		INTEL_DISPLAY_STATE_WARN(display, mpll_hw_state->cmn[i]
> !=3D mpll_sw_state->cmn[i],
> -					 "[CRTC:%d:%s] mismatch in C20:
> Register CMN[%i] (expected 0x%04x, found 0x%04x)",
> -					 crtc->base.base.id, crtc->base.name,
> i,
> -					 mpll_sw_state->cmn[i],
> mpll_hw_state->cmn[i]);
> -	}
> -}
> -
> -void intel_cx0pll_state_verify(struct intel_atomic_state *state,
> -			       struct intel_crtc *crtc)
> -{
> -	struct intel_display *display =3D to_intel_display(state);
> -	const struct intel_crtc_state *new_crtc_state =3D
> -		intel_atomic_get_new_crtc_state(state, crtc);
> -	struct intel_encoder *encoder;
> -	struct intel_cx0pll_state mpll_hw_state =3D {};
> -
> -	if (DISPLAY_VER(display) < 14)
> -		return;
> -
> -	if (!new_crtc_state->hw.active)
> -		return;
> -
> -	/* intel_get_crtc_new_encoder() only works for modeset/fastset
> commits */
> -	if (!intel_crtc_needs_modeset(new_crtc_state) &&
> -	    !intel_crtc_needs_fastset(new_crtc_state))
> -		return;
> -
> -	encoder =3D intel_get_crtc_new_encoder(state, new_crtc_state);
> -	intel_cx0pll_readout_hw_state(encoder, &mpll_hw_state);
> -
> -	if (mpll_hw_state.tbt_mode)
> -		return;
> -
> -	if (intel_encoder_is_c10phy(encoder))
> -		intel_c10pll_state_verify(new_crtc_state, crtc, encoder,
> &mpll_hw_state.c10);
> -	else
> -		intel_c20pll_state_verify(new_crtc_state, crtc, encoder,
> &mpll_hw_state.c20);
> -}
> -
>  /*
>   * WA 14022081154
>   * The dedicated display PHYs reset to a power state that blocks S0ix,
> increasing idle diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index c5a7b529955b..2b934b96af81 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -35,8 +35,6 @@ int intel_cx0pll_calc_port_clock(struct intel_encoder
> *encoder,
>=20
>  void intel_cx0pll_dump_hw_state(struct intel_display *display,
>  				const struct intel_cx0pll_state *hw_state); -
> void intel_cx0pll_state_verify(struct intel_atomic_state *state,
> -			       struct intel_crtc *crtc);
>  bool intel_cx0pll_compare_hw_state(const struct intel_cx0pll_state *a,
>  				   const struct intel_cx0pll_state *b);  void
> intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder, diff --git
> a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> index f2f6b9d9afa1..22600bdbe8c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> @@ -245,7 +245,6 @@ void intel_modeset_verify_crtc(struct
> intel_atomic_state *state,
>  	verify_crtc_state(state, crtc);
>  	intel_dpll_state_verify(state, crtc);
>  	intel_mpllb_state_verify(state, crtc);
> -	intel_cx0pll_state_verify(state, crtc);
>  }
>=20
>  void intel_modeset_verify_disabled(struct intel_atomic_state *state)
> --
> 2.34.1

