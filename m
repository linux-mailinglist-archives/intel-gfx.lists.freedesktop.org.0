Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id lwopDMFF1ml+DAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 14:10:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB8E3BBCC1
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 14:10:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CF3E10E62F;
	Wed,  8 Apr 2026 12:10:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VD5AbaTB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D17D810E62B;
 Wed,  8 Apr 2026 12:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775650238; x=1807186238;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=iNFpeJIa+2A18jt6wC2sJOXBT4qNPsdPPLAdUpWy8MM=;
 b=VD5AbaTBZiinSV9FWsbF+i6VG7ygMjYPYvYKmmXuE+ofSTAAgJTSYihk
 VbHJqCUlUOJZwfV9yXpja64yV4MtYJddPLPO3vPw8mFhnEaNHi+y+erNY
 /JPbovBSG8jaLIfwpQK+4BR5IcIKB1QOCBPcqDmlNd/tIycd4VSmp+Mjx
 qJfoaAsWsgElwXditzXSYhYVwzn7T0EiMageYHa7RlB7mzUVzeefUWIBY
 gnwo8jItIUNmerU5lzFuinyMBeQn8I5mKdPzFUwiJuhnptRt1qpkJHNWT
 pXzYTPewCEm/LgaQwmqd2LZdqDrkkyHa3NMDuKmq6uFJ3ZlEF2ekj6YJU Q==;
X-CSE-ConnectionGUID: ZuLY7lUCQO+GytMjmv/WfA==
X-CSE-MsgGUID: UmxuXz60S1+89bF65qpPWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="79221882"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="79221882"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 05:10:37 -0700
X-CSE-ConnectionGUID: XI33tsfSS8CGhVUW/lmfDQ==
X-CSE-MsgGUID: E9x+2iwfTluqj58Vbi3cpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="233331196"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 05:10:37 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 05:10:36 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 05:10:36 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.23) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 05:10:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jV0YlyfeVVA2mSsXCsS5qKFyrrr/SpvhRUPdnxUODP8RuIxUx4FdaOqDl1UpoJ4GXQchrEGp0MFCUo+MPoNScEF3S3gCLrSUyxJ2FyxYrn7FW+/9QqAzmp8WeBq3H54hWDMUyv7gL9lFHLvLQqqAorjEy1MX4US4s2MRhd8bQzoDODarPQFr2RdALcgPkOKrhRd0felz6Tkwa4wF7oxdqN8y5/tfxFyPYbcfhf5OYC4suLOASYYGTgQCTi8bk7QXn1oOgmmvE5XW1aoh27Z++6wBJH2R0+bt/eQTvYGyOjj7vEw8/Be41ICaNzWZTx1mHmqv+DOK2h1fGZpYiUvuKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iNFpeJIa+2A18jt6wC2sJOXBT4qNPsdPPLAdUpWy8MM=;
 b=E8H8+ZEV41I/YgtXqux6XeH0U46+Dttl2M0t7Y4KLYUtKcjdQOWSSbINzPGTFPweiC5irWfXdYUwzhTnjLBSWcCaVUeYXBbzJWSafNVRFyubghu1oCn2ef5h2pqAgUVfchN1Hc9ayj0NYpG1RgQ+QUozlSB5G4VulTXNVGmsuXbM/8IgbKbY7LhcNnJMzQ7pkN0iQcvPUf3J6Ucb6+STR/23NKXAZN3liSDEvT4OmK+Tb3Cw5VbbqKLytBCky1yB+Mtrs0gU/eoWBwcgdFaOvPMauBk1QzVz6lL5IqY4AaguTSv96kdmMELkuXw8azyZ784Ks236FS/wiOasDSjDuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by MW3PR11MB4618.namprd11.prod.outlook.com (2603:10b6:303:5f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.21; Wed, 8 Apr
 2026 12:10:33 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%5]) with mapi id 15.20.9769.018; Wed, 8 Apr 2026
 12:10:33 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 9/9] drm/i915/wm: Allow SAGV with multiple pipes on pre-icl
Thread-Topic: [PATCH 9/9] drm/i915/wm: Allow SAGV with multiple pipes on
 pre-icl
Thread-Index: AQHcu5Z6oGBZ2vMVKUa7t8XthIZA7bXVKjaA
Date: Wed, 8 Apr 2026 12:10:33 +0000
Message-ID: <bc2ec020b57fc3a68dc00862aabdab6458901914.camel@intel.com>
References: <20260324134843.2364-1-ville.syrjala@linux.intel.com>
 <20260324134843.2364-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20260324134843.2364-10-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|MW3PR11MB4618:EE_
x-ms-office365-filtering-correlation-id: f17ef7e2-c064-41a8-fd93-08de9567d5b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700021|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: UlzmdRExXpW/U9paQQTzdmI4/5+SbSwg0G2WNX13lP8Ep2K9n2DD3kVEPPRMzXDx4DuYB8MSmUTUH0/D6sUdr9Vl+dDHeRlieKGDFBPJf0RpL/rKvdygM9J3wcKr1ymXjqjDR7er9UxkICH0Dx6+V9Xv9+gfQzONIDOWYoB+3dDUWC4yu7N89taenBG3lh5rC2ShVO8+orXczfOj14LMuOEUc4Obwp/F+Fi8ehnUhGmj4b5FVHzRqNnifdCed9WRad0z6cezZdV9aVcm1qNQA0ymeGJ2t9uds34kw5djm7DxeRoGkcUGD/Y/CreMpIKd1Ekruh1zXTAbA2W3JDMCKrchRnDwqmVB01bDZxT8vTDVZpOM2gr786NvpZ+MVBCybtQIy67mtqNDvcCKkqpvNaf5wIUFBr77Ldn/lT1poG6bMCUENc5DHzeJFmdywEoqhXEGm1Tv0gEGirV5X1cCKGBx1ZydZePZmMp9m1v0YCPYEHMGuEz2lwmaEfLCORXM1bAtD/dVs6hPRBN/2VWt5I5M6vqe0AUEmUr1vmOIqIZOb5efKXfkB/69MDLnEfxIUpcWGYxczq+xyf5726tc0X1i+63u0gW+vhSb9xLOZrwciUPCySWeR1Qh/cUHMnzvGFsZzeC5oHYVQkANyVJhfPDJBAEvKGPlRo1RbdlYxBSooeNsj5FGn8e8X6OKnx13hBf/MV9CH8wqHPXOCwwHy66bO7exD1UqitsgxHFysy/OzjuYde8sGywRNAitZ17FWNvG6H4qcxeLng8o5qgyVSD1kR/qIpq6Gc8ftiWWUIM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700021)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eTAxSzVDRWlUMyt6WW0wQXBjV1ljc3cydlU4NC9TMGFrWllRcTJvNHFZRnRu?=
 =?utf-8?B?aWRIbVAwNXBZVDl3Sy9ob25XQTBCdEo4Y3VzWUVZK1JhVEMzc2h2QmRHUTFx?=
 =?utf-8?B?VzFRaWdpNGF4MlJSaG5EaE5ZRXhDeW5Qd2E0ZGUwbDZBMndjZnM0U1FkMVU2?=
 =?utf-8?B?ZjQ4T2pJdmxpdTBZWUZjVU1kTkJzQ2VUdmhLdkxVbkxxTnVzUXZENlJyclhI?=
 =?utf-8?B?WGloMWxZUWJQL1c5K3NYZDJ5cXQrZ25Edk1JRVRKWEMvMG9jOWt0ZmIwTUh6?=
 =?utf-8?B?eDIrQldRSDl3aWYzRjFWSkcyWHJvVWdTbVBZSXJIcGFZNllHTk50RHhLRzVF?=
 =?utf-8?B?ZXdob2pERmlGeG9GN0t4Yk11U0g5OWdxb1VtcGVZSU5RRWFqTmlzYzIvNVdH?=
 =?utf-8?B?WktzOHM2QjFVelZXNEVJYnZPdDZoUDFNVUI5MmFvTC81K244R24rc0FRNnRy?=
 =?utf-8?B?dDExWXBYeXI5cTI0ZDl0cVN6WUtnbW90ajgzRFNmMHNGdXJlYmdRbCtsWEdu?=
 =?utf-8?B?cjlmUWFoN3lhSUdRK2hUVHVBeU1NekxXNGdSZEVnLzdsUDRYT1BwSFE1Vll1?=
 =?utf-8?B?ZnZiU3VSNnozSHhFakhieE9NVHhqd1Z0K1QxS0huUGw2SXp5Y3h5K3JBSEtN?=
 =?utf-8?B?SnNBc2RHZTg5UEtpcmtwMXhJUlVwVTBOQXYrL3RLWjBYSDZJOXdieXpTbkRD?=
 =?utf-8?B?dDBkc0ZnZWJ3N2thL3JkVnFOQnhoWFNyS3ZxU3ZkOTJwOVVOSE1tTXBtOUlJ?=
 =?utf-8?B?ZXZweTIwQ3A0alJCYmtaZHl3V3ZZbSt6SWdSTytJa1A3MkRuRzIzaW0rQ0Vo?=
 =?utf-8?B?UUNML0xTUDFPMFZFOUdmVTVPSVRLeWo0QXBXN0Z0QzlCQzU1YXZLSVZQQzFE?=
 =?utf-8?B?SHB6Q3VsNVhxR3JPY2Y2emNad25aaGFzajlWNkkwL2VOTlNIWC9GL3hZZjFH?=
 =?utf-8?B?ekR1bHgxNk9uZEVvdjZETFJROTdubGFBT0J1MXkyRGk3dS9UUlM1bllSQWdv?=
 =?utf-8?B?ZXIycFNZOVd0UE51djNVWFArMHl2eTFyMDRRUTJmUzNCSjh4MXJ4ZVdhUnNi?=
 =?utf-8?B?eUFrUGR3SmQ5SHAzZ09Cci9EZkxHc1ltelF0WFFTb1pQQmpKbWo4SG9RQXc4?=
 =?utf-8?B?MW9UQlBUQk5haDBqT294MUp3cWl0WG1xZjBRRDJScWF4S1VyS0dublc3Tm5x?=
 =?utf-8?B?NmVYeWUycFoxNHo3TDZDWk1zUDhRQXVmR1hmc2l3UzNFN3ljQ0p0bUJMZHpn?=
 =?utf-8?B?bkZNcXNienhUTkJTbE1OUnlnRng4VXQ0YTd2bkc2ZTFTK2trenJsUWlqa2hM?=
 =?utf-8?B?Yk9tYXVyaW5WT3MzakkxK0pHUHhKRHJncFc2NUR5OWxkaEVOUVRldTdpR25Y?=
 =?utf-8?B?cEQwM2VyVUdPVFBwU0FnbUgzdlBvYzlHVEtYY3I3dyt1ZHJLZXJra0ZNOVhR?=
 =?utf-8?B?ZlpEM1ptMnJQTFVzcVdScGVqWnlENkNMWGF6b3BXNXZsSEoyeklLcFNmY0xR?=
 =?utf-8?B?ellYYlhjU0VERkpYWlFkaW5kRnRJOElNV1k4bnlleU11YWJWS3lEajBteVRP?=
 =?utf-8?B?REFTQ3VMQkFvTVV0TXFPeXByMmxaZG43Ly80VU9DWTBGMVpSZ2RmSXRqZnZM?=
 =?utf-8?B?NWJoOWJKaVJWNTVwTHRWYlBhamhYdTJzdDV1SEhxblZmd2ZQZTBtUEpmMkpX?=
 =?utf-8?B?SlRzUXNTZWxkcFo1a0JJSjI3ZGJraHp1Y1dlL20wUG5mcE16ZTRlOFp5Q2s5?=
 =?utf-8?B?YVpQdUVzL1hLYjc2WFNhYXNlVUhHa1JKcXBCMGtHYWxPSmo4b2NqRFhGNlZC?=
 =?utf-8?B?OEpUc1NBY1JRbm9lN0xiVGhabSt0M2dGeTN2dTN4enBPbDVWY0tDUjUvZ2Vm?=
 =?utf-8?B?OUVxTmpHMm9JZXVZY1FHbWNqUWFmbFZUOTFuR3ZnRDBMQ3gzTjB5UW5TNGNx?=
 =?utf-8?B?VlZXZ2tBYVlCNEJoYWM2Ni9DYW85OE5aRFk1a3o5OWkrb1c4RGl1SzYvSG1w?=
 =?utf-8?B?eXZ3c1VUZ2NGM2FndGc4Z2RIWCtMOTlKSGovOURjZUxtQmUxOE1HK0tRbEtx?=
 =?utf-8?B?Y0R3WVA2NXg2Ui90dEswbW45WE1SdE1UL04wcHAxWDZrZXlSaEdkWllZVU5F?=
 =?utf-8?B?MUc1WHg0VHBpWVFjZ1VtRncrMTJmMXVNbEtQc0dLeTUyb2svQVRiM3JUSTlG?=
 =?utf-8?B?VC91YUdPcGN5S08wekZ1eUNKdEJsTmhwaGlRbENLdWg5QXVYdkhQT05VZ1Z0?=
 =?utf-8?B?OFlQWW9ZMnFMU29SS0xaeDVwUHpHTW1za3VqdWNQWEdWVHZ6ZzNyMEYrendq?=
 =?utf-8?B?b0ptV3RnVlBTUkNYeXpaUWt1Wks0LzdjRFl0ejF2MlNqdDl3M29FVlNSSHUw?=
 =?utf-8?Q?iP2kOlh9c+EZLHxGMdlBJoMhEj1FOME4S4egrw4MQNKHq?=
x-ms-exchange-antispam-messagedata-1: 3glyl9WkH9Bl+Vh3AEFa+i/pTx90S75EBnQ=
Content-Type: text/plain; charset="utf-8"
Content-ID: <203852CEA6DDBF49886D20C783CC1EE4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: fF0XSs8cM+aafs4a8loud7hkwjhyGMKqFeIBS0+GViDGy3ymvkNyKmedwpMmdIzMfHYC1bNsRb0nNsBPqbnAjPksrQJdDYzVyA7AtLbUj1Vb9gDRd01+iMRFa2op/kn9zNMsgebobXe7q0KRvoa8PrNBp/DFue15batKK5EEmArvapZTnjhujoTi7xCwPDqRlH2nuYAda54v0mNH5Nc0aCsr/H8ZuUvfDFWepbZ5UsTEVcCInuJtKoO1TUFXiRFsowRPquKSVHb+9d+iBQkd312blOLVwjG6zj+z53j3QK09oER09WS7DIzfafeh4gaZJS1v3egnw9XO3N/3QzmeYQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f17ef7e2-c064-41a8-fd93-08de9567d5b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2026 12:10:33.2452 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: woVyChVzvNPg0SCOFRKrusoVBj1nPfr1yWUa67WKXvUKCFlc88Zbf85ym78gu+KQ640igL5D4/jA8B9M0DO4niBeEn++A7HYqV+ANt2UM2w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4618
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8DB8E3BBCC1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCAyMDI2LTAzLTI0IGF0IDE1OjQ4ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlcmUgd2FzIG5ldmVyIGFueSBkb2N1bWVudGVkIHJlYXNvbiBmb3IgbGltaXRpbmcg
U0FHViB0bw0KPiBzaW5nbGUgYWN0aXZlIHBpcGUgY29uZmlndXJhdGlvbiBvbiBwcmUtaWNsLiBB
bGxvdyBTQUdWDQo+IHdpdGggbXVsdGlwbGUgYWN0aXZlIHBpcGVzLg0KPiANCj4gQXQgbGVhc3Qg
bXkgQ0ZMIE5VQyBzZWVtcyBoYXBweSB3aXRoIHRoaXMgd2hlbiB1c2luZw0KPiBtdWx0aXBsZSBk
aXNwbGF5cy4gVGhlIG1hY2hpbmUgYWN0dWFsbHkgaGFzIHdvcmtpbmcNCj4gU0FHViBiZWNhdXNl
IHRoZSBtZW1vcnkgY2xvY2sgY2FuIGJlIG9ic2VydmVkIGNoYW5naW5nDQo+IHZpYSBTQV9QRVJG
X1NUQVRVUy9tY2hiYXI6MHg1OTE4Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jIHwgNDAgLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0NCj4gLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgNDAgZGVsZXRpb25zKC0pDQo+IA0KDQpSZXZp
ZXdlZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5j
b20+DQoNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YncuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiBpbmRl
eCAwN2I0NTMxYTQzNzYuLmJmNzY4M2RkY2I2NyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiBAQCAtMjgsOSArMjgsNiBAQCBzdHJ1Y3QgaW50ZWxfYndf
c3RhdGUgew0KPiDCoAkgKi8NCj4gwqAJdTggcGlwZV9zYWd2X3JlamVjdDsNCj4gwqANCj4gLQkv
KiBiaXRtYXNrIG9mIGFjdGl2ZSBwaXBlcyAqLw0KPiAtCXU4IGFjdGl2ZV9waXBlczsNCj4gLQ0K
PiDCoAkvKg0KPiDCoAkgKiBGcm9tIE1UTCBvbndhcmRzLCB0byBsb2NrIGEgUUdWIHBvaW50LCBw
dW5pdCBleHBlY3RzIHRoZQ0KPiBwZWFrIEJXIG9mDQo+IMKgCSAqIHRoZSBzZWxlY3RlZCBRR1Yg
cG9pbnQgYXMgdGhlIHBhcmFtZXRlciBpbiBtdWx0aXBsZXMgb2YNCj4gMTAwTUIvcw0KPiBAQCAt
MTI2NSwzMSArMTI2Miw2IEBAIHN0YXRpYyBpbnQgaW50ZWxfYndfY2hlY2tfZGF0YV9yYXRlKHN0
cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLCBib29sICpjaGFuDQo+IMKgCXJldHVy
biAwOw0KPiDCoH0NCj4gwqANCj4gLXN0YXRpYyBpbnQgaW50ZWxfYndfbW9kZXNldF9jaGVja3Mo
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+IC17DQo+IC0JY29uc3Qgc3RydWN0
IGludGVsX2J3X3N0YXRlICpvbGRfYndfc3RhdGU7DQo+IC0Jc3RydWN0IGludGVsX2J3X3N0YXRl
ICpuZXdfYndfc3RhdGU7DQo+IC0JaW50IHJldDsNCj4gLQ0KPiAtCWlmICghaW50ZWxfYW55X2Ny
dGNfYWN0aXZlX2NoYW5nZWQoc3RhdGUpKQ0KPiAtCQlyZXR1cm4gMDsNCj4gLQ0KPiAtCW5ld19i
d19zdGF0ZSA9IGludGVsX2F0b21pY19nZXRfYndfc3RhdGUoc3RhdGUpOw0KPiAtCWlmIChJU19F
UlIobmV3X2J3X3N0YXRlKSkNCj4gLQkJcmV0dXJuIFBUUl9FUlIobmV3X2J3X3N0YXRlKTsNCj4g
LQ0KPiAtCW9sZF9id19zdGF0ZSA9IGludGVsX2F0b21pY19nZXRfb2xkX2J3X3N0YXRlKHN0YXRl
KTsNCj4gLQ0KPiAtCW5ld19id19zdGF0ZS0+YWN0aXZlX3BpcGVzID0NCj4gLQkJaW50ZWxfY2Fs
Y19hY3RpdmVfcGlwZXMoc3RhdGUsIG9sZF9id19zdGF0ZS0NCj4gPmFjdGl2ZV9waXBlcyk7DQo+
IC0NCj4gLQlyZXQgPSBpbnRlbF9hdG9taWNfbG9ja19nbG9iYWxfc3RhdGUoJm5ld19id19zdGF0
ZS0+YmFzZSk7DQo+IC0JaWYgKHJldCkNCj4gLQkJcmV0dXJuIHJldDsNCj4gLQ0KPiAtCXJldHVy
biAwOw0KPiAtfQ0KPiAtDQo+IMKgc3RhdGljIGludCBpbnRlbF9id19jaGVja19zYWd2X21hc2so
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZQ0KPiAqc3RhdGUpDQo+IMKgew0KPiDCoAlzdHJ1Y3Qg
aW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoc3RhdGUpOw0KPiBAQCAt
MTM0NiwxMCArMTMxOCw2IEBAIGludCBpbnRlbF9id19hdG9taWNfY2hlY2soc3RydWN0DQo+IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+IMKgCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8
IDkpDQo+IMKgCQlyZXR1cm4gMDsNCj4gwqANCj4gLQlyZXQgPSBpbnRlbF9id19tb2Rlc2V0X2No
ZWNrcyhzdGF0ZSk7DQo+IC0JaWYgKHJldCkNCj4gLQkJcmV0dXJuIHJldDsNCj4gLQ0KPiDCoAly
ZXQgPSBpbnRlbF9id19jaGVja19zYWd2X21hc2soc3RhdGUpOw0KPiDCoAlpZiAocmV0KQ0KPiDC
oAkJcmV0dXJuIHJldDsNCj4gQEAgLTE0MTAsNyArMTM3OCw2IEBAIHZvaWQgaW50ZWxfYndfdXBk
YXRlX2h3X3N0YXRlKHN0cnVjdA0KPiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiDCoAlpZiAo
RElTUExBWV9WRVIoZGlzcGxheSkgPCA5KQ0KPiDCoAkJcmV0dXJuOw0KPiDCoA0KPiAtCWJ3X3N0
YXRlLT5hY3RpdmVfcGlwZXMgPSAwOw0KPiDCoAlid19zdGF0ZS0+cGlwZV9zYWd2X3JlamVjdCA9
IDA7DQo+IMKgDQo+IMKgCWZvcl9lYWNoX2ludGVsX2NydGMoZGlzcGxheS0+ZHJtLCBjcnRjKSB7
DQo+IEBAIC0xNDE4LDkgKzEzODUsNiBAQCB2b2lkIGludGVsX2J3X3VwZGF0ZV9od19zdGF0ZShz
dHJ1Y3QNCj4gaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4gwqAJCQl0b19pbnRlbF9jcnRjX3N0
YXRlKGNydGMtPmJhc2Uuc3RhdGUpOw0KPiDCoAkJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBl
Ow0KPiDCoA0KPiAtCQlpZiAoY3J0Y19zdGF0ZS0+aHcuYWN0aXZlKQ0KPiAtCQkJYndfc3RhdGUt
PmFjdGl2ZV9waXBlcyB8PSBCSVQocGlwZSk7DQo+IC0NCj4gwqAJCWlmIChESVNQTEFZX1ZFUihk
aXNwbGF5KSA+PSAxMSkNCj4gwqAJCQlpbnRlbF9id19jcnRjX3VwZGF0ZShid19zdGF0ZSwgY3J0
Y19zdGF0ZSk7DQo+IMKgDQo+IEBAIC0xNTA0LDEwICsxNDY4LDYgQEAgYm9vbCBpbnRlbF9id19w
bWRlbWFuZF9uZWVkc191cGRhdGUoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUp
DQo+IMKgYm9vbCBpbnRlbF9id19jYW5fZW5hYmxlX3NhZ3Yoc3RydWN0IGludGVsX2Rpc3BsYXkg
KmRpc3BsYXksDQo+IMKgCQkJwqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgaW50ZWxfYndfc3RhdGUg
KmJ3X3N0YXRlKQ0KPiDCoHsNCj4gLQlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAxMSAmJg0K
PiAtCcKgwqDCoCBid19zdGF0ZS0+YWN0aXZlX3BpcGVzICYmICFpc19wb3dlcl9vZl8yKGJ3X3N0
YXRlLQ0KPiA+YWN0aXZlX3BpcGVzKSkNCj4gLQkJcmV0dXJuIGZhbHNlOw0KPiAtDQo+IMKgCXJl
dHVybiBid19zdGF0ZS0+cGlwZV9zYWd2X3JlamVjdCA9PSAwOw0KPiDCoH0NCj4gwqANCg0K
