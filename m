Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E75B34A9157
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 00:58:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA48F10E750;
	Thu,  3 Feb 2022 23:58:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FAE010E750
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 23:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643932726; x=1675468726;
 h=message-id:date:subject:to:references:cc:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bKqYGWIPW81HmivJ4o1hdKlyrKRiZKHTy2O7eX5hHxs=;
 b=BLAjRDObyrnVBffmrrF8kssUMk9ivEx7HZ5tRZKyyug/PmT74323qk7Q
 3G7GFWOw6Td0Ksz0/vkZMdgGTQTcs5EJzAcg3pKOw9NgqeIBW/iNbhx3l
 EP9juRsItk5LjIMDNch6zvf50M7/WHT9gz0oz4/bxD0xbA3Y4DFq6fw2W
 VyrcsQ6ryiEupSmaRY6v/GdlwX5eWBRpkAJr060GnTjXbUL0WJHL09TcA
 //6Za+D6+3MralNLRWObm10Tx3p+QYmmnGqTv0ycwtV/GvjsMEsTV6SYg
 7IJ4Afq7mkqYVsws+pCbwDpoJVswLBxjzWvd4PIzWQhpBVaSiUx2r67rj A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="309021748"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="309021748"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 15:58:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="631534430"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 03 Feb 2022 15:58:45 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 3 Feb 2022 15:58:45 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 3 Feb 2022 15:58:45 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 3 Feb 2022 15:58:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KLFnZRKyANvxPD4UapwFEHfgNJgbv2+XavSpToObeIxQ2sy+v8EOLoJ41rORqTVTac3LG1vZPOZ+7KDZF3hCpWLlZ/Y4qUgK8qtfMlmcsdAaSijYPAdrIDgH3TYLpx3puDyVY34Fz9r/lQbv4vFf/vBzauvSMOPEfA97CtnXaqcB1RB7Jbd+SkYi3FsKn6J8GJs6A03YIXL09kz1sOuIj5Sq5Q5FbPlUPO41SQzVWKGj4zMNhyphFUHq59ag2pMa+4DZd4gVZh0T73Mp5iXkG3OJqUGkdAZaHQ6HLsCfizLfiEmOaQXreifihbaZERk9JttIoHTDfYYN/igZ2zZzAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a5VG9LrBSfnYTXp0qBSuZR/3gvC1qYvqc2wMUkXT9Ws=;
 b=ivYGomaf+U94jdW3NCPRwlHLJ5H53VeUi5xY5ygSwYHnpp+tfDoqr2IsU5M5pdH1/NZ8w3E+DOUXpEhtj9VBwRFwhWlCQw8HyMDuKM63ZlOB003TDDdNTPV03E8wiVB48EobO7DiiXu6v7C8TbsDwLy+HDgqIwHezJAtMUOpOwG2JMIisxzT0+m4y6ZkefxbGbCKsdOs6QzQ49D6VLVQAPc6YjiA45gXNTr9AfroinGm1WpH6rlQZn2LEWivj+t/6W90Uwq7Faxml+OsnLip+xwcyEeAL071xFgfuopg73ywaBMYJPE7vj8qu4hy94CSm6OoyKtOEeJ0FEqsZASsmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2936.namprd11.prod.outlook.com (2603:10b6:a03:8c::17)
 by MWHPR1101MB2110.namprd11.prod.outlook.com (2603:10b6:301:4f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.18; Thu, 3 Feb
 2022 23:58:42 +0000
Received: from BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::b17c:48f8:6fba:4a9]) by BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::b17c:48f8:6fba:4a9%5]) with mapi id 15.20.4951.012; Thu, 3 Feb 2022
 23:58:42 +0000
Message-ID: <8b4a43ef-c2d9-fa9b-a6b5-47bb22457e5b@intel.com>
Date: Thu, 3 Feb 2022 15:58:39 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20220120221652.207255-1-casey.g.bowman@intel.com>
From: Casey Bowman <casey.g.bowman@intel.com>
In-Reply-To: <20220120221652.207255-1-casey.g.bowman@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR03CA0010.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::20) To BYAPR11MB2936.namprd11.prod.outlook.com
 (2603:10b6:a03:8c::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6dc47b97-9a5c-4396-6d89-08d9e7711b20
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2110:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <MWHPR1101MB2110680F699B2B9A45113BA7DD289@MWHPR1101MB2110.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vImoTMFDB8j1mQEGsspxnQsHvq2dftle/A3h1kYRQV4XtJvOVIbwZB4tAGfbPT0Tx7oDaXyMIT0ckVLzNrLQIOeLTY1mpAbII6emfBCrm5pXff9IUS12j37PvxjCTWpjvnqFjxor0M7oQ7BkrmsUAdAbsWG9qskFkdxB5fG31ScJcIIsrrebe7n8OdsP2+mynzzSvy3572fx5ZFEMzucYMxDUTf4pr4UaELsPi0s+Eel0lfET2Cj/+4JUA69WdBYwHpz4PNk+f3Lpy3JXyO9DObjfys1O86TS4BGHz24BBqolCzTNDhMUGjdtjSHF1/CYykfffNxgJBjLmfpvy0hp0YQXerkZmdC8nJ7tB6sp7oX+f+WeLVEVabughccQFai5dUaH+yKkWmiPDCeTxxkuxRm5cnQVhqiOXgYpOWfNH9AYhBROgMl96GG8e/5htfNCoVfaWb5UhhXRbiR2fGho6w/LZNWzmfD/yLiiq54Kb4vmvO5sIBRnxx59Jt8dExyC73L3peOKRbat8CTh7IR/1W5dSjZS7Xi0ul9rbqOmGu71QaiEyibTM0q7VKcCxcXUwygqSl8TL8zO7dsChw2yNPRg0sZSTtXgcnYDmPgxxW5RHWf0avC38f53i7hzsyOpUqHXouwjL2qS/G9FwGBoq2KmCCC89Yd0c24etysli/5SJMrpSYIEphzp5sYJixxQdq3F2JdNQj3inaOMKJr4ViSA5JdfAtsoAJYH51ToYVjpcdaOCCkctf8rH0YjCm5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2936.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66476007)(54906003)(26005)(186003)(316002)(6512007)(2906002)(8936002)(66556008)(8676002)(107886003)(2616005)(31686004)(86362001)(83380400001)(36756003)(6916009)(31696002)(53546011)(6506007)(66946007)(6666004)(82960400001)(38100700002)(4326008)(6486002)(5660300002)(508600001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eXZZN0IzWTlCbGNmTVl3L1l2M0F2emFYd3dTSE9RQmRnQjh3ZU1XK1pDN3Z4?=
 =?utf-8?B?MHJNemx1VFViTWw4YVVITGM4K2Vqdy9BdzR1QXFuaHpXMEQ4dWRSU1l0T0J0?=
 =?utf-8?B?UnVZNDRnV2xLRzZ2blMxTi8xbm5EbnhvKzdkbjRXUExmN1BZZ3ViSWN5OStN?=
 =?utf-8?B?bkVrUTdHY0ZtRXhSZzVxUVF0aElPL3cvaFR5UzRldDFUOEZhQWIyQjhzYWxj?=
 =?utf-8?B?MXY4ektmckJXNExlUUVBeXVZRjhHTDZZTlpVN3ljQnBEVzhMcUhTUHJ6bm9Y?=
 =?utf-8?B?L2EybUVrbVVPMEtaYnZpSzZVblNLRUpUTnpIdVRsY1RQTWhhYVB0MnhiSTZr?=
 =?utf-8?B?b3Z4YnRPWlYvaXBiQWE5cjhOT2ovQTdIQkx0eVE1elpXWVJvRG5vZ3lDMnJO?=
 =?utf-8?B?OUUzQWdFWUJzYlNnWktPQ01EUzhZRDhudFM5azROWldpWERCVWFxSE9iRjZ0?=
 =?utf-8?B?R2pqZ21zSWUxQVZrZDhIa285dGx0R1o5REpHdGN3ekZZQ0VqN2VBMlR4T3hx?=
 =?utf-8?B?blIzai9zRXlZNk5nSzFhNmtVNFlSMHA3T2xrelowTjlnMmd0aG45SnFSWjlY?=
 =?utf-8?B?L250emZzWWFCV0c4SGR5VlBmUXRwUVVBbkNtTGxORXR0THB1RVpRWEVOUGhW?=
 =?utf-8?B?YjRQSkRoWW9NZnZ1UEpMR3gwWXE5VHFnL0w3alA1YXRzTllFWFpVamdWQUk4?=
 =?utf-8?B?ZzVkN1JiMVJLM0JoYjF2VDNPcnpocHdnNXkxM1AvNjI4RVZROFdKMXNhNlZa?=
 =?utf-8?B?Z212WVBKUXFlMm5oZnZTc2h3MHRYL3pnWVgxS3BwMzlCQlJpKzBIRk5YNm1k?=
 =?utf-8?B?SlJ6Q1pMSzBGOVQ5NU5rRnN5WHo3bTNYOVJGeStYUFlFVTBBMEQ4c1FLenJT?=
 =?utf-8?B?ZmhxUXpxSDFqSjNoYVdsZU5VM24rTGJUNGltUGZvV1F4THAzUU0wTjZheCsr?=
 =?utf-8?B?UWFTbmJDOXJ4emZmTW01SEVwazFuUUxnajBpWUd1NTF4SU9tSk91QmcwdmJV?=
 =?utf-8?B?UHJiaWdUZEpmcUhpQWdzSHNicGdobHp2azNmQUNnd3IvMFN4UkQzUGtCSllu?=
 =?utf-8?B?ejVXTVBWZlRVZ2pLdW5rMi9sNERybGxKOG1rZEJUQnVSNTFIMXZ2Qlh4Qmd3?=
 =?utf-8?B?L3cvdVdSbm04UEpCdUM0R1Y4K3dUNTdEQ0dCYVFwUlIzMCtzZ1FWRTkvZnB5?=
 =?utf-8?B?T1Y4L0E1dko2eG9reThpOG4xN0NoRnJpeFp0MUJQNjl3TWo1WVFmS1lSMTQ2?=
 =?utf-8?B?dzhMUk5zQStrdlpWZWVCdzRUMXZEM1g5Y0ErQUhnNExtYzZ1d0tyb2N6b3Vk?=
 =?utf-8?B?ZllnSjNkSmJ0OXBjdXJ2NHNxOTFyY0ZVeVlHN3FDY29zWHF2L3B2cGVPYkhu?=
 =?utf-8?B?VGlqOFhHdnppYUgvOS9GdGRpYVVlbUNINXRUYnh3SXdCUTd6cVhqbDc3ci9q?=
 =?utf-8?B?YmhIMEdsUW0vRmw5NURXeHZVdW5OdTlGTmxKQTZ6UW9HUDMvU3RaNUYrZ0Vq?=
 =?utf-8?B?VnN1cTE5V3lneUZCRTBXYXAxZy90ZEE4TkRkQ0RkbUhKc0ZRbjNVRzY5NUI5?=
 =?utf-8?B?c3ZwN2JZQVJMYUIzSU9tZXdLdnhKcmtRcWFQMTZTVTd3azd5MkFkZ1RiRzRm?=
 =?utf-8?B?UnI5QTlyb3lLMUJDY052YmY0aHlpZ1J4eXNKa1RjSmJOaHc5NnRNVDVWdFNI?=
 =?utf-8?B?Qy90YWRKTk5wU0dIU2Nvc2wvSERhRXc0OXB0aVR3V3E3VmlqekFtSk5KaG95?=
 =?utf-8?B?b1RnRGxUZTd5R3pKMS92UDdJVHU3eFVITk5QbWRRejFrbmNhQi8wNEdEcU5Y?=
 =?utf-8?B?QkRWbUd6Z0JwMkNrTXFSNjNsSWVJQitWNy9Rd1BKbVBTOG02WldVcndLY1BX?=
 =?utf-8?B?dHoydHpieFdFYXRuMm5zK3ZzalJUM1E1OXA4NGJVK0xWTVN4cldiamxJZ0ps?=
 =?utf-8?B?L0VFT0ZNcFJHbGVuVFUyV0tOZ2NJNnJpdWNZNnN2QlVER0VKT2JBOWFUQnF5?=
 =?utf-8?B?VU1xNkdCVGk3Zi9yVyt6QnBTSzRBUFVyOWdaOXd4dmtQS0c4RjBJMHhJWElE?=
 =?utf-8?B?RDdqOWtkUElQTncwdGc0SzRNa3lOc1ZwdGk4dmVaM2hobWl1Z0hyMnJkTXA0?=
 =?utf-8?B?cW5VVDVoeWhXTkNkOVU1dm9manNGWExjK3lheTIzRkYwRlowMTlDZUd5ejdK?=
 =?utf-8?B?cTdsM29mbmZ6Z3ZDT3hDLzhNcjlienlNMG1rSGNDcm8vOWlNNUV2eG5PQ0N5?=
 =?utf-8?Q?0W/DrL6Y//yDUwIhxKdNSpAyerf7KTJGdJ7EkU+Jow=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dc47b97-9a5c-4396-6d89-08d9e7711b20
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2936.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2022 23:58:42.3785 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sTViPXDebYP84a8KmThkjt3m4v/jEoExrMD3qlBTcZRM7vecVvD/zJOxMK9CA3RMXHJEFaK5PtnY5R+jxNQYyd+DHsJZIDDVfVpZbDt1Ugc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2110
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC PATCH 0/1] Splitting up platform-specific calls
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
Cc: Jani Nikula <jani.nikula@intel.com>, Daniel
 Vetter <daniel.vetter@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CC'ing more reviewers for comments.

On 1/20/22 14:16, Casey Bowman wrote:
> In this RFC I would like to ask the community their thoughts
> on how we can best handle splitting architecture-specific
> calls.
>
> I would like to address the following:
>
> 1. How do we want to split architecture calls? Different object files
> per platform? Separate function calls within the same object file?
>
> 2. How do we address dummy functions? If we have a function call that is
> used for one or more platforms, but is not used in another, what should
> we do for this case?
>
> I've given an example of splitting an architecture call
> in my patch with run_as_guest() being split into different
> implementations for x86 and arm64 in separate object files, sharing
> a single header.
>
> Another suggestion from Michael (michael.cheng@intel.com) involved
> using a single object file, a single header, and splitting various
> functions calls via ifdefs in the header file.
>
> I would appreciate any input on how we can avoid scaling issues when
> including multiple architectures and multiple functions (as the number
> of function calls will inevitably increase with more architectures).
>
> Casey Bowman (1):
>    i915/drm: Split out x86 and arm64 functionality
>
>   drivers/gpu/drm/i915/Makefile              |  4 +++
>   drivers/gpu/drm/i915/i915_drv.h            |  6 +---
>   drivers/gpu/drm/i915/i915_platform.h       | 16 +++++++++++
>   drivers/gpu/drm/i915/i915_platform_arm64.c | 33 ++++++++++++++++++++++
>   drivers/gpu/drm/i915/i915_platform_x86.c   | 33 ++++++++++++++++++++++
>   5 files changed, 87 insertions(+), 5 deletions(-)
>   create mode 100644 drivers/gpu/drm/i915/i915_platform.h
>   create mode 100644 drivers/gpu/drm/i915/i915_platform_arm64.c
>   create mode 100644 drivers/gpu/drm/i915/i915_platform_x86.c
>
