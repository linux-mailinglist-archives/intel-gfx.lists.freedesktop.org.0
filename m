Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91555BF0328
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 11:35:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F101A10E374;
	Mon, 20 Oct 2025 09:35:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PIFKhGiz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A4E110E35C;
 Mon, 20 Oct 2025 09:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760952941; x=1792488941;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Lzh/nb/8pRsjNAUxMgUpR5txhUNri+eao1XiIrF5TtI=;
 b=PIFKhGizhEBqZF0vKqPsgCF0vjrbDE1S7aBkV1qK0XNCbnLUV3Jz9eqU
 4zYCiwI//hkb9/sSwXgfOgjp5I3sBeBcs4FnFLzKGh1m0wbQA0ZBGBhxD
 xpqIAJflAks+wQm1c0spYWsXu259CeJ0JzF3//Zdpp9ieN78c9Q+dfW0H
 6h3MCi7tBp/owhi87rMmvDG3mbEp+WnBBWpFigbkInuADH/yCBjb54SbB
 FzkI6RMnWkpHQSfnTZdOGqJ6lUKDeR7pbPRz27iDX+Bfo7CbUPUOfaTVY
 yqyjEAAFM7JoL2uyAYyJz+5sYeHNchuerxuTQw4fK/ZsqRzx78/W6kcSz w==;
X-CSE-ConnectionGUID: /z9labp3QLGADfjhNpTYEQ==
X-CSE-MsgGUID: ugPsxbxZT56zzNNRKRNkIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11587"; a="74503771"
X-IronPort-AV: E=Sophos;i="6.19,242,1754982000"; d="scan'208";a="74503771"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 02:35:40 -0700
X-CSE-ConnectionGUID: IpUlidyZThiTXxERVntSSA==
X-CSE-MsgGUID: FctLvs6xSF+14P76Tz/wQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,242,1754982000"; d="scan'208";a="183304212"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 02:35:39 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 20 Oct 2025 02:35:39 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 20 Oct 2025 02:35:39 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.29) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 20 Oct 2025 02:35:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FnA72yCmZFSxmwMLq5tgSINDUONMsnN7FrrLPxSvVHFF3aepJgInPjZrRNXCiz1c6gi+l70jL98fF1ikS1nlp6EzRKagIENvjcdprYRPJVzSWRDecU+38pxcmG/+Tu33mwDpj/0GJgvGOwMVS6w0/eHkF7I4oA67dUg27ffEhQz4geyh3BtflbUx/2EV3Gg94vLzw+GmSIdvYz5UKfhXUGDVY8Z1OC+iZiwZ4HKVlIyHO76oOWIB0YYeHEZkkxfT4CwTQ7ca+3ymDwspgJM4VkpzcQ6fBM+6YYSi1/+n0yGjKV+U2IhBP+p6gMWB+wl5l0Oo+iHhmO8RTIqki8RiUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lzh/nb/8pRsjNAUxMgUpR5txhUNri+eao1XiIrF5TtI=;
 b=lQTqJf3qe96F/nrFeIK/VE/88b56LfWzv/xQcdxMG14HljVWWfmYZ3i2DYpsB/9y6nfEoXtXBKkcagxq1xcL7V+cDe4VCvRI9etcg/Kdv7NuzM5ewZuNPP7cOsmn7eil/EbxpmtLd2U53vNAqfmUh5APmWPHVThBxvuHTl96M00vIqwZ3jzlD4WN1MLsNS0ob4ocRbqmJzJJevXJRTeiI8foGN21e6qFAun6wE1AEE5ZWa/W3amEIAiEj46YZ+AFRkzzjtu2NSl5DFvT4teWyXUbAnY5Te3bl30z7rxXVdyYAXnkLy1zbgiwqHbp6fEm9Fr4EIc6dsMaI8h7M0gB+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SA3PR11MB7488.namprd11.prod.outlook.com (2603:10b6:806:313::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.16; Mon, 20 Oct
 2025 09:35:36 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9228.015; Mon, 20 Oct 2025
 09:35:36 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Sousa, 
 Gustavo" <gustavo.sousa@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Coelho, Luciano"
 <luciano.coelho@intel.com>, "Atwood, Matthew S" <matthew.s.atwood@intel.com>, 
 "Chauhan, Shekhar" <shekhar.chauhan@intel.com>, "Heikkila, Juha-pekka"
 <juha-pekka.heikkila@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "Bhadane, Dnyaneshwar"
 <dnyaneshwar.bhadane@intel.com>, "sai.teja.pottumuttu@intel.com"
 <sai.teja.pottumuttu@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>, "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "Vodapalli, Ravi Kumar" <ravi.kumar.vodapalli@intel.com>
Subject: Re: [PATCH 24/32] drm/i915/xe3p_lpd: Introduce pixel normalizer
 config support
Thread-Topic: [PATCH 24/32] drm/i915/xe3p_lpd: Introduce pixel normalizer
 config support
Thread-Index: AQHcPYJiiJcofSUW60Wm6M4ORqTturTDURGAgAd9h4A=
Date: Mon, 20 Oct 2025 09:35:36 +0000
Message-ID: <c191b93abc493c57c3340d7c75c53a205aaafcc4.camel@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-24-d2d1e26520aa@intel.com>
 <89c53f433c7cd805e803d941d67b6188db730c01@intel.com>
In-Reply-To: <89c53f433c7cd805e803d941d67b6188db730c01@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SA3PR11MB7488:EE_
x-ms-office365-filtering-correlation-id: 06fae219-6f90-4d28-ae39-08de0fbc063e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|10070799003|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?eGVmbDMwUDFvcmdST3hTMUp5eXhjS0Y5L0RsT2I3WlJVZ3RSWkU2ZVJTanRO?=
 =?utf-8?B?eUZpZUJBS0pTSXc5ZjJ3aU01U2I2N1EwUUFuVVhNVkNRWkFQSmdiUVYxRlN0?=
 =?utf-8?B?eGdSdmlIdHN5MGRoQy9jMjgwNVVkOUM0VkhkMy9EYWI2QjE3dmVQb2VRVzA4?=
 =?utf-8?B?NlBTTUhSRDE4NUdMTVZSVzdtN1VmR250SFFvTHVQTDQrR3J4MnVab0pvbm9H?=
 =?utf-8?B?RGdNQklNYXJVU01jS09CS3h1R3BkRzZieGVGaXJNam4xZWpyeExPSlI4MWpD?=
 =?utf-8?B?YllRdmUvMGVGMjJ3UHcyYTBCY3UzRXpINTBvVzRmMUJZMm8waGpGTTBBYVdu?=
 =?utf-8?B?TDR6S0h5dUZnQjZEeVRISy90bG00a1lyOEF4Q1BYWnJyREZwbFg3UUJGNXhU?=
 =?utf-8?B?c2EwMjFsVmRFaWRYcUdqSlBxRlBjbFBsTlRiSWJxMHJmTnRpRlNrUlRFWkc3?=
 =?utf-8?B?bWVHUE9HdHU5TmpOS05JSjVyUXU2VkNOQlY1czA0Y1NMaHFPNWlMQ3FIWlI1?=
 =?utf-8?B?Ty80ZzdnZExITktTdmV0NW5DUVBqbXl5cWJNZ0piMC9kVEZZR2NtVUxKdlBo?=
 =?utf-8?B?WXlBN3BLTWVmVlF4a214NUc0dmhNbEMzcGp2aGEyRnFnNkxROHZPRU5xWDUv?=
 =?utf-8?B?SnNPWmR3Z2dPQThYUHAyOFhhUm1rYWY1all6aHVqdDNxSE80N2lTVHJNZ29z?=
 =?utf-8?B?UmZQNVBmbmdpUzQ3OGFNSDJjYStmenVoRi9iTkovQXRyLzVXUXIvczdOU1RG?=
 =?utf-8?B?TlRTZXE0MXpqVGdydmpRSUFCQXppZlVBYWo0dFlPMzRxYzRNTngvcG50bW9y?=
 =?utf-8?B?TmRuZHA2OGloNHRSTnhqNWdIKzNuOW1nSkJPYUVxYlhEN0tQUmx3ZUIrNjlV?=
 =?utf-8?B?bU5sb0tSNG1tVVhqTWFxdmd4UWo3SHpzRzNFdUpMOU9iR1FuTTFSQTVlMUE2?=
 =?utf-8?B?b0p3YXRuR3BadXBlS1R4aUh3aXZXOGEwZmFScXYyTDBIYjFSNml1ckgzcEk5?=
 =?utf-8?B?cEY4cjFFazExTE5ob0ZTbWh1Ym9tU1lObjVQZFE3MzcwUHRSajR1RFAvU2l1?=
 =?utf-8?B?dm1tQlRySlUxdXJTV3E2MnZiVUlRZUpLSGhMZjV6a3phSGhXQXBpZzNvNkoy?=
 =?utf-8?B?RjZFZFNjQklJZEdZWTJFQzlHTWNqOXpCQUxuR25EbGFlbVJSUG5GVXNjVlNQ?=
 =?utf-8?B?aWYzRnZwSHArVUFCcVVkaGpSc3BvVkdZVVpHWlNQOWFxWTJaMDRXM2l1Ymxu?=
 =?utf-8?B?UmhIMlBLRS96bFVkMkY5b2cya1o5VEVqTzhBZTMvRHQxbFZrbjh3ZDFHdmxU?=
 =?utf-8?B?ZnhFcEM3dEd2aStHSGErWUM4OEFERGFJNHg0MDVGdVpRdUdjeXdkN0s1TE5N?=
 =?utf-8?B?QW5wZ0R2SDF0N3FZR0RwQUp2bnNtNUVVcUxLejhDb3BXaUc5Sy9sT3V4RlNU?=
 =?utf-8?B?enhPZHhNOGp4TDNjYnNTMUlUNUFXcFlzTWlaamx0TG1KbkZRTWJRK2N2TFpq?=
 =?utf-8?B?ZlJsSWxQcVl3YlZXVU5hWVJYdzZMSkFlNHhQREowQ2ZKN1B6eThNb1pPeFpQ?=
 =?utf-8?B?L3JMZE5FL25RdUhDU2FYZlFOVDd1QVZ5T3IyaVV5cy9DV1BJQUdIY0N6Qi9y?=
 =?utf-8?B?Y3J2SnpTYTIrT05mUVMxLzVXalhtTXBqQUExTHlnaUNlTDRWRmYwaVNta0c4?=
 =?utf-8?B?TkpDRWxib0I0ampVVHNQRytOR3p5c1NTTG0zZkVRTFlPR0xnNHRMVUd5TTVX?=
 =?utf-8?B?T1kxKzNmb0lxcjVJZ2xSUmN6S3JrRHN4MG94blhkOFpYTCtCZk4vcVFibXNL?=
 =?utf-8?B?Z2JKdFkvLzAxNVJjMmx1QlBGbm1EakZPeWpBejlGaCtrOGxMU25mM2dYR2Rt?=
 =?utf-8?B?QTVHQ3pSZEJjd0t1UTBiQi9xY3RSejZWNzYrWDNRSkF6WThQVWhnUXBFVFBm?=
 =?utf-8?B?VFFDOEpXR1FpODVqSmZyNjZmTms3a1NCTVdrazBxR2NOZXZtNWRRSVdBeWx4?=
 =?utf-8?B?NHkrVjF1bDVwa3JHQWhvNTlXME1jYys3elJKNFlSaFF1QjB4ZjJZdEthQ05n?=
 =?utf-8?Q?SZ+ZSs?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(10070799003)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NjRiMWNhZkMzWi9naWRsRXlBVXBnOGsvZ1lVeDAvZXVDNTJCZWlib0pUbHJL?=
 =?utf-8?B?TkZBb0hkRjJEbEtTL0R0Q2ZDV3JMZWhQQ2NlVEYxUm5xbXczaW1abzVsUXlO?=
 =?utf-8?B?bGR6RWZYNkg2a0NYMWtMYVU3ZUFQcE1tQTVueDF1VE9GRDZhcjM2Y041dGd2?=
 =?utf-8?B?TTg0NTB0OTBQZ3MySFNBdHdWSG1Rc2NIeWFrem5aemdxeExoNVVXdXlRVzIw?=
 =?utf-8?B?dXA4U2NyK01pN0R2TllqQlRTTWdQSXVZS1U3SnAvbnRwV2RQQVNzc25GZEVr?=
 =?utf-8?B?eSsrM3l2L0daQmNaWGs0cDRWc1BuV2k1UnlEZ2pTaEIyRy9qWTYzQ0RXc1hN?=
 =?utf-8?B?LzFIc3dSTWxEbFh1RUxhbGppMVViaE5jYnNqVDNjNGRKdkczcVhLMGN4Nk9k?=
 =?utf-8?B?S0tqL3VUOGZqVS85cG90dnJJM2MvK29JU0FMSmlEMHRRMEMxUDYzVEFYWkZG?=
 =?utf-8?B?ZmJsZkt1MWtycXh1WXY0d1hoSFRHekpKTTlWS2hod29aNFJsQnowNlMvSVpk?=
 =?utf-8?B?RmptU05wREloamJFSzBMN1RZc0QvK3M0QXQ5Z1JnN2ZINENNSkRVREVRZU5W?=
 =?utf-8?B?UTVNbFRRRW44TVhacWpGZ0ZGcUk2NG5GR0ZvM0ZxNnZjclVkc1V6ZnIwaGdj?=
 =?utf-8?B?ZStOT2JVbkloNFgyOFZ3WUdKRUVpLzkrYkV2bmtyMTZuYmZlOXd1czNOeisx?=
 =?utf-8?B?aUdVM3dTbXl1RkR6bEE0TThrTDdWNTNUNmVyc2o3SkV2eEx2Wk5PWEIyMVRT?=
 =?utf-8?B?UkQ0YUFXa3Bib0QrL3lRbXlaSFBUNStNdXlYanZ1eG5vRjRxUjh2VjlXQUJX?=
 =?utf-8?B?RUI4SURwSGpLYnorbXRHcTNuU0hrRUxkQStkUk9SZVVaazR5dnVuT1kyVHI4?=
 =?utf-8?B?MUdRQ1Jjeis4enhzejJWKzkyYzlnaU1GMDNLa2tRRWdoMHRWem5pTytuMDMr?=
 =?utf-8?B?R0NEMkRpWkJEd1E4M2xaL3VHczhxSC90RzlxM2hIQlN5N1Q0Q3MwRnViQXps?=
 =?utf-8?B?LzdwMk51VkNMZEZFeGEyd2xVd2xjMnRlYjc3QmdoRWRnUExoWFlsdFpyS0hw?=
 =?utf-8?B?SmdDbUxvZzFOOExIUVhNVmkzNXdXWnNzRXhaY3dzd2w1MEtqT244MVJqY3o3?=
 =?utf-8?B?eWd6bGY2aHhGL3dVYllFUTY2OUlsUjkxRGhRWFU3TGhNckV6cG54a3JSQXNP?=
 =?utf-8?B?c3IrMk1YdXJaSEVYYlE4d012QURkby9ZOERTcHErajc1Tzl1dDVMSmpqMW5y?=
 =?utf-8?B?RzVqNEJHTkxHcjAySzJZaGNuMGJQb2hEUFErWE85VkRMZlY0N3FqRG9RNnJT?=
 =?utf-8?B?ZFlUemtxVzljcFdTL2tyaUhtL3FNWEszWklpYitLR1hoNEx0QWZQbUJyZDZa?=
 =?utf-8?B?a29XMjFaUmNka0xuOWc4RWZxUVdwejNnM0RENHlHOWNKdFZqdk5WMHBhUkF6?=
 =?utf-8?B?TDNKcVA2eUlNRWZuWld5STdVR3hkUzEvYy9BR3hWS3RDNVZhcDZVWHJXS3lK?=
 =?utf-8?B?TzRqTGMzNE1VemV5WUZTTWQ3UHAyU3pXMmhMbEJWays4UGxuaDZDVlFLRDBU?=
 =?utf-8?B?RWtTdmVuRlZyL1l3ZGpMU3dkcTV5YlRFV0d4ZVBiRlhPQUNGLzJGeXZWMWR0?=
 =?utf-8?B?K3FlaHBtbnRpY25HbDNCQ0JNMmQwTG1SemVIdnNQK3VkNzNoWEcwMlFhQ0hC?=
 =?utf-8?B?WDFud1FBbVpJOFYwRFBLMVU5VkRqZUpzcE95akZ1VWJZeEVZZnY2YnVqamFC?=
 =?utf-8?B?M25sUDFjOFBINTR3SUdIQUMyQ0hwUm9NNFAxUDMxN3JFVWZXaXVyK20zbnJE?=
 =?utf-8?B?Z28zVmx2c1RPMzBxbDAxdnkxampycmp0TkFPOElxZ1R6QlBKWDM4bHBHclJ3?=
 =?utf-8?B?V3hGMHhtWjJjZk9DNmJtdUNBRm1kOHI5c3pNVWV6UFRBODJoZGN3U2NKcS85?=
 =?utf-8?B?K2JSY3hSQTI1WXZRcEdna1poWWtRR1RwODRDZGZ1Mlo3a2lISWlFNU1PZmtV?=
 =?utf-8?B?S1ZiYmUyWVRidGNlelhpOEFXQ0lQZXZaVzgwZlZjVHVjcTM1ZGFybS9JMWtu?=
 =?utf-8?B?SlFXRDRNMmFwSGpBbHhKMUtWSHcrR3k3dGUzRk1ldEFybFpHMjJIbTcyVSsx?=
 =?utf-8?B?UVNFOFp5anNXZk5TM1k4N3E0anAyQURIVFpCUUtHellwOHJ3NHF0RjFIRUNj?=
 =?utf-8?B?L1JyclpmcjVDU2w3WVFsYzU1eUJkdlY1OHJseUE0Q3VyU2txa0dxUDhMZ0xW?=
 =?utf-8?Q?PHGzXHYMSFzD8/lHNGV88O4oniCtGEOtfmyC2PDmz4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3B9AC3DDEF09C54B908363460B72EFF5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06fae219-6f90-4d28-ae39-08de0fbc063e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2025 09:35:36.5965 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hrq6CGTLX848+UvbTtkY926a/MieX/nZ5NDVkMC52HZp4bA1NbWS5TbNPxy26bfKmNaI7BhZl1DSTF2FUHLg+frOoG0OhaajKRk7Kaa4Ejs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7488
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

T24gV2VkLCAyMDI1LTEwLTE1IGF0IDE4OjExICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gV2VkLCAxNSBPY3QgMjAyNSwgR3VzdGF2byBTb3VzYSA8Z3VzdGF2by5zb3VzYUBpbnRlbC5j
b20+IHdyb3RlOg0KPiA+IEZyb206IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFw
aWxsYWlAaW50ZWwuY29tPg0KPiA+IA0KPiA+IFRvIGVuYWJsZSBGQkMgZm9yIEZQMTYgZm9ybWF0
cywgd2UgbmVlZCB0byBlbmFibGUgdGhlIHBpeGVsDQo+ID4gbm9ybWFsaXplcg0KPiA+IGJsb2Nr
LiBJbnRyb2R1Y2UgdGhlIHJlZ2lzdGVyIGRlZmluaXRpb25zIGFuZCB0aGUgaW5pdGlhbCBzdGVw
cyBmb3INCj4gPiBjb25maWd1cmluZyB0aGUgcGl4ZWwgbm9ybWFsaXplciBibG9jay4gSW4gdGhp
cyBwYXRjaCB0aGUgcGl4ZWwNCj4gPiBub3JtYWxpemVyIGJsb2NrIGlzIGtlcHQgYXMgZGlzYWJs
ZWQuIFRoZSBmb2xsb3ctdXAgcGF0Y2hlcyB3aWxsDQo+ID4gaGFuZGxlDQo+ID4gY29uZmlndXJp
bmcgdGhlIHBpeGVsIG5vcm1hbGl6ZXIgYmxvY2sgZm9yIGhkciBwbGFuZXMgZm9yIEZQMTYNCj4g
PiBmb3JtYXRzLg0KPiA+IA0KPiA+IEJzcGVjOiA2OTg2Mw0KPiA+IENjOiBTaGVraGFyIENoYXVo
YW4gPHNoZWtoYXIuY2hhdWhhbkBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogVmlub2Qg
R292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQo+ID4gU2lnbmVk
LW9mZi1ieTogR3VzdGF2byBTb3VzYSA8Z3VzdGF2by5zb3VzYUBpbnRlbC5jb20+DQo+ID4gLS0t
DQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aMKgwqDCoMKgwqAgfMKgIDMgKysrDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L3NrbF91bml2ZXJzYWxfcGxhbmUuY8KgwqDCoMKgwqAgfCAxNQ0KPiA+ICsrKysrKysrKysrKysr
Kw0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5l
X3JlZ3MuaCB8IDExDQo+ID4gKysrKysrKysrKysNCj4gPiDCoDMgZmlsZXMgY2hhbmdlZCwgMjkg
aW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiBpbmRleCA4N2I3Y2VjMzUzMjAu
LjEzNjUyZTI5OTZhNCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gQEAgLTY3OSw2ICs2NzksOSBAQCBz
dHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgew0KPiA+IMKgCS8qIHN1cmZhY2UgYWRkcmVzcyByZWdp
c3RlciAqLw0KPiA+IMKgCXUzMiBzdXJmOw0KPiA+IMKgDQo+ID4gKwkvKiBwbGFuZSBwaXhlbCBu
b3JtYWxpemVyIGNvbmZpZyBmb3IgWGUzcF9MUEQrIEZCQyBGUDE2ICovDQo+ID4gKwl1MzIgcGl4
ZWxfbm9ybWFsaXplcjsNCj4gDQo+IEknbSBwcmV0dHkgc3Ryb25nbHkgb2YgdGhlIG9waW5pb24g
dGhhdCBzb2Z0d2FyZSBzdGF0ZSBzaG91bGQgbm90IGJlDQo+IGp1c3QgYSAxOjEgbWFwIG9mIHRo
ZSBoYXJkd2FyZSBzdGF0ZS4gU29mdHdhcmUgc3RhdGUgaXMgbG9naWNhbCwNCj4gaGFyZHdhcmUg
c3RhdGUgaXMgcGh5c2ljYWwuDQo+IA0KPiBUaGUgc29mdHdhcmUgc3RhdGUgc2hvdWxkIGhhdmUg
bG9naWNhbCB0aGluZ3MgbGlrZSAibm9ybWFsaXplIGZvcm0NCj4gZmFjdG9yIiBhbmQgIm5vcm1h
bGl6ZSBlbmFibGUiLCBhbmQgdGhlIGhhcmR3YXJlIHRoZW4gaGFzIHRob3NlIGluDQo+IHNvbWUN
Cj4gcmVnaXN0ZXIocykgc29tZXdoZXJlLg0KPiANCj4gUGxlYXNlIGxldCdzIG5vdCBzdGFydCBz
dG9yaW5nIHNvZnR3YXJlIHN0YXRlIGFzIHJlZ2lzdGVyIGNvbnRlbnRzLg0KPiBUaGUNCj4gcmVn
aXN0ZXJzIGFuZCB0aGVpciBjb250ZW50cyAqd2lsbCogY2hhbmdlIGFjcm9zcyBwbGF0Zm9ybXMu
DQoNClRoYW5rcyBmb3IgdGhlIGNvbW1lbnRzLiBHb3QgeW91ciBwb2ludC4NCg0KV2VsbC4uIGlu
IHRoaXMgY2FzZSB3ZSBhcmUgZm9yY2VkIHRvIGVuYWJsZSB0aGUgcGl4ZWwgbm90bWFsaXplciB3
aXRoDQpmYWN0b3IgYXMgMSBiZWNhdXNlIG9mIHRoZSBGQkMgaHcgYmxvY2sgcmVxdWlyZW1lbnQu
IFNvIGZhciB3ZSBkb24ndA0KaGF2ZSBhbnkgc2VwYXJhdGUgbG9naWMgdG8gZGVjaWRlIG9uIHRo
ZSBub3JtYWxpemF0aW9uIGZhY3Rvci4gV2UgaGFyZA0KY29kZSB0aGUgbm9ybWFsaXphdGlvbiBm
YWN0b3IgYXMgMSBmb3IgZGlzcGxheSB2ZXJzaW9uID49IDM1IGFuZCBGUDE2DQpmb3JtYXQgdGhl
IHBsYW5lIGlzIEZCQyBjYXBhYmxlLg0KDQpTbyBub3cgSSBhbSB3b25kZXJpbmcsIGlmIHdlIG5l
ZWQgdG8gbWFpbnRhaW4gYSBzdGF0ZSB2YXJpYWJsZSBmb3IgdGhhdA0KLSBqdXN0IGRpcmVjdGx5
IHByb2dyYW0gcmVnaXN0ZXIgd2l0aCBub3JtYWxpemF0aW9uIGZhY3RvciBhcyAxLjAgKw0KZW5h
YmxlIGZvciBGUDE2IGZvcm1hdHM/DQoNCmlmIChkaXNwID49IDM1KSB7DQoJaWYgKGZwMTYgZm9y
bWF0ICYmIEZCQyBjYXBhYmxlIHBsYW5lKQ0KICAgCQlpbnRlbF9kZV93cml0ZV9kc2IoZmFjdG9y
XzFfMCB8IGVuYWJsZSkNCgllbHNlDQoJCWludGVsX2RlX3dyaXRlX2RzKDApDQp9DQoNCkRvIHlv
dSBoYXZlIGFueSBzdWdnZXN0aW9uIG9uIHRoaXM/DQoNCkJSDQpWaW5vZA0KDQo+IA0KPiA+ICsN
Cj4gPiDCoAkvKg0KPiA+IMKgCSAqIHNjYWxlcl9pZA0KPiA+IMKgCSAqwqDCoMKgID0gLTEgOiBu
b3QgdXNpbmcgYSBzY2FsZXINCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jDQo+ID4gaW5kZXggOWYxMTExMzI0ZGFiLi4x
NmE5YzE0MTI4MWIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiA+IEBAIC04OTMsNiArODkzLDEyIEBAIHN0
YXRpYyB2b2lkIHNrbF93cml0ZV9wbGFuZV93bShzdHJ1Y3QNCj4gPiBpbnRlbF9kc2IgKmRzYiwN
Cj4gPiDCoAkJCQnCoMKgDQo+ID4geGUzX3BsYW5lX21pbl9kZGJfcmVnX3ZhbChtaW5fZGRiLCBp
bnRlcmltX2RkYikpOw0KPiA+IMKgfQ0KPiA+IMKgDQo+ID4gK3N0YXRpYyB2b2lkDQo+ID4gK3hl
M3BfbHBkX3BsYW5lX2NoZWNrX3BpeGVsX25vcm1hbGl6ZXIoc3RydWN0IGludGVsX3BsYW5lX3N0
YXRlDQo+ID4gKnBsYW5lX3N0YXRlKQ0KPiANCj4gVGhlIGZ1bmN0aW9uIG5hbWUgaGFzIG5vdGhp
bmcgdG8gZG8gd2l0aCB3aGF0IHRoZSBmdW5jdGlvbiBkb2VzLiBXaGF0DQo+IGRvZXMgImNoZWNr
IiBtZWFuPw0KPiANCj4gPiArew0KPiA+ICsJcGxhbmVfc3RhdGUtPnBpeGVsX25vcm1hbGl6ZXIg
PSAwOw0KPiA+ICt9DQo+ID4gKw0KPiA+IMKgc3RhdGljIHZvaWQNCj4gPiDCoHNrbF9wbGFuZV9k
aXNhYmxlX2FybShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsDQo+ID4gwqAJCcKgwqDCoMKgwqAgc3Ry
dWN0IGludGVsX3BsYW5lICpwbGFuZSwNCj4gPiBAQCAtMTY3MSw2ICsxNjc3LDExIEBAIGljbF9w
bGFuZV91cGRhdGVfYXJtKHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwNCj4gPiDCoA0KPiA+IMKgCWlj
bF9wbGFuZV91cGRhdGVfc2VsX2ZldGNoX2FybShkc2IsIHBsYW5lLCBjcnRjX3N0YXRlLA0KPiA+
IHBsYW5lX3N0YXRlKTsNCj4gPiDCoA0KPiA+ICsJLyogT25seSB0aGUgSERSIHBsYW5lcyBjYW4g
aGF2ZSBwaXhlbCBub3JtYWxpemVyICovDQo+ID4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkg
Pj0gMzUgJiYNCj4gPiBpY2xfaXNfaGRyX3BsYW5lKGRpc3BsYXksIHBsYW5lX2lkKSkNCj4gPiAr
CQlpbnRlbF9kZV93cml0ZV9kc2IoZGlzcGxheSwgZHNiLA0KPiA+ICsJCQkJwqDCoCBQTEFORV9Q
SVhFTF9OT1JNQUxJWkUocGxhbmUtDQo+ID4gPnBpcGUsIHBsYW5lLT5pZCksDQo+ID4gKwkJCQnC
oMKgIHBsYW5lX3N0YXRlLT5waXhlbF9ub3JtYWxpemVyKTsNCj4gDQo+IFRoaXMgaXMgdGhlIHBs
YWNlIHdoZXJlIHlvdSdkIGxvb2sgYXQgdGhlIHNvZnR3YXJlIHN0YXRlLCBhbmQNCj4gY29uc3Ry
dWN0DQo+IHdoYXQgd2lsbCBiZSB3cml0dGVuIHRvIGhhcmR3YXJlIGJhc2VkIG9uIHRoYXQuDQo+
IA0KPiA+IMKgCS8qDQo+ID4gwqAJICogVGhlIGNvbnRyb2wgcmVnaXN0ZXIgc2VsZi1hcm1zIGlm
IHRoZSBwbGFuZSB3YXMNCj4gPiBwcmV2aW91c2x5DQo+ID4gwqAJICogZGlzYWJsZWQuIFRyeSB0
byBtYWtlIHRoZSBwbGFuZSBlbmFibGUgYXRvbWljIGJ5DQo+ID4gd3JpdGluZw0KPiA+IEBAIC0y
Mzg1LDYgKzIzOTYsMTAgQEAgc3RhdGljIGludCBza2xfcGxhbmVfY2hlY2soc3RydWN0DQo+ID4g
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiDCoAkJcGxhbmVfc3RhdGUtPmRhbWFn
ZSA9IERSTV9SRUNUX0lOSVQoMCwgMCwgMCwgMCk7DQo+ID4gwqAJfQ0KPiA+IMKgDQo+ID4gKwkv
KiBQaXhlbCBub3JtYWxpemVyIGZvciBYZTNwX0xQRCsgKi8NCj4gPiArCWlmIChESVNQTEFZX1ZF
UihkaXNwbGF5KSA+PSAzNSAmJg0KPiA+IGljbF9pc19oZHJfcGxhbmUoZGlzcGxheSwgcGxhbmUt
PmlkKSkNCj4gPiArCQl4ZTNwX2xwZF9wbGFuZV9jaGVja19waXhlbF9ub3JtYWxpemVyKHBsYW5l
X3N0YXRlKQ0KPiA+IDsNCj4gPiArDQo+ID4gwqAJcGxhbmVfc3RhdGUtPmN0bCA9IHNrbF9wbGFu
ZV9jdGwocGxhbmVfc3RhdGUpOw0KPiA+IMKgDQo+ID4gwqAJaWYgKERJU1BMQVlfVkVSKGRpc3Bs
YXkpID49IDEwKQ0KPiA+IGRpZmYgLS1naXQNCj4gPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZV9yZWdzLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZV9yZWdzLmgNCj4gPiBpbmRleCA4NGNmNTY1
YmQ2NTMuLjExYzcxM2Y5YjIzNyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmVfcmVncy5oDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lX3JlZ3MuaA0KPiA+IEBAIC00
NTYsNCArNDU2LDE1IEBADQo+ID4gwqAJCQkJCQkJCV9TDQo+ID4gRUxfRkVUQ0hfUExBTkVfT0ZG
U0VUXzVfQSwgX1NFTF9GRVRDSF9QTEFORV9PRkZTRVRfNV9CLCBcDQo+ID4gwqAJCQkJCQkJCV9T
DQo+ID4gRUxfRkVUQ0hfUExBTkVfT0ZGU0VUXzZfQSwgX1NFTF9GRVRDSF9QTEFORV9PRkZTRVRf
Nl9CKQ0KPiA+IMKgDQo+ID4gKyNkZWZpbmUgX1BMQU5FX1BJWEVMX05PUk1BTElaRV8xX0EJCTB4
NzAxYTgNCj4gPiArI2RlZmluZSBfUExBTkVfUElYRUxfTk9STUFMSVpFXzJfQQkJMHg3MDJhOA0K
PiA+ICsjZGVmaW5lIF9QTEFORV9QSVhFTF9OT1JNQUxJWkVfMV9CCQkweDcxMWE4DQo+ID4gKyNk
ZWZpbmUgX1BMQU5FX1BJWEVMX05PUk1BTElaRV8yX0IJCTB4NzEyYTgNCj4gPiArI2RlZmluZSBQ
TEFORV9QSVhFTF9OT1JNQUxJWkUocGlwZSwNCj4gPiBwbGFuZSkJX01NSU9fU0tMX1BMQU5FKChw
aXBlKSwgKHBsYW5lKSwgXA0KPiA+ICsJCQkJCQkJCV9QDQo+ID4gTEFORV9QSVhFTF9OT1JNQUxJ
WkVfMV9BLCBfUExBTkVfUElYRUxfTk9STUFMSVpFXzFfQiwgXA0KPiA+ICsJCQkJCQkJCV9QDQo+
ID4gTEFORV9QSVhFTF9OT1JNQUxJWkVfMl9BLCBfUExBTkVfUElYRUxfTk9STUFMSVpFXzJfQikN
Cj4gPiArI2RlZmluZcKgwqANCj4gPiBQTEFORV9QSVhFTF9OT1JNQUxJWkVfRU5BQkxFCQkJUkVH
X0JJVCgzMSkNCj4gPiArI2RlZmluZcKgwqANCj4gPiBQTEFORV9QSVhFTF9OT1JNQUxJWkVfTk9S
TV9GQUNUT1JfTUFTSwlSRUdfR0VOTUFTSygxNSwgMCkNCj4gPiArI2RlZmluZcKgwqANCj4gPiBQ
TEFORV9QSVhFTF9OT1JNQUxJWkVfTk9STV9GQUNUT1IodmFsKQlSRUdfRklFTERfUFJFUChQTEFO
RV9QSVhFTF9OT1JNQUxJWkVfTk9STV9GQUNUT1JfTUFTSywodmFsKSkNCj4gPiArDQo+ID4gwqAj
ZW5kaWYgLyogX19TS0xfVU5JVkVSU0FMX1BMQU5FX1JFR1NfSF9fICovDQo+IA0KDQo=
