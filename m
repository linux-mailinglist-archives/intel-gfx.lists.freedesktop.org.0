Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kD9ZDhgohGlU0AMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 06:18:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EAAFEEAB2
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 06:18:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 471EC10E7B9;
	Thu,  5 Feb 2026 05:18:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AMaQJFk1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82F0E10E1C5;
 Thu,  5 Feb 2026 05:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770268690; x=1801804690;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BquAXS43BdQavCbxRj9ZAHaunQy27h/pdVfxDDDqpTc=;
 b=AMaQJFk1pNAAmQwQiOhRLOVOwOsD3S6wBOo8cztSfv+s0nrZeZWx6U76
 Etp2dl7Uiks/ouCpHghKtRjYgRwWHNBGiSh+uTJsh3B+RaOrxcz7mZviW
 4h5uiVq11vtgQlCHkXd/ByvbSuY8lYKcnd/hQAK7F0zarjt2YbN0z5f11
 lQnJ0e6cli5a87IRb4uDxgfdWdo2bHzNY2vuaXe5LDhKfS9l9Aq/aXwuq
 INm12sZ6v3G3vYSuK7ywxnlV7aNo1Ix6WmH7TPosEnA1gFhhkEGjlM7CZ
 V6VcfjTSZbUaGzNIFAmXyvmXoOvten9dMDmB9gNjKftV30gJgzTx6M9wE A==;
X-CSE-ConnectionGUID: Sx1Ti8ZoQVWnlSg63ASAjA==
X-CSE-MsgGUID: L8wb5EbbQueapeHv7mSGqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="74065085"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="74065085"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 21:18:10 -0800
X-CSE-ConnectionGUID: 7UG7ovK2REiGHKSfB5/MTg==
X-CSE-MsgGUID: Z4byTxZOS32+m+1MKKFLJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="210368233"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 21:18:10 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 21:18:09 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 4 Feb 2026 21:18:09 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.7) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 21:18:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T+fo9mFI4x6u4ELMvpnvzIEnIQHD6PN6Q9mc24w+UbAW0spfVGTFX0yb+Lu0qbENwuO0eBxQhGdi/r02xXlFAAzx99bWlOWgJ7H+Wep5GzciuxVU+xV05rq9mXnbhL+Kdd54LNQ55vNbUND5SpCaQ42uqpctk0qigSE7KuHfZHu1FLmMC1V54tllcu+v83kYrJY0HU3KrtIg/zynorfwIou79W/jc5w3WY82FlgYenRYfxkMg9w3T8uVNy6cXh4zW/0fnWTJNQ266e6+gieJFHJZjkz4LpS5ceY5jt7j1CBKabO1EuxvATR2UN5fWXdNlJt2LJUeOJpmrFjXdmzsQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+n32noVzq4s56IrnXNCHbv5GtYKb3va7e3RgMOlG/DY=;
 b=WjwGfZbHv5yCPVq/TQaoIQeXZVfScZ6wFfMqDpCXcQe5lq4L03Vx1MW7Kd3CgN69nHr7L+LMvcHsDlCrlTltVkxW5AGEuva1zfgwpRcvO31fW+loZh+9KtRogd1DAbnbIlnOlUNtxlXpSB8IwymtONG8afcVujg+FxDZf3zIdwmIJ5g1hYiOY9NZb3VLFcT2TTfwWuzNYNbCm3w+BIQfE4FC1AzT4Hw3GmwM7UNYsJzyH0stLkyqSU7fPiAgrwHfgDeZyvfiobhqjMK6Qg9gumB4NS0XaKm+w0wEN+F4kHPm4Lr7xF8MtKqMO69MNKzlexPQKadiAoiPhhU9FisiFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by LV8PR11MB8772.namprd11.prod.outlook.com
 (2603:10b6:408:200::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Thu, 5 Feb
 2026 05:18:01 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9564.016; Thu, 5 Feb 2026
 05:18:00 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH v2 01/10] drm/i915/cmtg: enable cmtg LNL onwards
Thread-Topic: [PATCH v2 01/10] drm/i915/cmtg: enable cmtg LNL onwards
Thread-Index: AQHclRiNrvpaZOhdGES1y+2KDsY29LVzjGPw
Date: Thu, 5 Feb 2026 05:18:00 +0000
Message-ID: <DM3PPF208195D8D827F4A684F2F77BFDA37E399A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260203134407.2823406-1-animesh.manna@intel.com>
 <20260203134407.2823406-2-animesh.manna@intel.com>
In-Reply-To: <20260203134407.2823406-2-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|LV8PR11MB8772:EE_
x-ms-office365-filtering-correlation-id: d34eb30d-c38c-4859-36a2-08de6475ee61
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?OVDB4eWzx4tMyjLj83gXsRS5tc2owgkel083d4kXOAQ5W2qAGbSd1nXI1YK3?=
 =?us-ascii?Q?76ft0QEfszOwsI2CD6HdCzBXQE0R8c4QTz56UueDme4LJcV/ePb2xEQGZHv2?=
 =?us-ascii?Q?9Dn+Hh02kHPYm3ym9POpEbH1Z5cmP+Wmolv5HltKG1u8RYTSILscruoqrS+j?=
 =?us-ascii?Q?luAySjrb86kyrO2e8lxlxicOyjpNJvqlcTw3IZW/YnAh6NMpSmavvqxu5smY?=
 =?us-ascii?Q?J/75YTpM5WtMCaxRqCHu3I7UPBeEaNn86y36QmuhGLTDHkNDkyC+NQOFRjy3?=
 =?us-ascii?Q?uSaWy/pywqGMf0/i0ErVjBMMjvfijFJbX5a4QBaFEUN+CIH4VeyAUBUZahov?=
 =?us-ascii?Q?GObn314x3E6fnaMfIW2u659A+Lx9Sr17kPTLJStBDdVIrY7/oonIegriVIvx?=
 =?us-ascii?Q?IeKjHASkuW1NRNXuNHDVN9CMkab85dA3iSp3OjrdT9BozaodTDgzUYAm6/TK?=
 =?us-ascii?Q?E0NNFi72MwQV6NcHY6OZZBmsxLw9WPUBCq/RovFvkP6xXq4V0eKmlgg+eVJg?=
 =?us-ascii?Q?OTPUI0Udh6d3mjs6Yv7yBmagzoTr32konAFW3uLBHgvaOXB2wvog2ywJym2O?=
 =?us-ascii?Q?zaFSgNgJwbJPhW4Yc4oWddbRuT2k2xZqPgonMpp6tkfMQr6pSWI9hrnl4ZMV?=
 =?us-ascii?Q?+/xCWh95rsQdpRzpyiIo+NHhnCuCwizZiZTVGjvSR6y6SFPqvM8JzIaREsMP?=
 =?us-ascii?Q?LHdN59GgjuD7wc22Q/ocFucUA6+zZ1vJlpp6n1bCjRJ+74RIJyrfRymQX0Rp?=
 =?us-ascii?Q?j3K/pUvOENVBNUWwQM8yd7fE4xhHlh5Jae7g441DDlYsPKGrJtmiC0Xr7P7I?=
 =?us-ascii?Q?iRvlgU3Y9ggyWxlKJPkrOt98UwC2Jx4xZZdBTK+2tXigMPiRf6Tw2dVlGToQ?=
 =?us-ascii?Q?NakYLoc2v78PI4MqbtnhQDrnNh78btdZPln8/T9HdU6s885BhAPKjqp1V7WG?=
 =?us-ascii?Q?7pQyMsn/VCp4RZ88qTOvVNBPTy651aRwGS7C89p/2Ri5mW1wWjhthHmc9gnZ?=
 =?us-ascii?Q?00IAooYMk7FCGUI9dCVJ/Hv8U+DwPuMpBvjjTQwugnN9b13FaCnL5h0VaX2l?=
 =?us-ascii?Q?qjgKcnr3qPpNIQqrsCo6xa6oN6a0r1F2Bj5ufInlfsVjqod0HVypzm5GUvOO?=
 =?us-ascii?Q?a5sTeF1or0No12t1kDZftlevKq00ZPYSu3fo8b+9tZE4yXjUe9sKOiPNm0gQ?=
 =?us-ascii?Q?CwSMWznRC4CeMjPNWVNj4Km14w6ZHnO1Q1mQOi37XjiMLqQ4FCrUlj2HserA?=
 =?us-ascii?Q?DmnvwxXLYPZ5T/VtBZdg4k3rD5lHeooP9UwoMqzoh81IcZP5v7DK4+Bb/bGO?=
 =?us-ascii?Q?L/WQVT+KVU77LNYjAMMqE7p3zRjfYqJWpDk/n4TG8rd9HDVKvS4KjIWk9ZA9?=
 =?us-ascii?Q?d00dl+uwQySUINpPrSClnVXieA0vHqSQcg1Oe+TDaPs4z4RByOCBHKK3vZQd?=
 =?us-ascii?Q?apo2qe1+L3aFlQzZD7N7OjkMwBZaqvKiMyHVACpWrlY6NhTbbHKcTp3oqP5R?=
 =?us-ascii?Q?NdeVrenWLTt57brQS7DC5PGP1qHhhB3g0FTso6JWmXUILO7A4IpNxx/MGhQL?=
 =?us-ascii?Q?ZeFLj2RQwbv/RLyxq0TkZProai26MDOkntyvrMfwfKPu37luMd0z/ZL9afYM?=
 =?us-ascii?Q?hCNxHXUTKgw+jgA4SH5yJME=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ukXjSx5/I8ZWKXg/Q9wTLJAoBkrLQz2P1mT498+0hnek20GyVnRn+vvelAWb?=
 =?us-ascii?Q?MedVk+O8bf/qmj5VvG9CiIaVVK4pXtFbeozk6j/xtfeKPXVRIODOj8wwatAd?=
 =?us-ascii?Q?7mZ8QgF0jQoRqNxJa22n2Gr4SfLQwCeq/V3K+IriOoxApjIif5HAFDQyqkbI?=
 =?us-ascii?Q?2/X82npExgJK6W+XcrZazFWKy/sa6TmIlheNIt68T3YEK+UI7GJmLDtrzJeW?=
 =?us-ascii?Q?bU9PJw10RngTYqrJEJSt5YGsbqWbEcs8POQsXso6i0Goxy8JvndVfhOPOuAR?=
 =?us-ascii?Q?ZDdpl7k936aIf+0smOv3w1pbXxzPUzqL0/WVt1ugYZPruAhqo4ZySO2hVdAP?=
 =?us-ascii?Q?dc9l66LWYtZkx6+itPafzixizRJeGEgRY7URBeulMRHLWMbrz5wGTCKGcLeU?=
 =?us-ascii?Q?FGKPCYUG+uB+scBR/XjFNDCaxtZDzzGzfsjyjJcWeyFMjEoknSVp2E+Bsp/Y?=
 =?us-ascii?Q?TcQpV8Kwbe3UmOTEA9GvOJQheEjAHUg7mPIUf7zrYpaVK1H1vQOrA+/AAvTE?=
 =?us-ascii?Q?qQb218/qrk+UUMxA5v26aZQA9nCuS9mkt1DyGZCyvkcYqlDUxyz5Z4B0/G+X?=
 =?us-ascii?Q?8FZhcK67CmZeyYy8wJ2iPmvCqiQJcTgxJCCSShl/slzuLvSR/7vQgMKN2TJ2?=
 =?us-ascii?Q?gKKn2wt+ovJ4v3NWNadxRyUJC2TBkFs1qfOn9muleyO1+u/8sN54vpZo/aYm?=
 =?us-ascii?Q?EQJFIVo8DlVUTzIgC/qLMglbG+zmFJ1fvvnXrptSZIvKu+OtsqWzE6DoNljA?=
 =?us-ascii?Q?eGkeL1TuYxbbiRjWi/cvRkeudpzc3y1PSxlMJBVjzKHpOqlcvQGV/cn7ilPx?=
 =?us-ascii?Q?IHU7CX2JFr37txmIyaoMPmr60itZOTzgbCvb6KouvAdfwIag6YIAU2Ip0MGz?=
 =?us-ascii?Q?+mcyr++I561PEF/EBQYEFvBf1GNaxL5aEnzRH0yqqIzBx1TR1/Zco6+A1Kgc?=
 =?us-ascii?Q?qLJuurRVgzh8DCxn4rY9nN6r+C8HToBvjeYVTGYXuiSHRnx6huoUFJVNrE3W?=
 =?us-ascii?Q?0ixL2SR3ibCWf0o3APzvvWDSQwd3DRPxoO9f/1DvauzrxhPyY1ywKGD77Grs?=
 =?us-ascii?Q?GEezlfmRumiKdLBy6fDjh0+I01b7YKrdHQO8PeTfcK9+Pb+zdjm5XDf2PFkU?=
 =?us-ascii?Q?V1cZSF7tcOvDLM9bJDJLig+02VLY0JHHOHpOsrGkpjIfqcCQDmBX+09dGL2O?=
 =?us-ascii?Q?pR5Tclnf3SPqR9B3yJpv1EFYWcK1ScfKCPndVUo3q9dBDsL/tUgXHQS6LI1o?=
 =?us-ascii?Q?Wxs8jyTNnzQS5PeB2OZjdejY2FChXcVZDbVtPXh/6F3hBD1kuHux92OjDqG3?=
 =?us-ascii?Q?44JN30vEePYc1vbBHcrb0+h37O6dF7JDcHsqizzRiAyi9b1lEKi4RymFsQnP?=
 =?us-ascii?Q?hxl2ZqLCHz0uFzQh3LuqWTOqatl+ybx97cUje6Q9mdwS2Y8f4Zq9eXRCFGVR?=
 =?us-ascii?Q?m2BDv9ql/y0lrMsbetCqqyr91joloMfMlfO67Yfvbofoh2rBKZqHCssG9c5D?=
 =?us-ascii?Q?++Y4GX4IJO87qwXh5sMARONJBXTMi3/BKXQVWE1+c+XvnVK/4P1/Qu9T/y4v?=
 =?us-ascii?Q?FWRztF0Q/ymmY0X7JdApgjHZDGqcDWunf2J4KoxXmci70xaD92ADTiPmIl2t?=
 =?us-ascii?Q?1VSMIfg6dsHjwfS1vZMFCl7Q1j7nzWeCkCdSXmEE+Id0GKZCHDECQy6aTe5v?=
 =?us-ascii?Q?HtqYoJBe0K8IdR1E1AcTrQg84FYyRWV4EJjcIIkmABZStRAhIbgf6/0gpi15?=
 =?us-ascii?Q?TpC773X3EQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d34eb30d-c38c-4859-36a2-08de6475ee61
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2026 05:18:00.6182 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aETLCQccL2PSFTN+Gz6WMohrUvmBZP6w/n17FLfyWrveegiQp1z50lWrIvPGxJLJkYhcBU6jgm1SxnXUeJJmIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8772
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 6EAAFEEAB2
X-Rspamd-Action: no action

> Subject: [PATCH v2 01/10] drm/i915/cmtg: enable cmtg LNL onwards
>=20
> Introduce a flag for cmtg. LNL onwards CMTG support will be added.
> Set the flag as per DISPLAY_VER() check.
>=20

Use Capitalized versions of acronyms unless unavoidable(if you mention it a=
s a part of a function)
both in commit subject and message, this review stands for all patch in ser=
ies it should be *CMTG

Also please Bspec references to registers, sequences on all patches this ma=
kes life very easy to review
This is also a review for all the patches in the series

> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 4 ++++
>  drivers/gpu/drm/i915/display/intel_dp.c            | 4 ++++
>  2 files changed, 8 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index e6298279dc89..1081615a14fb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1569,6 +1569,10 @@ struct intel_crtc {  #endif
>=20
>  	bool vblank_psr_notify;
> +
> +	struct {
> +		bool enable;
> +	} cmtg;
>  };
>=20
>  struct intel_plane_error {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index e2fd01d1a1e4..ecf8ed0c0265 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3445,6 +3445,7 @@ intel_dp_compute_config(struct intel_encoder
> *encoder,
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	const struct drm_display_mode *fixed_mode;
>  	struct intel_connector *connector =3D intel_dp->attached_connector;
> +	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>  	int ret =3D 0, link_bpp_x16;
>=20
>  	fixed_mode =3D intel_panel_fixed_mode(connector, adjusted_mode);
> @@ -3549,6 +3550,9 @@ intel_dp_compute_config(struct intel_encoder
> *encoder,
>  	intel_dp_compute_vsc_sdp(intel_dp, pipe_config, conn_state);
>  	intel_dp_compute_hdr_metadata_infoframe_sdp(intel_dp,
> pipe_config, conn_state);
>=20
> +	if (DISPLAY_VER(display) >=3D 15 && intel_dp_is_edp(intel_dp))
> +		crtc->cmtg.enable =3D true;

Should be >=3D 20 since LNL's version was 20.
Also I don't see a point of having this as a variable in intel_crtc this ca=
n be checked as a macro or a function
Maybe you have to use intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP) ins=
tead on intel_dp_is_edp but it should be better option
According to me.

Regards,
Suraj Kandpal

> +
>  	return intel_dp_tunnel_atomic_compute_stream_bw(state, intel_dp,
> connector,
>  							pipe_config);
>  }
> --
> 2.29.0

