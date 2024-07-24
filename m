Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C33B493ABE6
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jul 2024 06:21:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEB7810E04C;
	Wed, 24 Jul 2024 04:21:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SIHyINkX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D9B710E060
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jul 2024 04:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721794870; x=1753330870;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=+k/xR7kHQ/ta4wOIUp3H67dZFfEgLxqmkKRVizbRIUM=;
 b=SIHyINkXMkbZLWA0XmS4Be3L1yU54kxEeOT6wxUgscWmJegFFTlUop7p
 WiYt4LKja10XIm1fh579xPlCLbjxIJkyT/vPTwYjNLlNCriImzZJRgBSN
 ngY49rXR9CTg2dn1irVTTpnypKSFeRE1wMjkP9+8Hx0bCz5DUZzg8D8kX
 eqNRdlEIlHBpMnJmsHo8/oORrzW6JXIHeX83ZfO+e2taswWEeK7w4rHKg
 wbH5FKX+BzbSaRbH6x83xfXtxA5buH5b1rhnfG4Fcf/ECK1GhvbYtpyp9
 hyZuv/VW0k7kc6Kc/zyht+l7bOESApksbJ0HOlLPCrlZIIqk4sfl8bzpI w==;
X-CSE-ConnectionGUID: q7AHqbCGRTmf+apqul9l9Q==
X-CSE-MsgGUID: DH9Mr0KBTIuDDs1Mq/7sOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11142"; a="23210296"
X-IronPort-AV: E=Sophos;i="6.09,232,1716274800"; d="scan'208";a="23210296"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 21:21:07 -0700
X-CSE-ConnectionGUID: gA0V8fZPRcCJhUbujDWwlQ==
X-CSE-MsgGUID: lIRtl+u+Thq5TWJb8delQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,232,1716274800"; d="scan'208";a="57570302"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 21:21:07 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 21:21:06 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 21:21:06 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 21:21:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Eiuo6lsbMNO6seMWlmOpgDUucIuQsjmRbzAFZqoCGGr3Xi12t79Nuw4/wxx2JeglMB6CBkTvAl5zrWUll+lCcxai7to7JY7q1rZLlL7f1BssEbhTz+A4zbrFFCrrDc29jwWAYmb1a5Z3eTHzYWjTD2OocHgnqtfjGYx9Z7kCC3B9N42csj1vZpafXppznD+S6e38cRMzkD/insvLQyKLYQaRoP6X5rSwxyCpHt3fmgtbGqgb4iGbtS8+DZFG5O4liEdrKc1kPfr6nvm0JQqhMtw5NYeD9N9cSHn+gR2yAnzdMdq8h6hcd1jyPZP8bsiiqCdC5IGbaJrQZQUQC+K/eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a8No8qXXu31UQ1lgPU1T1Eu7oHKw1PK+Iv6IKGCwzhA=;
 b=UQ4Epmp/U+Eg1rxMeVVp9DnaOrEpE7IL+6bWCYUKCPsdxmw1WKutvBTkw/RY7nAsFSDzDAA5Mwv87thMBXc7OvTqI0arMlUPHM3Rin9vY6f3KPnoxSd/IRMmh89C0eAdEj0O1qMdABef6rUuc4gunaCG+IyPqlhTLN3bazkISLEyAD2yiKU0lDXu93fX/PKl6Bm6uwjGQOcje/TjuHKkmcD6SDwiueSgNidU+Rt0p6EUuwdr9+cWFQK6rWG6nkG6L79cgsY1HroKXHUv6EYU6EL2AwDZ6DltBl+tpslVOkB2LPb5s6yewFBaLZ1K8KVKP+ayYQJS4mw9EH+ZNHQhTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB4813.namprd11.prod.outlook.com (2603:10b6:a03:2df::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.29; Wed, 24 Jul
 2024 04:21:02 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.7784.017; Wed, 24 Jul 2024
 04:21:02 +0000
Message-ID: <72a0430f-afea-4798-b5b9-58787169f7c5@intel.com>
Date: Wed, 24 Jul 2024 09:50:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Call panel_fitting function from
 pipe_config
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240705094308.73498-1-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240705094308.73498-1-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0090.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB4813:EE_
X-MS-Office365-Filtering-Correlation-Id: 904e9cd3-6f5a-4c1d-3ffa-08dcab98072c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dFRLWWtsRmw5Y2NjQ3FHbHJlOGhkb011U3RRYW16cjF3akJ5SzZhSzBWNzVk?=
 =?utf-8?B?ZXFWWTBvekJwQTEzQ0FPNEJWeFYydjRCWG02N3JQYm4xWGl4M0FPRWQ3Um9Z?=
 =?utf-8?B?c1lvR2tDdmdVV2pLUGZabGpjU1BBNXkyejd5SGR1c3V6ak5OVE5kWXpFQlBU?=
 =?utf-8?B?THBGSG4wbjBiQjJCMysrV0tEY1RQSmdXcHVOT2xEc2FId2t6dGxJNXh5UnlS?=
 =?utf-8?B?WVZiZkxZTzRXTnl6K2taUlZ0ZlV3RytXWEU1VGpyR1lPaFR2VWF0TG1Ha1F0?=
 =?utf-8?B?MXBQOU1lcGxuejZRL24vRnowTG1rSldHMUUwTlJYdnNDRGpDNWlHbFJPNVZN?=
 =?utf-8?B?UitHRUoycUdPSjJ2TmNTdlAvVk1LR0V1OFZNVXQ0UlZxTGxKVk1kNkRCSEhR?=
 =?utf-8?B?Qm5SNTdmY2Y1MnBLOWJMUnBJeFZFZWxMZDVnempKUjB4SnlLKzRXaTlSSUFP?=
 =?utf-8?B?V0dnWkhJcGU4VlhKYTZ3c2FQbjU4RWg3ZXcxQk9rRjBhd1FwTVpjT2VJdzBE?=
 =?utf-8?B?RnE3aVRCTGUxSGkraDcyQ2JNd01FdjhRWnVibVNhdlo4TDFJeXRoUmRNZkRk?=
 =?utf-8?B?T0NyU0V1UmZCempqc29tSVFBNkdPVFdBSXRmVTJYRUFkMjVBay8wUytQRlBy?=
 =?utf-8?B?VEVRVkhRb2tyekgwakJVVDlrYzNTNVlia3J4cHZoL1o3b1d1RUNpSHVBQ1NV?=
 =?utf-8?B?Z21vMThDOS90TkMvN1dPdUFjZE42QmNMZ2RoZURHbzdHbktYWHdla25DUG14?=
 =?utf-8?B?Mkc1V3FjYzcxWEYvVTdHc2s0Q3lnb3lsS3cwZjEwZjVxMHlRT2w5MmJSanNK?=
 =?utf-8?B?dHpvSWJ0V1Rpb2NNS2JTa3hXU0FRQklkK0NuNVo2RXAyc2RyMnBScWh5Y2h2?=
 =?utf-8?B?THlVU0l3d0J5YnBJNDVXN2JJY3VJVGdheFNudjllb1lpdk02cmozWGhtTzNz?=
 =?utf-8?B?V3FhVUYybytaQ3lJQVBPZHJ2V05qYlh1VEJic0pSdktDUGFiekJMMmVuSjFq?=
 =?utf-8?B?Y2YvTFhSSFd0L2lDVjd1cWFvc2EyL2hXRStlcDZVdkRHQ1VqcHJKeXhYZE9y?=
 =?utf-8?B?WURYVkJZSU5DOTIyRWhyUThLbWNER3V4dVZwQmFqSEZIVjdLU1J3QkZHQXBp?=
 =?utf-8?B?VGVRSlZJUElYd3B4WnhHbnBEbkNoYVQzVWRvT1lWWEpybzNuOE9ZdHJGY0Zo?=
 =?utf-8?B?ZWhQWlRPOXp1WEpsbFhZZjB4RkJXVmZtWWN0bUVFdTdFRzRsdEN5WU5ubm1Z?=
 =?utf-8?B?bzRBZU9DaWwrZ3Y4YjVOL1pVSUFBVTZkL0orYWtDeVA5azJqOExBWjZ2Unov?=
 =?utf-8?B?NWJxYkVqcGE2V0dCRVRqL2NZQUFuQ0xFNmtOU3FUTmNQc0xPQnRQSms5WmFn?=
 =?utf-8?B?YXJGUDBpTWZLQnJENFBPSmVlajBMVVU1N3N0SkUxVWxZdmVmaWk4bi9BV2Ix?=
 =?utf-8?B?VDZMVnVha2pYUElTc2FYc3NuaHZNSGQ0V2FWWDJ3bjF2dDVQamhPdHFscExE?=
 =?utf-8?B?U01kYy9iUFA1VTlVaURQMWN1bjJ4aVVnUHNVTHFacHZzYXZ1OVphMFMvUU9I?=
 =?utf-8?B?QUZWWXpLM1Zwcld0VG1GUy9tN3R5ZUwvRFpWQ0NkZmRSbHh4blBjdit4M3lZ?=
 =?utf-8?B?MUlEdnR3WjJYdG95TVhjY2VlRC9DWVQ4K3BYTjZDeHRlNktMcGh3Y0pIV3Bi?=
 =?utf-8?B?TVhEZHUyQ0h6VHVGZmVESisvYkhuRnFVSjJBK01RY25rcW84NmNMZm9KOFNY?=
 =?utf-8?B?QnZ6ZlQ0QTBHdy81d1dmZGlLM0x3SzVqZktHV0JGMEI4RmFMUnFpZHRLYUp6?=
 =?utf-8?B?NGRCSHl6MEMwRTBDbnc4QT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a1I5ZjArSzBhdGx1RnRpTzZnSU9yQXBubnZ1WE5NK3JEZXZjTXBVZmhsek1W?=
 =?utf-8?B?L2hiNVRhR1JobVk0TXZBUWVteWU5a2hBcjR1MmpCQ0srWExMTWxzSnlYbGtW?=
 =?utf-8?B?azBjMXdSc2tyTjNCbm9RNk53b3RMQ3ppVGMzWmhJN1lPejlKSmUxZkhyRDI0?=
 =?utf-8?B?bUx4eFhSVDNTMVpmSlprNlUvZ3hYMTlOc1RoZFE1eTdwak55MHZNbmFld243?=
 =?utf-8?B?QzQrZ1VZS2tQRzVhUVpQdnFpNWo1N0hHZEV5Ujd1cHk1NFlPWkhpK2xFRlM1?=
 =?utf-8?B?UFc3L2NYQURXNENMQUtuQlRoRnpmNzFzQnluR0gxZG9xQTlMRHBielVUZWV3?=
 =?utf-8?B?NzZFSU1OWldjWXNDTXlZVmp0SGkvWisxSHJqWE5aMmdMWVV5MjFEcTBva0I0?=
 =?utf-8?B?Nlo5YjJRUDh1UU5kU0hjVit4U0V4R0dhSmlNRzJEaWdxUllsOS9DWjkvL2Y4?=
 =?utf-8?B?Zmgwd3F4bG0wTFMyRDMwYVhsTkl2enNLOFRFQkVtbFRPUmVyeDljeFdpWlJ6?=
 =?utf-8?B?aHRsSWlWRTRhanRBODl4aVBnUDZPenR4U0lYMUxtR2FhNWNGVDNMUW43Mzhi?=
 =?utf-8?B?Z084Sys0SndDblFoZDBzc1B3U0RPR0JBWTRXeTMrZi83RlM3Y1NnV2dOWEgr?=
 =?utf-8?B?U2R0dTMxYzJyam4wd0N5R1F3TmtFdnZWamdwaEtaTHJiaWZuellMV2RWODhy?=
 =?utf-8?B?cjlEYTBnSm1oSWRDcE5QL3I3TzU1L0dISVo2RGlETjlqVkZDUDVkd002RXp1?=
 =?utf-8?B?SlROdkVOdTExOUVKUFl4L3lvVmFNeDQwcXlCdzNWMVo2TmhzLzV5Y1UrVFZv?=
 =?utf-8?B?WFN2cXYzdkZjMnRwUUFSYXRpaWlraEdJRkZqcW9zT1VKQkpBQXM4b2IzQy9I?=
 =?utf-8?B?K2hJczFQb3ZmUnE5Q3IvNHhPcmhZUFIxd3pDVVRjU0ptVEwzQ2U2ZTFtb2ps?=
 =?utf-8?B?eEgzcStBdExUbm9yWTNlTk1ib3dsSFIvbjg5c2VLdEd4ajJRallISjlTTkFD?=
 =?utf-8?B?SUUvTUlDTUtkWTFBK3oybkszaE4rNnVYTi8zcklucGFldjFUdHFmSVozdE9w?=
 =?utf-8?B?M2FQSHpuOHh6bDVZZHVFdk5rVWV5ZVdSbFA3K0dYK1dvM0tlNmhjVi96UHBs?=
 =?utf-8?B?elZrSDFHc01KT0U4c0x6SlJkdC9kWWxaT3Frd1RVdTFVTWVxNDdPSUtKVy9Z?=
 =?utf-8?B?OEdTVWpNa3MxVWFkSGJNY3NTYVZQcVpYREc3LzgwREkralAyejBaYXpjNksr?=
 =?utf-8?B?WU5YUWROVzF3T2VDQ2dmbjBTdkExbCsxM3lxcXB5QXdPcGN4NWtYdHBOT1BX?=
 =?utf-8?B?VkE1YzBxdERaUkZPOWR2ZExGQVBRU1FJVUFNcjNHOU9nZ1ZZQkZ6S2UvOFg3?=
 =?utf-8?B?WFlQWHkzc3J2aGJSVklGWVRoeVFZTHl5elhYTXpnRS9LbTFNQWdZeVhFV2Fa?=
 =?utf-8?B?RnJSemdwa2I5SS9JM0ZoM0FQei9yS1c5Z2lRMzJXU0RwR25UZVpad3NHTTNa?=
 =?utf-8?B?TDlpVTVac3NKWXhFM3JzRFlxZmE1eVV6RFNvSi9abE9jekcvMkUxUEVTYlVV?=
 =?utf-8?B?NjRmdmRzbldMUzBPa1dsTmNFRVQwTzRiR0YvWVNXRkI1Yk43aGo2YktFVUo4?=
 =?utf-8?B?bUhSM2ttRWlneWFKYzBNZmlOTmpnYndmbFJoNDYxdGNSd1pERGhnZHBqN2dV?=
 =?utf-8?B?c1R2bk9XK3ZvZldpSXB5ZnA3K3ZyYzh5UVVuVHZpdDBhUE1OTzU3ekFMRFZ2?=
 =?utf-8?B?VTZWd3p4Uko4YityWHlVTGJRNmE2aENDMVNxajM4NzNwYk9QR3h6YU1BZkJl?=
 =?utf-8?B?Q29OVDIvMWw4bkcwTEpOd2xqOXl2UTdyZkwwejVUSHBBSzk2SWoxdkFWVmVn?=
 =?utf-8?B?YUNubE5uY1I3cHUzV0NEZzJoYUxhOG5WcEZJQlFLUE5lV3FHS2diSVZKYVhP?=
 =?utf-8?B?ZXVlZ2VxTUJyS3dNVDVLc2RrWDF1VnhIYkNRSzAzelY3RWNsWmU4YmNSbEJz?=
 =?utf-8?B?TEVoMk82azVxbGRNaVlYVXlSci9pTHRPblVJeXpuNkpuTFZsc2pKZDNMRmY1?=
 =?utf-8?B?U0VpL1FYc1pHNys4a1A0TzBnZHRQNlhzUkViTnRZRE9Tbk5IeXhxRGV5OUpN?=
 =?utf-8?B?TS9hdEZpbWc3UTlmOWQ2WW1KaEE5N0F3UUFNYVMyOUw4MGQ4OHpSOGlwVVds?=
 =?utf-8?B?M3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 904e9cd3-6f5a-4c1d-3ffa-08dcab98072c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2024 04:21:02.6717 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F2FnYHRo67FneBevxPLjznX5480VKN69ngDvUvpLM0rUdp9IZ6oAhyCSaPYrWKsWUuLpGNpCr1I5CEaQXUuMot6rzgGK33DdalCc/8y62KE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4813
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


On 7/5/2024 3:13 PM, Nemesa Garg wrote:
> In panel fitter/pipe scaler scenario the pch_pfit configuration
> currently takes place before we account for bigjoiner.
> So once the calculation for bigjoiner is done, proper values
> of width and height can be used for panel fitting.

I think this seems to be incomplete.


>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c  | 11 +++++
>   .../drm/i915/display/intel_display_types.h    |  1 +
>   drivers/gpu/drm/i915/display/intel_dp.c       |  6 +--
>   drivers/gpu/drm/i915/display/intel_panel.c    | 42 ++++++++++++++-----
>   4 files changed, 45 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index c2c388212e2e..182ffd17a365 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4774,6 +4774,17 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
>   		    crtc->base.base.id, crtc->base.name,
>   		    base_bpp, crtc_state->pipe_bpp, crtc_state->dither);
>   
> +	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
> +		if (connector_state->crtc != &crtc->base)
> +			continue;
> +
> +		if (crtc_state->pch_pfit.is_pch_required) {
> +			ret = intel_panel_fitting(crtc_state, connector_state);
> +			if (ret)
> +				return ret;
> +		}
> +	}
> +
>   	return 0;
>   }
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 8713835e2307..067b123408bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1251,6 +1251,7 @@ struct intel_crtc_state {
>   		struct drm_rect dst;
>   		bool enabled;
>   		bool force_thru;
> +		bool is_pch_required;

I think is_required is sufficient here.


>   	} pch_pfit;
>   
>   	/* FDI configuration, only valid if has_pch_encoder is set. */
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3903f6ead6e6..d424a328cfca 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2952,10 +2952,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>   		return ret;
>   
>   	if ((intel_dp_is_edp(intel_dp) && fixed_mode) ||
> -	    pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
> -		ret = intel_panel_fitting(pipe_config, conn_state);
> -		if (ret)
> -			return ret;
> +	     pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
> +		pipe_config->pch_pfit.is_pch_required = true;
>   	}
>   
>   	pipe_config->limited_color_range =
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> index 71454ddef20f..69b4c09c634b 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -403,8 +403,11 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>   	case DRM_MODE_SCALE_CENTER:
>   		width = pipe_src_w;
>   		height = pipe_src_h;
> -		x = (adjusted_mode->crtc_hdisplay - width + 1)/2;
> -		y = (adjusted_mode->crtc_vdisplay - height + 1)/2;
> +		if (crtc_state->joiner_pipes)
> +			x = (adjusted_mode->crtc_hdisplay / 2 - width + 1) / 2;

I think its better to take a variable crtc_hdisplay and set it as per 
joiner_pipes and use that below.

I one patch just use crtc_hdisplay and crtc_vdisplay as variables.

In next patch make crtc_hdisplay half as per joiner pipes. With 
ultrajoiner then it will be easier to change this.


Regards,

Ankit

> +		else
> +			x = (adjusted_mode->crtc_hdisplay - width + 1) / 2;
> +		y = (adjusted_mode->crtc_vdisplay - height + 1) / 2;
>   		break;
>   
>   	case DRM_MODE_SCALE_ASPECT:
> @@ -412,11 +415,18 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>   		{
>   			u32 scaled_width = adjusted_mode->crtc_hdisplay * pipe_src_h;
>   			u32 scaled_height = pipe_src_w * adjusted_mode->crtc_vdisplay;
> +			int adjusted_crtc_hdisplay = adjusted_mode->crtc_hdisplay;
> +
> +			if (crtc_state->joiner_pipes) {
> +				scaled_width = adjusted_mode->crtc_hdisplay / 2 * pipe_src_h;
> +				adjusted_crtc_hdisplay = adjusted_mode->crtc_hdisplay / 2;
> +			}
> +
>   			if (scaled_width > scaled_height) { /* pillar */
>   				width = scaled_height / pipe_src_h;
>   				if (width & 1)
>   					width++;
> -				x = (adjusted_mode->crtc_hdisplay - width + 1) / 2;
> +				x = (adjusted_crtc_hdisplay - width + 1) / 2;
>   				y = 0;
>   				height = adjusted_mode->crtc_vdisplay;
>   			} else if (scaled_width < scaled_height) { /* letter */
> @@ -425,25 +435,35 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>   				    height++;
>   				y = (adjusted_mode->crtc_vdisplay - height + 1) / 2;
>   				x = 0;
> -				width = adjusted_mode->crtc_hdisplay;
> +				width = adjusted_crtc_hdisplay;
>   			} else {
>   				x = y = 0;
> -				width = adjusted_mode->crtc_hdisplay;
> +				width = adjusted_crtc_hdisplay;
>   				height = adjusted_mode->crtc_vdisplay;
>   			}
>   		}
>   		break;
>   
>   	case DRM_MODE_SCALE_NONE:
> -		WARN_ON(adjusted_mode->crtc_hdisplay != pipe_src_w);
> -		WARN_ON(adjusted_mode->crtc_vdisplay != pipe_src_h);
> +		if (crtc_state->joiner_pipes) {
> +			WARN_ON(adjusted_mode->crtc_hdisplay / 2 != pipe_src_w);
> +			WARN_ON(adjusted_mode->crtc_vdisplay != pipe_src_h);
> +		} else {
> +			WARN_ON(adjusted_mode->crtc_hdisplay != pipe_src_w);
> +			WARN_ON(adjusted_mode->crtc_vdisplay != pipe_src_h);
> +		}
>   		fallthrough;
>   	case DRM_MODE_SCALE_FULLSCREEN:
> -		x = y = 0;
> -		width = adjusted_mode->crtc_hdisplay;
> -		height = adjusted_mode->crtc_vdisplay;
> +		if (crtc_state->joiner_pipes) {
> +			x = y = 0;
> +			width = adjusted_mode->crtc_hdisplay / 2;
> +			height = adjusted_mode->crtc_vdisplay;
> +		} else {
> +			x = y = 0;
> +			width = adjusted_mode->crtc_hdisplay;
> +			height = adjusted_mode->crtc_vdisplay;
> +		}
>   		break;
> -
>   	default:
>   		MISSING_CASE(conn_state->scaling_mode);
>   		return -EINVAL;
