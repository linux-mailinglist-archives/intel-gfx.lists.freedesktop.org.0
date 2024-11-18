Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E769D0A6F
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2024 08:56:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBCC210E155;
	Mon, 18 Nov 2024 07:55:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aJd2h1H6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A11610E155
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2024 07:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731916559; x=1763452559;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jk5FffreZ9a0U0tAFbceCB7d/NOKbynDBkKzUNpjIC4=;
 b=aJd2h1H64GF6TFSLoqV4QnwCN/3sFw29e+Ntu+kxXiaBYoAUqz7gWItn
 lI8pW9rh6RFpYDhZUJgQDBFVOqvKybHUsS6lyJjeRYYoxKYoOyMK/KiC9
 WpgaakJOqoDNhAUX0MXBlf4HSwigVjNiaGhtk5a4vOcGY47ZEBRe6VaqJ
 3swS0+a0HllJjS2xh0or/3x0YgnG+dayJknvA6786MiPBiKP5CRNxVkWB
 NCawh9MLe9jALc6sE7RB+rwvjdTRX56oVZ7+odebEtMd+8wR1+fFySOYc
 n30r1qJljY1BJZg1Sq7GPzc/p8v//bFYzXMW4bp4setM9vJjWuFXqIl2p w==;
X-CSE-ConnectionGUID: F9O3Qm4KR7+UKW7gSmLdkA==
X-CSE-MsgGUID: ry/KpPi2QO+Yf04klXGRZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11259"; a="31989782"
X-IronPort-AV: E=Sophos;i="6.12,163,1728975600"; d="scan'208";a="31989782"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2024 23:55:52 -0800
X-CSE-ConnectionGUID: XV1KakunQl2XJE4LAdyV/g==
X-CSE-MsgGUID: J5w0OZLdTTS+edvtSVWtDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,163,1728975600"; d="scan'208";a="119999667"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Nov 2024 23:55:52 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 17 Nov 2024 23:55:51 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 17 Nov 2024 23:55:51 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 17 Nov 2024 23:55:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qnm8DfUuhPT7YybCJzf3AqQ9UNUYSC8usfuJHku/ljmW4qI8tMkL1WnXjOeCQDkCMmj6dBJw578XC66sqpDYEdnXrffWlVj91E4INMK9ZSJ3F7csjOhKmUR8Z8mWW0+gyEpX3V42EtG0i5HGgb5nfJJd3qpr1efrz6KcT0tnqKkYzYVwFmwH+0C0LCW01kAOrMlqxlRXb9T1zyscqYD8YeHP6MZikKAHxvFEZzBh2PSwPqUp7c6apjXfPFLFOts6xTIgrl7b9uAddlwjwqAjJb4ra1v8EHtqpKygw1FmfivUKQHG0Gk5vARkdS0IrBDKJ87zgwINC6T5uDs5JQK+9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ykdxRsvCbuHcop1cJOhAcor79mOCm5vAJqJ6iOaYhDU=;
 b=d6k1hUcpCBUcjmOURQG1PBeZziuXxagOQjD6yYa2KWeF73pHvnusyN9qh3tSiCuFr2Q143FHQq/iCbbfscwI4yRkwW9lAsuTT5h5iSPPYBQmjMCnDdR//2a3AO9kSMU1GGaFetn4aCyfjYmySbU9munLbhJzYgiQag7+e5ZUKLvInpsjVeQW+DHIejPPdk82hsGZrTqNWDpopMEDm7yOeGu0PXj2kq9oZ/yorK+7porDocpJyi5Cg/H0zIRb87eoXPNq1xTywGWuYucgsCPOv783/ed6ClhlKqCNaXOpyntSpuDnRHgIZv7guEbvxpskKinduRpO/L8d02iOgeCpNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB6321.namprd11.prod.outlook.com (2603:10b6:208:38b::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.21; Mon, 18 Nov
 2024 07:55:48 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8158.023; Mon, 18 Nov 2024
 07:55:48 +0000
Message-ID: <f14be355-75e3-483d-9867-5761a0075f57@intel.com>
Date: Mon, 18 Nov 2024 13:25:42 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] drm/i915/vrr: Update vrr.vsync_{start,end}
 computation
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20241021105100.2861830-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241021105100.2861830-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241021105100.2861830-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0163.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:de::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB6321:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d01c521-6df8-42ba-36d5-08dd07a66a50
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NkdsZm8raHUxL29JV1YxSG51ZUlJR0NpMEhyOVdkaFlQNXF4YnFSSTI2NkF4?=
 =?utf-8?B?TjR5VmxSUENKdmNRVXhidHh1aitOWkJCakRpMFUvdzNUZ1Uyd0FMUXVIZ3NL?=
 =?utf-8?B?UkxMRXdsTUR4SFo3REhKelZIcUYyYUNHdTNrbmtscVd4MkNKOGVqbXJkUFlK?=
 =?utf-8?B?Y3dkb09pOHdlOEtFS1ZSTks3YlJBaGZNRzA5NENCVE51VFdqN0FNWnZIY1lk?=
 =?utf-8?B?RStjN0thbDVpQzhHVXVvUk1WS2hEcGhtelBobzJVRHpqNW8vMDl2N1BWSUFP?=
 =?utf-8?B?ekF5NW5FMGNUYW9wSCtIV01sb3RMRGlFTytzeDgwcUJidUxzZTBXWGkxWVBl?=
 =?utf-8?B?Szk2ZmlnMmluSTArWFBmcWxsQkJqd3JlaFBRZE0wTHk0akNiRWNqV1k3TmxP?=
 =?utf-8?B?bjdnVnpjZDY4Z1VhczNsbmFmYlJMUDRMSTl1clpCTm81aDlmcU9yT1F2aDN2?=
 =?utf-8?B?L0doYVB4eGk5M1FubkczS3pLS0NiKzlmaWhMYnJoeFFpdmNOaS9CTUFCa2U5?=
 =?utf-8?B?Sy9VTVF0WHBZaStMVGp3YktIUERHdzhzNGFBSnBFSU9peXgzMzhscUc2Mk0z?=
 =?utf-8?B?SFJIbkpYMWhQQ1U5SFBoMEtzN2w4QWJMbS9wVUFITHFEOHA0RHlEaldodmRG?=
 =?utf-8?B?aGRIb1ZBa2VrNjNpckJqZE9jTWhJM05zY1FSK0ZzQWFPL290emNrTUlXYU5Q?=
 =?utf-8?B?bzBRK1ZQcU85YlJmWms3czRtRWpjaGdtdUdxZlBjT1YzRVRhbnVIRGhhMmpI?=
 =?utf-8?B?RlVtRndIRlg0Z0R4NkVuNWdhWUxCZmZ2c1BFd1B1bHpZeTRKcndUajFhOEQ1?=
 =?utf-8?B?bng0dlZlY0NrWlJHM3RXazdZZER0b0FhUjZPUGVUU2YydUVhSUYyTldwanpP?=
 =?utf-8?B?YmRSZUNEZzVrVmc0R1ZvRWU1RU9YRDg3WUk2eC9GbU9RdDJvaUswVEhza2Rk?=
 =?utf-8?B?eURQNWYvKytlRExQWGRyYW94bmY5eDRDMnFBWHQxa016cGhFUnJpQXh6azBI?=
 =?utf-8?B?akhuQVlRbTNOQmZlSGwxVU5JelpEcW9aTDVBaUdDc3pNbGlkWHZpU1QwT0Ni?=
 =?utf-8?B?ckNzM3c4bE1VSElXUGFFT3F1MW1vaUdGQ1BWU01jNld0ZGJybitkU29xL2Qz?=
 =?utf-8?B?NWxhQk9kelRTOXNOSmI3MVZmOWVLczlRK0tUMUhBNU16ejNES2ZqSmtsV3pU?=
 =?utf-8?B?VDVpdWlxZVdNa09vOFZBSUg3UkN6QXpXcjIxNFM1aWJ6M0RyeDhDcWVlSEw1?=
 =?utf-8?B?V3NtM3Jnc0VnRDFyZTFpbExNUHdNTitQanIxbkpFNzJUNTdaNk1ES2s5aUtE?=
 =?utf-8?B?Y3pPR1BKRURjT3VQc0hXMXhLNGZRT1BRUUMxNWJYaWNpV2dDZkt5MjNnV1dI?=
 =?utf-8?B?US94TENPT2dRSW9lN1BKY292MTMwSUFNY1dVV05UQjVmcC8raTREQUE0N3hQ?=
 =?utf-8?B?RzB2YlR3YS95ckVGUWVvWUpibVhJWFlUYmkvUUhlVTNIRWlBQjdxTWJNVC9j?=
 =?utf-8?B?R3ZURVUxMkFhaHJHZTRJWGswUU9wWjErVWtlbjROZisyTEhkOHJBU1lrZEtH?=
 =?utf-8?B?SW9VcmlVUnNUYnZhTW5HKysyU3haUDJma29OSlFKci9YVEtjNGl2elVtWmxT?=
 =?utf-8?B?aDNzdHdRT3AvdWpZZTNMRXhkQitSeTdiNmdncDduVDhPVEE4d0NGcnNoZ3lm?=
 =?utf-8?B?ZCtZVUtvOXhMbkhkaGo3RjYzKzBMY3h5bWRhVTJEaC9ibDJjY2JVMW16UUhq?=
 =?utf-8?Q?FQvuqyMNzcHjcs4fNvw+i36+vrAJhNhKHgFFbDQ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NFF0ZmRPMzNLbjd5T01JSHdkd3FaM29TRENEZXp2SnVXVE9TM0paeVZHdDVP?=
 =?utf-8?B?SEtUSlNUMWk1Ynk2eWFkZExpdis0OFhGRnVxbW80V1o1ZHVrUHhFS2IvYzN1?=
 =?utf-8?B?RXR1dGV6OWFrUnhGOTJnTlF4bERkSExzYVZoNUxrSGFzbTJtMzVKQ2RsY0Fk?=
 =?utf-8?B?SCtkZndaTnRPUFZNWGszRjlmMkpHZVJybFNLdUlIQ1RNS0pwTCtGNDNRT25R?=
 =?utf-8?B?ZHNESzBWUDNwMmd3VDZPOFA3djRkZHlDUkdXOXJaNDN0NnVyRHEzdHNSWGc5?=
 =?utf-8?B?RlUwMFhLdDNHWFJYdCs4VENNOWhVWXhkTHhORTBIeGk2QVFwL0J6eGhYN3hI?=
 =?utf-8?B?Ymw0Nm9XTFpabHlxYytpaHBLK2pYRFBSb1pZRFhEcjJEaEpXNER6L3JidVZs?=
 =?utf-8?B?WGVPdGh3b2d4RmJEaTR0UjFyZ0dCVHkxVnFPYy9JTzQxYkE4MllUeFFHK1py?=
 =?utf-8?B?aU02Y3d3RUpGVEJvYWFYNnQwekwzbWYrR3AwWS96d0VLUU9UQlZ3YzZ1cVkx?=
 =?utf-8?B?ZU9Qdk5WdmZickFad2piMU9OZW84RUlxYUtkNkFrSVhnTlBuMlM3d0s0MVFz?=
 =?utf-8?B?cXZ1MUU1UnNZajN6UFlJWW9NTmtuNHZhQW5UNFYzSXVoaWJWSGtiQzdZUVcv?=
 =?utf-8?B?QmtVUVBnYlA5QWxYWUJ5NHJuZ0llQVhuSU5HcXYxK3BlN091aXp5Y3JnaUl2?=
 =?utf-8?B?TFkyWTBKNGg4Tk1GcW9sZGJJVWEwVCtuZ3pFd1BTRVhQK0JzRG1rbjltNXVy?=
 =?utf-8?B?UXVxZGt2ZnZwSllwRDVRbitHUjBJVVFpSVBsTWZZZTZwaEZTMFk1Z2swQTVo?=
 =?utf-8?B?bGl1N0dvMU5mUDdpU3NRdlQ4dUVwQnVuMy9xZWd0ZXBjOWJqZEsyZndpeTNQ?=
 =?utf-8?B?Q3hkZ3hYcEw4NTdRdi9uT3o2dXFITTlqdlFPQWJJTGM1Y21hY0s5OFpDa1JT?=
 =?utf-8?B?TDBEV1haWjRhVElqdlNtWUFQbmFqd3E5L00xeWwySlVNTXpOdWJmOTlCTDAw?=
 =?utf-8?B?V0x3WEhGeWFrOFgyWGNOZWFjaEt6QW5iczlCTVoxOUtzamFyQmJRRWVYWU5D?=
 =?utf-8?B?ZVkrcDJxeCtFd3FhZW05R0Z1QVpaMmNIYU5IL0U2TEJhMjh4RU1mNjFSSGRD?=
 =?utf-8?B?alVDZ2VodUJJa0lPQXg4YWMxd1ova3RhN3FDRXFadytZa1VIa0xReUc4R1FQ?=
 =?utf-8?B?dDFBL0RoV1paaWNDMlpwV3VTZVJEOXZJdTViRmY0ZVV4NzVmZEhoNzh6K1dJ?=
 =?utf-8?B?Z3RXU3NwRUl0Q3NDWlN5cVFOem9vK1BubXpYMWRKVUx1YnZQWEhTWXlYWFky?=
 =?utf-8?B?S0tYb3dqYVgzaUNzN3MrMnM5VXNocFJnUFdlSXRVN1ZjdisxU2o1eGk4dnV6?=
 =?utf-8?B?UXM2bGU0VUhFRTNtRFUwemJMZUJ4UkdnUlMxUk5VRGNCbXFWRzQ2MG95ekZr?=
 =?utf-8?B?M1FtS1U3SHptemwwY2VpMjE3T0FqYk0vR21JTjlDZkNtcnkvV3AyS1gwTWIr?=
 =?utf-8?B?SHhDZjNsS2JSZm1CNkNLSkYwald1STRycGtua2JkenA3Z1ZmSjBXbVkvZVNE?=
 =?utf-8?B?blExTEhnaGJzbmptSkkyeW40Z2ZHcGlwWkIyalVLS3ppZmNtUW1BNUZYMjRw?=
 =?utf-8?B?Ukw2bzBQcnl1ZFphSmZlZFR5K0RFZzExU1lBczVHUzU0Qjg1b3hUbG9zZFJq?=
 =?utf-8?B?VklEL2RLTG84bHdVYU1jYnlwSW5sL2F6Tzg0ZnUrSmNUWExYMEl0YmpOdW9x?=
 =?utf-8?B?VndJQVYrWFlpdVVKRmxTUkFkQWh6eUhnWHVZMXRtLzYxRTgxeW11emZld2FW?=
 =?utf-8?B?elVxR3ZJTzAySTVYTmpCWXNHOWR0eXdvMVVJeW16OTBXOTEyZm9heEkydHVr?=
 =?utf-8?B?c3dtdGRIdCtsTEdQbzN2OG1LYUdsa2h6Qm8waTJ5NmlzTnY1d1VsYUk1OXpE?=
 =?utf-8?B?RnhmZzlhY2czZUhYb3BGYytqT3ZVdit4MHVuWGV3SXR6NWFDaFdqTVU3SnJk?=
 =?utf-8?B?R1pXNitWRHRISDNlMDJGdWd6K2FJRXYxTDMrbnNiczh3YjcxRkNmVVlieGpy?=
 =?utf-8?B?cHNOS1E2dEpEUDJZSlpMeHMvcFA1dnZ5K1BjUmFRTWFyVzRJYkNFeW0zaXFD?=
 =?utf-8?B?cjhLYzQ4VXdJM3Vwb3hYSFJlSzNMaDhjTjFxWnlUakRRWjkwVExvZjc0ZVJr?=
 =?utf-8?B?Ync9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d01c521-6df8-42ba-36d5-08dd07a66a50
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2024 07:55:48.7783 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HD0UTHafAnoLmUm0ddhYkm46z5cFX85j/kGsAK91UeC3mhSdDf3SbSWFbchh9c6sBR032tWSlB3Sf14yzotNcTgMiWgigCbYKuO6UIl5M+s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6321
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


On 10/21/2024 4:20 PM, Mitul Golani wrote:
> vrr.vsync_{start,end} computation should not depend on
> crtc_state->vrr.enable. Also add them to state dump.
>
> --v1:
>   - Explain commit message more clearly [Jani]
>   - Instead of tweaking to fastset use vrr.flipline while computing AS_SDP.
> --v2:
>   - Correct computation of vrr.vsync_start/end should not depend on
>     vrr.enable.[ville]
>   - vrr enable disable requirement should not obstruct by SDP enable
>     disable requirements. [Ville]
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   .../drm/i915/display/intel_crtc_state_dump.c  |  4 +++-
>   drivers/gpu/drm/i915/display/intel_vrr.c      | 24 +++++++------------
>   2 files changed, 12 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index 705ec5ad385c..296a6c9de1f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -303,7 +303,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>   		   pipe_config->vrr.flipline,
>   		   intel_vrr_vmin_vblank_start(pipe_config),
>   		   intel_vrr_vmax_vblank_start(pipe_config));
> -
> +	drm_printf(&p, "vrr_vsync_start: %d, vrr_vsync_end: %d\n",
> +		   pipe_config->vrr.vsync_start,
> +		   pipe_config->vrr.vsync_end);

I think it would be good to have this in same line as other vrr parameters.

Also lets have this in a separate patch.

>   	drm_printf(&p, "requested mode: " DRM_MODE_FMT "\n",
>   		   DRM_MODE_ARG(&pipe_config->hw.mode));
>   	drm_printf(&p, "adjusted mode: " DRM_MODE_FMT "\n",
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 19a5d0076bb8..89696243f320 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -236,7 +236,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>   	}
>   
> -	if (intel_dp->as_sdp_supported && crtc_state->vrr.enable) {
> +	if (HAS_AS_SDP(display)) {
>   		crtc_state->vrr.vsync_start =
>   			(crtc_state->hw.adjusted_mode.crtc_vtotal -
>   			 crtc_state->hw.adjusted_mode.vsync_start);

This again should be separate patch where we are just using HAS_AS_SDP() 
in compute_config and get_config.


> @@ -316,6 +316,11 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>   		       trans_vrr_ctl(crtc_state));
>   	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
>   		       crtc_state->vrr.flipline - 1);
> +	if (HAS_AS_SDP(display))
> +		intel_de_write(display,
> +			       TRANS_VRR_VSYNC(display, cpu_transcoder),
> +			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
> +			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));

This should be yet another patch where we are setting VRR_VSYNC along 
with other vrr transcoder timings.

Along with removal from existing places in vrr_enable/disable.

Apart from splitting into separate patches, changes look good to me.


Regards,

Ankit


>   }
>   
>   void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
> @@ -352,12 +357,6 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>   		       TRANS_PUSH_EN);
>   
> -	if (HAS_AS_SDP(display))
> -		intel_de_write(display,
> -			       TRANS_VRR_VSYNC(display, cpu_transcoder),
> -			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
> -			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
> -
>   	if (crtc_state->cmrr.enable) {
>   		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>   			       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
> @@ -382,10 +381,6 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>   				TRANS_VRR_STATUS(display, cpu_transcoder),
>   				VRR_STATUS_VRR_EN_LIVE, 1000);
>   	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
> -
> -	if (HAS_AS_SDP(display))
> -		intel_de_write(display,
> -			       TRANS_VRR_VSYNC(display, cpu_transcoder), 0);
>   }
>   
>   void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
> @@ -425,10 +420,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   						     TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
>   		crtc_state->vrr.vmin = intel_de_read(display,
>   						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
> -	}
> -
> -	if (crtc_state->vrr.enable) {
> -		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>   
>   		if (HAS_AS_SDP(display)) {
>   			trans_vrr_vsync =
> @@ -440,4 +431,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   				REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
>   		}
>   	}
> +
> +	if (crtc_state->vrr.enable)
> +		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>   }
