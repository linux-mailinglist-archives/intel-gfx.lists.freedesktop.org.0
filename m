Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9937FB171C6
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 15:09:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7F4110E474;
	Thu, 31 Jul 2025 13:09:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E8ZhxQOV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61C1310E474;
 Thu, 31 Jul 2025 13:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753967390; x=1785503390;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=5pn1Tgm8PC/5g0ljUfS8V0ncHaTXqJP/utmYpsdN0Hw=;
 b=E8ZhxQOVTrWojhscIa6XcnWCCOCjmExaJNPKvBG4NJP1DMB3oFNdcY01
 mJNLjuiiZI9iZWTevTc+bi42n2yxGXNRN2QSkei6OZR4SrRQQoFEKWJe1
 54YsOe3fDc5nOIgptMGSSfUoFwVOA7PibvBwAtjoqTo9tKu6jnbxcs7Yc
 DsSciuisn4l2bbPCmM/ROe8tbFtu9/c4YXg18tSKKDKTZbfo1LkJ3Mw6n
 Y78sVrldapH1jXT/rgf1NitRwC67VLmBbC0leDbuE7ZVqwu91CdjDSOaL
 CVx754Vxl/nIb2odxm6fJAYTQfnwgxmB+Qadll52JYqAo5Gf4ClapAT8e w==;
X-CSE-ConnectionGUID: pvYxDsj7TsSqWQFxnS7yJA==
X-CSE-MsgGUID: Bsi5QSgOS6G1MIA5XIE9MA==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="60116719"
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="60116719"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 06:09:28 -0700
X-CSE-ConnectionGUID: ag9eQ1eyTO60X/WOgDTf0Q==
X-CSE-MsgGUID: gzkaZGwAQee6Oa56dRE+eQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="163280613"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 06:09:28 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 06:09:27 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 31 Jul 2025 06:09:27 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.88)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 31 Jul 2025 06:09:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lF6sgo2PynALYnqSYHySlSLYqgCCfWYkwrE6wQVXhD2i52NlhIYJdO2gn0WkT9iEcIWSkOCrqhN/+f8h/u30OPVfsC5DTT+SF/QK7K5gY0FOeF/Rx8afCyVEeNrnUQjH4RKrvG1skKCxl18mXXV8glFXRoacwDBgdEvGlrii+i9O/22dqLSx1evLRapPWIqLU4pNajO62XzQikkzxCHdOMuLK7U8W2qXOXMek2j09DVGma2ixAeVreeaZTtBnkYsA1f3MXgXCSs5sSG0tI1FWfa+r3O5FmnKJLnCZoHb2czmPnJ0Vc2WIDNRNWjXqIy8YPd/Zq/dgUOiEgILKkL18A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x05oRLcMn9CH40Lf3+JAAOhD9yD/Wi1pBLuwU29i/pc=;
 b=ASUfySTpQYwvlVrktMvd/kS5AtFloKkztOgoFzIR0pe21T1sdMr6nOb5TTjU469biqtUl8LD7PCcJn+r95EvJsAWCY7UT5bZWNSzCAOSnbJBC1efBoQ7Bct+Ty6SgEA0khd8dGrtY+F77VylZGNlq958GgSIPQoNOxZflge81D/jLfTVLVv6FbySeSYoG2Dz6cYXbqimmEM4ZAeg3GxhCZZmfoLenUFJh129DZ1pOA3HOjikl4gD42P4P/mhd3knjvbDBGujgWAGXe+O9LrE5m6DRPfNIc7MMkvL30geAWLuAExgsiqbQ7l4jGYKJ7PpU+h24hnagofUO48m95hlqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB6881.namprd11.prod.outlook.com (2603:10b6:510:200::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.14; Thu, 31 Jul
 2025 13:09:23 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8964.023; Thu, 31 Jul 2025
 13:09:23 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <d8c381524d721e01228b76b71080c6e4ccc528e9.1753956266.git.jani.nikula@intel.com>
References: <cover.1753956266.git.jani.nikula@intel.com>
 <d8c381524d721e01228b76b71080c6e4ccc528e9.1753956266.git.jani.nikula@intel.com>
Subject: Re: [PATCH v2 3/7] drm/i915/dpll: use intel_de_wait_custom() instead
 of wait_for_us()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 31 Jul 2025 10:09:19 -0300
Message-ID: <175396735922.2011.12714287925274064060@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0252.namprd03.prod.outlook.com
 (2603:10b6:303:b4::17) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB6881:EE_
X-MS-Office365-Filtering-Correlation-Id: 84663a62-ba11-416c-d1ff-08ddd0337833
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dythR29tWUdWcXhHZXdOMEFTNGxvOUJ0c21ibEprUmk5K242WG5zZituM202?=
 =?utf-8?B?dlh3VXF2b3dtRzVBQWtXSTFlTWNsUjVPWVovN3RUbDRweC9ZWFJreTI3OTdz?=
 =?utf-8?B?Z3FPU0tickQrK1RmYkgvR1VCRnMxb1JMcHVZbDdXWXdNL1JabWF0Yy85WE04?=
 =?utf-8?B?akQvS2czS2R5WVNZTkVXQ3FKcnZZWkpka3hFRXlQNTE3cHZyK1J1WGJFQzZL?=
 =?utf-8?B?QURMSXJ2cGtNREVmMERlaEtpMWF2MS9RSjVoWlhmQ2NrQzlwZVhRU1dReGxm?=
 =?utf-8?B?aURDbU1CS1VWRnhlMXhLc0ViTEtPL3hjZitPNTlPdm9BT0l3TjIrVWxPNFNR?=
 =?utf-8?B?UnczWVUzMk9Ocm9GalViMEZYVWZEZTg2UjFYOGdSZFZZcnZsaDV4OHRGaklP?=
 =?utf-8?B?NXRQV2xoN25BRUprTzZkaXA3dmRta0tkV2x6R1V2WTRQaDQySzlteU5uVFRY?=
 =?utf-8?B?ZU93Zm5PbEpqcTZvcC9rSVU0cC9YMmFidkI3UDVPbkhsVThlY0NzUlphRzJi?=
 =?utf-8?B?QkhMbU1WS1lFb2dqWmJjcUYvWndiMHBMZk91K1hnQkRPbkhwMnlBVVluTE9v?=
 =?utf-8?B?NVByTEpyV0RWM29KY1hmcmxxakROc3oyTWdERlZxTDBtYVcwRXRlZzBnQVhQ?=
 =?utf-8?B?clk2ckY1d1greHkyQ2NyWEZvY1ErSWNCMVhJalE3cjVYd042Y2U1akc3M2xO?=
 =?utf-8?B?UzJPTmUzajhheVpFRklDM09RbzJXazZnOW1Ca01lSlhZdG16bE1zZ1RwUlpK?=
 =?utf-8?B?L0ZjN0pjeWhIMk9jMDlSNDVPS1BBdHhWVC9XSXk3T2JzdlpYWWc0YkVKTGg2?=
 =?utf-8?B?QUt5cENTS1pXUnhra3JCRVphQWQ5R1ppSTV1QWxZR3ZCUUdVTUlGVmVScW02?=
 =?utf-8?B?MDdQZDRCOUxVWVZRWVIzN1NuQzBFUHdDSnpvQ3I0VkhxckxyWXFyMUJpdlBZ?=
 =?utf-8?B?Mkp1SHVJMUJSVHNKQ2Zvc0xZb1BUM1greG52UGY5TDdUbk1VUUlvd2g1VTJT?=
 =?utf-8?B?OTcreDRWVG5aZlVrTWNLdXpjUkFoTjJCRy9RNyt4MXNoRE1qZFh2cXVLdHIr?=
 =?utf-8?B?dFhYbXpIM2dzemlZMFp3Mzc5MlJ3dFJTR1dCR0FrU1QyV29ZRWNObk11cmk0?=
 =?utf-8?B?OG1UMVdnTnlnRklIZGEwU1hnczJJWG9PQkRQVnBvYUdmTzRmamN2SUVSejA4?=
 =?utf-8?B?aFNEa0RqbVJkTVQwamNQdTBZR2NmWGRUN25QZXNZWUZnLzQyZmdOaU4yZW1Y?=
 =?utf-8?B?QysvWlZ5QkZpaWVWOG00VlZGcmx0NlJXUE9wSFQyZTNaT3BwempEUmk0RmJn?=
 =?utf-8?B?NHdTQ0xCRzJ1eTFnTzJXYk9ESlNJQURaWEI4VEhkc25keGNnTTl0YUl3NnQ1?=
 =?utf-8?B?RTRTQ3F4MzlQMmI5NGJrajlQMEo5N3N2Y1R3SFhPeFdiajQ5dVNWSjVXeVlF?=
 =?utf-8?B?Rzl2K2pVc201UHMrQXRHNzRlejVraEVZaUpDbGdZRTg4c09UV1dpMnJRZlFO?=
 =?utf-8?B?THRrT21HRlZTeG92cjNBYVVQMGlIOGxBbmJvcnFaYndVb1ZqcVJONEZxbkI2?=
 =?utf-8?B?dWpDNUFyRzd3R0lqaGVpdjBXNTdQWWJsbzFUTzM5bUhocXUwTkhIV1RrU2JV?=
 =?utf-8?B?NFNYQ041QkhrU3Y4WlJWSGZyRUFJK3JaS1dCTGN2NTNyeU5DenU5MlFzQUZs?=
 =?utf-8?B?b2VVR0Zvd1hEcktZSmZOa2dKcTdPczZNd1J0bnFsYmJXdENVazVFaUd2aFA4?=
 =?utf-8?B?KzI1cnBBdU1CcEhsU0s5bTdvVTN3UnA1Mm8xQ0RjMTk3cHJUMkQ0ZGZOU25D?=
 =?utf-8?B?OWxIR1RxbkM0WEphUFlvMUxFOFRMTkRwRTN2KzhCcGJ0RzY0dDdVcDFYZ1px?=
 =?utf-8?B?MjViakYyQW90Qk45aUJ5aHo1NWlKeWY4MGQra21wL0NkYzNrSDAvL0MyTnZ3?=
 =?utf-8?Q?TUZXj5TtoEI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V3FWZFJLWFprUjdDaHRBc0hCOEkxN2gxWTYzWm13WU5YWUxmV0JNSzVVRzdw?=
 =?utf-8?B?YXcyelB1TDdsckZFa2t4a0swNXlmUVRjVGRnd25lU2l6ekc2cEZCM1JwRHRZ?=
 =?utf-8?B?M0ExeGtlcFI0STVrOVlPYmFqNndOQzdac3JJSVNFT3NtdFRlWGFoUWVXRUNE?=
 =?utf-8?B?Q3NROTVoS21vYnpqL21kdGttK3hhZml1aXFrZHpxKzZtRTdKZUlWZTZCOFY2?=
 =?utf-8?B?aFRSK1o3ajdmaG1ObjQ0Nkdrd2NlQVppTHBpby81WjVPVnV2cTl4bUlla213?=
 =?utf-8?B?NlVvVlB4NldxUlREV3U2aXJ5aHhOdW0xZ3dOMUNnSTMzOTRmcnRBMTVLeUo1?=
 =?utf-8?B?WFZtYXNFeXhlNVowTEJEa09JNkJNVUdQUGlhMVQ0Vy9NbTJhbjNsU3U4MDNJ?=
 =?utf-8?B?L0hKY1ExR0g4N09uN2M5ejJnZ0tBYXJHdVVSeXdqWUFZc2M2MWEvc2Q1RENV?=
 =?utf-8?B?QXNCMDBHUHJqRm04Zkw3NlRTTWFXWlgyU1pPeUozRWhUSDJoKzh3eEJkSGVO?=
 =?utf-8?B?ck5EdStzZ2pJaDcydGwyWDdSUUpDYlZCTEZVT0NCMHdtMHU5VnczanZadGFN?=
 =?utf-8?B?TnJ0QUJFbVMyT09ObVFMT04rMmZDdjZvU0ptZTJUVkptdURkdGZRcHpHTE9Z?=
 =?utf-8?B?UzZVUnlhYUJHOFFaelIwQ0srN0gzOUxXMzl1U2ZmWUpYVGNIOEFhcDlVMHNi?=
 =?utf-8?B?VVl6bC9XNERuaGtrWHhIL2dOc2w2bmRqZG5UbElIVzBUZnpRckMyL0lwZ1RT?=
 =?utf-8?B?MThoUStIVmR5ZUt1RHczOEFIeURWSEs0a0Rqanlrb0kxcmljTGZOSkxDTGQz?=
 =?utf-8?B?WEJQRXl4OFpTNThtcVJTSkVWQlFlZjl5Vll3bkFRdGFIUnhudkE5RVBKNURl?=
 =?utf-8?B?Q1ExdkRUNjJ0Z0hpSVdoeGxUVUJDSjVWZE5kbFU3QjBjM21nVzZLOWVwRHB2?=
 =?utf-8?B?WmJTS1RBYS9XYkx5UHBVc1RDL0JxcldrdUdHMGJVeHZBTSsyRVRscExOcy9s?=
 =?utf-8?B?a3hxaDZPaXV3QnFKYVMxNHJlb09iUm85L01UeFFwQUsvb2t5aUl0SUtDQWM2?=
 =?utf-8?B?M2ZaYWR0NjRDOC9YUlU5NjJLZDBEbUE4WVZ3SkhHL2s0VGJ2MVhVUzNkRXd4?=
 =?utf-8?B?a2x1dXBxL05MUTdRc3p2TEVaK3I1Mm1OUzZzN1hjQlYxZWpPRUJMVUhCYmdo?=
 =?utf-8?B?SlArQnBBbEthN2xUNllVbkRYSnZ3Q2I3V0NRdVdyQU82Z1NQQ0JnTDRNbW5U?=
 =?utf-8?B?bUtIdjZVUTQyaU5EWGxUZGZqMStWb3pDcjV0cDhVOGUwOTQ0WWowRzRPYmFL?=
 =?utf-8?B?eFgvK0pLM0NYLzluWDR3d2xNTytSU0FGcG5VWE5DaWMwdGhrOFE1bEhWUVJE?=
 =?utf-8?B?VHkzdzd3VlpQZHVMOFlUVFkvd0ljMXlUSURkbnVnc3BHcEtWbzF4WUFTWFEy?=
 =?utf-8?B?YTdpSE1NNU82SFF3bEltTHpjRkpQbDlnM1BIM2IranFkdm16UHFyNTJ4MDVv?=
 =?utf-8?B?SWlpMUIvcWRrdFl5OUlsRm4wYVdHTm1vMWFsanpqN09KU2syaEN5S0IzdGdK?=
 =?utf-8?B?QnBSTG9wUTd0WGRNOUZGYnFKVGFwWUZRVkR5Yk5HOEFIQlJtNVVjdGJDeldn?=
 =?utf-8?B?VTFQdzdsaXFmaFIvSkZ0SUNVQ1FnYUdQU2RKNTU4OW1HTlFYVWVqRXdzZ0s5?=
 =?utf-8?B?WFA3YXJ1b3NvVDhtRW5FbmNZb2piZEF6emNKQlFJTDQ1QnZzN05OK1pHazY4?=
 =?utf-8?B?YzRERi91K2FnZ25KeEJXdW5aTU9GUjhLMnYwaGlPK0JjWGtMMzhrRVVIQjRE?=
 =?utf-8?B?ci9QQzd3WWkxaW41NExoTm9mbm5ZbkVWdi9Edk1WcE9sdUZzYURlYm9rNkxM?=
 =?utf-8?B?TmhsZnVPN0pZQkEwb0EzZnVpejhVSFdUeTY4cGt3ZzhHWnBUUGh4Q3YzUGRG?=
 =?utf-8?B?Q3BadE9aaEsvV2l6UjNsUTZYSFoyTUxFdTZNVWhQRGRQSVpJbzF3SEhjSWpl?=
 =?utf-8?B?Ulk5KzFUckRuajhlTDhCK1FDVTJ6NDhuV2pVMWh1eUw2dGVIZUlxQXBhc3VY?=
 =?utf-8?B?T3M4Q0xJdkVpVFZKbjNzM21Pa2N4a1RJWENPZXhBZURDMERMVXVCR2VXcHI4?=
 =?utf-8?B?eFRrRE8xRXFlVER2SDBlbHFaM2pBazFMN1lJOTVOMDdhYTFySjAwTEpKSFFn?=
 =?utf-8?B?T3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 84663a62-ba11-416c-d1ff-08ddd0337833
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2025 13:09:23.6277 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6k2HP20uPjBHvN2L6y4XT6ff+9+2XuftAaSIf1C79Zw8jSUqEjQB83f9pM+krPC9RMLsvpgki7c2oRG2vJGZcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6881
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

Quoting Jani Nikula (2025-07-31 07:05:10-03:00)
>Prefer the register read specific wait function over i915 wait_for_us().
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 20 +++++++++++++------
> 1 file changed, 14 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/d=
rm/i915/display/intel_dpll_mgr.c
>index 33e0398120c8..8ea96cc524a1 100644
>--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
>@@ -2046,6 +2046,7 @@ static void bxt_ddi_pll_enable(struct intel_display =
*display,
>         enum dpio_phy phy =3D DPIO_PHY0;
>         enum dpio_channel ch =3D DPIO_CH0;
>         u32 temp;
>+        int ret;
>=20
>         bxt_port_to_phy_channel(display, port, &phy, &ch);
>=20
>@@ -2056,8 +2057,10 @@ static void bxt_ddi_pll_enable(struct intel_display=
 *display,
>                 intel_de_rmw(display, BXT_PORT_PLL_ENABLE(port),
>                              0, PORT_PLL_POWER_ENABLE);
>=20
>-                if (wait_for_us((intel_de_read(display, BXT_PORT_PLL_ENAB=
LE(port)) &
>-                                 PORT_PLL_POWER_STATE), 200))
>+                ret =3D intel_de_wait_custom(display, BXT_PORT_PLL_ENABLE=
(port),
>+                                           PORT_PLL_POWER_STATE, PORT_PLL=
_POWER_STATE,
>+                                           200, 0, NULL);
>+                if (ret)
>                         drm_err(display->drm,
>                                 "Power state not set for PLL:%d\n", port)=
;
>         }
>@@ -2119,8 +2122,10 @@ static void bxt_ddi_pll_enable(struct intel_display=
 *display,
>         intel_de_rmw(display, BXT_PORT_PLL_ENABLE(port), 0, PORT_PLL_ENAB=
LE);
>         intel_de_posting_read(display, BXT_PORT_PLL_ENABLE(port));
>=20
>-        if (wait_for_us((intel_de_read(display, BXT_PORT_PLL_ENABLE(port)=
) & PORT_PLL_LOCK),
>-                        200))
>+        ret =3D intel_de_wait_custom(display, BXT_PORT_PLL_ENABLE(port),
>+                                   PORT_PLL_LOCK, PORT_PLL_LOCK,
>+                                   200, 0, NULL);
>+        if (ret)
>                 drm_err(display->drm, "PLL %d not locked\n", port);
>=20
>         if (display->platform.geminilake) {
>@@ -2144,6 +2149,7 @@ static void bxt_ddi_pll_disable(struct intel_display=
 *display,
>                                 struct intel_dpll *pll)
> {
>         enum port port =3D (enum port)pll->info->id; /* 1:1 port->PLL map=
ping */
>+        int ret;
>=20
>         intel_de_rmw(display, BXT_PORT_PLL_ENABLE(port), PORT_PLL_ENABLE,=
 0);
>         intel_de_posting_read(display, BXT_PORT_PLL_ENABLE(port));
>@@ -2152,8 +2158,10 @@ static void bxt_ddi_pll_disable(struct intel_displa=
y *display,
>                 intel_de_rmw(display, BXT_PORT_PLL_ENABLE(port),
>                              PORT_PLL_POWER_ENABLE, 0);
>=20
>-                if (wait_for_us(!(intel_de_read(display, BXT_PORT_PLL_ENA=
BLE(port)) &
>-                                  PORT_PLL_POWER_STATE), 200))
>+                ret =3D intel_de_wait_custom(display, BXT_PORT_PLL_ENABLE=
(port),
>+                                           PORT_PLL_POWER_STATE, 0,
>+                                           200, 0, NULL);
>+                if (ret)
>                         drm_err(display->drm,
>                                 "Power state not reset for PLL:%d\n", por=
t);
>         }
>--=20
>2.39.5
>
