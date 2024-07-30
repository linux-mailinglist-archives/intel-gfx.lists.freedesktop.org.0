Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FB4942061
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2024 21:11:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B70F10E264;
	Tue, 30 Jul 2024 19:11:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fpRqywgn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C18910E264;
 Tue, 30 Jul 2024 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722366687; x=1753902687;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BcyrL8nkTLHG+qCGKK9p4+BwMAj6UoBafAGqEEuksTs=;
 b=fpRqywgnGYa1Bx34NwwdphA+t7/k1SvLKwrT8KFtLzUhyj1N1+Xg4RfU
 BGYZMn0xca67N6TOjJy3be8KY0WJhgxy0wr25KTdy3y46n8LM7etAqgZe
 vH40x6bWxtROcUm/qbobAPzajc4shqwsayEeGXLy4ueNH9bUiMo2wuFgi
 29yN0vC1z+AyVrP0rVcwQ6TjZbxw8II6JFHlTb4CloAWVVyUEERhrLqqd
 GS6VGBq4KbQAz9yYsv7Ak/7NBjR0gf7QnUiWtI9rkWOJFjx6/IE7oleV+
 yzVF3qW/n6i13b1oaAu3ua+aRaCDD05QGPMaLJ5Q/6dw/+UiOHneZHU+c A==;
X-CSE-ConnectionGUID: G9kpUKMTTOG0roO9Pinqdg==
X-CSE-MsgGUID: q4s1DGZSTta4sEKbuUSuDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="24001668"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="24001668"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 12:11:25 -0700
X-CSE-ConnectionGUID: 6i0MIalUQQChy087+3VW2A==
X-CSE-MsgGUID: jqKQhOEGS8OY1HSEOVCEag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="55236756"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 12:11:26 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 12:11:25 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 12:11:24 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 12:11:24 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 12:11:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F1LSOYAEcrFRDcnPEazoh4zaoQTkXJtnd1Osq5xkCxi4uFDJFP0Tkr9keWdEVKXlTg5OC+w0WlKBQixp9HsjbpRhy6nCtHHOA8PqzJDl/SSrODUcNJnm0ZjT4oycriuCu/sqlIF8sqHicVKUA+QNFDLQCC7crDuCLgMqjDmh2pPk8ozU7btIllHrd30w1e6mtu4zv3+F4cVS2TwfPnefdhSHVsU/0ikrtT4r+IVuEIJ1tS3I9qFzRY28KRO/82HruwVkM3mE8gQ3ioYvPClsXLCFUvqhpM4RCXswslLFy9aRlv7/bnzLmDyJs6fislXCvAUeHVt4UCqUUjVcXeHzUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RXE0t0g7aNfCQt6KGghcgf1fKxARZUmK+U+j6G+NJ/Q=;
 b=q6QhFLhW77UWmUiHcV4Kx9oCNFWaxgVUCazeonZpsNwtvty3qJ8LmZlqZGZ+MQqZsAAWMhnEY59wYo0XfZG+4fDrVN18X5Eb7FycfM8ibZtjB3L6RmwilR0vI/FNljLwUiLXbDr/fk6Qs4nYbI1BMFpdVNu2dBUqNhMrrBjNmcKthNeRpM++zTNoHzJM9LbQRnjJYFgVJ+3FaLKi59El3yM1Y2xOpMqJk0fYRh0cNBI3qP2skvVzpdSpywTeNwrd7ngRI0kXKeK3uh7iSPNutuwh5DRZi4DWHBFRuZj7e3ugeJNyWkxStLveyV5145mHVXGWdUuPIegrrlIDa+OAOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7757.namprd11.prod.outlook.com (2603:10b6:8:103::22)
 by SJ1PR11MB6178.namprd11.prod.outlook.com (2603:10b6:a03:45b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.19; Tue, 30 Jul
 2024 19:11:16 +0000
Received: from DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1]) by DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1%5]) with mapi id 15.20.7828.016; Tue, 30 Jul 2024
 19:11:16 +0000
Message-ID: <965ce4e5-0d69-4034-8b70-2f15e08660aa@intel.com>
Date: Tue, 30 Jul 2024 12:11:13 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 i-g-t] tests/xe_gt_freq: Avoid RPe usage in subtests
To: Riana Tauro <riana.tauro@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <igt-dev@lists.freedesktop.org>
CC: Badal Nilawar <badal.nilawar@intel.com>
References: <20240730001721.2389519-1-vinay.belgaumkar@intel.com>
 <550e3d0d-543b-4925-ac66-e953ccdfa0dc@intel.com>
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <550e3d0d-543b-4925-ac66-e953ccdfa0dc@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR05CA0106.namprd05.prod.outlook.com
 (2603:10b6:a03:334::21) To DM4PR11MB7757.namprd11.prod.outlook.com
 (2603:10b6:8:103::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7757:EE_|SJ1PR11MB6178:EE_
X-MS-Office365-Filtering-Correlation-Id: a718e7d5-7083-47ac-51c9-08dcb0cb62b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ajluL2l4R2g2bXdHRkdoTDhpSzlLbjViNGpvYkZOVTFuWVc1SjR0Q3VhYkFB?=
 =?utf-8?B?YUwrTnpmbmEzbGFFb0JPbXZpL1hkZFB0dHRhaHpQR0gvUmFrRlpoeXlKK01l?=
 =?utf-8?B?RXRodmpHSm5IWG9uNGtQeVZSSDFUS1BuRTAxaUZyN0ZKemR5Sld2RmZnVlU3?=
 =?utf-8?B?ZG12bUdHRmY1U2RwS1czZGxYM0NLWW5ZMURWdUFBMHdGWGNXSlQ2MFJ3TkUr?=
 =?utf-8?B?SzRNZHJkaVBZd3U2eG5XNDZmeFNEL2tHUHFReHl6VHRlOGpjUnNSclQwSkxO?=
 =?utf-8?B?UDdLQkhLWmlzUXQrNFl5dnJFS1IyWTN6aUZaZnFaenNYUVhnV0RJY0lxZEpa?=
 =?utf-8?B?Q2tEWDdxTmtnWUQyR1R0SkY2aDdzR0N6SUhka3BFOVFLcmJHMHZFMDYrU2hx?=
 =?utf-8?B?aFg3aEhGYVYyQUxoM0ExVGtsMS9IemZ2Qm56K041T001ZWJMakJDbVd6cDVK?=
 =?utf-8?B?akZFYjVWN1l6MU1sd1Baa0l3NWV5U1NKd3lSK1R0NVhicDJETGJVM1NsY2xT?=
 =?utf-8?B?VFRjb0lsUEk0dWkxSHdzd1B4Vm1PaWZTT3QvemhDQ0xzS3FrREJSdTdnOFJo?=
 =?utf-8?B?ZFpxaDArWmM5Y1g2ZEFWSlFFK1JERlAxMW16ZXJ3QVlvS0RBTFViUS91Vm94?=
 =?utf-8?B?SHBLR21RMGQrMzZLRWd2UWpSOU1uRDg3c0ZVUkJmeVU4NEhtTUdFeEdPUUNX?=
 =?utf-8?B?c2tnV1pPbW5pV2dNSmhJMDIyUnlpY01lenBsL3R0bS9oNDZVWHNDOEo0Z1do?=
 =?utf-8?B?Vkk2bS9jSURMT3FzaWNvZEFiSXFpWmwwa0F1MEJkUndZajRVcnRabFhBZTJx?=
 =?utf-8?B?QlR3VDlSNlBnNzJDNmF5NlFFL1BuQWMrUDNTb0lCVGtGbzFobUIvTENaVXJu?=
 =?utf-8?B?SmZLdTBock1ZVW5qK0FXQ0kxdlA0c2l2b2JBZ3pReVdBN2JrTFZZSWJjcVRz?=
 =?utf-8?B?STdUdWVQNE5OR1h2NVVGYXhROTB1bFU2czErWWk3U1BRcXU3Ylc2U3lCNy9j?=
 =?utf-8?B?dExCQnNzazdPSEt1V1FPT29KelZ3RHVPTXkwMWxveVR0a2JFakIzZ2JlVkJ6?=
 =?utf-8?B?eVNCTnpQOFdqSGYrTVZ5N1dLczB0Rm00YWJCNVlxcWFuRTFVb2Y1KzUrUEdX?=
 =?utf-8?B?cUMxZitGUHcrUlpPSFdsbXR5WnZBV3dTa1ljWW9KR0Rvc0JzQjRWaFRvbThJ?=
 =?utf-8?B?bXMxbWJORE96ZC9ld2hqZmVtWEJkclBSR0F6NXJoZlVwSGxMWkdGRmdjSXk1?=
 =?utf-8?B?a0h4NGR5eWdpM1VEcVhobEhYRVpMR1I3S01ycExRV0t1TVlYZUJoUC81M2Z6?=
 =?utf-8?B?aitrM3J4cGVqb0RlWUM1TUV6M2w0UExHQnFPWUJLdjNsQnd3ZWkvM01vdS9k?=
 =?utf-8?B?bm42WXpSVzYya2wrNjNtQm5ROHR0Ukk5T2FtOUF4eTJSdTBYZnBlUXZZNVVO?=
 =?utf-8?B?NUlUcTBpYm5NdGdUcThmOEhJbjY1bXB5eEVQay95UEZzTUFrdkFyUEh2MlQw?=
 =?utf-8?B?WmJMZEJHSXpKeWRZdWhCdDF2RDBXWkpPRUd4ZnJNTU5HNWpmVmdYeSttS0Zz?=
 =?utf-8?B?cnZYdytYbWR0VnhWSHNYZDRFcWp3ckNRTEs5YTd4bDR5Y0tCV0F1QWFzRUNr?=
 =?utf-8?B?T2VqSm1NVi92a2wyYTAxSlIweW9jY1hIUGlySkcrb2s1T1dYbUJLL09sZXNK?=
 =?utf-8?B?bXZjazc0bjVzWFVGcXB5MWJ0M1FxRDZFK0puUDdsb1RFNlZrTWIyQnppVlhP?=
 =?utf-8?Q?G9Hgs1nceopvITeVJo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7757.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SGtodTlEUTNsREpTNlhHQ2c0Zzg4T2d4eXZqdHY0SDdnWEdYRm9OdWhMeVpF?=
 =?utf-8?B?UVNBNTVLQThualNQYytPbXVJWEIzWEFHRkowK3RhR2JmZW0vSk9mL2x0dnZu?=
 =?utf-8?B?RzNEVHNqTGFIRjJTVEgram1FVnUrZ2VLOGJEdjZ3RlZ2U3dKUEowRW9HVVJZ?=
 =?utf-8?B?M3MrdjZiQzRZWWxZeC92b0s1WXcxWDZ3YTZsbFpxZ3pmTm9DV2dKUlF4b01n?=
 =?utf-8?B?bW1uSnBBNEVGT2Rub3ZCYlB3aUdxVzgrN0pvRXF6ME9OazU1bkZYVVQ4UHZV?=
 =?utf-8?B?b3NnNE9QOU9CR283MEhQYnNPbXY4SWFkVWMzeTd1TzduZDBVVVBKYjBhc0Uv?=
 =?utf-8?B?Q2ZYK1VlM29VRXNpVFRjUlJQdjZSMEFzL3R1azU0bkh6SHhZSFdkL3pYL1VF?=
 =?utf-8?B?dmwrTHRHdGVMY2liYmVXUk9udVRkMVFzNXJUNWdJb0cvRzREYnpscnlCTnN2?=
 =?utf-8?B?ajlWNVBIOVkySDBWYW9nRFNjSkhLWVJqbnhqY2FFS0lHTWxOWUt2Q3k0QUgz?=
 =?utf-8?B?QWVEUExpeWRRcWFUOGJ3a0FOSjBnY0NSY3BWSEIzWnNCbXRpSFRndEVtRGx3?=
 =?utf-8?B?UU54THB5c3E3UmxvYWVuMlFmeVkyMEpoZEc4MEpQQWp3UTdVL1NWWm1KZCt6?=
 =?utf-8?B?NzdhS0VvcUEybzJpOHRBREcrK2xlZzZCR1EwVFpMUFI5a1k5SHFQNm1Zem1N?=
 =?utf-8?B?VG1obnVzSndPcmpOSHl3aDZWRzd0dGIyTGQ3T212N05QT3loU3ZlN3FoY3Fp?=
 =?utf-8?B?K25YeTZlTnZ2dzhBVmxuT2hzcks1ZVd1Qk1XWm5IU0VvaTRCZ2IxcGRCdkN2?=
 =?utf-8?B?K29SK0V4QkF3NXRrOHBmamF2TVc1YlI4azdHd3Nkd09La2c4WXEwdXQ1SFNM?=
 =?utf-8?B?RS9VNHFVR0RONGRWVExkWmdENi9ScStyMHQvb3BOc0NRNThtZVJXeUI1N1ZD?=
 =?utf-8?B?eFNQb0JYN2FscVN1R2trelFwdjl6b2p1a2h2ZFBTanQxdUVEblRwRm9LeW1k?=
 =?utf-8?B?cEt5YTBmelI0dDUrTVlxZjdjVy9SRFRON0ExajlBV3gyVHpqOE9FeGhTcTZC?=
 =?utf-8?B?aWRkMVc1eVZraVpmK21xWDl0SkVFdWtVd21UenVMY0pPbnByUWZUY3AvWGQw?=
 =?utf-8?B?b0N1SytoV2FvQU5LVnBBRW0rS3NpSEs2UkprZXJGUlFZTkN3RlgvNnRBbjA1?=
 =?utf-8?B?WUg3ZVI5am0wR2dpUkJzZ01FSkVLQXZsR28rV1hKeXRzNHE4WllWUVBCcStm?=
 =?utf-8?B?MXNjU1M5MzdEaGREbHJXdHZnSWx0UzlLVy8wbUZQcW9XSk93YWNiU21yR1Iv?=
 =?utf-8?B?TDhaL3JtVWZtbUUwbUR3b1VVN01mR1Y2a05aUWRtZlFwM1MxMnVUK294bW80?=
 =?utf-8?B?N0VXUXdYY3FYV0NoODRJOVZvVE9NYkNZU2toOHFWcndoVGdtTkFFcTcvTnUz?=
 =?utf-8?B?R2ExdWpMNXpmbWdGWWFTYVhuNW1BTDU1Zlc2d3diak5Nenc4eUQ2RWFsN253?=
 =?utf-8?B?WU90Uk85b0VXQ0V6c3p6L1BJUG8xYU1FQkp0dTl3NlNORUxIcTBvZEhIemlM?=
 =?utf-8?B?REtSQndtd0YxVVNMMlhmWDREZ1JNMXlJeVcxaVJIZ3dpSDZMd1NQRjdTTEJy?=
 =?utf-8?B?NjlLZk9UV1lVZHYwbGY4ZG5FN01WdXVUREUzZXAzOHg5cVd3QXpDSEE3eGw0?=
 =?utf-8?B?alhLRWV1MmdKdG5JdWZybDdTS2NUUG9KM1dGV3pjekl3cE1CZ0tCeWtmcC92?=
 =?utf-8?B?VnhMTlpNaGN6dXdqbTlzeGxEbUUza2ZjbGM5NlpnK1dCNGNLbktiazZkT2Zh?=
 =?utf-8?B?aEkwNjR5RXVyRkMxY1I4eWxrNmRDOG90VGl3eWJkTHVPNDBKVVVwSFVJdm9x?=
 =?utf-8?B?TDRkQUtZVFB1dGtPenNTbnNNUWd2Y1JHS0VLK2ZjZGhQb3RnNWxKZmVUcDJV?=
 =?utf-8?B?QUs5bCsxMWdZRWl2MjB4SkRWaytVR0JlLzJoc3I4M1V2TjhaVDhhemsrdFVV?=
 =?utf-8?B?RFM1bVVTUTBER0UyRTFFQ2p0WFd4ejJlZVB2b1d0YXdubDQ2VnliR0tQVndp?=
 =?utf-8?B?VEp0Z2ZWRVlKeG9mM3AvMVBWQ3V3ckRXZDNONHpBVnhWWktCSHNnYXhWT004?=
 =?utf-8?B?N3RQeVNtQVNicVVGYmwrYUprQlNiZ2Y5Y2laU1h6alczY2d1K2FQV2Qrc1JF?=
 =?utf-8?B?MFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a718e7d5-7083-47ac-51c9-08dcb0cb62b0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7757.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2024 19:11:16.1623 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EA5Kww7hCTSir5vfkvpaHtwYAKc+CwPTjnTNieslD4srwsyiU/w/QparLMaG2nYZe7hukvbFOpDmFPk2+Do4uX1BrnKwUwE8SxMiPO+vRm0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6178
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


On 7/29/2024 9:47 PM, Riana Tauro wrote:
> Hi Vinay
>
> On 7/30/2024 5:47 AM, Vinay Belgaumkar wrote:
>> We are seeing several instances where the RPe, which can be altered by
>> pcode dynamically, is causing subtests to fail randomly. Instead of 
>> relying
>> on it, we can use a mid frequency value for these subtests and avoid 
>> these
>> failures.
>>
>> v2: Fix bug in the tolerance function. Remove rpe usage from freq_range*
>> as well (Badal). Fix test documentation to reflect change (Riana).
>>
>> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2200
>> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2196
>> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2262
>> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2256
>> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2203
>> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2412
>>
>> Cc: Riana Tauro <riana.tauro@intel.com>
>> Cc: Badal Nilawar <badal.nilawar@intel.com>
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>>   tests/intel/xe_gt_freq.c | 53 ++++++++++++++++++++++++++++------------
>>   1 file changed, 37 insertions(+), 16 deletions(-)
>>
>> diff --git a/tests/intel/xe_gt_freq.c b/tests/intel/xe_gt_freq.c
>> index 93ebb5ed0..1ada37834 100644
>> --- a/tests/intel/xe_gt_freq.c
>> +++ b/tests/intel/xe_gt_freq.c
>> @@ -26,6 +26,9 @@
>>   #include <sys/time.h>
>>     #define MAX_N_EXEC_QUEUES 16
>> +#define GT_FREQUENCY_MULTIPLIER    50
>> +#define GT_FREQUENCY_SCALER    3
>> +#define FREQ_UNIT_MHZ DIV_ROUND_CLOSEST(GT_FREQUENCY_MULTIPLIER, 
>> GT_FREQUENCY_SCALER)
>>     /*
>>    * Too many intermediate components and steps before freq is adjusted
>> @@ -70,9 +73,14 @@ static uint32_t get_freq(int fd, int gt_id, const 
>> char *freq_name)
>>       return freq;
>>   }
>>   -static uint32_t rpe(int fd, int gt_id)
>> +static bool within_expected_range(uint32_t freq, uint32_t val)
>>   {
>> -    return get_freq(fd, gt_id, "rpe");
>> +    /*
>> +     * GT Frequencies are requested at units of 16.66 Mhz, so allow
>> +     * that tolerance.
>> +     */
>> +    return (freq <= val + FREQ_UNIT_MHZ) &&
>> +        (freq >= val - FREQ_UNIT_MHZ);
>>   }
>>     static uint32_t get_throttle(int fd, int gt_id, const char 
>> *throttle_file)
>> @@ -128,6 +136,8 @@ static void test_freq_basic_api(int fd, int gt_id)
>>   {
>>       uint32_t rpn = get_freq(fd, gt_id, "rpn");
>>       uint32_t rp0 = get_freq(fd, gt_id, "rp0");
>> +    uint32_t rpmid = (rp0 + rpn) / 2;
>> +    uint32_t min_freq, max_freq;
>>         /*
>>        * Negative bound tests
>> @@ -142,16 +152,18 @@ static void test_freq_basic_api(int fd, int gt_id)
>>       /* Assert min requests are respected from rp0 to rpn */
>>       igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
>>       igt_assert(get_freq(fd, gt_id, "min") == rp0);
>> -    igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
>> -    igt_assert(get_freq(fd, gt_id, "min") == rpe(fd, gt_id));
>> +    igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
>> +    min_freq = get_freq(fd, gt_id, "min");
> Seeing the first issue after this change. Do we need a delay?
>
> https://intel-gfx-ci.01.org/tree/intel-xe/IGTPW_11490/bat-adlp-7/igt@xe_gt_freq@freq_basic_api.html 
>

Hmm, rpmid here would have been 650. SLPC ended up setting min to RPe, 
which is probably 700 here. Will change this conditional check.

Thanks,

Vinay.

>
> Thanks,
> Riana
>
>
>> + igt_assert(within_expected_range(min_freq, rpmid));
>>       igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
>>       igt_assert(get_freq(fd, gt_id, "min") == rpn);
>>         /* Assert max requests are respected from rpn to rp0 */
>>       igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
>>       igt_assert(get_freq(fd, gt_id, "max") == rpn);
>> -    igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
>> -    igt_assert(get_freq(fd, gt_id, "max") == rpe(fd, gt_id));
>> +    igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
>> +    max_freq = get_freq(fd, gt_id, "max");
>> +    igt_assert(within_expected_range(max_freq, rpmid));
>>       igt_assert(set_freq(fd, gt_id, "max", rp0) > 0);
>>       igt_assert(get_freq(fd, gt_id, "max") == rp0);
>>   }
>> @@ -168,13 +180,16 @@ static void test_freq_fixed(int fd, int gt_id, 
>> bool gt_idle)
>>   {
>>       uint32_t rpn = get_freq(fd, gt_id, "rpn");
>>       uint32_t rp0 = get_freq(fd, gt_id, "rp0");
>> +    uint32_t rpmid = (rp0 + rpn) / 2;
>> +    uint32_t cur_freq, act_freq;
>>         igt_debug("Starting testing fixed request\n");
>>         /*
>>        * For Fixed freq we need to set both min and max to the 
>> desired value
>>        * Then we check if hardware is actually operating at the 
>> desired freq
>> -     * And let's do this for all the 3 known Render Performance (RP) 
>> values.
>> +     * And let's do this for all the 2 known Render Performance (RP) 
>> values
>> +     * RP0 and RPn and something in between.
>>        */
>>       igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
>>       igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
>> @@ -190,17 +205,19 @@ static void test_freq_fixed(int fd, int gt_id, 
>> bool gt_idle)
>>           igt_assert(get_freq(fd, gt_id, "act") == rpn);
>>       }
>>   -    igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
>> -    igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
>> +    igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
>> +    igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
>>       usleep(ACT_FREQ_LATENCY_US);
>> -    igt_assert(get_freq(fd, gt_id, "cur") == rpe(fd, gt_id));
>> +    cur_freq = get_freq(fd, gt_id, "cur");
>> +    igt_assert(within_expected_range(cur_freq, rpmid));
>>         if (gt_idle) {
>>           igt_assert_f(igt_wait(xe_is_gt_in_c6(fd, gt_id), 1000, 10),
>>                    "GT %d should be in C6\n", gt_id);
>>           igt_assert(get_freq(fd, gt_id, "act") == 0);
>>       } else {
>> -        igt_assert(get_freq(fd, gt_id, "act") == rpe(fd, gt_id));
>> +        act_freq = get_freq(fd, gt_id, "act");
>> +        igt_assert(within_expected_range(act_freq, cur_freq));
>>       }
>>         igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
>> @@ -232,15 +249,17 @@ static void test_freq_fixed(int fd, int gt_id, 
>> bool gt_idle)
>>   static void test_freq_range(int fd, int gt_id, bool gt_idle)
>>   {
>>       uint32_t rpn = get_freq(fd, gt_id, "rpn");
>> +    uint32_t rp0 = get_freq(fd, gt_id, "rp0");
>> +    uint32_t rpmid = (rp0 + rpn) / 2;
>>       uint32_t cur, act;
>>         igt_debug("Starting testing range request\n");
>>         igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
>> -    igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
>> +    igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
>>       usleep(ACT_FREQ_LATENCY_US);
>>       cur = get_freq(fd, gt_id, "cur");
>> -    igt_assert(rpn <= cur && cur <= rpe(fd, gt_id));
>> +    igt_assert(rpn <= cur && cur <= rpmid + FREQ_UNIT_MHZ);
>>         if (gt_idle) {
>>           igt_assert_f(igt_wait(xe_is_gt_in_c6(fd, gt_id), 1000, 10),
>> @@ -248,7 +267,7 @@ static void test_freq_range(int fd, int gt_id, 
>> bool gt_idle)
>>           igt_assert(get_freq(fd, gt_id, "act") == 0);
>>       } else {
>>           act = get_freq(fd, gt_id, "act");
>> -        igt_assert(rpn <= act && act <= rpe(fd, gt_id));
>> +        igt_assert(rpn <= act && within_expected_range(act, cur));
>>       }
>>         igt_debug("Finished testing range request\n");
>> @@ -262,17 +281,19 @@ static void test_freq_range(int fd, int gt_id, 
>> bool gt_idle)
>>   static void test_freq_low_max(int fd, int gt_id)
>>   {
>>       uint32_t rpn = get_freq(fd, gt_id, "rpn");
>> +    uint32_t rp0 = get_freq(fd, gt_id, "rp0");
>> +    uint32_t rpmid = (rp0 + rpn) / 2;
>>         /*
>>        *  When max request < min request, max is ignored and min 
>> works like
>>        * a fixed one. Let's assert this assumption
>>        */
>> -    igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
>> +    igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
>>       igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
>>       usleep(ACT_FREQ_LATENCY_US);
>>         /* Refresh value of rpe, pcode could have adjusted it */
>> -    igt_assert(get_freq(fd, gt_id, "cur") == rpe(fd, gt_id));
>> +    igt_assert(within_expected_range(get_freq(fd, gt_id, "cur"), 
>> rpmid));
>>   }
>>     /**
