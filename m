Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 31n8GsbPJ2rK2gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 10:33:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C024665DD04
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 10:33:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hjLiIUZ6;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 878E710E1A9;
	Tue,  9 Jun 2026 08:33:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7A5C10E1A9;
 Tue,  9 Jun 2026 08:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780993986; x=1812529986;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Fh33Nk7en1RJsTaHDTvchPwO6Q2Km34zbOqVPHsjuTo=;
 b=hjLiIUZ6cyJRRx60zUe9z+4MJiS0rtLqIYOL1SPnLyOlwNegWMRthLSL
 b2WDM9cWXF7q3mZIZCQ/KGluBhm/RKa1Anxqf/HSkurKkRsC2jhreSEHW
 mgVZKUoL1s27VFnYYzE/uzH+LqcN7Lo2uxiPFTx8zIe3jbO7abra8Tza7
 5ElZUcVWX22Brt3MFZ6/PR0h4+JhDikuAnuFizfpdKPpF17d5v9I46eb2
 4AQBgdpGwBz9s+M4H5ARQOr8gYhnQM/XNWpB7d0S1gLr42X6Pc63hZuSe
 tJLfGnbmmu2y2c2Hujqz70rEpF+cjfWsxiZ9eafL7DmubuX8GPCsocO6w g==;
X-CSE-ConnectionGUID: iJp2BfoGQGmfH3/zwp7bFA==
X-CSE-MsgGUID: XHlaOeMeSJyA4uaMJ+dspA==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="93235234"
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="93235234"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 01:33:05 -0700
X-CSE-ConnectionGUID: mgawkbdbSMak9UZouBTx/w==
X-CSE-MsgGUID: r8K3JPfCSUWtA61cZL5/xA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,195,1774335600"; d="scan'208";a="245649667"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 01:33:06 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 01:33:05 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 9 Jun 2026 01:33:05 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.67)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 01:33:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ebpBrtUjVG83xwvRgWm4lLrwoUfeysbNDK2WlTabbb42jy0dxX4NS4a/c5XBgSQh/v7SF9h6bdJE2ISkhQRJigyQfsP/xXx6oDi0hbMlEhDeGtJbjeGu/c78SAcuxZLtQM0lAx6RrfqONbHImPYOEO9bbzy4mJNcd5500sPFUw9OOWPOl7M+Rm9wBsKeAwdRUoIdoVqDwBRsxMY3ap0QZrUVFkgcpboIZYqCSUlF1p9geTVkD8pZ5tlOwtCd7qkqdJOOduxN/oS/i70ksvylt2MfENPTqXlBSWZeM5L9284ba9NnP+4yl7j78RhZotj9K/buQXERedtt5qtp+mucdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fh33Nk7en1RJsTaHDTvchPwO6Q2Km34zbOqVPHsjuTo=;
 b=PFgmbtYHNajW/D/0qCDvJqDiqy/vDLGQS79uE0nVI/C+ez5ooSuoB8byzxsk9cvHSrQaYcdPhsu4YgOL+K9y7sBpfyUx3UGIoXv7DoPYDSmj5PRfQiyLGi4bTQgEtRJCoWkQzdZZpSpcd9xwgccTF2b52SGYfsYPxq1zRAk4ndcBeU77uKKAcDQ6mpM0I4N9IiXPCRvhDqiTf2Ts6pFELe1y0RmZ8pj1C9HhEHeRG8zKvc3nmvOgLnrX1fYREz4qQdv8tc3jEHW5VzXG1RcSq1l136TULlVybd8cwo6gZ5hBBC2XYek2HbOYSf8fvupZExmCC/u6gUHGIgutRfRt8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::5b) by PH3PPFEC89C124F.namprd11.prod.outlook.com
 (2603:10b6:518:1::d5d) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.14; Tue, 9 Jun 2026
 08:33:02 +0000
Received: from DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6]) by DS4PPFE901A304F.namprd11.prod.outlook.com
 ([fe80::6d3c:5451:b5d4:3ea6%6]) with mapi id 15.21.0092.011; Tue, 9 Jun 2026
 08:33:02 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Skip generic pipe dpll_hw_state compare
 on LT PHY
Thread-Topic: [PATCH] drm/i915/display: Skip generic pipe dpll_hw_state
 compare on LT PHY
Thread-Index: AQHc90pM00uchb4Aykuwo01m9aBgorY113gggAADAnCAAAUEAIAABeBw
Date: Tue, 9 Jun 2026 08:33:02 +0000
Message-ID: <DS4PPFE901A304FD17DE37147850239D7F9E31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
References: <20260608132505.1849158-1-mika.kahola@intel.com>
 <DS4PPFE901A304F9D8A3F2373EB7BBB7209E31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
 <DS4PPFE901A304F5E4F3186111A73F0683BE31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
 <DS4PPF69154114F8FE08735C1DE5F963D09EF1D2@DS4PPF69154114F.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPF69154114F8FE08735C1DE5F963D09EF1D2@DS4PPF69154114F.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPFE901A304F:EE_|PH3PPFEC89C124F:EE_
x-ms-office365-filtering-correlation-id: 5a34e241-8d4a-4048-db3e-08dec601b897
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099006|11063799006|18002099003|4143699003|22082099003|38070700021|6133799003;
x-microsoft-antispam-message-info: xGN5EeRHqAXzAjfWKjrAQIZLxh4asXtpSpZvBuplOntSQ4+ub6h+AGryEa+jY56gdAAqv2Qk9BvAPkMzq3Vse72ToT244Qs/RViReGaRl4mmcLEz6TEOOsLIVMjS8w8NgMgLOX4qWIH6dyvxAd6GZkQakxegdlYJLyTvOWW+8WlwNen21+FpFUW5jFVAV1tg3g9QjuCHOIt5Vv0q66f/8D1R99NiARIZM01NncGDSsMX6nU0/3DcYzjxoKU3zlfIMVeJnqnJ3mvVDtsDT5eVpQzxcHkU7VG+97uKIDyRVvEb/0F3Rs2KnzRoTMAOtyy3ICV7qNca/sp2+vH7ptCGbuAbtcuFRMxcdVS1obqBLG3Tp8VeHeb2tWG4k5zuFFkbueleTNTQZady2+u3iNtfsoyDekBT+vWoJw0ea0fCYoNk+rnDFljQJtqRhr/A4BPnJ1nbsYlD0gfDjRWxXaSHzPnf+aoTcj6HTT/5GcBj19r+mGkFUSaYyM7UbAeZsXkgdnOhiWbW+2skOyBu9Cfmx4AHcrFKt1SDeqGs6MS/r+EPB2jIC00+DuhCKnQPv5RbAj/ecC8Jj8Y9g7bL6ahLTip5QgcyF5FpllElg26MEFDuAXzoz++uSwISWsow//BzufaTyxfB4Tefk2NaFJgoczxzY4enkWYjN7J26XcQ+5rvCx+lyEaD24lBugQ92qlwfGfAZTYRgjj+3v6fQKDEe0LUQ4vBrQYrIYITegSdxF3zeqaREK2SkNXbYMhf7sDo
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPFE901A304F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099006)(11063799006)(18002099003)(4143699003)(22082099003)(38070700021)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SVZGeXlob0tjTGpwMURXZmU4dFRsZEM0UVBzaGFGYTNNcU5lVXNIWGtQMUJN?=
 =?utf-8?B?UWhOZGZqRGFnWVlGM3VMMUFMOEtHZ3ZER2RzSzkzZGZ1a0V3ZmZyS0NqWmNK?=
 =?utf-8?B?MVVvWS9vVnBUUk1zSWdTTUZiZ2ZSQWsrVXRzWHFBVFBUdG9NR1pDTWJOdnA3?=
 =?utf-8?B?RThJNld3Q3hWY0VpQmdHdW1DWmJNaWRBaktKRlZhall1Zk94VW9GMUtyekFM?=
 =?utf-8?B?Q0huYUNmSE51ZUZWV3lzWERkSmpTK3pFY3JlazZtQlZ5eE9xLzgzSkFNVEhw?=
 =?utf-8?B?OXo5dTJiUXJGWm1OSTBkLytUWVVLcmtGSDlKNXNsRER0d3BHQnIzNm1MaEFF?=
 =?utf-8?B?UDVEMzRINEV2bDBOanJEeEwrOGZ1VkpkbjZoeXNhM3lQL1RUL21Vd2dwcXdk?=
 =?utf-8?B?WDBqUDNXbkhMdEdGZC93OUt4aWlIRzVyS1RRUEhyMEsrWk9PdGFabUROQTJL?=
 =?utf-8?B?TGpMNEFKMUpyVjlJSllvL2RZcTRWbE5MTS93eU9MNFcyQU9hSmFFOXI0TStH?=
 =?utf-8?B?aC9ockpKdm9vUFgxUTlQWHNqajZ6TklON3F6WkU3Y0p5QWs0TVFTdVdzdmJU?=
 =?utf-8?B?ZC9EWHczaTFQVHpiL0VKWkdaY1I2UXh0clZrZUd5MExqM3Q0bms3RVBrSjB3?=
 =?utf-8?B?a1RVRHFXTGlUaElYQ3NTVUdJK2ZtWGVhdXFSTCt2RjR2ZHBxUFY3a2gvOXRR?=
 =?utf-8?B?dFoxUXY3eTZPVkpMS24vbFMwMittTkMvVVk5eldld2lTN0tRbG0wb00xaFVH?=
 =?utf-8?B?V2Q2L3NSbklqRGV6b1d6YUtwNXFvaDVFRlhnbFZkV0hNNHVVSVprZy9iNTV5?=
 =?utf-8?B?SGR3Y3cyWXRkVWJrR3RFQWlBWGlZaVFIUkVVWUliL2ZyRDB2ZXlDWXlUaWdO?=
 =?utf-8?B?M0plaUZKdGV0MUZ1Nm93dXlNaGJJY0ZES2liRWZyU1dvVi9rQWNabUprTmpN?=
 =?utf-8?B?N0JiSXhsL2M2NE9EQ2w1TVlxRURCaGl4VnQxS1RFdGNyMUJvZHlpMWpsNm9n?=
 =?utf-8?B?cTlvb0hBYUNzQXJUTTZwcE5CVlJPeDNPTCsreHNOVVA0VnU2LzR5NGoyWldE?=
 =?utf-8?B?SUNzc2hoVEMwTUMya3QzMFRNN1M1UnZYNEFxdENSR0h3TWVGSVE3MlZOUklP?=
 =?utf-8?B?VUVwMkdJNDh5Y3czODlTWHU2QTN5amdnUXFCZkM4WGc3dlB6Y0d1Zzd0U3dr?=
 =?utf-8?B?amk1c1hKdXYwTHNZVXY1aW91Sm9MNVNpOEYyM1lZMTQ1bU1TaFZ4d2ZBbkVy?=
 =?utf-8?B?L0hZSmZoM2NRWTQxWTcxdEhRSy9Ba05CNTBaS2xjTFovL0wreFR5Mm5ZSXZ6?=
 =?utf-8?B?NjMwek02UzhSbURJd052aUpOWnNVSzdxWnROV0t3amZuak9zRUdhaXg5NjJP?=
 =?utf-8?B?TzB3aEdJNGptWlBpdzExWmJWU0JLclBtM2ZCWmxmMEVmYkxiRHYvNGhqc2JP?=
 =?utf-8?B?emphcVRVcnAzSVBsejUzUVc5RG04bGltcyt5T3JKRzNHYUhndU5qSlh5ZTBN?=
 =?utf-8?B?NlVORHkwa3hZVVp6b2VDT3JIWSt4azd1cXRFZDJtbVZ4MHllclFnb212MWZs?=
 =?utf-8?B?RHlpZmlYTG5XcllVVCtjbWJRZFdMUW1UdUVqMnFWUVc1dm9wUVQyZjNYcTdI?=
 =?utf-8?B?eGVFdHMzc2RZQ2hiVHVwUVNXZmx1UGw1V3ZvcDI0UU5UQTVjdnpPTXdoTjhO?=
 =?utf-8?B?ZGJsZmJ0ZVdBRE4raGIvSDJwSVpadDN3VTV2U1htYnAyS29vbWphRGl1Nm4y?=
 =?utf-8?B?VEhuK0xvaWhVckF1M1VGL3V3QW5IMHN2b09jQlNrRGp0Wkl4bTBsT01iZ1h6?=
 =?utf-8?B?THMvTFZTcGxHM3RVTGpXZHJxKzVteVFOQ2swQ0ZpSFFiRGk1cVljY3hhWDhw?=
 =?utf-8?B?WWx4SmxyUjRXb2hJakRpc1FjZEdBTW5kK1VWQmdURUVrQWNzWnhsTDBSZ3VN?=
 =?utf-8?B?Ny9rcGNpWHNNdW5EdThmbWVmZ1h3WldqVDhxU0x2Y0k2YkxIRGFuV2hiemxu?=
 =?utf-8?B?dURmQ2Z0RnNudTVRVm95VVFRTmlYL21Ra1BHa1JFbTdUSGdDbzFFRm1HYTBh?=
 =?utf-8?B?dEhUcEJlRWxzL0Exd0N0TzVkWU1GMHlOMWJ1ZTBTQzFZZTYyYzhlbnZmYkNa?=
 =?utf-8?B?TnJuZ2ZOTk5rSjJnK1VjbzFPTUJSamtZTXpxUExHV0xpQWVWeXIzd3N0bFJj?=
 =?utf-8?B?ZDVxVFN0Nzk5bi9qRklYcWZVcW1yU25qbmQ1TVI3bFpuS2RiZUF3eUFRc2d6?=
 =?utf-8?B?dnFMdEpLNUtKWHJiQnlXRXVMenZxaEwrajFrYlR3dmVaM1FWWWJ4NDk5bmlo?=
 =?utf-8?B?K2l6RmdmYzI4cmt1aUppbXRidWwwdkllbG1XeHBxSlhoTENpVEJBQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: fG4dxlyYixQ6N/6PslTWWXr4uWNX4+DUD8RwhccfTgdxaLMlMyQUeiwJaXdf+3rcLgSXwiergtS7ziOsEztskdF4dsShb2CbpAG0na5ZBfZpPmJrPxxfetvi6Jhor1eCA3UXg1GggGPizKb3boEAMlWr3mrkZd7Vk47cUjdR74kzOngIcTUtjZlcpbV+E7vk/gv3Va3CIeMEfU6unzaRSU3KOwItjynCXU2is6eb9cgritnbZwH1bKmQopVFffR3cnYvLvbSVxkdwTbysnFct+zHMefHznirGFoT5Vbp53ssbzRxp7HaNUNqG55Xxph5lQXJCfcqKi9O71PqfwDc9w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPFE901A304F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a34e241-8d4a-4048-db3e-08dec601b897
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2026 08:33:02.7165 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ITsZjpLz92BJjsGjuW5ZqovqYzbEeGBxlkfvqNiuzDe7h8gDLQFjICjjXv9tqdx3sL/jJfK8ip5xZEGbeB0sVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFEC89C124F
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C024665DD04

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2Fob2xhLCBNaWthIDxt
aWthLmthaG9sYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgOSwgMjAyNiAxOjM4
IFBNDQo+IFRvOiBLYW5kcGFsLCBTdXJhaiA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+OyBpbnRl
bC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+IFN1YmplY3Q6IFJFOiBbUEFUQ0hdIGRybS9pOTE1L2Rpc3BsYXk6IFNraXAgZ2Vu
ZXJpYyBwaXBlIGRwbGxfaHdfc3RhdGUNCj4gY29tcGFyZSBvbiBMVCBQSFkNCj4gDQo+ID4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBLYW5kcGFsLCBTdXJhaiA8c3VyYWou
a2FuZHBhbEBpbnRlbC5jb20+DQo+ID4gU2VudDogVHVlc2RheSwgOSBKdW5lIDIwMjYgMTAuNTEN
Cj4gPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+Ow0KPiA+IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KPiA+IENjOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPiBTdWJq
ZWN0OiBSRTogW1BBVENIXSBkcm0vaTkxNS9kaXNwbGF5OiBTa2lwIGdlbmVyaWMgcGlwZSBkcGxs
X2h3X3N0YXRlDQo+ID4gY29tcGFyZSBvbiBMVCBQSFkNCj4gPg0KPiA+DQo+ID4NCj4gPiA+IC0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBLYW5kcGFsLCBTdXJhag0KPiA+
ID4gU2VudDogVHVlc2RheSwgSnVuZSA5LCAyMDI2IDE6MTMgUE0NCj4gPiA+IFRvOiAnTWlrYSBL
YWhvbGEnIDxtaWthLmthaG9sYUBpbnRlbC5jb20+Ow0KPiA+ID4gaW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gPiBDYzog
S2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4gPiBTdWJqZWN0OiBSRTog
W1BBVENIXSBkcm0vaTkxNS9kaXNwbGF5OiBTa2lwIGdlbmVyaWMgcGlwZQ0KPiA+ID4gZHBsbF9o
d19zdGF0ZSBjb21wYXJlIG9uIExUIFBIWQ0KPiA+ID4NCj4gPiA+ID4gU3ViamVjdDogW1BBVENI
XSBkcm0vaTkxNS9kaXNwbGF5OiBTa2lwIGdlbmVyaWMgcGlwZSBkcGxsX2h3X3N0YXRlDQo+ID4g
PiA+IGNvbXBhcmUgb24gTFQgUEhZDQo+ID4gPiA+DQo+ID4gPiA+IExUIFBIWSBQTEwgcmVhZG91
dCBpcyBvbmx5IHBhcnRpYWxseSByZWxpYWJsZSwgYW5kIHRoZSBMVCBQSFkgY29kZQ0KPiA+ID4g
PiBhbHJlYWR5IGRvY3VtZW50cyB0aGF0IG9ubHkgYSBzdWJzZXQgb2YgdGhlIHN0YXRlIGNhbiBi
ZSByZWFkIGJhY2sNCj4gPiA+ID4gcmVsaWFibHkgYWZ0ZXIgcG93ZXIgZ2F0aW5nLg0KPiA+ID4g
Pg0KPiA+ID4gPiBUaGUgZ2VuZXJpYyBwaXBlLXN0YXRlIHZlcmlmaWNhdGlvbiBjb21wYXJlcyBk
cGxsX2h3X3N0YXRlIGFzIHBhcnQNCj4gPiA+ID4gb2YgaW50ZWxfcGlwZV9jb25maWdfY29tcGFy
ZSgpLCB3aGljaCBjYW4gdHJpZ2dlciBmYWxzZS1wb3NpdGl2ZQ0KPiA+ID4gPiAicGlwZSBzdGF0
ZSBkb2Vzbid0IG1hdGNoISIgd2FybmluZ3Mgb24gTFQgUEhZIHBsYXRmb3Jtcy4NCj4gPiA+ID4g
RFBMTC1zcGVjaWZpYyB2ZXJpZmljYXRpb24gYWxyZWFkeSBleGlzdHMgdmlhIGludGVsX2RwbGxf
c3RhdGVfdmVyaWZ5KCkuDQo+ID4gPiA+DQo+ID4gPiA+IFNraXAgdGhlIGdlbmVyaWMgZHBsbF9o
d19zdGF0ZSBwaXBlLXN0YXRlIGNvbXBhcmUgb24gTFQgUEhZDQo+ID4gPiA+IHBsYXRmb3JtcyBh
bmQgcmVseSBvbiB0aGUgZGVkaWNhdGVkIERQTEwgdmVyaWZpY2F0aW9uIHBhdGggaW5zdGVhZC4N
Cj4gPiA+ID4NCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xh
QGludGVsLmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDggKysrKysrLS0NCj4gPiA+ID4gIDEgZmlsZSBjaGFu
Z2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4gPiA+DQo+ID4gPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0K
PiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+
ID4gPiA+IGluZGV4IDJmYTEwZjg1ODI3OS4uODVhZDJiYzQ5NjNkIDEwMDY0NA0KPiA+ID4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+
ID4gPiBAQCAtNTM3NCw4ICs1Mzc0LDEyIEBAIGludGVsX3BpcGVfY29uZmlnX2NvbXBhcmUoY29u
c3Qgc3RydWN0DQo+ID4gPiA+IGludGVsX2NydGNfc3RhdGUgKmN1cnJlbnRfY29uZmlnLA0KPiA+
ID4gPiAgCWlmIChkaXNwbGF5LT5kcGxsLm1ncikNCj4gPiA+ID4gIAkJUElQRV9DT05GX0NIRUNL
X1AoaW50ZWxfZHBsbCk7DQo+ID4gPiA+DQo+ID4gPiA+IC0JLyogRklYTUUgY29udmVydCBldmVy
eXRoaW5nIG92ZXIgdGhlIGRwbGxfbWdyICovDQo+ID4gPiA+IC0JaWYgKGRpc3BsYXktPmRwbGwu
bWdyIHx8IEhBU19HTUNIKGRpc3BsYXkpKQ0KPiA+ID4gPiArCS8qDQo+ID4gPiA+ICsJICogTFQg
UEhZIFBMTCByZWFkb3V0IGlzIG9ubHkgcGFydGlhbGx5IHJlbGlhYmxlIGFuZCB0aGUgUExMIHN0
YXRlDQo+ID4gPiA+ICsJICogaXMgYWxyZWFkeSB2ZXJpZmllZCB2aWEgaW50ZWxfZHBsbF9zdGF0
ZV92ZXJpZnkoKS4gQXZvaWQgZmFsc2UNCj4gPiA+ID4gKwkgKiBwb3NpdGl2ZXMgZnJvbSB0aGUg
Z2VuZXJpYyBwaXBlIHN0YXRlIGNvbXBhcmlzb24uDQo+ID4gPiA+ICsJICovDQo+ID4gPiA+ICsJ
aWYgKChkaXNwbGF5LT5kcGxsLm1nciB8fCBIQVNfR01DSChkaXNwbGF5KSkgJiYuDQo+ID4gPiA+
ICFIQVNfTFRfUEhZKGRpc3BsYXkpKQ0KPiA+ID4gPiAgCQlQSVBFX0NPTkZfQ0hFQ0tfUExMKGRw
bGxfaHdfc3RhdGUpOw0KPiA+ID4NCj4gPiA+IGludGVsX2x0X3BoeV9wbGxfY29tcGFyZV9od19z
dGF0ZSBvbmx5IGNoZWNrcyB0aGUgcmVsaWFibGUgc3RhdGUNCj4gPiA+IGhlbmNlIHdlIGRvbuKA
mXQgd2FudCB0byBhZGQgdGhpcyBoZXJlIGNvbmZpZyAwIGFuZCBjb25maWcgMiBhcmUNCj4gPiA+
IGV4cGVjdGVkIHRvIGJlIHJlbGlhYmxlDQo+ID4gPg0KPiA+DQo+ID4gSWYgeW91IGFyZSBzZWVp
bmcgcGlwZSBzdGF0ZSBtaXNtYXRjaCBvbiBlaXRoZXIgb2YgdGhlc2UgVkRSIHJlZ2lzdGVycw0K
PiA+IHRoZW4gaXTigJlzIGEgaXNzdWUgd2hlcmUgUEhZIGlzIG5vdCBnaXZpbmcgdXNlIGNvcnJl
Y3QgdmFsdWUgc2luY2UgdGhlc2UgdHdvDQo+IHJlZ2lzdGVyIG11c3QgYWJzb2x1dGVseSBiZSBy
ZXRhaW5lZCBieSBMVCBQSFkuDQo+IA0KPiBUaGlzIGVycm9yIHNob3dlZCB1cCB3aXRoIFRCVCBt
b25pdG9yIHdoaWNoIHlpZWxkcyBlbXB0eSBzdGF0ZXMgZm9yIGZvdW5kDQo+IGFuZCBleHBlY3Rl
ZCBzdGF0ZXMuIFNpbmNlIHdlIGNoZWNrIGluIHZlcmlmeV9zaW5nbGVfZHBsbF9zdGF0ZSgpIGZ1
bmN0aW9uIFBMTA0KPiBzdGF0ZSB3aXRoIC5jb21wYXJlX2h3X3N0YXRlIGhvb2sgSSB0aGluayB3
ZSB3b3VsZG4ndCBuZWVkIHRvIGNoZWNrIHRoZSBQTEwNCj4gc3RhdGUgaGVyZS4NCg0KU28gLmNv
bXBhcmVfaHdfc3RhdGUgd291bGQgY2FsbCBpbnRlbF9sdF9waHlfcGxsX2NvbXBhcmVfaHdfc3Rh
dGUNCldoaWNoIG1lYW5zIGZvciB0YnQgbW9kZSBpdCB3b3VsZCByZXR1cm4gZWFybHkgYW55d2F5
cy4gU28gd2UgYWdhaW4gd29udCByZXF1aXJlIHRoaXMgY2hlY2suDQoNCldlIGFscmVhZHkgaGF2
ZSB0aGlzIGJpdCBvZiBjb2RlIGFzIEkgbWVudGlvbmVkIGFib3ZlIGluIHRoZSBmdW5jdGlvbg0K
DQppZiAoYS0+dGJ0X21vZGUgfHwgYi0+dGJ0X21vZGUpDQogICAgICAgICAgICAgICAgcmV0dXJu
IHRydWU7DQoNClJlZ2FyZHMsDQpTdXJhaiBLYW5kcGFsDQoNCj4gDQo+IC1NaWthLQ0KPiANCj4g
Pg0KPiA+IFJlZ2FyZHMsDQo+ID4gU3VyYWogS2FuZHBhbA0KPiA+DQo+ID4gPiBSZWdhcmRzLA0K
PiA+ID4gU3VyYWogS2FuZHBhbA0KPiA+ID4NCj4gPiA+ID4NCj4gPiA+ID4gIAlQSVBFX0NPTkZf
Q0hFQ0tfWChkc2lfcGxsLmN0cmwpOw0KPiA+ID4gPiAtLQ0KPiA+ID4gPiAyLjQzLjANCg0K
