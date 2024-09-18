Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B2497B729
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 05:59:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31CF910E0E8;
	Wed, 18 Sep 2024 03:59:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uun/OmTX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A80B10E08B;
 Wed, 18 Sep 2024 03:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726631946; x=1758167946;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=f+d4hDJTe0EXI+xNlfX3If51la8Pe2ggo9jjoVSbbnM=;
 b=Uun/OmTXo9meqjM+rw1r3cB9U9Ogfx7DKcVmaqgi6YSJeauvbssIX/7d
 dpqv5iwGW0eMrhA702kq676gDzJZdpFhVaD1QrB1qqvcc9/ols1e3B1yP
 f7hTY2QY4nDQyH2ds98YAcGyWqjj8ybygd2J4ajuuAPM5Z5c2oLZIXoM0
 53WVOOZCYBv5dfV8drM71J3LAptrlMT6EYkTLtg+Qo3WGscHaqh9OwOkB
 sw1QOj51sxd9z5Dhywefhvxl1Ld3kKa1wm5BQKK+HVFvKX2Bs3r2hs1uA
 LHa72yCD5mw5js416IfeRgtOXw+IY4+5LDHYISSius2qUUJDjqZtB+a9r Q==;
X-CSE-ConnectionGUID: 79Vfw8ibQIGdwvcYcxDTmg==
X-CSE-MsgGUID: guCa5ubCTd238+rajmj81w==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="43041567"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="43041567"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 20:59:05 -0700
X-CSE-ConnectionGUID: tauP8G6RTN+w6RRZc3Ze8w==
X-CSE-MsgGUID: O9pBUjoTTPC2UOvklARiaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69033702"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Sep 2024 20:59:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 17 Sep 2024 20:59:04 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 17 Sep 2024 20:59:04 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 17 Sep 2024 20:59:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rlV5i0OE8IgM4FYsJMBaJm8PaMsm9nLXaO4bIAG64Ql1pARTJE+jabwkhWFGIJaV+KJfkt10cFyzSE16Y4YOaSOF3FJ2Vqnk+51xmcHGUq0o+2KvSUL72maoz9ZGLj8d9MjYFucFZiTZ0U1lbcjUT5lXu3balqAMivJ4xGvEVaOCKIj+MAGRykqxoE2LaIztzIcvCNEoadnceM2xlK7D2CwSwzzJstT730iOjxS3GcQYc+qUAO1juuncMjbITuBIh8FZ7F56eyIanJap4JQTa4Eb86a8xO1YoXxI24JArxci7LRo1oMbTKlxJZpxBhbPBbur6timCjgbboefAvrJpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pkEXRBSiGpTFU+urxb9AYekyMPrrEPJa4/keTHcFhiY=;
 b=hRT8U4c9yqY3B0T54GhfJlePlHJ5pjbzdHEgyNsH45fN5BM9CwwDamoOYHZFcGKJKa6lzVGHiShggppsAdJojs4w/kpNi4xVXzpldNC7x62SMauYU64Sl24x9QKXH+RCOlFpvlUUDDeUi2oW8ZLfkysIvz9cmT+q2qohPTN3Sk1sS/TpqQZKZ4WC3nZuE5nA7Lu9VoW+8tPCP572lNZYBgdGYOJdsWBxEYG0rkGptOloRRHwiqFMGDnJLGrl8oI/JKyr/Qt2OtvWcXwRWx9RSM44bmAcARAW/w0CuhspLUydX44PBpmTvvxI3DGsVeJ0/KmKmKbdlLwmpFEV7pjApw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB6719.namprd11.prod.outlook.com (2603:10b6:a03:478::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.16; Wed, 18 Sep
 2024 03:59:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7962.025; Wed, 18 Sep 2024
 03:59:01 +0000
Message-ID: <8f497e8d-45cb-40b5-af0a-e32c9a585e57@intel.com>
Date: Wed, 18 Sep 2024 09:28:55 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] Add bits for link_n_exended for DISPLAY >= 14
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20240917174200.2563528-1-ankit.k.nautiyal@intel.com>
 <20240917174200.2563528-2-ankit.k.nautiyal@intel.com>
 <871q1icgwp.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <871q1icgwp.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0048.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB6719:EE_
X-MS-Office365-Filtering-Correlation-Id: d26bcf4b-e5b3-41e5-d15b-08dcd7963ad4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bUFsenhFSk9kUjFjaFVaMjlQY2J2Q1hFeGdvUXN4MmxCOUt2Yy9lTGJQUElt?=
 =?utf-8?B?RGNuNDl6a01xNm4zMFNPcDljWGRnQ1lENWZFV1BDdkNWT3J4QXlxTkhtMnh1?=
 =?utf-8?B?WktPZTlMdzA4Wjd6SDhKZmcvdWdjVVNlZ21KMnA4QU9LMzdWaHIrUGs2YXJl?=
 =?utf-8?B?TTRvYXZIUUdNS2Y3aVpjZ2JZTmZUNWxVMnpRdWRVaFYrdVZ4ZGxqVkFxaUdV?=
 =?utf-8?B?M2wvYTZzSlcrc2FVZ2plYUhja24xazljQ0FUenRXTkRaT05CUzhyWEpKSy81?=
 =?utf-8?B?MkI2cThIMjJnYURmZnFnL1doaXhzaGROb0FLeVdSVFAvODZOWVdlcHhCbVRO?=
 =?utf-8?B?R0h0MFdJOVJDSFVKZGthVHlWOHR6akIvdGZlZzgzdTRFS0J3K1Zjc2pYVnhB?=
 =?utf-8?B?ZUg1QlpPTk45dGRIcjUrMHlXaHJMUzJiVlljcUgwWmdDR3VuY3A0M1RLTTUx?=
 =?utf-8?B?ejZuK0UyckxHWlhGVDVXbEhwa0greUdwOFNQK1hacWFHblNPendXMlZ1NG5h?=
 =?utf-8?B?RjhFT1BnZlNIWHhlQmRGUWhLVm5oYkdyekg0eUtvNVJISDJhcUZTWm5pU25k?=
 =?utf-8?B?ZHdEaFJGdWFGNElrZEZzMCtzamc2SzVRRW14NUw0NWhScmNEQlhsQW9BTi8r?=
 =?utf-8?B?ZzV2WmFoQUJmbXFKRTZwMlBTdjNhKzhKTHJ1Q2FEN3pjL2RMdmpsczF0dit0?=
 =?utf-8?B?a2Z2ODRGaWZxb0tnRHVNZUxjUURSNE4yNTJ4NENObmpqZUVrVURVNG9nVmdw?=
 =?utf-8?B?b2lja0ZHejNiUTUyeUtSRUxPeEpQSjdHbzAwTm11OUZId3hRcmdGWTcrZGZn?=
 =?utf-8?B?K2h3Y1BIZ0FabnhMWVJ0ZG4xczM1TFNkNUNTYXV5NXI1TWkzc2xYZFJyRmpI?=
 =?utf-8?B?VFVKemFBNWxqK0JRcFNyaS94U2V1ak8xQ0U5WGlpSmtVVkZ2TURQNEE3RElN?=
 =?utf-8?B?UjZSRWVUL3JSY0dwT0xISXYzNGVCUDR5a1c3U0FzTXNoYTdxWjA5dTE0eFZw?=
 =?utf-8?B?UDd5SjRQaEkwZXIxL0ZTUGF5S0dSQ292Mi9DaXdkTGpYeFZySEpjalpKM242?=
 =?utf-8?B?M2hSeXlVZnZWcEUybFNmTFNiVzlOamlreWtxMnA2emNGelZPK3c1VEMzT1lw?=
 =?utf-8?B?N1ZtZ2p2U0ZHNjV3aEM3THBCZHJPZVMzZjBCRW5ieUZoUWlEM1R5NjlPMzlv?=
 =?utf-8?B?WE9SQ0VhVkVPK3hJd1FCazBhajRPeWZvNDlTbVpWYm5aN3FrZTdZbzFSWUxN?=
 =?utf-8?B?WFJYU2xWek5RQ2tZL2ZEZWNOUHZ5QUxRc0lNd0dSdVVwUVVzTEJDVWROTi9h?=
 =?utf-8?B?THdpUU5Wb3NFRmhRVGF3b1hxWW90L2podUlTbWdXakJNeGlQczZERGErMnJi?=
 =?utf-8?B?TmRMZVorcWw5YUpjUjBUZDgzU1ZOQUlneVFkdFh6dXFQWG5hLzViUDhuRmds?=
 =?utf-8?B?bU5jWWd4d3RNQnc5aVQ0MWc0TGNWVG9KZmhPQjRmOEY0ZC9xNnpaMGxyZUZT?=
 =?utf-8?B?MHBQZzNTWTBjR2VCQkNjNG1jVURjcGk2cStEZ0tvOHptMm1nQnpqSzZuNklS?=
 =?utf-8?B?a2RpTTIycjhySTlBYkxzZFVrQlBFR1o0bVM1VXdFbk1GTW9UZXkzejg5d3lN?=
 =?utf-8?B?TmN4Y0J4dHhqWk5qcEdLRG1SN0FwdUs4R1NLYzhSdzJ4a2NqbWdVMjVNSVJ6?=
 =?utf-8?B?bWdZK2FqUmZxKzU5bEZ6NE01TjZOSWFDTnd6T3YwKzBCeU9ZS29nQWFnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aFNhWFA4WmUxU1h6d3o0NmJzWVIrWWlVZTZ1bGhlMGs4UGErMTFKdUxicHdu?=
 =?utf-8?B?QjEzb1k1aStSZHcxcy9JaDdwUkcwclFVcEhIR3RNQ284RkhacjZLczUzNUhp?=
 =?utf-8?B?MzZSYTQzTWNsK3FhTkF4QmRzK0JIYTVTNTNzM3dKeGE4aHp5SlhVaExwc2JB?=
 =?utf-8?B?amVadVN2Y3hQNzM4NmFudkliNHJtQUc5NitSQkxuNnBRMFhLMWh3anZxZFAx?=
 =?utf-8?B?bS9qV1g0ZXNrYUdIbHB1RC9iaUVWMTY5a0hPWm9LR0VidTlzRnlKR2lpN1lP?=
 =?utf-8?B?aTlhaWdNeVI4RDEyVVRyUW80SzREYzFXcFVuZnVyLzZtYkFzNE9mZmVFTGpE?=
 =?utf-8?B?VTZYTEExbGs2V1huaWR6VmF3RVRUYjFvMTdSL1JEajhRTW04b2wzb21hMElL?=
 =?utf-8?B?K0ZuWmVGcDB1S2p6RDJDK3pQbkROd2s0dTNKL2dwVlF6RHp5QU9PaU5Jc3ph?=
 =?utf-8?B?bVBBQzJsYWtiRUZWUjZFZUd4OURuUnhGRk5lSXREcUVDOW5rWmVxUEVSQUh3?=
 =?utf-8?B?Mi9mVHFoaEs4S2wyd0FGNklvUkltdXNucXJqb291SDU0bmZUU2lDaGQ2cm1V?=
 =?utf-8?B?Y2Yvd3gyWk1MTDlJYTZVM1dHVXpEWkgxMkQxWmRnWUtlaXVXdDVvTlBUejc4?=
 =?utf-8?B?TTJSYjI5SngrVUp5UUhVNVF3elM0SDNDOGRRa254NFZsYjNuUDJkV2FQek8z?=
 =?utf-8?B?S1d5cGJ0LzYyOEMzOEVYV1NYTTdqc1hURFB2TDVTYm9KTXNDalBIWE1wbzRY?=
 =?utf-8?B?RGhNcXpQSGVjZ1pDT1BwQUJxWkNWSUxJa1IxbVhoSTBBaFJhNEhDcGtJa2g5?=
 =?utf-8?B?QVFPN0NhTGRYWHBxOHZnbjdNZTlrbzVVcEw2YmVRTkxtZzRRNnVDbGdXSitI?=
 =?utf-8?B?TEhkYTZjTUp5VUVsQ2FTUjN6SVVWUmV6Y3g5OWN5d1hHN3o1MzNzOHlCazZ3?=
 =?utf-8?B?KzJ5T0V4aHRkVGZTV2xCYXpTVjBKaGRxOGFrZmJZRUU0dXFYbitnL2dCWFhE?=
 =?utf-8?B?YzM4MVBvdnBnNnVZVDYvV1dnYk5ucFdxNXZQTVRtWnBRbCtxM3NjdHB5RkpM?=
 =?utf-8?B?MzNKWEdKaXpmVUh3bHhhL2RvdHp2YUdyR3lmZEViZ0lrQldVcm1jUWwvNDRi?=
 =?utf-8?B?blF3RGVlMmNYZ0JtYmhyZVpuT3I1NXVHU2RESnZUNDFmZVJFRlJIMVdVMUg4?=
 =?utf-8?B?TkZ5aW00enlyOEl4dmJ5OExBYlhiMUNkNHBWU3lXSU5mU25LYWoxYXBnU1RS?=
 =?utf-8?B?cHZHdVJLYkJvVEpQNlVRd1ZxM3A4ck1nTStheHU2S3V4QmdFbzJ2VUo1M25C?=
 =?utf-8?B?aDRCRWZoSEZiVGh6YU1ZMVFNMXZ0cmNIM3l2YTljLzdWVjg3d0N1TGV0THFo?=
 =?utf-8?B?ZEg2MVREYVV1UWtGYndFQkFjUmpTWXpZZ1lKakI0NjJYbkQyeDdyUEVCODRp?=
 =?utf-8?B?cVZ5eTBwZ1ZobFRSZUM5MDVBQ2R2OUhzaENkUTVUdGtIQ3FUKzMyNnpMd3Fv?=
 =?utf-8?B?czRZdGx5Sjc3dktmY0ovajBtcmRyRzRraERQNDgwRnpsZG95UWJTcXdNVVBs?=
 =?utf-8?B?eEU4MXJFbis4QkpidzRvSWhlck9DQjIrdG9UZlViRi9Ea3o1eldnSU1yVTF5?=
 =?utf-8?B?bHdyMkFCc3h0WWxLNmRhenpiZ3BEdG1kWGxpWURSRTlxTXRVUzlwWGoyWnJT?=
 =?utf-8?B?a0xuL2RmdGptZEdlTkdzQ2FhcVRpaXZVV1JnUC96STloVVRMVFNkTEFlU1VD?=
 =?utf-8?B?Ujh2c296cTZyV1Y4VnZlZXlyMnFSblp0MlNtbGduQVFJZUZ1ZFhQMHFEMjc4?=
 =?utf-8?B?b1lmczJaV3lnMWZaOGdCRTJiUFgzVHZEaFg2SG1oKzUzM0djZUZ2QTZ5WW40?=
 =?utf-8?B?Y2RIc0pwNjBXR3BvQ0E5cGpaS2gyRUtNSUZucitDcm1pbTlwSnRsRUxDYmhN?=
 =?utf-8?B?eUN4OGpaQ3pjSmdDSXlBYjNwRG9iWnB2ZUlDNXF1d2wvbmhCcDExalZXaVpF?=
 =?utf-8?B?YjhXN2I2Ulk1ZDJNckthcE1YbE1iK2VHK29razJ0VVBWTjl4Tm1qd1NRbjlW?=
 =?utf-8?B?RlFFb1ZhT0NtUGFoSFhhTGEwcEZSajJtaXgxZTRFZWdEUjN0Zm94aitDd3Av?=
 =?utf-8?B?UlI2RTNQcnNybUdOOEVrNjNBU0oxSit1QXdXQ2ZHQXhXY3VwTzFONXBmaTgy?=
 =?utf-8?B?c3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d26bcf4b-e5b3-41e5-d15b-08dcd7963ad4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2024 03:59:01.6017 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j4dGZkGn1aMrYmGLL9sDzlRrpgBAbiQZK8sLVv5RXjMLVwxhwT3kekxMWiHVaIr9DDL65S/pmDN1pLuZHdZT5DUhhQcMWQmTJudFvPINTfE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6719
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


On 9/17/2024 11:16 PM, Jani Nikula wrote:
> On Tue, 17 Sep 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> LINK_N register has bits 31:24 for extended link N value used for
>> HDMI2.1 and for an alternate mode of operation of DP TG DDA
>> (Bspec:50488).
>>
>> Add support for these extra bits.
>>
>> v2: Drop extra link_n_ext member. (Jani)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c  | 21 ++++++++++++++-----
>>   drivers/gpu/drm/i915/display/intel_display.h  |  2 +-
>>   .../gpu/drm/i915/display/intel_pch_display.c  |  4 ++--
>>   drivers/gpu/drm/i915/i915_reg.h               |  2 ++
>>   4 files changed, 21 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 426074afef43..4b1bb1f43adb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -2633,9 +2633,12 @@ void intel_zero_m_n(struct intel_link_m_n *m_n)
>>   
>>   void intel_set_m_n(struct drm_i915_private *i915,
>>   		   const struct intel_link_m_n *m_n,
>> +		   u8 link_n_ext,
>>   		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
>>   		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
>>   {
>> +	u8 link_n = m_n->link_n;
> You also don't need the parameter. You don't need to pass it
> around. Please read my previous review.

Thank you for your feedback. I was trying to avoid mixing link_n with 
link_n_ext bits, which as I understand gets filled with different kinds 
of things.

If we want to have link_n along with ext bits, then perhaps we need to 
mask these whenever we want to retrieve link_n.

So I will:

->mask the extended bits in this patch, as suggested.

->have link_n filled with extended bits during compute_config if 
required, in intel_link_compute_m_n()

->change the places where m_n->link_n is used (e.g in 
intel_dotclock_calculate() ) to mask the extended bits, before use.

Please let me know if this approach seems alright or  if there is 
another way you would prefer.

Thanks & Regards,

Ankit


>
> BR,
> Jani.
>
>> +
>>   	intel_de_write(i915, data_m_reg, TU_SIZE(m_n->tu) | m_n->data_m);
>>   	intel_de_write(i915, data_n_reg, m_n->data_n);
>>   	intel_de_write(i915, link_m_reg, m_n->link_m);
>> @@ -2643,7 +2646,11 @@ void intel_set_m_n(struct drm_i915_private *i915,
>>   	 * On BDW+ writing LINK_N arms the double buffered update
>>   	 * of all the M/N registers, so it must be written last.
>>   	 */
>> -	intel_de_write(i915, link_n_reg, m_n->link_n);
>> +
>> +	if (DISPLAY_VER(i915) >= 14 && link_n_ext)
>> +		link_n |= PIPE_LINK_N1_EXTENDED(link_n_ext);
>> +
>> +	intel_de_write(i915, link_n_reg, link_n);
>>   }
>>   
>>   bool intel_cpu_transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
>> @@ -2663,13 +2670,13 @@ void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
>>   	enum pipe pipe = crtc->pipe;
>>   
>>   	if (DISPLAY_VER(dev_priv) >= 5)
>> -		intel_set_m_n(dev_priv, m_n,
>> +		intel_set_m_n(dev_priv, m_n, 0,
>>   			      PIPE_DATA_M1(dev_priv, transcoder),
>>   			      PIPE_DATA_N1(dev_priv, transcoder),
>>   			      PIPE_LINK_M1(dev_priv, transcoder),
>>   			      PIPE_LINK_N1(dev_priv, transcoder));
>>   	else
>> -		intel_set_m_n(dev_priv, m_n,
>> +		intel_set_m_n(dev_priv, m_n, 0,
>>   			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
>>   			      PIPE_LINK_M_G4X(pipe), PIPE_LINK_N_G4X(pipe));
>>   }
>> @@ -2683,7 +2690,7 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
>>   	if (!intel_cpu_transcoder_has_m2_n2(dev_priv, transcoder))
>>   		return;
>>   
>> -	intel_set_m_n(dev_priv, m_n,
>> +	intel_set_m_n(dev_priv, m_n, 0,
>>   		      PIPE_DATA_M2(dev_priv, transcoder),
>>   		      PIPE_DATA_N2(dev_priv, transcoder),
>>   		      PIPE_LINK_M2(dev_priv, transcoder),
>> @@ -3351,7 +3358,11 @@ void intel_get_m_n(struct drm_i915_private *i915,
>>   		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
>>   {
>>   	m_n->link_m = intel_de_read(i915, link_m_reg) & DATA_LINK_M_N_MASK;
>> -	m_n->link_n = intel_de_read(i915, link_n_reg) & DATA_LINK_M_N_MASK;
>> +	m_n->link_n = intel_de_read(i915, link_n_reg);
>> +
>> +	if (DISPLAY_VER(i915) < 14)
>> +		m_n->link_n &= ~PIPE_LINK_N1_EXTENDED_MASK;
>> +
>>   	m_n->data_m = intel_de_read(i915, data_m_reg) & DATA_LINK_M_N_MASK;
>>   	m_n->data_n = intel_de_read(i915, data_n_reg) & DATA_LINK_M_N_MASK;
>>   	m_n->tu = REG_FIELD_GET(TU_SIZE_MASK, intel_de_read(i915, data_m_reg)) + 1;
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
>> index 4bdb48084cab..3b12d7f7c6c3 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>> @@ -473,7 +473,7 @@ bool intel_fuzzy_clock_check(int clock1, int clock2);
>>   
>>   void intel_zero_m_n(struct intel_link_m_n *m_n);
>>   void intel_set_m_n(struct drm_i915_private *i915,
>> -		   const struct intel_link_m_n *m_n,
>> +		   const struct intel_link_m_n *m_n, u8 link_n_ext,
>>   		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
>>   		   i915_reg_t link_m_reg, i915_reg_t link_n_reg);
>>   void intel_get_m_n(struct drm_i915_private *i915,
>> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
>> index f13ab680c2cf..74bc4de6d123 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
>> @@ -178,7 +178,7 @@ static void intel_pch_transcoder_set_m1_n1(struct intel_crtc *crtc,
>>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>>   	enum pipe pipe = crtc->pipe;
>>   
>> -	intel_set_m_n(dev_priv, m_n,
>> +	intel_set_m_n(dev_priv, m_n, 0,
>>   		      PCH_TRANS_DATA_M1(pipe), PCH_TRANS_DATA_N1(pipe),
>>   		      PCH_TRANS_LINK_M1(pipe), PCH_TRANS_LINK_N1(pipe));
>>   }
>> @@ -189,7 +189,7 @@ static void intel_pch_transcoder_set_m2_n2(struct intel_crtc *crtc,
>>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>>   	enum pipe pipe = crtc->pipe;
>>   
>> -	intel_set_m_n(dev_priv, m_n,
>> +	intel_set_m_n(dev_priv, m_n, 0,
>>   		      PCH_TRANS_DATA_M2(pipe), PCH_TRANS_DATA_N2(pipe),
>>   		      PCH_TRANS_LINK_M2(pipe), PCH_TRANS_LINK_N2(pipe));
>>   }
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>> index 7396fc630e29..a770b5dbf5e4 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -2158,6 +2158,8 @@
>>   
>>   #define _PIPEA_LINK_N1		0x60044
>>   #define _PIPEB_LINK_N1		0x61044
>> +#define  PIPE_LINK_N1_EXTENDED_MASK	REG_GENMASK(31, 24)
>> +#define  PIPE_LINK_N1_EXTENDED(val)	REG_FIELD_PREP(PIPE_LINK_N1_EXTENDED_MASK, (val))
>>   #define PIPE_LINK_N1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N1)
>>   
>>   #define _PIPEA_LINK_M2		0x60048
