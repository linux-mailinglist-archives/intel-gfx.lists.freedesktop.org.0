Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E32DB61FEDA
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 20:45:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4986C10E3E4;
	Mon,  7 Nov 2022 19:45:22 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 195A010E3E0;
 Mon,  7 Nov 2022 19:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667850318; x=1699386318;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ufYRfx1NOh2aPFI+T9OqqWRBikLjTyCyR9FEytloSpc=;
 b=ngYE2dtB1Rdso8JrxhvppbzJ9xW2+PqAtFGFsx8kxjk0C3+s0liUVqNs
 7c1oUYYwCy0uXRDhY5loXFnIoE/80af6GUDmxPsDtTGWol7N2cBBqepsE
 nv2RikNY7WKWJPR1NYni/btI/deS4NE0BnSUapg3b9Gx+B5I27J1BPBDx
 FJkGeZ/oS1zZ5Ns4iDhaWQ6KDxzZVIlmXRswXUe4quauD/JhEiWN/yOBG
 zQ7b+5e7kJUhLxdShCXW87V+LZILeSGp8cGzIClp5Z8IzA3ZPwZiYwVgd
 i6hIzwgz1qSzaiOk/po/Pj5MCwPUf6uP0B1uCdWUooQnaQ6DLz6aDFbt9 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="298021005"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="298021005"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 11:45:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="587102955"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="587102955"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 07 Nov 2022 11:45:17 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 7 Nov 2022 11:45:16 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 7 Nov 2022 11:45:16 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 7 Nov 2022 11:45:16 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 7 Nov 2022 11:45:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nJ/SB5IClyCwmXky12+/WIS7Uk2AdZMtNkFrtHjumuB4W+bvWFs0dYM/u6eUEHQcvg03aPLvFqEaNj/8dailH1x9kHlcW+N1Nu58SNfwtNAWFZnK8Aw6wch3sCdgoqbSpqdi5P3gDr99WKoE9VICxOb2cBCeXWkVw/9HfrNJBAWNBC7QN3r14DJwbyMmSBcYtteBgVcseG8kkctyqKYQjtMsRFBIsPkDfATkeKTEJKJp8eUUG4vehFlHKN5hhf49Sm2YE2Tjo3BNz+EhVzGcm4+RPbohGVtpBFt5aIuPakzycyhh7ha6/9OkHL9UdtqSKLIUQVUnt5SyiJd55of7BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=swRU+UplJjhfaUDegFviSmO/kqPwti9muuC5X3+aNEU=;
 b=IicQqW78HYVlntSj5Ea7lrubiaXiBuYe0s9sPOuFXkoLWeJ1m92gz/79O7iWHdWPuRBrnr69kn7mYI7vub4l2hlVfEJb6gemWdTc/50vB4Ufo7VQ/s7yHjNLnu2QwaaekRq/ceYvPa/7aJNaw6ue+0URRn5wuwq76ckx7ESTfYYACUtthSvh1E5WyvbFbvgwn5RexkgDMqKn8X4aZ+8icc2K/1ZuJOUpCsMfQ2NPnSX339Shsc5Scqz9T4jm+WtjAWio3TlAT1f+WwUUEQJ4KyHRJJklb6+yeaUe/1hzYSBTu8xT/fBopBX4nbi2B7HpBT01sYsxtmEAUyu7PL/Rrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by SA2PR11MB5097.namprd11.prod.outlook.com (2603:10b6:806:11a::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.25; Mon, 7 Nov
 2022 19:45:08 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::87a1:bf2f:7377:3036]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::87a1:bf2f:7377:3036%7]) with mapi id 15.20.5791.026; Mon, 7 Nov 2022
 19:45:08 +0000
Message-ID: <29da7440-7c92-9fba-394e-d92df68b4e73@intel.com>
Date: Mon, 7 Nov 2022 11:45:05 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-GB
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, <Intel-GFX@Lists.FreeDesktop.Org>
References: <20221101235053.1650364-1-John.C.Harrison@Intel.com>
 <87k04d7dyn.fsf@intel.com>
 <c710a428-50f6-6181-3f93-4d7667a9ac3f@linux.intel.com>
 <5e22de43-d75c-fc21-9ae7-f27d116c5688@intel.com>
 <1855f0f2-8a1c-7bf4-76c0-76a4354ea8e8@linux.intel.com>
 <2b2eb780-08f7-c7df-0397-a7f732da272d@linux.intel.com>
 <5fad1ec1-8fea-9685-4cc9-2e3c2edf799f@intel.com>
 <448d710a-3af1-932d-c276-7c6fd6c02528@linux.intel.com>
 <f3de3596-871a-2af3-e72b-f4c66d5e7211@intel.com>
 <838f1d78-1d7c-c82e-0c70-b8c1fc0cebff@linux.intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <838f1d78-1d7c-c82e-0c70-b8c1fc0cebff@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR05CA0043.namprd05.prod.outlook.com
 (2603:10b6:a03:74::20) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|SA2PR11MB5097:EE_
X-MS-Office365-Filtering-Correlation-Id: effbfe0e-976a-4107-ae98-08dac0f892e8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: e38i95x/e/h+ehcyO0RGanbCKaji3VYi2vl1mt4H/7C3AauTAbNA/iBhhRtPnxdrUaNQWXnzn/hM1Ug08TdYGYnoA7a8i/NVpE3YWV2y4oEkia5SqIob/E/k2W91JW6uojmhLDid30JSzuyYCHYdPrnugDiU6OXHEtwm6U8gN4Yoq4O19xLM0AcggZ9SQoBqzWK51xY4svuDv6QUuLMr1IEceaWrY8jgRf1wC0xKWRO6sS5ctTbsieLF/XKwZDYHtLasPg/TGsWqx3ERn7ctLbWWeMwa7YCRorvqMdQuFzOiBXro5ascTOMLGk5AwzDiHC/I+b8XZzkXGlrJOOPnz2nqnRSsYilYRAxxf5OUnYLp5zckst7l6Iv0SFkq4fyBouWGuWPVvDZUBwXQuM4NBMjNIJkh0xHtUDl89rJdrID37n1NbaupM7X/NKFdmL+s3nNHUp/VibUPv1swBIZRM0rnr14FhupUAqRrLrNJ1gjUykwHa8kaGEbQUpdKHAf7TC7By7CNYqu470Vmwu6/tPx/t8JpZ6nfL2SkhtG9amifysUld+eAfGaqxtT3/aHErp6d+oZnm9Ept1DYZO9ydvIcHtMVnLLW/DhK65BxaBtFSvwsFgPWtRPQCNVSRblDKEDIeWNnnP2f1aDAOHXeOCIa7DkuI4ga6fEVyRD39c/6WQgacM81pyZ4BR/wFA8nwb30LVXYqmegf5i5Ey8FWNs4QnR96BKRIGIFgwPisoPbXsuaTUJuXqyMAIYsYbr6xw37r8vvyPXSWCpgmO3iwvGheUSIcyFAuB/O3kApvKA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(136003)(376002)(39860400002)(396003)(451199015)(26005)(6506007)(83380400001)(6512007)(53546011)(82960400001)(186003)(38100700002)(41300700001)(4326008)(5660300002)(2616005)(30864003)(2906002)(66476007)(66556008)(6486002)(8936002)(110136005)(478600001)(6666004)(66946007)(8676002)(316002)(31686004)(36756003)(31696002)(86362001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b0VuY1lQOUt2QVNyYXAyNnZWWVh2TzZzN05BbktHZGxVZDQrWVB6aWVQcUJv?=
 =?utf-8?B?TndIQlRaMzQ3amFydFNrUXNmRVM1S0JrL2xhdFBvUDZyQVJGNnN5eHBIWk1z?=
 =?utf-8?B?QlQvcnlFTlJsYXV1RWF4Rkl5ZDV5ck4vOVI1eEJWcmRNNUNsZVdDalp0N3Qr?=
 =?utf-8?B?RzcxYW1aZXRrMFhXZDVNemlZc3ZrZ2VldU16MGRUakdvK3RVYWJzYlRzU3Ft?=
 =?utf-8?B?elFJTmJ5bi9mdDlaZU1SQm5wdFJQTTQ2M0htd3A4MGdySEpJNFBoc01FWm56?=
 =?utf-8?B?SlJoeEFwMlc1bEF2N3NvMnVaWkhDZmJUQ3lxZDdxMjBWdGVNK1VtUndZb0xW?=
 =?utf-8?B?MVVSeXJza3lrcG9MSStiQUwvempkR0t5VHZieXJlWVMxWStoaXE3NzlncHpD?=
 =?utf-8?B?Z0tZQlNCeW9ZdGtKWGZxbjJQK2l3aExUaDF5ZUVxaExmOW43QTZIdlJvL1ZF?=
 =?utf-8?B?RkhSbDNiT3ppVE5mbTJPbldvdzkza25kMUpqK3pLcHdLYXgrOEcyQ1J0Q09P?=
 =?utf-8?B?bFp1bnFvNWJMcHlVS0p4RCtBRlBzeHVtV29ZM2JLa3dOOFFnQk4zQmNOUG0r?=
 =?utf-8?B?cFFDS2RqeVdMVFY4dHJGRFV3czhLYjZOdElpejg5T1BmVDdqaWxvWTVMMFF3?=
 =?utf-8?B?aVNSdkFJZVhWbW5zQnIyQkYzMXFYVTNINXJlejRkdkZ1RFo5TVpMMmtsMDdp?=
 =?utf-8?B?MjJ1YnZKRkFXMHhaeDQxeGxwMUVFTU9uMm1mWThYSllCa2JMSjVqSXFWSC91?=
 =?utf-8?B?OENiOWtZWnhUa2JHNFZGd1JReEZrUUswaCtPNXQvaGxzaS9DTDVpUWh0Rlp1?=
 =?utf-8?B?Nk43YjZDNW5JZ09MeTAyeUc2UHdvQlRhNnVuOHBXOVJOOVZYZ2p4YXpsZENP?=
 =?utf-8?B?U1piMTlTWGd0ejdzKzRNdm5abEhIdUdNWTZab2x0aTRrdldlSnBkNWlKNFhk?=
 =?utf-8?B?NDhuT3d4WVludy9obGhOclh5N3lvTms2N3AwR1VabnNTVXdUQlBhOUcyWEk1?=
 =?utf-8?B?MzBHY3Fac0hUbU5VbjZUL1NzbkRCT3pPTk9jcG5YTVJaYXJVeGF5TU81Z28v?=
 =?utf-8?B?Z3dLSm5BRVhFREI3Q0NCYzNIbzF6Z1lja29kbDNvWnQ5OVF3dlExUFJJUkNR?=
 =?utf-8?B?Q3k0TkZhN2M3WmhDVFJ4aUNFaWc3QUV6OWhHTnBXZWZaNXhFeDNremVScktZ?=
 =?utf-8?B?Z3ZKYk1MV3diN21UNFNzUDhFQUhhblJ3aEVTaG1IS2kybVlBa0lJYzFVbk9a?=
 =?utf-8?B?Nyt0OXIxamxTOW1iL25wTzdGaEhyKzRscTBxaGp0dDNQeU5mWlRIeE5qbkkx?=
 =?utf-8?B?SDBYb0R6YXVIT09CbDdMeHVMMWM4Q1hhMGJiRWxQSFBZQmxxSnJhNmtjT1Bo?=
 =?utf-8?B?TnlhQThzQWNHYnYrRGR2VS96d0xFMFZxYTIzcFYva09IUHByWk1DRFpOS1g4?=
 =?utf-8?B?TER0ckRtdnJMeXdYR2NqYUV2eVAvZzJ2dlFKSnFna1pVMFlNYU5vRHJDMGRw?=
 =?utf-8?B?ZnBwUm9yVnFYUWEyRUpCUWZPdFJnYVJicklyZnVOKzZwRU5icEZaZWQ4RUN2?=
 =?utf-8?B?ckwrWE1SdkhiYzh4bDZhM0sxOTFLekVDSG4yQkY3RHdIanE4cHZKYlRVci9l?=
 =?utf-8?B?V2VnWWFpZUdZaHVTNkpaL2JoMDJ0U3FzSTRmUTVNWDFoYi9yY3BCK1FMSFVy?=
 =?utf-8?B?T2I4NVkrQlVlRlJ5SjJkeXpxeG5QY2RSLzBIdG1QWHIydmY3Zk1FRXJETUpO?=
 =?utf-8?B?UmRic2dCR0FQTTRrNmVBNTVTQTRRMG9nZ05CZTNMVnZmbG14a2dhOU5GTFhs?=
 =?utf-8?B?S2ZZVXQ2b2VORzRjKy8wRnZQNFNMT2lmdFc1ZnZXQ09USVNWSE9XRFRmelZs?=
 =?utf-8?B?UXFoSlpIQUZXUjl0dmREVFFJQkhqVm5Oby9WQ2NrdzhEb0VSYTIyM3dBWTF2?=
 =?utf-8?B?bnJMVnJ2eGd1Nlg3NlJzZnB5bzQ0RGpIUjBJUXJldlh3bnUzekg5a2FZUmJ0?=
 =?utf-8?B?Yy9PNTBCRk5LZThYSko1cDZZNDFhd25nOEJaMkdmWjZYZW5zRVlkUE5tYmc0?=
 =?utf-8?B?dUdzak9XS1FJdytmejdreko0OG16aUhkSmRrOVZDdy9NQU9VSzZYeHJYYUl1?=
 =?utf-8?B?NkJoUFBFdlBBQ003SEVwVXJYLzR1WkhQMlFSZHlWbXFHV3BweTNCZklrRXU3?=
 =?utf-8?B?WUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: effbfe0e-976a-4107-ae98-08dac0f892e8
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2022 19:45:07.9085 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jhufzWHDFbp1tprtyLzbO/+oD97X3gJ3U3RYiqhmipfjolTWUFBj7myFbsj9JTE5tzzeDX59ZiW1pzGF8WH0Wq9pmmJ/Qri9yR9y8QWkLDg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5097
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't wait forever in drop_caches
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 11/7/2022 06:09, Tvrtko Ursulin wrote:
> On 04/11/2022 17:45, John Harrison wrote:
>> On 11/4/2022 03:01, Tvrtko Ursulin wrote:
>>> On 03/11/2022 19:16, John Harrison wrote:
>>>> On 11/3/2022 02:38, Tvrtko Ursulin wrote:
>>>>> On 03/11/2022 09:18, Tvrtko Ursulin wrote:
>>>>>> On 03/11/2022 01:33, John Harrison wrote:
>>>>>>> On 11/2/2022 07:20, Tvrtko Ursulin wrote:
>>>>>>>> On 02/11/2022 12:12, Jani Nikula wrote:
>>>>>>>>> On Tue, 01 Nov 2022, John.C.Harrison@Intel.com wrote:
>>>>>>>>>> From: John Harrison <John.C.Harrison@Intel.com>
>>>>>>>>>>
>>>>>>>>>> At the end of each test, IGT does a drop caches call via 
>>>>>>>>>> sysfs with
>>>>>>>>>
>>>>>>>>> sysfs?
>>>>>>> Sorry, that was meant to say debugfs. I've also been working on 
>>>>>>> some sysfs IGT issues and evidently got my wires crossed!
>>>>>>>
>>>>>>>>>
>>>>>>>>>> special flags set. One of the possible paths waits for idle 
>>>>>>>>>> with an
>>>>>>>>>> infinite timeout. That causes problems for debugging issues 
>>>>>>>>>> when CI
>>>>>>>>>> catches a "can't go idle" test failure. Best case, the CI 
>>>>>>>>>> system times
>>>>>>>>>> out (after 90s), attempts a bunch of state dump actions and then
>>>>>>>>>> reboots the system to recover it. Worst case, the CI system 
>>>>>>>>>> can't do
>>>>>>>>>> anything at all and then times out (after 1000s) and simply 
>>>>>>>>>> reboots.
>>>>>>>>>> Sometimes a serial port log of dmesg might be available, 
>>>>>>>>>> sometimes not.
>>>>>>>>>>
>>>>>>>>>> So rather than making life hard for ourselves, change the 
>>>>>>>>>> timeout to
>>>>>>>>>> be 10s rather than infinite. Also, trigger the standard
>>>>>>>>>> wedge/reset/recover sequence so that testing can continue with a
>>>>>>>>>> working system (if possible).
>>>>>>>>>>
>>>>>>>>>> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>>>>>>>>>> ---
>>>>>>>>>>   drivers/gpu/drm/i915/i915_debugfs.c | 7 ++++++-
>>>>>>>>>>   1 file changed, 6 insertions(+), 1 deletion(-)
>>>>>>>>>>
>>>>>>>>>> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c 
>>>>>>>>>> b/drivers/gpu/drm/i915/i915_debugfs.c
>>>>>>>>>> index ae987e92251dd..9d916fbbfc27c 100644
>>>>>>>>>> --- a/drivers/gpu/drm/i915/i915_debugfs.c
>>>>>>>>>> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
>>>>>>>>>> @@ -641,6 +641,9 @@ 
>>>>>>>>>> DEFINE_SIMPLE_ATTRIBUTE(i915_perf_noa_delay_fops,
>>>>>>>>>>             DROP_RESET_ACTIVE | \
>>>>>>>>>>             DROP_RESET_SEQNO | \
>>>>>>>>>>             DROP_RCU)
>>>>>>>>>> +
>>>>>>>>>> +#define DROP_IDLE_TIMEOUT    (HZ * 10)
>>>>>>>>>
>>>>>>>>> I915_IDLE_ENGINES_TIMEOUT is defined in i915_drv.h. It's also 
>>>>>>>>> only used
>>>>>>>>> here.
>>>>>>>>
>>>>>>>> So move here, dropping i915 prefix, next to the newly proposed 
>>>>>>>> one?
>>>>>>> Sure, can do that.
>>>>>>>
>>>>>>>>
>>>>>>>>> I915_GEM_IDLE_TIMEOUT is defined in i915_gem.h. It's only used in
>>>>>>>>> gt/intel_gt.c.
>>>>>>>>
>>>>>>>> Move there and rename to GT_IDLE_TIMEOUT?
>>>>>>>>
>>>>>>>>> I915_GT_SUSPEND_IDLE_TIMEOUT is defined and used only in 
>>>>>>>>> intel_gt_pm.c.
>>>>>>>>
>>>>>>>> No action needed, maybe drop i915 prefix if wanted.
>>>>>>>>
>>>>>>> These two are totally unrelated and in code not being touched by 
>>>>>>> this change. I would rather not conflate changing random other 
>>>>>>> things with fixing this specific issue.
>>>>>>>
>>>>>>>>> I915_IDLE_ENGINES_TIMEOUT is in ms, the rest are in jiffies.
>>>>>>>>
>>>>>>>> Add _MS suffix if wanted.
>>>>>>>>
>>>>>>>>> My head spins.
>>>>>>>>
>>>>>>>> I follow and raise that the newly proposed DROP_IDLE_TIMEOUT 
>>>>>>>> applies to DROP_ACTIVE and not only DROP_IDLE.
>>>>>>> My original intention for the name was that is the 'drop caches 
>>>>>>> timeout for intel_gt_wait_for_idle'. Which is quite the mouthful 
>>>>>>> and hence abbreviated to DROP_IDLE_TIMEOUT. But yes, I realised 
>>>>>>> later that name can be conflated with the DROP_IDLE flag. Will 
>>>>>>> rename.
>>>>>>>
>>>>>>>
>>>>>>>>
>>>>>>>> Things get refactored, code moves around, bits get left behind, 
>>>>>>>> who knows. No reason to get too worked up. :) As long as people 
>>>>>>>> are taking a wider view when touching the code base, and are 
>>>>>>>> not afraid to send cleanups, things should be good.
>>>>>>> On the other hand, if every patch gets blocked in code review 
>>>>>>> because someone points out some completely unrelated piece of 
>>>>>>> code could be a bit better then nothing ever gets fixed. If you 
>>>>>>> spot something that you think should be improved, isn't the 
>>>>>>> general idea that you should post a patch yourself to improve it?
>>>>>>
>>>>>> There's two maintainers per branch and an order of magnitude or 
>>>>>> two more developers so it'd be nice if cleanups would just be 
>>>>>> incoming on self-initiative basis. ;)
>>>>>>
>>>>>>>> For the actual functional change at hand - it would be nice if 
>>>>>>>> code paths in question could handle SIGINT and then we could 
>>>>>>>> punt the decision on how long someone wants to wait purely to 
>>>>>>>> userspace. But it's probably hard and it's only debugfs so 
>>>>>>>> whatever.
>>>>>>>>
>>>>>>> The code paths in question will already abort on a signal won't 
>>>>>>> they? Both intel_gt_wait_for_idle() and 
>>>>>>> intel_guc_wait_for_pending_msg(), which is where the 
>>>>>>> uc_wait_for_idle eventually ends up, have an 'if(signal_pending) 
>>>>>>> return -EINTR;' check. Beyond that, it sounds like what you are 
>>>>>>> asking for is a change in the IGT libraries and/or CI framework 
>>>>>>> to start sending signals after some specific timeout. That seems 
>>>>>>> like a significantly more complex change (in terms of the number 
>>>>>>> of entities affected and number of groups involved) and 
>>>>>>> unnecessary.
>>>>>>
>>>>>> If you say so, I haven't looked at them all. But if the code path 
>>>>>> in question already aborts on signals then I am not sure what is 
>>>>>> the patch fixing? I assumed you are trying to avoid the write 
>>>>>> stuck in D forever, which then prevents driver unload and 
>>>>>> everything, requiring the test runner to eventually reboot. If 
>>>>>> you say SIGINT works then you can already recover from userspace, 
>>>>>> no?
>>>>>>
>>>>>>>> Whether or not 10s is enough CI will hopefully tell us. I'd 
>>>>>>>> probably err on the side of safety and make it longer, but at 
>>>>>>>> most half from the test runner timeout.
>>>>>>> This is supposed to be test clean up. This is not about how long 
>>>>>>> a particular test takes to complete but about how long it takes 
>>>>>>> to declare the system broken after the test has already 
>>>>>>> finished. I would argue that even 10s is massively longer than 
>>>>>>> required.
>>>>>>>
>>>>>>>>
>>>>>>>> I am not convinced that wedging is correct though. Conceptually 
>>>>>>>> could be just that the timeout is too short. What does wedging 
>>>>>>>> really give us, on top of limiting the wait, when latter AFAIU 
>>>>>>>> is the key factor which would prevent the need to reboot the 
>>>>>>>> machine?
>>>>>>>>
>>>>>>> It gives us a system that knows what state it is in. If we can't 
>>>>>>> idle the GT then something is very badly wrong. Wedging 
>>>>>>> indicates that. It also ensure that a full GT reset will be 
>>>>>>> attempted before the next test is run. Helping to prevent a 
>>>>>>> failure on test X from propagating into failures of unrelated 
>>>>>>> tests X+1, X+2, ... And if the GT reset does not work because 
>>>>>>> the system is really that badly broken then future tests will 
>>>>>>> not run rather than report erroneous failures.
>>>>>>>
>>>>>>> This is not about getting a more stable system for end users by 
>>>>>>> sweeping issues under the carpet and pretending all is well. End 
>>>>>>> users don't run IGTs or explicitly call dodgy debugfs entry 
>>>>>>> points. The sole motivation here is to get more accurate results 
>>>>>>> from CI. That is, correctly identifying which test has hit a 
>>>>>>> problem, getting valid debug analysis for that test (logs and 
>>>>>>> such) and allowing further testing to complete correctly in the 
>>>>>>> case where the system can be recovered.
>>>>>>
>>>>>> I don't really oppose shortening of the timeout in principle, 
>>>>>> just want a clear statement if this is something IGT / test 
>>>>>> runner could already do or not. It can apply a timeout, it can 
>>>>>> also send SIGINT, and it could even trigger a reset from outside. 
>>>>>> Sure it is debugfs hacks so general "kernel should not implement 
>>>>>> policy" need not be strictly followed, but lets have it clear 
>>>>>> what are the options.
>>>>>
>>>>> One conceptual problem with applying this policy is that the code is:
>>>>>
>>>>>     if (val & (DROP_IDLE | DROP_ACTIVE)) {
>>>>>         ret = intel_gt_wait_for_idle(gt, MAX_SCHEDULE_TIMEOUT);
>>>>>         if (ret)
>>>>>             return ret;
>>>>>     }
>>>>>
>>>>>     if (val & DROP_IDLE) {
>>>>>         ret = intel_gt_pm_wait_for_idle(gt);
>>>>>         if (ret)
>>>>>             return ret;
>>>>>     }
>>>>>
>>>>> So if someone passes in DROP_IDLE and then why would only the 
>>>>> first branch have a short timeout and wedge. Yeah some bug happens 
>>>>> to be there at the moment, but put a bug in a different place and 
>>>>> you hang on the second branch and then need another patch. Versus 
>>>>> perhaps making it all respect SIGINT and handle from outside.
>>>>>
>>>> The pm_wait_for_idle is can only called after gt_wait_for_idle has 
>>>> completed successfully. There is no route to skip the GT idle or to 
>>>> do the PM idle even if the GT idle fails. So the chances of the PM 
>>>> idle failing are greatly reduced. There would have to be something 
>>>> outside of a GT keeping the GPU awake and there isn't a whole lot 
>>>> of hardware left at that point!
>>>
>>> Well "greatly reduced" is beside my point. Point is today bug is 
>>> here and we add a timeout, tomorrow bug is there and then the same 
>>> dance. It can be just a sw bug which forgets to release the pm ref 
>>> in some circumstances, doesn't really matter.
>>>
>> Huh?
>>
>> Greatly reduced is the whole point. Today there is a bug and it 
>> causes a kernel hang which requires the CI framework to reboot the 
>> system in an extremely unfriendly way which makes it very hard to 
>> work out what happened. Logs are likely not available. We don't even 
>> necessarily know which test was being run at the time. Etc. So we 
>> replace the infinite timeout with a meaningful timeout. CI now 
>> correctly marks the single test as failing, captures all the correct 
>> logs, creates a useful bug report and continues on testing more stuff.
>
> So what is preventing CI to collect logs if IGT is forever stuck in 
> interruptible wait? Surely it can collect the logs at that point if 
> the kernel is healthy enough. If it isn't then I don't see how wedging 
> the GPU will make the kernel any healthier.
>
> Is i915 preventing better log collection or could test runner be 
> improved?
>
>> Sure, there is still the chance of hitting an infinite timeout. But 
>> that one is significantly more complicated to remove. And the chances 
>> of hitting that one are significantly smaller than the chances of 
>> hitting the first one.
>
> This statement relies on intimate knowledge implementation details and 
> a bit too much white box testing approach but that's okay, lets move 
> past this one.
>
>> So you are arguing that because I can't fix the last 0.1% of possible 
>> failures, I am not allowed to fix the first 99.9% of the failures?
>
> I am clearly not arguing for that. But we are also not talking about 
> "fixing failures" here. Just how to make CI cope better with a class 
> of i915 bugs.
>
>>>> Regarding signals, the PM idle code ends up at 
>>>> wait_var_event_killable(). I assume that is interruptible via at 
>>>> least a KILL signal if not any signal. Although it's not entirely 
>>>> clear trying to follow through the implementation of this code. 
>>>> Also, I have no idea if there is a safe way to add a timeout to 
>>>> that code (or why it wasn't already written with a timeout 
>>>> included). Someone more familiar with the wakeref internals would 
>>>> need to comment.
>>>>
>>>> However, I strongly disagree that we should not fix the driver just 
>>>> because it is possible to workaround the issue by re-writing the CI 
>>>> framework. Feel free to bring a redesign plan to the IGT WG and 
>>>> whatever equivalent CI meetings in parallel. But we absolutely 
>>>> should not have infinite waits in the kernel if there is a trivial 
>>>> way to not have infinite waits.
>>>
>>> I thought I was clear that I am not really opposed to the timeout.
>>>
>>> The rest of the paragraph I don't really care - point is moot 
>>> because it's debugfs so we can do whatever, as long as it is not 
>>> burdensome to i915, which this isn't. If either wasn't the case then 
>>> we certainly wouldn't be adding any workarounds in the kernel if it 
>>> can be achieved in IGT.
>>>
>>>> Also, sending a signal does not result in the wedge happening. I 
>>>> specifically did not want to change that code path because I was 
>>>> assuming there was a valid reason for it. If you have been 
>>>> interrupted then you are in the territory of maybe it would have 
>>>> succeeded if you just left it for a moment longer. Whereas, hitting 
>>>> the timeout says that someone very deliberately said this is too 
>>>> long to wait and therefore the system must be broken.
>>>
>>> I wanted to know specifically about wedging - why can't you 
>>> wedge/reset from IGT if DROP_IDLE times out in quiescent or 
>>> wherever, if that's what you say is the right thing? 
>> Huh?
>>
>> DROP_IDLE has two waits. One that I am trying to change from infinite 
>> to finite + wedge. One that would take considerable effort to change 
>> and would be quite invasive to a lot more of the driver and which can 
>> only be hit if the first timeout actually completed successfully and 
>> is therefore of less importance anyway. Both of those time outs 
>> appear to respect signal interrupts.
>>
>>> That's a policy decision so why would i915 wedge if an arbitrary 
>>> timeout expired? I915 is not controlling how much work there is 
>>> outstanding at the point the IGT decides to call DROP_IDLE.
>>
>> Because this is a debug test interface that is used solely by IGT 
>> after it has finished its testing. This is not about wedging the 
>> device at some random arbitrary point because an AI compute workload 
>> takes three hours to complete. This is about a very specific test 
>> framework cleaning up after testing is completed and making sure the 
>> test did not fry the system.
>>
>> And even if an IGT test was calling DROP_IDLE in the middle of a test 
>> for some reason, it should not be deliberately pushing 10+ seconds of 
>> work through and then calling a debug only interface to flush it out. 
>> If a test wants to verify that the system can cope with submitting a 
>> minutes worth of rendering and then waiting for it to complete then 
>> the test should be using official channels for that wait.
>>
>>>
>>>> Plus, infinite wait is not a valid code path in the first place so 
>>>> any change in behaviour is not really a change in behaviour. Code 
>>>> can't be relying on a kernel call to never return for its correct 
>>>> operation!
>>>
>>> Why infinite wait wouldn't be valid? Then you better change the 
>>> other one as well. ;P
>> In what universe is it ever valid to wait forever for a test to 
>> complete?
>
> Well above you claimed both paths respect SIGINT. If that is so then 
> the wait is as infinite as the IGT wanted it to be.
>
>> See above, the PM code would require much more invasive changes. This 
>> was low hanging fruit. It was supposed to be a two minute change to a 
>> very self contained section of code that would provide significant 
>> benefit to debugging a small class of very hard to debug problems.
>
> Sure, but I'd still like to know why can't you do what you want from 
> the IGT framework.
>
> Have the timeout reduction in i915, again that's fine assuming 10 
> seconds it enough to not break something by accident.
CI showed no regressions. And if someone does find a valid reason why a 
post test drop caches call should legitimately take a stupidly long time 
then it is easy to track back where the ETIME error came from and bump 
the timeout.

>
> With that change you already have broken the "infinite wait". It makes 
> the debugfs write return -ETIME in time much shorter than the test 
> runner timeout(s). What is the thing that you cannot do from IGT at 
> that point is my question? You want to wedge then? Send 
> DROP_RESET_ACTIVE to do it for you? If that doesn't work add a new 
> flag which will wedge explicitly.
>
> We are again degrading into a huge philosophical discussion and all I 
> wanted to start with is to hear how exactly things go bad.
>
I have no idea what you are wanting. I am trying to have a technical 
discussion about improving the stability of the driver during CI 
testing. I have no idea if you are arguing that this change is good, 
bad, broken, wrong direction or what.

Things go bad as explained in the commit message. The CI framework does 
not use signals. The IGT framework does not use signals. There is no 
watchdog that sends a TERM or KILL signal after a specified timeout. All 
that happens is the IGT sits there forever waiting for the drop caches 
IOCTL to return. The CI framework eventually gives up waiting for the 
test to complete and tries to recover. There are many different CI 
frameworks in use across Intel. Some timeout quickly, some timeout 
slowly. But basically, they all eventually give up and don't bother 
trying any kind of remedial action but just hit the reset button 
(sometimes by literally power cycling the DUT). As result, background 
processes that are saving dmesg, stdout, etc do not necessarily 
terminate cleanly. That results in logs that are at best truncated, at 
worst missing entirely. It also results in some frameworks aborting 
testing at that point. So no results are generated for all the other 
tests that have yet to be run. Some frameworks also run tests in 
batches. All they log is that something, somewhere in the batch died. So 
you don't even know which specific test actually hit the problem.

Can the CI frameworks be improved? Undoubtedly. In very many ways. Is 
that something we have the ability to do with a simple patch? No. Would 
re-writing the IGT framework to add watchdog mechanisms improve things? 
Yes. Can it be done with a simple patch? No. Would a simple patch to 
i915 significantly improve the situation? Yes. Will it solve every 
possible CI hang? No. Will it fix any actual end user visible bugs? No. 
Will it introduce any new bugs? No. Will it help us to debug at least 
some CI failures? Yes.

John.

> Regards,
>
> Tvrtko

