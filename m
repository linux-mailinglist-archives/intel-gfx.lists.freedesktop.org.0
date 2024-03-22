Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B4D88688A
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 09:52:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E16410F187;
	Fri, 22 Mar 2024 08:52:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nrAVZGBH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D6B310F187
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 08:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711097519; x=1742633519;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YeamXzETLsNt3ar5pU89tAAHd2OujjoAZ8Y0cCb8BrY=;
 b=nrAVZGBHHUC1Y1Br8gDGPrvXnNrI2zqTchXaie3nrEKcUS/i6DYcUjkE
 wxaAAoTKuekP2VI4Okg3g/W9LFY5DKHlzRcG+ghvK1CcBnJ06xeKJ0ZGA
 ejppyE4gBchnVFfVeIkWaqPO/2yjosDsrD9hSMveKd9h5xnFgeGWYSiTo
 1CMB1JkYBEREEu2p7f/6O3comtUJSYU/eA1faE2K7I7WzLAMPjCprtf0x
 V9mbFu88hHs3sXCkGC79a95xILcJMbLjdZlh2SiZqeWmLwllwjxd+zrOE
 1kxBFbQd3H3hsXL3jMFqU4H1wPZcMw0hwyfv1NKJaE5qCOplMsy/hiSoR w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="23621912"
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="23621912"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 01:51:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="19491027"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Mar 2024 01:51:57 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 22 Mar 2024 01:51:57 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 22 Mar 2024 01:51:57 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 22 Mar 2024 01:51:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aRBEcpXfrbqyLT9bMa/d4IDeXQ9YQ2keWPM0Cfd3taOcZWnm0Ynqlf1/C1+kPIVDYHul/jivn0kt0UXjOGyZztVjKhzKPpO+xkArYR6dnZ7At9MIjXx0/sTxa9SS8I9EyUVNN8I/D50eFT91C3yiO4UmgRpTZbrGbcHQa1QlcRNtNjPCfRHCf1L5OFHPW3WHNNqer7zPxFklYwDV2QqrMMaa+bQFf/gUgUUI64ZdtaaxT1KCOe6Pql8+h+ReJvJGlzLq8uk/XwKOXlWQaqFXDFCxPyUGCauo+MLkmcDPXyVhuZx3O5gaDqLYqCZI7euOaND33X21loKxwehngFQElA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YeamXzETLsNt3ar5pU89tAAHd2OujjoAZ8Y0cCb8BrY=;
 b=VK/gX9pHKsG9TNHWJ/lCsgAsL7Hm+SCqkuaqRHseG1W8BGvwos75ed1vbjEjB+RPsMQkd13VwiXbfq/mg3VPz13iopWdjI22d/DzywoFp4/s8t6qxO8rsofhk5Stk1d5tXehh1KYVVww5GAV+IpFclGkn99oxhJi6E62cs8DUlv7m8Huh1L5AWwO99jBOrdvZ5Dp9EG6xXbpAwKDiKjw4ksZh3mj/t9MWlcxG1wTcP11YFug7rv1DCDNdsEkiX0z3As2O7lVy7Qf0iBcEFEnB1mpoU3KTTv4KfVYXnsP3loW5TDNkGTEfKlK/Sj1kGxxdRysn+PqaPLm5TJ78bYowg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by IA0PR11MB7308.namprd11.prod.outlook.com (2603:10b6:208:436::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.24; Fri, 22 Mar
 2024 08:51:50 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7409.022; Fri, 22 Mar 2024
 08:51:50 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Manna, 
 Animesh" <animesh.manna@intel.com>
Subject: RE: [PATCH v4 1/5] drm/i915/psr: Add missing ALPM AUX-Less register
 definitions
Thread-Topic: [PATCH v4 1/5] drm/i915/psr: Add missing ALPM AUX-Less register
 definitions
Thread-Index: AQHadq8tvDAQfsUjyk+wrzMys26EMrFDfrfg
Date: Fri, 22 Mar 2024 08:51:50 +0000
Message-ID: <IA0PR11MB7307193888782F5A461844C9BA312@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240315080222.72838-1-jouni.hogander@intel.com>
 <20240315080222.72838-2-jouni.hogander@intel.com>
In-Reply-To: <20240315080222.72838-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|IA0PR11MB7308:EE_
x-ms-office365-filtering-correlation-id: 709dbe92-15ee-4c96-40c0-08dc4a4d509a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PSGkAQV/TIhP+Y8SW/gh23iHz4y2sX5Y55ovJ4syaGmjU6XEyzzNEK9pdXOi64t6AsRRGyYGnkEYA1gTS0M3RTn5b9xUb+a2yzecVkKj4ux9EDBSyXzIL6JJeq5uGFlBEGa3XVgCvVQV7zz64zpjjtJLiZ3HXu6cSnxk2Jhq6Mg/JztlMRgRFt+zPc+iMgppTiA9vLcN1PjMR/Xv6d/MoIIHROZ2Ou/P8UXKSXqqNv4m+q1/MtBGoQ31khdbbLCavNyMe+YbafkzZwJBGP7Ng6DRdrxFVUXfUGpbVA5JEnmrq/Xyvgg17JhtfQr3w6AbBekHjYWPyvwaWzLigVe9odswzWXVkKNTyLHywjGpe0EdydHar2AZf3Uic8mllPQ7wJY+jrKgfFozEe15fSmmu8PhibiV2CoerGQhstE3wR7FLGj1wa8EZ3kpSPmocI8cZx1VI/gSl9AgfXl2DUWWR78w7q0pnDEkfRMIfEouS+Fr1/6RyVk6cneIPc32Wuy6Hp19VhqPW0pp4jhb0lwlsEVyNq7u7JtGa/GNn4umbDEmHT9FfUqdQO0m9qpcbrg7B6nswh4WtKoTiaXbwW+Didk19Cmp7zxqa2K3cNmDLG8B1P7JExdR9VlLL8zonghdLrMoYD2Ni0Hoi0xw7VFNMFRDXobiTct4WIVXurNxWtDvlYWeyOZDS2l19ioWcHiajwnLXY2eahcuxhdSCYu7clHHSth/w9LHjlPSKVH6OLk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?alhZNHRnYTZHai8rblRnZEhUY2ZSbjgxMmhYQTBqZHlEc2xZb211VjJwaXNr?=
 =?utf-8?B?YmhQQ1lVeFVwUktOOTJzZEt4MU55YkhEQlVqS1pBUFpIZVZPOThrK05iVWVT?=
 =?utf-8?B?Y3U5Yng4UVVOeEdBMVF4QWNKdERqekwrQmRIWS9tbFdtVDhveWEvdjZrbzhT?=
 =?utf-8?B?MGpzaDFUUGpaajdBRXJ2QXhlM0d2WWxDL0FqZ0tzdUpqTWdleDhqVUJSYXh1?=
 =?utf-8?B?TFFQZjh6TXNHREkrSlE4dlQzczVsaWM4SEEzdVppd0NpVEFtYm9OZU4yNnBx?=
 =?utf-8?B?ZGNtakV1ZTJvTE5YakRhbG13dUFDTmRTRDRxRDhRcUtTSkVaYkpwNktTWHdj?=
 =?utf-8?B?dDVxM1VLRU9YTFFCWEhqY2pZenhSMU5ZQ3FIOFJKdzZFWXVpWFRud25DbjVP?=
 =?utf-8?B?c2cxZW54NU0wSHBDSXhjSFMwR2RiT21Hc0RzSEJQa0F2SHJTdXUvWjJhZ1h1?=
 =?utf-8?B?eElHc24rQUFINStaRmV6cE0rL2VJQVhUdXBNM1JqSmZRZ3c4dUE3TDBFa1Rr?=
 =?utf-8?B?ODZYcVZia1g4ZkU5UUtnY09VNGlpeXNxS1d4UENjdVJGMEhyVVZYbEphYlFu?=
 =?utf-8?B?dkppNUt6MWFYTk1RM2dJZFI4dkR4djQreGJuekJLSFh4c1VQVDZvczhKM2Fq?=
 =?utf-8?B?aVlLUjRQazRNZnJER0VFTEU1blE5UlQ0a0xZM0dCR1lqUFVtWndJN3lCWE50?=
 =?utf-8?B?M3BldjNSamRpbXpKZDVyeFhQQmhhTlVUaEllYm5jY0YxdzNiOE8zNW94bWVz?=
 =?utf-8?B?eVJkVTJOOGtxS3V1RUV3blM4aSsvbjEvZEpHV2JtZUJZQ1I4eVBRNi8vcTJ3?=
 =?utf-8?B?SEZ5cFBqME9YWFhnMVF2aW5QcDE0aGhoem93Wmd6L1hTTno3cWFDeHBVejFF?=
 =?utf-8?B?RlB1aStScEpyK2ZnbzNxRlJqWnJSSE13LzhIeXRaOEt6akcrdnhCRUQzR012?=
 =?utf-8?B?aDB5SCsxUjA0NVl5L0FIamR0YkNhNTgwQ0pWamowYk5sQmkvZ1FVVDJrSjhW?=
 =?utf-8?B?TTJXYVpNamFuZEVLeXhJcU5FckltcEp1NmlyRTYxc0U3SjkrNEh1WmdaSTBj?=
 =?utf-8?B?S0N0T01jOU1ibmRTSUw4cUFwaTBPejl1dVhSN1k2VThXdmlZcW5tZDRKN1k5?=
 =?utf-8?B?ZkhWY09uTmNSMXgyaUNrSFdoUStIWXQwZlJBSWM0blVOS1loSUE1ZFFMYWJj?=
 =?utf-8?B?RmVybVlkRC9QVnFjT0FBc3BuMHJoVytqblZuMkRsN1hxVGc0di9CWDJDTzcz?=
 =?utf-8?B?c2lYbUZYRUNrMGllVC9QTWc2WUd4MFVZNUMvQW1JbHE1eHJKc1R6bWNkSkV1?=
 =?utf-8?B?cjdUS0UyeDNHVnNLWjQyWUNIMVNDQllvWE95NUtxcmsyS0t3UEdpTWhPc0VO?=
 =?utf-8?B?ZW9PM014YU5Ca21qbU1NT2VZSlA3cmljTnZUbjJqejBVUTZETTY2L1NsSk1D?=
 =?utf-8?B?ZFhVcW1KYUdDRlByTUhjc1c5Z0VkczY0S01LUnM0aHVPY3ZWWDdld1c1OEZy?=
 =?utf-8?B?OXF4VFBIMk4vZVBkNzhPbW43QXVBQkQxSzR3R3AzZnBzZVQxcXhuaWVzeTQz?=
 =?utf-8?B?VzcwRHlDZTROUGpORUd4SUVVdlB4Mm9vUXc4cnd1YW5kTWpVZUZ3akZaamZC?=
 =?utf-8?B?SlVYQjJkb1BNZEtaMHNOcVJlTGQvRmlKbUNUblRLZ1hDMno5UzJ2aUh6Q1lt?=
 =?utf-8?B?WmRoYUxnSXhpdnRjbklNbzJGV1V0dWtYVlFkd1k2aTFBcC8vOUE2M0dwck03?=
 =?utf-8?B?cHYyMWFxZDNJMWF4QUtBWkJ4M0dMc1IzQXRJUDVYazZDL085b0UrdnRBUzVh?=
 =?utf-8?B?dkhQZkc4ZXh0ekJabkxwaElOaDh6K0pkbUxkNjFwTEQwSHpKNVNNaFU5ZUtv?=
 =?utf-8?B?ckpXQUYwTDlqQW9aMHg1blhaclhnL1k5d0w5c3FQeEtlenpCcmJsaUNkb3hD?=
 =?utf-8?B?bzdBa2IyVlB6d3RaSDNza0tRQmppWE1mNm9DekdGalBHVm9OKzN6dk5telNQ?=
 =?utf-8?B?TVg4ZFV5YkhUMFBOa3A2WjJ3TEdJbEpvVHZaOEJLcEJYN0RZZVdhSW1Nd3B4?=
 =?utf-8?B?VXU2dytPZUs0elNXcWFZMStVanRHLzhXamd2V0dSdWdwMW4zUDR3RUh4VlE0?=
 =?utf-8?Q?jO8RTfyXjDY0/ZXUJ6KSpcrke?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 709dbe92-15ee-4c96-40c0-08dc4a4d509a
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2024 08:51:50.4414 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eUu3qZPEzO9pi9DrLGjugfkWWCNkheYr6kP1FLaLfnu54y4S/ilCE+pZU4NDJsgZKEqzNN1wgg1s/M9it92yKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7308
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEhvZ2FuZGVyLCBKb3VuaSA8
am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTZW50OiBGcmlkYXksIE1hcmNoIDE1LCAyMDI0
IDE6MzIgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+OyBNYW5uYSwgQW5p
bWVzaA0KPiA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBNdXJ0aHksIEFydW4gUiA8YXJ1bi5y
Lm11cnRoeUBpbnRlbC5jb20+Ow0KPiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGlu
dGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHY0IDEvNV0gZHJtL2k5MTUvcHNyOiBBZGQgbWlz
c2luZyBBTFBNIEFVWC1MZXNzIHJlZ2lzdGVyDQo+IGRlZmluaXRpb25zDQo+IA0KPiBDb3VwbGUg
b2YgQUxQTSBBVVgtTGVzcyByZWxhdGVkIGZpZWxkcyBhcmUgbWlzc2luZyBmcm9tIEFMUE0gcmVn
aXN0ZXINCj4gZGVmaW5pdGlvbnMuIEFkZCB0aGVzZSBhbmQgcmVtb3ZlIHNvbWUgZHVwbGljYXRl
IGRlZmluaXRpb25zLg0KPiANCj4gQnNwZWM6IDcwMjk0DQo+IA0KPiBWMjogYWRkIEJzcGVjIHJl
ZmVyZW5jZQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dh
bmRlckBpbnRlbC5jb20+DQpSZXZpZXdlZC1ieTogQXJ1biBSIE11cnRoeSA8YXJ1bi5yLm11cnRo
eUBpbnRlbC5jb20+DQoNClRoYW5rcyBhbmQgUmVnYXJkcywNCkFydW4gUiBNdXJ0aHkNCi0tLS0t
LS0tLS0tLS0tLS0tLS0NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzcl9yZWdzLmggfCAxMiArKysrKysrKy0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGlu
c2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3JfcmVncy5oDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3JfcmVncy5oDQo+IGluZGV4IDg0MjdhNzM2ZjYzOS4uYjAw
NDY3MmQxZGViIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzcl9yZWdzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3JfcmVncy5oDQo+IEBAIC0zNDgsOSArMzQ4LDEzIEBADQo+ICAjZGVmaW5lIFBPUlRfQUxQ
TV9MRlBTX0NUTCh0cmFuKQ0KPiAJX01NSU9fVFJBTlMyKHRyYW4sIF9QT1JUX0FMUE1fTEZQU19D
VExfQSkNCj4gICNkZWZpbmUgIFBPUlRfQUxQTV9MRlBTX0NUTF9MRlBTX1NUQVJUX1BPTEFSSVRZ
DQo+IAlSRUdfQklUKDMxKQ0KPiAgI2RlZmluZSAgUE9SVF9BTFBNX0xGUFNfQ1RMX0xGUFNfQ1lD
TEVfQ09VTlRfTUFTSw0KPiAJUkVHX0dFTk1BU0soMjcsIDI0KQ0KPiAtI2RlZmluZSAgQUxQTV9D
VExfRVhURU5ERURfRkFTVF9XQUtFX01JTl9MSU5FUwkJNQ0KPiAtI2RlZmluZSAgQUxQTV9DVExf
RVhURU5ERURfRkFTVF9XQUtFX1RJTUUobGluZXMpDQo+IAlSRUdfRklFTERfUFJFUChBTFBNX0NU
TF9FWFRFTkRFRF9GQVNUX1dBS0VfVElNRV9NQVNLLA0KPiAobGluZXMpIC0gQUxQTV9DVExfRVhU
RU5ERURfRkFTVF9XQUtFX01JTl9MSU5FUykNCj4gLSNkZWZpbmUgIEFMUE1fQ1RMX0FVWF9MRVNT
X1dBS0VfVElNRV9NQVNLDQo+IAlSRUdfR0VOTUFTSyg1LCAwKQ0KPiAtI2RlZmluZSAgQUxQTV9D
VExfQVVYX0xFU1NfV0FLRV9USU1FKHZhbCkNCj4gCVJFR19GSUVMRF9QUkVQKEFMUE1fQ1RMX0FV
WF9MRVNTX1dBS0VfVElNRV9NQVNLLCB2YWwpDQo+ICsjZGVmaW5lICBQT1JUX0FMUE1fTEZQU19D
VExfTEZQU19DWUNMRV9DT1VOVF9NSU4JCTcNCj4gKyNkZWZpbmUgIFBPUlRfQUxQTV9MRlBTX0NU
TF9MRlBTX0NZQ0xFX0NPVU5UKHZhbCkNCj4gCVJFR19GSUVMRF9QUkVQKFBPUlRfQUxQTV9MRlBT
X0NUTF9MRlBTX0NZQ0xFX0NPVU5UX01BU0ssDQo+ICh2YWwpIC0gUE9SVF9BTFBNX0xGUFNfQ1RM
X0xGUFNfQ1lDTEVfQ09VTlRfTUlOKQ0KPiArI2RlZmluZSAgUE9SVF9BTFBNX0xGUFNfQ1RMX0xG
UFNfSEFMRl9DWUNMRV9EVVJBVElPTl9NQVNLDQo+IAlSRUdfR0VOTUFTSygyMCwgMTYpDQo+ICsj
ZGVmaW5lICBQT1JUX0FMUE1fTEZQU19DVExfTEZQU19IQUxGX0NZQ0xFX0RVUkFUSU9OKHZhbCkN
Cj4gCVJFR19GSUVMRF9QUkVQKFBPUlRfQUxQTV9MRlBTX0NUTF9MRlBTX0hBTEZfQ1lDTEVfRFVS
QVRJT04NCj4gX01BU0ssIHZhbCkNCj4gKyNkZWZpbmUgIFBPUlRfQUxQTV9MRlBTX0NUTF9GSVJT
VF9MRlBTX0hBTEZfQ1lDTEVfRFVSQVRJT05fTUFTSw0KPiAJUkVHX0dFTk1BU0soMTIsIDgpDQo+
ICsjZGVmaW5lICBQT1JUX0FMUE1fTEZQU19DVExfRklSU1RfTEZQU19IQUxGX0NZQ0xFX0RVUkFU
SU9OKHZhbCkNCj4gCVJFR19GSUVMRF9QUkVQKFBPUlRfQUxQTV9MRlBTX0NUTF9MRlBTX0hBTEZf
Q1lDTEVfRFVSQVRJT04NCj4gX01BU0ssIHZhbCkNCj4gKyNkZWZpbmUgIFBPUlRfQUxQTV9MRlBT
X0NUTF9MQVNUX0xGUFNfSEFMRl9DWUNMRV9EVVJBVElPTl9NQVNLDQo+IAlSRUdfR0VOTUFTSyg0
LCAwKQ0KPiArI2RlZmluZSAgUE9SVF9BTFBNX0xGUFNfQ1RMX0xBU1RfTEZQU19IQUxGX0NZQ0xF
X0RVUkFUSU9OKHZhbCkNCj4gCVJFR19GSUVMRF9QUkVQKFBPUlRfQUxQTV9MRlBTX0NUTF9MRlBT
X0hBTEZfQ1lDTEVfRFVSQVRJT04NCj4gX01BU0ssIHZhbCkNCj4gDQo+ICAjZW5kaWYgLyogX19J
TlRFTF9QU1JfUkVHU19IX18gKi8NCj4gLS0NCj4gMi4zNC4xDQoNCg==
