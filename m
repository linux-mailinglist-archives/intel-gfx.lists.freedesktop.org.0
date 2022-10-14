Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF395FF190
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 17:41:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4598710E4ED;
	Fri, 14 Oct 2022 15:41:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECB3D10E4ED
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 15:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665762097; x=1697298097;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6CVHYT9c2VWGy/xIbsDvnuo1YZPJMbWji77/Bu0aRiQ=;
 b=mUAfAYnpUkMs05dAA98q+k3ITfUl4g3c8sz1s3Kmmz7Tm2yEzZ4zM/uH
 emIrJNc1dlbiLjSQlnfzyHW2YQbjbAGtAf7I8wYMuGgRxeeJJ6CZs9ioq
 J77YnRpMVmrqbSxcfrfwCsrpjz7cWM7/wOv8bVFs5U37fvU4CfjgR5YID
 8aK0+9WPsMMZNlaZbdpd+OTQgwWna8oBY/MHKCnEpjOp57D/9JmQawbtJ
 CjDqJyJ1U9WO45gz7g953O2edeSW7mQKR81X1ywLLEEe3Q7g/NhrF4jy7
 xG86T94sX77vv9wGkCXbzGUtHk5I/Y4VBprRLCLjxK+Lrte1U1mbGpAR8 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="391709062"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="391709062"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 08:41:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="696343849"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="696343849"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 14 Oct 2022 08:41:37 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 14 Oct 2022 08:41:36 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 14 Oct 2022 08:41:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 14 Oct 2022 08:41:36 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 14 Oct 2022 08:41:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GSJLXy9E0WaGF5+89yt7+6LpGRbIw5cSvuxSCSm6cZuNDdp98RChID4IAmvTxW6e8d+hrhBZAh1OYIdwROUdp5dpzMv9tL4AUO0Pn/P3a+oTDS2CRf6kelC0UZP0a0HFt9WRqBEGhDKaZ0RXJuoIcV8Z6OsdiMqcnVWWM+qP1Lmz6f3xUugasY/FTYs5Vwi73qyMXlCeLx7ZteJnP6dx4Q5SSpqZ4xFfqrlMv0PA8kbI3X2bJ+0xjl6XOiTfKr3SxHem2oEEe4Nqmlpvjo78V8GwzpFd8+Vy5LK0RMF/CgcktHsINh2B3sEPRnZjGfTn1mvRgsHtSNFeMWxCjYSBRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1XBil72UEDCRe0gCxGhXGRobZ5S+9hspMH/3eu1zTsg=;
 b=ftaDWwp0EZh7wbC2xMCL0zlXwYqLKMEpEjF9cnMnVQqZvfhdWuL7Q6yOh9pxqUSOU1FEUgyJcnm577PiLvIcxVn3w2aLnJ7SrAMIK6UZAALzULOoj6CavVVLje5ULJYN8qfs3lLHrKsyjb6TH7IoiUJdBX4AomT1SqsERlJ/oeu9BBJ8jIlTYfTw22SEcGe86hlj1uNs+in0O7uhxEQIGjgvP66dZbJGM3+bhXfyxnvKk8uttLiGKoJ1jWDUjAKywxEQlGKgEQnJKh6TfrtoSPkg+RJbL++Sb1qe6Z1af1Mc9LgoF6XUyLNi7FnnovWKKQ0BeOW72pSotfdKX57kNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by CY5PR11MB6511.namprd11.prod.outlook.com (2603:10b6:930:41::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.29; Fri, 14 Oct
 2022 15:41:34 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::2bec:f4e1:7a63:7a6f]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::2bec:f4e1:7a63:7a6f%2]) with mapi id 15.20.5723.026; Fri, 14 Oct 2022
 15:41:33 +0000
Message-ID: <58f701f5-ae57-9a2b-acd6-22db67c5eb12@intel.com>
Date: Fri, 14 Oct 2022 17:41:29 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221014152525.7683-1-nirmoy.das@intel.com>
 <87fsfqs9di.fsf@intel.com>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <87fsfqs9di.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO3P123CA0014.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:ba::19) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|CY5PR11MB6511:EE_
X-MS-Office365-Filtering-Correlation-Id: d1d4715b-8a95-4568-10f4-08daadfa925a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IKbS4OwY42d+voQ4nh1twGgP6myDq5adogc6P9OUQR7UH0uIGpYA1K+fNI+4T5kAEo6Sa4Yr1WLeFz9cb/JSJYG6SG7JEj8pPIpWcw/RoTF7nRzIUa1vhKhdEiLVmvioTjKalj2kAwy3NGOTjkUMGzKZ8WvrkDaeRaxFFYQj+UcKvrAzlfcX5K8JrC+CvC+P+hB4ASqVatN1scOrNwiKop2Q31mcQVzyeonAFcRQFKZFHKwr8ah5QsdwIxBSQ/72QMC0Fb6pVyAzDtZDh1vlwQyTaWdDjs6ArG9WOWCDT63BJDCt1ltgMX6tbJwwP8vxkNx7jWuL+d3ha4fuTXXk1f2JCxpkr9/q7R1MNsVPFf93naonFlhB/jo2mo0XyZTcv8WyUIh6Myrusj9d0d041LrUEsDOasHRJS28gbg8QJaB2synIrRiCzWHp5Ca5/gq4ZznIofxsFCtURwZWmKUzOA4H7YPpCgqeMUAR0dm+H5i9Zrafd6nBaYYHLhO5yf490D4lD9+Qtt9Jn5MNGjpkG3i3XTMZPfJa/nkLvfDJ8+buTOl0jmxQXqvytS39t27bteVua8vohavz5+O3sd1t2TNgJ2k6Cs+uThxU4/QOHv6ip+Y1rQn36qtGMWTXQtbLPmo/HwdyGh4iDdM7lqzbKQIyrMfi/C+SVpefXS8ZAedTtHW12JORdq+fOScAnE/9mgkYzR7tkVwYwMLkOQtqVfP84aT1VK6FoIUL4Pt2kBYNC/Vg1ZLzEdjG9urjy5Q
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(346002)(396003)(376002)(136003)(451199015)(5660300002)(36756003)(31696002)(86362001)(2906002)(8936002)(6486002)(966005)(41300700001)(83380400001)(26005)(6666004)(6512007)(8676002)(6506007)(53546011)(478600001)(186003)(38100700002)(2616005)(66556008)(66476007)(82960400001)(4326008)(316002)(66946007)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZGJyTVNUR1NsNSs2b1JWQngxdnE3a25vaDZVaWxwa0h5cTh3NVFPV1FqMkg1?=
 =?utf-8?B?TXU4ZlpCRXM0WGRza3Y3K0VQcDA5SmdoV0cvMmxnaTFoZHp1Mk45QnlDbEhz?=
 =?utf-8?B?cHloRUdhVzIyZ1ZoZXY1TjhFUGdLS1RWQ3FzejBvQlBxSTNvanorM2RNWU9Z?=
 =?utf-8?B?QTN2djhPMGF6OS9GeGlmZXVqTE1MZTFhSnRiU0JWNFhHZzVHaTZGNnVMSmVU?=
 =?utf-8?B?ZzVWMGRNNVhrZ2kvTElvRDVuRWNBMVBuYlJZVXd6cm10cWxsa2d4bFlON3lM?=
 =?utf-8?B?dG81d3g5SGswYTFRbzRqTHo0Wk9DY1g5dzBjY0xMdDF1ZWViNHhDVUlRR1FK?=
 =?utf-8?B?dHVwQVFkVHBNa1J3RjZFSEJ5aDZaZnNiaUxsQXdSTWZsTUZhUGhUWU5iS3Vn?=
 =?utf-8?B?dnZlb0QxL25nKytaKzRYRzhSanNnd0o0S2I3SzFzWXNRSmdsR2ZPZmlkejhi?=
 =?utf-8?B?Sk5JRmd3bFZ4OUw0QllNenNrYnFJdmt2NU5xUVpGNGNKY082WExnODErcU5N?=
 =?utf-8?B?SVR6Q0ZuSExqNW5XRU9BK3I1NitIRFV5cHFLZHRmMWlHV1dFSjBZSWtIZm5R?=
 =?utf-8?B?VXROSjZ4eUVUN2Q0YzFhYUgvNjF3Tmo1QUxnaWpCdGVFSTd0VUhXZC94SWgz?=
 =?utf-8?B?Z1JmM1VwT3l3VHEvZG1lYnFvRmdjS0ZtcHhvS0xJZHFLT2dQU2tLdDhncWRt?=
 =?utf-8?B?R3BGelRPcVpuaGQweGl1OWZuQUNnYWFXN2Izc3BRN0dZbmkxaG9LMG85eHNa?=
 =?utf-8?B?TEFTajZCYWI2M1YyVCtBejJaeTJKelVYNnVydjhOelBKa2loa0dqK3pUQkRZ?=
 =?utf-8?B?V3VkS2IrMzJGRnRTL2d6UUgxVW9yZ2VYUzB1WkhEZUVVeENZVGkwSEhkaFls?=
 =?utf-8?B?NkxTSlFJOHhiSEY1U0ZYTmVSOEFiOGJaRVRjbDFWOGd2NzgybE0rTGwvTjV6?=
 =?utf-8?B?b2pqTG5ZSVV3SmhiLzEwMzN3NitMcHdsMmVMandXVWRVUzcxZ3hpdysxSWhT?=
 =?utf-8?B?OTJxSzZyYy9TVmdFYXlhSy94VEZ0NUNVZUIrRUthUjFSOW5pNlpPdnA2bnBt?=
 =?utf-8?B?czdTQk9qRG5PeUdmMFI2RXR1OFJGMXIrWDNnQ0ZNUzhVbnU1akVzakVEK1Zv?=
 =?utf-8?B?TzR5OHhWaGY5N2t6WnFDYWpUQ2JpcU4zdmVtOXBQQmpyalBsTVlnbzRCcXQy?=
 =?utf-8?B?L2xiWnNjYXpzOEl3Z21iOXYrNlFmY0FTaExjV3dGZXM0ektYZUpLY1hyRi96?=
 =?utf-8?B?aTUxcEJrU1RLRjU2KzEybTMxUmJnN1I3TU1OTW5tZk9yNkU5MW5Talg3aWZ6?=
 =?utf-8?B?cURrSExSUE9zbEd0ZkEyQmlXYnprNFFiS3pzWlQ5Z0lMeFo1bFdiTzQrMmpj?=
 =?utf-8?B?WkRjbnkxb29TUEtIQjhmcjlkVkg4ZGZDaGxnZkVKcnIyR09qNnpUQkxjMEk5?=
 =?utf-8?B?dXFsMWtQUHcwUmNFdWt2Wk9NS1ZxU01ocGdQUHNqM2tUK2p2U1M2bEU1NzNM?=
 =?utf-8?B?bzZQSDlHMCtvTnJ5RThTbXNHajlPV1p0ZEVWK0cxcXZtTEdBRDNuWHp1dHlH?=
 =?utf-8?B?UjNxTnlpZTFyRXM2SGVUZGtQbHVXSjE0d2ZyVEZKa2kwQTZJaUdYMWpyRXVC?=
 =?utf-8?B?d0pLZ3VMYVNLVk5yQzcvdDVnV3JKZ2Jid0txOFVtMGZXMTNEZi9MdEc4czVP?=
 =?utf-8?B?aHVVTmdFcllwNi9oam96eE40VDFYSXdjbkh1UWZDY1FYSWFLVVRySVV3UUdX?=
 =?utf-8?B?cWw5N25HZG9FT2N0VndESzVtUUx5RjZGSkgzdzJRbVZUbk5JWU0rY1B1N3Vr?=
 =?utf-8?B?M2dUTTE5WEpWWkFaVUFJcW8wMUZMUFQ0ZFNIbmZRR0s4clNXZ0tYdkdNU1ZT?=
 =?utf-8?B?bktFRFRzcWtOTVFuaUx6WXJOeGMyelowRFZYb1JITDNsS1M4R01xSThmdnow?=
 =?utf-8?B?YUM5VXd3WmRGVDZyOWpZcXl0UXRFZzlxYTdCVFlwaUo0WGlTakpJMllGZVpv?=
 =?utf-8?B?TG85ZWJQWVZuNm5SS3BvYXoyT2NLUWNOWHk4NTdubFNtNzcvaHBPOHk5MUlZ?=
 =?utf-8?B?K3hpN2hQRkVjU2YrTDZ3dVpGQi95Wk1hK2Y5S3huOWNZSk8xN0xPQjF3cG5i?=
 =?utf-8?Q?gOIIBFzrbK7s1dFrIaORcEhuo?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d1d4715b-8a95-4568-10f4-08daadfa925a
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2022 15:41:33.7026 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PM3rnCUj3OI5ALnzFzuQqG2GLENefK2aiWYypleeKfNeyj5BLSaUC0mwKPxQ2jmUYhOnKdmBtwKJBsGZ+p9DWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6511
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Print return value on error
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


On 10/14/2022 5:38 PM, Jani Nikula wrote:
> On Fri, 14 Oct 2022, Nirmoy Das <nirmoy.das@intel.com> wrote:
>> Print returned error code for better debuggability.
>>
>> References: https://gitlab.freedesktop.org/drm/intel/-/issues/7211
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_fbdev.c | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
>> index 112aa0447a0d..015a854d9bec 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
>> @@ -175,7 +175,7 @@ static int intelfb_alloc(struct drm_fb_helper *helper,
>>   	}
>>   
>>   	if (IS_ERR(obj)) {
>> -		drm_err(&dev_priv->drm, "failed to allocate framebuffer\n");
>> +		drm_err(&dev_priv->drm, "failed to allocate framebuffer(err = %pe)\n", obj);
> Nitpick, space before (. With %pe, not sure if the "err =" part is
> necessary either.
>
> failed to allocate framebuffer (err = -ENOMEM)
>
> vs.
>
> failed to allocate framebuffer (-ENOMEM)


This seems better. Thanks for the quick review, I will resend.


Nirmoy

>
> Ditto below.
>
> BR,
> Jani.
>
>>   		return PTR_ERR(obj);
>>   	}
>>   
>> @@ -256,7 +256,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
>>   
>>   	info = drm_fb_helper_alloc_fbi(helper);
>>   	if (IS_ERR(info)) {
>> -		drm_err(&dev_priv->drm, "Failed to allocate fb_info\n");
>> +		drm_err(&dev_priv->drm, "Failed to allocate fb_info(err = %pe)\n", info);
>>   		ret = PTR_ERR(info);
>>   		goto out_unpin;
>>   	}
>> @@ -291,7 +291,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
>>   	vaddr = i915_vma_pin_iomap(vma);
>>   	if (IS_ERR(vaddr)) {
>>   		drm_err(&dev_priv->drm,
>> -			"Failed to remap framebuffer into virtual memory\n");
>> +			"Failed to remap framebuffer into virtual memory (err = %pe)\n", vaddr);
>>   		ret = PTR_ERR(vaddr);
>>   		goto out_unpin;
>>   	}
