Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87CAE4AE931
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 06:25:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9732510E1C0;
	Wed,  9 Feb 2022 05:25:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8392310E1C0
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 05:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644384354; x=1675920354;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uW/K6HNDoCIPdFXDSFlGMHSe+17lepomtw7KRK2KkCU=;
 b=D7Cncyaqi2KAckC3R0AjKawFJ/pzBJF4jq6E9Dk3Fpv+nIjM3WXyTnzR
 Akyn4y12vRrluluW4yaeI5nuaXlIztNpJfzrNxq686fm5VIo8pi3RxyqZ
 Z8wqDLPIDS7XG+pNnvJhV0KM8/XkObkP80OM4VZufOMr1BwDm0yj6PU5x
 P+Bd58ipISXpgJUi3jwJElCeajmZcUXwA5I6fCpD0KMtX3q6POTb0GmOJ
 E1vK5S1dXvL8497CzJA/it9hzGoHe89hxb7vytG69KVbSm7wCUZtIv9f5
 zyzIZu692jaC+CQvA2KiNJdpWAbauOpNHKlrV+cLzLbSCXk+xxGBx6VwL w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="232688590"
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="232688590"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 21:25:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="568115204"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 08 Feb 2022 21:25:54 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 8 Feb 2022 21:25:53 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 8 Feb 2022 21:25:53 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 8 Feb 2022 21:25:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=getQqu7RVXSPjeS3bwTp1tAzcR5U8f/A4yShKjHMXKiAtB9UzmM917yiRUMZ4YVTntyPWXP8zefXsCr7QqWwlm9aIKxiWnVjNhaH616X1c3C1BTgCtmMsldEGZS5zs6e6K0M/+Qh1FHUp1dZ189ge94hJ1huESpME3A59FWTI7bOUrKdTIOnsNJs5jYDeXPvZpij106ufardvI8GZFjmMGyV91odHEzKgvh2wz4qfhjHyLEMjfLaKdvaCjZ/Fky5P6G/SwYVSd/IMAQVfT+zv56LWtSw5rOnQJHK/oUNOyxAWFT2/KPD6rO4TyiA5GwxRyK2lsD5buN6JWqnkBdIOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A1biA9ouPbLVsHpIG7NrSBIBohnbUHLZ2pthk5rGAVc=;
 b=c0qJogOqAAcVNsVuJQhATiZD/KyOhT8D8KrvuIg5PqawK/sirLsEwCO55CrCCNySXFTu/91O2Y0noCqHo3U22CcO2eUhP1M2mV/wxErdyqpqYeEjW6owmKHtc9RGHs6xmuGnOG48zBAiqjJSjj1qyF+wUaanZWfD3FGWdSpIoyTqj85sihgyn+y+R0JH1EtH62ySjm0OpTj6YCT2DLGyXRqZqEj5SDzNG6EcUsdGcWqBVV3awMSSuiUn/7b0TxZDxP+OlVusEbzX3/pFVxw6vSaSKeirvQTy0812U61D9YxdwIpdKKQ7e5eHmfg+L7pjx04zCXff+Vd8AsJIp/sIow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2936.namprd11.prod.outlook.com (2603:10b6:a03:8c::17)
 by BY5PR11MB4385.namprd11.prod.outlook.com (2603:10b6:a03:1c0::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.11; Wed, 9 Feb
 2022 05:25:51 +0000
Received: from BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::b17c:48f8:6fba:4a9]) by BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::b17c:48f8:6fba:4a9%5]) with mapi id 15.20.4951.019; Wed, 9 Feb 2022
 05:25:51 +0000
Message-ID: <f4f83f4f-4a13-5b44-4ff5-4d32a1e850be@intel.com>
Date: Tue, 8 Feb 2022 21:25:48 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220120221652.207255-1-casey.g.bowman@intel.com>
 <e72a6679-2fe6-9390-2e7b-9c59cdd4cda8@linux.intel.com>
From: Casey Bowman <casey.g.bowman@intel.com>
In-Reply-To: <e72a6679-2fe6-9390-2e7b-9c59cdd4cda8@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0038.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::13) To BYAPR11MB2936.namprd11.prod.outlook.com
 (2603:10b6:a03:8c::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a21968f1-670a-4da3-20ee-08d9eb8ca309
X-MS-TrafficTypeDiagnostic: BY5PR11MB4385:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BY5PR11MB4385334E8E13A2997AD84A92DD2E9@BY5PR11MB4385.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: glOKBHq9AZww8fIDzgYfE+xIHGjvFU//GHGkIMn5XprawylMmOW8mtHi4IZYjQmDfO0RtSEu++7Kp6zrD0ZMVf9hGvwCbD3wmMkfMwfahRYFweZ4XAUSW5LzrCouq0OA8hC8zaCzvIBFjQ9H1U64zHXa19emaZkaZoBdW5PiXcc/7koM/n/34jBjNWUMc0WqD/5oKWO5eXI12OBPxdZS4FkS7aXKx+UKNDoVVoyuKQGDkX6jaoeiPXcN7S+xzT0ETOX0If2hhCFa1lAGnZWzQFFMG1vrtOgyutame1MyJHY2oPlWmOADAHVJ0cMUgr7jDZ9pcX5opbNX5bQmNdJ+s78ZZATKKmYYHHNjBTZd+1z7qsvIXXsARi2Rzi1Ssi7pSigk/5iJfEYlnq3DMSmaG6FRmJyLZoJU2+YlqXCtsJCrXG8CR9WLBTWsNx7aSnK53blUzLiIqyJbVRBeQxDGalvjkIaLGbkg0CCp+MBXntS2jPoVIbNZKEzfBIBlR/OiMAnnwvCEZAjVi5E/EwUGa07A/slnCaRDzqDQ2ZOSZTJg90KupptRKmhkaf5EUhfBYW4oBo17ZwxzPO29je3zml5T2V1DblFFcXVQgwJ8x++pf/UlUTJ+csOKd0mllpXYMPq6+CTLUBhIoisnS0eF9vS6nTghkB5yUewMYbb37kNzgDPiSiFTIg4HP9pAKc8I0aVedws0LMO/lWubAG82gKvKNTYdKzCH+Q9EGrHIbjE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2936.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(186003)(2616005)(5660300002)(26005)(82960400001)(2906002)(508600001)(6666004)(31686004)(36756003)(38100700002)(6486002)(4326008)(86362001)(53546011)(316002)(6512007)(66946007)(31696002)(8676002)(8936002)(66476007)(66556008)(83380400001)(6506007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZXNWVnNuSkZYR3NPdjVMWUpjZmNBeXpqKzJFc2FiclA3RUxoT1RtRFpGbXAw?=
 =?utf-8?B?ZzlJa2lNb3oyQkZLZnZTQ2NLWisyQzloSnVKN2ZTR2tOeHN3V0NtUWNoNHRH?=
 =?utf-8?B?clQzdWRvZ045VkRXek5sOTVpT1U4ajhqZE56eVE1Qk9xMWtzNUQzVm1vS0da?=
 =?utf-8?B?OGREcTlaVnJIOTB4Y2dXYUVWOEthSWhZbkFPY1ZQejJWU0taZzZGV1YwYmRL?=
 =?utf-8?B?dzRaVlY1Z1Z5YjZ1ZlgyQjRQcmU3TVo3MlB5Z29yTUo5M2FyRkN2N3VHSnJi?=
 =?utf-8?B?WExxQ1NVWVhHR0d3OWxqQXJHQXNVWkk2T1dpSU5kSTZNYWtvM21KNG5oYld5?=
 =?utf-8?B?QWFpb1BrZlVLUHJwWTh2c00vMlFwMG5CSTFhT3d1RnhiMFhVMlZjdm5zUlc4?=
 =?utf-8?B?bTliLzFlTmFHVW8rdk40bTlKbGRZNXJHN3FYUHAwY3lTeG9LQWRhcFFCbExO?=
 =?utf-8?B?RnJ4d2tya1l4dlQ5WmJ3c0xuRmpOMlI5VXZGZDRrTzhVdngrbzBiZSs5QSsv?=
 =?utf-8?B?OTZId1NjSFVKN1lzMjVHSElOUHRQeW5HSmFxb1ZYcEdYV1ltNjlyVk5GQlVP?=
 =?utf-8?B?blRwZlpjclROdWxBQ2Q3emQ0bENpaDl6RmNuaWI4WkdvYm8vR3hLYVFoRURP?=
 =?utf-8?B?Qnd5TXdEd0N2VzFNKzhLLzFlcFNsc0I4ZExwMGVMUkZPYUltVDZpVTNFWlNF?=
 =?utf-8?B?SnNMRTNiY3FIN0tqR2I1SEVkZkczVGt0TDZ3bE9lZWxrVXhoZEs1bHZTelY0?=
 =?utf-8?B?MktGaWp1MmVIWFR4T1hOQ0poYm1pVUVDT0x2N2NUTG84MGtKUHhKYVJTcnlG?=
 =?utf-8?B?QjBBc3gyY2plbzdzSDJuQW9UY1NqbGdpdzVTZzdYSitsNVN6YTl5ZUlBdWxs?=
 =?utf-8?B?K09DRUo0eUdOcU50L3pFdjdxeHQwQkJlbURxdHl5bEVWZS9yRXd3aG85dno4?=
 =?utf-8?B?eC9xMmJDMlFxa1RveHhJaE1FUWM0cGlRZ2J1TTJRYTdnUGNPNmo3cjQzSXEv?=
 =?utf-8?B?TmlwdFkySmhGWGx6bjlzbGpqa08rdnNCenhqVzBNN2ozSnA0U05tb1hra1Rs?=
 =?utf-8?B?VmFCdDBRN3lHd1JZQTdVdFNNVkRtQWtYR2VQTml3VXYzTXFycXBqRDZzbUZE?=
 =?utf-8?B?bnU2blptN3ZGN1VMVmtUbWdDc1VWQzN1L3EraEw5UUJiVDFwU1RyT20rOXlv?=
 =?utf-8?B?YlVBRVIvZklQa05zd0hwU1BSby9vcmQ5QVRWbDV4eUxzbGVLVHpadFJZMnht?=
 =?utf-8?B?Y3lkUjhpbHNYK2lNbkZhQU00bVQ2Mm1CNTQ1KytDeisxNS95TDJ5QldOa2pQ?=
 =?utf-8?B?MDkvZFlzUlAxejhqTkhMSHg2WmROeVh3R3JTajVXMnVXeEc3QXgyNTd6UDdn?=
 =?utf-8?B?Vjhwa09yRGFoUFZOTzM5S3I2MGp6Nk9la0owb2p4Y1dlWmFMa05mM3NQa1Np?=
 =?utf-8?B?VVRKZy9CR1FGZ2ZYSDVBdDdjUkpjQVRFT1VzQjNyNDl6RFMwajdsUXIwb21M?=
 =?utf-8?B?SDV2MWEzd3QyTUhrdmM1WW1Pb0lNYUFseTlTSEh1QjFJMDE5UnlyN2Z2c3Iz?=
 =?utf-8?B?dm56d1R5d1Ztc01FeERhZjJFakwxakFCUWVYcy82Tkg1NnlleUR2SnZOZFZl?=
 =?utf-8?B?SUlLcnZUNXA2U0p3WFpCU3djS01lVk9KUllJMEM0cmxLSUxpaGh5ZWhpdk9x?=
 =?utf-8?B?K3d2YmExZEYxQVFyb0VBM2x5ZUhZRExLSm55eGpkdFlGK3lGbEVTaWFkTVgx?=
 =?utf-8?B?RTh4MllnTmd5aERHVGVDazF5eDA0bERuL204THR3eU9mWm0yeXBkOEhlZnBC?=
 =?utf-8?B?VzJCejNheHd2K0tHVldKZ1BvdUJtVEFDbmhnVHBrS3UyeTdGMXp4RzZEYWpG?=
 =?utf-8?B?ekFSdGduK3VXWU5FUVJwakZZZmFmY2tVR3k4R0p3bmtUdGRJQXU1TkdkWXRv?=
 =?utf-8?B?cjA2dWdlKy9COGlmY1ZPcGMxVEQrY0YyMjNVeGJucW5Sa0FmaUc1OVVnWjhq?=
 =?utf-8?B?SVEzN0N0ZlllR1NVWU9YK3V3dHhIMEpYbUYwcTdVWkhhNXFBbU4ySUd4U3Zu?=
 =?utf-8?B?cmZackZHZVpVQWtJUHhkSUUzZjBDcVBMTVVBUDU2aThvNGFlVFBMZDh0Umtq?=
 =?utf-8?B?VThOTjRQUW4zR21venZac1FxMW5NUERpajNudTVxZm1Jb29UcWk2b0lsY2FS?=
 =?utf-8?B?MGs0QS9McUIxbklkMGRWUldJdVYraDM0WjFMSCtlU05FdHAvNGpEb05IOXFy?=
 =?utf-8?B?UEV2WU1XWnIvRk9za3ZNaGJlZVBBPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a21968f1-670a-4da3-20ee-08d9eb8ca309
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2936.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2022 05:25:51.3962 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DDgbiy/VsicXRs8IuaOXxQx6NyshTJ1pmEN+RTwGs8WOSFbuAg9kdy5krk45JEGRylNOuj+YOzQ1+5WumN2lWTdQN47nGjjSsfmd7owjTQM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4385
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
Cc: michael.cheng@intel.com, jani.nikula@intel.com, lucas.demarchi@intel.com,
 daniel.vetter@intel.com, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 2/7/22 07:36, Tvrtko Ursulin wrote:
>
> On 20/01/2022 22:16, Casey Bowman wrote:
>> In this RFC I would like to ask the community their thoughts
>> on how we can best handle splitting architecture-specific
>> calls.
>>
>> I would like to address the following:
>>
>> 1. How do we want to split architecture calls? Different object files
>> per platform? Separate function calls within the same object file?
>
> If we are talking about per-platform divergence of significant 
> functions (not necessarily in size but their height position in the 
> i915 stack) I agree with Jani that top-level per platform organisation 
> is not the best choice.
>
> On the other hand I doubt that there should be many, if any, such 
> functions. In practice I think it should be only low level stuff which 
> diverges.
I agree, as said with my reply to Jani, I think maybe going forward for 
arch-specific code, #if IS_ENABLED calls should be used sparingly, only 
in the cases where we do have that arch-specific implementation (like 
low level calls), instead of just a 'return null', as in my case.
>
> On a concrete example..
>
>> 2. How do we address dummy functions? If we have a function call that is
>> used for one or more platforms, but is not used in another, what should
>> we do for this case?
>
> ... depends on the situation. Sometimes a flavour of "warn on once" 
> can be okay I guess, but also why not build bug on? Because..
True, with Jani's and your comments, I'm thinking that in the case of 
when we look at a potential arch-specific function where we're just 
returning null or something similar, we should be re-evaluating the 
function and seeing if we should make a different change there.
>
>>
>> I've given an example of splitting an architecture call
>> in my patch with run_as_guest() being split into different
>> implementations for x86 and arm64 in separate object files, sharing
>> a single header.
>
> ... run_as_guest may be a very tricky example, given it is called from 
> intel_vtd_active which has a number of callers.
>
> What is correct behaviour on Arm in this example? None of these call 
> sites will run on Arm? Or that you expect the warn on added in this 
> patch to trigger as a demonstration? If so, what is the plan going 
> forward? We can take one example and talk about it hypothetically:
>
> ./i915_driver.c:        drm_printf(p, "iommu: %s\n", 
> enableddisabled(intel_vtd_active(i915)));
>
> What is the "fix" (refactor) for Arm here? Looks like a new top-level 
> function is needed which does not carry the intel_vtd_ prefix but 
> something more generic. That one could then legitimately "warn on 
> once", while for intel_vtd_active it would be wrong to do so.

Good point, run_as_guest might be a bit more challenging of an example.

In my mind, I was thinking of just simply returning null for arm64 here 
as I don't believe arm64 would be making use of iommu for our cases (at 
least, in the short term).
I think this example function specifically needs to get reworked, as you 
mentioned, in some way, possibly refactoring intel_vtd_active or 
something along those lines.

>
> And when I say it is needed.. well perhaps it is not strictly needed 
> in this case, but in some other cases I think we go back to the 
> problem I stated some months ago and that is that I suspect use of 
> intel_vtd_active is overloaded. I think it is currently used to answer 
> all these questions: 1. Is the IOMMU active, just for information.; 2. 
> Is the IOMMU active and we want to counteract the performance hit by 
> say using huge pages, adjusting the display bandwidth calculations or 
> whatever. (In which case we also may want to distinguish between 
> pass-through and translation modes.); 3. Is a potentially buggy IOMMU 
> active and we need to work around it. All these under one kind of 
> worked with one iommu implementation but does it with a different IOMMU?
>
> Which I mean leads to end conclusion that this particular function is 
> a tricky example to answer the questions asked. :)
>
>>
>> Another suggestion from Michael (michael.cheng@intel.com) involved
>> using a single object file, a single header, and splitting various
>> functions calls via ifdefs in the header file.
>
> In principle, mostly what you have outlined sounds acceptable to me, 
> with the difference that I would not use i915_platform, but for this 
> particular example something like i915_hypervisor prefix.
>
> Then I would prepare i915 with the same scheme kernel uses, not just 
> for source file divergence, but header file as well. That is:
>
> some_source.c:
>
> #include "i915_hypervisor.h"
>
> i915_hypervisor.h:
>
> #include "platform/i915_hypervisor.h"
>
> Then in i915 root you could have:
>
> platforms/x86/include/platform/i915_hypervisor.h
> platforms/arm/include/platform/i915_hypervisor.h
>
> And some kbuild stuff to make that work. Is this doable and does it 
> make sense? Per-platform source files could live in there as well.
>
> Same scheme for i915_clflush would work as well.

I like the idea of getting more specific for the calls here, but I'm 
somewhat afraid of obfuscating these functions to their own files in 
addition to scaling issues if we do have more and more arch-specific 
calls, along with more architectures in the future.

This just seems like it could blow up the driver in what could 
ultimately be unnecessary organization for a fewer number of calls if we 
just add a few platforms and different calls.
What do you think?

Regards,
Casey

>
> Regards,
>
> Tvrtko
>
>>
>> I would appreciate any input on how we can avoid scaling issues when
>> including multiple architectures and multiple functions (as the number
>> of function calls will inevitably increase with more architectures).
>>
>> Casey Bowman (1):
>>    i915/drm: Split out x86 and arm64 functionality
>>
>>   drivers/gpu/drm/i915/Makefile              |  4 +++
>>   drivers/gpu/drm/i915/i915_drv.h            |  6 +---
>>   drivers/gpu/drm/i915/i915_platform.h       | 16 +++++++++++
>>   drivers/gpu/drm/i915/i915_platform_arm64.c | 33 ++++++++++++++++++++++
>>   drivers/gpu/drm/i915/i915_platform_x86.c   | 33 ++++++++++++++++++++++
>>   5 files changed, 87 insertions(+), 5 deletions(-)
>>   create mode 100644 drivers/gpu/drm/i915/i915_platform.h
>>   create mode 100644 drivers/gpu/drm/i915/i915_platform_arm64.c
>>   create mode 100644 drivers/gpu/drm/i915/i915_platform_x86.c
>>
