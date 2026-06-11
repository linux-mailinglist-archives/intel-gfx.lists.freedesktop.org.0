Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mLVxGcBjKmp8ogMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 09:29:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E9066F624
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2026 09:29:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=AFNa+EdS;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 439E710ED2C;
	Thu, 11 Jun 2026 07:29:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7779910ED2B;
 Thu, 11 Jun 2026 07:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781162941; x=1812698941;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QNY0QZzU3OXMMjFLsOI/kOHPJxHX7qgxKyq+wcyGjPs=;
 b=AFNa+EdSoIppbatvXNHp9k2Cbv5Vi/5HVdXLGF8C7Z1MIBIWr9pKFGCD
 culpXXPPjAdrrPh6N9ApggT8ZgVK+rt9HsTxWUBm0yHDvkJ3Jy+Yd4wEH
 qS5jC176f0LbjMzzXhBYX8Nh7MR/n6jijQm6mFMsFECK60x2wbxk+InFA
 F9m52PvQJ6bTd668wVtTuYIqXZsru3DdfSOTUQKOG53EytvaruQOZXS3R
 yY9a8HOaXfRNu15Ieb5MqIQzFwv5qatRTNvPPGrxFgFZrNdoTtT4FJJiz
 BaCVAd/9/ClPfChsjOG5NXmXQOSN0x330dkdEMWpZkeqkau017i1SluD2 g==;
X-CSE-ConnectionGUID: aMn5nCfJSB64ZB7ZYAXSyA==
X-CSE-MsgGUID: qTFBABE2R0SweLbHjPaQ4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11813"; a="93358200"
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="93358200"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 00:28:54 -0700
X-CSE-ConnectionGUID: 3daxTe2zRAuGGL/qKrAmxQ==
X-CSE-MsgGUID: jZfEoNfrQFWTQFFDKUdbrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,198,1774335600"; d="scan'208";a="245523556"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2026 00:28:54 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 00:28:53 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 11 Jun 2026 00:28:53 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.20) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 11 Jun 2026 00:28:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vCOC4cIcjtv+fYeKiiZOWItDIjVXpzokvhR9H1xr4lQ4b45QB8aP90YBJcpU6hIgMfcBBx2lWXDPWBGW4Vzz+tO2HLlzvpAR/+H96ibe5u72XA+GIUhRd0TWktY+pRJJfvOEOZmo5x0r+1lilYbopetN9vlzQ6hRZF2OX7HdkDNaV8dPGRe/FuhTUGA9F4F6yShmzFPXivdewNCKyXUVStPv6lzL2qqF8Pv+nWD0CbALnq711ewgIfjph7RWnKlp10IsCb4as0zl37m6rgXHI2TyqMjnS7itEuHBU18onlu3lH/Ok0wzT7Y+6qbzhJ18sIoOk0uBoRdEDmKAXvAYXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QNY0QZzU3OXMMjFLsOI/kOHPJxHX7qgxKyq+wcyGjPs=;
 b=i7NGTymI5kb1YZIRidSy+1Jk9xXHnzgnup7xHOpOgrhxpbd1R+bMvT32yzeRJB60AFOH3xD9fgFp8CHHRZVmmhKkQG6DfGuAZclHOXTRrybn+HYq6OA7NvtdOOrvYLdF0AjW4bPiiFTb98gF1tOTTlazF9Sii+GCeaNwWfWoEk76IsywBvyd19yQFxId4FvIJ2iuHmRWxF6tS3BqVd7jmtEUeheDFgChbOhP6F8mhBTEWWMGI2MRr3h1PRn+W9FVIEKb9DKZcoGrCmdJ94WslIgdVWP6VR+Y9I46FBhRwgJZyzyhYFqAvW5q/lXhA+ykv1CyAGiPVPH+os8u+TfN3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by DS0PR11MB6541.namprd11.prod.outlook.com
 (2603:10b6:8:d3::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.18; Thu, 11 Jun
 2026 07:28:50 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0113.013; Thu, 11 Jun 2026
 07:28:50 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Skip generic pipe dpll_hw_state compare
 on LT PHY
Thread-Topic: [PATCH] drm/i915/display: Skip generic pipe dpll_hw_state
 compare on LT PHY
Thread-Index: AQHc90pBcgi3ql4Wx0S5t5CdcuLsmrY12HoAgAACbACAAANtwIAACEMAgAAHBlCAABJHgIAC92Xg
Date: Thu, 11 Jun 2026 07:28:50 +0000
Message-ID: <DS4PPF69154114F3AF16DFB85FCF7DD6EFBEF1B2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260608132505.1849158-1-mika.kahola@intel.com>
 <DS4PPFE901A304F9D8A3F2373EB7BBB7209E31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
 <DS4PPFE901A304F5E4F3186111A73F0683BE31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
 <DS4PPF69154114F8FE08735C1DE5F963D09EF1D2@DS4PPF69154114F.namprd11.prod.outlook.com>
 <DS4PPFE901A304FD17DE37147850239D7F9E31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
 <DS4PPF69154114FDE8A2D0F6CF1A553F281EF1D2@DS4PPF69154114F.namprd11.prod.outlook.com>
 <DS4PPFE901A304F3D1536AECA39854BDBC0E31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPFE901A304F3D1536AECA39854BDBC0E31D2@DS4PPFE901A304F.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|DS0PR11MB6541:EE_
x-ms-office365-filtering-correlation-id: 81220939-e3a7-4e90-59ee-08dec78b1544
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|23010399003|10070799003|18002099003|22082099003|38070700021|56012099006|6133799003|11063799006|4143699003;
x-microsoft-antispam-message-info: VPOBj4Jce4OPrIZ3KT+gkCQ3TOfZBERp6kwOBcpj3qHNooYgGBkOieeddYDmMcy8TP0fEHYz7cArgSs4GvT0obn04A+Uz3PjkVz5FqgRSQag4cNxQcDqjGILMW3n318W1gMi4EEDra/wgUWEqC+VEr0Fq2FynUgqerD/FjiSq3pGOeHyjlLt4mhfKOViGvoIRckIQvLAK8ByjS4+cHqhP9N3V6/jtL2qQ6RO7Ftjo+6bOBQ4hQhK807tvuyVpMIicsv3Yag3H981K7yhwpr4JY2UyeorcLK5C0Oa4W34a2wHBBRd0TDy2hO6HqGtnfqQS8wV4kLZ5I+rCMGd52XMk8BcbxjK8y7xlqVVyrM9rNOIFxJK1e7lrBu/lFNhwOjKubLPgronQ/NttQoLnPH8bAXyJzfx2eByXZC2088wzAhE+GGdFblVM7BkZkpgDTpbxel7I2moWl4Qj3gqo0393s7Zlnmj7yUZ2lsQRBNBULeMz1MPlGRa39/BR/jONIL1avsy198UhBEEDrgbFjwermp+tuU2z9iMOvsxBhxUpEZI+BZYMFvbH2DPaTYx6jzXx9uAsxLrQ8FFbWNFwJoiT/M3z5sHtuNH2LzWutlhKlBJO+8qj86d4SDNbvw5Rk5sWjbYrJr0BArLf+qjmMNuJqMdAfzYDT9UbhbtYS5Seu6ADs4WjkZeOrxSZiA5rJX4P2q/B11OLEE5/HEhiLnbTaZSwDtLb7ohotVb5VvjeEczNo+Aj5hdXU1B6Z1Fk4XK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(10070799003)(18002099003)(22082099003)(38070700021)(56012099006)(6133799003)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?djkwcnB4WThVRFhVYlNRY0VOdUkwcWZDMzZOa2R2bDFaQ01nM1B0bi80RXF3?=
 =?utf-8?B?UjZGbUtDY1JBbWx2eXcrdXJ4VEhDQW1FZ1VTYk9kZ1RqbTBBV3FmdTh2cTM5?=
 =?utf-8?B?M1RkWFJ1T3NuM0pLZ3o4Ky9ZMDIrSVBOeXYveGhJdy9tTTJvSHdBdmhZaFhh?=
 =?utf-8?B?K0dUbmFZaTVTeFV5Z0VpcmlpdGlYQ0hJYnhUQ2Q3SytHZHNDNHFCWFN6cHI5?=
 =?utf-8?B?a3Q2KzVtc3BIVXdKM0tCVlNYK2xTa1BHT3k0S3hNMG5PcGY1eTBBWmVSSC93?=
 =?utf-8?B?UVQxVGxGK2NaaHNEZE84S1ZLbGxURTNZeVlBRXVOMVdqdm9uZGRQdEx6Y2Jr?=
 =?utf-8?B?OWQya2tCUmtzZUFJWEFVWlZ0SWt4WmFOa2haNGlzdm81RTBpYU5wdXdKTjd6?=
 =?utf-8?B?eldmWDFnVE56S0Fub3ZRdFpQWitYaXdYTGdPdjJKcEdOMWI1YlBHUDU5UkRp?=
 =?utf-8?B?bDJLOGQwd1R0YW9mM01CMmFSaHJYN0E2bm1mTlJrQTQyV2xuUWlUMHNjWXVU?=
 =?utf-8?B?WDFZR0szT3daWUw4N0I1SldTRUpWUHRCN3poUFY2SGtsVTFUUFVaelFpWXI5?=
 =?utf-8?B?OGVmSUpPTzJyUHUvMFhkTHlIWHNDMjBnQkdqdDhMa3YyMEt5WjZaQXNRL3NX?=
 =?utf-8?B?SWFneVVDSm5VRHhCNVpUN1pDZEVwTHNmV052ajUwb3FCOWRIQWQxcDkzWkdv?=
 =?utf-8?B?NFlybjVVd1pJdHZkRjRSRXJuOFlHWFZsL2laNUJwckVubHJxSU9Pdk9ISVhn?=
 =?utf-8?B?THhic2RnZEJ5a3c4QlAwTFlXTWhOSVFvKzVlQ0tjNS9LOUQ0ZGU2cHNidjNF?=
 =?utf-8?B?M3lGMlNKOUNYMU1NZzhyOHdlZ0tFajl6V1lRTkZyQkpHU1BuSGo2Nzc4eXN3?=
 =?utf-8?B?LzdITmtaN1B3eHFxVklDZjQ5K3owZlpXMDRJenFBcFR2MEQ4M1pXVGVlNU1R?=
 =?utf-8?B?aTNmSVZVekxZclZGVERqUTNFMDYyOWV1OHVwOG5HbGtReTVDNzhVQzdRZE84?=
 =?utf-8?B?RWVOdlBLK1J2RlVXQWlzQU4yTi9mZ3UvN040LzF1ZEZHaWlLcHVaVzI0OWVC?=
 =?utf-8?B?b1VDZlRUVm5XWlhVdFo5RVM0d2tEVWV0dVhsbTNjVXo4dEZ5a0RXMWFTWCtM?=
 =?utf-8?B?L3Zxd1VOM0F6alNRaittVGJnZmd0dXgwY2N2T2l6UUQwdkRiL1o0eVRzaGlD?=
 =?utf-8?B?ZFZWMnBIMkd3TzQ0WUFHQ3Y4MGd2eVFhUGRJbzloSGNrMjNmejJLSnJOeTcv?=
 =?utf-8?B?alVyZWJ0WENpSmpjeVlkMmUyVHNTVzJpQjBzTnFwWUJ2NFdIVnZBTE9uTkpO?=
 =?utf-8?B?ajI2SWVjbktaaDBYL2tpS0hIeVAxSG1GM3YzdXU1MzZabWtwdVpYZ3ExMkU5?=
 =?utf-8?B?cmU1UWJKSWxsWFJpdFhvRjdRZHB1V1QwK0lnK1hVSEF5cDlGdzNmNlFiK2hP?=
 =?utf-8?B?S0FZNHNNcDZOS2QyYktmRDRBYWlqSXA4SXdYc3dmUGVBdngxSm8xeVdMOXdJ?=
 =?utf-8?B?UTJaZ2RtL0I3cGNkRFp0M3NlazVsbmwwa3pMNjFzZjBEQlJBMDQzOUJUVm9Y?=
 =?utf-8?B?eWlFS0hzMmduUVpxZWV6THBOTk1ndUR5aDVLNmphRzZtVEM1d1VVMEFHTmZ4?=
 =?utf-8?B?ajUxNW51b21rMVJRT09Cb1ZoWFVycVNXSkNrMUN6TGNJeW94S0RuZ2lseGtI?=
 =?utf-8?B?M0N4ZmpKQmlnU1NVQytLNjhlSEJYdjEyd0FmeTlSOXJyVUZzbklMOU0wYTE1?=
 =?utf-8?B?T3VIV3lmOFY3UitMQkVzU2sycFFnMkNtQVlBcCt4cTU2eDVta0hQeTIxUW91?=
 =?utf-8?B?c1hyMFlHWXBaT2hrT2NRYW51a1lleTNEUUM4d1dTaWNhQU9EWUQ3d3hIN2tC?=
 =?utf-8?B?UDRaUFFSRjdidkIyTzFMWllyQzd0QVJSTGhUdk5aZXpxV3htcjUrN2kvdC9K?=
 =?utf-8?B?M1hMMXJyTnk5WTIrLytnQUhoS2tKUUEvcnZja3lVcXBYZlpBMXRTUTRzWE85?=
 =?utf-8?B?cWhUSDB2N2hWMlM3REhUUktueVZpRU0yTkNTSitocWo1ckFGWnIvS1lWbnJr?=
 =?utf-8?B?SGE5YncwaEtUZzZBSXlNQ3RyeWhuSVZBeGpTRU9jOG5nQUpZU1VzUnBYY0FU?=
 =?utf-8?B?TkZuUUJJNU5rYy9zTlZxUnRJaFJQYUFKNUs4NEwraVNSN0U0clVkVEJtRnpW?=
 =?utf-8?B?eFFSSjdPQ3dmVWphcGhKV2RCSlN2UDk0WWlXVEVjVEJBa2cvdEMvK0xvMEtq?=
 =?utf-8?B?d0dqTllPZVoxUjViZTlqc3dCMHVxWG16ZTAzMlFRU3NDTGtTd1FBVW8yRnJj?=
 =?utf-8?B?M09PZWdPRWtHdEhrWmYzUGg1ZEFKazVsT3NQVHNFWjROTU5kbFRVUlplWlRG?=
 =?utf-8?Q?Ln0H1FhX/rIfbHkyYNRVeGL/qZ3n0FkSqkfjC?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Am7YKWEt7wM3KAoBC1urhWS0Uv29c+EL99Tp25TOqT3URFjGhYmBESrmBPlGHklWNGofQbpdVOyQdeY1Cc9NrpbssWNESQkkNTOJbUpr160APHN7CahhR0NhfVB4g9Megf3CWgvpS15a5g2sCc0sV5soiceHsjNzCF62Z7oZ0mFkFWUIruVTltA2X+SfO82drSSJ76Ax7tCRAkpUbVXS7OwUa4BOGS3bmPTSEt1DWZhJwZ3EtHtAJO1WPHaNGN0ZEtNQ+OstzAGPW2ByJ3Xj4iiA72ocHy1AwPgL5m6dsWVsM+7tmEdO8Anj+DGqYAbMul63O5xbQ/1zTfWrHj/01Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 81220939-e3a7-4e90-59ee-08dec78b1544
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 07:28:50.3968 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UH+3j9hbwdM1NIHweEN99yON3dYCpzxiiZPQEYQUvXFYz2As0U6MYsdcxL6YK2C8ZDZBsG0oP3z4VSvfVzO0VA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6541
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DS4PPF69154114F.namprd11.prod.outlook.com:mid];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C4E9066F624

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYW5kcGFsLCBTdXJhaiA8c3Vy
YWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIDkgSnVuZSAyMDI2IDEzLjA0
DQo+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT47IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBT
dWJqZWN0OiBSRTogW1BBVENIXSBkcm0vaTkxNS9kaXNwbGF5OiBTa2lwIGdlbmVyaWMgcGlwZSBk
cGxsX2h3X3N0YXRlIGNvbXBhcmUgb24gTFQgUEhZDQo+IA0KPiANCj4gDQo+ID4gLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGlu
dGVsLmNvbT4NCj4gPiBTZW50OiBUdWVzZGF5LCBKdW5lIDksIDIwMjYgMjo0MCBQTQ0KPiA+IFRv
OiBLYW5kcGFsLCBTdXJhaiA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnOw0KPiA+IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiA+IFN1YmplY3Q6IFJFOiBbUEFUQ0hdIGRybS9pOTE1L2Rpc3BsYXk6IFNraXAgZ2VuZXJpYyBw
aXBlIGRwbGxfaHdfc3RhdGUNCj4gPiBjb21wYXJlIG9uIExUIFBIWQ0KPiA+DQo+ID4gPiAtLS0t
LU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gRnJvbTogS2FuZHBhbCwgU3VyYWogPHN1cmFq
LmthbmRwYWxAaW50ZWwuY29tPg0KPiA+ID4gU2VudDogVHVlc2RheSwgOSBKdW5lIDIwMjYgMTEu
MzMNCj4gPiA+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT47DQo+ID4g
PiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gPiA+IFN1YmplY3Q6IFJFOiBbUEFUQ0hdIGRybS9pOTE1L2Rpc3BsYXk6IFNr
aXAgZ2VuZXJpYyBwaXBlIGRwbGxfaHdfc3RhdGUNCj4gPiA+IGNvbXBhcmUgb24gTFQgUEhZDQo+
ID4gPg0KPiA+ID4NCj4gPiA+DQo+ID4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+
ID4gPiA+IEZyb206IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+ID4g
PiBTZW50OiBUdWVzZGF5LCBKdW5lIDksIDIwMjYgMTozOCBQTQ0KPiA+ID4gPiBUbzogS2FuZHBh
bCwgU3VyYWogPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPjsgaW50ZWwtDQo+ID4gPiA+IGdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+
ID4gPiBTdWJqZWN0OiBSRTogW1BBVENIXSBkcm0vaTkxNS9kaXNwbGF5OiBTa2lwIGdlbmVyaWMg
cGlwZQ0KPiA+ID4gPiBkcGxsX2h3X3N0YXRlIGNvbXBhcmUgb24gTFQgUEhZDQo+ID4gPiA+DQo+
ID4gPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+ID4gPiBGcm9tOiBLYW5k
cGFsLCBTdXJhaiA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQo+ID4gPiA+ID4gU2VudDogVHVl
c2RheSwgOSBKdW5lIDIwMjYgMTAuNTENCj4gPiA+ID4gPiBUbzogS2Fob2xhLCBNaWthIDxtaWth
LmthaG9sYUBpbnRlbC5jb20+Ow0KPiA+ID4gPiA+IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gPiA+IENjOiBLYWhv
bGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPiA+ID4gPiBTdWJqZWN0OiBSRTog
W1BBVENIXSBkcm0vaTkxNS9kaXNwbGF5OiBTa2lwIGdlbmVyaWMgcGlwZQ0KPiA+ID4gPiA+IGRw
bGxfaHdfc3RhdGUgY29tcGFyZSBvbiBMVCBQSFkNCj4gPiA+ID4gPg0KPiA+ID4gPiA+DQo+ID4g
PiA+ID4NCj4gPiA+ID4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiA+ID4g
PiBGcm9tOiBLYW5kcGFsLCBTdXJhag0KPiA+ID4gPiA+ID4gU2VudDogVHVlc2RheSwgSnVuZSA5
LCAyMDI2IDE6MTMgUE0NCj4gPiA+ID4gPiA+IFRvOiAnTWlrYSBLYWhvbGEnIDxtaWthLmthaG9s
YUBpbnRlbC5jb20+Ow0KPiA+ID4gPiA+ID4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gPiA+ID4gPiBDYzogS2Fob2xh
LCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+ID4gPiA+ID4gPiBTdWJqZWN0OiBSRTog
W1BBVENIXSBkcm0vaTkxNS9kaXNwbGF5OiBTa2lwIGdlbmVyaWMgcGlwZQ0KPiA+ID4gPiA+ID4g
ZHBsbF9od19zdGF0ZSBjb21wYXJlIG9uIExUIFBIWQ0KPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+
ID4gU3ViamVjdDogW1BBVENIXSBkcm0vaTkxNS9kaXNwbGF5OiBTa2lwIGdlbmVyaWMgcGlwZQ0K
PiA+ID4gPiA+ID4gPiBkcGxsX2h3X3N0YXRlIGNvbXBhcmUgb24gTFQgUEhZDQo+ID4gPiA+ID4g
PiA+DQo+ID4gPiA+ID4gPiA+IExUIFBIWSBQTEwgcmVhZG91dCBpcyBvbmx5IHBhcnRpYWxseSBy
ZWxpYWJsZSwgYW5kIHRoZSBMVCBQSFkNCj4gPiA+ID4gPiA+ID4gY29kZSBhbHJlYWR5IGRvY3Vt
ZW50cyB0aGF0IG9ubHkgYSBzdWJzZXQgb2YgdGhlIHN0YXRlIGNhbiBiZQ0KPiA+ID4gPiA+ID4g
PiByZWFkIGJhY2sgcmVsaWFibHkgYWZ0ZXIgcG93ZXIgZ2F0aW5nLg0KPiA+ID4gPiA+ID4gPg0K
PiA+ID4gPiA+ID4gPiBUaGUgZ2VuZXJpYyBwaXBlLXN0YXRlIHZlcmlmaWNhdGlvbiBjb21wYXJl
cyBkcGxsX2h3X3N0YXRlIGFzDQo+ID4gPiA+ID4gPiA+IHBhcnQgb2YgaW50ZWxfcGlwZV9jb25m
aWdfY29tcGFyZSgpLCB3aGljaCBjYW4gdHJpZ2dlcg0KPiA+ID4gPiA+ID4gPiBmYWxzZS1wb3Np
dGl2ZSAicGlwZSBzdGF0ZSBkb2Vzbid0IG1hdGNoISIgd2FybmluZ3Mgb24gTFQgUEhZDQo+ID4g
cGxhdGZvcm1zLg0KPiA+ID4gPiA+ID4gPiBEUExMLXNwZWNpZmljIHZlcmlmaWNhdGlvbiBhbHJl
YWR5IGV4aXN0cyB2aWEgaW50ZWxfZHBsbF9zdGF0ZV92ZXJpZnkoKS4NCj4gPiA+ID4gPiA+ID4N
Cj4gPiA+ID4gPiA+ID4gU2tpcCB0aGUgZ2VuZXJpYyBkcGxsX2h3X3N0YXRlIHBpcGUtc3RhdGUg
Y29tcGFyZSBvbiBMVCBQSFkNCj4gPiA+ID4gPiA+ID4gcGxhdGZvcm1zIGFuZCByZWx5IG9uIHRo
ZSBkZWRpY2F0ZWQgRFBMTCB2ZXJpZmljYXRpb24gcGF0aCBpbnN0ZWFkLg0KPiA+ID4gPiA+ID4g
Pg0KPiA+ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFA
aW50ZWwuY29tPg0KPiA+ID4gPiA+ID4gPiAtLS0NCj4gPiA+ID4gPiA+ID4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgOCArKysrKystLQ0KPiA+ID4gPiA+
ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4g
PiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiA+ID4gPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+ID4gPiA+ID4gaW5kZXggMmZh
MTBmODU4Mjc5Li44NWFkMmJjNDk2M2QgMTAwNjQ0DQo+ID4gPiA+ID4gPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiA+ID4gPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiA+
ID4gPiA+IEBAIC01Mzc0LDggKzUzNzQsMTIgQEAgaW50ZWxfcGlwZV9jb25maWdfY29tcGFyZShj
b25zdCBzdHJ1Y3QNCj4gPiA+ID4gPiA+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3VycmVudF9jb25m
aWcsDQo+ID4gPiA+ID4gPiA+ICAJaWYgKGRpc3BsYXktPmRwbGwubWdyKQ0KPiA+ID4gPiA+ID4g
PiAgCQlQSVBFX0NPTkZfQ0hFQ0tfUChpbnRlbF9kcGxsKTsNCj4gPiA+ID4gPiA+ID4NCj4gPiA+
ID4gPiA+ID4gLQkvKiBGSVhNRSBjb252ZXJ0IGV2ZXJ5dGhpbmcgb3ZlciB0aGUgZHBsbF9tZ3Ig
Ki8NCj4gPiA+ID4gPiA+ID4gLQlpZiAoZGlzcGxheS0+ZHBsbC5tZ3IgfHwgSEFTX0dNQ0goZGlz
cGxheSkpDQo+ID4gPiA+ID4gPiA+ICsJLyoNCj4gPiA+ID4gPiA+ID4gKwkgKiBMVCBQSFkgUExM
IHJlYWRvdXQgaXMgb25seSBwYXJ0aWFsbHkgcmVsaWFibGUgYW5kIHRoZSBQTEwgc3RhdGUNCj4g
PiA+ID4gPiA+ID4gKwkgKiBpcyBhbHJlYWR5IHZlcmlmaWVkIHZpYSBpbnRlbF9kcGxsX3N0YXRl
X3ZlcmlmeSgpLiBBdm9pZCBmYWxzZQ0KPiA+ID4gPiA+ID4gPiArCSAqIHBvc2l0aXZlcyBmcm9t
IHRoZSBnZW5lcmljIHBpcGUgc3RhdGUgY29tcGFyaXNvbi4NCj4gPiA+ID4gPiA+ID4gKwkgKi8N
Cj4gPiA+ID4gPiA+ID4gKwlpZiAoKGRpc3BsYXktPmRwbGwubWdyIHx8IEhBU19HTUNIKGRpc3Bs
YXkpKSAmJi4NCj4gPiA+ID4gPiA+ID4gIUhBU19MVF9QSFkoZGlzcGxheSkpDQo+ID4gPiA+ID4g
PiA+ICAJCVBJUEVfQ09ORl9DSEVDS19QTEwoZHBsbF9od19zdGF0ZSk7DQo+ID4gPiA+ID4gPg0K
PiA+ID4gPiA+ID4gaW50ZWxfbHRfcGh5X3BsbF9jb21wYXJlX2h3X3N0YXRlIG9ubHkgY2hlY2tz
IHRoZSByZWxpYWJsZSBzdGF0ZQ0KPiA+ID4gPiA+ID4gaGVuY2Ugd2UgZG9u4oCZdCB3YW50IHRv
IGFkZCB0aGlzIGhlcmUgY29uZmlnIDAgYW5kIGNvbmZpZyAyIGFyZQ0KPiA+ID4gPiA+ID4gZXhw
ZWN0ZWQgdG8gYmUgcmVsaWFibGUNCj4gPiA+ID4gPiA+DQo+ID4gPiA+ID4NCj4gPiA+ID4gPiBJ
ZiB5b3UgYXJlIHNlZWluZyBwaXBlIHN0YXRlIG1pc21hdGNoIG9uIGVpdGhlciBvZiB0aGVzZSBW
RFINCj4gPiA+ID4gPiByZWdpc3RlcnMgdGhlbiBpdOKAmXMgYSBpc3N1ZSB3aGVyZSBQSFkgaXMg
bm90IGdpdmluZyB1c2UgY29ycmVjdA0KPiA+ID4gPiA+IHZhbHVlIHNpbmNlIHRoZXNlIHR3bw0K
PiA+ID4gPiByZWdpc3RlciBtdXN0IGFic29sdXRlbHkgYmUgcmV0YWluZWQgYnkgTFQgUEhZLg0K
PiA+ID4gPg0KPiA+ID4gPiBUaGlzIGVycm9yIHNob3dlZCB1cCB3aXRoIFRCVCBtb25pdG9yIHdo
aWNoIHlpZWxkcyBlbXB0eSBzdGF0ZXMgZm9yDQo+ID4gPiA+IGZvdW5kIGFuZCBleHBlY3RlZCBz
dGF0ZXMuIFNpbmNlIHdlIGNoZWNrIGluDQo+ID4gPiA+IHZlcmlmeV9zaW5nbGVfZHBsbF9zdGF0
ZSgpIGZ1bmN0aW9uIFBMTCBzdGF0ZSB3aXRoIC5jb21wYXJlX2h3X3N0YXRlDQo+ID4gPiA+IGhv
b2sgSSB0aGluayB3ZSB3b3VsZG4ndCBuZWVkIHRvIGNoZWNrIHRoZSBQTEwgc3RhdGUgaGVyZS4N
Cj4gPiA+DQo+ID4gPiBTbyAuY29tcGFyZV9od19zdGF0ZSB3b3VsZCBjYWxsIGludGVsX2x0X3Bo
eV9wbGxfY29tcGFyZV9od19zdGF0ZQ0KPiA+ID4gV2hpY2ggbWVhbnMgZm9yIHRidCBtb2RlIGl0
IHdvdWxkIHJldHVybiBlYXJseSBhbnl3YXlzLiBTbyB3ZSBhZ2FpbiB3b250DQo+ID4gcmVxdWly
ZSB0aGlzIGNoZWNrLg0KPiA+ID4NCj4gPiA+IFdlIGFscmVhZHkgaGF2ZSB0aGlzIGJpdCBvZiBj
b2RlIGFzIEkgbWVudGlvbmVkIGFib3ZlIGluIHRoZSBmdW5jdGlvbg0KPiA+ID4NCj4gPiA+IGlm
IChhLT50YnRfbW9kZSB8fCBiLT50YnRfbW9kZSkNCj4gPiA+ICAgICAgICAgICAgICAgICByZXR1
cm4gdHJ1ZTsNCj4gPiA+DQo+ID4gSXQgbG9va3MgbGlrZSB3ZSBtYXkgYmUgdmVyaWZ5aW5nIFBM
TCBzdGF0ZSB0d2ljZSBpbiBpbnRlbF9tb2Rlc2V0X3ZlcmlmeV9jcnRjKCkuDQo+ID4NCj4gPiB2
ZXJpZnlfY3J0Y19zdGF0ZSgpIC0+IGludGVsX3BpcGVfY29uZmlnX2NvbXBhcmUoKSBkb2VzDQo+
ID4gUElQRV9DT05GX0NIRUNLX1BMTChkcGxsX2h3X3N0YXRlKSwgd2hpY2ggaXMgYSBnZW5lcmlj
IGNvbXBhcmUgYW5kIGRvZXMNCj4gPiBub3Qgc2VlbSB0byBhY2NvdW50IGZvciB0aGUgTFQgUEhZ
L1RCVCBzcGVjaWFsIGNhc2UuDQo+IA0KPiBTbyBQSVBFX0NPTkZfQ0hFQ0tfUExMICBoYXMgdGhl
IGZvbGxvd2luZyBjb2RlDQo+ICNkZWZpbmUgUElQRV9DT05GX0NIRUNLX1BMTChuYW1lKSBkbyB7
IFwNCj4gICAgIGlmICghaW50ZWxfZHBsbF9jb21wYXJlX2h3X3N0YXRlKGRpc3BsYXksICZjdXJy
ZW50X2NvbmZpZy0+bmFtZSwgXA0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgJnBpcGVfY29uZmlnLT5uYW1lKSkgeyBcDQo+ICAgICAgICAgLi4uDQo+ICAgICB9IFwNCj4g
fSB3aGlsZSAoMCkNCj4gDQo+IGJvb2wgaW50ZWxfZHBsbF9jb21wYXJlX2h3X3N0YXRlKHN0cnVj
dCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfZHBsbF9od19zdGF0ZSAqYSwNCj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgY29uc3Qgc3RydWN0IGludGVsX2RwbGxfaHdfc3RhdGUgKmIp
DQo+IHsNCj4gICAgIGlmIChkaXNwbGF5LT5kcGxsLm1ncikNCj4gICAgICAgICByZXR1cm4gZGlz
cGxheS0+ZHBsbC5tZ3ItPmNvbXBhcmVfaHdfc3RhdGUoYSwgYik7DQo+ICAgICAuLi4NCj4gfQ0K
PiANCj4gQW5kIGNvbXBhcmVfaHdfc3RhdGUgY2FsbHMNCj4gDQo+IHN0YXRpYyBib29sIHhlM3Bs
cGRfY29tcGFyZV9od19zdGF0ZShjb25zdCBzdHJ1Y3QgaW50ZWxfZHBsbF9od19zdGF0ZSAqX2Es
DQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBzdHJ1Y3QgaW50
ZWxfZHBsbF9od19zdGF0ZSAqX2IpDQo+IHsNCj4gICAgIHJldHVybiBpbnRlbF9sdF9waHlfcGxs
X2NvbXBhcmVfaHdfc3RhdGUoJl9hLT5sdHBsbCwgJl9iLT5sdHBsbCk7DQo+IH0NCj4gDQo+IEhl
bmNlIGl0IGlzIG5vdCBnZW5lcmljIGNvZGUgaXQgZ2V0cyBkaXJlY3RlZCB0byBMVCBQSFkgcG9y
dGlvbiBvZiBjb2RlLg0KPiBJZiB5b3UgYXJlIHN0aWxsIHNlZWluZyBhIG1pc21hdGNoIG1lYW5z
IHNvbWVvbmUgaXMgbm90IHNldHRpbmcgdGhlIHRidF9tb2RlLiBUaGF0IHdvdWxkIGJlIHRoZSBy
b290IGNhdXNlIG9mIGFueSBtaXNtYXRjaCB3ZSBzZWUNCj4gd2hpY2ggaXMNCj4gd2h5IHJlbW92
aW5nIHRoZSBDT05GX0NIRUNLX1BMTCgpIGlzbuKAmXQgdGhlIGNvcnJlY3Qgd2F5IHRvIGdvDQo+
IA0KPiBSZWdhcmRzLA0KPiBTdXJhaiBLYW5kcGFsDQo+IA0KDQpXZSBlbmQgdXAgY2FsbGluZyBp
bnRlbF9sdF9waHlfcGxsX2NvbXBhcmVfaHdfc3RhdGUoKSBmcm9tIGJvdGggdmVyaWZ5X2NydGNf
c3RhdGUoKSBhbmQgaW50ZWxfZHBsbF9zdGF0ZV92ZXJpZnkoKS4gVGhlIG9ubHkgZGlmZmVyZW5j
ZSB0aGF0IEkgc3BvdHRlZCB3YXMgdGhhdCBpbiB2ZXJpZnlfc2luZ2xlX2RwbGxfc3RhdGUoKSB3
ZSByZWFkb3V0IHRoZSBIVyBzdGF0ZSB3aGljaCBzZXRzIHRoZSB0YnRfbW9kZS4gTWF5YmUgdGhh
dCBnaXZlcyBhIGhpbnQgd2h5IHRoZSBidWcgd2FzIGZpeGVkIGJ5IHRoaXMgcHJvcG9zZWQgcGF0
Y2guDQoNCmludGVsX21vZGVzZXRfdmVyaWZ5X2NydGMNCuKUnOKUgOKUgCB2ZXJpZnlfY3J0Y19z
dGF0ZQ0K4pSCICAg4pSU4pSA4pSAIGludGVsX3BpcGVfY29uZmlnX2NvbXBhcmUNCuKUgiAgICAg
ICDilJTilIDilIAgUElQRV9DT05GX0NIRUNLX1BMTChkcGxsX2h3X3N0YXRlKQ0K4pSCICAgICAg
ICAgICDilJTilIDilIAgaW50ZWxfZHBsbF9jb21wYXJlX2h3X3N0YXRlDQrilIIgICAgICAgICAg
ICAgICDilJTilIDilIAgZGlzcGxheS0+ZHBsbC5tZ3ItPmNvbXBhcmVfaHdfc3RhdGUNCuKUgiAg
ICAgICAgICAgICAgICAgICDilJTilIDilIAgeGUzcGxwZF9jb21wYXJlX2h3X3N0YXRlDQrilIIg
ICAgICAgICAgICAgICAgICAgICAgIOKUlOKUgOKUgCBpbnRlbF9sdF9waHlfcGxsX2NvbXBhcmVf
aHdfc3RhdGUNCuKUlOKUgOKUgCBpbnRlbF9kcGxsX3N0YXRlX3ZlcmlmeQ0KICAgIOKUlOKUgOKU
gCB2ZXJpZnlfc2luZ2xlX2RwbGxfc3RhdGUNCiAgICAgICAg4pSU4pSA4pSAIGRwbGxfbWdyLT5j
b21wYXJlX2h3X3N0YXRlDQogICAgICAgICAgICDilJTilIDilIAgeGUzcGxwZF9jb21wYXJlX2h3
X3N0YXRlDQogICAgICAgICAgICAgICAg4pSU4pSA4pSAIGludGVsX2x0X3BoeV9wbGxfY29tcGFy
ZV9od19zdGF0ZQ0KDQotTWlrYS0NCg0KPiA+DQo+ID4gQWZ0ZXIgdGhhdCwgaW50ZWxfbW9kZXNl
dF92ZXJpZnlfY3J0YygpIGFsc28gY2FsbHMgaW50ZWxfZHBsbF9zdGF0ZV92ZXJpZnkoKSwgd2hp
Y2gNCj4gPiBmb3IgTFQgUEhZIGdvZXMgdGhyb3VnaCB0aGUgLmNvbXBhcmVfaHdfc3RhdGUgaG9v
ayBhbmQgdGhlcmVmb3JlIGFscmVhZHkNCj4gPiBhcHBsaWVzIHRoZSBwbGF0Zm9ybS1zcGVjaWZp
YyBoYW5kbGluZy4NCj4gPg0KPiA+IEJlY2F1c2Ugb2YgdGhhdCwgSSB3b25kZXIgaWYgdGhlIGdl
bmVyaWMgUExMIHN0YXRlIGNvbXBhcmUgaXMgcmVhbGx5IG5lZWRlZCBpbg0KPiA+IHRoaXMgY2Fz
ZS4gQXQgdGhlIHZlcnkgbGVhc3QsIGl0IHdvdWxkIHNlZW0gdGhhdCBQSVBFX0NPTkZfQ0hFQ0tf
UExMKCkgc2hvdWxkDQo+ID4gYWxzbyBoYW5kbGUgdGhlIFRCVCBjYXNlIGV4cGxpY2l0bHkgYW5k
IHJldHVybiBlYXJseSBpbiB0aGF0IGNhc2UsIGluIHRoZSBzYW1lDQo+ID4gd2F5IGFzIHRoZSBM
VCBQSFktc3BlY2lmaWMgLmNvbXBhcmVfaHdfc3RhdGUgcGF0aCBkb2VzLg0KPiA+DQo+ID4gLU1p
a2EtDQo+ID4NCj4gPiA+IFJlZ2FyZHMsDQo+ID4gPiBTdXJhaiBLYW5kcGFsDQo+ID4gPg0KPiA+
ID4gPg0KPiA+ID4gPiAtTWlrYS0NCj4gPiA+ID4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+IFJlZ2Fy
ZHMsDQo+ID4gPiA+ID4gU3VyYWogS2FuZHBhbA0KPiA+ID4gPiA+DQo+ID4gPiA+ID4gPiBSZWdh
cmRzLA0KPiA+ID4gPiA+ID4gU3VyYWogS2FuZHBhbA0KPiA+ID4gPiA+ID4NCj4gPiA+ID4gPiA+
ID4NCj4gPiA+ID4gPiA+ID4gIAlQSVBFX0NPTkZfQ0hFQ0tfWChkc2lfcGxsLmN0cmwpOw0KPiA+
ID4gPiA+ID4gPiAtLQ0KPiA+ID4gPiA+ID4gPiAyLjQzLjANCg0K
