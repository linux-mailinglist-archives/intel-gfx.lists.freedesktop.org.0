Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC17A1491C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 06:16:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B97210EA4D;
	Fri, 17 Jan 2025 05:16:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Oas8M6W4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0040810EA4D;
 Fri, 17 Jan 2025 05:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737090995; x=1768626995;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uFS3fW7r4669FduISmTYqjiYT/4BLkdiqCmWg+EztxE=;
 b=Oas8M6W4EWr4PEmKnExpsH33imF5wLNDz5udBdej6f2eSDnYjW1oKk6M
 x2rKNGDkxAfqbVJIwdSS3z2i6ed13QnD7ugJ6qbbB6Pv+8MH5p4eoNayi
 hfxZ6w7uPQkX8kLbM4o+PivV7g3+WPGg/kI5mb1l2MgBJC+MAKZEh8XsF
 QVIBofnE+aHnQwyHmYBeW1PMfClrzTsRJTYnW7ZYyDLR6CMVsgSE7R3JN
 cpFkh+9aW9wpVTT5pSfixyDNAqRLwxnNynBqiJhGcTSny9a5nYcx9mhCX
 zRofS8W1vaEu5tlVF5cx8sV5XOInPdkh9AGLCIhGaFW8QnSL5ORfDp28i g==;
X-CSE-ConnectionGUID: N2Soy9J6Q2O/NjWIOl0ZPg==
X-CSE-MsgGUID: rbpoInWTTluPDk+Bu0UepQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="40322130"
X-IronPort-AV: E=Sophos;i="6.13,211,1732608000"; d="scan'208";a="40322130"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 21:16:34 -0800
X-CSE-ConnectionGUID: 7c35gwMZRaObE9b1JJhjDQ==
X-CSE-MsgGUID: 3+nsRbh3SbWKUzeUeRSsNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110815283"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jan 2025 21:16:34 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 16 Jan 2025 21:16:33 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 16 Jan 2025 21:16:33 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 16 Jan 2025 21:16:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nu6+Iff5ZJGpsyTY4BtlIf4fQStJGUt8ANjGDK9L8nDKF0tw8Mk0yU+dZ32jzcubT9MZbaZR8dmdLYuivZdOr5pOMex1zuxdgTKRY+UO9J+tw4gpltHiGTN1xsHLsGEYM/7oIEEq7Wx2/9HOP7ypBPhOG9+4ga4MyB/XfpiFxAWO7bMOoVMuEwN+r1K5cai6kB8XyouitKBwM49EzwcQJbdKQ804ECKJVWtk8o8ucoCfpA+vgkNZFgrxa2XLI9kYs5ohjrhHEcwwh8QC2eG0fBoaolFZrPnLwlqeXOPwayvvZQ74DUHz5VF5OBYE/r8eDH6hBxfz91on4RvEIGB6JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eeZ0AtKpZIf6aPphnNRgfgeCukUpcls2YuGrapEhTCM=;
 b=yJ1lkl1GPQ46mrXD85spcjj519DaM9s0bAi8L3yB6iIZWq8xe34Osw6FRhLKim0A24qMWQxNWuO+dwpvVsJ8i5mvLEU7fuQTQTul6on5aCFWAqw6ATFEOis3cWuGOpACX8Qp+hH3SlpfSmhamILUD9ED0X3LBsvGhkPkWwFCPU3Gf+UwPh/T8H8vNiDa5EIcGPVzgUr4ztHGD+fQL4rthMC783rhchXEzGAtBj2J0uxaEc6gp3lJukkjThqIqmfZODi8eM8/OV4LGLEgx5B8JcF9AGxtyLYqnMM+XooeG61eonVkf8A2ctafjc2eMlXWmiWZmayOrvlJwsnEFPbtmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CO1PR11MB4785.namprd11.prod.outlook.com (2603:10b6:303:6f::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.16; Fri, 17 Jan
 2025 05:15:49 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8356.014; Fri, 17 Jan 2025
 05:15:49 +0000
Message-ID: <8a8b63c8-f6a7-4319-afd6-37408681b746@intel.com>
Date: Fri, 17 Jan 2025 10:45:43 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dp: Correct max compressed bpp bounds by using
 link bpp
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250116095416.68325-1-ankit.k.nautiyal@intel.com>
 <Z4lFKYIWMF49peim@ideak-desk.fi.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z4lFKYIWMF49peim@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0160.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:c8::21) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CO1PR11MB4785:EE_
X-MS-Office365-Filtering-Correlation-Id: b79dd443-0c32-43a3-04c1-08dd36b6015e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OXZtUzYyNjJSQklaN3dHS2prV21JUGQrTFgvNU1pOFc3Qm5BNVpPSElob3RM?=
 =?utf-8?B?YXVSY1J1UHljNHVpdkc1OWQ1enZCeWF3Nk92MnUvNW9sREZ1Ykl5WkdzZjkr?=
 =?utf-8?B?RFk4ZTQ2Y1ZNanVDVy9OOEd5VC9Ec1QxaXliR0RabE9Ea0s3L0svVGpRUTRp?=
 =?utf-8?B?b3hZZkZXNGpSS05OTmVJMHNNMk5oaTBOa3FjZml6NWxRcGJSRmNUSURpRUhx?=
 =?utf-8?B?Y2lPUVVtRkRkenVaK2dXbm90ZVRwOHkrRGsyUnZmdFFkMGRrRk9KL2xZMEpj?=
 =?utf-8?B?TkZaUTNRMXFvekpRSUdWMExyTExsY1EyZGRseThpdTgrZVpnczBuYUpicExa?=
 =?utf-8?B?UEZZdnc2NXB2TXg4Mi9sM3d6ZlZWbWhta3AxVVk0d2RCT1pyZVVhaTdyb2la?=
 =?utf-8?B?Zk5rY1NveFMveHdLQVhHWHUydmhIeFBnNWcyRHFCODBreCtkL2k2ZkFsaWFv?=
 =?utf-8?B?TjlxOTg2RlAybDJZdEtsKytCT0lvb1UwbE9GNlJmaUVmS1dGM0tDNzN1RzJi?=
 =?utf-8?B?UVJMTE1ITEZpRHRrK2lTT0daVUxMNkRzNFQ2cGJkUTFweGp1OWVCTXlCUmgw?=
 =?utf-8?B?S09uVjZrTDdoeVg1aVlxWGlvUm50ak5pMzF4c0hzTkxZWVVqYVpxdUUwZ1Ja?=
 =?utf-8?B?YlJzTERnL29hOEFtbzJqcXRRWEhXUUw1M1FlYWUyRENKVk4wTlJPc0VLSzcw?=
 =?utf-8?B?MGxxdEVGKzJMdHI2M0M4d0ZPUWFKdmxhNTR4Q0NtUjYrUWZ1U3ZkSTQzN3NB?=
 =?utf-8?B?LzVRY1Z4ZjZJdW1TUkpWUTVLdjNkNlkvTmo5NGFDdHJhb0xkc3NYeUgwYXNz?=
 =?utf-8?B?NFFZaWpyZE1QQzZYYjFhWVh1YndCaTJFeVY3OVgwdDFNeHZKS1A0cDQ4YVpu?=
 =?utf-8?B?QnQvWi9MTEFYcnRiblBGNFUzWU9wb3ZYaVEvMHJkaGtrTTdrSnNuanVBelE1?=
 =?utf-8?B?V3NqUHl0aHNiY0dyOTE1eCt1ejNEZW4yM0VaRTVaV3BSbi9SYzYyanJOMzRp?=
 =?utf-8?B?RUk1TENnOE1SV3FhS2JVa0p4cjF3OXM5TmJxdjFFL2NxUEt1NmlEYVRXVnVv?=
 =?utf-8?B?UlR2VTJydktHRG1kU2REUWJRSW5wYjM0UVYwQXlrV2oyMXlSTlBvNFZzT2dj?=
 =?utf-8?B?REh3WWMxYk84ZkxSRy9OUXhpNTVpOHJ0RXdCUzg2dTJ3STV5NXlZMC80cGtC?=
 =?utf-8?B?aFdhR2NQdFNjMVNkQllEV29WWW5DZzEwRUNuT0VQbFN0ZTdGdDVCNXlKczR6?=
 =?utf-8?B?QUlETTJWbzQwNnpPb3cyTXRUR2k3YnYzMDZZa3dxRjkxOXBZT05yQnpycEJi?=
 =?utf-8?B?L1FmamFDNEREMGdtRDkyNDNaTEkxbHBVcGVEdVJ4anRWTHcyVElBNVpMdURZ?=
 =?utf-8?B?QzFUZzhXSTBUZGVsazAyQzl1Q1hET09kTFhTMS9kN1RuU1BkUVFTMjA2Ymla?=
 =?utf-8?B?OEJsdkcrTGRlajloZFJLWmxVWVdjWjloclNUM2RacUNoeUFlOW9hSHZqbVNy?=
 =?utf-8?B?ejhpSk5UcDJlUjVkNmNHclBDQlZ1aTNGMUdtRVp5L0xVeFhmRWlWNDdmZmV1?=
 =?utf-8?B?WmQzZmdKeGdMV1dxWTFmMjMyV29CenJacjJRMTJBQlpscjNGT1VsZ1hIV3h0?=
 =?utf-8?B?TVliU0VQbW1LNWFBeldTd2o1UW0zRHhOSDVFU01hR01TVzgwc0lpVmdGVVR6?=
 =?utf-8?B?a3NJcnhhZUd2Zk1Qc2haRkRrbEVvWHNhUE8wVUtGd3hpZ1IrUFI0dkRVbVpk?=
 =?utf-8?B?M0JMNFRpUmpvK05GV2xxQXpGM1M2S3FGUDZ6aFpJK3o3YlpiWXMybEhnOEhY?=
 =?utf-8?B?Skk5Q0pmU1lPUmRjVnNiUXlTamh5ODc4M0IyQXpIUjFqeUVtU1M5NC9kL0Uw?=
 =?utf-8?Q?Yl6jPS9STFYnd?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QzloZGhnRVVvTHllTTdwWjErSGdwcnVWaXlYM2RMa1lXZERRem1rWTFHb3NZ?=
 =?utf-8?B?RlJUZFB4anlWTzgrdWdhOVhhbGJVc1BWdzM0OEhYZHBNeGdiaEdxeHd1dEY1?=
 =?utf-8?B?d2N1bjZ5eFpNa0pWenVFd1RJR3lKdmhITGN3MnBlRTg0NDBoeUpnaHN3UDZL?=
 =?utf-8?B?T0ZUTzBMUHZoZmpGR2MzTXpQSGY4cjlpQ1NNbzdFeCtSeGxFRStjak1OYS9n?=
 =?utf-8?B?NkVOM0FQN05WTDF6RWVrU2JCVkZMN3l6azRqeEkwNHRnb0MyczVta0JobVVx?=
 =?utf-8?B?UkNXR3pqQnA4TktiTjM5UlJ2VTNZVzRaQWRSOXV1eWw2WjN0R3lzY1JSRWhT?=
 =?utf-8?B?MXgxSFhzQyt3aUVZUHhsNWtnNUUwSkNpNG9BemZ5M3BpVkxQRU9ud1orcnlU?=
 =?utf-8?B?SnJmQ01ycWtQV21SQXluRktkb3pXRWdqYkkrMkVFZFkwR0V2Y2dCTEJHdXJC?=
 =?utf-8?B?S05uYkU5bHo5Y1oyWmFuSk5TdHFUdmFWUEtBOWdSRWY0YkZ3QWc1bnFOMmRD?=
 =?utf-8?B?RUUxMFczVFRHUUtsd0xrL0pBc0wyRkplVkFWc0xUTXZ5bjJtR1hwdExVMG45?=
 =?utf-8?B?TXRMeGNMVEtWMkRYVyt1YSt3K1M4SHZ2U1FKa0xpS3NpTkgxWlh1WVd1M2FX?=
 =?utf-8?B?RW5UQTl0Mm54TDFPT3hKMTZRYy9CcTBZdldVWFVZWU1QVVplM1N3VGZ5OXpC?=
 =?utf-8?B?MlV1d2pyYkYwT1dIdEZqYkk0ejQyTFdHeHdQV21Ud1VRbUNKV0dPVVFWa1Nn?=
 =?utf-8?B?dUE2VCsyTDJXNkh2UEZ4VE1OK0x0aURpVmxKU3d3K2FUMWxqR2VVSlVDSFlX?=
 =?utf-8?B?UlAyeXRnUFdJdVByTTBSNXRmaHNlODNOblNYSXRyU2g4cGtPN2VjMTBHTGxG?=
 =?utf-8?B?Si82NFRuNEU1VzNtM2hUREZ0ZlR6Q0FJUXdtV3MrWjRrakdQWmVib2xiZjBB?=
 =?utf-8?B?Rk1lbC9aOUkvNGZwTk5nQ08yRk5QTm4wejZ5OXJmZDBBcGVWSGJzVmd1aEZT?=
 =?utf-8?B?cktray85dXFrakRpdElUT1BWQ1h4dUhXYkgyMHl0MFNwcVEvQ3ZsWlBlc1pi?=
 =?utf-8?B?RmdvZjl3TWZjQzB0aFNaYXpBWXhNOFcweGg0WXVnUlV5SXovRXdzNmdrN3JN?=
 =?utf-8?B?ZjZwSXNYNzJZTXN4U2VKQm9sd0loc3lhcUNabjVUUlZqdVdkaG1Ic05qdjZO?=
 =?utf-8?B?K3FoNXNXTnlDWE5hV2x6L3dXa0J2K3NPTGJWYjFKQ0t6d1VMSkk0NnBFcE5n?=
 =?utf-8?B?WXBONmw2MXhLQjQ5RDk0QzRqTjJvV3l1M3E1dysxVXV6b2JsWTZTYzYrbVFo?=
 =?utf-8?B?ZExlaWhOdWJTVm9MK2xmeUJWMkNrRStTWjhxYm1BQi9LaCtOdUpHZW1xcjF0?=
 =?utf-8?B?SlZsTHJ4dmlENDh6SE91ZmY5UUNDbEFIdlpJaTRvTHo1d3FiVCtTUW84VHJw?=
 =?utf-8?B?VkVqSHFUUUhOZTllUFNhWjdyN04zNjhCSG9TeWkrSVkvMkNDSVd0YzZ3a3RL?=
 =?utf-8?B?Vkx1bENYb1o3RHJhb2FOZmM1a2ppVmNQOVc3c3BZU25iSENUcVlCbDJ1Wlh4?=
 =?utf-8?B?cHd1STBzeXlSYTN3eGtNZmsyZU1NdW5FSDA0VTdrMGZiNXEzVXpLaTcxNkhT?=
 =?utf-8?B?d0EvS2FLZENValpKK2FtQlc5OTVwSHN0N1o5cmJRRVA1SUpNOXlRMmNNY0JE?=
 =?utf-8?B?N0RYRnRGcDVjeFVPVlUwQ0RWNW1LYnFUdTk1a2VnZk5helh4VzQybjFxRkdi?=
 =?utf-8?B?UGFuRExoVWd6TEZwaU5PTGlnTEdzZnAyRDBQdzBON2NjVXFmd2NGWm9RdHd2?=
 =?utf-8?B?V1VldzQ2WktuL2x6Mlo1QXlTMXl6cU9sVlZkMU5PNGxCT2doS1NZYjEvTjJy?=
 =?utf-8?B?c3JEZ1VZQlk5TFVYUkpUYXRyMjJNYThTT3JtM0ExVFhqa24zakUxNXV3Q1da?=
 =?utf-8?B?aGFXTWpIUUZPSEJEOVpTWmlpS3BXM0JUUFVPdkxhZVJTS1NCN3o4b0g3VkU0?=
 =?utf-8?B?Ti9TM1JHcVBnY1ZOcThDWnY1d2IrZzhXNHlUV3ZWbnBZaW5UZ1M4MkUxQmta?=
 =?utf-8?B?MVhwL0pBNEJkQjhrRjRsQStGQ0l4a3NxNlpmT3FPRTFZZUNIVVYvZi9oWjEx?=
 =?utf-8?B?M2k5UUk4VXgzWWovZEVzR2d3cHNkYVFXaXhvWmRJYnlqMHpWN1lRN2Z3REt0?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b79dd443-0c32-43a3-04c1-08dd36b6015e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2025 05:15:49.2690 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f1OLIrN9nJiN1zye0My172uBTwuev3/nuADZC6j1e1Pqi/SiYZ4yJ1mA8QE6s5BzxQ4kesMz5xsHgtYNCqJUgYblq68FMiaR6OtPpZxD/aY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4785
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


On 1/16/2025 11:13 PM, Imre Deak wrote:
> On Thu, Jan 16, 2025 at 03:24:16PM +0530, Ankit Nautiyal wrote:
>> While setting the bounds for compressed bpp we ensure that the
>> compressed bpp is less than the pipe bpp.
>>
>> This gives an issue with 420 output format where effective link bpp is
>> half that of the pipe bpp. Therefore instead of pipe bpp use link bpp to
>> set the bounds for the compressed bpp.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 10 ++++++++--
>>   1 file changed, 8 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 1ad25c37f3c2..47fcfbcb893b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -2068,9 +2068,12 @@ icl_dsc_compute_link_config(struct intel_dp *intel_dp,
>>   			    int timeslots)
>>   {
>>   	int i, ret;
>> +	int link_bpp;
>> +
>> +	link_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
> Here and in the xelpd version, using output_bpp instead of link_bpp or
> just inlining intel_dp_output_bpp() at the single place it's used would
> be better, but in any case the patch looks ok:
>
> Reviewed-by: Imre Deak <imre.deak@intel.com>

Iniling the helper for xelpd one, where we are using fractional bpp is 
becoming a bit complicated.

Using identifier output_bpp instead of link_bpp seems better, since we 
are deriving it using intel_dp_output_bpp().

Will send the patch with the 'output_bpp'.

Thanks & Regards,

Ankit


>
>>   
>>   	/* Compressed BPP should be less than the Input DSC bpp */
>> -	dsc_max_bpp = min(dsc_max_bpp, pipe_bpp - 1);
>> +	dsc_max_bpp = min(dsc_max_bpp, link_bpp - 1);
>>   
>>   	for (i = 0; i < ARRAY_SIZE(valid_dsc_bpp); i++) {
>>   		if (valid_dsc_bpp[i] < dsc_min_bpp)
>> @@ -2113,6 +2116,7 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
>>   	u8 bppx16_incr = drm_dp_dsc_sink_bpp_incr(connector->dp.dsc_dpcd);
>>   	u16 compressed_bppx16;
>>   	u8 bppx16_step;
>> +	int link_bpp;
>>   	int ret;
>>   
>>   	if (DISPLAY_VER(display) < 14 || bppx16_incr <= 1)
>> @@ -2120,8 +2124,10 @@ xelpd_dsc_compute_link_config(struct intel_dp *intel_dp,
>>   	else
>>   		bppx16_step = 16 / bppx16_incr;
>>   
>> +	link_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
>> +
>>   	/* Compressed BPP should be less than the Input DSC bpp */
>> -	dsc_max_bpp = min(dsc_max_bpp << 4, (pipe_bpp << 4) - bppx16_step);
>> +	dsc_max_bpp = min(dsc_max_bpp << 4, (link_bpp << 4) - bppx16_step);
>>   	dsc_min_bpp = dsc_min_bpp << 4;
>>   
>>   	for (compressed_bppx16 = dsc_max_bpp;
>> -- 
>> 2.45.2
>>
