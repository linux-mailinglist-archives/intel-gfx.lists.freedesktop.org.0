Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DC891A454
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2024 12:51:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F1E610E1D0;
	Thu, 27 Jun 2024 10:51:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RrMb41Ff";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FE9F10E1A4;
 Thu, 27 Jun 2024 10:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719485482; x=1751021482;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Hqbsuwcco5LBzTFY9k1EHPD6hIe8wU++Gbs4vXVD89Y=;
 b=RrMb41FfFg2ab8MhVKSbPUbPfbFulO2vozBrGZldbGAIIfjNBeH2HS/H
 Uvwtl66IjxLHw+k5iDRRWCS7UevhensMDwdL+e6gn4G6H+50VMojoQbtv
 7eOCxltCyGiCq4RZUDrVLExoaQoGs8gVs9AMXVIHZ2LBChi0q627B6p1J
 EKjajowHuOpu4XkyUd49oUtTj6TLysUkitpfGEANJ/nEckRwVFxKcDUX5
 R9G0ISFLQSPcM4HzpzoqKK+VODlrmJdHJNf79a2j311Dqve6RyYaDOcaB
 p5y2qA530eO2glRs35MacJ8sZmOJ3pnAJ6npGiOyGawOkWE1VRKfrU3P4 g==;
X-CSE-ConnectionGUID: 09nB4MpTT9+phXJIIGVeow==
X-CSE-MsgGUID: ol1Nr6lySmOiBZQ66El/qQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="27741886"
X-IronPort-AV: E=Sophos;i="6.08,269,1712646000"; d="scan'208";a="27741886"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 03:51:22 -0700
X-CSE-ConnectionGUID: kM/v5u7zTgaIKnMuK2Y43w==
X-CSE-MsgGUID: Ipdmw5n3TJyfVYau0vaBEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,269,1712646000"; d="scan'208";a="44457000"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jun 2024 03:51:15 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 27 Jun 2024 03:51:14 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 27 Jun 2024 03:51:14 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 27 Jun 2024 03:51:14 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 27 Jun 2024 03:51:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DDMvMEHgE1FMgqZH4sqHhLcAAYh6jrn6s3kmSY7Ny9o3CJsth9bG1MGf9eITDhpSIJEfWJJq1QsxvVr1dkABwrG/bzuYBd3c9ebFJ9jboJz0K9qMsHUI5WsgUUmhT6fWpOxNA0iqFmyO5/QDKtEd7rCBzpH7nD9oLQjlrY2NOr00wpWxM8uVhofWhlNZ6g98FxiPSk1NSoh0V0u19Fvd00wSrOljXWpzwXaXQHQtXB1sECr65IRYbCQfOhmWZJLIZWx9VBtJ/3yXvF0sIp9OoEdFVS5EFLQfQhCsCWpUW+gP1w5yjX2qVNSJKVs3DNVRYCbQTcM9Dc8kozrkND8JTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Co5B3Dto6HX3NTbhUQMBUGRoETJy/h7jsmr8t3JrZDo=;
 b=JKy+iwN3sbHd6VkZSHnu9UwMaYg/ihvl6NfY1nOcvL8VZvwjfJP/Mt/VgBRnLich4WvoAUS/2mELdlESt/d3E+mg+sLoLQ/H2r85l3i/XRWMOH0qH/oBWpDIS41PT5qTQ5Lv2iB+2ziXbsYaJO6XW2HZVqwyAglkyRwIWLAuVGQKQaaanOQpkPrZoWx7Le0fS/veCLUk1K6uHCEfGzfHQqP9/bMcBHSqMsPDIDa7HWdD0CbhY789BnoAuhpDivd+Vx8f5fRQ7QrSZWGFIATkh2Gd/DgD27SDgggGP+KFhGFv9cHwNnBYBYGhR7oUh7q5k0DFjSkz8G46YMQbLqh7dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by CO1PR11MB5187.namprd11.prod.outlook.com (2603:10b6:303:94::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.34; Thu, 27 Jun
 2024 10:51:12 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9%7]) with mapi id 15.20.7698.033; Thu, 27 Jun 2024
 10:51:12 +0000
Message-ID: <5e4c951f-698a-4e1d-b412-7448a3aafbfc@intel.com>
Date: Thu, 27 Jun 2024 16:21:04 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t] test/xe_gt_freq: Add helper to read RPe freq
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>
References: <20240621211848.4144314-1-vinay.belgaumkar@intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20240621211848.4144314-1-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0098.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::8) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|CO1PR11MB5187:EE_
X-MS-Office365-Filtering-Correlation-Id: 2baf0368-d8d1-4c14-2b80-08dc96970f09
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cFh6YjNIc0Z1RFlKV2o4VGhmZHYxblFiMkQ0WldCUjZ2S0VFRE9mSHFDV3Bz?=
 =?utf-8?B?Y2Nab0lPMkxlV3kwTmxUa0lENmxaMVdiMGVWeDJGNVFQak1oRTZrNnBFaHVt?=
 =?utf-8?B?ZEp1QzBiYUVTTjZLK3daRnZ6VU13Y1V0b29yNVJEVTFKTzZjS0dLeUpWVlhE?=
 =?utf-8?B?V1JPODd1U3pLaDFuVU95UGwweXp4WGxaMTZmdkJWNm5KRkhtM09RZXQwTHE5?=
 =?utf-8?B?UHBQYUUyZXZuVE1VVUJrZWY3ZnlBSlFndFEyeWN2aVV6QW15RTF1MWtKK0JB?=
 =?utf-8?B?cFlOVEtFU05UMGpqTlVjbFRVYW03UHlnbjBXTWh0eXNGd0JVa3BnZjZHeGRr?=
 =?utf-8?B?NHRUb3QrQWpyNTBsOUpyLzdwaEg4a2Y2SHQ5T1hCVkxUZWJZcWQ4Q3VYeWVa?=
 =?utf-8?B?anNocDN2ZWVVREMwYzZmRGY2OThZUDBzUEpaM3hqbGhXK0ZXLzZXdXpENkw2?=
 =?utf-8?B?QzJIZFpnRTdEWUV5UGgrYWtqUGlCM3dWMWxDWWJ6Z1lkaWxKVjlTUlJEckdj?=
 =?utf-8?B?VVoyRFErRjRuTGlHSnA0cDFEekRuZ2wyOHdmc3hhMmlnOFhNQmVtWjhxVW5F?=
 =?utf-8?B?Q2VZbEJBNGhqWUYwRnJRQ01GVFFKRUYxVUlWakJEdzZ6OEhudkVodXhNbjJm?=
 =?utf-8?B?QndEcTltMVljNmE4dTZROTNtb2piZnE2bDJ5OTQyUWRudEFUSVgweVB2QmZj?=
 =?utf-8?B?Z3Q4d2tOb0wzV1RCM0JzUjg0NnQ5d3d6ajZ0V2puRmZoZnRubTRSK1BRdmJJ?=
 =?utf-8?B?Yk5OR0grbyt6bFY5My9rZVZENlBTRWMza013SjFxQUQrT0VkNHh3SXBlaEM3?=
 =?utf-8?B?Z3NPenc5S25RNDBpYSs1bHBCRExtKytnVDQyMXk3N2Zaa0JDZ2IyOGVwbEcy?=
 =?utf-8?B?NmpERktxODZWL2dvYUF4SXFEVXo3MDlqa1M0d2lOaW1YNjVYNnF5emtVK2pz?=
 =?utf-8?B?K0R0am1ONW1nSVpxeDZnS2ltMDBNR3NJRkhIYm51TTRHazg1T0pSS0lmREdr?=
 =?utf-8?B?RzhrRmNqVzhTVUh0endHN0t3RURSRHE3SjVjNGUwZVdOV0JpVzNZbytkUHNZ?=
 =?utf-8?B?MUFYM3RNR0VoTEVnTitGcXg1RzhLMXVybTBJVVkwc2NiaGI3WDRiS0lBZGN6?=
 =?utf-8?B?RTBtY2ZxODZoV0lUVVZUQVhnQkxpekdCSGdsSCt4cXJUb3c5RUtXOHVFQ2FT?=
 =?utf-8?B?MmxjUVgxTGVqWjdwUXg3OG1CSGtoTDNiMWNtZlRCT2Iyd3FaakRnVDd4Z1hN?=
 =?utf-8?B?UmxRbXczODJ4SVJJZ1VOcEh4MVNtZUhFMTBSdUJTUXpnOGtnZnNsbi9NaldM?=
 =?utf-8?B?MVlxOXozVE13T2ZCMFhPNmhETnkzUFp6d0hwSHR6UEwySzFhWmlBc1JUb2o2?=
 =?utf-8?B?Q0d3cDZaaGphTDg0ZkZ4eHYyS0tmTkphUnVSTDdvNTlZRjlXM1VKLyswTVo4?=
 =?utf-8?B?dEthUjBoSWc0RVBhdGh3TkRJbzFQWUUwZ3lKZkdqbENHWUFOWWZiQTdmVDFx?=
 =?utf-8?B?Mm4vbmNXaHB4Tkh3ZWg4Q2VHOVF4bW9kS0dkekVkVTBqRTVLeDFZQWFlbjlt?=
 =?utf-8?B?bGw3R1J2ZjhKbHBqL3NXTmd0WEYrS044c1RIRDBrbVlldENEeHdQeW5RVWlr?=
 =?utf-8?B?bjhkUDV6b1Vqa2dhMVMxYmo0MVMzVXRLTkdaNm9FZGN1dHhpYlRVeC9iNkdL?=
 =?utf-8?B?OHZOeVFrS0FkSjFIQmJBZ2Z0amx4MGhaRlRhTFZjM1MxODQ2bU9WRHp1bDhM?=
 =?utf-8?Q?MF/bRwSUQxaS5XvsFo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OGkzYjNiSGdkdytxSzM0VXFkczF5T0YyeVhUL21OSVdvSVhzZnZoNnRrTm9t?=
 =?utf-8?B?RmJLRG9YckRheW5qQUFmUEZCSGtobnVMKzV4V0Fyc1BaMmdiVnJaMS9jZnV4?=
 =?utf-8?B?cEQyUks4RXpuSnZ6RE5aNndwamNTMlNLYUdkSkxyOE56TnVjcDlrK29rMVl6?=
 =?utf-8?B?OXhTTWlaSWJNWUV2VTY0VVpMN2hHZGUzenluMXZYbjYrM0VRc2h2YnFzckQv?=
 =?utf-8?B?eGpuSVlZVDM4S0FhT29CeDk3clo2SzQyczJRS3p6Z2pPbVcyV2lWOVYyLzZI?=
 =?utf-8?B?UHJIVEpCNGRvRmk4ZGYxSTltSWRmRDVlTWsyanZkYjAzdGNrT2hzcFgzbDg4?=
 =?utf-8?B?cDZvQ09aZ3E3aE9OY0JVb3pnN3dVNUdabXMveExMZEhlUlI3WTFpVER6bkpw?=
 =?utf-8?B?TWFHa3FjZUU1cTNBcEpvNVRjYlZaeGlQVSs0M2NGbDJDUUx6bVg1MTBvdmVv?=
 =?utf-8?B?MUhBOGRKUzZLYkQraENOYzByL0o4TnVaMDg1cnFUU2FpRSswM29paEIwTVlq?=
 =?utf-8?B?S09yS0dyTTJNc1AzVm9EYlVPLy9hcDZ6ek9YaUhjQ0VyUXZZcUZ2WEI1Vnhq?=
 =?utf-8?B?SlJ0VFFmdDdpY2o3RDJNV2tic3Z3ckNCS21KUWVOWTU3TlpWR1YxMGJ1bG84?=
 =?utf-8?B?bk5iZnBQWUJkMGZkZi9IeEFNRnVmdEc2MU1GM1cvYXNLTU1UMHQxUzcxdkFh?=
 =?utf-8?B?QXk5eFJ5dGl0OWk4Sm9tT0h3WHdRQXhoU3hYem1wblk4UlFab3NzbGVvY2R3?=
 =?utf-8?B?STdMVDBXNGxxMDYvRFFSbFdVQU9ybUhkN3k0WnAzL2EwUmJvc01FMktrSDVB?=
 =?utf-8?B?YnU1UVhkUWFTZU5haForRWR2STdYWE9IMEo5dnVuaDlhZ3VvWHlOTXNtbzU0?=
 =?utf-8?B?RUhnRlg1SUJXOXVDamVxMk1kUEhvd1g3bWwyS0R4REJGUjVEMk1KaFJ4VWFr?=
 =?utf-8?B?NDcyS0FDY1d4TGw5aXBPZERuL3lYZ0JEbFpOREY4cG5zOWw1TXdaTkpKQ3JG?=
 =?utf-8?B?aWdYelptSjVBMFBkNCtqSUpuMGQzUUlWUFlReWtiYU0rR3JvRkphWnNMdEdW?=
 =?utf-8?B?Njh6WExUTVJ0ZGl6dWw1dUpnYjMySFZmWGN6cWFQZ2RLY3c3MVVpOWxHOFBR?=
 =?utf-8?B?TmxhVVRpeGpUUGUreEhXc1ZVTzhRT1E0R2tnOUFFcG5IU3ZFL0JWQXNmUkhj?=
 =?utf-8?B?RWJBZ29UV2dRdml0REIxc1BNTURNbW0wdGhUekNKWGlEbFh5VG1uNTR4QmZ5?=
 =?utf-8?B?OXRtTllTK1dxcEczN2o0TXhvY1BJTU5sV2diQmQxWGhOeFdvaEJkSk55RjVO?=
 =?utf-8?B?M2dvRVpTaG9SRUF3S0RNUjB3M1liaHZCcE02RkRuM2lJd3dMWDNOQWhwUVk3?=
 =?utf-8?B?QXl1TVFxTW03NGpwTnRaU0lQSzNGR20vM1ZqcXN1RzRRWUNNajRRY2MrU2d5?=
 =?utf-8?B?OHBkNFdGTTZ0czAxWjgrOXBLQkVLSjRqcWdIN0xNL3pTUFhCMFE1YW5qRFdO?=
 =?utf-8?B?WTlpUTl1TlR2NHZrY2FSQlVVMU14bDVjeGZZeEI2YVQvbTlpMkljbW8rdnFv?=
 =?utf-8?B?clZvTmRncjdMQ2h4dGpjRzBOWWc3am9DbU51N1IyVDl6NkxDMTF0MzMwNnZZ?=
 =?utf-8?B?WHdYcnRnUWxUdXhCZnZjRUFPdUlLMXJCTTkvT0xTZi9MT3NqaHpvTkVmcTBV?=
 =?utf-8?B?bVR0ZTIzcTBkQmRyb2ExREtIMGFQOElzN3ZPZWh6YXZqb2R6WDI3WlJQZVR5?=
 =?utf-8?B?UkxKSUJGdzY0OFJVbDhnRlNCWkFnazVZYlE2WXVqOUVWMGhrTVBuMXkzZStC?=
 =?utf-8?B?QUk5TGdsdDdQdHR5K2JDMmlNNXlSY2J1eVE2YzJ2YUVSRzNaYXdWdzl3SjhG?=
 =?utf-8?B?SUxPbHZPWjRYazFQeXVtWDJiQVBJZThSd1hCcFE1bk9kbEduZEtLcDJFWER2?=
 =?utf-8?B?QUtUU0c5SUZleGUwOVNLVFFBYnZTTHlFcExLVk5HR3Fya1Q1ZmRaaTFTVG1j?=
 =?utf-8?B?UFpVSTlranhhbHpKc2E5anIxZEdEMVBJSDFhaDI1VEthVWdjbW9RYnVzOXp5?=
 =?utf-8?B?UksvaEYydWc1QklzRzk2dGl3b1A5MTNyQXFZYSt2QXhuaU8rRGhJTytwSUVw?=
 =?utf-8?Q?tms1A6J+VW3vYOlG9QrM483zm?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2baf0368-d8d1-4c14-2b80-08dc96970f09
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2024 10:51:11.9717 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ptSkw5P9VxL673TMzLkDD8qnjgeNR3CSPCa1/Z/Sra3kL68HwhREDRf094+6/7DPxOT1MLvUVcMqljERj+qrEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5187
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



On 22-06-2024 02:48, Vinay Belgaumkar wrote:
> We are seeing a possible switch in RPe right after RC6 wakeup.
> Ensure we obtain the latest RPe by reading it every time.
> 
> Fixes: adcc68266b8e ("tests/intel/xe_gt_freq: Check for RPe freq updates")
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>   tests/intel/xe_gt_freq.c | 43 ++++++++++++++++++----------------------
>   1 file changed, 19 insertions(+), 24 deletions(-)
> 
> diff --git a/tests/intel/xe_gt_freq.c b/tests/intel/xe_gt_freq.c
> index d2e4d1a09..65ec3b0c4 100644
> --- a/tests/intel/xe_gt_freq.c
> +++ b/tests/intel/xe_gt_freq.c
> @@ -70,6 +70,11 @@ static uint32_t get_freq(int fd, int gt_id, const char *freq_name)
>   	return freq;
>   }
>   
> +static uint32_t rpe(int fd, int gt_id)
> +{
> +	return get_freq(fd, gt_id, "rpe");
> +}
> +
>   static uint32_t get_throttle(int fd, int gt_id, const char *throttle_file)
>   {
>   	uint32_t val;
> @@ -122,7 +127,6 @@ static void test_throttle_basic_api(int fd, int gt_id)
>   static void test_freq_basic_api(int fd, int gt_id)
>   {
>   	uint32_t rpn = get_freq(fd, gt_id, "rpn");
> -	uint32_t rpe = get_freq(fd, gt_id, "rpe");
>   	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
>   
>   	/*
> @@ -138,16 +142,16 @@ static void test_freq_basic_api(int fd, int gt_id)
>   	/* Assert min requests are respected from rp0 to rpn */
>   	igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
>   	igt_assert(get_freq(fd, gt_id, "min") == rp0);
> -	igt_assert(set_freq(fd, gt_id, "min", rpe) > 0);
> -	igt_assert(get_freq(fd, gt_id, "min") == rpe);
> +	igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
> +	igt_assert(get_freq(fd, gt_id, "min") == rpe(fd, gt_id));
>   	igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
>   	igt_assert(get_freq(fd, gt_id, "min") == rpn);
>   
>   	/* Assert max requests are respected from rpn to rp0 */
>   	igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
>   	igt_assert(get_freq(fd, gt_id, "max") == rpn);
> -	igt_assert(set_freq(fd, gt_id, "max", rpe) > 0);
> -	igt_assert(get_freq(fd, gt_id, "max") == rpe);
> +	igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
> +	igt_assert(get_freq(fd, gt_id, "max") == rpe(fd, gt_id));
>   	igt_assert(set_freq(fd, gt_id, "max", rp0) > 0);
>   	igt_assert(get_freq(fd, gt_id, "max") == rp0);
>   }
> @@ -163,7 +167,6 @@ static void test_freq_basic_api(int fd, int gt_id)
>   static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>   {
>   	uint32_t rpn = get_freq(fd, gt_id, "rpn");
> -	uint32_t rpe = get_freq(fd, gt_id, "rpe");
>   	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
>   
>   	igt_debug("Starting testing fixed request\n");
> @@ -187,20 +190,17 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>   		igt_assert(get_freq(fd, gt_id, "act") == rpn);
>   	}
>   
> -	/* Refresh value of rpe, pcode could have adjusted it */
> -	rpe = get_freq(fd, gt_id, "rpe");
> -
> -	igt_assert(set_freq(fd, gt_id, "min", rpe) > 0);
> -	igt_assert(set_freq(fd, gt_id, "max", rpe) > 0);
> +	igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
> +	igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
>   	usleep(ACT_FREQ_LATENCY_US);
> -	igt_assert(get_freq(fd, gt_id, "cur") == rpe);
> +	igt_assert(get_freq(fd, gt_id, "cur") == rpe(fd, gt_id));
rpe may change after usleep, will it affect above check?

Otherwise this looks good to me. may be we should add Closes: 
https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/1829 in commit 
message.

Reviewed-by: badal.nilawar <badal.nilawar@intel.com>
>   
>   	if (gt_idle) {
>   		igt_assert_f(igt_wait(xe_is_gt_in_c6(fd, gt_id), 1000, 10),
>   			     "GT %d should be in C6\n", gt_id);
>   		igt_assert(get_freq(fd, gt_id, "act") == 0);
>   	} else {
> -		igt_assert(get_freq(fd, gt_id, "act") == rpe);
> +		igt_assert(get_freq(fd, gt_id, "act") == rpe(fd, gt_id));
>   	}
>   
>   	igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
> @@ -232,16 +232,15 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>   static void test_freq_range(int fd, int gt_id, bool gt_idle)
>   {
>   	uint32_t rpn = get_freq(fd, gt_id, "rpn");
> -	uint32_t rpe = get_freq(fd, gt_id, "rpe");
>   	uint32_t cur, act;
>   
>   	igt_debug("Starting testing range request\n");
>   
>   	igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
> -	igt_assert(set_freq(fd, gt_id, "max", rpe) > 0);
> +	igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
>   	usleep(ACT_FREQ_LATENCY_US);
>   	cur = get_freq(fd, gt_id, "cur");
> -	igt_assert(rpn <= cur && cur <= rpe);
> +	igt_assert(rpn <= cur && cur <= rpe(fd, gt_id));
>   
>   	if (gt_idle) {
>   		igt_assert_f(igt_wait(xe_is_gt_in_c6(fd, gt_id), 1000, 10),
> @@ -249,7 +248,7 @@ static void test_freq_range(int fd, int gt_id, bool gt_idle)
>   		igt_assert(get_freq(fd, gt_id, "act") == 0);
>   	} else {
>   		act = get_freq(fd, gt_id, "act");
> -		igt_assert(rpn <= act && act <= rpe);
> +		igt_assert(rpn <= act && act <= rpe(fd, gt_id));
>   	}
>   
>   	igt_debug("Finished testing range request\n");
> @@ -263,23 +262,19 @@ static void test_freq_range(int fd, int gt_id, bool gt_idle)
>   static void test_freq_low_max(int fd, int gt_id)
>   {
>   	uint32_t rpn = get_freq(fd, gt_id, "rpn");
> -	uint32_t rpe = get_freq(fd, gt_id, "rpe");
>   
>   	/*
>   	 *  When max request < min request, max is ignored and min works like
>   	 * a fixed one. Let's assert this assumption
>   	 */
> -	igt_assert(set_freq(fd, gt_id, "min", rpe) > 0);
> +	igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
>   	igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
>   	usleep(ACT_FREQ_LATENCY_US);
>   
> -	/* Refresh value of rpe, pcode could have adjusted it */
> -	rpe = get_freq(fd, gt_id, "rpe");
> -
> -	igt_assert(get_freq(fd, gt_id, "cur") == rpe);
> +	igt_assert(get_freq(fd, gt_id, "cur") == rpe(fd, gt_id));
>   
>   	if (!xe_is_gt_in_c6(fd, gt_id))
> -		igt_assert(get_freq(fd, gt_id, "act") == rpe);
> +		igt_assert(get_freq(fd, gt_id, "act") == rpe(fd, gt_id));
>   }
>   
>   /**
