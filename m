Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D54FBC508D5
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 05:41:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E6C988130;
	Wed, 12 Nov 2025 04:41:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aPmTQ2zA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7750D10E689;
 Wed, 12 Nov 2025 04:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762922517; x=1794458517;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8cJua0026JRW35mRDefKZnRaec5DTJA7GjAO+EfdgD8=;
 b=aPmTQ2zAKGiD68VyQ1mvXVDJ2c/V8lPqnXx2oECX0sECUWV+76RUfq03
 ++nbNi9H8gUhl+BYzr3h+tW6rhDArPdTcDEn6oezXrNrhJMegrI1PoduY
 DAEhTGjiE5MIsQtv1XLK1rAalV8omQdzVFODbo8giG+8aI9XdCj5JI30i
 IULThjkJGAVBrulvIdeI+iFYJ/cDpA5DSFOAHuyWtciFjaJpvbW07GzLE
 K1nRJ0zmmorRImyhfTdEY6LsLGLjCQ+UiM68RcCwYooDCyp5CnNH2vdYi
 N4jzfuBFT6r3mDNVoT/wi2fcipknTlLDm7OPzRzkE/LVU0okMpU05Pq+9 Q==;
X-CSE-ConnectionGUID: Tah+Ep8hQSWfggTC/HvO0w==
X-CSE-MsgGUID: HxHyL5TNTIier1q4J6y/9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="68617652"
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="68617652"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 20:41:56 -0800
X-CSE-ConnectionGUID: YE8B9WsmTyaISv651r9Z2w==
X-CSE-MsgGUID: c3rjD/O2QOiyKmFIcLyNmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,298,1754982000"; d="scan'208";a="193358785"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 20:41:55 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 20:41:55 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 11 Nov 2025 20:41:55 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.41) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 11 Nov 2025 20:41:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bWg1AvxTSPwCifSG/5pub054VXtVU6Qt+GeCwkQY0kB20os/uhSIPLY6ONTeHtjLxfa4B4kLrczJ0RifHiBcGAxjIDdEVH80ck1DwMTA3Z/5Abfgkf1JNodwhk5OEFpY5m8XTIHCE+1C+pbroXYww3sH2w9imMwZ98rvIQirkG69FIy7AMwP0WW8PhC26dDpX1JNJRTyiM6Ahu/eLVg3flg1pPbtM6Cj8wp7XVfp3tb0bvHC4W0j6nBhMRnHDpVz4lCwnOcWmsj7Kyxas/j+yyqne1BWcxq5GIebDq99pfv7E3OLYMOT+Aw4v3bomKLN2y/At2u+VWMblJesTkUqXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ML7DPN1BA97ATbBRJfPZSGotX0R6qagSZblJUZF6wbc=;
 b=vI10dNehTqQ6phMUy2w5DkPB2oh4Q1pqEf2BVrsiNW7aOcjXjeO583Byi4Gt3zcPBb2wUSHaPNwcExV3gMfJwPTesh7cN59+nZdWsN1PQ2bY+PN4TBqv6LkBfS2qTo4eGCSn3a7X75UgAH/fDNoXglB8JJWHsEM4UIASNreMaXRtpeV7dXhngU6pR+aYS2343Zq8ALe8Z0tA42wV8mG2PPBD5D9BqXmykDdJjb8/092L+jPse39BryMMxSqWRs9/cUGChK1XjhJJZ+H+K4xJmGJQAPDJJZhW93jhEy9eUh4BOxFomwFyknQlDq2Vh5skxdKw3/uyHY88XWwIaXG4Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ0PR11MB5086.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.16; Wed, 12 Nov
 2025 04:41:44 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::95c9:5973:5297:d3cc%4]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 04:41:43 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [CI 18/32] drm/i915/display: Compute plls for MTL+ platform
Thread-Topic: [CI 18/32] drm/i915/display: Compute plls for MTL+ platform
Thread-Index: AQHcSlUinx6SNI3AnUyl/JSNVh1xL7Tuh64g
Date: Wed, 12 Nov 2025 04:41:43 +0000
Message-ID: <DM3PPF208195D8DDC58E954620509AA9B75E3CCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251031103549.173208-1-mika.kahola@intel.com>
 <20251031103549.173208-19-mika.kahola@intel.com>
In-Reply-To: <20251031103549.173208-19-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ0PR11MB5086:EE_
x-ms-office365-filtering-correlation-id: 330c2201-9662-4ef9-d339-08de21a5c7c9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?ceAMPGemO/mUDZYIcH6HNdAf20QWblhbtywWzwRBxB1GeuAUOzQjF2dqzy7/?=
 =?us-ascii?Q?ps6S7SR2+tkvtqueuYidKiU8Nh35LpvngZDERn20nhy63tdBL/VPp+6v5KEH?=
 =?us-ascii?Q?pC6nHkt1fx0isscG78kn8uRrM6CdedM+PTiWzLFDQnzFv6Tb/RqutZfbWQjm?=
 =?us-ascii?Q?xIr2/2kThPDTgEYmj+oUZW8sf9EJypbYK8Py98RDQzeR8f0WbkqUlHY+8wlI?=
 =?us-ascii?Q?6GZ5O1v8gvUgpT5S+sFsUqUStqSonMNzteUbiIqsRF9o7+c10QCDalt90nPn?=
 =?us-ascii?Q?yJoAYdNHeZsVwxxut+RejpYbJoGD24R34LZaCCYpSB6GcfXrwy1WhKMf+UUp?=
 =?us-ascii?Q?McZhW7TfeJkKEcfcziQa0JOcp5/J3GT5xohO+yaOksV/riBbfvrG07icDH6r?=
 =?us-ascii?Q?j1LbSZSi1+VKnT3lsgQlqUtBdb1QA4RB+4Gi3Dqt709Sgni/sMUh2r99ErUw?=
 =?us-ascii?Q?uJx5/vuWZWcEksx49AhjP7v6vB7l9jVkDO1nAJKScK43Q1EH+q2uJ8FBaMoz?=
 =?us-ascii?Q?ojJvLlrLx9lo52cM8zbXFZgAhd8DBnqori+WK5pUXayC59iJYfakf5fvz96Z?=
 =?us-ascii?Q?goyD/bnL8s7Y8F0OepgDtEUBQdfVwmRELcvkfOg3fhVfjiFROfM/hDnuH9zM?=
 =?us-ascii?Q?Lsj+TqIxYGEwOW52w/RZkqWy/D66mwMxOaAizqEHJaAN6mY0VPbkpzDAhom2?=
 =?us-ascii?Q?vVc+9NrydzJlMXGfzoda5JlrFb6E0kpf3uZ87X8zcDNuJYmYpZrH2efMvDPr?=
 =?us-ascii?Q?w37TfWLYfaB2yUd5+dyvK1cD7qVD2Sa8Cr22DsX/ESB1Q7+IgbizBk6KTTMK?=
 =?us-ascii?Q?v9daGnQKFepJN9/RxunHXZfiZfwkiiSotywbW9ZDg40vuhZMrV89Av+k9u0E?=
 =?us-ascii?Q?+DlZri4ER/2YUS013jlQCAJXw8c7vqG6sbd63EDzZswZDtAkeMSkUm2x7BBO?=
 =?us-ascii?Q?NIyfZFI9mLmK95BJbO2snOb9nJyBd2Y2eClU5jcz6jiXdNznC23krQTBAHxk?=
 =?us-ascii?Q?AgWmQrfYNTePEKZAugbtVI9M8JMdu2TXEufFCglivJVs79WM+Gkoaq5lWkho?=
 =?us-ascii?Q?6HfbB8s9/um46C3OHicp+qGvlBTcPgZUA6c/j4n72VXAlqYxSfyg+F4dIp5b?=
 =?us-ascii?Q?A9DPfcVqW4/GJSN2iCCU4IgXwAn+3TLdxFZjv1MfS/AD4Z8roZd+iO3oSRyw?=
 =?us-ascii?Q?6f2GDsdaXZCaGKciIbiwtQtm4gI6XSIm8ZazLC5mdJzaRrwbY953rTU3WErQ?=
 =?us-ascii?Q?Ir6+uGQk6qfi38Vk8WBGZuoLPXYF6zHLuuuNIbDcocQ8TzvfHnMaCLzN/OzN?=
 =?us-ascii?Q?D9m7eBrLWRC4Mvx/c02onFSIzdI1T4o+3IF2ZfgimsJag/ANKvK5ZFwJ9/HT?=
 =?us-ascii?Q?Yx5WVqZL6SJ3W7AglSf+Xgky8z6OOZlS/S8viZCqgmUbOvO7R5CKDEZWzHIg?=
 =?us-ascii?Q?wzBOWbtJdZK6JYAeNK9Y1OO3Pffx/Hef/47X5DA5gTuJcLXSkwyT7Wny1ndV?=
 =?us-ascii?Q?/CHosAIlSYMUy8+PVanAz4NdO6zu7kr00oEr?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0D3+BzKzw5dZHtDVXlwEzNVsFO0aVirhaO311bMene2Uzb9yLy0VSXthrDhn?=
 =?us-ascii?Q?ykD+VpXiEbEwASESsvQnB4cNuksKxWW7/nzC+Q+ViohuzcouapVLQ2sOddCh?=
 =?us-ascii?Q?SqmcGVYshcPs38alvoV21oi5Yas0Ebyo6voXlrMwqKSD+rrm7tAulH/O90D4?=
 =?us-ascii?Q?tQEoOA6SpxbNPlzIsTZjrGon+4JIdZqhj0o6RuapQULk9vZ7fPXftHjHYojw?=
 =?us-ascii?Q?8dEJWXWLbPibit+eD891fA6YL+t2fJvTd1If916SwVkvMsEmS3YgqkE/oTK9?=
 =?us-ascii?Q?hcLP79U9YUIoEulv4c/NNFa4gXaBYMRCeiiF9drZlyAP7tZ2pUxmdSM9owKY?=
 =?us-ascii?Q?Y4mwD9iEGb4PMVA99onnipQEMK1FEfCaDm5FaSlwWY/q5pmLeIEtkPi31oRo?=
 =?us-ascii?Q?vkvkwAVECqqkPtNAnYTWJG2XzLTEdp0NmTamb0ERxCc/t9T8fT2nu24mpBrW?=
 =?us-ascii?Q?XHcluz/a7TXf+CEU9+yzE72eJe6fmE8vBTg8LJ8/okxZgeUIyxMscozIomkH?=
 =?us-ascii?Q?7Ey5iaHm1+cmjiV/JfBXO5DnRC5Zel4uz0gEhqNqnkf1MNYPgto2gwgHUziI?=
 =?us-ascii?Q?Zy9Z1XWaPgxrPf2DWYwn3ug3hAecQIsyFNyQgYjH4k8FiopUrqYBTYaVMHBr?=
 =?us-ascii?Q?KEriGJ0RYbmNWMUdGQQbXM3jc7VrS80Zl0W3C8gYZnpe6Ua3ZE+AP1qeJhN4?=
 =?us-ascii?Q?D3406mTLEbdwm+iz5WLbhqybFdSNHzwlLfgzfbrh6dvulNjBVpY3dBiK255W?=
 =?us-ascii?Q?ULzLm8GfQmoWmE7mSqtO6PW7iyFg6VB6tVF0urkGN5aFjJvpxjjWt/ZleLQN?=
 =?us-ascii?Q?k6DeHlOMaIeHy2+OxF/vpOBGZ7ke0EQxbaPTuCcCmoqBzJ65s/tO3ex7ni8U?=
 =?us-ascii?Q?T01y87VHeCN/ry7wc3j5AOphC7+wwA11jJci6BLsdwHT+1J+XlVSwuCwTOWI?=
 =?us-ascii?Q?l4JTxmuA6z2UBdg22r71IcNNW0donWYdIFNY01Cnp6kfoPr6IPTzvq9xeKQe?=
 =?us-ascii?Q?nwkcruAiFBv3ZhIitW0zJwEIyS8uP6/KrVrGjw+ULORBOrTRkN3qRd+2p3PH?=
 =?us-ascii?Q?0gt1U0APyJiLOVzjfTI5LJZliEakjvONIRfJF+yZllLIONmkCKMOMArLpxTt?=
 =?us-ascii?Q?dIH+N3aqQ9CgcOEESNslBLfg6aL2JPKx7TZG3UQHD0t+NYcYD2W6lmukR8eU?=
 =?us-ascii?Q?mtOrJH5gEh1jaZLGt6scD8bcduVHvdUzzBxzvAHrjT0JzpHOGjPmgctGQfC0?=
 =?us-ascii?Q?1A90zXVrLU2A0Fjjj8tRgY8nOILw3W6m0rxAnw+UTJswFHm97fsFlUdPmXdZ?=
 =?us-ascii?Q?yMOlK0uyg6pzEUtBo38qss1N54SnqTy78pbc7sGOOjprWwo+9Qa4dHKa3q9f?=
 =?us-ascii?Q?8TV4ICTMUP038EawrkPfWUbiFY/+MGnePC3Yy4oc1qzfooqOu/K/2lH/R7ze?=
 =?us-ascii?Q?uWSIX5r0aLqyJUrNrpsdLMfjnQ2aHZs4Mt3ATyZYA8hpZ5pN0RnIQjyP3NXu?=
 =?us-ascii?Q?+s0GHDbEbggH6TFNw/9E3kA75QdHsXaCOPAxeKPoBnHAVUS6FLQXQvzpm11t?=
 =?us-ascii?Q?b6weTedAjIsWSv9BskMQ3wchABwghtbU8JkbrUmV?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 330c2201-9662-4ef9-d339-08de21a5c7c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2025 04:41:43.7971 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SvWT9aCcKdkHWzP9yJ3ZEUfjOJU0s/knxTP2uzT0JrNcVqI8zSAkDt/tquiF0d0xFnVJHGtA/1zplwvVf6PNfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5086
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

> Subject: [CI 18/32] drm/i915/display: Compute plls for MTL+ platform

*PLL's
Keep acronyms in capital wherever possible

>=20
> To bring MTL+ platform aligned with dpll framework we need to call and
> calculate pll state from dpll framework.

Ditto=20
Also try avoid statement like "we need to call.."
something like " To bring MTL+ platform aligned call & calculate PLL state =
from dpll framework=20

>=20
> v2: Rename mtl_compute_c10phy_dpll() to mtl_compute_non_tc_phy_dpll().
>     The state is computed either for a C10 or on the PTL port B eDP on
>     TypeC PHY case for a C20 PHY PLL. Hence refer to this case as
>     "non_tc_phy" instead of "c10phy".
>=20
>     Rename mtl_compute_c20phy_dplls() to mtl_compute_tc_phy_dplls() for
>     symmetry with mtl_compute_non_tc_phy_dpll().
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 69 +++++++++++++++++++
>  1 file changed, 69 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index a9d9b7113f12..b6a5a519e936 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -4320,9 +4320,78 @@ static const struct dpll_info mtl_plls[] =3D {
>  	{}
>  };
>=20
> +/*
> + * Compute the state for either a C10 PHY PLL, or in the case of the
> +PTL port B,
> + * eDP on TypeC PHY case for a C20 PHY PLL.

* eDP over TypeC

> + */
> +static int mtl_compute_non_tc_phy_dpll(struct intel_atomic_state *state,
> +				       struct intel_crtc *crtc,
> +				       struct intel_encoder *encoder) {
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	struct icl_port_dpll *port_dpll =3D
> +		&crtc_state->icl_port_dplls[ICL_PORT_DPLL_DEFAULT];
> +	int ret;
> +
> +	ret =3D intel_cx0pll_calc_state(crtc_state, encoder, &port_dpll->hw_sta=
te);
> +	if (ret)
> +		return ret;
> +
> +	/* this is mainly for the fastset check */

Capitalize the first letter

With that fixed LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> +	icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
> +
> +	crtc_state->port_clock =3D intel_cx0pll_calc_port_clock(encoder,
> +							      &port_dpll-
> >hw_state.cx0pll);
> +
> +	return 0;
> +}
> +
> +static int mtl_compute_tc_phy_dplls(struct intel_atomic_state *state,
> +				    struct intel_crtc *crtc,
> +				    struct intel_encoder *encoder)
> +{
> +	struct intel_crtc_state *crtc_state =3D
> +		intel_atomic_get_new_crtc_state(state, crtc);
> +	const struct intel_crtc_state *old_crtc_state =3D
> +		intel_atomic_get_old_crtc_state(state, crtc);
> +	struct icl_port_dpll *port_dpll;
> +	int ret;
> +
> +	/* TODO: Add state calculation for TBT PLL */
> +
> +	port_dpll =3D &crtc_state->icl_port_dplls[ICL_PORT_DPLL_MG_PHY];
> +	ret =3D intel_cx0pll_calc_state(crtc_state, encoder, &port_dpll->hw_sta=
te);
> +	if (ret)
> +		return ret;
> +
> +	/* this is mainly for the fastset check */
> +	if (old_crtc_state->intel_dpll &&
> +	    old_crtc_state->intel_dpll->info->id =3D=3D DPLL_ID_ICL_TBTPLL)
> +		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_DEFAULT);
> +	else
> +		icl_set_active_port_dpll(crtc_state, ICL_PORT_DPLL_MG_PHY);
> +
> +	crtc_state->port_clock =3D intel_cx0pll_calc_port_clock(encoder,
> +							      &port_dpll-
> >hw_state.cx0pll);
> +
> +	return 0;
> +}
> +
> +static int mtl_compute_dplls(struct intel_atomic_state *state,
> +			     struct intel_crtc *crtc,
> +			     struct intel_encoder *encoder)
> +{
> +	if (intel_encoder_is_tc(encoder))
> +		return mtl_compute_tc_phy_dplls(state, crtc, encoder);
> +	else
> +		return mtl_compute_non_tc_phy_dpll(state, crtc, encoder); }
> +
>  __maybe_unused
>  static const struct intel_dpll_mgr mtl_pll_mgr =3D {
>  	.dpll_info =3D mtl_plls,
> +	.compute_dplls =3D mtl_compute_dplls,
>  };
>=20
>  /**
> --
> 2.34.1

