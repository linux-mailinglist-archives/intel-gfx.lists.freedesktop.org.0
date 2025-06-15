Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA30ADA24C
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Jun 2025 17:17:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75C1D10E117;
	Sun, 15 Jun 2025 15:17:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="joIV9WIT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B585910E054;
 Sun, 15 Jun 2025 15:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750000657; x=1781536657;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=sNPmh1i+nyBOkSfCn1A94WzQ955/PXElAnK3kXdcXdA=;
 b=joIV9WITmI7BkFLCmNZCdKR2AK3DvMan2L2wS0hiPxxD+Q9N5Rw9SRhQ
 kdXMGQgqpTqiS7CXw8ak/bTieRaoz4spIPuCjaqyjw9JX3EYLlrHLKK3D
 soNc+mwdVN6wDqGzK10vrb/jtZiYkrRo96+uD4TFN/zcyXRRZUudPuCIS
 q5n344bu1DMLC3+goXdhrrm840rgExgIPZ5huxiHFTkY5Kvn+OD0vvgO6
 9zEhjL2oDKGOPZ2EWGnC5tL4VODKanM48wkMBM64bdLllXzJGk8lG5LLw
 LcGTAqdULFhXapgD69XPs2iXiSksAzoqa0lLjjkDg3rpKfDvGNPmSSPrN w==;
X-CSE-ConnectionGUID: +N/Fa6S4Tf6Nli/X5rzW+w==
X-CSE-MsgGUID: 39LZI34uQWSknW+K/FRilg==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="52289234"
X-IronPort-AV: E=Sophos;i="6.16,239,1744095600"; d="scan'208";a="52289234"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2025 08:17:35 -0700
X-CSE-ConnectionGUID: Q9GC+svZQsKsWYE1KYXVzw==
X-CSE-MsgGUID: 4PBPlebHSlSoPSk9DKJt/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,239,1744095600"; d="scan'208";a="148718866"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2025 08:17:35 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 15 Jun 2025 08:17:34 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Sun, 15 Jun 2025 08:17:34 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.47)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Sun, 15 Jun 2025 08:17:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dXjAfDYEuTi4Kj4GIh3F9NPOA/0Y72zgfP8wCEwJLOgp7ZiPmTtog5db+ZG4yYTsADSJ3QKoIzoOLEwnIaTAnjP3hg3AESk1K8d+E0ctE5urXDmL8hC2IBxijNnm24NMdoQLV5fILrabpFzRJMpjYqxdwD0zQJ1kyuPizcWUfdstRLaUtV+Pfj11aS/DhF2d8BewYsCJFZZ8dHzMfTEVKjm4kfgnT5Kv62wqtL0J/mNnQ57kpuzHx6oDPzYl50O1EZoY0fjkM6Jlq2NgHKLR3O3Nx5yw+xqv7iCOwqoQ8Tc//9CIyqC5ONLh/fiRMYewM0JTXIONh85ZtJ7gNAam6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=myH33IYbb0rtwmVngAzUheWaSRGsLP1vHs9c+JRlylA=;
 b=FwrRz4WkKoqwb6pUkTXcGPd/Cbb1URpQKeEW0rey+oxv1ulJOntp8OMYcXnj33fLLSZ+/w/5+5oEiXLTREU+SOnimDOByve8VCGUeYnAgeJP7UtKnkq21Y60nLXd0KbcsShcOd6d4YJSmD7gAtaC4yI8faHPk81HfEvzKSv8NdNBcEc8gSoPDUormJAZ+ichjmEcB9EEEVNsFsjRPcVuf7zB6BkfQYq0fMy8FbFhB1OmfBWM/q42dk05T5DugZ55Kv9Mn15BQScN29WMo4wnUZFbdHzp4Ruqo2U8/3AHX7EMcYKN1TctYD94Ktoio/TQnqzkgc0Shqi+SSiQodrhMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB7718.namprd11.prod.outlook.com (2603:10b6:510:2b6::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.27; Sun, 15 Jun
 2025 15:17:18 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8835.026; Sun, 15 Jun 2025
 15:17:17 +0000
Message-ID: <103f180a-79d1-49ea-b81f-dbd5b3936be6@intel.com>
Date: Sun, 15 Jun 2025 20:47:11 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/gmbus: Add Wa_16025573575 for PTL for bit-bashing
To: Jani Nikula <jani.nikula@linux.intel.com>, Gustavo Sousa
 <gustavo.sousa@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20250612075330.837179-1-ankit.k.nautiyal@intel.com>
 <174972962084.14553.9763596946172547950@intel.com>
 <bd3a2162-7fc6-42fd-808c-934720cbc5c2@intel.com>
 <7f079861f91861e9e895240cd3272f6e29deab7e@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <7f079861f91861e9e895240cd3272f6e29deab7e@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0107.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB7718:EE_
X-MS-Office365-Filtering-Correlation-Id: aa5e64b2-a739-4d92-b62d-08ddac1fb6fe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WEpMQ09rTDJVb011NmxWTXB3UXdmVk9GdUd2RUhjRmtSRlJQNE0reDlaVm1H?=
 =?utf-8?B?b3ZxTmlSQml0QmtVQ1AyTmdHL3RBQmJhMUJVanlzZ2tkMk9yM3BZQU5oSGRk?=
 =?utf-8?B?blhSUjA4NnZrdm4vbDFWRzMxVVpURlh4ODZXSmV1QXVjUGZKeUh0K1ZCdDBI?=
 =?utf-8?B?MDJVQWJESnc0N0FoUFVxdzdBMUZjUk1ERWVxQVdHbnJoMXVacnN0djV3dFh4?=
 =?utf-8?B?cjZGejc0aFRkWFhTRGEwNXpJanBmWWpBRzdsSElNSjFDOVIzMm0wNm55Tkpw?=
 =?utf-8?B?Vk5vczhWQnpJS3ZwdFBHZ25xRVg4V1NvUDB1OWRBbk5ZTm5oczRLR0luVEF0?=
 =?utf-8?B?VkhLUi8vTHBmNGpnOFQ5aHBQMXA1VzBTMlFnUUIwTUxxVXErRG1rbTRuYzVo?=
 =?utf-8?B?bjhmclBpNEhkeU8xK0RLcnZEb1R3ODBzVHpOb3RxQlFNc1c5WWdwbTloNGFI?=
 =?utf-8?B?Z2gwV1M4ZkFTZ3dhclR5T3FBRXcwUldDaERkOVVIRnQwd3NOV0NzaHJBdHVL?=
 =?utf-8?B?RWpzanErVEtkYzZ5cWVwa0UxQ3o3SkZveEIzVXEzdU13M2MwRGRhODd2aGJD?=
 =?utf-8?B?ODFvaHY0b2Q1SXU3Tlo1WWovQ3EwNnBobjJMNjgyOEt3ZnFLc1FURnVxd1V2?=
 =?utf-8?B?aGt6TS9GOC80NVVoQVVkQlBpZm1zYlNUUEpUT2RYaXBzWlZaQVNGckxTeXhk?=
 =?utf-8?B?aFZZOGoxTnJJRW53WDk5ZjI1Umw1ZVdaVjgzWUxlMmJ5U0tsNTEvM2dJSjFT?=
 =?utf-8?B?OGpuNzlkWmxkZXN3Zk51Mk5oZ3RHdWtLNlJBdlJaUk9zZ0tBUkg2eERSaDhC?=
 =?utf-8?B?Q2RGMk9HRHI3cExOcUN5b2RqWnAxTnIySS9FK2J6dFNpYTlYL3N5bTlmVWdp?=
 =?utf-8?B?eFkzRkVUZ2hIOFRZQWpxMS9hMUhub29DVmJRcytjK3VCeTExWlpFNjRRYTVs?=
 =?utf-8?B?dnhXY09uMk9raTI5Njl6a0FVSC9oS2h0YmVuOXNicVlSNTFBNW00alorSWZR?=
 =?utf-8?B?Vy9uRUxxRk5WOTFVU2o1VzhBVWE0STY2eTdCSWUxc0Izem1zLzdqem5iTTFE?=
 =?utf-8?B?UW9mU254RFNOV1lmV2N3Z1hyYklJZkk3WlpaeFhPZCsyaEhveGk2Q2RnTmg4?=
 =?utf-8?B?RkIyQjhzOG14QmlodjRvNzN4ZHFCRHB4cmRQcjVNMGtoZUFVbWlzdnlISExV?=
 =?utf-8?B?WDVwZTU5ZEM2VXltTGc4VUgraHViOUhsWVBWVTlrYzluaFdQNjVmK2dmMU5z?=
 =?utf-8?B?enorS3kxdkJ5dkwrbDdVN2N6RG5jSW02Nno5Z01BSUFvUzJQZVAvQnVVZjg0?=
 =?utf-8?B?MUJFdDg1NXVGM3grR2tzT2ptWXNQRVdTVmxoZXp5dC9Sc1AydmRjMTRPaTd6?=
 =?utf-8?B?TU9VUHpIZ3VEY2U1cXM5NDlLWGorZkdJeS9IK0czUXVYYW14VnlOVW5jSFgx?=
 =?utf-8?B?b0hkUkI0NWxXZkJ4eDk3SFdRMXZDYUdDaVc5SHpBcFNwdlRkWlp4ZjliVWtm?=
 =?utf-8?B?UEpaR1FTaWNycHIwSzdqL040VzNaQlU3SitWeENPUk1pdTUrSjVUUW9ISFAx?=
 =?utf-8?B?L3BaTjhtMEhOOHVZa2xuaDJJWG1XR2tITjFnRFl0NUhNUG9jZVdRbWg0OTVj?=
 =?utf-8?B?UCtBYU5vSzd5Y05TalJydlcvWW9yN2ZNYk5OWWxuSGVXRGo3N3dCZGpWOUZQ?=
 =?utf-8?B?Mk4zRjlNNFJadWhJZWpiV0JSdHdJbHEwL0tuTFpkQ3VKQ3VCbVRYbk9WVkRV?=
 =?utf-8?B?R1VtcjdwUjAyN0NzVklNLy81VkNpOEhrT0tsRC9GTTVtVDkzWVZrRVZ0NzFQ?=
 =?utf-8?Q?GDo9hqKQqYNLFHA+62+yr/pZTOKczzbjC7OhQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RHVTM2xhbjdlT3BXeUg5L29vcWVCYVJMbTBHWjJucURINHhvME56dFowN0l2?=
 =?utf-8?B?YUh2aUZYNTR4SjhHWThsV1BzZGtkaFJuRzFIU1pGU0JRa01aN2dmZzRnRXFY?=
 =?utf-8?B?SkY2OS80TDVTcU1yMlEvaWpFUjl0RnZHaWxsdnZGeHhSZ0MzOXZGZnhyUFNM?=
 =?utf-8?B?RXJwMnNvZVhhcUdGUGZzM1hzV1VpeFRrNXlhaU5kRzBUaVgrUHFaNUFqRTN5?=
 =?utf-8?B?MUIxcVladUZHQk1Ea0Z1UEZaUkVqSU1oR2dwb2hsZnd5Zk84MEU4aWJGd3Ra?=
 =?utf-8?B?bGpiZCt6M3F5dGd6V2N5Z1pvSWJOK0xmNHBwK29GTFZJam8rT1d3Q2Era1JU?=
 =?utf-8?B?V2lpTDNyQllzOVE1UUptcDFmYkIyWFVGdG81N3owS0xPbGlQQmExNjFheXUx?=
 =?utf-8?B?blZ6bGZ1NWl3MzVTMXdwdjVSblk0ZTQyOE9oWkZOYXpVOTNzYXAvRVdVMXBJ?=
 =?utf-8?B?aEFyZVg3ZkY2VElDRERLSGEyUmI4ak1DTU9sRzRidjBQRDYzN0xRZVRHdHVC?=
 =?utf-8?B?bnpsSFFKY1hDQU1Cc0NBV1FDVVBBWlRmYjNkdDhmMU02NmtqRFdJeTg1Snoy?=
 =?utf-8?B?QzdLVjh2SzZnZTE5Yms5dkowNCsyZFdEQWt0Uk5iTE9EOS84S3FCK3ZPelJi?=
 =?utf-8?B?M20yQ3YyaXBFVGxiNzhMeVY2Rm1KT3RRSnFWdDd0QU5nZWFoSENOMmNGQlBy?=
 =?utf-8?B?WE4yaGhlcXl2bmpyWXZMTmFwZEtCNEpUNUl6U3hMRDI3ODRadmwrSXdMK01u?=
 =?utf-8?B?WkU1bDBQeExSNjBydzN0dGhuS0RVNlVXZTVPcnRNdm5uRVpEZFE3NDVnMG9B?=
 =?utf-8?B?RThBSFppMnFGUDJPV3A5U3FoRTBmSEt6Y1dRaDNEK2liTmNLQTNsTjdQaFN3?=
 =?utf-8?B?ZVlBUnM3d2loZGxieS9pWmRQYlhXRVN5U3hqeWVrY253L2NFQjB0cUQvN2Uw?=
 =?utf-8?B?cWhneDZoZFBkZ3hzamJlOHlzVEJOaGtMQkRyTmpBZHhtZHI5L2Qyb0FWcDVO?=
 =?utf-8?B?bHNMWlRKQVBsSXk0TDYxTng1cytidW1CZ0MydGZtUzZxa2p4ZDJWTjF6WVJU?=
 =?utf-8?B?QXhtMGlaN2RMV0hHWFF2Y3pkaUljeGpCRkFlcjE5RGI1Kzg2YXdlbGxSVEdr?=
 =?utf-8?B?L05uRUxWZFZDMEU3R3BPV1hPUHpNUjZHeTZMUFlpblE5UUJod0g3VURWRHdL?=
 =?utf-8?B?UDkxVFJ1eFI4d2lMNGJBamgzODNmUVZ4NXRBc3lKWkRZS2RmU25xMFJSNkR6?=
 =?utf-8?B?MzhTZHRxUDJnRGN0MCtoak92cFpMd1RPUE9TMnZ3S3FCQmMvVG10M3o3Q2F3?=
 =?utf-8?B?bHZzUkZodE9tZ0N1R0d1ZWdmMkdOTVk0ZWNJbXBjUHJLengrVWN0OXBhVG5k?=
 =?utf-8?B?a3VIZi9hb25rSWxnWjd5T09JYTJ6SHdkTCt4bk5UVnpUaXlHSENpbWhaWlpy?=
 =?utf-8?B?c2todmNZRGNJcm9MUmptNVgyWHJOS2RVaE9VNTlLK2FTa1M2R3R6eWt1bHVo?=
 =?utf-8?B?T1RWU1RhMzZxU3ZtMkQzNkJxb3hEY1Fvci9OZmxxM0paOC9wSFRtTlBYYWlO?=
 =?utf-8?B?MDM4bElmRWFmOXErTWd1OXdBbitLM2JLdmJ3QW1ZZ0hrNmREdzV4N2lNbXoy?=
 =?utf-8?B?SEh1OEF1aU5JSjc2NkdIdzJhazFTNEdJZmJOVjNmSy8rVG1wMkhzdzFZVUtY?=
 =?utf-8?B?bUpFREpxZ0lsbWRZZ09CalR5dndCMm4rTmF6ZUJiZm5IcUhTZGcwaHdDZy9m?=
 =?utf-8?B?WCt2NTM2bVEzNmE0QlhSbzYvNUFXUkorUlU3clBDOGJxektyd2xpNlpmTnFw?=
 =?utf-8?B?OEZQQ3I4UUVHMDJwL0srWmRiVEVYYjI3MENJNmRkYWF1Rkl5SnB6YWNmNFRn?=
 =?utf-8?B?djU4TjU1dFl3VEhnS0FZYnZNODUyRXNma0FleUF0SVBHMW1aeXRQdDlQbWh5?=
 =?utf-8?B?b0RDTk1od2V6d2RXazR5UENkeWNMTFpnTjl3dXc4SmJtMGZsbkRnMWJqRVRR?=
 =?utf-8?B?SlZxek9ZTjRXcTYxYXVRait3UzMwSWtFYllOMjJqS3AvZ1QzQTFIZ1ZyU1Jw?=
 =?utf-8?B?Q0laRUk4YWNoaXJjQVRKMnBIclQwSHR0ZlZUZjJpK0EyZGhORzFGam9XTC9v?=
 =?utf-8?B?UDMrSlphK2ZydkkyL2JTMlFFUjJ3aldEQmhVcTBweFQzUjYxUFptNVFKMTd2?=
 =?utf-8?B?OEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aa5e64b2-a739-4d92-b62d-08ddac1fb6fe
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2025 15:17:17.4317 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b9EPi29AooTkM6yijkb4lOm2yqbfsgqt7pfjAQQVxVXS8pcoEXQIEFOojdJ74oHZ5KM6CofuHoJCf693i02w1+4HUc96UhSpd/B4NudKfXQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7718
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


On 6/13/2025 2:43 PM, Jani Nikula wrote:
> On Fri, 13 Jun 2025, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
>> On 6/12/2025 5:30 PM, Gustavo Sousa wrote:
>>> Instead of open-coding the conditions for the workaround in three
>>> different places in the file, I think we should have a function
>>> needs_wa_16025573575() and use it.
>>>
>>> Also, note that the workaround is also required for WCL (display version
>>> 30.02), and we would then include that in needs_wa_16025573575().
>> I agree, will make a separate function needs_wa_16025573575().
>>
>> Thanks for the suggestions. I will make suggested changes in next revision.
> Please let's aim for something a little more generic and unified than
> that, and one that can be easily extended and switched to a generated
> version in the future.


Hmm. I had sent something like that for another WA. I think I jumped the 
gun at that time by using the XE_WA framework directly :) [1]

I can make the suggested changes and send again.

[1] https://patchwork.freedesktop.org/patch/612661/?series=138257&rev=1


Regards,

Ankit

>
> intel_display_wa.h:
>
> enum intel_display_wa {
> 	INTEL_DISPLAY_WA_16025573575,
> };
>
> bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa);
>
> #define intel_display_wa(__display, __wa) __intel_display_wa((__display), INTEL_DISPLAY_WA_ ## __wa)
>
> In code you'd use:
>
> 	if (intel_display_wa(display, 16025573575))
>
> For now, you'd manually check for each enum in __intel_display_wa()
> implementation, but in the future that code could be generated similar
> to what xe currently has. I'm just not very enthusiastic about adding C
> language hostprogs with custom .rules files and parsing.
>
>
> BR,
> Jani.
>
>
