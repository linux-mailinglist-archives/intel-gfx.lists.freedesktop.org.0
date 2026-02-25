Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id hj6kDaWPnmnTWAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 06:59:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E9F192332
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 06:59:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 812EB10E69C;
	Wed, 25 Feb 2026 05:58:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JQSU9MEj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10C5510E198;
 Wed, 25 Feb 2026 05:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771999137; x=1803535137;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IgToEDC5KsaRlRsPT+C3kuIh0zK4bdK1E4jLIaMKh0M=;
 b=JQSU9MEjkjEelsQ729DNQE3GvMRm1WhpqAQ4GQUxnZVuXUVQ92MAxSK9
 3ikmqngHbUeuyBNW0rVG2ImZrqPOMyvytCVF/udzdBsYCxCdDDIg4kPTm
 UlV492ZqL+3p7VScEpcqt1vZhtsE9weAOlochU/v23NGcnyHFxmieyNrr
 amA8oRYIdk/JOAfRDfRqtPbbhyT0u4ypvcSEQa38dijUy6/0UpHn56Ihr
 Rb3PNQKHbCKlKGE+4UF3q0ZA5HNiqZnPlb6YssehFUs1JnsY5JLY8E4xw
 sqEK55Zs2q8DIDNqhjsvOfbI36wF1YdJaK/TId5Sc6KuZI7Sz0zzJmW4m w==;
X-CSE-ConnectionGUID: 6hmR997mQDioasVaUTBgrg==
X-CSE-MsgGUID: rAdzXF6JS6WyiMBs+Z7eLA==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="84394048"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="84394048"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 21:58:51 -0800
X-CSE-ConnectionGUID: U1L8XnmySu+Qn20Jer6VmA==
X-CSE-MsgGUID: I4wqP5XhTmKBhzi0VQqssQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="243960183"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 21:58:51 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 21:58:51 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 21:58:51 -0800
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.25)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 21:58:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yr64pboJrgUNvrM7BUr/gcMLfFXvvk7ggRXDfAJ6f4dMGCiFmmNdoOtkpIgE4d2FHcYNVKTDSXafuvJ622Bn/IBiNpO7pGXRpGI4SR9Wspe68DdaAVSrt4Sk+t4La1IsrAKrjYJdks7yK/98CkNOVN+aWwqMEHJOjTRBIFKccyppXeYYAJ5KuNxNLG69+eveINnULEZ79tXWr/4x0xfQY3F0L/jXADyXt+8N4dpuFZuHeKyd9+j7AQlqCqWEDhBb4s4jnquz/HVV0l9om+Nr7CCIL8/yz1TWNK/1sEjhq6bYdPbBET/AvjcYgvor7/M0FUkUCpHdHC5wGF1VQerRdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sNQi2ZW4Dqg83qTacfXdqvzdXWE0GzPrEcQRuOVPCQ8=;
 b=m9KW3/beav4xqEwevOoc505IIcg+yNOBc5IuuZmG0ggqc+ZB1ONmP4jP6N3oVmsxkH+5ZMET2q8nx6+IfseA7OgjB2mB8Rp/nup0vgWFqMjoQJjQX7HaKf94RYtZCmb4SO0Z/q1ve9R+/FFbXcnKcBG3KfQx1WYZOEa05syBTYgaJu7XMWoJwZS7bY6C6K0CjlzMIYIttTZnx2fJOchMX6duvY6SZgtzGjaJamz0id76oQJmQFBmgt2/pspbg1CmDNWfA8QieRdS8dEc6/qabSHnGUBfnItNWaSi313iYWPCSa+khw8qCTyn6jK2WZZkl1R3FrVtjU5hjQA9uwgfCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CY5PR11MB6464.namprd11.prod.outlook.com (2603:10b6:930:30::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Wed, 25 Feb
 2026 05:58:43 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 05:58:42 +0000
Message-ID: <f0ef67e6-2a07-4fc4-a46f-75105108c333@intel.com>
Date: Wed, 25 Feb 2026 11:28:35 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCHv2] drm/i915/dp: On DPCD init/caps wake the DPRx
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <suraj.kandpal@intel.com>, <jani.nikula@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20260219094326.34922-1-arun.r.murthy@intel.com>
 <20260224074831.374990-1-arun.r.murthy@intel.com>
 <aZ26pwv6M7gG4W9D@ideak-desk.lan>
 <2b94fd1d-ce06-4c65-a615-7b9b2aeb3c57@intel.com>
Content-Language: en-US
In-Reply-To: <2b94fd1d-ce06-4c65-a615-7b9b2aeb3c57@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0017.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:179::9) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|CY5PR11MB6464:EE_
X-MS-Office365-Filtering-Correlation-Id: 3120e661-8062-4a10-83bc-08de7432edfb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TXNhLzdra2hOL2g5dlZNNUFuZXdHOUUzbjJoTzc1RStSdFVLNDVzRDUwMkJT?=
 =?utf-8?B?VW5IUC9XZjFJcm15bHdJOXJNbXR2djZwdldXaTljOG50Y1I0L0xqSHROcjFw?=
 =?utf-8?B?dWgzenFMZlp6ZGFQVDRsOXlzd1ZqcTN2SHROYVJHR05LOURzdEU4blZLQ3lH?=
 =?utf-8?B?UWVXUTJmN3A3Ym1wb05ncEt5SU82TGNaaFRlRmdoaVZWVmhYbnZHWEozVzNp?=
 =?utf-8?B?cXF4L253WEVMQjJMdWNXekN6bTBFcENkc2pJK0VTdlcxV1NzdzloUnBsWVNC?=
 =?utf-8?B?eXVHbm9ZZXFtYVpCbk5DZTVxemtJdHlvcHJXY3ZJaFhaRTkvL3I3L0VtZjBW?=
 =?utf-8?B?Mjc2R0U3b1dWZVhGZTNFYXdSWDlQdi8xVUE4bVdvcE9LeW9rZGE2b3JvM3B6?=
 =?utf-8?B?MkRXQmVERkxHYi9xblp5V1ZKRzRKaTBPdHAyU09MWHVOVVgyT1UvcVUzYktP?=
 =?utf-8?B?WG1FNlNJeWxxNzlzQTRmK0xaYWl6SVlQUlY4V3MxRmFtU1lZV3VCK1IzcFlW?=
 =?utf-8?B?UG9zNWxhdlpEamJ3RXlvQ1ZHdmtXOEcyVWp1QmZUS0tQSDhvZjF4Tkl5bVFz?=
 =?utf-8?B?UmZPWXNSYlFCbkN2Mm5JTXIxcTUyWFd5aTllc1UvMytBNXRVRCs3aDVZenNS?=
 =?utf-8?B?cGRNekFnQlhIN0tLTWlnTENBQ0hzdEFHNjVIRTdOT3JsckFQZTcvd21HelRi?=
 =?utf-8?B?YXlWUTYvZFUzc09McWxZa1RQL3BBMFpBMnVMUnpXcDhXaXk0dGQxVXJYdHY4?=
 =?utf-8?B?KzlWUjBmUUovKytaN0tHUWJDM2kwa2JsQ0ZvcmpITGZWa1dLWnVnVEZYRGlH?=
 =?utf-8?B?bjk4RlQyQVl2RVBnWkxxbFVlQVd1TzR4N3FSNFVRMHk0eVhGTXVmZjFMdk9V?=
 =?utf-8?B?Q2RYMjFsRm1MT1d3cFdtQW9UcnJqTnZsMkRVaHcrWWF0T3pIZTdCeWpLSWxU?=
 =?utf-8?B?bnoxZFNMa3B0SVBoeEVIdWxtZXVDdmxESit3Z0U4THVVY2E0YThJVVBwaHFG?=
 =?utf-8?B?MmN3VmZyaVJVcnRQenN4akhxZDNwOGhXaE5JMzN2aitHZGVvV01UTnhTYWVG?=
 =?utf-8?B?ZHgzMjNJUGtMSis0TDQ4RlhCS1p1bWtNVzJBMHBFVVFIUERRaENtb0dVQ25D?=
 =?utf-8?B?N3hFY2VuY0NlcldQZms4YWtDYmFNR1ZzTm5yY2tTK0lLdUZETE5GWXY2Q0Ri?=
 =?utf-8?B?TGJRWWNZNkN3VUd2a0pmYWcwNHEyZm41NmJJUldjRnhwL0tCRFpFZTNRSHVu?=
 =?utf-8?B?dm81UVc4L1lKZFh3MmFTWW9ybXpJQmtUZ1lyOVFueHE0em0zN1hTNHpFaVMx?=
 =?utf-8?B?QlQ0NmR6WnlQTVJmWlVrMUljalpkZjRON1ppcSt2WGJYdk5PUW5xT3BocG0w?=
 =?utf-8?B?ZGdSdFI4WCthMDZRZkRwWUFsbmsxMVhNYXFwbVhQQjZ1b3JhZzhwNk9WaUNE?=
 =?utf-8?B?REZzSDh4MGl5RkdjanFWbXNLbm1lVXBtL2t2VWV0NVNBZDhHTmQyZDJ3ckhL?=
 =?utf-8?B?MHFtRE1tbU1VcXltZStXeENCbUdFTXNpcDljSWkrTlltYkV2Y3ZUOHdxUjZZ?=
 =?utf-8?B?OW13MTluYUpEeHNXaTNBNU90RnJLbnhQUCtNMFVDaEpSTHdOZVRXaG52YzVC?=
 =?utf-8?B?bUJqb2RRdjk3MGZaSFNleVU0RWwvSG9iQ3hMUllON3AySlRnQ0lXS1VDYllT?=
 =?utf-8?B?U0llZ2UvUDgydFVTZ1NxQVZsVmcyQ1ZFQWRLeW5GdXlwNGxuWTBHRjFZZWcr?=
 =?utf-8?B?aVl5blFyallSb2RSckRDOFMvMVlHTDA2UVJNN2FoT1pmTUpOdmhIcFhwWkNi?=
 =?utf-8?B?RUYxMUxibktPY0MwZnlLL2V5S2JJaHhwc1NZcDJieVA3ekJSM2RSeGg1YmZN?=
 =?utf-8?B?UHB0VE54MG1MQnlIbjhnNkNmVytaeEJoWVdMc2ZqZUpkb0lmQTFlVndJZmxY?=
 =?utf-8?B?SWRyL0c3NzJ5NEhEeEh0dUhPdXdiL3M1Y3VSNWhvTVRTdzM2d3V4MDBEY3BR?=
 =?utf-8?B?QU1WdytBdFowTXhWYzFUUG1UUXpuMFZRTWFZVU5pdmJlQVdVY3N4Tnd2bkVT?=
 =?utf-8?Q?9rhMEv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dW51RGJhb3VKdFozZFZCdjdjeFV4MFNwV0w2ajN0eG90Uk5XMVAxYXNsOHlB?=
 =?utf-8?B?UmlObnpVRCtTZS96TTBabEx5VlZVdnBrOERzTTRxNjBPSEN3OG9hbFJRT2o3?=
 =?utf-8?B?eXNSVHkxTnZuMjNQcUQzeFdVcTVGdEdVeEZub3NJQWI5aDNoY1Q1c055d3BU?=
 =?utf-8?B?NG9XOGQvYUFjaEpoOXgxckIwMmE0VG82MUJzdmVEMzd4aVRBTm9QNzhzWHJv?=
 =?utf-8?B?YWFDL2tCaWo4MzJaRURzWi9kK2lnWEErYkF2UUJRajl0aGNDVFhvSU1Sa2tw?=
 =?utf-8?B?WXpkQ295ZEtyRUl4Z3pmZ0dxT3BETEVWMTJKUURQOTVlVW1sS3lXdTlham5v?=
 =?utf-8?B?LzFJS0QvcTFxRFA5L1hsZ3kvZXFNVGJFcXloSDhRN0pBcTljSzViMVQrY3hJ?=
 =?utf-8?B?aFpJTTA3OHVqcGhTeTc3eGwzMVR3TjJRZWxYMVpZa2hXRVl2NnJEbWIrRzNa?=
 =?utf-8?B?NHhGNEpWRHpWaGJCU0Rzb0RhSytRbEowbVo1N1Q0L0RHbDRxSVd1dUdkSUdr?=
 =?utf-8?B?Ti9wSjRQK3lBN2I1TW5oSlh4ZmxIbVVHNHRCdDlaeHRhL09xMEQzbEl6Q2RX?=
 =?utf-8?B?b0xTK3Nxc1FSaWFoeXM2ZFRkNVk2RW5IdjdmWStNWGRFc1Y0RmdXTFNDZlJ5?=
 =?utf-8?B?SzJOY29RNVhyOE5LZnU3SThLdHlxN0RkU3VXSUgzK2h0QkF0eThsdkxNRVZ4?=
 =?utf-8?B?MmRqU2R3dllhSWd4QXNIMmR6aEt0TUREQlAya3dOUisrc3ZLZnpOd3pKanBF?=
 =?utf-8?B?SVRBR3VMUHRXbG9QTHlZdmc1aFgybzY4R0w4QXI0RUNVNWpxUVhHOGNrWHhI?=
 =?utf-8?B?ZTRaTTQ0SVc3bnZScTk5WXRIT1MyanJiOEhYU2piQ2NSQmtZUjNodU9TV01V?=
 =?utf-8?B?N2pXOWVVY3V1WlAzYnhNRURaTkQzQ2ZoT2lobUFhOWwvYzFQZUpQQk40ODVV?=
 =?utf-8?B?VXpHUUQ1UThEYjN5dVVNVzdBSGJJbG80L2VZbmpxK2U0Ull5TVlvUjJ0VW1W?=
 =?utf-8?B?ekpGS0oyb2Rya2s5RVpUdWxXa09Eb3k4aFM5MUFpMms0U0RpUGgrL29aZ2lI?=
 =?utf-8?B?NmpZQk1SbG9zUW5RL0hSN2xMRU13N1hhNUJha3B1eFhkcXkrNkZXS3FrKzVs?=
 =?utf-8?B?eXAvTnZwbmc5NjNjVzVsSmU5RVNUdzJDSlpiUy9rNytjTmZkbzFSN2Y0TUNV?=
 =?utf-8?B?Y1ZNbkhpSVNYVXp1bXhFSVRkQnhjYVFoWlh5U2xrVFlpTHlieXhXZnpyaCtU?=
 =?utf-8?B?RjgxY3JqTlFGWXp3RWUwVk8rc095RmpCQWc0UEhnSVh4dUZtdGRzakJWU0pF?=
 =?utf-8?B?VGNkejlZZ2FFaGQ2Zzh5SGtGSkxHUkNpUlROYjFMWmJ4Ynp4T0JtZnZJdWRZ?=
 =?utf-8?B?dmRzeVJzamw4ZTNpR3VQSENYSkhzc2ZLUm9IUTVvNXNxVmwzRHM1T0RRTlhz?=
 =?utf-8?B?ckhWb3B6QXY4RmdmaVFCUXc1ajF4VjYycHBhYVRKK2xub2NFajdIeDVYdmh6?=
 =?utf-8?B?VnZFRzdGa1l5MW02RUZ0a0p3R2xtS2xvWVN4T1NBd3oxOG1ReG82YjNBWm44?=
 =?utf-8?B?MHpURmN2Z0FnbDdzaU12SG01QTNwRDJoOVFsU2pMZzQyMzAwMHg5WWh1Wk5V?=
 =?utf-8?B?bG1hM3ZRN2lZc1R2Q2ZLbFVNU21LT1l5VWdUWjA4VDl3ZTNGRHdmTmZBbXZq?=
 =?utf-8?B?T21ZVmNqR2JyWDRqam9lVDk3R0xOdHJTR2xmQXl2NkM1ZEEyaTVVaThZdG9B?=
 =?utf-8?B?VjBJS2R5WUNPbTNaa0JxcFRwbTQwOXY5NzE0SG1PY0UyYXJTT2hBYlQ0T1lV?=
 =?utf-8?B?eFdueUc3Q0lpRkNwNjVGUVpudWhPSGF0SnVVSzVFRUtzU0xCV3JjT2RhZC9w?=
 =?utf-8?B?L2ZBZyt3b0s0ancyNi9tamxDSFpIT2RlTUlidFFvSlJCL3cxZWs2cmRmZi81?=
 =?utf-8?B?UGNhUFgzYjkrNnFoQlFEN294S2R6b21jd0JUZE0xcmJMS0I2QW85WnI2L1VC?=
 =?utf-8?B?a2puL01nYjM2WUxTdFFOYzBUV3c1SkJIUG1NbmdYN1hNeDd4RWRqQzVzUHlN?=
 =?utf-8?B?MWNmemhKcEYyc3BnYUFXU0lPektoSXA5R0szcmVrMHVDcDdQdWRzRjYzUDdQ?=
 =?utf-8?B?NGFSc3huS1hxTXZYejVpa2huYkJ2bDYwMlAySWtJd0U3TS8zeTlSYlYxUElz?=
 =?utf-8?B?VWJORGE1azNmVWZkSFFSTkgrengzd3hIWkVsbmMreThlQjN1SjVOT0J1QkRk?=
 =?utf-8?B?MW1ITWxudVU4WWxnQzlTTVNkQXZyTlJtbUw5elBCdnc5SVV4eDVxSUUrc0Vn?=
 =?utf-8?B?eVpIUFBFRlNjNWI3UzFSR2R4MXRpenFVanlYOUp6elZBWjNSKzE5NUhITHFV?=
 =?utf-8?Q?Puh0H6NplejNRdFY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3120e661-8062-4a10-83bc-08de7432edfb
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 05:58:42.6504 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: faBO1CKv4L4ac5w6lvCOviWjH9zab7vv9E+QT3K5YtsGtxron6Df8RMSpqpUvGvfpVlx8eGOweB8NBZrPacFHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6464
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 88E9F192332
X-Rspamd-Action: no action


On 25-02-2026 09:03, Murthy, Arun R wrote:
>
> On 24-02-2026 20:20, Imre Deak wrote:
>> On Tue, Feb 24, 2026 at 01:18:30PM +0530, Arun R Murthy wrote:
>>> Its observed that on AUX_CH failure, even if the retry is increased to
>>> 1000, it does not succeed. Either the command might be wrong or sink in
>>> an unknown/sleep state can cause this. So try waking the sink device.
>>> Before reading the DPCD caps wake the sink for eDP and for DP after
>>> reading the lttpr caps if present and before reading the dpcd caps wake
>>> up the sink device.
>>>
>>> v2: Use poll_timeout_us (Jani N)
>>>      Add the reason, why this change is required (Ville)
>>>
>>> Closes: https://issues.redhat.com/browse/RHEL-120913
>> I wonder what should be the rule with non-public links like the above.
>> For instance, we do not put VLK-xxx links exactly because those are
>> non-public. Should/could we demand that RedHat opens a public ticket?
>> Jani?
> There is a JIRA as well
> https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
>>> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_dp.c       | 38 
>>> +++++++++++++++++++
>>>   drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
>>>   .../drm/i915/display/intel_dp_link_training.c |  3 ++
>>>   3 files changed, 42 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c 
>>> b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index 025e906b63a9..fa0730f7b92a 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -4705,6 +4705,42 @@ intel_edp_set_sink_rates(struct intel_dp 
>>> *intel_dp)
>>>       intel_edp_set_data_override_rates(intel_dp);
>>>   }
>>>   +/* Spec says to try for 3 times, its doubled to add the software 
>>> overhead */
>>> +#define AUX_CH_WAKE_RETRY    6
>>> +
>>> +void intel_dp_wake_sink(struct intel_dp *intel_dp)
>>> +{
>>> +    u8 value = 0;
>>> +    int ret = 0;
>>> +
>>> +    intel_dp_dpcd_set_probe(intel_dp, false);
>> Is there any particular reason to turn off/on the probing? I don't see
>> any reason why the DP_SET_POWER polling would need that. In any case
>> turning it off/on this way is not ok: reading the DPRX caps, which would
>> call this function, could happen at any time after a sink gets
>> connected, so turning probing back on at the end of this function would
>> re-enable it incorrectly for sinks where it's been already established
>> that the probing workaround is not needed and should stay disabled.
> This function intel_dp_wake_sink() is called from edp_init_dpcd and 
> dp_init_lttpr_dprx_caps.
> dpcd_set_probe is set to true in dp_aux_init which is called before 
> calling intel_edp_init_connector.
>
> Probe is set to true, hence in this function I am setting it to false 
> and then setting back to true.
> But there can be a possibility of reading lttpr_dprx_caps being called 
> later as well.
>
> Will correct this to check if probe is already being set to true, will 
> then disable before waking the sink and restore the probe status at 
> the end.
>
> Will get this corrected in the next revision.
>
I will drop the fix for DP from this patch and take it up later.

In this patch will only target fix for eDP for which dpcd probe will not 
be required as per intel_dp_needs_dpcd_probe()

Thanks and Regards,
Arun R Murthy
-------------------

> Thanks and Regards,
> Arun R Murthy
> -------------------
>
>>> +
>>> +    /*
>>> +     * Wake the sink device
>>> +     * Spec DP2.1 section 2.3.1.2 if AUX CH is powered down by 
>>> writing 0x02
>>> +     * to DP_SET_POWER dpcd reg, 1ms time would be required to wake 
>>> it up
>>> +     */
>>> +    ret = poll_timeout_us(ret = drm_dp_dpcd_readb(&intel_dp->aux, 
>>> DP_SET_POWER, &value),
>>> +                  ret > 0,
>>> +                  1000, AUX_CH_WAKE_RETRY * 1000, true);
>>> +
>>> +    /*
>>> +     * If sink is in D3 then it may not respond to the AUX tx so
>>> +     * wake it up to D3_AUX_ON state
>>> +     * If the above poll_timeout_us fails, try waking the sink.
>>> +     */
>>> +    if (value == DP_SET_POWER_D3 || ret < 0) {
>>> +        /* After setting to D0 need a min of 1ms to wake(Spec DP2.1 
>>> sec 2.3.1.2) */
>>> +        drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
>>> +                   DP_SET_POWER_D0);
>>> +        fsleep(1000);
>>> +        drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
>>> +                   DP_SET_POWER_D3_AUX_ON);
>>> +    }
>>> +
>>> +    intel_dp_dpcd_set_probe(intel_dp, true);
>>> +}
>>> +
>>>   static bool
>>>   intel_edp_init_dpcd(struct intel_dp *intel_dp, struct 
>>> intel_connector *connector)
>>>   {
>>> @@ -4713,6 +4749,8 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, 
>>> struct intel_connector *connector
>>>       /* this function is meant to be called only once */
>>>       drm_WARN_ON(display->drm, intel_dp->dpcd[DP_DPCD_REV] != 0);
>>>   +    intel_dp_wake_sink(intel_dp);
>>> +
>>>       if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0)
>>>           return false;
>>>   diff --git a/drivers/gpu/drm/i915/display/intel_dp.h 
>>> b/drivers/gpu/drm/i915/display/intel_dp.h
>>> index b0bbd5981f57..3f16077c0cc7 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>>> @@ -232,6 +232,7 @@ bool intel_dp_dotclk_valid(struct intel_display 
>>> *display,
>>>   bool intel_dp_joiner_candidate_valid(struct intel_connector 
>>> *connector,
>>>                        int hdisplay,
>>>                        int num_joined_pipes);
>>> +void intel_dp_wake_sink(struct intel_dp *intel_dp);
>>>     #define for_each_joiner_candidate(__connector, __mode, 
>>> __num_joined_pipes) \
>>>       for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= 
>>> (I915_MAX_PIPES); (__num_joined_pipes)++) \
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c 
>>> b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>> index 54c585c59b90..cbb712ea9f60 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>> @@ -270,6 +270,9 @@ int intel_dp_init_lttpr_and_dprx_caps(struct 
>>> intel_dp *intel_dp)
>>>           lttpr_count = intel_dp_init_lttpr(intel_dp, dpcd);
>>>       }
>>>   +    /* After reading LTTPR wake up the sink before reading DPRX 
>>> caps */
>>> +    intel_dp_wake_sink(intel_dp);
>>> +
>>>       /*
>>>        * The DPTX shall read the DPRX caps after LTTPR detection, so 
>>> re-read
>>>        * it here.
>>> -- 
>>> 2.25.1
>>>
