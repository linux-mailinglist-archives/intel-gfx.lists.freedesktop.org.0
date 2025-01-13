Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F8FA0C2C7
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 21:51:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3C4310E433;
	Mon, 13 Jan 2025 20:51:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O8YZ18dl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4680510E32D;
 Mon, 13 Jan 2025 20:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736801510; x=1768337510;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=lDzeS5Ou50T1tGKPKA1znaE1pQjIwoJ9LdGV4hgAKMg=;
 b=O8YZ18dlbQ18WiB4FbCcYBiD2CBTX/U8bK1SFVpRpNMAPWyl3k7GKw0Q
 OWVn5NkPDDIr0kWDTGQaOkiXVXSuvCmeZ0Dxpxa2g8Uvl807aStlJJRC7
 Bbn2B4Azp1XOMhHVkMLmwEpsdV9UYMRiJPEZ2WGHQImZSdiA9UE8nQmqd
 IXi1dmJlG3dB+j/NnNL2zove6CaL2MIymtKFU2EzAaVasgTvHEWEi40rB
 rdMpto32e4/q/QChYsspcIClDCMpUUmrsLdNskouHYuY9p0YsGZTojRCT
 bUuB3LTjZbS8Sw98mCqQrTtjwIH4DEVcn/OsO1fmW7cR/vUSJS9QKaQOq A==;
X-CSE-ConnectionGUID: QmDJjKmmQ+merFf/tjRVfg==
X-CSE-MsgGUID: /yLbZtInQMe6H0MmgHTZIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="62456134"
X-IronPort-AV: E=Sophos;i="6.12,312,1728975600"; d="scan'208";a="62456134"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 12:51:48 -0800
X-CSE-ConnectionGUID: rAx01fyyRLSD70qoLw0A7w==
X-CSE-MsgGUID: 7iQCRFcpSOOu4jSqBQ2zZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,312,1728975600"; d="scan'208";a="104367650"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Jan 2025 12:51:48 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 13 Jan 2025 12:51:47 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 13 Jan 2025 12:51:47 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 13 Jan 2025 12:51:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fphYjQTif1Lep/98R8upgog87kyvETRl1weFLeRPX36E2zO56GcPPkheaDc6XezPKLgh31BUxE6TXvjuUKpqtIU+zN3FTYLQ48YGn7zzRVPIRbK/O4eaxzdbLfTMohAJ78bvC/DZTrt9UYghGF6C7ZcAB73GVh65yP8m691j4ccmykY13sww/UfPA2+C1W+Kr3ox7aFTEK8jGtCxjYoQDXz3zA8CauJejmVAnuf7nLfECPJYWa2mTz5SrwS+CJ21GOWwWBy02GO4GSNtN5uAL27McTsS7khbd6SsKcJT/lnW/OKEqYCkxH1WvPUnF6Th9wQeN9WEtdJnCm/etEI7iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6uQUD/12BHQ8+frHvbZIavLeN1GI8pl8yMfKqH+Qlas=;
 b=o9ix/u/V3Mc8ljns8kYPub7XgH0NdpH8PZdVKaKLbeyMGMadLhV5ZPfxa79e9OyajU5jpoR/6TkEDbQJCgKqQQHtFTfMwVd6xaACrlFU4OiItS4SNcahFdsonNOOuYVxT4Ibp2k2pZfHpTQyeqq2NVEwMUJUNG6BXPXLTTT4K4cvONatmu53LhdrfhyMlDz0B9mz6PDRItS8U/7XADxrEmdnfweu14WqfyIY8J5TCoT4te/V/6sxpwTXaERy1CTvKK0OndPzG2j8ySQGIOUt4Ng7m/ynZp/Ij8h30Bh/6CYLSMAGCk+Uldd3gDJ8J2xBl0KL2UAxop1RzS5RkxnYdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB7985.namprd11.prod.outlook.com (2603:10b6:510:240::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Mon, 13 Jan
 2025 20:51:45 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8335.017; Mon, 13 Jan 2025
 20:51:45 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <878qrnm1bb.fsf@intel.com>
References: <20250103174223.58140-1-gustavo.sousa@intel.com>
 <20250103174223.58140-3-gustavo.sousa@intel.com> <878qrnm1bb.fsf@intel.com>
Subject: Re: [PATCH 2/3] drm/i915/display: Wrap IRQ-specific uncore functions
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Mon, 13 Jan 2025 17:51:39 -0300
Message-ID: <173680149949.1459.10144205772885703323@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0160.namprd03.prod.outlook.com
 (2603:10b6:303:8d::15) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB7985:EE_
X-MS-Office365-Filtering-Correlation-Id: 07060f84-046a-4e23-9e69-08dd34141793
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bGxDK0syUk9NenR0bGdFQVA0MzdLQ2Y2MWpFdjhxSUhhWnRtNXNRckFTU2hN?=
 =?utf-8?B?TTVFZUtqRWdaczQwUWNEMGJBT0FCTmU5TDBQMnZhTEdpeE1oZnE5eG9xbWh5?=
 =?utf-8?B?Wk1yNEhOZm1XY05lM0M3YmpKazdERUxYd0tXM1BxK1FZK2ZlQ3R3MmtvcWxP?=
 =?utf-8?B?QmdFT0JMVlB2cFhhR0ZPY3VFb1BhZHQxbk1PMWM2M3ZvMW1xY3NrQmZ5NzZs?=
 =?utf-8?B?TVZpTnJpZzdFTk55RlYzdk5wVmt1NjdOOGFrSEJYV29hc2hiUkNKdXVWZDZT?=
 =?utf-8?B?cmJEREptaE1zQ3pqbHBKT2dGTlA0cEVydWFiQzNXZTMyNDMxNlhNTGJSMno0?=
 =?utf-8?B?dDVWTCs4TkNpMFJOSWw4d1oxenlBSDFtYzBhQ2tzaEdIQWgyNG1uK2prYjcx?=
 =?utf-8?B?UEdUTXRYSWFQTFVqZlVrb3BLNlp0RjA4LzlRcnlpcEQ3R3Vob0tVeFZRcXF6?=
 =?utf-8?B?NDZiTWI5MkkyV0phWTVWZ1ZUSW9iL09IbnRRby9DMkxlR3FBNDduTmVQQVZm?=
 =?utf-8?B?Nm8xQzlORXM1T2RMdEYxc1VWK3ZJZkhYczFWNW1sQ0V3eHpNaGo0NmptZitk?=
 =?utf-8?B?Vk1wSS9ENDNBYWZaUVppUXVLV2tNNjVyZXZBUnJIUFU1MmhydldtalVlL2Y5?=
 =?utf-8?B?REVzUWNiUjlhUlQ1Q1BmQis2bW5TZVpBUVpwS3R0QVB0UTFYSW5ZNkVyS2Vk?=
 =?utf-8?B?UUNoV0NyTCs3MzNnb05ER1FQWDUzR1NwbHR5ZjN0T0MwRmJvTTRTTmJRY2xL?=
 =?utf-8?B?bVZuVUZXeFZab1hQUUgzcDVXRjE1RTArdU5ncGY5d3hyTEZzSG43eFNUb0JR?=
 =?utf-8?B?ZFU2TFpJQXRUM2Jpc3pOUFByYXM0YkZ5WGxpZEY2M250ZnNSeis5SVZTdmRx?=
 =?utf-8?B?aEtxa1NIWHllZ3VTTUp0dVhab09IQ3lrT0tkZ0VVKytwazlDY2Z1ZHZhYit6?=
 =?utf-8?B?TFUxL0o0SjlzR29ST1FaSERzeTBVaS8xNVhwdEZwbnQrMWpGN0dXcXk2MklL?=
 =?utf-8?B?TGUycmtXZU03WDFTbmhqWk50d1dva1dqQ2txK1lGcTliRFNGcXlOc3ZWSUUw?=
 =?utf-8?B?RzJyU05rdjFXMndPNmNMa1BJTGZuRzJvRHB4NnJiT1Y4L3Z4SkFIWml4OWV6?=
 =?utf-8?B?SjVyME1lTnJPQXQyZ0xtSHdtZFZZN0MrNXVid1JLOGRQcTRpZGdFNUpETkFk?=
 =?utf-8?B?ZStsRlVSZS80ZmpvMzl2WUIxYTRwWXR4MWkzb0NBR2gyanJwaGI0eHVEa1NY?=
 =?utf-8?B?SlRGMFMwZGRDT1lCY3dFS0tSSXFSNW9LK1RXd2xCK0RRUDdBQnFtTXJSVy9N?=
 =?utf-8?B?SXlybDl0YVJLVmpVUlFQbW9jcHhuSjdIVC9UZE0rOTVHQWtjc2N6UEw3aDRk?=
 =?utf-8?B?aXI1L2RFdnc3NDJVcUZnUVNYaktFVzFReEt1azY0RGY0RWF1VTZjWndhKzkv?=
 =?utf-8?B?OGpDY0U3OW5TaEQyYnZzR2NxSC9ZbEw1Z0pKOWhab1M4T3VWMlJrK2h0Vndz?=
 =?utf-8?B?SkZoTmo1dUEwUTFYU2J4QlRwL0s2a2pLMWxNcVJDU3VFbE90dVRkZmVlZTI5?=
 =?utf-8?B?L2htVnpkY2Z0ZmhaZWJvckpDTXhBcWdySHB5MGJrRzRseFA1UEQwQ0pqazNN?=
 =?utf-8?B?UDJ1RHlwaXpJMklrMGltVFhaKzBpS2RnK0phc1l2b0wrd1RaMzVSckFVMlZD?=
 =?utf-8?B?UjZhQ2E1dFhBS1o1L2JWZnV4RmpNVysvSXdjeVhmZXJxRTl6ZDZMY2tIbm1X?=
 =?utf-8?B?aEZ3Zzl2djh3RmZoLzNwcmduYmE3VlRvaERUYmNKLzM5T3ZMS2pDWSt6WEhD?=
 =?utf-8?B?QXU0RE5taDIyMGZzblM5d3FYMzZocWdkMGxRWGxwbEprTk9rWkJHNW92OUtW?=
 =?utf-8?Q?2c9dcD3Tgv4D1?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a1pkcTd1b2lGM2hKN1lTWnBHbE1CK2J6RDByY2Rsa2JVWDd0VEZqbG0zb29V?=
 =?utf-8?B?UDlNSnJQTndJc3I0OFJXRWVIekh3cTdwZm5ZamxCVCs4WXFObHpDV3BWKzVq?=
 =?utf-8?B?OGk0SFAvcTA2Z3VsQTR6U0lNeDBZcHRxaUt6WmF6OGgyMU41MGhycm9xR2Nj?=
 =?utf-8?B?TnZYUXlTR3BJQjZCZkIxWG1TUjdiZzgyNGdhMjVqb3JTZStteE40MnRzcVRj?=
 =?utf-8?B?cG9qbnVBdVIralI2cHdObG16dEFsM2pUZEI4Vnl3R2cyR2VUcnRaMVV0R2NH?=
 =?utf-8?B?djZrSDdxRDNIQ0QxbXpIZnpMYXQwRlhXN2VPaGhuRldZQmREVkl2RXhWUjFr?=
 =?utf-8?B?VE5JVEJIaGNhbkI4dmtLSUh2WnIzZnVJejk5NFVCNkhXTXRqSnAyRHZOdVJp?=
 =?utf-8?B?M0h5WDg2ekdCVGxWaXVyeDlrRW9WczBXbDcxdG9pVXF0aVcxK2RucDdyTnVq?=
 =?utf-8?B?WG9zbFVwSkVnOHRsNVBSMjdRbmR3TXF4eWtvb3BBcUVQZ2ZmUDRiazdhN2gv?=
 =?utf-8?B?L09YRlpqYlgxbkdxT1ZsazFIT2FHWU9LcWxaYldZVmZNMDV0MS9NMnhxaEVj?=
 =?utf-8?B?TUx0TFpJY2Zkak55aGVONXUwVUFiMGhPMFd4NG9tTzhoUWVQSHNycHY3cGc3?=
 =?utf-8?B?cWkwS1ZiL0Y0UjBmdmROSHNJQ2l4V2Uwb1NPeUlTMEFjaXptdG5WZUZrMWxm?=
 =?utf-8?B?TEZRUGxucXpYamt6QVM0NGJWY2habHpicjJKUGhFc000ZUhTVTN5U0F5R2o0?=
 =?utf-8?B?NFNjMzdSY3c5NFZxRXlldEVuVUE1bVNIejJmeWowR2hSVmVQUTJUcVBBb2lv?=
 =?utf-8?B?V3g5alRHTVhhZUloWlhVVTN1Z0NzK0RIMENEZGREVS9uOGdHQXdSaFFFYWFV?=
 =?utf-8?B?aUZGYnVhaWRRWVNEa25Xb0h2N243VUNUTC9Ud2ZjUXNYRmgrTW1hWDQyWE5U?=
 =?utf-8?B?K0k2cU5STWczV3dJNnRoWGh5ZHM2eitmN1NidENuRUVFNVZXempUTDZxV2lY?=
 =?utf-8?B?V01BN0pXcDByaUx2T01CR2tIQStaSkVnNHlpN0tacGpnbHVUNWorOWZNSWIw?=
 =?utf-8?B?Q2xBaTNObUZkWWd5L2MwM2lvR3JqQm91MFlmRThoUzF5aCtSenV3UFJjR3VK?=
 =?utf-8?B?L0dYTkRrNzNveTN6THFnSHRXdlJpL1k2cTFyVU52Z1AxOWJvRjMyVVVLTmdL?=
 =?utf-8?B?Z2FrNWNuUXBuYlhraDBGaGNZTWx2QXVleGV5TEZCbmR1cGQ4aEl5Q1lYRzQ1?=
 =?utf-8?B?RExubGp3UXk1VE96TGh3V3RXejhpaEVOZTVwem8xaGwxZUFBR0I2b0kxYnlZ?=
 =?utf-8?B?T25zekp6L0ZTUXlrdmI2amdHQ0tCN3hYTG05MkZDZHlzTUhkMXp6WmNRSDRR?=
 =?utf-8?B?SEl6VEJRNW9HQnJyZmRTaGplTm44YkVlODREZW5ia2FGWEN3S3M5a0hJTlRm?=
 =?utf-8?B?bHNCN2g1M0V5WUxwdkwvMk50L3owYWE3U1FnbG1MMTNkTlBwdlE4WVdkQVZS?=
 =?utf-8?B?YzRuL0g3eWd0MXIySU5Za1h1S3dVU1NiNXlvVStTOE0wK1pjUVd0QjlicWdV?=
 =?utf-8?B?M2w0dk5ZejQ4Z2ZKOGg3SnZyTzNrQ29LdC80ZytySCs3ZGs4amV1TEZHbEFW?=
 =?utf-8?B?MGxJRVpvTlR6R2FuMmlBWlI5NHk3ZytXL3A4dStoc00zU3RKei81NEhzQlFU?=
 =?utf-8?B?NlpTMkNLejIrZVd6VVZ6REtPa3k5Z3VHV2ozWTQxaHA1LzNibkQ5Ykk3MEVN?=
 =?utf-8?B?OFNXZHVNNXpWNVR5djBjbndBblhNSG9GOGVzSjJJL1RIdVpoWlliOWgvUXUw?=
 =?utf-8?B?MDZCUW01c0VEZlhlYVF0WkhlTFkxTGZmUUlaK1NiTDZLZUZqT1dYd0Q1MFow?=
 =?utf-8?B?bDluRDZJaHkwUWZOanVuaUxlQUREQWFkR3l3TTRTY3dqSFZHKzFzcXVVTjlP?=
 =?utf-8?B?Qzgxa2VzWm8rU2ZUQ1UybmZPRkRPZEt5dWZNNzJNT0xWd0JwbnhaZ2lpMkRN?=
 =?utf-8?B?RnRJS2s5TkhRd1hvNWtZOUN2L2VwZGRoR2VwQjhBa2FkV2FGajdNczQ4c1lz?=
 =?utf-8?B?RHNSdG5uVGoyTkQwWjdIb2dsaTVFVWdzWnJSSGN2QytXS09WZ0hwbUM2ZHgy?=
 =?utf-8?B?Q2FxVWZ3bXBqMTRybVR5SDVkT0VZTDlxNDdDYjVVYWtkVHo5Vkp3UWhjOXVs?=
 =?utf-8?B?WWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 07060f84-046a-4e23-9e69-08dd34141793
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2025 20:51:45.7810 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1zE7ZyNWYM0WB3R+ajfgFrXWCJyFzIiph44ulUkvMMj3wcdZ88D/9VvdaFf7scrAR+BW3Tgfs5ev1kgN/2H49A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7985
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

Quoting Jani Nikula (2025-01-07 06:16:08-03:00)
>On Fri, 03 Jan 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> The current display IRQ code calls some IRQ-specific helpers that use
>> intel_uncore_*() MMIO functions instead of the display-specific ones.
>> Wrap those helpers in intel_de.h and use them to ensure that the proper
>> display-specific hooks (currently only DMC wakelock handling) are
>> called.
>>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_de.h       | 43 ++++++++++
>>  .../gpu/drm/i915/display/intel_display_irq.c  | 85 +++++++++----------
>>  2 files changed, 83 insertions(+), 45 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i=
915/display/intel_de.h
>> index b7399e9d11cc..151126ab6dad 100644
>> --- a/drivers/gpu/drm/i915/display/intel_de.h
>> +++ b/drivers/gpu/drm/i915/display/intel_de.h
>> @@ -6,6 +6,7 @@
>>  #ifndef __INTEL_DE_H__
>>  #define __INTEL_DE_H__
>> =20
>> +#include "i915_irq.h"
>>  #include "intel_display_conversion.h"
>>  #include "intel_display_core.h"
>>  #include "intel_dmc_wl.h"
>> @@ -246,4 +247,46 @@ intel_de_write_dsb(struct intel_display *display, s=
truct intel_dsb *dsb,
>>                  intel_de_write_fw(display, reg, val);
>>  }
>> =20
>> +/*
>> + * Functions to handle IRQ registers (intel_de_irq_*).
>> + */
>> +static inline void
>> +intel_de_irq_init(struct intel_display *display, struct i915_irq_regs r=
egs,
>> +                  u32 imr_val, u32 ier_val)
>> +{
>> +        intel_dmc_wl_get(display, regs.imr);
>> +        intel_dmc_wl_get(display, regs.ier);
>> +        intel_dmc_wl_get(display, regs.iir);
>> +
>> +        gen2_irq_init(__to_uncore(display), regs, imr_val, ier_val);
>> +
>> +        intel_dmc_wl_put(display, regs.iir);
>> +        intel_dmc_wl_put(display, regs.ier);
>> +        intel_dmc_wl_put(display, regs.imr);
>> +}
>> +
>> +static inline void
>> +intel_de_irq_reset(struct intel_display *display, struct i915_irq_regs =
regs)
>> +{
>> +        intel_dmc_wl_get(display, regs.imr);
>> +        intel_dmc_wl_get(display, regs.ier);
>> +        intel_dmc_wl_get(display, regs.iir);
>> +
>> +        gen2_irq_reset(__to_uncore(display), regs);
>> +
>> +        intel_dmc_wl_put(display, regs.iir);
>> +        intel_dmc_wl_put(display, regs.ier);
>> +        intel_dmc_wl_put(display, regs.imr);
>> +}
>> +
>> +static inline void
>> +intel_de_irq_assert_irr_is_zero(struct intel_display *display, i915_reg=
_t reg)
>> +{
>> +        intel_dmc_wl_get(display, reg);
>> +
>> +        gen2_assert_iir_is_zero(__to_uncore(display), reg);
>> +
>> +        intel_dmc_wl_put(display, reg);
>> +}
>> +
>
>I don't think intel_de_irq_* belong in this file. They're more about
>*irq* than DE register access. I think intel_display_irq.c is the better
>location, and I guess they can be static there.
>
>Moreover, I don't like everyone including intel_de.h also including
>i915_irq.h by proxy.

Okay, thanks. I just sent v2 with those wrappers moved to
intel_display_irq.c.

--
Gustavo Sousa

>
>
>BR,
>Jani.
>
>
>>  #endif /* __INTEL_DE_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/=
gpu/drm/i915/display/intel_display_irq.c
>> index 9662368a651d..ec7af00739ea 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> @@ -1498,7 +1498,6 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
>>  static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
>>  {
>>          struct intel_display *display =3D &dev_priv->display;
>> -        struct intel_uncore *uncore =3D &dev_priv->uncore;
>> =20
>>          if (IS_CHERRYVIEW(dev_priv))
>>                  intel_de_write(display, DPINVGTT, DPINVGTT_STATUS_MASK_=
CHV);
>> @@ -1510,7 +1509,7 @@ static void _vlv_display_irq_reset(struct drm_i915=
_private *dev_priv)
>> =20
>>          i9xx_pipestat_irq_reset(dev_priv);
>> =20
>> -        gen2_irq_reset(uncore, VLV_IRQ_REGS);
>> +        intel_de_irq_reset(display, VLV_IRQ_REGS);
>>          dev_priv->irq_mask =3D ~0u;
>>  }
>> =20
>> @@ -1534,8 +1533,7 @@ void i9xx_display_irq_reset(struct drm_i915_privat=
e *i915)
>> =20
>>  void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
>>  {
>> -        struct intel_uncore *uncore =3D &dev_priv->uncore;
>> -
>> +        struct intel_display *display =3D &dev_priv->display;
>>          u32 pipestat_mask;
>>          u32 enable_mask;
>>          enum pipe pipe;
>> @@ -1563,13 +1561,12 @@ void vlv_display_irq_postinstall(struct drm_i915=
_private *dev_priv)
>> =20
>>          dev_priv->irq_mask =3D ~enable_mask;
>> =20
>> -        gen2_irq_init(uncore, VLV_IRQ_REGS, dev_priv->irq_mask, enable_=
mask);
>> +        intel_de_irq_init(display, VLV_IRQ_REGS, dev_priv->irq_mask, en=
able_mask);
>>  }
>> =20
>>  void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
>>  {
>>          struct intel_display *display =3D &dev_priv->display;
>> -        struct intel_uncore *uncore =3D &dev_priv->uncore;
>>          enum pipe pipe;
>> =20
>>          if (!HAS_DISPLAY(dev_priv))
>> @@ -1581,16 +1578,15 @@ void gen8_display_irq_reset(struct drm_i915_priv=
ate *dev_priv)
>>          for_each_pipe(dev_priv, pipe)
>>                  if (intel_display_power_is_enabled(dev_priv,
>>                                                     POWER_DOMAIN_PIPE(pi=
pe)))
>> -                        gen2_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pi=
pe));
>> +                        intel_de_irq_reset(display, GEN8_DE_PIPE_IRQ_RE=
GS(pipe));
>> =20
>> -        gen2_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
>> -        gen2_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
>> +        intel_de_irq_reset(display, GEN8_DE_PORT_IRQ_REGS);
>> +        intel_de_irq_reset(display, GEN8_DE_MISC_IRQ_REGS);
>>  }
>> =20
>>  void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
>>  {
>>          struct intel_display *display =3D &dev_priv->display;
>> -        struct intel_uncore *uncore =3D &dev_priv->uncore;
>>          enum pipe pipe;
>>          u32 trans_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>>                  BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
>> @@ -1625,24 +1621,24 @@ void gen11_display_irq_reset(struct drm_i915_pri=
vate *dev_priv)
>>          for_each_pipe(dev_priv, pipe)
>>                  if (intel_display_power_is_enabled(dev_priv,
>>                                                     POWER_DOMAIN_PIPE(pi=
pe)))
>> -                        gen2_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pi=
pe));
>> +                        intel_de_irq_reset(display, GEN8_DE_PIPE_IRQ_RE=
GS(pipe));
>> =20
>> -        gen2_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
>> -        gen2_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
>> +        intel_de_irq_reset(display, GEN8_DE_PORT_IRQ_REGS);
>> +        intel_de_irq_reset(display, GEN8_DE_MISC_IRQ_REGS);
>> =20
>>          if (DISPLAY_VER(dev_priv) >=3D 14)
>> -                gen2_irq_reset(uncore, PICAINTERRUPT_IRQ_REGS);
>> +                intel_de_irq_reset(display, PICAINTERRUPT_IRQ_REGS);
>>          else
>> -                gen2_irq_reset(uncore, GEN11_DE_HPD_IRQ_REGS);
>> +                intel_de_irq_reset(display, GEN11_DE_HPD_IRQ_REGS);
>> =20
>>          if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
>> -                gen2_irq_reset(uncore, SDE_IRQ_REGS);
>> +                intel_de_irq_reset(display, SDE_IRQ_REGS);
>>  }
>> =20
>>  void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
>>                                       u8 pipe_mask)
>>  {
>> -        struct intel_uncore *uncore =3D &dev_priv->uncore;
>> +        struct intel_display *display =3D &dev_priv->display;
>>          u32 extra_ier =3D GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
>>                  gen8_de_pipe_flip_done_mask(dev_priv);
>>          enum pipe pipe;
>> @@ -1655,9 +1651,9 @@ void gen8_irq_power_well_post_enable(struct drm_i9=
15_private *dev_priv,
>>          }
>> =20
>>          for_each_pipe_masked(dev_priv, pipe, pipe_mask)
>> -                gen2_irq_init(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe),
>> -                              dev_priv->display.irq.de_irq_mask[pipe],
>> -                              ~dev_priv->display.irq.de_irq_mask[pipe] =
| extra_ier);
>> +                intel_de_irq_init(display, GEN8_DE_PIPE_IRQ_REGS(pipe),
>> +                                  dev_priv->display.irq.de_irq_mask[pip=
e],
>> +                                  ~dev_priv->display.irq.de_irq_mask[pi=
pe] | extra_ier);
>> =20
>>          spin_unlock_irq(&dev_priv->irq_lock);
>>  }
>> @@ -1665,7 +1661,7 @@ void gen8_irq_power_well_post_enable(struct drm_i9=
15_private *dev_priv,
>>  void gen8_irq_power_well_pre_disable(struct drm_i915_private *dev_priv,
>>                                       u8 pipe_mask)
>>  {
>> -        struct intel_uncore *uncore =3D &dev_priv->uncore;
>> +        struct intel_display *display =3D &dev_priv->display;
>>          enum pipe pipe;
>> =20
>>          spin_lock_irq(&dev_priv->irq_lock);
>> @@ -1676,7 +1672,7 @@ void gen8_irq_power_well_pre_disable(struct drm_i9=
15_private *dev_priv,
>>          }
>> =20
>>          for_each_pipe_masked(dev_priv, pipe, pipe_mask)
>> -                gen2_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
>> +                intel_de_irq_reset(display, GEN8_DE_PIPE_IRQ_REGS(pipe)=
);
>> =20
>>          spin_unlock_irq(&dev_priv->irq_lock);
>> =20
>> @@ -1697,7 +1693,7 @@ void gen8_irq_power_well_pre_disable(struct drm_i9=
15_private *dev_priv,
>>   */
>>  static void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
>>  {
>> -        struct intel_uncore *uncore =3D &dev_priv->uncore;
>> +        struct intel_display *display =3D &dev_priv->display;
>>          u32 mask;
>> =20
>>          if (HAS_PCH_NOP(dev_priv))
>> @@ -1710,7 +1706,7 @@ static void ibx_irq_postinstall(struct drm_i915_pr=
ivate *dev_priv)
>>          else
>>                  mask =3D SDE_GMBUS_CPT;
>> =20
>> -        gen2_irq_init(uncore, SDE_IRQ_REGS, ~mask, 0xffffffff);
>> +        intel_de_irq_init(display, SDE_IRQ_REGS, ~mask, 0xffffffff);
>>  }
>> =20
>>  void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv)
>> @@ -1743,7 +1739,7 @@ void valleyview_disable_display_irqs(struct drm_i9=
15_private *dev_priv)
>> =20
>>  void ilk_de_irq_postinstall(struct drm_i915_private *i915)
>>  {
>> -        struct intel_uncore *uncore =3D &i915->uncore;
>> +        struct intel_display *display =3D &i915->display;
>>          u32 display_mask, extra_mask;
>> =20
>>          if (DISPLAY_VER(i915) >=3D 7) {
>> @@ -1767,7 +1763,7 @@ void ilk_de_irq_postinstall(struct drm_i915_privat=
e *i915)
>>          }
>> =20
>>          if (IS_HASWELL(i915)) {
>> -                gen2_assert_iir_is_zero(uncore, EDP_PSR_IIR);
>> +                intel_de_irq_assert_irr_is_zero(display, EDP_PSR_IIR);
>>                  display_mask |=3D DE_EDP_PSR_INT_HSW;
>>          }
>> =20
>> @@ -1778,8 +1774,8 @@ void ilk_de_irq_postinstall(struct drm_i915_privat=
e *i915)
>> =20
>>          ibx_irq_postinstall(i915);
>> =20
>> -        gen2_irq_init(uncore, DE_IRQ_REGS, i915->irq_mask,
>> -                      display_mask | extra_mask);
>> +        intel_de_irq_init(display, DE_IRQ_REGS, i915->irq_mask,
>> +                          display_mask | extra_mask);
>>  }
>> =20
>>  static void mtp_irq_postinstall(struct drm_i915_private *i915);
>> @@ -1788,7 +1784,6 @@ static void icp_irq_postinstall(struct drm_i915_pr=
ivate *i915);
>>  void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>>  {
>>          struct intel_display *display =3D &dev_priv->display;
>> -        struct intel_uncore *uncore =3D &dev_priv->uncore;
>> =20
>>          u32 de_pipe_masked =3D gen8_de_pipe_fault_mask(dev_priv) |
>>                  GEN8_PIPE_CDCLK_CRC_DONE;
>> @@ -1854,11 +1849,11 @@ void gen8_de_irq_postinstall(struct drm_i915_pri=
vate *dev_priv)
>>                          if (!intel_display_power_is_enabled(dev_priv, d=
omain))
>>                                  continue;
>> =20
>> -                        gen2_assert_iir_is_zero(uncore,
>> -                                                TRANS_PSR_IIR(dev_priv,=
 trans));
>> +                        intel_de_irq_assert_irr_is_zero(display,
>> +                                                        TRANS_PSR_IIR(d=
ev_priv, trans));
>>                  }
>>          } else {
>> -                gen2_assert_iir_is_zero(uncore, EDP_PSR_IIR);
>> +                intel_de_irq_assert_irr_is_zero(display, EDP_PSR_IIR);
>>          }
>> =20
>>          for_each_pipe(dev_priv, pipe) {
>> @@ -1866,44 +1861,44 @@ void gen8_de_irq_postinstall(struct drm_i915_pri=
vate *dev_priv)
>> =20
>>                  if (intel_display_power_is_enabled(dev_priv,
>>                                                     POWER_DOMAIN_PIPE(pi=
pe)))
>> -                        gen2_irq_init(uncore, GEN8_DE_PIPE_IRQ_REGS(pip=
e),
>> -                                      dev_priv->display.irq.de_irq_mask=
[pipe],
>> -                                      de_pipe_enables);
>> +                        intel_de_irq_init(display, GEN8_DE_PIPE_IRQ_REG=
S(pipe),
>> +                                          dev_priv->display.irq.de_irq_=
mask[pipe],
>> +                                          de_pipe_enables);
>>          }
>> =20
>> -        gen2_irq_init(uncore, GEN8_DE_PORT_IRQ_REGS, ~de_port_masked, d=
e_port_enables);
>> -        gen2_irq_init(uncore, GEN8_DE_MISC_IRQ_REGS, ~de_misc_masked, d=
e_misc_masked);
>> +        intel_de_irq_init(display, GEN8_DE_PORT_IRQ_REGS, ~de_port_mask=
ed, de_port_enables);
>> +        intel_de_irq_init(display, GEN8_DE_MISC_IRQ_REGS, ~de_misc_mask=
ed, de_misc_masked);
>> =20
>>          if (IS_DISPLAY_VER(dev_priv, 11, 13)) {
>>                  u32 de_hpd_masked =3D 0;
>>                  u32 de_hpd_enables =3D GEN11_DE_TC_HOTPLUG_MASK |
>>                                       GEN11_DE_TBT_HOTPLUG_MASK;
>> =20
>> -                gen2_irq_init(uncore, GEN11_DE_HPD_IRQ_REGS, ~de_hpd_ma=
sked,
>> -                              de_hpd_enables);
>> +                intel_de_irq_init(display, GEN11_DE_HPD_IRQ_REGS, ~de_h=
pd_masked,
>> +                                  de_hpd_enables);
>>          }
>>  }
>> =20
>>  static void mtp_irq_postinstall(struct drm_i915_private *i915)
>>  {
>> -        struct intel_uncore *uncore =3D &i915->uncore;
>> +        struct intel_display *display =3D &i915->display;
>>          u32 sde_mask =3D SDE_GMBUS_ICP | SDE_PICAINTERRUPT;
>>          u32 de_hpd_mask =3D XELPDP_AUX_TC_MASK;
>>          u32 de_hpd_enables =3D de_hpd_mask | XELPDP_DP_ALT_HOTPLUG_MASK=
 |
>>                               XELPDP_TBT_HOTPLUG_MASK;
>> =20
>> -        gen2_irq_init(uncore, PICAINTERRUPT_IRQ_REGS, ~de_hpd_mask,
>> -                      de_hpd_enables);
>> +        intel_de_irq_init(display, PICAINTERRUPT_IRQ_REGS, ~de_hpd_mask=
,
>> +                          de_hpd_enables);
>> =20
>> -        gen2_irq_init(uncore, SDE_IRQ_REGS, ~sde_mask, 0xffffffff);
>> +        intel_de_irq_init(display, SDE_IRQ_REGS, ~sde_mask, 0xffffffff)=
;
>>  }
>> =20
>>  static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
>>  {
>> -        struct intel_uncore *uncore =3D &dev_priv->uncore;
>> +        struct intel_display *display =3D &dev_priv->display;
>>          u32 mask =3D SDE_GMBUS_ICP;
>> =20
>> -        gen2_irq_init(uncore, SDE_IRQ_REGS, ~mask, 0xffffffff);
>> +        intel_de_irq_init(display, SDE_IRQ_REGS, ~mask, 0xffffffff);
>>  }
>> =20
>>  void gen11_de_irq_postinstall(struct drm_i915_private *dev_priv)
>
>--=20
>Jani Nikula, Intel
