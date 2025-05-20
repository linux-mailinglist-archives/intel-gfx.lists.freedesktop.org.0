Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9A1ABD24D
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 10:50:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F2BC10E2F6;
	Tue, 20 May 2025 08:50:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ee12PAb1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A374D10E2F6;
 Tue, 20 May 2025 08:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747731024; x=1779267024;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=cuLk1UXj8X0fUBLmc3Z6HKv9NWobksPRgbOyVbVyQ8Q=;
 b=Ee12PAb1n/Y1X4Y7BpsW5XhiF4SOSY60yvO2pp8tr6n9vtlepUM0biq6
 PSDu1SUHARkkz+aDycomom18XEGIYnCsN8Sl0EbHykEmhoZIKCdewE8ro
 JkVBPxIpGgQQz5FpqkhOgzFyFDHk3Z5Ta8g14ijRGBBHsw7f7XDcfPaC2
 4L0WWgC3LWIDcjmDrjqipCfbDP99S7puzKDWL/97WF7el2FGPbo6IUVFf
 7MeF33rSKgLcm89tPdKcecT4QXylPIA9zprtclkdqj6urF8MIOLAtkyrz
 ELZ3wC2SU8fEm4vWLRoVsZwXvxzba0ks4EMHiXW/Jo7AxHKlPU9hFXoKv g==;
X-CSE-ConnectionGUID: twEuohYrRYe5euqU6eAaKg==
X-CSE-MsgGUID: AlxuKS1UQo6Cl/95xhxHbg==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="48768915"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="48768915"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:50:23 -0700
X-CSE-ConnectionGUID: 7TfQGq3fSTyMWmVTzu6/GA==
X-CSE-MsgGUID: AxOHsMKNQ+m4MsMk6hHl2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="143625102"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 01:50:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 01:50:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 01:50:22 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 01:50:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aCxNHtGW9CRAoVjtuJCtTHzREII0fkXgYy0aN7WY06zq8NehBaGh6oZdLO4V1S+DEt2v880KiRKMy2pgDOBF/1fOZgYvJ0NtF4Vhkme2MtFbGm+nidToba0/BEmS5v2H3RiuOofA4BA5487BWjjB/tENrVqQU6Ci22AhXExvB/p0ciJ7oZhniD38k17uNtzfCajMhff0T8y8isX61y6MnAREbQWgQhoetEIIUI+0TDq5kYG82cv0/6kVgtL+ENzymEm23uats4h+VZPMxPUB7PY7llqYf183ySdC9EvY794B8u2/g5AGc1noNMj3lriCe8MIeEzckG0euwmP2OVPbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cX5QN7vJk6JDV68vXQfm+G91QEGwSg5rsgnzzL2/B0Y=;
 b=sKC4o6lUlr+zacI2ILJssxoFKEr2nMURhykHsasTQFeEK5Qx++QGPJyEEC2ZSiBKaTWn9kU9mqku5mJ32h3Fk6/2E/xmr4/+vrVIgcgdERr4MzSsgw+0rwzhwXqt45y7AYgnYdJbDgrv+QcAP4UjLCVaRn3jxIMJxKvzscg37X3gyXXCdRG6LbPLNYLOK0OAvLhBUGBVeV1j4IXb3d6E2rh/Ik+dERtrgeSRXELS1TnRGyKxHVmIpiyh09sOvtNM6+rsdQvO81LN7pxJNF1H1XplZgyhAVmbtqjfPGsyElB8cKi0sGJbaL+o4sCcP9uP2aRuYqliuari3qAI31/pXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB7778.namprd11.prod.outlook.com (2603:10b6:930:76::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Tue, 20 May
 2025 08:49:52 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8746.030; Tue, 20 May 2025
 08:49:52 +0000
Message-ID: <839e065f-918d-419e-b9fe-6d4909f8cb67@intel.com>
Date: Tue, 20 May 2025 14:19:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/11] drm/i915/alpm: Write PR_ALPM_CTL register
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
 <20250502085902.154740-5-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250502085902.154740-5-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXP287CA0003.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB7778:EE_
X-MS-Office365-Filtering-Correlation-Id: fd526ea5-c7f1-42fa-7763-08dd977b4950
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eDhkVnpqYjNFLzRXZHlmd1FjM1VvcjdwVU1weC9UVk1CbE1LK3UzUE83ODB5?=
 =?utf-8?B?R0Z2dFNmR0pvcVpxZlkxRG93eDhsWnM4aTBMdFZ5QWdyRzFIc0xoUlRaSFc2?=
 =?utf-8?B?Y1NZS2tOWDVMdmN6VEM2ZHN5OTZFVFY4aUxucW1XUHZ3RDNzUDhvbUVOVG9o?=
 =?utf-8?B?QUlUalVBdGxaRk5pdEFTd0RiSk4vYno3aENCYmZlTzc0RmN4blkwSGRLY2dn?=
 =?utf-8?B?MGdnTE1EUDJrWmkxbUUzcVphaGFCaTk3cWpWdHYvME04R0Nvc1hQSk43djFH?=
 =?utf-8?B?dWxUMHF3TnNJak9rRlZFRUNFWkZZUDdIYUNtOFBJbTlGN2VHbnhRT3I5YmZH?=
 =?utf-8?B?Qm5MTEVtT1d4L0hYcTErUEt0ZXZJcWd0bks0blRvUHdvMlVpM005SW1DblVv?=
 =?utf-8?B?RnZrbE5Ubnh1clVkbHlhMGpnbmt2YURpWS9aRVhiYk1MNVpKaVU1UG5rRWVn?=
 =?utf-8?B?WEZraThiK0RxYkhnbEdOTVVKemN4ZWZjUFZlTk1IY2hnYnY3RzJydVhFc3Nr?=
 =?utf-8?B?TGpmUFA3ZEtmcmFWVnZQb0pKb0JsMkc2U0hGdkxGYWxmQzZXVGF1bklXQndk?=
 =?utf-8?B?MVY4MzVWb2NtWVRLQ2dFMitKVDZPNVhRZjBCTzdQSnpTZmhjRWd6U3dNalFw?=
 =?utf-8?B?VTJmdDhVZm00a3VkSHN6RG1HM0hMa1huRXROZTNFSDRodFpqWWJWeWJnUllS?=
 =?utf-8?B?RWZib3ErY00xMW1WNm9WbjI2N2VGSllBK294VjJjZHFUVzJWRmdaTWRIeFlF?=
 =?utf-8?B?QXZqQUhmajdMSTBTcW1sOG0vVGJWeUxmUVVrQ3lkU0ZYME00RjIxdzJZZUtE?=
 =?utf-8?B?dWhxRWpEY3BFVHdUMCtVbTBrcXkrNk16QTlHc2Q0Y3BuN3MwTEY3bHNGTlZY?=
 =?utf-8?B?dE43Vyt5S1pGMDJqc3RES2h6RXkvd0laUXM3bXk1ZVhINHc2QXBrVmROWS9z?=
 =?utf-8?B?cXplYUxOYklpRHFFK0tDd3liNzhSUHpMMjJoL296NjdiMFRabjJwQm1maTh5?=
 =?utf-8?B?bFNiVFBnRC9iN1NWVFVTeVhBY2tjMWpHQzVRbE5OMnpNRWFVOXJ1djdOcG5L?=
 =?utf-8?B?MDkxOEp1ZDNxWTc0aUtMNjh5WjRVOExSYmpOVHN5b203ajJaOU8wNHhpY0kv?=
 =?utf-8?B?ZngzSUJhcU1vSmQwbndEK3BLa09wN2dpeGg0Z0dZN25oWm9SZDBUYjhVZ3Bx?=
 =?utf-8?B?L0owQWVZVTZqZHBpV0xBQlF3eldLNWowNFhKdjYyL21mY2ZweFh5T0V6V0h3?=
 =?utf-8?B?Vm5sU3U3cWxCRU8xbmoxTnNxakNEKy9lNWIxRjY5amVxcWlIdkU5UFR6enNs?=
 =?utf-8?B?aEJwK01idGdiQktjSmg5RU1DRjZoMnVtMXVTb3JGTlNidENGWnNBQTZUeTAz?=
 =?utf-8?B?WGZzaEFRSzB4RXBjdjI1YUJPNGxHTG9sSFdtNTNvTjhsaXg1b0N6Z2drWHVs?=
 =?utf-8?B?Y1VSaGJObXR5Wnl4cGhpM2NMVWdPcEtTWnB6eVd2eFBRNDNjOFlmZEU4ZUV0?=
 =?utf-8?B?WnRnS1Y2YVlralFSWEU3WVNUNEVIZ1F6Z2IrNjZ1SnNoaVh6aVlJcDcyQVNs?=
 =?utf-8?B?RTA2R1YwR3d1LzdYSGd1ZkhsMVIvN2F6QVh2bnovakU4U251SnU0NG5zKzVq?=
 =?utf-8?B?ZXUwSEZ3c3I5Q3NlRkpxR3ZrTmpPVFpZWk9Id1BreVp5UmlBNWxwU1dVcTlz?=
 =?utf-8?B?THZ1SVBVSHF4U2t2L0pQc1MrWVpzZ3BBY1F1KzhTUHgrRzJXTnVSSWMwUXpl?=
 =?utf-8?B?MFVnVUZXc1hYS0JYS3M1OUNZc2hWdm95YTE4Yk50L0N1TTMzR1Bxdk9KT3Rn?=
 =?utf-8?B?clpiQW1yZFM0WXJjWmxNdXB2WXJZdUxyZDZOdlF2VEtnV09NMEFBOWIwb0Zz?=
 =?utf-8?B?Mm1VWCtwa0hUdVNYZWc2cVJTanNSam5EUm1JQlY2SFEwamdyTGtCTW10UmdI?=
 =?utf-8?Q?PwXh8cKtt8g=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VnNVb0pHb0xxU1FtTlFORVZsaU1OQmNhWTE1RFl4cFMzc3dOWFlCT0ZVRHdn?=
 =?utf-8?B?RjZTUW9LUnNhblJPQUZ3RkwvMHNDR2wwSi9hLzU2ODdXMEE5ai9wRlBvZW1W?=
 =?utf-8?B?SVNuSlBCbG9BYVhlUUlLWG5XbzREOE9GUTJPYjk1eWJaaWhjdFFXV2VJbi94?=
 =?utf-8?B?QnZQekJUTURWZTR2NXhaZUtDNTRBY2g1OWRub0ZTbFBLbkFHaStiSnRoWmJY?=
 =?utf-8?B?WE1CamM0SklKR2l5ZlhnZUI3SHJNUm1SeWRKNW42K0hxQ1Y1STI2anhmcDFK?=
 =?utf-8?B?LytVcDVkU3c5VkIxU1A1ZWR1UVQ3M213ZEJZSHhEQmVEekU2NS8rOURKTDRh?=
 =?utf-8?B?bzc3NGxTdGFubjdtemYxREIrK2lETlJ0OGZUT3lvRWtPU3FkWUt2b201OVE5?=
 =?utf-8?B?aTFKV0dhbDJoK240bThBUjB3TStkbWxGUlk3bHpYMHlCbmFIbnlMZ0xOUXln?=
 =?utf-8?B?SDh0MnJWczVqdGsxbit4QUcvZDhhdFJsc1l0YXdFMnNJcDhPVnpydzlkbzNU?=
 =?utf-8?B?V29TR3U4WVdDRVNvMnVKTldtMmN3OWk1T3ozL1d4MEE1VHJQdGYySWp5ZUVD?=
 =?utf-8?B?TWRiS2JBM3pqc2QxdGlIQXhHMkZjaFhjOXE1aG83azllRU90UDc3eDNLWnZm?=
 =?utf-8?B?SHMvdU83TzVvM01kRFNLUkVLbjc4akNjZ0dCRDdrYWlmZkU1OHRhRDhYR25w?=
 =?utf-8?B?d3lsT0p4enFhRml4RkdUYVBDcnc0cmNRZ2xXMStpRW15S0RKWndzU2RueTZC?=
 =?utf-8?B?NG5hdWNubGxqdGVkL2ozekFKMGVUbXpnNytHQUZKODViemtwSUhjN3BJTDJj?=
 =?utf-8?B?UWNQRFozSmt5L0V1amxxMTZFYTRHK3l6MXhKdlFlbXR6RlZxdm8zaEpGRlI4?=
 =?utf-8?B?cnM0WkZLVFBGblArdEcxZkVkL0F3Uzg2aGRJVmREbVR1ei9uMnRtUzV4bDFG?=
 =?utf-8?B?d2lnR20wbU1xMS9SVjN5eVhVUSszam4yaVo4a2FWS0psL0E2VCtmZEdrbUlS?=
 =?utf-8?B?eGpuSjJpT2FYSWNtV2VYRHhBaWoyUmxqT1MzRU1ESWV3QTJPWDIvbUN4NzQy?=
 =?utf-8?B?MldtMUYwUWxWcnZDMjBXVStjOHZBZG5qUGptb09BSWxDbGNoYnlKRzNlR2lp?=
 =?utf-8?B?M3VpdllxemhwYTl6WXlJNWdaVFlDR1hRRFhUUi9ZTXdDcUxES0xucVdaS081?=
 =?utf-8?B?ZXI0bFJVOFVxNC9yOEhDcnlueThYd0JhS3M2ZEthMU1LSmFuQXpXZllxMElC?=
 =?utf-8?B?MWgzN2JVdVFEUnQvS1ZsL0tFbTU5WFY0dkFjVzZKb25wYkpocG9mNlAwd0ZR?=
 =?utf-8?B?b3AyUlFuL09iamMwcURtT2NrQ1RLTmZpTWxXblZCNEUwbVloUThpWFhTaDNk?=
 =?utf-8?B?M2Fha2ExL3cxcUdhOXRYNVFkM3cyZEovWVc1TCtjMGNsbU9ZZzVPUmhnZVYr?=
 =?utf-8?B?UDl2eXpWYTdHT2lEaEVWYWpNSWlkY3FkZmpiSjlMWldLN2g2SlR2bDZzOTBD?=
 =?utf-8?B?MGhGanFCUXo0NjdmdGlRMkZ0N0cwUExHcCt3VTBrdkN4Y0VSQW83dndCTG1D?=
 =?utf-8?B?T2h3Z21BaDJZWGNvRG9aNDQ3VFY1eUZlUnJFQmRGNmRURTNVVjEvN3BjQjE3?=
 =?utf-8?B?a3BwdnA0ZXFJT25Ybk0wamxVRTU4QlgvSGdONWFRUGdGTng1ZW5pbHlIaGNQ?=
 =?utf-8?B?SHMyVy8raWxNRHpQYXNYblFsbUdpam9XZ2dzc2xjYmpSZzlkbW1YVnlzb3dr?=
 =?utf-8?B?SFZIS05yczdjb3BQWHk0MnVjbmRSZjVuNk9IckFZNmNwbTFJdlZCSFNscDdW?=
 =?utf-8?B?eUwzOE1iVUpXZWdTWEJ3TW5qQmhQY1dSdGRBNnFzZml0U0lib3Z1TzUzbTNp?=
 =?utf-8?B?QmdQbHhHNDRKMG4rRUJxUEFoemh4cC9ZalJVS1BsdFRWekJWQmJSY2piYWM1?=
 =?utf-8?B?M2kwcm9naFROYTYzUlhNTWpmaG9QT091RmZubnVTZjkxZzFGRGpOTGZhOXoy?=
 =?utf-8?B?Yk5iVXVVTW5PRjNPeVdUcUVVUXNCVTY1WjVwRzBidStwZU9JSkM2cHdOZGUx?=
 =?utf-8?B?RnI4NHErYndpcVRhazl5QllBNVl2R2VQWGc1eThOa1c0QTdpVk0rODZDb0pX?=
 =?utf-8?B?Q3VDVmtZbzZuTUQ0eU9yeVdoazlBWXRCQ3hpRVZOckc0OGRxTlFET3BNa1VS?=
 =?utf-8?B?eGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fd526ea5-c7f1-42fa-7763-08dd977b4950
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2025 08:49:52.6874 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9Bt9NtqsJoAblTQW3rbM8BfOWX1JAfoRK7FVvTEWJHA25RwZMpbrSndGh5/LrDBJk9XH8pmJazBGmGyTmicj5ldOsR5gGfMm4py39sz1Iek=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7778
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


On 5/2/2025 2:28 PM, Jouni Högander wrote:
> PR_ALPM_CTL register contains configurations related to Adaptive sync
> sdp. Configure these if Adaptive Sync SDP is supported.
>
> Bspec: 71014
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_alpm.c | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index 1bf08b80c23f9..5e5bc91ca7b76 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -348,6 +348,18 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
>   			ALPM_CTL_AUX_LESS_SLEEP_HOLD_TIME_50_SYMBOLS |
>   			ALPM_CTL_AUX_LESS_WAKE_TIME(intel_dp->alpm_parameters.aux_less_wake_lines);
>   
> +		if (intel_dp->as_sdp_supported) {
> +			u32 pr_alpm_ctl = PR_ALPM_CTL_ADAPTIVE_SYNC_SDP_POSITION_T1;
> +
> +			if (intel_dp->pr_dpcd[1] & DP_PANEL_REPLAY_LINK_OFF_SUPPORTED_IN_PR_AFTER_ADAPTIVE_SYNC_SDP)

Can use pr_dpcd [DP_PANEL_REPLAY_CAPABILITY - 
DP_PANEL_REPLAY_CAP_SUPPORT] to avoid hardcoded index.


> +				pr_alpm_ctl |= PR_ALPM_CTL_ALLOW_LINK_OFF_BETWEEN_AS_SDP_AND_SU;
> +			if (!(intel_dp->pr_dpcd[1] & DP_PANEL_REPLAY_ASYNC_VIDEO_TIMING_NOT_SUPPORTED_IN_PR))

Same as above.

Apart from the above, patch looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> +				pr_alpm_ctl |= PR_ALPM_CTL_AS_SDP_TRANSMISSION_IN_ACTIVE_DISABLE;
> +
> +			intel_de_write(display, PR_ALPM_CTL(display, cpu_transcoder),
> +				       pr_alpm_ctl);
> +		}
> +
>   		intel_de_write(display,
>   			       PORT_ALPM_CTL(port),
>   			       PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE |
