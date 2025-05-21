Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFCFABF6C9
	for <lists+intel-gfx@lfdr.de>; Wed, 21 May 2025 15:57:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BAF210EAA9;
	Wed, 21 May 2025 13:56:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bE4oGDzt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B11911AA7F
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 May 2025 13:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747832996; x=1779368996;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=7Jdzcg5p3qDcVxcHszu3pBNtQtGHZGrm4ggRFLsf5+Q=;
 b=bE4oGDzt4sUTxS1WCEgGUdqgDEbqzZfEaJaV61Y5hQw8bOlyBrCuDWbf
 GRrG3zOfGIVpdY2ER2funD966CAkwReGFxEyMFeRTsM0nvgeliiLjvjc5
 zd23Yy2AR4KMCQtjmIpC8rWtiilUKk2nHZqybvxbynjShUz7yka5zah1x
 RGSFKzd6Ek7hvCZDwMbGZqQ09hqb8yA5uwaJ0e0mKKgidVgW24/whZvy8
 omTUrL81THF/oRdZOPr2/L2uIYZVfG6izi29btLarTvsu5ReqJT4PDbkz
 4RIPBrrqkbZtGxHoRMaNqLyz3Si8RSy5Wm2CXj6yub5j0l793OGUM/UiD w==;
X-CSE-ConnectionGUID: 80ImnrVfTpGchP2BMZD2Mw==
X-CSE-MsgGUID: NBVAxssBRlKO+UJR4SOSkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="53475434"
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="53475434"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 06:09:55 -0700
X-CSE-ConnectionGUID: OtOsPc1RRB2YWlBXwc/w2Q==
X-CSE-MsgGUID: yz92QsfhRF6C7bpabbX/Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="139916444"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 06:09:54 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 21 May 2025 06:09:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 21 May 2025 06:09:54 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 21 May 2025 06:09:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vRzUNgqhDIQj/M6nWloTLHkb2ADfXmY2CQbn8krAlTDm2Rr4vw9UmsrD60gQTUQnwN34/Ur9q2B7Y7FZCbdygVmK5XXYuak6qR3sMfsxKJIhEl+QzoA2V2ToYNRemeKypfQHshTONHpPAmLgj7+G4fl9X2podhYraDf9mzZXrtnI24wYFOZukv8vdgQudoBYJF9VbELdqyoj1uWiyRshPmWG0/TimFejwoOz3R9C2o2Z3AQ0gPZS1uLoon7CSz/vPBLiboiRhSxvAAFKISey78a+eJJZckvjoxor9KQErZQgeogrQEV/UGC6CCI8YXrf67eCfTH+yoyIa4kZej3ZdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LCOrZiwnv0WhUGssueoknrF2WkP8oIp0tVHSlP1HPrc=;
 b=F0ygOStBG8mSXrMxse9qQ4xvPxviB8nKrNUW8oMkWm2A+N+XOE5PQ89ISeXXVP/Ts2iVzethXy7DMoQ7ERKBK9jmMvitO8qDsX4COTXWUMbDPvk+UcH79pYpJpav0U/nzCutDe00G9aIu0gwySCFBem77HBEFHOCL/sTZTAXL5UcbpwXvYfBOuvmldLFVGC8pZQtTlBLvmmI/D/zmIMKdXEIQY4iguTIU1UXab6k2bA11JmScNsr0OFxzFFnzUAwv5pCrrok72nU79K0WM9C0OBAYTETk4eOOLRwAuipRNEJL8igMfVMwGHstvk2dqqOdHs35ouH4Si1PL9BUIZY+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM4PR11MB7398.namprd11.prod.outlook.com (2603:10b6:8:102::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Wed, 21 May
 2025 13:09:37 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8722.027; Wed, 21 May 2025
 13:09:37 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250520082917.1302665-3-luciano.coelho@intel.com>
References: <20250520082917.1302665-1-luciano.coelho@intel.com>
 <20250520082917.1302665-3-luciano.coelho@intel.com>
Subject: Re: [PATCH 2/2] drm/i915: remove unused arg in
 skl_scaler_get_filter_select()
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Wed, 21 May 2025 10:09:31 -0300
Message-ID: <174783297183.2266.9831729609979756698@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0143.namprd03.prod.outlook.com
 (2603:10b6:303:8c::28) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM4PR11MB7398:EE_
X-MS-Office365-Filtering-Correlation-Id: 297aba3e-b8ed-4a61-85a4-08dd9868bd41
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZjFRNDhKRUxkR1dtMXNqL245OExDU2FxMzhBR0c5YUdUOWhTL3J0YTFoWHgw?=
 =?utf-8?B?R2JwRHhGajhQVmtNS0h4SWxQd1lhRXU2UVI5TWlZRTZRRTlyVEliRlJROG1J?=
 =?utf-8?B?NkZqNC9jZk9NaFZ4NmtWenhBc2FlaTN3UnMwMmNjc1g3T0JQd3RzbHF0cEhH?=
 =?utf-8?B?TkNKSnA5NDhtRXhVRVZzcjJYZTB5aHRKbnEvdXVBNmZmMU1xMmcrVUxDZTdt?=
 =?utf-8?B?WEp1T2l2dXdpcmN0NUZ6ZUVST3VSc2oxNFJRMXJnZFQzV3JVanpKNnVNUDlr?=
 =?utf-8?B?SitWVUxoaFZmRGF3bzc0dWxZK291enYxOGsvRmVxY3NBMVgvVHFYUGpQb0xj?=
 =?utf-8?B?T0VXOU9qS3Y3bGY1WG1oYXY1b3lDSkRBTXhQYVVrL3JFOUI3S0RNU01tUzZC?=
 =?utf-8?B?QXFpNFU4VnVCZW5GSXhoamF1YzVrYlA3TWZYUCtFWldabXNrZmJQRStzdFcz?=
 =?utf-8?B?eEZhaU0vTS9DSkF2U2ZVZmVrcndobGRoaGdNUHVjdWorS040L1JPWGI1QU5O?=
 =?utf-8?B?dDBJcVA5M2NlajUwdEJHSHA1aklJSUE0TFZ0NFFjcXIxNFh0aDVmOGd4dHpH?=
 =?utf-8?B?dXdDSkliTW5SbjB0aUMvVzYwc0k1N21CR0tkbzdTYm96K2hKbTJFK2NXaUtp?=
 =?utf-8?B?VEo3RjVkNHRUSGdFdno3MENVbkVTMko2M3ZMakVabnBUYmxzdDExMC9pSUVC?=
 =?utf-8?B?RGVvU2U3dHdNUVRIYWF4ajBmMmVKUkU0aE93QXBhdytzZFN0bkdVbHR4bUNK?=
 =?utf-8?B?NHZIVUM1dWJibWkweEZMWndoL1BaVGNnOEpBT3Y3WlhXUFp5RHkxUURFangx?=
 =?utf-8?B?NFBsckRHbVM5a3Y2THZVaXpBK3NRSWZxbE5SVCtOYWhUYzM0VGJ4am83cEtO?=
 =?utf-8?B?L1NIT205ZWx2MGtRS2pIN0Y1alM2L0ZEYWlXYklUSm1pSkVlbzR0T3ArREJC?=
 =?utf-8?B?eG5DYzNwMGhGSFU5V21Gb3BkRVE4c0xiTTJ6aGt3YU9uejliN3BkbTZ4RURz?=
 =?utf-8?B?TEc0OTFVNzZOeG12WjNNOXJRa2lFeHNxRGNFREpCMlRCMk9tdm92UnNDWDFx?=
 =?utf-8?B?M3huM01EVnZDMTVRMHMreHViUWhLTUlXZWpDK0lYQlZyclJYNm02eS95bit3?=
 =?utf-8?B?UmExckNLQUs1ZHRqdWcxMk5SOUprelhYOXkyRWRZQVRFL0VtUXF0TkVUSE9F?=
 =?utf-8?B?eWN2UUdnNk93cFl5VVN3VVBjbGc4d1Znb2o4NS9pdWoyaVFOSDhvQmNmT3c2?=
 =?utf-8?B?bWFEQmNWQk1MR1A2eUxzblBuZW5SY3hrZzhyd1VFMjI2VlNDQXJYZk1peGEr?=
 =?utf-8?B?SlRCWHBQUWYySmJpL1JmYU12N2dUOHVBRDY0bXJIZ3JFMENzT1N6NzZOR2dh?=
 =?utf-8?B?Sk1CL3JsLzUwQlg0RmcyVkpVRmZQVDdGN3Y1dHJ4Mlllb0xOdTQrWDJFVnlR?=
 =?utf-8?B?OHhDWElOUTlWQUZXWUZaVUU3Uk5VR0dYTGpZK1ExenFFQ0NSRXZaT3lOaEpS?=
 =?utf-8?B?ZUQyZ0h5N0psTkM1aGRNLzNUREhSTVc4K1ZyMGVmQTd0M2RJcTJ2RWYzQVlh?=
 =?utf-8?B?cktpUVZuZjhEc0VzeHlCdVNCbU9EZno5WnRXNHhrb3JNU0t1WHJqTUFxbVFx?=
 =?utf-8?B?ditWd1FwUTdrSmdOVU9VcndjZEtJMkcxcXAzNUQxZmhNYTk2anRxSFUvQmhz?=
 =?utf-8?B?aHFRZmg4YkQ5L2FIMEpjOWRsUTFudkR5SHZmRExZZzBpckVpSXNJa3JuNHBm?=
 =?utf-8?B?WlNnUG1PYWZyZnpJbDh5c1hJVVZDd01RdlFoY0tzc0tITGdtTjZURmxLczJC?=
 =?utf-8?B?dlFlVXJ4Um9VWkQxSFl0WGNBK0Y1VGx6RDV4MjVFa0lzVGk1ajVvQW8yV3lr?=
 =?utf-8?B?eHNMOWx6U3AwTlpkcHVaZTBNWnowSVpsS0FETHRUZFdjVjRiZzVibjIvbkpt?=
 =?utf-8?Q?eS0xStYpsHM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?by9KbGxjSElFYXZFV3NlVjE2eHNlNXBmTFpseFpzcERyYi9DTmxwbWc1NUdU?=
 =?utf-8?B?dXVEYml1N3o1QkwwSUx1bHU2Z05BOFlROHMzMHBWdEc5QTBSaGZXYXpEempw?=
 =?utf-8?B?cHZZQ0JZNWVsZG1pRHVUY2RlS2RKamtvUHFyNkpBLzczbk9DNHRobkRjZ25t?=
 =?utf-8?B?TlI5c1BEaFVLcEtrOXVlV1ZEdjJMNk1CTHlNUlB5VGN3RUZ6ZEdKcU1uVHhr?=
 =?utf-8?B?Y0RqVTdLNUIxLzgvNFpLdWtveU16Z2xDK1JGSVJhenhoa0ROTlBCWm5zNUkr?=
 =?utf-8?B?NkM2MzByNEIwK0FQdkduQ0hWdG5Wc1hCWmpHRVVkL3lZWnBDWDJEd3B1ZjVl?=
 =?utf-8?B?OHBBcVZCaXRhOVV3elY0L2NJMXFVZ3A5Q1pLRzg2akVTcEh2dUdodWY3a3BG?=
 =?utf-8?B?Rkh3NGtXSjcyU2tGbEJjSFJtZHpxRUlFdzYwOUhxWmpFWFNXd2wyWDZBdVNN?=
 =?utf-8?B?MFdPdGdjLzlETnpHQy82TDNTT3FWai9uWEZ4ZHBIZDYxN1lVTG9hZEFhU2ZX?=
 =?utf-8?B?OWYxMkV3MnNGV2F3Z3BVTS9pTlVlNDMrblBmRkpyMnBRQ0dqMmhucXAzNUlH?=
 =?utf-8?B?dmI3ZjlMYjFwUElFT3BCN3J6UlVhQWxacmJqaTZqc1lmemkwWkNsellWMkpX?=
 =?utf-8?B?M1BsL05KL0Jrd3BPUmlkMUR2MUl2WUdqSXE2MUhMYzR5eWFRSmNCeGtqWVg3?=
 =?utf-8?B?dkdUVTdDdnFDVkpKR0Q2S0ZPZmdaRk03ZTQ1aXZEUzM2aEdyNWJ5Wlc0c2tm?=
 =?utf-8?B?UEVHS2VBQk9tYldpeFNtbFk5SkFra3NRekUzeEhqS2VFYTVoMXNjc1hTcGdh?=
 =?utf-8?B?RktYbEFBWi82bnNzZVZUOTV5dmk1L3dCWWEzUElsd2xyTk9DSndiT01YTURE?=
 =?utf-8?B?VmFodWM1aGhleGEra2craDdlNDZBcjF6cmJaRk5JL3hEbW9mREhsOGVzYS9I?=
 =?utf-8?B?Uk85eTRBTG5lOEJjd0VqYWNxaU9RS0crU2JtQ0lDT1o4Y2NMVyswY3ViNzdB?=
 =?utf-8?B?NnNIdTFBMTY2QUVsMEM4YmZ2MTV4S0QrQXFqYmZxbjhCZmM1S2NkV1F5VDlT?=
 =?utf-8?B?NlA4cjNFMG5aQVdhVU5IaWdVL3hadmMwT3lid0hpcVEyYmY5TWxFNFppb204?=
 =?utf-8?B?cjYzYUFLa1ZzZTExdm1KajFrUDdwb1NsSEwyR1RWbmV5dG45bWcvOFA0cGhL?=
 =?utf-8?B?cEhwTFo4SnZlaUNXWjBYV1B3NjdyVXFrbUVrdU14NGJHdVFMdVhFbDJpZzZi?=
 =?utf-8?B?dTJQMWNNaVdNUkV5ZDFaZXZzUEsxQnMwOEZEd0xhVkhKS0xIVWg3ZWIybWsz?=
 =?utf-8?B?eUhTTmxCWlJpVEMrUGVFS1pBZm83MG94cVJibk8zSDZxSXdWdDQ4Z1lUYkln?=
 =?utf-8?B?cDA1eEM4NllicmZtU2plelo2a25rV2lHUTdCdFZLRmJrZXFxaTlRNnRxbURu?=
 =?utf-8?B?a3JJTFg3RUUzRkwwZVJrVUNScmx3OENnek15UjJlR1M1OXZFeVZYMUVVQllL?=
 =?utf-8?B?MnR6OWltWkVXQnVWQlZJOFllaTBBbGs2NHJXUWZQZUkrT1pYemJOdVZtQlU1?=
 =?utf-8?B?bk51anhTRk15UDBuQ2ZXTHRoNnY3VnFQZkpQNy9XQlZ6S0M5NUdQS0grRU14?=
 =?utf-8?B?cSs0bnNMaTZHWlRJWGk4V2tRb0J2ejYyUkN5dVliSnVDbnMzSEhXbkFMYkRJ?=
 =?utf-8?B?Sk5HYnBQZUZlamN0K1UvbWtqSEs4dVlGK0Vzc3FsQUFzYnhzYi9vQU1tK2Uy?=
 =?utf-8?B?WkNiMVJQN0dIK1F6OEc3SWRDNUh2Mml1YXVQNDk1YjllQm55Q2tZTWYram5x?=
 =?utf-8?B?ZVRaUHQ4TnZXQ05RZUFsSmdxd240d01nVUsvSU9NNE5XN3F4OHBiWXUwMlFN?=
 =?utf-8?B?bHdacitmWmgwWDI0a2wwZVlTNy9QbzFZWHJXcXZJeXF2cnhWUFZsc3BzK0Zj?=
 =?utf-8?B?NWJtdkNObThacjNqd1kvTVF3eWVUWVZUQmdRbzUrazZhU2NleDBoS1d4NTlk?=
 =?utf-8?B?eUJLTlY2MmhDdTZqVHY4NGYrVjhJSGxYYWY4QzZnM0s4TnBrZTRQVkYxbUl5?=
 =?utf-8?B?QW1EaCswT2lOcm9BcWwzeW1iT25GbUJRY2l5TFpYd2xPdWdrNnpKZzB0Mm9J?=
 =?utf-8?B?aytrMWpsVEliQWR2K1BJNGh3WERReGUwdjJOSFRmaHVGZ2dNR0NEVXNZTFVO?=
 =?utf-8?B?SUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 297aba3e-b8ed-4a61-85a4-08dd9868bd41
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2025 13:09:37.7360 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SUExEg8hbww6/lOtjQayujxkWfmemOqSJIfd3+1ra+RVzHR9ed7YKevL5M61PwZ4xMsB/Jswwn52lO+E026EVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7398
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

Quoting Luca Coelho (2025-05-20 05:26:59-03:00)
>We always pass 0 in the set argument of skl_scaler_get_filter_select()
>calls, so the argument is unnecessary.  Remove it.
>
>Signed-off-by: Luca Coelho <luciano.coelho@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/skl_scaler.c | 17 ++++++++---------
> 1 file changed, 8 insertions(+), 9 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i=
915/display/skl_scaler.c
>index c855426544cf..9cbfddb8556a 100644
>--- a/drivers/gpu/drm/i915/display/skl_scaler.c
>+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
>@@ -695,15 +695,14 @@ static void glk_program_nearest_filter_coefs(struct =
intel_display *display,
>                            GLK_PS_COEF_INDEX_SET(pipe, id, set), 0);
> }
>=20
>-static u32 skl_scaler_get_filter_select(enum drm_scaling_filter filter, i=
nt set)
>+static u32 skl_scaler_get_filter_select(enum drm_scaling_filter filter)
> {
>-        if (filter =3D=3D DRM_SCALING_FILTER_NEAREST_NEIGHBOR) {
>+        if (filter =3D=3D DRM_SCALING_FILTER_NEAREST_NEIGHBOR)
>                 return (PS_FILTER_PROGRAMMED |
>-                        PS_Y_VERT_FILTER_SELECT(set) |
>-                        PS_Y_HORZ_FILTER_SELECT(set) |
>-                        PS_UV_VERT_FILTER_SELECT(set) |
>-                        PS_UV_HORZ_FILTER_SELECT(set));
>-        }
>+                        PS_Y_VERT_FILTER_SELECT(0) |
>+                        PS_Y_HORZ_FILTER_SELECT(0) |
>+                        PS_UV_VERT_FILTER_SELECT(0) |
>+                        PS_UV_HORZ_FILTER_SELECT(0));
>=20
>         return PS_FILTER_MEDIUM;
> }
>@@ -761,7 +760,7 @@ void skl_pfit_enable(const struct intel_crtc_state *cr=
tc_state)
>         id =3D scaler_state->scaler_id;
>=20
>         ps_ctrl =3D PS_SCALER_EN | PS_BINDING_PIPE | scaler_state->scaler=
s[id].mode |
>-                skl_scaler_get_filter_select(crtc_state->hw.scaling_filte=
r, 0);
>+                skl_scaler_get_filter_select(crtc_state->hw.scaling_filte=
r);
>=20
>         trace_intel_pipe_scaler_update_arm(crtc, id, x, y, width, height)=
;
>=20
>@@ -827,7 +826,7 @@ skl_program_plane_scaler(struct intel_dsb *dsb,
>         }
>=20
>         ps_ctrl =3D PS_SCALER_EN | PS_BINDING_PLANE(plane->id) | scaler->=
mode |
>-                skl_scaler_get_filter_select(plane_state->hw.scaling_filt=
er, 0);
>+                skl_scaler_get_filter_select(plane_state->hw.scaling_filt=
er);
>=20
>         trace_intel_plane_scaler_update_arm(plane, scaler_id,
>                                             crtc_x, crtc_y, crtc_w, crtc_=
h);
>--=20
>2.47.2
>
