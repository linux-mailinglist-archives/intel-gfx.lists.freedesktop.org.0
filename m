Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4N/LN9qfnWlrQwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 13:55:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E1018746C
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 13:55:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCBD010E577;
	Tue, 24 Feb 2026 12:55:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J4OkxChg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3428010E2BE;
 Tue, 24 Feb 2026 12:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771937750; x=1803473750;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YtOBgtU9g4ObVuPQqFgnW6PGNVsthiEdGZuwMiCB/W0=;
 b=J4OkxChgSqJQ1Ro2i2aPjjzGZxJeJnwAJOcmsALLO1X2IXFUu9Ha8d7L
 n3g9sG5oy7r6o2DIazFcv5W7sN5jFoqk5cVdUw5gUHIe57HoDgx1z+Dk7
 uP5QCe34QEP7cUrw4QL7rn77UiB5l0fsOUyF/cT+Al8m61omFRx3l3i0E
 bJ5qAqKg/Zn/gCFVy8EBNpurE+f4tK5axrWIVt0MpR/2ZT1DCWtVYrRbR
 gd6AwlGifgdziOnlcnIbORPzQQljF4Wqbi/xuUiMBjuGqCMda13yJ9kWs
 /IMMENOEwiqLR0pErxNnEseEIjsghsS92ZvVefog5A9lSmK3wnuAA0lwU w==;
X-CSE-ConnectionGUID: HnQS93vVTYmd2Y6VY9apuA==
X-CSE-MsgGUID: 7YTIBMNlTlaFZDxbaUcwbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="98412395"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="98412395"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 04:55:49 -0800
X-CSE-ConnectionGUID: Lv8Cy8enR5aEIHD3aPIe2Q==
X-CSE-MsgGUID: 572DQZL2TTKlYfTKiZHYqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="219373418"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 04:55:49 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 04:55:49 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 04:55:49 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.36) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 04:55:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HP17dkORURzYmVdEl5/MXd8u2vFm171t/Oxwg181ozPnVoqhkHUaOQElscVVObPQjPt2euetaY9NLMplR8Z5+KceyV8M4J2FULBS3FGZ/eOS7z6WmKcbdqZNjhRcod/0d5Mt3ue+CxjOlksyV3kaHYdo8nafe5xZ8QPW3zMxDg4zoqkyFZiC+b8L5eSux/XUESzdFE6zbypDM0Z4+Qi+XJpl+oZuiAMnP/WRYWfoUarDTaQ+TDtBOLdKmXsKkV52zLuaIFcKPG8YebShtaK5l51MiKh4C4CBvN4qc0BWS3FuR3EGtJI/jDFZ5qsKMhH955AO9qrpuvDGpESpI16iMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bv7rgTkKX2q7KiDokusT09lPoAYH0Hbr0Rae2Sldnn0=;
 b=K6X++yBR1w7MR3ZCoV5VFbTE8JDDGwy3QBb5SYFD26eb1LqsNhlUsm6pDrBF6XXeIgHapnPocgLtlifwWLLQM1PU1iVgd6SW9JzjRlsuFaW3kBVY4PC4MVSMuhj7kIAyfW/hg5BSnMfxyeIDl2oWhkr/vcGe7+zMEHnI9q6bS88mfBzVEKAvDUhLcfuT5ovuwEIDrkMj7hnv9OwcPUnMMGJ9Z4vzBu0bu8dBQpXvAV0RRy4iO3wFW0lELvTY4T9ko/Dl6DX6FR7zZ9qJOWsx0MCl2QHf3/dmEpNwKdwRlfEgmjzaWNOBGFsTt6Z2stXBwLR6ZvyFQjdkUU79UH3CEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by LV4PR11MB9490.namprd11.prod.outlook.com (2603:10b6:408:2e1::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Tue, 24 Feb
 2026 12:55:47 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 12:55:47 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 4/5] drm/i915/dp_tunnel: Sanitize documentation of
 intel_dp_tunnel_detect()
Thread-Topic: [PATCH 4/5] drm/i915/dp_tunnel: Sanitize documentation of
 intel_dp_tunnel_detect()
Thread-Index: AQHcoc27yWJOKQZCm0+OFfnDwILbPbWQejRwgAAJzoCAAKTG8IAAWWKAgABT1iA=
Date: Tue, 24 Feb 2026 12:55:47 +0000
Message-ID: <IA0PR11MB730780BBDEA888F2E8F549B6BA74A@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20260219182823.926702-1-imre.deak@intel.com>
 <20260219182823.926702-5-imre.deak@intel.com>
 <IA0PR11MB7307ED11D322F4B53B76988FBA77A@IA0PR11MB7307.namprd11.prod.outlook.com>
 <aZyEJdyNxEgazSSF@ideak-desk.lan>
 <IA0PR11MB730753D5A4BA17347FAF1D9DBA74A@IA0PR11MB7307.namprd11.prod.outlook.com>
 <aZ1ZWd3_KhEajgwy@ideak-desk.lan>
In-Reply-To: <aZ1ZWd3_KhEajgwy@ideak-desk.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|LV4PR11MB9490:EE_
x-ms-office365-filtering-correlation-id: 237c9fed-5542-430d-1d4c-08de73a40790
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|10070799003|376014|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?gGDgiYOzwKiX2kTFaCu9jrtv3LH3Www8Mz0uvf+B6BO3EaYNP4rq1e5LSyDf?=
 =?us-ascii?Q?SLynzv+8BqYOOxoZvNhIVXjySfbbivNO3ti2gue8MZ03TA/lGY4xueYnd3A+?=
 =?us-ascii?Q?cbdactUl/1OlTvlDmXow4eW/QUrQttuAhvyEqurV0E51WIljt/aNh7d9n5FV?=
 =?us-ascii?Q?Yizv5ewYEbrEyTzfm/d5ca0tuVLRPw3LnyGAX4c+4YpbB2ehya6C/jEAs/Ob?=
 =?us-ascii?Q?b6SKAvjNOf7R1A9Tg6xhe2GgCijWwEMuffYg07sPmI2/2FH6GKkl/Qrf9P0E?=
 =?us-ascii?Q?RLzQqdRsROTgJzbD/6nirKDKvyyAwIEY4dMCkUN159mjk8qbiW7iZdvviM+R?=
 =?us-ascii?Q?gCpvp0ioAVAWSZNm2v6tmow4BFU2rfswwTn9uY+y0onPNHOzZPaApnHt14p5?=
 =?us-ascii?Q?Ob0hscBdBxjAU3pYXUWYkJulhpJbqOxavikq/H8zQVb3K3kvCTzeyB6LJUlj?=
 =?us-ascii?Q?soSU+gkGvymNMif4dlx43Lxo0LSCeigWWRekcMZMisUhkNli7c9dPFaK5NfT?=
 =?us-ascii?Q?hg7UiDBx5XjwC6GkG+lq9lV2DbIh7irTd9H70QI4X1/cJ+EICosBd9+mSDIO?=
 =?us-ascii?Q?QV3qT+gwzx227pVZ8fXztmLCTN+0difUWqxJAMmhLTjNxvXCdqRkVZUJ+KLf?=
 =?us-ascii?Q?gIl0PslvcwJAoiGld5oVaJuOqVWul9Lr7s4JnJcSeQ7KioM19XZfK1tRAJPe?=
 =?us-ascii?Q?xsLevIy1whmffk7UagSLn3XG3Y+RB7QhBi3Bz5QpYUyqqOIRQNbJzmiN9NAX?=
 =?us-ascii?Q?meGilEyPM3JJv3oteOca2R8q3FdZVK3EBKnatpYHtkjUvXszinJ2IQxP5hca?=
 =?us-ascii?Q?ESpJnEDamyR24E5SOsQNTvPNksb+zlObJW9yObYN26Auxl04v0S6OVI6VOVi?=
 =?us-ascii?Q?IqCUxy3s+jXumQ/ZVDcIBjFECX+PoWQToG08pheCmgflC4jiYve0KyPGscm+?=
 =?us-ascii?Q?Ts80Lgart5aBTGzoOU1dMevS69aPrzUdC5l7CwEnmVrp9Z6diEvghy4LWgNr?=
 =?us-ascii?Q?1IzVx2VGuF7RIrQA3BYMWQTUG2vQXC+PxskRqVlj/lw+UpThR5tMal/nJOW/?=
 =?us-ascii?Q?8Ge4H0ZecpdnYCfv1o6xGtOG4RpsDI0//6kqvc9Xo46c9UpKQVxuIJnJA2/a?=
 =?us-ascii?Q?RvZhZnkVKf21+J1uf+vKGL8ayrH49+ZcQn5/VvjuZf55be4mr06/uF7865rh?=
 =?us-ascii?Q?OMbvtVLsfBVSr7rsbkFyf/SwOFXE57ST4FAmTn/VYhm2m31LY2DL596CC6ig?=
 =?us-ascii?Q?Smm8t98ymqtw6NjOQ1UWxM6FesLtrtIf9TLOoBZMZKJKkbb8U/kjRPIhagSd?=
 =?us-ascii?Q?fiWZFB6yqECVfJxXzFcdmXnYX81CQjbbHNQOC1g4ymma44Kb3ottywpeA4zC?=
 =?us-ascii?Q?5YEp1YG4JIsBEtlc3S5Ziob4a2uunjWfMLfAVqtgpKUqthksWV6wCZOYmXy4?=
 =?us-ascii?Q?WvZJEmnzPUZBg07sDctAEn/9Nk10+RzL7ngO2bAhACI2BdGPQYr2k9bRdp0N?=
 =?us-ascii?Q?4yLaPT80ZRLdWU55QadgQkCcemc7huuCDLOFa/GYsk23y9O8vh/b6XdOtBw6?=
 =?us-ascii?Q?ttW5nzAALdMwtE3VPZePDbxedanKPfyc4ilmwzKIkFMNDdaPo2eARHMUDRDi?=
 =?us-ascii?Q?N0ykVBfjE0ZO5I/ffKzq1Ys=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(10070799003)(376014)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fXyL78tSJbOw1luYKTH2bTg3y/9/VCH3dImaueEU+pHiaRqsGPoNaLeVOkIx?=
 =?us-ascii?Q?wlpo/VeVvE9b+2yCq+IQGt4zY5xgbQZ+v1k5J9ps5u1z0Xa1sCV+hvnA2n/O?=
 =?us-ascii?Q?RCJeKisRXRZ4/QMr90GN8+VMHxCkYLrZCfY1RJa6krlj/OpQQlbr2Bw3RTP4?=
 =?us-ascii?Q?Q7BwERASqLvWRV4yvO968p119CcFxU05wynfm2647w/q7R0EetLLzSriline?=
 =?us-ascii?Q?hHfjwZz4GUrg8e1u+VXXEBRgFrVeXtcaF1VsD6o+0fVyyxWux6Rrh0+ZdP8T?=
 =?us-ascii?Q?5ctyfnq6mpVrYFo+H4X+LT2BXFH+rrFvXcyQd23NBaW482nBT7iuSOF3CoFf?=
 =?us-ascii?Q?qc/bMCcwAeygzgn4UFb6cULJztpt5OuR1ht+rfEXStD976lV3GpVrM78f7L+?=
 =?us-ascii?Q?1oiP/H+MpEK754INOMwvUMmYkcY13CP59dM9Ozdt7lIPNdPkPp3LDKubqRMg?=
 =?us-ascii?Q?5UDFxymzrQpJn9ihYuBFwkRTyoHtoppjOEznoojPcBiiYgDqBfzKRmTJuWD0?=
 =?us-ascii?Q?A1dtV6pUhMVPeQYYKiMNRd3jDEUyBR3gsawNadvuuFdswHSt9B64ZUBAtAM7?=
 =?us-ascii?Q?Tl6TGqoal1y9W+K+xUL65vve2tm/3EDR6his4TgacPljXGuuLYOeDNm/ddb1?=
 =?us-ascii?Q?L4jZCbfsct/VWEmy5apfK41uATBj8L2Vtukn3QNm//VyRYcF+o29eOBTwUlW?=
 =?us-ascii?Q?0dmUqqmritmLQue0uR5X5fwLjHaZmRcy3ACnlpA+99Y1WV6tkbWFnH8Rsz9h?=
 =?us-ascii?Q?EGZ3etvFatIubp2ZoV+03TMepvkceerzLqi4hrp9/MPhxwWlWvJnN1etWjdd?=
 =?us-ascii?Q?zt42dVL7mzEShvi9yHRGm7PV4qIEpYH0Xn53ko5tlYpnMEQOUjVsbuni5vah?=
 =?us-ascii?Q?HJ/p33NXUuWIZMtB2s0fNR3kCQD+lJ3FpdfUiHrGrIREidFMOqzhr7it5Pa0?=
 =?us-ascii?Q?YKeBsHrW7v/N1B6bSAx/9t4Ixz5W8bKGhjq88eHDt6T45JKinrXRqjxgZMNc?=
 =?us-ascii?Q?vNBIWJyBK+py0vCz+y9HV5ENWM6nbrUaog0GwroxT2zHMV97QtZaVCyfk1Hz?=
 =?us-ascii?Q?lsa0t2vPumGeCa28yhCnQ5t8EvIDlsh6XfP6HiHUsEOvSLjsLDrt/8Jd01Qm?=
 =?us-ascii?Q?xMug8xJL0zPAO/61cUiG7AZTicFfXV/7xOaoHIt9Xnezh1bYOF+TIKAlfEmN?=
 =?us-ascii?Q?FLZskXISrzYAqbkv8nbK9Y4GkQVZ70IvpSFD1Vf5g1Rc00QvQ8w56SPWcmHd?=
 =?us-ascii?Q?L7woMpp5Xlmq7j5uEMm4zPREZ27ks/F1NBU5K1kRiKK77yKygh5/Yb+dxAbN?=
 =?us-ascii?Q?XXSwjTYhYHlr48ZG8wNL03V0t6Jyb8oTbyg1uk42kaIsjWPfBq3iSfCWwmWY?=
 =?us-ascii?Q?rHiCh/6jSV23gQNlBJZ5finUgS9jJOqBLOl8lExyoGWuZTKM2oj7hkw0W1VK?=
 =?us-ascii?Q?42pmlbM1bzFt6cS6NntB8AcC/+OsNvSE7IBCgvQc0n3HXAeVuRbeedqSbbrz?=
 =?us-ascii?Q?WmZOIVKJU+qaagr0D/PrM6ksZeN31b+9IJA+3nVN8AxUJ0WT4H81MTwr5u41?=
 =?us-ascii?Q?lnwBMwVf+s/8c+nrQJkszbrA63rZ9vMPfq50Q724R1hLTLwkotSwA5znbmrw?=
 =?us-ascii?Q?BLhM61Hh8NfxcIrGkIGptOb99dQ7VK8g5lYfo5RTRPa8XIRHs53YQEqdHuQi?=
 =?us-ascii?Q?rT6zU5YMU8BE3HvbkxK2Z71DMjaNdGoAiPduY139K0vBttGrFlZA04SA82h6?=
 =?us-ascii?Q?sZfXMvG5GqpAIE/uHL5be58VnvBskm4ShEevbw6qqfRLywRkmnBmCjigikic?=
x-ms-exchange-antispam-messagedata-1: PT63lYhGrnDCZg==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 237c9fed-5542-430d-1d4c-08de73a40790
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2026 12:55:47.1638 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WC55sdl4T13cReRQ3UegQ5u4D6YHCGBDSslqXu1IFi8YnfI93m/C58TPEb1xF7gEdw9xohJ/N2/ZLmidqViS3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV4PR11MB9490
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,IA0PR11MB7307.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 27E1018746C
X-Rspamd-Action: no action

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Tuesday, February 24, 2026 1:25 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: Re: [PATCH 4/5] drm/i915/dp_tunnel: Sanitize documentation of
> intel_dp_tunnel_detect()
>=20
> On Tue, Feb 24, 2026 at 04:36:41AM +0200, Murthy, Arun R wrote:
> >
> > > -----Original Message-----
> > > From: Deak, Imre <imre.deak@intel.com>
> > > Sent: Monday, February 23, 2026 10:15 PM
> > > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > > Subject: Re: [PATCH 4/5] drm/i915/dp_tunnel: Sanitize documentation
> > > of
> > > intel_dp_tunnel_detect()
> > >
> > > On Mon, Feb 23, 2026 at 06:12:23PM +0200, Murthy, Arun R wrote:
> > > >
> > > > > -----Original Message-----
> > > > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On
> > > > > Behalf Of Imre Deak
> > > > > Sent: Thursday, February 19, 2026 11:58 PM
> > > > > To: intel-gfx@lists.freedesktop.org;
> > > > > intel-xe@lists.freedesktop.org
> > > > > Subject: [PATCH 4/5] drm/i915/dp_tunnel: Sanitize documentation
> > > > > of
> > > > > intel_dp_tunnel_detect()
> > > > >
> > > > > Clarify the documentation of detect_new_tunnel() return values,
> > > > > including the failure case.
> > > > >
> > > >
> > > > Can this change be merged with the previous patch as the previous
> > > > patch makes this change.
> > >
> > > There is no functional change. This patch merely clarifies the
> > > formatting of the return value documentation and documents the
> > > failure case, which was already possible before this patchset.
> > > Therefore, I think this is a separate change that should be submitted=
 as a
> separate patch.
> > >
> > This change in the return value was introduced in the previous patch,
> > so updating the function header documentation  in the same patch would
> > be better.
>=20
> There is no change in the return value of the function, either in the pre=
vious
> patch or in any other patch of the patchset; the function's return value =
remains
> the same as it was before the patchset, this change only clarifies the fu=
nction
> documentation.
>=20
> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
> > > > Thanks and Regards,
> > > > Arun R Murthy
> > > > -------------------
> > > > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_dp_tunnel.c | 9 ++++++---
> > > > >  1 file changed, 6 insertions(+), 3 deletions(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > > > b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > > > index 5840b92dace19..1c552a7091897 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
> > > > > @@ -241,9 +241,12 @@ static int detect_new_tunnel(struct
> > > > > intel_dp *intel_dp, struct drm_modeset_acqui
> > > > >   * tunnel. If the tunnel's state change requires this - for inst=
ance the
> > > > >   * tunnel's group ID has changed - the tunnel will be dropped
> > > > > and
> > > recreated.
> > > > >   *
> > > > > - * Return 0 in case of success - after any tunnel detected and
> > > > > added to
> > > > > - * @intel_dp - 1 in case the BW on an already existing tunnel
> > > > > has changed in a
> > > > > - * way that requires notifying user space.
> > > > > + * Returns:
> > > > > + * - 0 in case of success - after any tunnel detected and added
> > > > > + to @intel_dp
> > > > > + * - 1 in case the link BW via the new or an already existing
> > > > > + tunnel has
> > > > > changed
> > > > > + *   in a way that requires notifying user space
> > > > > + * - Negative error code, if creating a new tunnel or updating t=
he tunnel
> > > > > + *   state failed
> > > > >   */
> > > > >  int intel_dp_tunnel_detect(struct intel_dp *intel_dp, struct
> > > > > drm_modeset_acquire_ctx *ctx)  {
> > > > > --
> > > > > 2.49.1
> > > >
