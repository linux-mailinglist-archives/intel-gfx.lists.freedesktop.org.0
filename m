Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6E4ACDB10
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jun 2025 11:35:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C304610E76F;
	Wed,  4 Jun 2025 09:35:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dKIQ4EDb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A78F10E72E;
 Wed,  4 Jun 2025 09:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749029715; x=1780565715;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BpDZt3C20nV2OsMcNZLh30Y7aTlwZtVOtQB03EToNpo=;
 b=dKIQ4EDbpBS8Ka8a2ChUOMgswHfhWdMF1aXcoTHrUg8/UQDmaAyTMXgj
 qnhz2cjbTyKMg4yxN38n3LpZ6WusW5M7aBK7OwIOzTrIlYtlcHhyFfdVm
 oAg2pBx8OF3os1ivd3Ht11ldDEvN1GX7wv5PUAnhPVuEPnzNnvuEnsq93
 THamyLtc0eBbw2NYDnm+UcxqJWjeX3Au1ld9KIvFJ2JD+L+8wkkQ+e3Nx
 YcMuuWKdfDQA/WDvXihs0xCd5fNQMT8L9+ydmCiABgkeQ/oAUvcQNTyYC
 I3e8nL8f3Sefm80Tw/M3hpjT0hXKDKK+38ZjTZREMxjVhlTnONcnbjpju A==;
X-CSE-ConnectionGUID: KLCMn3iZSgyy0Hfvfruy3Q==
X-CSE-MsgGUID: XWOswL/JTfalIuTIThrzRA==
X-IronPort-AV: E=McAfee;i="6700,10204,11453"; a="68537587"
X-IronPort-AV: E=Sophos;i="6.16,208,1744095600"; d="scan'208";a="68537587"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 02:35:15 -0700
X-CSE-ConnectionGUID: NibwaegcTVOnpunJLBOPew==
X-CSE-MsgGUID: VJ84C36ESia5SNUBGnOg7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,208,1744095600"; d="scan'208";a="146106218"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 02:33:30 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 4 Jun 2025 02:33:29 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 4 Jun 2025 02:33:29 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.59) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 4 Jun 2025 02:33:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wifM/4VTbgfAcO/7qNCvW/nrKs60uTjsoRTXBwtZSWTQipRfQQX3hsZUWWKakdsZ4xhW4obGhm9UquviVUui2rTO1QIJKKpaOpQ2gYwCOTI/5K5Hoqst11NK9JZA+J7tvSZLrBXcFUcILTzvKgt44CZuU0hxA8hnddl/OLQkAQFauDTgqZll450EvIIf3sGVrtIUrv/IplwtWjhTQujmmawSgFS/WwZ3eve+/MuoxLaxgmIep0i6kyOLHEsZL2u5N+JgyJbvKdrXxBU2XoLoXI7lldFLIi17y0EGSPnMXSWtKrI7wtdhDLPq8loPHoH4IXgjtUR632R2zrs4MRclWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qGb9brj1gSJ6exDaA1+wgUfVAFpw2vke/V9bTyaZ/VQ=;
 b=Shf9jm1AEhbvS8PBs05BOG9hTjnqUEgs45nmYhQYFLVxPX60XD+RU6g9K7m81k28lKl6QhT6uYEdGW+YmtYq9LR57hSFpyLaHWZCHz+TrVoRkmLvOUaquuMhew+sUagsxpxhWgCPfp45uv2xbwj7uM9r3Ibzee3I4oZqpvU4VBgJbnnVkQLgjtFdfXCQHZpHzptGDaBkXku7VlY6F0XwhMNbESpv22UClE5O84BFdd+sxeymrosufXuLEH42pkgBsJnHDpEaY0G7aU3nz1rlLUrm9tQSsvjWQjqwIeqMamQ3wW0wvnGyduW1tzKnNAWsJCX6YdQKge4g2YpcYRjqjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB8295.namprd11.prod.outlook.com (2603:10b6:a03:479::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.32; Wed, 4 Jun
 2025 09:33:13 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8813.018; Wed, 4 Jun 2025
 09:33:13 +0000
Message-ID: <5b234798-fb0c-4d16-815c-8599930d3142@intel.com>
Date: Wed, 4 Jun 2025 15:03:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 04/17] drm/i915/display: Add VRR DC balance registers
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@intel.com>,
 <jani.nikula@intel.com>
References: <20250603193522.2567092-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250603193522.2567092-5-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250603193522.2567092-5-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXPR01CA0107.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::25) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB8295:EE_
X-MS-Office365-Filtering-Correlation-Id: 91b3f475-bee5-47a2-c579-08dda34ad374
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z3VFdDUzMmhPRGRPcjBoYTJMRTVLWFl3ZGYzY2lKdHlyNXUwQzZZVjd1Mk9V?=
 =?utf-8?B?akU5WG1ja3hvZGZCQlR0RzRCNkpkM0lUcmJVUlJMSCsyRjRLSzkyWVQ5RC9Y?=
 =?utf-8?B?N3VYOVNZQU13Mk8wM3lzUWlqUzAzaHEwWjhmZ29PTXF4TVhlaklub3V1NXpL?=
 =?utf-8?B?aWZGalVicDdTVHdLMnoyMGFFWjFFajhrRW9PTEFac2l6OWt6N1hKZTVMQ2I1?=
 =?utf-8?B?Qm9lMXBLWmNBeVRCN1daZzhnSE1ZTUt3Um9xRnloYlluSzBRNUxoMUlMb3Jh?=
 =?utf-8?B?M3lZWlU2WkRaWG9nMXltMjhQYURxRTlxa0FMTDhTdnZzdDE1Q25xUnBCdnFh?=
 =?utf-8?B?TnVkQTFNR283SzBSTm1yeEUvMXRIQjU3dkY1ODNPNHlxTGNOaGg0eGtHbEk5?=
 =?utf-8?B?Tis2SmF5aEhtUjc5d2YxN3hXd0ZJamx4bno2c0dSRUtWRVpYdFoxaVVxYk16?=
 =?utf-8?B?NDFING5vRjZhU3RNaTZJckowWG82WnFqRlhJUWlkdUlUaUZtQ1FlTWtwTzNV?=
 =?utf-8?B?eGxuVk0xcW1sTlVld1pyOVdpQkF6SlgyWUZldFJ4Y1VBaDJNOG5YSGdBb2Jo?=
 =?utf-8?B?QlFoRlg1Unk0Y0Y5MkdqNElUY09qSWpNbG4zMzNBK25rUTI2S3RwemJ1bGdB?=
 =?utf-8?B?NEZSRGxidkRmUzM4NUFMTDdPNkxHcXV2V2xaZUgyRWgxSTM4Uk9idDBHSU1w?=
 =?utf-8?B?Ym0vZHJVVldUUlVtNVd0TkNseWxuNnllQ1R0YjlmNERuWm82MmF4aTVuVlBu?=
 =?utf-8?B?bk9wUkZoTXlRQ3RMOG51bG9KV2Z4OTdzd1dtWEVpMG0yYXNxc24yQitmTnlp?=
 =?utf-8?B?YlNKdjJ4UnFUT1hJeUFzd1NuRjZqRmlXNk9YWkkrQlhENzA0RmNSWnhsSkwy?=
 =?utf-8?B?K3lZczJPaFNQTElGQzVveFlscjVwTWszMjV3RU80ZlZabVVFUjFZc3FEMHhT?=
 =?utf-8?B?TFdhallHcHB4N3I4bnI3RXB3WXpMZ056aDVBRnp2YnYrcUpEdFFnZXBrVTZu?=
 =?utf-8?B?T2M0cENMRHhPanROTTF2VUoyQ0l3SkV0Q0lyVlpGWmZFZ255eHJCRU1JT2Fz?=
 =?utf-8?B?MXFaekp6Y0VXeVRCQTVYRUNNZEFzdkRYaWlkNElsdXhXMWFmMUhIOTdxenhs?=
 =?utf-8?B?Q0gvbkt0ZWZDak1xNEswZ1FGbVpFdXBqYjZlbi9QYXB3bm9jL1hIQXBJZ3pn?=
 =?utf-8?B?dG83SGM2NWxPQnJ3ZzhMMVlqV0VSVktzV3ZNbU4yTGFETUZrNlo1NGpsSjhl?=
 =?utf-8?B?c1hWOHJWVTlYcjRVZndWQjBkR21hNDI2ZDJ0SzMrU1VPdXZFc3Z3a1hTTW1u?=
 =?utf-8?B?VFhJOFpVWTZkNU9Jb0ZjcW15T1JXa1ZESUJ4dHRpZW9RUXhvdnJJU2gvbk9m?=
 =?utf-8?B?ZmRudWxWa21JZktnaEVkMkFUd3RFKzdxRmtoSFZQNitCdzJ3SjY1UW1QcFd3?=
 =?utf-8?B?RDMzVjVMYjVEMGwvYjZmUnBWRHN3SWdzeVpQSUdjSmVXYXF2Q1Q3N3QxRlZu?=
 =?utf-8?B?RTFRaDRYcE9wbU5GbjRvMEpicWVCbnRCNWhOSC9QWGMvV0FWTG4vY0h6ZnNM?=
 =?utf-8?B?MlUvOTVCTkVSRzN0czhVOXZ5R204RHVhOUc5TjMzdkMxT1Zvd0lJMUFqVnk0?=
 =?utf-8?B?TVpmMGRvN3hiY1JxNGRaakVCaWV3M3pXNWVqMVdJRHRmc0NKSjFqL1FESU5o?=
 =?utf-8?B?UzRLOTZNczNBdS83MmZMN1pFRmNqTmNrdVJGb0pzZjhhMDlNR2VEVGkyR1FF?=
 =?utf-8?B?OWdSSjNleGhTbXR0SER5UEt4TWphTVJJRlkwR0d3VElzUnJLbkp4TDVIWHN2?=
 =?utf-8?B?VkpIQk0xK3Q0a1htOXdhbStVN2hNNENkY2taeTE4YW1YVlFWY1BpUW90ZzAv?=
 =?utf-8?B?TFA4TS9XNnA5aWtsdENyQ2FUd3Q3WWdnbm41MzMzc2M1aGt5Y055ZWNSbXha?=
 =?utf-8?Q?WJK8HHhlmOI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHYvVSt5MjZpT2hqTGJVeWpmNzlzUWRTK2pkandGeE9ISmpuREJ3a0VWamZM?=
 =?utf-8?B?MnVLZ1BLcmg0OFFFN09mR0Y0WjRLWVJWNHBQUzFMODVxN0p6eG0xZ21RMHEr?=
 =?utf-8?B?N080YVJlK2hFSTdzNWlwc3oxU1g5UHdTOExZK1FIM0JXTkU1QmFPQ0Rub01z?=
 =?utf-8?B?cVMzcWRWNXBaWkhYT2hOanZNRjBhWXRPMmJLcVRVZFVid2NYK3N5Q1pUbFla?=
 =?utf-8?B?Rm12a0pBV3VOMVBBSlNuY0MzYnRVRjg2TEp2NkhnRzV0YXJMbW1pWlJYbnpG?=
 =?utf-8?B?MkJGTk9MRXA0TENoNHM1c1VodDNDQThkMm5DYVZ0YnkwM0hhdzh4Z25kekxL?=
 =?utf-8?B?K25oWWlGTEFkTElMV0JhZHJ3ZXRFYTBzdkx1emVKTXZkNlB2SFQ1aitFVVNi?=
 =?utf-8?B?NU1RZzdDZlB2dHg5WWRVWEp0SlpTaHhKUTQ1Wm9hS0xQZXI4K1lodFhVcVor?=
 =?utf-8?B?Vndad1J2eFIra3dEb0VteWVLaGhGelpWTVFZZGdxWXFGSnRDZDluNEppU0Ns?=
 =?utf-8?B?dy9ScWh0dEE0ZUVBNHpvblBVdXR1cjhsWEwweFZyVmd1YjhlWklYaUNwWFZy?=
 =?utf-8?B?ZVp1bFQ5a2VtTlJoQlUwM3ZSM1d5cXcyQVI2NXBwVWhWcEtXSE41TEFqUTR4?=
 =?utf-8?B?UVkyTFBvbzFhamJ4MnZLdVdRMHNsRnp3MXFKSEo0eEd6QjB5Q2xqenlxdWlM?=
 =?utf-8?B?d2tEaHlUbmI3dGY5ejBIelRPYVhtRG96SzJ5aHFEY28zdkZQK3hWS1oxeEVN?=
 =?utf-8?B?RnRVYk9Db1FMMEIrSi9EdXhHbDdOSU5jeEZieUNFdDFHK200NWxMc2Z4eWJR?=
 =?utf-8?B?V0xGWHV5Mk5oVnBscFBKQ1FKWm10a1lpV0NtMGtTSnJBL2Z1SzVqRmNwS3lG?=
 =?utf-8?B?RStnSnErQnJUbUxtYzBaU0dnR2ZMYTR1THBTU1pEMHU2OUpyVForV0QzNVJv?=
 =?utf-8?B?bnk2c3NzNXlINWtGNVJjWWh5aVhNWHVOYUwyMVBMaVU1L09jLytUeGNCOFBm?=
 =?utf-8?B?bk41clFtSmhhWkJqOUxiam9BRlczRFV6YnE4UU9BZEdxaHAxcVlJdDUzRm1u?=
 =?utf-8?B?dzNoZWk0MGRKbEVLZUk3ZjNFelRkc0pNNjcrdUtxMVpzT2MrWjBDSWREVlpx?=
 =?utf-8?B?dDdqRUpCcXBoc1dZWkMySTJWaEk0K2NER2Q0R3ptK0RxdUIyQ3krMTllZ2hJ?=
 =?utf-8?B?TFF1T0R0a2RBa01oVUJZQVlxeEd2emFhWi9mUXBEZFlOb2Jxa3hjY3I5a0k3?=
 =?utf-8?B?bU9nQXlxejFMWHdGa0tUcGUyNEVscGdOYm1BanduRHp0MExSblAvMmMyZ3pT?=
 =?utf-8?B?YjJ4ZWlzeTlObG95OEhTVExubmc1R1BSdERRQndWRFNNRWh5bWtoSjg3U095?=
 =?utf-8?B?SDljZ25DazN6bUNmcHFqQVU4OFpOVTNTZ1VCbUpnNW8wTy8xOXRqTVNGSFd3?=
 =?utf-8?B?L0J3a281aGFhbmlLc3g1b3NMNlFoZ21wQjZlaVFCMnpWRHd0UFRBMzQ5MlZE?=
 =?utf-8?B?Rng2ZU5YaE9vZVgzVTJzM2dWOEdlWVplMmpMZm82bWF5N0tpREpqdE12Q0tW?=
 =?utf-8?B?Qng4N1RnaXUvWVl2V0xXYVlBTmh6RW8wSU9JNW9IR0N6SHNqQWswcE9HN01Y?=
 =?utf-8?B?Z1lZeFhjMytrRzBwWmxHSW41L2s2WlBJdExUVzhRRjdpSnBtUGprRUk1cWl5?=
 =?utf-8?B?QzdxN050cWpqcGpwQ1Q5UmRiYStzSG5ZRlI3a3BHeG9IYmRhSnRReXZUL0Mx?=
 =?utf-8?B?azd2RXlQOW9UbTU2MXJoVXVNb3hsTkxqb1dtWnBHNWt5SDBVNTNIdmFvd1Vn?=
 =?utf-8?B?eUNBb2hqYlhQYVRobnIyR1NuZ0piaFN3QXkwT05yKzhOSTAvSExWNGdGb3pt?=
 =?utf-8?B?bkpUSmRBY1Rpa0p0ZVNKaFpON0lVNURYT2Mxd0pWV1ZuMXJEcmo5NnNKQWp6?=
 =?utf-8?B?NDRmUVVQaW0wNndJZnhITy9QR3Y4YkYySno0bnhMN1RENTNwQWhSSVUxY3NM?=
 =?utf-8?B?dGJTYjZOVEZaOXJNWnF2MFNDQkVwV1VpMkNWM1ZCdlJzckJkWDQ5aDRDemVl?=
 =?utf-8?B?c1pta3BzdkIrK2RQSVJFOUQ0bWxVbnNvNmhMQkZFYUhHZ1JrTmhPclA2VStU?=
 =?utf-8?B?eWxUT3lVVEFZVVpHaTR1YytRWTZwNEQ4Yi8xb2tRRm5TRlBxeUQzekxEQkow?=
 =?utf-8?B?WHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 91b3f475-bee5-47a2-c579-08dda34ad374
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2025 09:33:13.1090 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7V7Yl5iC+BumEKkJxckSw9tx3wGP6b4EKSIJ6euL4D4DLvkcXyCVg76PNrb3wZ4abIkm4IJQpiZ/qF1Qort/FkEQD6UuGdqJe1Km/MNCu1E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8295
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


On 6/4/2025 1:05 AM, Mitul Golani wrote:
> Add VRR register offsets and bits to access DC Balance configuration.
>
> --v2:
> - Separate register definitions. (Ankit)
> - Remove usage of dev_priv. (Jani, Nikula)
>
> --v3:
> - Convert register address offset, from capital to small. (Ankit)
> - Move mask bits near to register offsets. (Ankit)
>
> --v4:
> - Use _MMIO_TRANS wherever possible. (Jani)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr_regs.h | 44 +++++++++++++++++++
>   1 file changed, 44 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> index 09cdd50d6187..b90dad473d8d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> @@ -9,6 +9,49 @@
>   #include "intel_display_reg_defs.h"
>   
>   /* VRR registers */
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A	0x604d4
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B	0x614d4
> +#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(trans)	_MMIO_TRANS(trans, \
> +							    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A, \
> +							    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B)
> +#define VRR_DCB_ADJ_FLIPLINE_CNT_MASK		REG_GENMASK(31, 24)
> +#define VRR_DCB_ADJ_FLIPLINE_MASK		REG_GENMASK(19, 0)
> +#define VRR_DCB_ADJ_FLIPLINE(flipline)		REG_FIELD_PREP(VRR_DCB_ADJ_FLIPLINE_MASK, \
> +							       (flipline))
> +
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_A		0x604d8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_B		0x614d8
> +#define TRANS_VRR_DCB_ADJ_VMAX_CFG(trans)	_MMIO_TRANS(trans, \
> +							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_A, \
> +							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_B)
> +#define VRR_DCB_ADJ_VMAX_CNT_MASK		REG_GENMASK(31, 24)
> +#define VRR_DCB_ADJ_VMAX_MASK			REG_GENMASK(19, 0)
> +#define VRR_DCB_ADJ_VMAX(vmax)			REG_FIELD_PREP(VRR_DCB_ADJ_VMAX_MASK, (vmax))
> +
> +#define _TRANS_VRR_DCB_FLIPLINE_A		0x60418
> +#define _TRANS_VRR_DCB_FLIPLINE_B		0x61418
> +#define TRANS_VRR_DCB_FLIPLINE(trans)		_MMIO_TRANS(trans, \
> +							    _TRANS_VRR_DCB_FLIPLINE_A, \
> +							    _TRANS_VRR_DCB_FLIPLINE_B)
> +#define VRR_DCB_FLIPLINE_MASK			REG_GENMASK(19, 0)
> +#define VRR_DCB_FLIPLINE(flipline)		REG_FIELD_PREP(VRR_DCB_FLIPLINE_MASK, \
> +							       (flipline))
> +
> +#define _TRANS_VRR_DCB_VMAX_A			0x60414
> +#define _TRANS_VRR_DCB_VMAX_B			0x61414
> +#define TRANS_VRR_DCB_VMAX(trans)		_MMIO_TRANS(trans, \
> +							     _TRANS_VRR_DCB_VMAX_A, \
> +							     _TRANS_VRR_DCB_VMAX_B)
> +#define VRR_DCB_VMAX_MASK			REG_GENMASK(19, 0)
> +#define VRR_DCB_VMAX(vmax)			REG_FIELD_PREP(VRR_DCB_VMAX_MASK, (vmax))
> +
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_A		0x604c0
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_B		0x614c0
> +#define TRANS_ADAPTIVE_SYNC_DCB_CTL(trans)	_MMIO_TRANS(trans, \
> +							     _TRANS_ADAPTIVE_SYNC_DCB_CTL_A, \
> +							     _TRANS_ADAPTIVE_SYNC_DCB_CTL_B)
> +#define ADAPTIVE_SYNC_COUNTER_EN		REG_BIT(31)
> +
>   #define _TRANS_VRR_CTL_A			0x60420
>   #define _TRANS_VRR_CTL_B			0x61420
>   #define _TRANS_VRR_CTL_C			0x62420
> @@ -20,6 +63,7 @@
>   #define  VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
>   #define  VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
>   #define  VRR_CTL_PIPELINE_FULL_OVERRIDE		REG_BIT(0)
> +#define  VRR_CTL_DCB_ADJ_ENABLE			REG_BIT(28)
>   #define  XELPD_VRR_CTL_VRR_GUARDBAND_MASK	REG_GENMASK(15, 0)
>   #define  XELPD_VRR_CTL_VRR_GUARDBAND(x)		REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))
>   
