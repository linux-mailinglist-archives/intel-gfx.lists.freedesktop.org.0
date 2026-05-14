Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cLVyNfNPBWomUwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 06:30:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 434E353DA8D
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 06:30:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA61610E121;
	Thu, 14 May 2026 04:30:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H6MN+j1G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EC058913D;
 Thu, 14 May 2026 04:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778733040; x=1810269040;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dOJZtXcxRhDQTG2StzGDg825IPqxLxjcrSOTy8QVkM8=;
 b=H6MN+j1GeviJ6iudFjF33fSOTCdroCiyDhUGoR7XTWSFHD68VFziLEyu
 Se0gBvptPzV83rbTOQYPCBg2wkLauCbhVxjitJP4lYu7qYVYxgyAulDZ7
 lxoVZCVivu/SPJHgGZyECBPgZLyxz79MPGZo1jR8khaEH7V7s6hk1aKaN
 xqwNv00pz9R7RrqVE4/VSQNGBxV9AkjtfFhz2y4o7h0byt+RPLG2kencx
 xj3GYo6bR0o5mpl6snFW/65eea+Dj6oM0MKQSByrxWloDnOLvfmmSZ24i
 l9/aUS6BmoyDucMer1KkOFLGNXHFx3wL96gOnmaqvXh55c+xNjQs0cBSr Q==;
X-CSE-ConnectionGUID: Lj8QN+/RRYqR8mlfSVlq6w==
X-CSE-MsgGUID: 3q8LXj1aTuuiYoDf3hTb3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="90246030"
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="90246030"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 21:30:40 -0700
X-CSE-ConnectionGUID: SQYs/5uoS/2X5Tl+JT3utg==
X-CSE-MsgGUID: l3h/JJ3TThiCnpMr9fUJLQ==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 21:30:39 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 21:30:39 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 13 May 2026 21:30:39 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.10) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 13 May 2026 21:30:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GjaRNhsUBwvuh9xuDcRfRR1mHA6UAfkFEkYT1+9CNDMC+JTiw2GPG/F8xtop+3HVKGMYKtwFgF5tN8w3GPVI+ORXxThAurNz46cfYYCAbTi1YybMr8NJlPUAp/LWYhBip7X1cDFE+0IHKiPFYZ30vRC3p/x0Bnx/1noYao3Ng7fPwGzj7m9vqPeyy3cIwj+NHmYxo6Jb8a6G5P1LZQZ3k5C7qMskvXwQFVxyvRodKmfrcdDCvyixBXDJSMONakZ/CZsuSY3vqdt1TvQLDGS3rsarISzQhj2dUIqjkJRgH5WIm8tpSdfhqTt8JctN+WNsXKl/LNR1cK9qRCXCddkHsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dOJZtXcxRhDQTG2StzGDg825IPqxLxjcrSOTy8QVkM8=;
 b=mzRAEi5s0A+18r1/J/vzc1Re4YtfIG/rWHTMq1ws1EM5zlsyW7LW8bB67EhEXPHfhS9789Y6Vfd9mVH+c/yqCeUvJM6qy6j1FtLNPoBnTbJGvlP1yu9FyK/9cOwRrRgpscZgCLruDX1+ZoQZ8rDuvEBYSK4NQtTqDW6h6SRufKPVAIaQwnbR1QdnKaOhpk7c2Htzu/1x4NA2SoBfVM4Z4thE1C3pKtTYDf4TsGwBOkOrxoaDG0A8vrV572xVwlFs1V42EHHtI9/kjyp3qHoR6K15smPNjRVJW7I7ovC9JMDT1cPLSUB93UdkPjiWhscxNp+Mu2iWNvaw+453s4tbfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SA2PR11MB5018.namprd11.prod.outlook.com
 (2603:10b6:806:11a::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.12; Thu, 14 May
 2026 04:30:31 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Thu, 14 May 2026
 04:30:30 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 4/4] drm/i915/psr: Apply SDP on prior scanline workaround
 for NVL
Thread-Topic: [PATCH 4/4] drm/i915/psr: Apply SDP on prior scanline workaround
 for NVL
Thread-Index: AQHczJpv1d/PKgcH7ESM803ciH1dWrYAubMQgAHt4QCACnM64A==
Date: Thu, 14 May 2026 04:30:30 +0000
Message-ID: <DM3PPF208195D8D5A36820E20D40101D239E3072@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260415054000.400070-1-jouni.hogander@intel.com>
 <20260415054000.400070-5-jouni.hogander@intel.com>
 <DM3PPF208195D8D58A9DB70E8251EC20BA3E33F2@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <bf3c2da2e0c7a0b5aef9f91366ca07345af8cb76.camel@intel.com>
In-Reply-To: <bf3c2da2e0c7a0b5aef9f91366ca07345af8cb76.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SA2PR11MB5018:EE_
x-ms-office365-filtering-correlation-id: ace6fc42-0228-4df8-8eba-08deb171884e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|4143699003|38070700021|18002099003|22082099003|56012099003|11063799003;
x-microsoft-antispam-message-info: rVcCyCjh8OWghE9lZx6nfvNJZYKcZy5ZsNg4KQsNyoSqgtnUhwRVoe2q4bR2CZnAFx8vWVOYTHMk6hP8G1s4s31XiRI8hm3HgzAUSYoLab1esFkd17zxZMtTFNYOa4B9191RciSH3APH0whCXofX9EosVNaC2iX1GhAxpVcVGqkXWXM4AZBT38QjzJnTYU/nB0AyGUVJ6SvRd/GcLgFD2vqSXFGqIXQM/xyW+XjoC1wqm9gy2dR+3KQljdLO+zlbSyKrGidY7k9Gt43+xRHYd6JDfFIP5NLIkragpWXSpq/hgbb/jdvDHwoGZXc8iLQsN4cDpTf0irLOF0///xPAc53cs9yXzzfBmYSFHiJ+2FVe9wXMlpXR+r7wFkO5sFf3oX8/aT2v0vaAtT0BUVZFzsuXslj1TwyLbdW3uMVbac2SWWLsSMizcMk1i4vII2M/NEIFesWpjvWn3jrd2od32Vnde5nNKL8k1Vb0l/45OhoLt9fE94hWohrEjO4E95go1+FxFmiqHfqzd9OTcJwaO1tKkLvNLb3bVWPJFrsQwNN1gXQPayCfsYtRwDFptU6nfLt5PAsgTV6xExEaIW+CaxUxi1ExMJ/y3ZNMC5gPvuU3erGJ6P1Ztv5ouRUoylhadtiebCyq7l6YY0ctGSHKr2STJnxvVeAAa665RSpWBqDxSmTB6oXLR5F0FORQFXYrVa3aXcJ1cMeJTcOA/dj6pf7blvGMA/GenAkprH2rJ7HOy7gOBjGWS3kiYL8w87jm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(4143699003)(38070700021)(18002099003)(22082099003)(56012099003)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VmFlOUVITVdWdE0wTnlKWVVGc3hJOGZ6OGs3T0RneXV5Um5jc2xUV3BqZllP?=
 =?utf-8?B?S28wWUcrQTVraHhuK2RhN0ttdVZqcWo3T2FFQXpaeXJCTkllbkpMRjFXMWkx?=
 =?utf-8?B?bk8rbkNwT0p2Ulh3UGdSWTZVUlVtSndiMHB0WlRCbU5mdEdPSTRUTjVjTEVa?=
 =?utf-8?B?bmh5Yjl2b2VvWnh5MWp2R29Qb3VCUFdaaHdocGNrc3pubThrNFRNYWJNQUhy?=
 =?utf-8?B?djhNN3BLOWFjYXdrY2Y1K0FTWFE0UEZpMG1PdUlGM24xUHJ3SnUwL3l2UUVk?=
 =?utf-8?B?SXBHTU1iaHNPTWtxcFlxVDh1bWUzTlVpTE9aM1hLek1QeUZMWVVyNXkxSFFy?=
 =?utf-8?B?ZWRISUFMZU1vbU9GOXI3VTliR1lFMnJQVy9uUG5EWVkzd2pJTXhSTGJaa1lT?=
 =?utf-8?B?V0VSZzZEK25FRWpBVkVyajJ5WnV2MW9GZVJaZm9QMVloZkdXMitwYklYK1Zm?=
 =?utf-8?B?SEpQYm1aZklGeUJUbGRIVVZ6bWNCTmpMS3k1Sk9PbFVlUlpnbDRxa21CeCtW?=
 =?utf-8?B?VVVmQUh5MHcrV3ZnSkEwOGxWQ0NKN29mK3RTdmJIMDVXTHRReGxuRzV3Rm41?=
 =?utf-8?B?eGIvNXhSMXpDVlk1cW5aU3lpd2pzbEFaZUk3UEdhZ0F5Z1dHalExdmlmMjRm?=
 =?utf-8?B?RUg3Ny8yVUU4NE9sM2NqenYyYjhsbVg2RGJGc2VOZFREYU1sOVU1RWdyU0NY?=
 =?utf-8?B?U09MZ0o5Zkd2Q0R1Y3FFZ01CcDFjVHJtVnVCdEdTdlpSL3I1akxRY3B0STcr?=
 =?utf-8?B?djFXWTIyelFuUlB3RC9zUWlrTW1GOW43YS9GU1NaWmU4MjZrYkhiTzAvMHlT?=
 =?utf-8?B?K0tGdDI0dTI1ajk5dXk5ZmZUQk5JbVVMNmtweFgzQ3p1QUx1UXVjMi9pbkhT?=
 =?utf-8?B?WmFncFR4TW5Ec1Vlam5TbkQ5dE9SL2o0U3IvQTRVVWMvMDNTTnJIdTZrZjc4?=
 =?utf-8?B?RDdqdC9oSk9RbXhFR0JPdzdkcGhvZXpvZElpY0pLZDgvR0pjTVF1ZjFkeXhn?=
 =?utf-8?B?d0NkaU1WWjZ0UWxDRXZqQ0V2N1NVTmtZd2ppUW5tTlM3ZmwrRkxRbjJObWo4?=
 =?utf-8?B?alRSRUhuQWJ3c0ozdHlDVVIzSWRLV3Bjd2xoTUhrODMwYStGaHpvMG8wQjRM?=
 =?utf-8?B?RFpQY2d0Vk9aQ1ZNWGJuckw2dFQ1TmRJZkN4enRJR3NVcE1pS202N1ZiUlFs?=
 =?utf-8?B?a1g0K1ZNRExPc3FiU0ljc2tLZHZ4aTRuVGEyWDd5TWtaaHU3UlZkRjdFNVRM?=
 =?utf-8?B?UFhiM3NLeUNyZkFaNWVPTktQODNkbS9RRy8yc0pvcTFyM2QyK3FGbno1dXFT?=
 =?utf-8?B?Sjl5aE5jRXRialhpWEg3c0J0T3d4RW9kOGwvZTcwbEQ2TW9DR0dnSldIcWxr?=
 =?utf-8?B?T25SL0FFR3dvUGdIZTVJTzJlK2pUUldtdjhGclBMR2pGMzNZT3J6TWZsUmdX?=
 =?utf-8?B?K09YcjdRckJwS2p6WHMyM3ZUV1RPd3oyNkpGbWxIS2IrcVllZ3AxT1NjWGtU?=
 =?utf-8?B?YVZWU0JBc251RGV2a2dXcTF2U2RKT3JiTFMxRUpZdGt5eHZSMVYrN2tjVXpn?=
 =?utf-8?B?L0xEekhGUXBuUDBwQU5UL3pEemVDRjFRdEtUeHEvK0NwOW1TdmRiNDQxbkk4?=
 =?utf-8?B?ZWZHbkQ0RTFwekpvMVIzWHJkNHUrMHl5ZDhpNVc2dFZyeG50bkVoK2E3UUUz?=
 =?utf-8?B?WEdoVlpaREFhdDYrMWNXamw3UDJQeVluLzRzQXRlbTdycW9tZ1ZUVDNVWUE5?=
 =?utf-8?B?Rm13WEhMdnJpcFBSeWhTdyswLytGb2xMRE1NMTh6TWJrK3N4ODYrZnY0Rnhn?=
 =?utf-8?B?SmFVZkRpazZnb2hWVHBJd2ZFQTlydklkNWRMVU9GbEhWQmZGSTNsTWhuenJ1?=
 =?utf-8?B?M1pTekNjZXdWcDAvdWVCZmhhQW9sZlA2WG5Ja1FMTmtYOExNaytaNEhCamtE?=
 =?utf-8?B?WVdxeUVNeVd6bXlIbWNsb25ybHJPRnlIdUZyclFYMXNsSjNOWGdWR1dMOTBv?=
 =?utf-8?B?MzFiT24xaFJKUmQ4RTR0TmR2cE1XZzRPSGdyckwxVlFXcHdVMVUycnk0RnVL?=
 =?utf-8?B?NUZWTWpZT0VKQk9QM2hZdFVQYmVMMFA2Z3d2SnkxMEpWamZnNUp6S0syWHBS?=
 =?utf-8?B?cG5FdGdyZVZXbU44WEFYR1VLODJtYUNkTEw1dHNML1hXbC9HcTQwT1pvRUVz?=
 =?utf-8?B?UjRhd3hIdWlzTndvcjY5SmlJNHJLcVZYM0IwYkFNUUl0cjh6bGl3Vi9QeHhH?=
 =?utf-8?B?QVRuK1NBWVJaSkZjMUZpRGhtdFg1aWlSY2hESXlHM2ppeUx2RUtQcTJxZUZt?=
 =?utf-8?B?eFpLS1EvV2x2UUMxQ0VwWjNxaWh6MUZ3VktUU2dWajlqb1UrRGRQUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: E7hLq04PBHKG4zCxoQK0SzfORU4p0XBj8DVEbWnsGQ3p+WIqIxUgxFVDJm/u4lVA8ayYn3Gs5CJRPl5Mjfk14hfEvkFLe9KX/btdmAKu3RwkFhRYWrRjQSVO0DTHHBXwggpzu2PPE0Spt9/lUU/Ko7lUii8t5Gie4XNqxmwWc0Fjmx/eQT9gzHipd7MyE6DSygsqA002Q8sncxfLGPZ9E/7ab/Fl4Tbydcm/1qGif08Qp807wIAYlQ2q3OUItUgK0PB+AzO97iStPSOJr5FHjTJ3XxTg+LIWqzif6jEn7njUu8NTxOsHBbp9+GhW7NOcr/yQ7yPj4tQzi1zpbvG2aA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ace6fc42-0228-4df8-8eba-08deb171884e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2026 04:30:30.8935 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dV0q1yXqNoTKKnBlnY7+glQxaOVltVQJ+mzAhluNEeMOcx0EGypwJIqrlwUWWr6HG/IDqF3x16kqlyBgb0fGoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5018
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
X-Rspamd-Queue-Id: 434E353DA8D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

PiBTdWJqZWN0OiBSZTogW1BBVENIIDQvNF0gZHJtL2k5MTUvcHNyOiBBcHBseSBTRFAgb24gcHJp
b3Igc2NhbmxpbmUgd29ya2Fyb3VuZA0KPiBmb3IgTlZMDQo+IA0KPiBPbiBXZWQsIDIwMjYtMDUt
MDYgYXQgMDc6MjkgKzAwMDAsIEthbmRwYWwsIFN1cmFqIHdyb3RlOg0KPiA+ID4gU3ViamVjdDog
W1BBVENIIDQvNF0gZHJtL2k5MTUvcHNyOiBBcHBseSBTRFAgb24gcHJpb3Igc2NhbmxpbmUNCj4g
PiA+IHdvcmthcm91bmQgZm9yIE5WTA0KDQpUaGlzIG5lZWRzIHRvIGJlIFhlM3ANCj4gPiA+DQo+
ID4gPiBJbiBOVkwgdGhlcmUgaXMgYW4gSFcgb3B0aW1pemF0aW9uIGRvbmUuIFdoZW4gdGhlcmUg
aXMgYW4gU1UNCg0KWGUzcA0KPiA+ID4gdHJpZ2dlcmVkIGluIENhcHR1cmUgc3RhdGUsIExpbmsg
d2lsbCBiZSBrZXB0IE9OIHBvc3QgQ2FwdHVyZSBDUkMNCj4gPiA+IFNEUC4gQmVmb3JlIHZhbGlk
IFNVIHBpeGVscyBJbnRlbCBzb3VyY2Ugd2lsbCB0cmFuc21pdCBkdW1teSBwaXhlbHMuDQo+ID4g
PiBTb21lIFRDT05TIGFyZSBpbXByb3Blcmx5IGNvbnNpZGVyaW5nIHRoZXNlIGR1bW15IHBpeGVs
cyBhcyBhIHZhbGlkDQo+ID4gPiBwaXhlbCBkYXRhLiBQcmlvciBOVkwgbGluayB3YXMgd2FzIHR1
cm5lZCBvZiBldmVuIGlmIHRoZXJlIHdhcyBTVQ0KDQpYZTNwDQoNCj4gPiA+IHRyaWdnZXJlZCBp
biBDYXB0dXJlIHN0YXRlIGFuZCBubyBkdW1teSBwaXhlbHMNCj4gPg0KPiA+ICpvZmYNCj4gPiAq
Y2FwdHVyZQ0KPiA+DQo+ID4gPiB3ZXJlIHRyYW5zbWl0dGVkLiBUaGVzZSBkdW1teSBwaXhlbHMg
YXJlIHByb2JsZW0gb25seSBpZiBTRFAgb24NCj4gPiA+IHByaW9yIHNjYW5saW5lIGlzIHVzZWQg
YW5kIEVhcmx5IFRyYW5zcG9ydCBpcyBub3QgaW4gdXNlLiBUaGUNCj4gPiA+IHdvcmthcm91bmQg
aXMgdG8gc3RhcnQgU1UgYXJlYSBhbHdheXMgYXQgc2NhbmxpbmUgMC4NCj4gPiA+DQo+ID4gPiBC
c3BlYzogNzQ3NDEsIDc5NDgyDQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNSArKysrKw0KPiA+ID4gwqAxIGZpbGUg
Y2hhbmdlZCwgNSBpbnNlcnRpb25zKCspDQo+ID4gPg0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gaW5kZXggMzQxMTg2NjIyZWQ0Li4y
ODY2OGZlZDgzNDcgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+ID4gPiBAQCAtMjkxMCw2ICsyOTEwLDExIEBAIGludGVsX3Bzcl9hcHBs
eV9zdV9hcmVhX3dvcmthcm91bmRzKHN0cnVjdA0KPiA+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkNCj4gPiA+IMKgCcKgwqDCoCBjcnRjX3N0YXRlLT5zcGxpdHRlci5lbmFibGUpDQo+
ID4gPiDCoAkJY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVhLnkxID0gMDsNCj4gPiA+DQo+ID4gPiAr
CS8qIFdhXzE2MDI5MDI0MDg4ICovDQo+ID4gPiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+
PSAzNSAmJiBjcnRjX3N0YXRlLQ0KPiA+ID4gPiByZXFfcHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmUg
JiYNCj4gPiA+ICsJwqDCoMKgICFjcnRjX3N0YXRlLT5lbmFibGVfcHNyMl9zdV9yZWdpb25fZXQp
DQoNCk1heWJlIGluc3RlYWQgb2YgY2hlY2tpbmcgRElTUExBWV9WRVIgaGVyZSB3ZSBzaG91bGQg
aGF2ZSBpbnRlbF9kaXNwbGF5X25lZWRfd2EoZGlzcGxheSwgMTYwMjkwMjQwODgpIGFkZGVkIGlu
IGludGVsX2Rpc3BsYXlfd2EuYyBzaW5jZSB3ZSBhcmUgdHJ5aW5nIHRvIGNvbnNvbGlkYXRlIGFs
bCBXQSdzIGluIG9uZSBwbGFjZS4NCg0KPiA+ID4gKwkJY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVh
LnkxID0gMDsNCj4gPg0KPiA+IEkgYW0gYSBsaXR0bGUgY29uZnVzZWQgYXMgdG8gd2hhdCB0aGUg
V0EgaXMgYXNraW5nIGZyb20gdXMgQWNjb3JkaW5nDQo+ID4gdG8gQnNwZWMgIlNlbGVjdGl2ZSBV
cGRhdGUgQ29uc2lkZXJhdGlvbnMgV2hlbiBleGl0aW5nIHRoZSBDYXB0dXJlDQo+ID4gZnJhbWUs
IGlmIHRoZXJlIGlzIGFuIFNVIGF2YWlsYWJsZSwgdGhlIFBTUjIgZnVuY3Rpb24gd2lsbCBrZWVw
IHRoZQ0KPiA+IG1haW4gbGluayBhd2FrZSB1bnRpbCB0aGUgU1UgaGFzIGJlZW4gc2VudCB0byB0
aGUgUGFuZWwuwqAgU29tZSBQYW5lbHMNCj4gPiBtYXkgaGF2ZSBhIHByb2JsZW0gd2l0aCB0aGlz
IGJlaGF2aW9yIHdoaWNoIHdpbGwgcmVxdWlyZSB0aGUgRHJpdmVyIHRvDQo+ID4gZG8gb25lIG9m
IHRoZSBmb2xsb3dpbmcgKGluIG9yZGVyIG9mDQo+ID4gcHJpb3JpdHkpOg0KPiA+DQo+ID4gU2V0
IDB4M0YwIERQQ0QgdG8gMHgyIHdoaWNoIG1lYW5zIHRoZSBUQ09OIGhhcyBubyByZXN0cmljdGlv
biBvZg0KPiA+IDEwMG5zZWMgYmV0d2VlbiBWU0MgU0RQIHRvIFNVIHN0YXJ0Lg0KPiA+IElmIGFi
b3ZlIGNhbm5vdCBiZSBzdXBwb3J0ZWQgcGx1cyB0aGUgVENPTiB2ZW5kb3IgY2FuIHN1cHBvcnQg
ZWFybHkNCj4gPiB0cmFuc3BvcnQsIHRoZW4gZW5hYmxlIGVhcmx5IHRyYW5zcG9ydC4NCj4gPiBJ
ZiBuZWl0aGVyIG9mICMxIGFuZCAjMiBjYW4gYmUgZG9uZSBmcm9tIFRDT04sIGl0IHdpbGwgYmUg
YSBjdXN0b20gV0ENCj4gPiBpbiBkcml2ZXIgdG8gYWx3YXlzIHN0YXJ0IFNVIGF0IHNjYW5saW5l
IDAgKHRoaXMgd2lsbCBjb21lIGFzIGEgcG93ZXINCj4gPiBwZW5hbHR5KS4NCj4gPiAiDQo+ID4N
Cj4gPiBIZXJlIGl0IHNheXMgaXRzIGRyaXZlcidzIHJlc3BvbnNpYmlsaXR5IHRvIHNldCAweDNG
MCBEUENEIChJIGRvbid0DQo+ID4gc2VlIHRoYXQgaGFwcGVpbmluZyBhbnl3aGVyZSnCoCBidXQg
dGhlbiBhbGwgd2UgZG8gaXMganVzdCByZWFkIHRoaXMNCj4gPiBEUENEIGFuZCBkZWNpZGUgaWYg
Y3J0Y19zdGF0ZS0NCj4gPiA+IHJlcV9wc3IyX3NkcF9wcmlvcl9zY2FubGluZSdzIHZhbHVlIC5J
cyB0aGF0IHNvbWUgc29ydCBvZiB0eXBvIG9yIGFtDQo+ID4gPiBJIG1pc3Npbmcgc29tZXRoaW5n
IGhlcmUgPw0KPiANCj4gR2VuZXJhbGx5IHRoaXMgSU5URUxfV0FfUkVHSVNURVIgY2FwcyBpcyBh
IGNhcGFiaWxpdGllcyByZWdpc3RlciBhbmQgc3VwcG9zZWQNCj4gdG8gYmUgcmVhZCBvbmx5IGZv
ciBkcml2ZXIuIFRvIG15IHVuZGVyc3RhbmRpbmcgd2UgYXJlIG5vdCBzdXBwb3NlZCB0byB3cml0
ZQ0KPiBhbnl0aGluZyB0aGVyZS4gQW55d2F5cyBJIHdpbGwgYXNrIGZvciBjbGFyaWZpY2F0aW9u
IGluIEJzcGVjIGp1c3QgdG8gYmUgc3VyZSBhbmQNCj4gdG8gZ2V0IEJzcGVjIGNvcnJlY3RlZCBv
biB0aGlzLg0KDQpOb3QgdGhhdCB0aGlzIGhhcyBiZWVuIGNsZWFyZWQgdXAgaW50ZXJuYWxseSB3
aXRoIEhXIHRlYW0gb2theSB3aXRoIHRoZSBjaGFuZ2UuDQoNClJlc3QgTEdUTQ0KUmVnYXJkcywN
ClN1cmFqIEthbmRwYWwNCg0KDQo+IA0KPiBCUiwNCj4gSm91bmkgSMO2Z2FuZGVyDQo+IA0KPiA+
DQo+ID4gUmVnYXJkcywNCj4gPiBTdXJhaiBLYW5kcGFsDQo+ID4NCj4gPiA+ICsNCj4gPiA+IMKg
CS8qIFdhIDE0MDE5ODM0ODM2ICovDQo+ID4gPiDCoAlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkg
PT0gMzApDQo+ID4gPiDCoAkJaW50ZWxfcHNyX2FwcGx5X3ByX2xpbmtfb25fc3Vfd2EoY3J0Y19z
dGF0ZSk7DQo+ID4gPiAtLQ0KPiA+ID4gMi40My4wDQo+ID4NCg0K
