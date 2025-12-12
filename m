Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CEE9CB8779
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 10:31:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DA5910E360;
	Fri, 12 Dec 2025 09:31:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CjrIqAr0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BF9010E360;
 Fri, 12 Dec 2025 09:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765531865; x=1797067865;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=86kfk/0oCn1Pe57IESLrlY9wSA3M2tPjhEw9WcN2CdY=;
 b=CjrIqAr0Z58vxHNXK7kiBzuoCLKFULwRDntV9jEaZcWdubmqYhVnNVDz
 nQm8vCiaUPno++bC/rP6pmKqZOiVJd+c5s3+g6XEH6hQfFzCsPgaNvmLN
 3opQqTF7TJyjo8xYcrF31zxuCoOugDsjHTBNVrp1y+A8yo/CUYuCkKbAv
 6K1Oodmfm8igUPyCVAT+qEZaknuI5oedfV+45dSAIo6RKkpH3x44AqQLC
 okSVAAj3qHiKfw/80RDp6CMrXCeupwaXOBrWo7Nmmjiffnqbv+sp1AV5m
 hRlvR9zABtjAl0dFtThzjNWEjAbg5a449bXZUzSJOqrtWsuFFbslSlRxo Q==;
X-CSE-ConnectionGUID: 2zoIDNoWQT2rm7kTCYJnlw==
X-CSE-MsgGUID: Wr429VM4T+msat+4yAYyCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="67260774"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="67260774"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 01:31:04 -0800
X-CSE-ConnectionGUID: 8hqbon8ZTPm9OrT6fDoA2A==
X-CSE-MsgGUID: ed/r2CE8TRC3SllzuuVVFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="197026995"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 01:31:05 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 01:31:03 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 01:31:03 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.50) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 01:31:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S0SJwrGTKS7MX3Pqjv+cYbK1NJa2NSAXrMe2H4XBppaTUhIaTWVqFIFCP2cdE0nmq/l4JzidQ1lEmUCNbopxeQdAuIyEKV4Di68TqSicx7an2ExUQhnaN8Emf29TYyusmrthJqDVOqqEJzNiRRHP+rNhHWPDKycc7Y/hwClE0OsY52FT2Sld55zP0B3maPxnq3GJNoI1u+lTV2g3ynv27af21OARedrWAYpau6hUzg2tiOmeZdiis5iH5jbo1HisN3MnS4EJj3RBHx2+8m8BKykMIte3OydPyTw0jVNKw0PxHwIJjYmAXqFZI9EEQS4xdC7Q1TY2HAo6KMd6uf185w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=86kfk/0oCn1Pe57IESLrlY9wSA3M2tPjhEw9WcN2CdY=;
 b=Umem8iOpZhn3XkNnGp7suikDVjXKv+zcXpqcGAlQ0jxOPIjSGuenoBCEa93IrQmchWmtDe9gozzZ9VGF3ZiiYRDf5YNr7f0SLbEpz49nNDRseGDRwLu1+FV4La74qvFD3dmV+nJbjm8hpF10k7IsMMAbw1xAp7BsOd8+x7mN9I5bu7pdxpndUlVtqtu/dSxx0QJHFTaBKQx8aGEmuHB9i/TSiuCwB7QorAJatU3VvYlQmz2+EmuS7lm6CVwX/rAfW013aG/7BG8J7Ex37BmZmuzh9TKy5QLYm1jGgKFpa7FNkzpR9SWu3BLgGKfzdeEJUDkz2ZDp9GROJT/XxP3Ssg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by PH7PR11MB6724.namprd11.prod.outlook.com (2603:10b6:510:1b4::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.10; Fri, 12 Dec
 2025 09:31:01 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 09:31:01 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 24/50] drm/i915/dp: Pass mode clock to
 dsc_throughput_quirk_max_bpp_x16()
Thread-Topic: [PATCH 24/50] drm/i915/dp: Pass mode clock to
 dsc_throughput_quirk_max_bpp_x16()
Thread-Index: AQHcX8kI967qj2DLEUSPVGNG1vs437Ud1HqA
Date: Fri, 12 Dec 2025 09:31:01 +0000
Message-ID: <ad36207a6474bb7fe2ddb1602e73a5adfa98aaba.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-25-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-25-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|PH7PR11MB6724:EE_
x-ms-office365-filtering-correlation-id: 79e14d2e-d865-46a3-8629-08de39612a16
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?aExnWmtoQjhLTS9ENzM2SVhiYjZHY0JPYWlZaG5FNVVJcXhVS05POVNTTTFy?=
 =?utf-8?B?R2tkc1pmbWtNTEhXbndvU0xid2Fpd0N2SXM5SkNWdDgzNVY5NFZkemxkSWhE?=
 =?utf-8?B?d3hnZGI2dTlMOFFwQkhPak42RUVPYlBTRCtHSmU1b09ncEU5S0pjcDMwUUhv?=
 =?utf-8?B?TGljQmRxZEpPQi9zRGVzRDhFYWt2MmVCQTFOaXlSYUZrR25WSnpYRExrck4z?=
 =?utf-8?B?OFQ2S0NLY29FOE9vZlY1bkUzVU5WcWhBVERWRVhaaHltWFQ1TGZtVlpFeElk?=
 =?utf-8?B?SkhmRmdxUm9wQUhhcW56TWhmUXNuNVJUa3ZFMXpTZ3pKYytQa0cremEyZis2?=
 =?utf-8?B?Z1JtbHovSmg3SXg0citQQWY3MGJ6aFBCM09ubk9Cb05XSFVoKzZFUTRuQW1h?=
 =?utf-8?B?UGRmU2Q0dlhsK2FYQ0p1SkpWbWRReFFhU3RMbllBa1RZdDY4V3YydkZpMWdU?=
 =?utf-8?B?eVVZWE81UldjcjRvMjBIcGRianFWejkraS96b202R2hic2FsbGM4YVlnOURS?=
 =?utf-8?B?c3VvL1lqc05YcU9aVDIwVEZaUDQ2NURXZnFqaGtUZm80bVpwY0d5SHY5aFZB?=
 =?utf-8?B?d1YrWU5ERlFvbWJsVmtZVG1rVmVtYnphQkVsMHNuVmtoN21PSFJqK1I5V3V3?=
 =?utf-8?B?TXpncTdLditURnczUDBSQ0s1dHRaOVVTalEzQnRrM0hQOVdsR3pLTWxGWk9k?=
 =?utf-8?B?b2o1Z2lweFFRN0toWTVMbUZqa1gzbmZmOTZtOFl5bm9ESXdtWEk0aDV6ZVhC?=
 =?utf-8?B?bk4rb3FvQmdpbUU5ZDhRcGxlM0FTWUFhSjJBK0p2aGk0dWdzd0JHc1pyU08w?=
 =?utf-8?B?RGE5MUFJQWZxOGJhOWVKYlpGRTdWR3pRL0thajRmK2cwM01Ia2h0cjdZUm8y?=
 =?utf-8?B?RWlQN3BvbkYxL3g2TTlwZkhPeUlFNm1aVndNZ1FMbFVXcVl3cjBoKzNuWmNF?=
 =?utf-8?B?OUhlWFV0WFI4bDVScG5kb3dHdFFpdjBneFozUExnSUpBYnMrME51OS8wTGdO?=
 =?utf-8?B?WXRhZ1BUdDVwamNYM3M1K2VnblVLSWo4eU53dCtrNk5MSXpJbnU3WXBiUVR5?=
 =?utf-8?B?Sm5jTVFVNk5PRjRwMVI5eUJEaXJtVmVTRTlSSjJCS0Z4QTd6YzdCbDNJLzVs?=
 =?utf-8?B?RjcwZHZKNnQxelF1RnI2RUpLYWdqbWVCTEZhdjJsdjJJSExjN1VUL3hxdE43?=
 =?utf-8?B?UWRCZWw1dVg4SkdTRnFOWS90b2dvNVYybGdDb3BUVkVaZzdJM0tLUjdEU2Vz?=
 =?utf-8?B?a0NoeFcxbG1ZdFdJanJaMi9WMXFPMHRXc2N5ZjRhM2NIRGp6dWk3UTdZeU9Z?=
 =?utf-8?B?NnErQzVDS0xEeVFuK3ZVclVUaE1wb3hYVjl6UUxMV0MzL3NEeW5mYmJoZUdX?=
 =?utf-8?B?SzJ6cGhGOUlONFExTEZlNmFmb1Vud0NNRzlEemt4YldTVzkzRjdOUWVReWxD?=
 =?utf-8?B?WEdZN0tzeWRueThlbnN0RHVrNmE4SEpYTWpONlpTMGdsK1RCR2lYMWFTTVhr?=
 =?utf-8?B?R1Bsa0w4K0J0bGpKR044dE9tV0REYlN2Y3M0Q2JZeGdCV2RmVEJLdWFSMnVj?=
 =?utf-8?B?TC9zMS9YRnhQd05TNStoSktlZGdua1JjbUR0N3dIMit4Y2pxQkRMZnVERmFH?=
 =?utf-8?B?b0JmZzZLMTczdmloYUt1YSs0QW00dVl3MFQ3bE43eWM4QkpoV0RCZHJxQnNY?=
 =?utf-8?B?SjEwTzFabzAyb0RGVFl2S21hYmFCOW9URXU1bkxLNEpjaWs3RXZQYXVsK3k2?=
 =?utf-8?B?TjNOV2MwZEZRVEdqV1NsaU9jMWRZNWw1aHNqQ0RnblBtNm9XYU9keFFFV1BZ?=
 =?utf-8?B?b0E1VVc4TU5DNTJ0bTFkWTQ3SkplWjVPeHRjOGpWYWRzOERJS1k5NzBERHlR?=
 =?utf-8?B?aU5tdFBmOTdMa0VTNkVVYzBEMWhiS2lrelpFNGFWVXA1UU1hSG9oNEtKNzNZ?=
 =?utf-8?B?emFlYjNBSDd1ZlhIRTdxT3lGeEJ2TExScGxoakpCeEdzVEJ5SGFrYkp5ay9p?=
 =?utf-8?B?MWt4TndYWmVoNFNlUnJWeU0zY3l4eEtQVUtUK01iZ3RNejkyWmE2ZlNsOWZK?=
 =?utf-8?Q?QzHnlh?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NVY3VHJCVUIvRm5zTTgvcklwY3c1ZURUcUxYdElsSVUxcVRVaVJDeGNiWk1S?=
 =?utf-8?B?VVdKVUFlNC9EU0M0UTByYis0WUVpN1RGKzBZajBUVWlyMHhPS0tXOG9lMVVq?=
 =?utf-8?B?d3N6UStSeHhWWWhDWHlRYmNaUGY1VXc1Z3M1WDdNcy9aYktMMDRVTEtlSDRz?=
 =?utf-8?B?eWJXV2c0RkVCWlkzeXBuWjhGNlUyOTBRajE4bm5Xby9BWmJIaXZ3Sk41L1BO?=
 =?utf-8?B?WlRweVh2Q2lDbmRpVTlsbG9sRkh2c1pBcDQvN2k5MVpod1doSlNpTmVuVm5O?=
 =?utf-8?B?M1V1QWRQa2lNNFo2NDBJWUMza1dPVjdMZXUxd2wxMjJQMnlpTWdJSm9DcXlR?=
 =?utf-8?B?emRCUHQ4cVNYVWRxV1A4aGsyempETm5XWmVVNEZlTUdrSTJLVFNab1B0SjRH?=
 =?utf-8?B?VlJoaWlyQkNWNWxvaDd0WEEyRWVjY3JsNENUVEdyTGRsdWhaK1Rxci84QjBS?=
 =?utf-8?B?aVMzSzBjbGNIVlhzKytUKzZxMGt3SzAvL3doVUVGUURlK3dtWEJraWV1QXVx?=
 =?utf-8?B?UTlDRmVRTXR5M3FoMmFTUVZ4R3dVcWVyZXpjMSsyVCtkQ2JkOXhXWGd6aXR6?=
 =?utf-8?B?R05QZ1VBbHhOT1lSMHFSVFdrRDJySkk1ZkN1QmszeHBhSnZQMkZhM29xMVUv?=
 =?utf-8?B?dXZJaGx0NS95RkEzOVFBWXhRZ3JXUGtHbUZYNVU1OTlLVWZEeldSdkcyL0ll?=
 =?utf-8?B?SjFENXV3UHZ1ekpsUjNKdE41S0NqaDRDeUhSdytxejAzMEJrcTRobHl0TXdl?=
 =?utf-8?B?M0tLVDVpSFFvR1g3amNSSjMwdldoVzkydG14L0dWWDZLZ3Rsa2w3ZzNGWFhM?=
 =?utf-8?B?WWlMTXB6L3B3VlV0alVuZ0w0YlpXYjBVZ0NHRGtTTk9CRC9xdVVwMUtqcFc4?=
 =?utf-8?B?dlYwUG0yb0NZK056YXY0aHd4d0t5bGdPQW9LRVliY3pyMjZqUWJ6UWRtbmZv?=
 =?utf-8?B?NTZpd2hxcVl0aGNDZEFVK3FORTlmQVdhOXZqQ3RRYzZpc2hVSVM1ekJBR1FE?=
 =?utf-8?B?VElSZkczQ0NKOUlFUWlZMTlXSVRHRFZiQ1NiZExKQ29ZTUZESDdLR1NqOUNy?=
 =?utf-8?B?VUtodFhWV1lpcS9xVVVOcEJGcFJJdW9GQjNtMWx0U05EdHEzb2t6ZmJlS1ph?=
 =?utf-8?B?OUlCTEhqY0ZiMEc4eWdsN1laK0ZrUVUzVk5VOUFVVkJLVExRVVBHY3hWVDFZ?=
 =?utf-8?B?VjhkaFZpZXZZMUQxQ2tRdk14M2ZWSHNiSHRDSXMwUDJxTXpvV3U0OGNzekZz?=
 =?utf-8?B?eVdnMnVpWmh2RHdFeG1sN1gwYXV3T0xqc0ZRWUFVekMrMjNUc1JTZTQra0FJ?=
 =?utf-8?B?dzFOMm1WNFhyTTcrNFJ4ajgvbk54UXFzenp6Zzg0K1VrTEcyaE9kS3lwQjBr?=
 =?utf-8?B?blIxcXZSbUtlZjJCWktDcVRjZ3dpRzQvZmM4ME5GdlhyMW5nUXhBMkxrNUJK?=
 =?utf-8?B?VEROWU5sTTNBQnBnSDBaSmE4dnZYTTlCMTdSdm45UzdTUkNOUENaZEEyN1h6?=
 =?utf-8?B?a0srdEhmMHQ1SmdYZTNSclJ1dHczUkJucE1ZcklhZnF6UUt6cUNpeTZHdERw?=
 =?utf-8?B?dkZpaEhmSkUrOFlXZzZqeTVHQ2hOWGV3REVzVzZUY2dEaVBhTzYrL0o0cVNm?=
 =?utf-8?B?aTBNWkI5cHJzSFQvZjhzajVlTmVLTUhtUkJkOWNhSUpHVG4zbldHRFVjaEFV?=
 =?utf-8?B?bS85RGNHcklpbFc1a0tnNDBpWnlEY3VXakZzTzV1aEdtZGVNOGhoQzdEdExv?=
 =?utf-8?B?aHJUZkc3TjFxUGlLaVlFVGNxK1ZHcUh2d3ZWM3FPdUp0NFBFcU9qVXAybEJi?=
 =?utf-8?B?VldlWHhqWGk3b1BJV25xN1Vmb2JhVi9lWEFRQy9ibm5rUWQwSWpIZDZKOEFj?=
 =?utf-8?B?ZTRieStxWnJXdFVKdExhT1pZV0t3UE1zL3FyMFlSYmRGQ2hRWUhDZ1VsSVpm?=
 =?utf-8?B?YW5TcUVDdjhBR3MvejVVdndvT1BXZ1QveGxCUDlkQlpLRThRZjI5REVKaE1B?=
 =?utf-8?B?L1RDVUIwc01vRHNDcjVHNFY3bitRbzdOdGtjeXMzd2dlZk9nemoxeUhQbG01?=
 =?utf-8?B?OVFxL0JVZy9RZ3NtdXZBNGRLSmZhODU1SjFldTB4djRsY2ZZSFhKVU5adTZa?=
 =?utf-8?B?bVZzWmQ3ZjR4Y0JJcXd6c01DWW1qVXF3eVlVa29aVDRZY1F0dy8rSmcvaGow?=
 =?utf-8?Q?qN5gsE3XvF/WEVC6j6QyYQs=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <583AB4D334C11645BDB1034CF03AF420@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79e14d2e-d865-46a3-8629-08de39612a16
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 09:31:01.3513 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4S7alEe7m2UjyBIqo89p+jiyvOd4RSbdF6aBjXLfZYd4KyupFPLeFmFTbmv/IrtNFt7HeCVcwxGwnHFSjHG91RuOppGLevBzaGXdd25B95Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6724
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjQ5ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFBy
ZXBhcmUgZm9yIGZvbGxvdy11cCBjaGFuZ2VzIHVzaW5nDQo+IGRzY190aHJvdWdocHV0X3F1aXJr
X21heF9icHBfeDE2KCkNCj4gd2l0aG91dCBhbiBpbnRlbF9jcnRjX3N0YXRlIHBvaW50ZXIuDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0t
LQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDEwICsrKyst
LS0tLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygt
KQ0KPiANCg0KUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFw
aWxsYWlAaW50ZWwuY29tPg0KDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMNCj4gaW5kZXggNTRhMDM3ZmNmNTExMS4uMTkzZDljMjA3OTM0NyAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBAQCAtMjYxNiwxMSArMjYxNiw4
IEBAIGludCBpbnRlbF9kcF9kc2NfY29tcHV0ZV9jb25maWcoc3RydWN0DQo+IGludGVsX2RwICpp
bnRlbF9kcCwNCj4gwqANCj4gwqBzdGF0aWMgaW50DQo+IMKgZHNjX3Rocm91Z2hwdXRfcXVpcmtf
bWF4X2JwcF94MTYoY29uc3Qgc3RydWN0IGludGVsX2Nvbm5lY3Rvcg0KPiAqY29ubmVjdG9yLA0K
PiAtCQkJCSBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSkNCj4g
KwkJCQkgaW50IG1vZGVfY2xvY2spDQo+IMKgew0KPiAtCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxh
eV9tb2RlICphZGp1c3RlZF9tb2RlID0NCj4gLQkJJmNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21v
ZGU7DQo+IC0NCj4gwqAJaWYgKCFjb25uZWN0b3ItPmRwLmRzY190aHJvdWdocHV0X3F1aXJrKQ0K
PiDCoAkJcmV0dXJuIElOVF9NQVg7DQo+IMKgDQo+IEBAIC0yNjQwLDcgKzI2MzcsNyBAQCBkc2Nf
dGhyb3VnaHB1dF9xdWlya19tYXhfYnBwX3gxNihjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY29ubmVj
dG9yICpjb25uZWN0b3IsDQo+IMKgCSAqIHNtYWxsZXIgdGhhbiB0aGUgWVVWNDIyLzQyMCB2YWx1
ZSwgYnV0IGxldCdzIG5vdCBkZXBlbmQNCj4gb24gdGhpcw0KPiDCoAkgKiBhc3N1bXB0aW9uLg0K
PiDCoAkgKi8NCj4gLQlpZiAoYWRqdXN0ZWRfbW9kZS0+Y3J0Y19jbG9jayA8DQo+ICsJaWYgKG1v
ZGVfY2xvY2sgPA0KPiDCoAnCoMKgwqAgbWluKGNvbm5lY3Rvci0NCj4gPmRwLmRzY19icmFuY2hf
Y2Fwcy5vdmVyYWxsX3Rocm91Z2hwdXQucmdiX3l1djQ0NCwNCj4gwqAJCWNvbm5lY3Rvci0NCj4g
PmRwLmRzY19icmFuY2hfY2Fwcy5vdmVyYWxsX3Rocm91Z2hwdXQueXV2NDIyXzQyMCkgLyAyKQ0K
PiDCoAkJcmV0dXJuIElOVF9NQVg7DQo+IEBAIC0yNzA0LDcgKzI3MDEsOCBAQCBpbnRlbF9kcF9j
b21wdXRlX2NvbmZpZ19saW5rX2JwcF9saW1pdHMoc3RydWN0DQo+IGludGVsX2Nvbm5lY3RvciAq
Y29ubmVjdG9yLA0KPiDCoA0KPiDCoAkJbWF4X2xpbmtfYnBwX3gxNiA9IG1pbihtYXhfbGlua19i
cHBfeDE2LA0KPiBmeHBfcTRfZnJvbV9pbnQoZHNjX21heF9icHApKTsNCj4gwqANCj4gLQkJdGhy
b3VnaHB1dF9tYXhfYnBwX3gxNiA9DQo+IGRzY190aHJvdWdocHV0X3F1aXJrX21heF9icHBfeDE2
KGNvbm5lY3RvciwgY3J0Y19zdGF0ZSk7DQo+ICsJCXRocm91Z2hwdXRfbWF4X2JwcF94MTYgPQ0K
PiArCQkJZHNjX3Rocm91Z2hwdXRfcXVpcmtfbWF4X2JwcF94MTYoY29ubmVjdG9yLA0KPiBhZGp1
c3RlZF9tb2RlLT5jcnRjX2Nsb2NrKTsNCj4gwqAJCWlmICh0aHJvdWdocHV0X21heF9icHBfeDE2
IDwgbWF4X2xpbmtfYnBwX3gxNikgew0KPiDCoAkJCW1heF9saW5rX2JwcF94MTYgPSB0aHJvdWdo
cHV0X21heF9icHBfeDE2Ow0KPiDCoA0KDQo=
