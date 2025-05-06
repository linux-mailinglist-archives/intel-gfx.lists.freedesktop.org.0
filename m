Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17233AAC449
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 14:34:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E22210E683;
	Tue,  6 May 2025 12:34:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b/env6IL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B53810E674;
 Tue,  6 May 2025 12:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746534875; x=1778070875;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=b6sNhaxSGPl8IENOVLeKkBYVNyMn1m+7N/Ik6upHaU4=;
 b=b/env6ILyQ8oQlYI0sufgtz0LHVQV58XACGSB3jJhVEGOGDvYDnTq743
 sFFaKEDGDouo7L+iiZA3tcJj6zaavCX2M88UB6irXEWEOr52FXNSe68gE
 xurHfJrFuq7vTz0UtT20MfzXYGbIL7gPO6M9bV5xoHg8ZdHGQGq/TGxRn
 6xd/Dic7Kx5Jmw0Mkhl3ggBqzEG6yjSotQDwMO0dm1mH1IMq5N3CYdxmS
 +EHUHoKz0npPAexFxpjXPj8gc7COuS5B9+/BLNAp1mSzXXzEidr+G+SWl
 cUycIzPeEqoHdmpHViFD/lMGh7EGlbXdGZMNItQhsUzNsydLh9zeaI1YF w==;
X-CSE-ConnectionGUID: P2l+iFC7Qt6JLyQWRUVe3g==
X-CSE-MsgGUID: +Ed4tqjQRma79QuJSzg/Lg==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="58829617"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="58829617"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 05:34:34 -0700
X-CSE-ConnectionGUID: Swn4zvedSh+NCrew1gjy2Q==
X-CSE-MsgGUID: YMLzOIOoTHicvNca792FKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="140726779"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 05:34:34 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 05:34:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 05:34:33 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 05:34:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nvPHhUPSpNul6iZkRgAVXnGxQt2O4OEzbhNOmIRrMsMWgMyTHKRAmeUuNFOYg1yg0sUvC6t3GYSDFCvPRNJCy+PD9s5x+ejUNHYCFihLqhSMOhhw52BhkmMj+niIsVc4bO8ko8hTJ0Uu0kUgmIayWcF4eaVx/lc7Vhp8qlrpeTeSpmdncY7C5ukWy8YAQAgXfSldyR1tasvsyLeEAVR8O8qEN4jmE4q/hFdDap8Rq6yqR61mF9pIbN62URVST6kx6C5iOu1thi+wpUl9asWfAnkXJmu1OhEVoId95X4yZsIQGPQYL2Ln0yNvQlAU5Cgg5pzXAsMEDNax1wEYo0JzBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ktRhc43orY05D0eHL7JS9WCJTBB/xqP3n3rfz4GtT64=;
 b=ajQhEH5Q6BMoAZRXgQhvaLqcA/p01OA08Onwk2ElUlRm8yjy3WoBhO6ziVFpsXXuPAoSgewMcevpMuf7ETy6gMiCMxJaubV7XSCixhX0z2cBj58Tu/XD+uvR60Qq+Zm0wdc2PTifRkkuMP8Ywo6WzropHql7/n4h+/cRYLsl36ECCi/7C1FlexuEV7vYzQJM5RCvNlVHGbuEHdYUJ5zVIeajanecbRb3dX5AprzHMi21y+So8kl1TBgD5+FEzDRLfTTzh5ZV+ACeDnraaCUzdAjg0gQhieBEjwEhwPVmJ6prh2YfU1SC51IDYDSwFsn7t5b7xbGOaWc5GvrA9IlOvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6553.namprd11.prod.outlook.com (2603:10b6:510:1a7::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Tue, 6 May
 2025 12:34:16 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8699.026; Tue, 6 May 2025
 12:34:15 +0000
Message-ID: <707ea5e3-2376-4a85-97d4-cd16e436889d@intel.com>
Date: Tue, 6 May 2025 18:04:09 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/12] drm/i915/dp: Limit max link bpp properly to a
 fractional value on SST
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <20250428133135.3396080-8-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250428133135.3396080-8-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0067.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6553:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c32d1fb-5b42-48bd-e50d-08dd8c9a503c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z2VSNFlhRnpweHVCQ0JzTnF6UzY3Sy9XaHlqTlJHdnNnSlZXaHltL0xHcWVW?=
 =?utf-8?B?ZGRXWStiR2J4Szk0akJyNzZ6YjYrSlF4OFQzMXBIMjNWUCswTmwvNUg1M0dm?=
 =?utf-8?B?MUc2M1VIdmVscnBBbFVja0hxa2hIYnRCYisweXlYUG1nbVVOSmR3TzVPUXhS?=
 =?utf-8?B?dEFJNFFjd08xd29ENEJpODVReWt0WG04ZUh2MWplNjI4akdiRXkydlNCc2NH?=
 =?utf-8?B?aUdRWEd5SFJsL2w4Z1pORXhJWDlycVlYMFVhY3ptM0M5NW44dU9tbHJub3Zi?=
 =?utf-8?B?cHZuRDNKZ0Q3T3JYdmQzditkRlR2bjdlaFJISlhRajZNQUZ6d0Zhc0R2Rzhl?=
 =?utf-8?B?TXA5bmVtNkl6bUYwcmNwelZmYWJ2bGxFVWlOVU0waXZESzcyclFlMFhXN2Jo?=
 =?utf-8?B?TVpTa2Zmb1NTdFNPLzEyOFlCR0s2dC91L2ZHNGpyMnh1eWlpYXptU0dJTGtx?=
 =?utf-8?B?cW9LU05RYXpqRW5oS2k4NjRmU3hNWHhTUFd0UHFFZCtwSElMRStCUUhKVDJD?=
 =?utf-8?B?RjBabHZXMFhLUHh3ajZScWtVVkh0QndGcTRjMGtVYWlRaFZoMC9lMU1YcHc4?=
 =?utf-8?B?RmU4cVM1VXozV1hJS3pNNFRUQWVkQ214cS9odHVTbHh6RjRIWXhOUDRQb2dn?=
 =?utf-8?B?ZGUwVXJTQ2J5bHp2a0grWjlvbVczMW1qbWpLektCV0hUemYzY1FvTGhuL01s?=
 =?utf-8?B?TUZCNVJsUllHTWVqczBZeVZ0WVVCSTR4bXE5Nmp2c2s1STltOEtEQzhJRnN2?=
 =?utf-8?B?YnZXbFRNSnNSaXp6V2pwRU1ISElUYk5SMm1xU3U2TGkwdEZZUHh1MWZjc3Ru?=
 =?utf-8?B?UHRSK3N4eWRoYWE1dkN4Z1daZzNVTDQwbTFxalpRUE8zU0xCZVdPRVE3YkRP?=
 =?utf-8?B?eDBRUStranRxTmJNNDB0ejcyWGZ5SjIvU2dicE5Dc0lLVk1YSEYxY3dDNDY3?=
 =?utf-8?B?TGlMb0Z0UjFKRWpOckpyZzVOQjAzOXR0TlRpMVFWbW5ta01kZlViTms2SHBn?=
 =?utf-8?B?SEdsdVd2VnF4SkhiMHQ2cGwrQTYxckJjUjdxYkVmQUwyUFl6ZzB1cmt2bFdh?=
 =?utf-8?B?NlY5ZUhKOEwxQzNRcmt1VkUrOG5kMnlxVDBHbHJlUUo4dWtTRk5TNW1SNnMx?=
 =?utf-8?B?VmR5YzhWS3ViUHVrOCs3bzJOWlZFWEROcW03ZG90SDFMU0g2YklEWmVERnNN?=
 =?utf-8?B?Q2txRmJsT1VGWDkreEdnV3FBY040N29KYzZyWkZFUitBa0RUV202RFUyYUxa?=
 =?utf-8?B?TmpEVjloZWo0NnNCOXl2ODZiVVN2Vm9xMW9XNU04Qk5sbVJaWGxHK0d0Zmpj?=
 =?utf-8?B?V2p6dHR6SXdKMk5BZFhhTnlPdGU1L1E4eStlOTB6RERTK0ZrRWsrL0tSK1Z3?=
 =?utf-8?B?bWRabEZMWWVkY1c4VnluMi92Q1ZLMzZQQk1URzBwV3hLRXd4OUQ4bTIvZUV6?=
 =?utf-8?B?Sk1URytUdXJzSEN2Z1l5b0hiN3dNNkJJTWZjbVA1YmNXbjlvc044d2xhaXRV?=
 =?utf-8?B?V0JZU1A5ZVIwV2ZQOVhDdlRUL09DTDFGMmlnOWJaVUVPdUM4TmtIcnBGeXE0?=
 =?utf-8?B?ZG44TnozbFRPTlZmeUkwV3NNMDNMZjdhREtuWXBWZUM2ejJhRFZMNWt5VjV6?=
 =?utf-8?B?dXFMeGpBemw2RFBTZHVqSGQ4d3RLcXlWck1iaEhmcWtUU05rZi9idUZ4MFZX?=
 =?utf-8?B?WXJ2blJsc3dtOVVkbk9jZTFJM2FDcGQ2RWhZZDRreXhBb05zREFtdU9zMnVu?=
 =?utf-8?B?czZwVHh6b1M5YThOd1Z6bTZsZEtFamVvckVUWGdGSDFwbDNOTEI1eUtheE1p?=
 =?utf-8?B?djdJV3lLTzZTR2lDYlJIMi9RN243OXgrSTNuQ2lheDJRYTlMTndmdnUvb2Nh?=
 =?utf-8?B?L2FlV0Y1N0xGTVdFeGJha0QvcHQzZkZvVitoeHo0bFdKbTd6Yk1HdGdzSlNi?=
 =?utf-8?Q?M5IDA/Ui88Q=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aUpCZ3dJK0FGeHZoV1F0UUg0QmlmcVc1OXRkMXFlNTZKS3c4UkJBTm1oVm8z?=
 =?utf-8?B?bkNJUmZVcXZ2eXN1KzFVdHRtZUNIU1JVVXhyTlFaOW1pejg2eFlxaVYreGJy?=
 =?utf-8?B?MXR2VFhQNUpDWFRjNkRBRW1ldklDRnQ3b3V2ZzMyZ0VmRW9NbkZwcDhJOGFw?=
 =?utf-8?B?WkpjVW1UY0JqRUNIeWw0RHpaWjRCTDZMdWV1d3hST042QUdSL0RNSGU1NWtu?=
 =?utf-8?B?ZFNwc213Y3JvdXQvck5aQWtXdjVpQlZlNEFJSGRDRkg2dENCV0RXeWVwZVZ4?=
 =?utf-8?B?L2w3VEhsaEtXSkVkSStZbjQ3RkFjZ0NpVEpNb0ZCVmdYQ3REdUxmVGVLRk5s?=
 =?utf-8?B?cHFCbzZ4NUpTUGFBVmM1dWh4UGtJY3BpYUNXMUw4NFpzd0ZGcW4wS0FVQ3Ar?=
 =?utf-8?B?bExpUEhQSGYzV1FwakpjTzJPVlNOWVJWcmRLbE8yUDQyeUdWZDY5MjA3LzFF?=
 =?utf-8?B?NkN0dE1LUlNxMVhVT3ZYaFZveUFSYVhobExCUjU3OStTUlhMREJ1R1ZaaHRN?=
 =?utf-8?B?THVmTEVMbFNPeG01LzVjQ1lTUnAzVm9HeFF6Z3hXYjlaNFdjSS9JSk9OTUtl?=
 =?utf-8?B?Z3pwZmJFQi9Lc2ZnbmpaN0k5d09kQUpiblFwQlVmWmNIbmZhQmg2ajQyVFhT?=
 =?utf-8?B?a3lwdVhoek9SSjlpdVVjbS9WWHhiN3JzbmJRWnVXa0tiQzcwdjFXM1FrdllJ?=
 =?utf-8?B?R252aEx3b1FKWExMV3dHbFQ1MmxGR0haR3AyTlpSVWFzSnBZeU5Qanhkdk44?=
 =?utf-8?B?TVprVTg1RmxDVCtlM3IzUENJYk1hRGtQQzg4ZHArN1h0MmREU2F5Z05ENXh0?=
 =?utf-8?B?bjhRNUNpWVdwOFlJL01ISjVndzlpMS9zZW5yalB4SGJvMmZUWHlaU3VHRFVU?=
 =?utf-8?B?TDhGNDhqak9vdzRRd1ZkRnN1ZVJManFtWU9PUExzTmYxOEt1ckpiamJFbVgz?=
 =?utf-8?B?bUlBSU8vYUNpM0VCM1RVUUVUR2ZQUEJBVjdxM1QxME5IQmJGbnpRSWQrZFdk?=
 =?utf-8?B?RWZxOXppVjRsdTJOcW5Ja1ZvaGI0MGJLMUFhNm5TblM2TzBhQ01UcXhMcFpi?=
 =?utf-8?B?d3M3U0lweFBYMm40NWRnRDFkeGVDWGoyZklJQUJjU010QzN0WWFmdms0MFlE?=
 =?utf-8?B?MDNCRjVKTzBoUm0yaENla1dEaFAwOEhxc0RNWE5SRHpGNStyY2Z6Tnh4eHlB?=
 =?utf-8?B?dGdIN1hHVTd0YnFLeVhocnczaW9TaWs2U0ZIL3JSRUozOUphUGc0QWFTVkxy?=
 =?utf-8?B?d1B4dnVqZkx3a3pHYml5elk0Z1lYdDE4R1BlaG5UWWtBNGNFcnNPL0lTYjRX?=
 =?utf-8?B?YmRBb0RYVVhMRGhzQzNIMVlmWG04NEhLalRHWDk1QzJpMWdGam9ZaXpKMUND?=
 =?utf-8?B?bUZKZjVHRjR0Sm80dUw1aDJVN29WQTRQM1hPNmtUTzVTTW50bEpkUHp5Q0ZW?=
 =?utf-8?B?SmhCY3JDKzhrM3QzVjBOQTFmdng4eXBYM0VNb3hlZ1hNbWZLUysrYXllbFVM?=
 =?utf-8?B?dU9EdkZ2eXkwNFpFQklKWkdDR0RXZkhUTUJUU3U3L3l6d2EvZndGRUZ1Wjcw?=
 =?utf-8?B?Y3lhL3JXU3dlaFFrRFBKTG9jY0tyZDB3RVovYVlxQTNPNGRoTTU1NmNRdHNN?=
 =?utf-8?B?TFRGR0VxOUdYZ2RsNmxaTHRWVW9mTWdGb0VnWmpIRGgrM0daWHNuVHNwT0M4?=
 =?utf-8?B?VnN0S2FNV0Fuc2NkVVlWdlNaTWVzREZwWjBHYnFNYWZKdENYS2JXQmZQa0oy?=
 =?utf-8?B?azZ3QnJTYmJZbE9GVklaNTJOR2lNTWtXL1RQM0tOVkFEc0tmNDU4Zm02QWda?=
 =?utf-8?B?T3pBaE9KQ21KU2svaFZMR3pvMWIyckVnZk5XUnQ5OG5uRjhtTFRRUGdORFd5?=
 =?utf-8?B?eFJoYzhNOVR0YmxNS1h4aHh0NmJmeEN4QnJjYm5BTUdYSjcvQmZITis1TWlp?=
 =?utf-8?B?eHZGNFNHakJqNDU4TG0wTUdlazRBbHVOV01OU040VUlLeFJBWDFXSTlpTmRY?=
 =?utf-8?B?Y01LT3E3dzFXOFZkQS9WbnpmdzE5QXVHQWpkVzNWSGZXRnRKZjBuRjFvWHc1?=
 =?utf-8?B?b2VZQ3U4ZHBRWVBGaWZpTG43V1BUS0ErSmdJcjI0cWw3M0tweVIyQ2VpUVN3?=
 =?utf-8?B?enFYbDRWMlhMdUtHYkMzTmJWRXIrTFpaSGcvRjAxZDN1YzFZSjREbVZNWVBY?=
 =?utf-8?B?WWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c32d1fb-5b42-48bd-e50d-08dd8c9a503c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 12:34:15.9005 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YE2MBRwAZKHZ42RwX+Hh1CxizVfZ2ANlUI2HJfDLlXi+I2V8g0/XhLXxJ0/PKIb8S6qt8us8roPmveCYu6Wtzhw0FwqshutXspH6PlM7SDo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6553
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


On 4/28/2025 7:01 PM, Imre Deak wrote:
> The maximum link bpp - determined by the link BW for instance - can be
> fractional, handle this properly during computing the link bpp on SST.
>
> This keeps the pipe joiner specific maximum link bpp as a rounded-down
> integer value still, changing that to a fractional value is left for
> later.
>
> v2: Align the min/max bpp value to the bpp step.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++++++---------
>   1 file changed, 8 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 42b45598a0134..7abc5286f4ccc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -27,6 +27,8 @@
>   
>   #include <linux/export.h>
>   #include <linux/i2c.h>
> +#include <linux/log2.h>
> +#include <linux/math.h>
>   #include <linux/notifier.h>
>   #include <linux/seq_buf.h>
>   #include <linux/slab.h>
> @@ -938,6 +940,7 @@ static u32 ultrajoiner_ram_max_bpp(u32 mode_hdisplay)
>   	return ultrajoiner_ram_bits() / mode_hdisplay;
>   }
>   
> +/* TODO: return a bpp_x16 value */

Makes sense, I can take this up later.

Patch LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

>   static
>   u32 get_max_compressed_bpp_with_joiner(struct intel_display *display,
>   				       u32 mode_clock, u32 mode_hdisplay,
> @@ -2152,24 +2155,16 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
>   	const struct intel_connector *connector = to_intel_connector(conn_state->connector);
>   	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
>   	int output_bpp;
> -	int dsc_min_bpp;
> -	int dsc_max_bpp;
>   	int min_bpp_x16, max_bpp_x16, bpp_step_x16;
>   	int dsc_joiner_max_bpp;
>   	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
>   	int bpp_x16;
>   	int ret;
>   
> -	dsc_min_bpp = fxp_q4_to_int_roundup(limits->link.min_bpp_x16);
> -
>   	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(display, adjusted_mode->clock,
>   								adjusted_mode->hdisplay,
>   								num_joined_pipes);
> -	dsc_max_bpp = min(dsc_joiner_max_bpp, fxp_q4_to_int(limits->link.max_bpp_x16));
> -
> -	/* FIXME: remove the round trip via integers */
> -	min_bpp_x16 = fxp_q4_from_int(dsc_min_bpp);
> -	max_bpp_x16 = fxp_q4_from_int(dsc_max_bpp);
> +	max_bpp_x16 = min(fxp_q4_from_int(dsc_joiner_max_bpp), limits->link.max_bpp_x16);
>   
>   	bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
>   
> @@ -2177,6 +2172,10 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
>   	output_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
>   	max_bpp_x16 = min(max_bpp_x16, fxp_q4_from_int(output_bpp) - bpp_step_x16);
>   
> +	drm_WARN_ON(display->drm, !is_power_of_2(bpp_step_x16));
> +	min_bpp_x16 = round_up(limits->link.min_bpp_x16, bpp_step_x16);
> +	max_bpp_x16 = round_down(max_bpp_x16, bpp_step_x16);
> +
>   	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
>   		if (!intel_dp_dsc_valid_compressed_bpp(intel_dp, bpp_x16))
>   			continue;
