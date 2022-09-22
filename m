Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D30345E6270
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 14:32:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A2AB10E291;
	Thu, 22 Sep 2022 12:32:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 911FA10E291
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 12:32:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663849956; x=1695385956;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=teFRFkh4ByWHjMNCLEX3SWZm1vYCr63XqgXs1vy5psQ=;
 b=bEJQMmRA68Ad3p9xrCOXfVwhXopm9QP0vNJ0jCQv+gW5FKSMFF9eF/jg
 b2Pw+T2XG/nL9vvV63dTWAMID9uz2D+zwUYwO/M6teBkKnsmKQfy8rPzV
 Lx3AkL4T7ua98u+12BVNJ7o5WefZ6eftU1/t3bWMV5okaa+2guEZpuEtp
 dy3h2NFmYokbzSXF0q/2J5Q7n6gXbAlsoroQP/OEKBE+Zscn7fdyRobTY
 J7sLpUB8Kjc2Rf0tmuNVrYP0H0u9eFUJOujd1nCxX6c8I+CDIBHs/8VUw
 z60/1O+yOCYzbJqcYrNlBHgmsndi6MV33dnqjF4FWiroPMxmYma6k9Q0l A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="280651904"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="280651904"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 05:32:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="795066011"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 22 Sep 2022 05:32:35 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 22 Sep 2022 05:32:34 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 22 Sep 2022 05:32:34 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 22 Sep 2022 05:32:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ncdY14RHAEmiydIZGM7/puX3RY+8hNrjVKhnNscR9WwVKQLByJ3CKz4a0wgDEgFSzqA9FzfWruusbX/z5tyGONjA2sDcpmwvQtKTNyE0tZAuP+2HQ47+MPWCNuxAt1o+gYppbbWiHG8ON/kpbfz9ecVpARRW7inDbsTh1DFTeqpPyMmWiSqfCAFtncePxVzxQPLjXGGZ6MIwfsNkvxS96Q0CO6O8kP4OQ4ZKZOlriv4e8fonIJibhRt+wYDsmkhnhI9WdqFCL8/vaI2zHcxxwhhVvz2qRKIhOhkhW86XxN852QQKAx6eiD+vYH+mZYXN39ZNNuZY//ANqqa44KJeZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kxw0whJqoZBYmMcr5zpWLffeduZ2EA7WBj1OT/Ly8eA=;
 b=R7SKBg0zoOYA1SqU3/FPTPiVmm3YP8DQkmRRbjYszpPkQcFLO5nzfkMZYOg7Gy7Q9o8NeVErZz470ijJAdKGLJqvz5L8hpBJ0uIkNKnEVlSiQIaJa+7jVkehPKSZeeiKO+YGf91bky7UIbxh0F/tmolQcqG3puMNKlRWhwZ6VBtT2rshjXB0FUOkRLmYVEyvvvsn733w6baVL92F0VE5gR09Vts/0O0H49dApjiu/whNJ1W5u2pjnPQQp96tFy4VEYRG2G2nLkd8e/In7SJGRUP8aXQprWklIZySaP/jy5STIul/Eqobq/TPYkAVJKB4jl/Lxo8rfiqHniWc7FAZuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by MN0PR11MB6033.namprd11.prod.outlook.com (2603:10b6:208:374::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.19; Thu, 22 Sep
 2022 12:32:32 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1f8:fd76:9d4d:71bc]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1f8:fd76:9d4d:71bc%4]) with mapi id 15.20.5654.019; Thu, 22 Sep 2022
 12:32:32 +0000
Message-ID: <c310d75b-38c4-698f-56bb-d7ae27ecc6ed@intel.com>
Date: Thu, 22 Sep 2022 14:32:27 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, "Das, Nirmoy"
 <nirmoy.das@linux.intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20220908200706.25773-1-nirmoy.das@intel.com>
 <2cd5568f-e63c-1ae3-6aa9-809be360a397@linux.intel.com>
 <a7dcfcb7-f068-d821-9321-bba80b44ff36@linux.intel.com>
 <27158ebf-24e4-c519-13a5-f3d91a539ea2@linux.intel.com>
 <94abfe4d-991f-e354-b6bc-84674c49ef51@intel.com>
 <90befd6f-da2c-702d-e92a-e6ace9d3e9f2@linux.intel.com>
From: "Das, Nirmoy" <nirmoy.das@intel.com>
In-Reply-To: <90befd6f-da2c-702d-e92a-e6ace9d3e9f2@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P265CA0050.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2ac::16) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|MN0PR11MB6033:EE_
X-MS-Office365-Filtering-Correlation-Id: 5902896b-0d8b-4567-48d0-08da9c96856e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xqMYJEpC2JX/jdCQ0/6NdYzY899REYiAH0jyAR/4afoVHw34GrOi4q2Eos3Ko3686aYlPNyDLzhk27RDu66GBNWV/k2Qtj2XXHlUo1a7iCwt0IiXS/Yi9p14xtpxKEHvpknDt1l1zxKyV1j5ZTmfoz3lD4rdmArOc0qrnS1JOmyTpR7s9a5xJ00YndwPWziav6aF4hh7nuscyofs0NyuK56/LYVCJYs9Uqhm3mkit366vBjr95vTa3X553vtNHkhP90xnV1/7OKT0wy5tPRq0ZzvLnOn0OArKsiKEdaBpht/ZZ8H1N/7E/Ghc8NRfz3wVKRDdd3Q8r4MkJblgfkobM8nHO1t/a5+5DAFIXyz1vYJ96MeHe7IqhzrJcN15JdohSG8teDuxsuG5282AAP3AZX2qQz7XOS5LEztTMaCrNcBcQEObHP4O0mJ8p/MMrmXaeP2IeRbpWRwiH8YdVotwesxLrFfD7A9bth/VdYa/cFc4HQqxWNsxkJwFSgTiDe/2EO6JNp3YBtgsW/g2NwmPOgByHT5OhxiGdHS0lv3NTVCOILmtQ4LCAUciPuydcA+bjA+xA4I5z4q4mfkLBRyYbA+WWb+9HDqs4e+Utgta7eXjfUaUQvYdVKtwnT2+MoY+mR15R9/Dhnb1EF+3xamJhGo84Ymko/MIDBGl2wRfUYr3F/lWp0EK6WysE2Yi0IBNv7cpSS/W36ollJ5ZcwGkMgzcpwKJWEANgwrkP7sWVO+XaYmUihKr51zgigpjyxKbk6/PQy2grjLlPzd1ul1X03xxiHTpH6U+urnpksQPf4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(346002)(376002)(366004)(136003)(451199015)(316002)(110136005)(5660300002)(8936002)(2906002)(36756003)(66946007)(66556008)(66476007)(8676002)(4326008)(26005)(31696002)(86362001)(41300700001)(186003)(2616005)(83380400001)(6666004)(53546011)(478600001)(6506007)(6486002)(82960400001)(38100700002)(6512007)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Rmt5S1cxZ1ExK3NFOFFkaXVrS01JOXk5R1FOWVpIMHZjd0pNbXF3b0pVaXJ5?=
 =?utf-8?B?T21EMG8vWG5pYTdKNjYyUk1CS1RJSkgzc3VWOUR3Zk9PWlE2SGR6TkxqT3gz?=
 =?utf-8?B?cUF0akdvcGtMRnYzMUwwcVhiN2JFMlRKdWdtUlh4NnJSSHlVWXNsWEZDVk90?=
 =?utf-8?B?RktXd05EME1WSkdISURNZ1ZBMWdNM1JVNVZHY2xTSHlHdkhvZkYzRTEvNHNu?=
 =?utf-8?B?OFROck00SFo5dklPV1FQazVPVmlqQTZiTm5kT0I4bDNBOFBwa2syMXhpY25u?=
 =?utf-8?B?RjEwcXAzMU5MSzlvdzB0cjRQQjFURmhRaHRJSlRiT3RWR1Q3TlEvMlA2VU1S?=
 =?utf-8?B?ODQ2MzhKN3dEejc4c1BUa2ErS2RQdEloWnMvUXdvY29BVG5ZRTZ4N2VuWnVQ?=
 =?utf-8?B?c3lNNEdQVFA0eXZlREIzcnJKZmFXbW5WZ3N4ZWhWZU9CdWJtNWpaeGZkOW1Y?=
 =?utf-8?B?V2piUk5wMXVvMHIvS01HeWdrakQweTZGazZ3aTZ1ZVRheVhmMUU4Z0ZNNk1t?=
 =?utf-8?B?L2lyMU1DU2RmU1F3Qkk1Q2tGT3Y5ZzNFUEQ4U29kMU9Kbm84VFJQTHdseGR6?=
 =?utf-8?B?UTdRM1c5S2RBemtkZW5xR3FUdDJyN202SDFLMkEwMHNsR1RlZnhadXdDS01i?=
 =?utf-8?B?NHE2dDV2YlB2REFxbXRzd1Yvc08wWHptZUUxMGhRdDRzdTVlVUdIUmlpL3RC?=
 =?utf-8?B?M3ZSalJQK3o2MjdielA5bVE0cXYvNEJNTTc2bXZ1eVZ5TmhVNDVoNG8zUDkx?=
 =?utf-8?B?NXd3SU0rUnQ2RnFSSUVzU3d2K0ZsK3BPSkZubUN2TThmR21jdVVnL0tSNkZa?=
 =?utf-8?B?U2s2YWJkMEpxbWRFeDRUbjN3dzI2Snl2RlJtZDZSRENZVnUvR0VucmlqY2NS?=
 =?utf-8?B?eTZVWTVqemFjaHpjYWFqSEJSUG42T3RjRlI5UFBYdnl0LzFnaFVXTUJrK1Nj?=
 =?utf-8?B?a2Z4ZGZpaFZmVzJYeFNjT0gweWxaR0pNa014SHk5c3VzZVR2YWZZN2FCY3NS?=
 =?utf-8?B?dHBQelloRnh4cVBjUHA2b245QnoxUUg0L2hmZXFVNUF5aVQ1cmpBOHZpcDll?=
 =?utf-8?B?ZlNRKzZ5cWcxMXJyeWVSUlA3cDh0cUJnZUVEZ2dXU0JIcVliVmJ4eEljczFa?=
 =?utf-8?B?TVZNUnhTenZmQTRhSnpjcy9IQ1pYUGptbW5XVFkyVUVkcHFlbytTdXh6WE1m?=
 =?utf-8?B?TVBwU2R0Q2xPQlR3clhwVkthOTZwajNBeXAyVnp5WlZIejhQK0lodjJUMWlz?=
 =?utf-8?B?YzhSUGlMNHYzSkQ3dnROcHhNTEcrdmRDSGYzRTh0WnU1SjFYQTNBSkZobjdZ?=
 =?utf-8?B?aU53Wk9mOGErRThyUXpNdjA3ZVNaMDl2b1p3QmpRcnNJQ1V3UEtOTHBEM3dq?=
 =?utf-8?B?eXR6T0tZS2huMWpCM1FtNXFPeHFMUnRUQ2tHZEFJVTdzS1NxSS9CSnd1WXdB?=
 =?utf-8?B?aXdVVzlRekR0YVcwUWtNTWVPd2JrV084Tkt2aVVwdjk5d1dvSk9rUXBHc2Ro?=
 =?utf-8?B?ZXQwRlV5amFpYThWejhYY0dCZU83SDkvRWphTXRjUEtETUZMdGhVSVlXK2Vl?=
 =?utf-8?B?Zjg0YUJRc2pvcEZya1Rqc1Yyak5qdE5qMU1iaVIzbVdLb21WWVduc3pyVldJ?=
 =?utf-8?B?NFMycTQ2bHBhTWRuS0gzd0xqQThEenZObnRibjhtUzFGbmJtRG54WXdyT2lq?=
 =?utf-8?B?d0dEUG9GZkJCNHczdi9BMXVrWk1uNlN0TnNhT2dBTTNnSDBtY0JNcVJDRVNY?=
 =?utf-8?B?VkhhMWdUNkNXdDdNQ08xaVFSOXNFWC9rUjIxNFh2Wms1bXl5ZGhWbE5yc1oz?=
 =?utf-8?B?Z3pZcWNaVUtqWHFWRlRFYVl6NXgxYzFBSXIyY0xzeHdwVTBnVk9Ud3hSUTdO?=
 =?utf-8?B?NFRkb29SeWZCM3NhTFpralVkQzV5OVVjSFBnc1Rtd1B2UWYyNk5UUEJMbUlF?=
 =?utf-8?B?VWhiR215WHUzMTBPMm5mVndPaGZ1dUN0N29SSFVrbUN1RlA4ZXJyUGtac2VT?=
 =?utf-8?B?VXI5K3poeVpyclpERUUwUGI4WVlpMHVBb1hpQThsdGhmOEtGOHFEZFk3eDF2?=
 =?utf-8?B?S00xR2ZMVUlSME1kR2NLT3duK05meFl5RUxRMWlxWlpvUEZ3ZDdTMXhGVmh6?=
 =?utf-8?Q?VA/s9UHm0M8KRtGAgznTbtFkn?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5902896b-0d8b-4567-48d0-08da9c96856e
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2022 12:32:32.6627 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gAlB8BFcN8E9WJ5WHVGP6iH4Tl4vB0BPfpQUfB8zyM4NvBKwQvPvvnU21Gl/mPWtO7k2M0PUn8wX6TRoVyokZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6033
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix a potential UAF at device
 unload
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
Cc: matthew.auld@intel.com, Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 9/22/2022 2:28 PM, Tvrtko Ursulin wrote:
>
> On 22/09/2022 13:11, Das, Nirmoy wrote:
>>
>> On 9/22/2022 11:37 AM, Tvrtko Ursulin wrote:
>>>
>>> On 21/09/2022 16:53, Das, Nirmoy wrote:
>>>>
>>>> On 9/9/2022 10:55 AM, Tvrtko Ursulin wrote:
>>>>>
>>>>> On 08/09/2022 21:07, Nirmoy Das wrote:
>>>>>> i915_gem_drain_freed_objects() might not be enough to
>>>>>> free all the objects and RCU delayed work might get
>>>>>> scheduled after the i915 device struct gets freed.
>>>>>>
>>>>>> Call i915_gem_drain_workqueue() to catch all RCU delayed work.
>>>>>>
>>>>>> Suggested-by: Chris Wilson <chris.p.wilson@intel.com>
>>>>>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>>>>>> ---
>>>>>>   drivers/gpu/drm/i915/i915_gem.c | 2 +-
>>>>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/i915_gem.c 
>>>>>> b/drivers/gpu/drm/i915/i915_gem.c
>>>>>> index 0f49ec9d494a..e8a053eaaa89 100644
>>>>>> --- a/drivers/gpu/drm/i915/i915_gem.c
>>>>>> +++ b/drivers/gpu/drm/i915/i915_gem.c
>>>>>> @@ -1254,7 +1254,7 @@ void i915_gem_init_early(struct 
>>>>>> drm_i915_private *dev_priv)
>>>>>>     void i915_gem_cleanup_early(struct drm_i915_private *dev_priv)
>>>>>>   {
>>>>>> -    i915_gem_drain_freed_objects(dev_priv);
>>>>>> +    i915_gem_drain_workqueue(dev_priv);
>>>>>> GEM_BUG_ON(!llist_empty(&dev_priv->mm.free_list));
>>>>>> GEM_BUG_ON(atomic_read(&dev_priv->mm.free_count));
>>>>>>       drm_WARN_ON(&dev_priv->drm, dev_priv->mm.shrink_count);
>>>>>
>>>>>
>>>>> Help me spot the place where RCU free worker schedules itself back 
>>>>> to free more objects - if I got the rationale here right?
>>>> (Sorry for late reply, was on leave last week.)
>>>>
>>>> I had to clarify this with Chris. So when driver frees a obj, it 
>>>> does dma_resv_fini() which will drop reference
>>>>
>>>> for all the fences in it and a fence might  reference to an object 
>>>> and upon release of that fence can trigger a  release reference to 
>>>> an object.
>>>
>>> Hmm I couldn't find that in code but never mind. It's just a 
>>> stronger version of the same flushing and it's not on a path where 
>>> speed matters so feel free to go with it.
>>
>>
>> Can I get a Ack from you for this, Tvrtko ?
>
> Sorry yes, forgot to be explicit.
>
> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>


Thanks a lot. I will rebase and send again.


Nirmoy

>
> Regards,
>
> Tvrtko
