Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A1548D132
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 05:05:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 148A810F18B;
	Thu, 13 Jan 2022 04:05:34 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 752B110F17E;
 Thu, 13 Jan 2022 04:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642046732; x=1673582732;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TAyhKW1cGENzcJtXnoVXfvL5vKQ0hSykyJslaclGhjk=;
 b=ngL8o7MQwm6m/aPZeUi7qikvNq0wok9aqK9v/f0jzRuHeLr3Jl5POR6i
 qqrNtfpEGjjzD6dW8FZSqbVpcAvlODAoPS0tBZqTzE/ABtHfbzTeDabyi
 LLuv63+ojQeHm0YDAVtfMfNaxVW7EQRerW4O4KQyrEs25UmOYSleUDRqZ
 JM9AoZcG2JgqmFnHYjwr+NgCIPysYhczuE7l2irXMMs7gRrGgYhp/7aBj
 jm3292DAwgLWom5lqdPrApjKloe2boKyZB6ybWQ1pZOWphopyIY916949
 EnxK44gsdhAh3Wz1h6vjuR7j2mp9gIJVadJ8sP5+2m3vSglUVekz2MaPJ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="307274352"
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="307274352"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 20:05:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,284,1635231600"; d="scan'208";a="473086612"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 12 Jan 2022 20:05:30 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 12 Jan 2022 20:05:29 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 12 Jan 2022 20:05:29 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 12 Jan 2022 20:05:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=htbk5jqzo5XAt51UkPO6f5wttpm8U2idnzAwHYnHCe+0PXjLiixkvZzBfuQDCjGvlgLlowPcpJobVxEO1+MJmvXAXULxXocCInxLgBhWbgUaLVm2lvYLGfOKbK4UlvV76LwGeHSFylmudjqC1ARXWT2Uy1+i/TMIabGm0ryXGx/3TD3KHaMlv12E5pNYhW66wb/TpIfP15IYRt1IN0TDNi80f5lwWct1GdIuyIPk9ujsyJx15buxcvHQie0w5xYyyxXm5VZdN32S12wwtcU7A0qHEEAr0ZibcuDl+wb2wtvzMTJBNce5oSW0uADiLeSnWePD/qFxMRJwLgtW6DNVpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C19/c4stz1gKKe0nLSztEfXPLzAnFZZxjv+T8uhP26Q=;
 b=HPYEb94X4vQ8j4GnLinHCwJAKUdhph6hxbc1zaVHFxV0AsPXyqdG6aCCnptPpbYP/FGBNnun2laKV0XImp0GhDGk6JFwHk/Bj/GTdmJygE06gI2aqHGGqvStSLaFv4gpql0MIJ3IG8RG62fWgElURsDh/swC5hCpezSRn9eaa3AETkhuRJlc4ngvN4XhcbomdJ4Ab8AJwTyY8b0TWMWGcrGM4Vhy+GsYiwIKHW3D5wC/4l1pg/cjw2H/5lnnFW25juYzyXA4KDRSRrZACmcQtBQFci35Gw3zSbIh9jaKugt0hGOLEKa9NoLoFfvu4mrf9FzlORjTA+CyBp4WJJA9pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by MWHPR11MB1581.namprd11.prod.outlook.com (2603:10b6:301:d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.9; Thu, 13 Jan
 2022 04:05:26 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::b006:30e2:f354:3ea5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::b006:30e2:f354:3ea5%5]) with mapi id 15.20.4888.011; Thu, 13 Jan 2022
 04:05:26 +0000
Message-ID: <b214edf8-9e16-2631-3458-8c5f4d704f44@intel.com>
Date: Wed, 12 Jan 2022 20:05:23 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.4.1
Content-Language: en-GB
To: =?UTF-8?Q?Zbigniew_Kempczy=c5=84ski?= <zbigniew.kempczynski@intel.com>
References: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
 <20211213232914.2523139-9-John.C.Harrison@Intel.com>
 <YbruxWHUL7+Mrkze@zkempczy-mobl2>
 <dd455cdc-a667-b4c6-a354-d44aca4a74d9@intel.com>
 <YcDH1mQgoxOtWvAw@zkempczy-mobl2>
 <43afcf52-36b8-b400-539f-6e535b992ea5@intel.com>
 <YclXE1ntaxnJcA4b@zkempczy-mobl2>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <YclXE1ntaxnJcA4b@zkempczy-mobl2>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MWHPR1701CA0014.namprd17.prod.outlook.com
 (2603:10b6:301:14::24) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0e19e0e9-0fdf-461c-b941-08d9d649edfb
X-MS-TrafficTypeDiagnostic: MWHPR11MB1581:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <MWHPR11MB1581D839396C4065114AC721BD539@MWHPR11MB1581.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Jc+E5HZ++0ls7rOcWkIcqJnSvBSEnOQfINo79+tWgW8qymNBqRfE267u4xj+pdUbzq/eULJweTucRKXlPr5LFud2eVQM2HU6pR0aKOz5xTzU033hzPE2IRg70zcPtdEQtjtThCEvpVOVe5fS1b9JASpc5FU86pOUC4L70PHAsXFm3RyiCzpTOb70XTHqwyGhjnItxG4Q9Wx8ipi2Hiv+tc//UCk6OOutVskw94VcjK4+4JSCJJHq1VvIc2RcLhyi/3EWBuTgZzVceD09+9jHCEvfZGNEI16z5iuz0bjSQYz9teyfCmEC9zfAt3RqqjOscVf5kD8lBorE0T+jurq3ruRw0l+PxKIvcaH2CTEH6SF5tKHu+uEFcmG3DYLQPmEC77IP91eHWxth1EO0ZWZIA2uNH2tAhBBVwXBLhjPqLI3Y8xC75xp5zcVA6+szDp9WM1Xw+jqUtD/+Ef3pKdrYQBqeHloubUvCYrlHL9xUB1ftYqMsXDA8veH/GVYMMqsRBz1xeSE/rqmsslasEC8mmCFJr5UQ00C1rLhBb7s7klN2QXJ09IN6AXLSQnuJguRDG4GPXu2Du84MLszrlpK4zHB4Srx0zjw9ArFoXeTf+JTCy4QLaht6UHPq++gxXMmgDSPiFAEIqvdJey9VHowPrTWvK2tLta5GORNfHZAoU6XW6Hv9mXFK22tbe3ZhU/tgDyjMEALAkVUkpxH3LqP1eWEc4CTuueEeMXCRyhDz+cechmyRRYULPzJb3LHmyAm0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(5660300002)(450100002)(30864003)(26005)(83380400001)(82960400001)(2906002)(6512007)(966005)(53546011)(6666004)(66574015)(66946007)(6506007)(508600001)(6862004)(6486002)(31696002)(37006003)(8936002)(8676002)(86362001)(38100700002)(31686004)(186003)(6636002)(66556008)(2616005)(36756003)(66476007)(4326008)(316002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Mmh4ZDJNVHdsVkNZOWR0M1FySG1oVUs3Umszd0ZEUGtEc3ZRS0YwN0VIazhz?=
 =?utf-8?B?R3ZVTkZXTXlDbEtTQjNYSW1IelpMRDM5RkJDblk4Y3Fxbnc0VFFnMC9Dc1k3?=
 =?utf-8?B?ZUJQaDdoeWYyRGdoSWtOeHlpS0NkUi9XTFg3TlFOb3Q3amhtTEZZUVY4UXpi?=
 =?utf-8?B?Rm01Q0FKU2pkSGpQNnRJM3YySy96NHVvalNMbkZVckhXZnBuMm9SM3JWRWlp?=
 =?utf-8?B?UkszT0JYc2NTSWhOMEVuNlROTXYxd1RyaEozRzRpUGFybHJFTEIxdkNPOEJt?=
 =?utf-8?B?NS9YOFNrbWppRndrSzRqdXRUMTh2VFhaUmNDQXRoRk5oU3FjUU9TTCtYdUJq?=
 =?utf-8?B?T2RDZjlvUVlvNzJxZ25ldERDVmlSaTJwYTZXYXQ4VjBYSldROVpSYzNjOGx6?=
 =?utf-8?B?eHZpeFdmdVNOWmlaNW4zSitRN0lRWE9DcXhwV25Ua0NQOVZ3NHhIUVpId3JP?=
 =?utf-8?B?YjJjWkVRYXNQb284OXJFWlBJb28zK3A3TGk0a2d4c0pBM2lPSDJrbWg3UmxM?=
 =?utf-8?B?MVpHeVFhL3dqcVI4dlBGZTF2K1JiNmMxbklOY1RuaVNJS1VzZkV3dkE0UHhK?=
 =?utf-8?B?WlFQKzNvNlpXYktRSVVQM2RwMUlJQlFIVzdjSkJhRTFQTHlLQUxkcUxLV0N5?=
 =?utf-8?B?cTBpd0F1VVRKdTVBc1ArSDd3VUxQUDRjN3plQWRVS2NYaXRMTnBrL0Zpd05J?=
 =?utf-8?B?SWkxVG4wei9pZldIeGxXVHJ3TFlUVGg1VGg1ZENGL0I1ZVVVTkttVU9vQjUv?=
 =?utf-8?B?MCttd3pDTThRVHNUbEJRZEJVN24yYkxOdnpKeFFqSzY3cG42aG4rOE1CNDhK?=
 =?utf-8?B?TTNlNGdKQ1FnZUFCTVRhdU4rNzlZTFVuRTZaSG9rSjFoaFVxc3gxRSsrOU44?=
 =?utf-8?B?bmliUkRVWGJERDF0ZVFsVkt2WWNSSHhPS3E5TEtIMVkxS1FHSTM3bDgvRmM2?=
 =?utf-8?B?ZmtVUlNBNWwzVmFJZG10RzBsMER4YWpWMEpXWWhIYWxiM0o3clFmaDBCb2hu?=
 =?utf-8?B?NjhSTk45WUdTTHRidWFMYUpVb3FpWTVpeWpQZml2MGZMQmEwRGhYOStENkNz?=
 =?utf-8?B?MHg4bitBTFJpek96WVVjdVNONkJBNlVSZzQ4QWVQS0JLSXRDWWtRcFNhQXND?=
 =?utf-8?B?bmlhbGQ2QnlWK004aVd0RmtFeGI5a05yVHcrZXBSTHV1dG1NWkZpMGpIWHJh?=
 =?utf-8?B?SXAvZnVaMHFBUDF3bGhQaGNZaXRFTlEvVnM1QzVSb3hZclB2ckk2b3FmS0py?=
 =?utf-8?B?RERodElPKzVYbE5qcjNRYWo4ZjV4WGRtb3VaWXZGU1Y1YU1oaHB5dkI1TXRK?=
 =?utf-8?B?WlprZm8yc210VmpNNXhBa1d0WXlnZlFwMUU4aVJqa3JTUzlMOG1BRlBEcTdK?=
 =?utf-8?B?dDFLNHBaN0FpUDJIRzIwRW93d080ZUNZdnJtWm1raUphUTRtNzFqTFgydy9B?=
 =?utf-8?B?R2t2Y2xKbVpxZW5uMEpnZEQzTEcyZWtUZlBrWnp0VTZjdGt3R1pSM0loNzJJ?=
 =?utf-8?B?Ry9VSnkrcC8zNm0yNDVyY1NNNTFHd2xhN0JsbDdVZ2Z3TTVTTEtpVEF2V0tH?=
 =?utf-8?B?aVpzZ3NENWNlT1BoZUt1V0RFTEdJakFPZmxuRTlaSlhZQlRXU2NmVUQrM3d6?=
 =?utf-8?B?MFRTVWtWUFB4bWYvVis5UjdWSkY0dEUyUGZyamd3MWdlc1lzQXVkVE14dGRT?=
 =?utf-8?B?YmVINTlBUjZmTGRlekNPWk1IVEY0MzI4Tllaem5RVEFrMFI1eVo1S2tuYnJ4?=
 =?utf-8?B?aE5XUzg1VENLTktSZU93Sy9uaFByVGlIWksrQmpSaFpzeHlvLythN1dkU2R2?=
 =?utf-8?B?S3ZWK0UrWUFPL2FWbnNmdTZ6cFFlczByV3cwWE9DSk1JSWdwUHF5dGh6eUZ6?=
 =?utf-8?B?eXMveDlycWg3TVp0cVV3Rnl5eVBNN0xhUmZlNjI4MGlBSWFIeUo1MmdyV2VO?=
 =?utf-8?B?T3BjSTJYTU1oUFVpRlRIcnNONGIxZHd0c1hJT25iN2V3L2xZVU1ubGVIbHl2?=
 =?utf-8?B?b0ZpUkRhTk95NThXT2lIK3pWV3NocytQU0lRNlp3ODRZalZqRG15WEErOVRN?=
 =?utf-8?B?c29oZ05tRFhSeWFEc3pRd2pvMDUxR2ZGdjMvMHVRcTJ2bW9oYTgwZTFNVlJn?=
 =?utf-8?B?ZUhLblZZOTFSTE5Ob1JvcUVSd0JFRm9oMmVkRXZ6WVEvTHcvQndSOTdSM0wv?=
 =?utf-8?B?TGZmM2Z4SW9talphQ2xENUorUkRMbFhqRDZMVTBrdDh2T1J2b1l5ZjJvMnhn?=
 =?utf-8?Q?q30MN3JA0ICejKsgXUV76AYX22t4V85Cfb3hEOK4yY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e19e0e9-0fdf-461c-b941-08d9d649edfb
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2022 04:05:26.6102 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4c+9WhNQdv1Y5YgPKHXdLDvrGM9tTi/Ld5pgEA2wFqEJ094z6nY5pI5ivsFehQcCm0YNgcH45wpKFMXiKKnJvhyRCAbr6oNP1LpRN83Mi8g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1581
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 08/11] lib/store: Refactor
 common store code into helper function
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
Cc: IGT-Dev@lists.freedesktop.org, Intel-GFX@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 12/26/2021 22:02, Zbigniew Kempczyński wrote:
> On Tue, Dec 21, 2021 at 06:22:22PM -0800, John Harrison wrote:
>> On 12/20/2021 10:13, Zbigniew Kempczyński wrote:
>>> On Thu, Dec 16, 2021 at 02:40:21PM -0800, John Harrison wrote:
>>>> On 12/15/2021 23:46, Zbigniew Kempczyński wrote:
>>>>> On Mon, Dec 13, 2021 at 03:29:11PM -0800, John.C.Harrison@Intel.com wrote:
>>>>>> From: John Harrison <John.C.Harrison@Intel.com>
>>>>>>
>>>>>> A lot of tests use almost identical code for creating a batch buffer
>>>>>> which does a single write to memory. This patch collects two such
>>>>>> instances into a common helper function. Unfortunately, the other
>>>>>> instances are all subtly different enough to make it not so trivial to
>>>>>> try to use the helper. It could be done but it is unclear if it is
>>>>>> worth the effort at this point. This patch proves the concept, if
>>>>>> people like it enough then it can be extended.
>>>>>>
>>>>>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>>>>>> ---
>>>>>>     lib/igt_store.c             | 114 ++++++++++++++++++++++++++++++++++++
>>>>>>     lib/igt_store.h             |  30 ++++++++++
>>>>>>     lib/meson.build             |   1 +
>>>>>>     tests/i915/gem_exec_fence.c |  77 ++----------------------
>>>>>>     tests/i915/i915_hangman.c   |  61 +------------------
>>>>>>     5 files changed, 152 insertions(+), 131 deletions(-)
>>>>>>     create mode 100644 lib/igt_store.c
>>>>>>     create mode 100644 lib/igt_store.h
>>>>>>
>>>>>> diff --git a/lib/igt_store.c b/lib/igt_store.c
>>>>>> new file mode 100644
>>>>>> index 000000000..6d9869b58
>>>>>> --- /dev/null
>>>>>> +++ b/lib/igt_store.c
>>>>>> @@ -0,0 +1,114 @@
>>>>>> +/*
>>>>>> + * Copyright © 2020 Intel Corporation
>>>>>> + *
>>>>>> + * Permission is hereby granted, free of charge, to any person obtaining a
>>>>>> + * copy of this software and associated documentation files (the "Software"),
>>>>>> + * to deal in the Software without restriction, including without limitation
>>>>>> + * the rights to use, copy, modify, merge, publish, distribute, sublicense,
>>>>>> + * and/or sell copies of the Software, and to permit persons to whom the
>>>>>> + * Software is furnished to do so, subject to the following conditions:
>>>>>> + *
>>>>>> + * The above copyright notice and this permission notice (including the next
>>>>>> + * paragraph) shall be included in all copies or substantial portions of the
>>>>>> + * Software.
>>>>>> + *
>>>>>> + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
>>>>>> + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
>>>>>> + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
>>>>>> + * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
>>>>>> + * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
>>>>>> + * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
>>>>>> + * IN THE SOFTWARE.
>>>>>> + *
>>>>>> + */
>>>>> Use SPDX. I like idea of extracting this.
>>>>>
>>>>>> +
>>>>>> +#include "i915/gem_create.h"
>>>>>> +#include "igt_core.h"
>>>>>> +#include "drmtest.h"
>>>>>> +#include "igt_store.h"
>>>>>> +#include "intel_chipset.h"
>>>>>> +#include "intel_reg.h"
>>>>>> +#include "ioctl_wrappers.h"
>>>>>> +#include "lib/intel_allocator.h"
>>>>>> +
>>>>>> +/**
>>>>>> + * SECTION:igt_store_word
>>>>>> + * @short_description: Library for writing a value to memory
>>>>>> + * @title: StoreWord
>>>>>> + * @include: igt.h
>>>>>> + *
>>>>>> + * A lot of igt testcases need some mechanism for writing a value to memory
>>>>>> + * as a test that a batch buffer has executed.
>>>>>> + *
>>>>>> + * NB: Requires master for STORE_DWORD on gen4/5.
>>>>>> + */
>>>>>> +void igt_store_word(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
>>>>>> +		    const struct intel_execution_engine2 *e,
>>>>>> +		    int fence, uint32_t target_handle,
>>>>>> +		    uint64_t target_offset, uint32_t target_value)
>>>>>> +{
>>>>>> +	const int SCRATCH = 0;
>>>>>> +	const int BATCH = 1;
>>>>>> +	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
>>>>>> +	struct drm_i915_gem_exec_object2 obj[2];
>>>>>> +	struct drm_i915_gem_relocation_entry reloc;
>>>>>> +	struct drm_i915_gem_execbuffer2 execbuf;
>>>>>> +	uint32_t batch[16], delta;
>>>>>> +	uint64_t bb_offset;
>>>>>> +	int i;
>>>>>> +
>>>>>> +	memset(&execbuf, 0, sizeof(execbuf));
>>>>>> +	execbuf.buffers_ptr = to_user_pointer(obj);
>>>>>> +	execbuf.buffer_count = ARRAY_SIZE(obj);
>>>>>> +	execbuf.flags = e->flags;
>>>>>> +	execbuf.rsvd1 = ctx->id;
>>>>>> +	if (fence != -1) {
>>>>>> +		execbuf.flags |= I915_EXEC_FENCE_IN;
>>>>>> +		execbuf.rsvd2 = fence;
>>>>>> +	}
>>>>>> +	if (gen < 6)
>>>>>> +		execbuf.flags |= I915_EXEC_SECURE;
>>>>>> +
>>>>>> +	memset(obj, 0, sizeof(obj));
>>>>>> +	obj[SCRATCH].handle = target_handle;
>>>>>> +
>>>>>> +	obj[BATCH].handle = gem_create(fd, 4096);
>>>>>> +	obj[BATCH].relocs_ptr = to_user_pointer(&reloc);
>>>>>> +	obj[BATCH].relocation_count = !ahnd ? 1 : 0;
>>>>>> +	bb_offset = get_offset(ahnd, obj[BATCH].handle, 4096, 0);
>>>>>> +	memset(&reloc, 0, sizeof(reloc));
>>>>>> +
>>>>>> +	i = 0;
>>>>>> +	delta = sizeof(uint32_t) * target_value;	/* why value not offset??? */
>>>>> I guess I know why there's problem here. target_offset is address in vm
>>>>> passed by the caller. This is regarding to some limitations of allocator
>>>>> infrastructure - for "reloc" pseudo-allocator you would get new offset
>>>>> (internally it returns offset and then add size for new "allocation").
>>>>> With this we don't need to wait for rebind offset for new execbuf.
>>>>> With "simple" allocator put will release offset so new allocation will
>>>>> reuse same offset. Ashutosh proposed how to join both functionalities
>>>>> (stepping as with reloc, stateful like in simple) but I got no time to
>>>>> code this.
>>>>>
>>>>> Regarding issue here, target_offset passed from the caller is to avoid
>>>>> rebind if get_offset() would be called for "reloc" allocator.
>>>>> So there's not real value offset within bo. I would add separate
>>>>> value_offset (shift) to allow caller to put place where it wants to
>>>>> write the value.
>>>> If you understand what is going on here and how to improve it then feel free
>>>> to either send me an updated version or post an extra patch after this is
>>>> merged. I don't get how any of the new reloc (or anti-reloc?) code is meant
>>>> to work. These patches were all written as part of the GuC support a long
>>>> time ago - before there was any such thing as an AHND (what does that stand
>>>> for?) or intel_ctx_t. All I'm doing in this patch is moving the existing
>>>> code to a helper and trying to make it generic enough to be used by another
>>>> test. And right now, the two tests are passing on both GuC and execlist
>>>> platforms for me. So the code can't be all that broken.
>>> I've added some missing parts to your code:
>>>
>>> https://patchwork.freedesktop.org/series/98242/
>>>
>>> If you think something is missing please add or fix.
>>>
>>> Previously value was used both for value and offset within bo
>>> used for example in gem_exec_fence@basic-await. I think adding
>>> separate arg for offset for value within bo makes this code
>>> more universal.
>> I don't follow. The purpose of the offset is the to say where the value is
>> written within the buffer. As in 'target_offset' is 'offset into target
>> buffer to write value'. You have added a 'value_offset' which surely would
>> be defined as 'the offset at which to write the value in the target buffer'.
>> I.e. exactly the same thing. What is the intention behind having two
>> separate offset variables?
> No, there're not the same thing.
>
>   target_offset
>   ──────────────►┌────────────┐
>   0x201000       │ size = 8K  │
>                  │            │
> value_offset    │            │
> (relative to    │            │
> target_offset)  │            │
> ───────────────►│            │
> 0x1100          │            │
>                  │            │
>                  │            │
>                  │            │
>                  │            │
>                  │            │
>                  └────────────┘
>
> Target_offset is vma start address where object will be bind.
> value_offset is delta from that vma.
Meaning the graphics address? As in, the offset from the start of the 
PPGTT or some such? Surely that should be a part of the object structure 
and specified when the object is created. What is the point of the 
object's handle if it does not specify what object to access? I mean, 
what is an 'object' other than a start address and size / end address? 
The memory mapping details really should not be a parameter to a helper 
function whose purpose is to write a single word to a specific location 
within a pre-existing object. At the very least, it should be called 
obj_gpu_addr or similar. Calling two very different concepts 'offset' is 
totally confusing.

Or am I still completely confused as to what the purpose is?

John.


>
> In execobj.offset you need to put 0x201000, but in bb final offset
> is calculated as target_offset + value_offset.
>
> --
> Zbigniew
>
>> John.
>>
>>
>>> NB: ahnd is short version of allocator_handle
>>>
>>> --
>>> Zbigniew
>>>
>>>>>> +	if (!ahnd) {
>>>>>> +		reloc.target_handle = obj[SCRATCH].handle;
>>>>>> +		reloc.presumed_offset = -1;
>>>>>> +		reloc.offset = sizeof(uint32_t) * (i + 1);
>>>>>> +		reloc.delta = delta;
>>>>>> +		reloc.read_domains = I915_GEM_DOMAIN_INSTRUCTION;
>>>>>> +		reloc.write_domain = I915_GEM_DOMAIN_INSTRUCTION;
>>>>>> +	} else {
>>>>>> +		obj[SCRATCH].offset = target_offset;
>>>>>> +		obj[SCRATCH].flags |= EXEC_OBJECT_PINNED | EXEC_OBJECT_WRITE;
>>>>>> +		obj[BATCH].offset = bb_offset;
>>>>>> +		obj[BATCH].flags |= EXEC_OBJECT_PINNED;
>>>>>> +	}
>>>>>> +	batch[i] = MI_STORE_DWORD_IMM | (gen < 6 ? 1 << 22 : 0);
>>>>>> +	if (gen >= 8) {
>>>>>> +		batch[++i] = target_offset + delta;
>>>>>> +		batch[++i] = target_offset >> 32;
>>>>> Probably I've added this in previous code, for being safe I would
>>>>> add (target_offset + delta) >> 32 for avoid risk passing invalid higher
>>>>> offset part on 32b boundary.
>>>> Pretty sure we don't have any addresses larger than 32 bits yet, but yes,
>>>> delta should be added in.
>>>>
>>>> Thanks,
>>>> John.
>>>>
>>>>>> +	} else if (gen >= 4) {
>>>>>> +		batch[++i] = 0;
>>>>>> +		batch[++i] = delta;
>>>>>> +		reloc.offset += sizeof(uint32_t);
>>>>>> +	} else {
>>>>>> +		batch[i]--;
>>>>>> +		batch[++i] = delta;
>>>>>> +	}
>>>>>> +	batch[++i] = target_value;
>>>>>> +	batch[++i] = MI_BATCH_BUFFER_END;
>>>>>> +	gem_write(fd, obj[BATCH].handle, 0, batch, sizeof(batch));
>>>>>> +	gem_execbuf(fd, &execbuf);
>>>>>> +	gem_close(fd, obj[BATCH].handle);
>>>>>> +	put_offset(ahnd, obj[BATCH].handle);
>>>>>> +}
>>>>>> diff --git a/lib/igt_store.h b/lib/igt_store.h
>>>>>> new file mode 100644
>>>>>> index 000000000..4d5979e07
>>>>>> --- /dev/null
>>>>>> +++ b/lib/igt_store.h
>>>>>> @@ -0,0 +1,30 @@
>>>>>> +/*
>>>>>> + * Copyright © 2020 Intel Corporation
>>>>>> + *
>>>>>> + * Permission is hereby granted, free of charge, to any person obtaining a
>>>>>> + * copy of this software and associated documentation files (the "Software"),
>>>>>> + * to deal in the Software without restriction, including without limitation
>>>>>> + * the rights to use, copy, modify, merge, publish, distribute, sublicense,
>>>>>> + * and/or sell copies of the Software, and to permit persons to whom the
>>>>>> + * Software is furnished to do so, subject to the following conditions:
>>>>>> + *
>>>>>> + * The above copyright notice and this permission notice (including the next
>>>>>> + * paragraph) shall be included in all copies or substantial portions of the
>>>>>> + * Software.
>>>>>> + *
>>>>>> + * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
>>>>>> + * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
>>>>>> + * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
>>>>>> + * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
>>>>>> + * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
>>>>>> + * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
>>>>>> + * IN THE SOFTWARE.
>>>>>> + *
>>>>>> + */
>>>>> Use SPDX and 2021.
>>>>>
>>>>> --
>>>>> Zbigniew
>>>>>
>>>>>> +
>>>>>> +#include "igt_gt.h"
>>>>>> +
>>>>>> +void igt_store_word(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
>>>>>> +		    const struct intel_execution_engine2 *e,
>>>>>> +		    int fence, uint32_t target_handle,
>>>>>> +		    uint64_t target_offset, uint32_t target_value);
>>>>>> diff --git a/lib/meson.build b/lib/meson.build
>>>>>> index b9568a71b..3e43316d1 100644
>>>>>> --- a/lib/meson.build
>>>>>> +++ b/lib/meson.build
>>>>>> @@ -72,6 +72,7 @@ lib_sources = [
>>>>>>     	'igt_map.c',
>>>>>>     	'igt_pm.c',
>>>>>>     	'igt_dummyload.c',
>>>>>> +	'igt_store.c',
>>>>>>     	'uwildmat/uwildmat.c',
>>>>>>     	'igt_kmod.c',
>>>>>>     	'igt_panfrost.c',
>>>>>> diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
>>>>>> index 9a6336ce9..c4091a454 100644
>>>>>> --- a/tests/i915/gem_exec_fence.c
>>>>>> +++ b/tests/i915/gem_exec_fence.c
>>>>>> @@ -28,6 +28,7 @@
>>>>>>     #include "i915/gem.h"
>>>>>>     #include "i915/gem_create.h"
>>>>>>     #include "igt.h"
>>>>>> +#include "igt_store.h"
>>>>>>     #include "igt_syncobj.h"
>>>>>>     #include "igt_sysfs.h"
>>>>>>     #include "igt_vgem.h"
>>>>>> @@ -57,74 +58,6 @@ struct sync_merge_data {
>>>>>>     #define   MI_SEMAPHORE_SAD_EQ_SDD       (4 << 12)
>>>>>>     #define   MI_SEMAPHORE_SAD_NEQ_SDD      (5 << 12)
>>>>>> -static void store(int fd, uint64_t ahnd, const intel_ctx_t *ctx,
>>>>>> -		  const struct intel_execution_engine2 *e,
>>>>>> -		  int fence, uint32_t target, uint64_t target_offset,
>>>>>> -		  unsigned offset_value)
>>>>>> -{
>>>>>> -	const int SCRATCH = 0;
>>>>>> -	const int BATCH = 1;
>>>>>> -	const unsigned int gen = intel_gen(intel_get_drm_devid(fd));
>>>>>> -	struct drm_i915_gem_exec_object2 obj[2];
>>>>>> -	struct drm_i915_gem_relocation_entry reloc;
>>>>>> -	struct drm_i915_gem_execbuffer2 execbuf;
>>>>>> -	uint32_t batch[16], delta;
>>>>>> -	uint64_t bb_offset;
>>>>>> -	int i;
>>>>>> -
>>>>>> -	memset(&execbuf, 0, sizeof(execbuf));
>>>>>> -	execbuf.buffers_ptr = to_user_pointer(obj);
>>>>>> -	execbuf.buffer_count = 2;
>>>>>> -	execbuf.flags = e->flags | I915_EXEC_FENCE_IN;
>>>>>> -	execbuf.rsvd1 = ctx->id;
>>>>>> -	execbuf.rsvd2 = fence;
>>>>>> -	if (gen < 6)
>>>>>> -		execbuf.flags |= I915_EXEC_SECURE;
>>>>>> -
>>>>>> -	memset(obj, 0, sizeof(obj));
>>>>>> -	obj[SCRATCH].handle = target;
>>>>>> -
>>>>>> -	obj[BATCH].handle = gem_create(fd, 4096);
>>>>>> -	obj[BATCH].relocs_ptr = to_user_pointer(&reloc);
>>>>>> -	obj[BATCH].relocation_count = !ahnd ? 1 : 0;
>>>>>> -	bb_offset = get_offset(ahnd, obj[BATCH].handle, 4096, 0);
>>>>>> -	memset(&reloc, 0, sizeof(reloc));
>>>>>> -
>>>>>> -	i = 0;
>>>>>> -	delta = sizeof(uint32_t) * offset_value;
>>>>>> -	if (!ahnd) {
>>>>>> -		reloc.target_handle = obj[SCRATCH].handle;
>>>>>> -		reloc.presumed_offset = -1;
>>>>>> -		reloc.offset = sizeof(uint32_t) * (i + 1);
>>>>>> -		reloc.delta = delta;
>>>>>> -		reloc.read_domains = I915_GEM_DOMAIN_INSTRUCTION;
>>>>>> -		reloc.write_domain = I915_GEM_DOMAIN_INSTRUCTION;
>>>>>> -	} else {
>>>>>> -		obj[SCRATCH].offset = target_offset;
>>>>>> -		obj[SCRATCH].flags |= EXEC_OBJECT_PINNED | EXEC_OBJECT_WRITE;
>>>>>> -		obj[BATCH].offset = bb_offset;
>>>>>> -		obj[BATCH].flags |= EXEC_OBJECT_PINNED;
>>>>>> -	}
>>>>>> -	batch[i] = MI_STORE_DWORD_IMM | (gen < 6 ? 1 << 22 : 0);
>>>>>> -	if (gen >= 8) {
>>>>>> -		batch[++i] = target_offset + delta;
>>>>>> -		batch[++i] = target_offset >> 32;
>>>>>> -	} else if (gen >= 4) {
>>>>>> -		batch[++i] = 0;
>>>>>> -		batch[++i] = delta;
>>>>>> -		reloc.offset += sizeof(uint32_t);
>>>>>> -	} else {
>>>>>> -		batch[i]--;
>>>>>> -		batch[++i] = delta;
>>>>>> -	}
>>>>>> -	batch[++i] = offset_value;
>>>>>> -	batch[++i] = MI_BATCH_BUFFER_END;
>>>>>> -	gem_write(fd, obj[BATCH].handle, 0, batch, sizeof(batch));
>>>>>> -	gem_execbuf(fd, &execbuf);
>>>>>> -	gem_close(fd, obj[BATCH].handle);
>>>>>> -	put_offset(ahnd, obj[BATCH].handle);
>>>>>> -}
>>>>>> -
>>>>>>     static bool fence_busy(int fence)
>>>>>>     {
>>>>>>     	return poll(&(struct pollfd){fence, POLLIN}, 1, 0) == 0;
>>>>>> @@ -400,13 +333,13 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
>>>>>>     			continue;
>>>>>>     		if (flags & NONBLOCK) {
>>>>>> -			store(fd, ahnd, ctx, e2, spin->out_fence,
>>>>>> -			      scratch, scratch_offset, i);
>>>>>> +			igt_store_word(fd, ahnd, ctx, e2, spin->out_fence,
>>>>>> +				       scratch, scratch_offset, i);
>>>>>>     		} else {
>>>>>>     			igt_fork(child, 1) {
>>>>>>     				ahnd = get_reloc_ahnd(fd, ctx->id);
>>>>>> -				store(fd, ahnd, ctx, e2, spin->out_fence,
>>>>>> -				      scratch, scratch_offset, i);
>>>>>> +				igt_store_word(fd, ahnd, ctx, e2, spin->out_fence,
>>>>>> +					       scratch, scratch_offset, i);
>>>>>>     				put_ahnd(ahnd);
>>>>>>     			}
>>>>>>     		}
>>>>>> diff --git a/tests/i915/i915_hangman.c b/tests/i915/i915_hangman.c
>>>>>> index 20653b479..4cb9b8b85 100644
>>>>>> --- a/tests/i915/i915_hangman.c
>>>>>> +++ b/tests/i915/i915_hangman.c
>>>>>> @@ -36,6 +36,7 @@
>>>>>>     #include "i915/gem.h"
>>>>>>     #include "i915/gem_create.h"
>>>>>>     #include "igt.h"
>>>>>> +#include "igt_store.h"
>>>>>>     #include "igt_sysfs.h"
>>>>>>     #include "igt_debugfs.h"
>>>>>>     #include "sw_sync.h"
>>>>>> @@ -51,64 +52,6 @@ static int sysfs = -1;
>>>>>>     IGT_TEST_DESCRIPTION("Tests for hang detection and recovery");
>>>>>> -/* Requires master for STORE_DWORD on gen4/5 */
>>>>>> -static void store(int fd, const struct intel_execution_engine2 *e,
>>>>>> -		  int fence, uint32_t target, unsigned offset_value)
>>>>>> -{
>>>>>> -	const int SCRATCH = 0;
>>>>>> -	const int BATCH = 1;
>>>>>> -	const int gen = intel_gen(intel_get_drm_devid(fd));
>>>>>> -	struct drm_i915_gem_exec_object2 obj[2];
>>>>>> -	struct drm_i915_gem_relocation_entry reloc;
>>>>>> -	struct drm_i915_gem_execbuffer2 execbuf;
>>>>>> -	uint32_t batch[16];
>>>>>> -	int i;
>>>>>> -
>>>>>> -	memset(&execbuf, 0, sizeof(execbuf));
>>>>>> -	execbuf.buffers_ptr = to_user_pointer(obj);
>>>>>> -	execbuf.buffer_count = ARRAY_SIZE(obj);
>>>>>> -	execbuf.flags = e->flags;
>>>>>> -	if (fence != -1) {
>>>>>> -		execbuf.flags |= I915_EXEC_FENCE_IN;
>>>>>> -		execbuf.rsvd2 = fence;
>>>>>> -	}
>>>>>> -	if (gen < 6)
>>>>>> -		execbuf.flags |= I915_EXEC_SECURE;
>>>>>> -
>>>>>> -	memset(obj, 0, sizeof(obj));
>>>>>> -	obj[SCRATCH].handle = target;
>>>>>> -
>>>>>> -	obj[BATCH].handle = gem_create(fd, 4096);
>>>>>> -	obj[BATCH].relocs_ptr = to_user_pointer(&reloc);
>>>>>> -	obj[BATCH].relocation_count = 1;
>>>>>> -	memset(&reloc, 0, sizeof(reloc));
>>>>>> -
>>>>>> -	i = 0;
>>>>>> -	reloc.target_handle = obj[SCRATCH].handle;
>>>>>> -	reloc.presumed_offset = -1;
>>>>>> -	reloc.offset = sizeof(uint32_t) * (i + 1);
>>>>>> -	reloc.delta = sizeof(uint32_t) * offset_value;
>>>>>> -	reloc.read_domains = I915_GEM_DOMAIN_INSTRUCTION;
>>>>>> -	reloc.write_domain = I915_GEM_DOMAIN_INSTRUCTION;
>>>>>> -	batch[i] = MI_STORE_DWORD_IMM | (gen < 6 ? 1 << 22 : 0);
>>>>>> -	if (gen >= 8) {
>>>>>> -		batch[++i] = reloc.delta;
>>>>>> -		batch[++i] = 0;
>>>>>> -	} else if (gen >= 4) {
>>>>>> -		batch[++i] = 0;
>>>>>> -		batch[++i] = reloc.delta;
>>>>>> -		reloc.offset += sizeof(uint32_t);
>>>>>> -	} else {
>>>>>> -		batch[i]--;
>>>>>> -		batch[++i] = reloc.delta;
>>>>>> -	}
>>>>>> -	batch[++i] = offset_value;
>>>>>> -	batch[++i] = MI_BATCH_BUFFER_END;
>>>>>> -	gem_write(fd, obj[BATCH].handle, 0, batch, sizeof(batch));
>>>>>> -	gem_execbuf(fd, &execbuf);
>>>>>> -	gem_close(fd, obj[BATCH].handle);
>>>>>> -}
>>>>>> -
>>>>>>     static void check_alive(void)
>>>>>>     {
>>>>>>     	const struct intel_execution_engine2 *engine;
>>>>>> @@ -138,7 +81,7 @@ static void check_alive(void)
>>>>>>     			continue;
>>>>>>     		/* +OFFSET_ALIVE to ensure engine zero doesn't get a false negative */
>>>>>> -		store(fd, engine, -1, scratch, i + OFFSET_ALIVE);
>>>>>> +		igt_store_word(fd, ahnd, ctx, engine, -1, scratch, i + OFFSET_ALIVE, i + OFFSET_ALIVE);
>>>>>>     		i++;
>>>>>>     	}
>>>>>> -- 
>>>>>> 2.25.1
>>>>>>

