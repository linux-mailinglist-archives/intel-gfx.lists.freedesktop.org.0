Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D0096C7A3
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 21:34:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAE7E10E549;
	Wed,  4 Sep 2024 19:34:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IDO+8aDX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2E9210E59C;
 Wed,  4 Sep 2024 19:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725478472; x=1757014472;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PxlD1TTBeLZqd8pVNEY2D8pmPP4SC0b9I2101RcFpoo=;
 b=IDO+8aDXzjYeherirspFdwL00BOivt4/1cYbRUNtPh91xkhRB77OEP6i
 U8vG2HUo6a49sHGYQWTpN0zGejS779yOFN1lKY7uIuA6y2tDQICxgT+Ic
 1SKhnxeWedoO+8RtLry6ME2D7BgkcMHxY3m6+UgVISAacEUXlQCITK4Xt
 S+xbm5L99frtO6lyP7TSvN0/BWZDslFe7Fxg1VdQGL21niXJ+B8I5QIU2
 cTtHqI4/otxVp8+piq0GC1urJKZgxD4g4WU0hj5fnCHSEpZ0GTNfl+TH8
 9ygmKCrbIwvcjPcxqH+AAjyKEGGhnf6D11BZaDuAlbPiZODlKpFqnXQmo A==;
X-CSE-ConnectionGUID: hhWuFUTETv2zDeQZ5X2uyw==
X-CSE-MsgGUID: /L3gC3cVQ3CKBlYCbZqg1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="46691763"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="46691763"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 12:34:32 -0700
X-CSE-ConnectionGUID: Td2EfsrpRFadt+SQys9qyg==
X-CSE-MsgGUID: YVkty/GeR/20fryuhKPnuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="65419933"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 12:34:31 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 12:34:30 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 12:34:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 12:34:30 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 12:34:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aj7Lw23zyJLuIeaccJN6rdBkK05gG7UtPK6WDvVJwdP8hMCRS0uvoOkASVmxJPuyhPaf/Mx5UZdA+5G7qWAyR/WyAYXvFacd/I4/8yL6KaVVS/BHXlfTnZR1xJe5YNvABREgLPY7uO5cPjKfUZGae61hhYoE4L/11+aToJg22C1MkTxnnWVyfJq/VRyUkoNqN/l/ADXt7hEH1NcY71fKHiYuSWYbU+kjK/Kcndlqlk6LUONpE6bsd2MC5F0agNm1QT9aGBdrSw40insNnTAzAKK8RXBpvKZz/gavxvovAAdBuSYf22b+dwOsu0cNkKkmVeDeWb68dbMuHrLcbyYYrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s7tmrAdx1LETHZAf/VfKQQh7RWHTy9DSdLJKxGkDRt0=;
 b=nkM023VTdvwGWMDKVAAzePVitB6fmdfbUirSEHTBhXwXY2dlALj/HMFffxEAqwwC29Way4Aydemsvjrf9hV3onVjoEIOdE3b1SwAg2a9p6QV2vBjRHjJ5qoEoQ0E3c8+tH6FLCK1QmyfpN2nm9oxr0NHK86/U3iT/XI1VrtDGYpvdh2fS4/4vdZIO5V7/P5PC+1L89JdDy+UAHVcpGVWz2+1azBk0Mz3IvGCLjKqLQ3aFLEF+QnaMUpwy1LtOvE2iXoISiROYAI8LtgIjan2c2zduCO2/pp7q0ZsYnpyxrl9Wtaq+bMGhac1h0N7ToyYoH/GenOeDjCQy3K/y4Vu4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by MN0PR11MB6011.namprd11.prod.outlook.com (2603:10b6:208:372::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.23; Wed, 4 Sep
 2024 19:34:27 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 19:34:27 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [RFC] drm/xe/display: Merge xe's display info probe and i915
 HAS_DISPLAY checks
Thread-Topic: [RFC] drm/xe/display: Merge xe's display info probe and i915
 HAS_DISPLAY checks
Thread-Index: AQHa/vEl+ySqENRPbEijgUMEgj0rD7JH+SLQ
Date: Wed, 4 Sep 2024 19:34:26 +0000
Message-ID: <CH0PR11MB544440BD5A5946A68B4A41ACE59C2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240904173713.26891-1-rodrigo.vivi@intel.com>
In-Reply-To: <20240904173713.26891-1-rodrigo.vivi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|MN0PR11MB6011:EE_
x-ms-office365-filtering-correlation-id: b817e74b-10e3-4c45-9b77-08dccd1896a5
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?hagL0qMj2hoXI/G9E6peQy+b27sxm7vS4NN2S7cE699xrDaa1JzcRSJv3P/o?=
 =?us-ascii?Q?ygOKol9Hypt7AAD8uFu0q50ssjitZ+fVyXwYwedWWHGroExbSgqD+avypM4v?=
 =?us-ascii?Q?iGWzLK8zrON1Jn+c2wA0EG0r/MX2uAtmAc5e5xxlazDn/s7uDjLTP5c+Z61v?=
 =?us-ascii?Q?z8lCrVNjWibT+Iqkjug/eNoKGuLrVc5QCUF+X//TMA98WBJ3Zk/QiZRPr9vA?=
 =?us-ascii?Q?hLNAFktk04lyP7j5phZeWRZ0ZstMNm3fnpK8Nfm5pNlE0s8m/SY4Ck3ax8xm?=
 =?us-ascii?Q?TjSVwgz31vG/YW91LtaeOZAet/z0ki2zUk8al9X3zohVpt2HidZS2Pc82D/H?=
 =?us-ascii?Q?Y5XQX7uz2qfoHtFScmA57C7EneB7LhtnnVmX7Bxn7v5Y2GFAjzfqST26SSyg?=
 =?us-ascii?Q?q3Fx81UnN9U4gKyj2Nxal0yjAY5dqnKBgL72DR/IN2SG+V/9EDHt6fwbEhOl?=
 =?us-ascii?Q?FFIlGmSwP60XsEnV50X89E9L6PcBJT4NMskr72bLH6VMaTiQLIOOYPZQA+dO?=
 =?us-ascii?Q?Und4y3pdyUAo9SD5/0m0huztY+NrZQokcT24p31+vnjjet3VqjJbbaSat1e0?=
 =?us-ascii?Q?7QuuUMD4UIgWkxRxSRm/rpMeW9XOwJd1Dv7YqEjGKD4QRmA/Oq2wb4I8wik7?=
 =?us-ascii?Q?wOnW86Ftro6l87HIkRTmAtKIEOqzwoh0kcQtmgViE3xPsz20yyJ/PSgb7DIc?=
 =?us-ascii?Q?jAj9bj8reGB7BWIHiilc9/EGURY4u3PUB/0mgPKniF3j+0Popa0z3sykHIDQ?=
 =?us-ascii?Q?X0p3JmUdi93mY+2BC6OnHGS+Pvm2xXemP/0Gl1/MZ8Jhj3q1r6qQgLsMFQ0h?=
 =?us-ascii?Q?g+wkqc743hO/PMtWwuTPLMqt41jnCbErss/0RofsEbCeOnDuzH5WBjgeKdAu?=
 =?us-ascii?Q?H0TsLlMlQUhUWX5gUJmepGj+sDNXtHhBvw7ic8tlypS+ZRVWh5MCeK/XyFjr?=
 =?us-ascii?Q?QPRB0ZL8k7e1J64rnLtxAwbA1hBa2RXzc5pDwFVznDSUD1OF8mmz3cJfJ7Lo?=
 =?us-ascii?Q?tvC2yWLWyuo0oyMEbZkOWwPP0Q09YpJpbOrF0LqrQhPyW0d17jdxH2lVd1JE?=
 =?us-ascii?Q?ZlOInQhSFf7hZH7WbnxRMiU2ufkg83apYs+YmSMVjmpq5mNIz1HPbyRbs4iQ?=
 =?us-ascii?Q?icllR2x4+xuMGoWE1ZAiVQHJTwvxDcwqUBxCmmYR4z9ssK+ULitMw2KpaSiY?=
 =?us-ascii?Q?6ijKAj8F+vL93V7pQj7f5A3t3nPY4PpZPYBRZ9RbzOFWY0ux7SKeAz2vV/LG?=
 =?us-ascii?Q?m0zgnngg28q7G3zKQDf53WuUIDvunWWCK+SgF9slz2BKQ5X0omhtKglr6Mfy?=
 =?us-ascii?Q?+hEmeVKx+YTSTlZj0VZ7qCKboSkvIgoQI913MEix7iVitppaTvT5G1tzKnGA?=
 =?us-ascii?Q?tVH7ef3sCHUozuZTmQFbdk/7r1HuxM6HvNKYrxYydeyhzMeQww=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gaUXpIdnwPTDHBUGNmC+YMaCXJjJLUeRn5STAc6hoEaxuLpGRo80xALt+0ee?=
 =?us-ascii?Q?R3thFwolV9HALrm41hNZO3KFRPCwo3FI/OOk14I/XxEW8ygFT3P4mFAENu+i?=
 =?us-ascii?Q?jMSItZpGqWbNBnbM8DGb1CTsoD8A1jBww+Cj6Oh9b9pa4ccrwdiRlvPxTzXe?=
 =?us-ascii?Q?v0ua6tFb/LzAojFN6nLESHzV8fsrRM8xrj7ga4G86rkoPiOU9TpauM7pgY8W?=
 =?us-ascii?Q?WqtkERap8xsR0+fDyAW4kTY72z8eip6f44p722oezWibCs6g5YMbeG/uKuZd?=
 =?us-ascii?Q?tqYWJjZFQbCDYXY4PSfGCxkdg8UhvRrBzGU8sOtz0gFky9pwVtc5HigpTY/5?=
 =?us-ascii?Q?PfUYxs840/RDMifqFqjg0BeQttXnzQnNITK8sHc2nd5mx9co1jdE3tgIM6W1?=
 =?us-ascii?Q?C3pRfG4FpdVwVEWSj+ALrRgBm42Tz74wUpshPT1Ezwrl3gsRsxFTEfgx5nkf?=
 =?us-ascii?Q?N6TxO+uDOKB+IqrJmzaqCg4kKna+pi5oa6kvX8AGwPGdKRxtUETAimSTeTU0?=
 =?us-ascii?Q?rLnZ38JbhcL3X+A4sa4Qhh0zU67egXfvewPO+Z0bAWXqwvGuXYO8IObNlNiw?=
 =?us-ascii?Q?vKVk8VHQa5xbMboWxYeDkn95PWstsGF+wHyN0SHzGWYyNOM2Cr/+LPZsRH/G?=
 =?us-ascii?Q?n6GX62wYhomsAAeQwoyFN0AYTRYJYDJAwWoKSQaBKn6NJQvVcluuZZcJsSas?=
 =?us-ascii?Q?Ib/pBKEBhP7iKA94tdTTtk1YvpJ8k+ouYCcQZkgVwrvVkXWp0tisb/JJn4W5?=
 =?us-ascii?Q?xwWpxdBtq/9C/yv5jUPueo0JKYgII4wX52a4XMIvFZOLifsvNGrj/sideFt9?=
 =?us-ascii?Q?U0ODsWeoDqQR823HtrzzVpBF9vDZuwp53p+qWK0MZDDrPbsky0IRjqED6Qj+?=
 =?us-ascii?Q?LHxkIfGgRnoq/usnuDLh4PQzFgYgYucdFCSBflvZRw22TJ5V51Dyxhj7xMGh?=
 =?us-ascii?Q?C4q+vrhCldCbihx1/Bj46AGb6U177MLoVepXFk9NSRNpWck6aUVNZT2HsIuO?=
 =?us-ascii?Q?DbJtstCL1JkfqQ9r1i8peIFy2jyCKoY5nMv1ynCmGSLkj/zSDiQR2LGd/kX5?=
 =?us-ascii?Q?mbgF5RDQbmCrBpo2XmUC0bObbEyoPav+9/xR1I9pYmKWmXOQtJ9ZHWPM/rsw?=
 =?us-ascii?Q?7xd92LeGdDWfclA+U+U+nJOsPiLpBmZCX1rNRIS+SIIQOjMqPOwUw0BuEz4h?=
 =?us-ascii?Q?5a3VxJ5JXOfS3+vVyl0BLyAmzvsPTCAii7xT+8bxuFk6NE/d6asX5EcRMzY/?=
 =?us-ascii?Q?6n+n9mVArE2JgtL7XBvVeSVhkmLXERfuDJWvIkI+v8Fzp/4+ujWZMj1XuvJb?=
 =?us-ascii?Q?fbZPiCS+QU5x07GccSI6gZn9FLjZjD6unW3x6Sbk+e0Y26yRopjhKs6ZiFkb?=
 =?us-ascii?Q?eF3WEUY3eUntmFZwQSuHuDJHLzkS7rZ8bXy93cmak35AVLk+unVK6Ub79Aua?=
 =?us-ascii?Q?i4WsgG42Tha69BS7iMCipmY+hk0OEvlJWlusr08zLCbQFOXcOvefoNSareMK?=
 =?us-ascii?Q?5E0Pg7QCrxhfR4x6V7g+Hi2JC7Xn3i368Z/Byver2aCuUnCh/kxkGKUj5JJx?=
 =?us-ascii?Q?p7+sj6eMQPJF5zsMOaTIOgktLQcH7gyMxVAD3WnX?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b817e74b-10e3-4c45-9b77-08dccd1896a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2024 19:34:27.0015 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rEbCpXr/iSRy5aCiQV4ZL18do6lDCxqNourkmRrZ9HCZye9C8yz+2igVUC19go5+2xiFKkf7TA+6blYrxUvSPozOV0XbtQR2sFhTqrarUrk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6011
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

-----Original Message-----
From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Rodr=
igo Vivi
Sent: Wednesday, September 4, 2024 10:37 AM
To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>; Nikula, Jani <jani.nikula@intel=
.com>; De Marchi, Lucas <lucas.demarchi@intel.com>
Subject: [RFC] drm/xe/display: Merge xe's display info probe and i915 HAS_D=
ISPLAY checks
>=20
> Instead of having multiple checks and the has_display in the middle
> of the functions, only execute the Xe display functions if
> Xe probed display and pipe_masks still have something valid
> after i915's runtime init.
>=20
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Apropos of nothing, it would be nice if we could decouple the Xe display dr=
iver
from the i915 driver, but I don't think this is the best place to do that.

LGTM.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 65 +++++++++++++------------
>  1 file changed, 35 insertions(+), 30 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index 75736faf2a80..1e248c7aaff0 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -13,7 +13,6 @@
>  #include <uapi/drm/xe_drm.h>
> =20
>  #include "soc/intel_dram.h"
> -#include "i915_drv.h"		/* FIXME: HAS_DISPLAY() depends on this */
>  #include "intel_acpi.h"
>  #include "intel_audio.h"
>  #include "intel_bw.h"
> @@ -34,7 +33,12 @@
> =20
>  static bool has_display(struct xe_device *xe)
>  {
> -	return HAS_DISPLAY(xe);
> +	/*
> +	 * Xe has probed and configured the display,
> +	 * and some pipes remains enable after
> +	 * __intel_display_device_info_runtime_init()
> +	 */
> +	return xe->info.probe_display && HAS_DISPLAY(&xe->display);
>  }
> =20
>  /**
> @@ -104,7 +108,7 @@ static void xe_display_fini_nommio(struct drm_device =
*dev, void *dummy)
>  {
>  	struct xe_device *xe =3D to_xe_device(dev);
> =20
> -	if (!xe->info.probe_display)
> +	if (!has_display(xe))
>  		return;
> =20
>  	intel_power_domains_cleanup(xe);
> @@ -112,7 +116,7 @@ static void xe_display_fini_nommio(struct drm_device =
*dev, void *dummy)
> =20
>  int xe_display_init_nommio(struct xe_device *xe)
>  {
> -	if (!xe->info.probe_display)
> +	if (!has_display(xe))
>  		return 0;
> =20
>  	/* Fake uncore lock */
> @@ -129,7 +133,7 @@ static void xe_display_fini_noirq(void *arg)
>  	struct xe_device *xe =3D arg;
>  	struct intel_display *display =3D &xe->display;
> =20
> -	if (!xe->info.probe_display)
> +	if (!has_display(xe))
>  		return;
> =20
>  	intel_display_driver_remove_noirq(xe);
> @@ -141,7 +145,7 @@ int xe_display_init_noirq(struct xe_device *xe)
>  	struct intel_display *display =3D &xe->display;
>  	int err;
> =20
> -	if (!xe->info.probe_display)
> +	if (!has_display(xe))
>  		return 0;
> =20
>  	intel_display_driver_early_probe(xe);
> @@ -172,7 +176,7 @@ static void xe_display_fini_noaccel(void *arg)
>  {
>  	struct xe_device *xe =3D arg;
> =20
> -	if (!xe->info.probe_display)
> +	if (!has_display(xe))
>  		return;
> =20
>  	intel_display_driver_remove_nogem(xe);
> @@ -182,7 +186,7 @@ int xe_display_init_noaccel(struct xe_device *xe)
>  {
>  	int err;
> =20
> -	if (!xe->info.probe_display)
> +	if (!has_display(xe))
>  		return 0;
> =20
>  	err =3D intel_display_driver_probe_nogem(xe);
> @@ -194,7 +198,7 @@ int xe_display_init_noaccel(struct xe_device *xe)
> =20
>  int xe_display_init(struct xe_device *xe)
>  {
> -	if (!xe->info.probe_display)
> +	if (!has_display(xe))
>  		return 0;
> =20
>  	return intel_display_driver_probe(xe);
> @@ -202,7 +206,7 @@ int xe_display_init(struct xe_device *xe)
> =20
>  void xe_display_fini(struct xe_device *xe)
>  {
> -	if (!xe->info.probe_display)
> +	if (!has_display(xe))
>  		return;
> =20
>  	intel_hpd_poll_fini(xe);
> @@ -213,7 +217,7 @@ void xe_display_fini(struct xe_device *xe)
> =20
>  void xe_display_register(struct xe_device *xe)
>  {
> -	if (!xe->info.probe_display)
> +	if (!has_display(xe))
>  		return;
> =20
>  	intel_display_driver_register(xe);
> @@ -223,7 +227,7 @@ void xe_display_register(struct xe_device *xe)
> =20
>  void xe_display_unregister(struct xe_device *xe)
>  {
> -	if (!xe->info.probe_display)
> +	if (!has_display(xe))
>  		return;
> =20
>  	intel_unregister_dsm_handler();
> @@ -233,7 +237,7 @@ void xe_display_unregister(struct xe_device *xe)
> =20
>  void xe_display_driver_remove(struct xe_device *xe)
>  {
> -	if (!xe->info.probe_display)
> +	if (!has_display(xe))
>  		return;
> =20
>  	intel_display_driver_remove(xe);
> @@ -243,7 +247,7 @@ void xe_display_driver_remove(struct xe_device *xe)
> =20
>  void xe_display_irq_handler(struct xe_device *xe, u32 master_ctl)
>  {
> -	if (!xe->info.probe_display)
> +	if (!has_display(xe))
>  		return;
> =20
>  	if (master_ctl & DISPLAY_IRQ)
> @@ -254,7 +258,7 @@ void xe_display_irq_enable(struct xe_device *xe, u32 =
gu_misc_iir)
>  {
>  	struct intel_display *display =3D &xe->display;
> =20
> -	if (!xe->info.probe_display)
> +	if (!has_display(xe))
>  		return;
> =20
>  	if (gu_misc_iir & GU_MISC_GSE)
> @@ -263,7 +267,7 @@ void xe_display_irq_enable(struct xe_device *xe, u32 =
gu_misc_iir)
> =20
>  void xe_display_irq_reset(struct xe_device *xe)
>  {
> -	if (!xe->info.probe_display)
> +	if (!has_display(xe))
>  		return;
> =20
>  	gen11_display_irq_reset(xe);
> @@ -271,7 +275,7 @@ void xe_display_irq_reset(struct xe_device *xe)
> =20
>  void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt)
>  {
> -	if (!xe->info.probe_display)
> +	if (!has_display(xe))
>  		return;
> =20
>  	if (gt->info.id =3D=3D XE_GT0)
> @@ -311,7 +315,7 @@ static void xe_display_flush_cleanup_work(struct xe_d=
evice *xe)
>  /* TODO: System and runtime suspend/resume sequences will be sanitized a=
s a follow-up. */
>  void xe_display_pm_runtime_suspend(struct xe_device *xe)
>  {
> -	if (!xe->info.probe_display)
> +	if (!has_display(xe))
>  		return;
> =20
>  	if (xe->d3cold.allowed)
> @@ -324,7 +328,8 @@ void xe_display_pm_suspend(struct xe_device *xe, bool=
 runtime)
>  {
>  	struct intel_display *display =3D &xe->display;
>  	bool s2idle =3D suspend_to_idle();
> -	if (!xe->info.probe_display)
> +
> +	if (!has_display(xe))
>  		return;
> =20
>  	/*
> @@ -333,7 +338,7 @@ void xe_display_pm_suspend(struct xe_device *xe, bool=
 runtime)
>  	 */
>  	intel_power_domains_disable(xe);
>  	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
> -	if (!runtime && has_display(xe)) {
> +	if (!runtime) {
>  		drm_kms_helper_poll_disable(&xe->drm);
>  		intel_display_driver_disable_user_access(xe);
>  		intel_display_driver_suspend(xe);
> @@ -345,7 +350,7 @@ void xe_display_pm_suspend(struct xe_device *xe, bool=
 runtime)
> =20
>  	intel_hpd_cancel_work(xe);
> =20
> -	if (!runtime && has_display(xe)) {
> +	if (!runtime) {
>  		intel_display_driver_suspend_access(xe);
>  		intel_encoder_suspend_all(&xe->display);
>  	}
> @@ -358,7 +363,8 @@ void xe_display_pm_suspend(struct xe_device *xe, bool=
 runtime)
>  void xe_display_pm_suspend_late(struct xe_device *xe)
>  {
>  	bool s2idle =3D suspend_to_idle();
> -	if (!xe->info.probe_display)
> +
> +	if (!has_display(xe))
>  		return;
> =20
>  	intel_power_domains_suspend(xe, s2idle);
> @@ -368,7 +374,7 @@ void xe_display_pm_suspend_late(struct xe_device *xe)
> =20
>  void xe_display_pm_runtime_resume(struct xe_device *xe)
>  {
> -	if (!xe->info.probe_display)
> +	if (!has_display(xe))
>  		return;
> =20
>  	intel_hpd_poll_disable(xe);
> @@ -379,7 +385,7 @@ void xe_display_pm_runtime_resume(struct xe_device *x=
e)
> =20
>  void xe_display_pm_resume_early(struct xe_device *xe)
>  {
> -	if (!xe->info.probe_display)
> +	if (!has_display(xe))
>  		return;
> =20
>  	intel_display_power_resume_early(xe);
> @@ -391,23 +397,22 @@ void xe_display_pm_resume(struct xe_device *xe, boo=
l runtime)
>  {
>  	struct intel_display *display =3D &xe->display;
> =20
> -	if (!xe->info.probe_display)
> +	if (!has_display(xe))
>  		return;
> =20
>  	intel_dmc_resume(xe);
> =20
> -	if (has_display(xe))
> -		drm_mode_config_reset(&xe->drm);
> +	drm_mode_config_reset(&xe->drm);
> =20
>  	intel_display_driver_init_hw(xe);
>  	intel_hpd_init(xe);
> =20
> -	if (!runtime && has_display(xe))
> +	if (!runtime)
>  		intel_display_driver_resume_access(xe);
> =20
>  	/* MST sideband requires HPD interrupts enabled */
>  	intel_dp_mst_resume(xe);
> -	if (!runtime && has_display(xe)) {
> +	if (!runtime) {
>  		intel_display_driver_resume(xe);
>  		drm_kms_helper_poll_enable(&xe->drm);
>  		intel_display_driver_enable_user_access(xe);
> @@ -441,7 +446,7 @@ int xe_display_probe(struct xe_device *xe)
>  	if (err)
>  		return err;
> =20
> -	if (has_display(xe))
> +	if (HAS_DISPLAY(&xe->display))
>  		return 0;
> =20
>  no_display:
> --=20
> 2.46.0
>=20
>=20
