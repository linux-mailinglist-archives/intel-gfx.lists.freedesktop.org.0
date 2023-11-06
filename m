Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 455FE7E2246
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 13:51:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58DA810E2F7;
	Mon,  6 Nov 2023 12:51:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7964310E2F7
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 12:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699275074; x=1730811074;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dtwQdYFGMQzxpbGoUwdSENXq495qqVcb/BHEoF8f+Qw=;
 b=WQlk7hB9mJGfXBvjXgmjmG1qeDZ+8LBaItsP+n8vVTA4e59NK017D8TO
 13UKnILQx5apkeVe5d483fndJjKH3CCm8iISSlDQTwoxKY8oiIOO27BVc
 qO0j9s9312+OSw9kL7bfgIo5Uw30O9WXm6UIGfi7tLUHPSnZe1C5TIgIk
 L3c7BEuVeI9cGasSTImVBOwNGdua+8ufnWb7pcL1qsT7iYvU1/RPmIkJp
 q0V/8iRQHUI4HZ5Ch1OOlFZ1plO1WHadImFwEZPxU0B0yzwADTGa/rNw/
 Oj3l/x57S8oHb7ozM1oOrXME3LDTDqMUvjcVSgSmwqTanqeZ3ZIBZLmRY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="392134199"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="392134199"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2023 04:51:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="797297926"
X-IronPort-AV: E=Sophos;i="6.03,281,1694761200"; d="scan'208";a="797297926"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2023 04:51:12 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 6 Nov 2023 04:51:11 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 6 Nov 2023 04:51:11 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 6 Nov 2023 04:51:11 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 6 Nov 2023 04:51:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ida70txB65u47AYoUKx/ox9/XHpfOErm1iU89Z33LytUNe/nKLG6Ct4o04mZMAcY6QR6yJFaV6CJA6E0g5JJ2dB9YnU/5GhgGjSXtRM3SHbi2iifUwIKT6R31GmYyhK4i/1zvHn/9WJIqz8wiGTSv+JNrfFdY5/X9/Ld4i0lPFiJ8xMBUwsTHpDcGlgAovZ91J4JjOMBRrbvmFS9fFYH+wuV2rLQhGe1SUHnczc+5H0HhOu9q+TrqiCaX6ZIZRIDnJwTjjZp8s8tPglkGGjan8r5tf4/yjt5QcVW7TX8qP4ZvRjbvtMCuZ636k5N03U/67g44KsXTUQZtOORMnoOVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vJwei8glqpcO0wrMaWDzf1dTMZqB/qnwJjlUEpZA0Gg=;
 b=jTK2zmgPjenRR6FjWuKwpSkXFWFxRo5RtxRIQviEkX/2+H6WmKLbtsnDpKAWl16cdRduOz6Tq280webYsHMXloDDiDVxdmeSgXo3NwydSqpXH6CgAULPC93dXvcSa9dSbntqJyMi+Wx8VAgGlbQLQ6gr5vsLAbDy9qJhm43Wvb+6nrajk4fHJhDJxwRTMwUmrGUjzUhlYFoLfCLM/XKV3IbNdEh1WgM7XkhguSq9Ut/Bq2rkv0OLuSoyYywpAyUmnC580D7vhS/Aj8ZdUXlw1W6aQaZZQOr+lmSGpmImTKqy8wNafCBrjqkfNIJAG4ftY0mQrxt6bNuYPg8fvxQEFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by BL1PR11MB5400.namprd11.prod.outlook.com (2603:10b6:208:311::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Mon, 6 Nov
 2023 12:51:07 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::dfe8:1adf:4136:bfc3]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::dfe8:1adf:4136:bfc3%4]) with mapi id 15.20.6954.028; Mon, 6 Nov 2023
 12:51:07 +0000
Message-ID: <b554a297-72fe-aad8-dcdf-be83646b4cc1@intel.com>
Date: Mon, 6 Nov 2023 13:51:04 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231025102826.16955-1-nirmoy.das@intel.com>
 <87msvryrs8.fsf@intel.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@intel.com>
In-Reply-To: <87msvryrs8.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0186.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ca::16) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|BL1PR11MB5400:EE_
X-MS-Office365-Filtering-Correlation-Id: e81bf518-abca-47bf-263e-08dbdec70b80
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /upvX6AoK9rbtKAg79E0eXIFf4C9Wt0PLPkDHfC7zSZT7dXy41Gmn+p2DRo334B99jrc6wNaNt57k34nVwJMJ1pCAgLjEHtqiXfUjp2/9fseYXDIP/GS9cFOnA9G78cAygZjsOKYX17MOJbWuFfB2rRtbRJfoX91WESX2k6avmPa3P/rOQYJS2rhSOPb6dakNH/NSK5Ow3IkN4dTdQ/MQdWGO6wMxGMLy/tY3V4J/TSnC/WY0woxtLqUl53Wky98WBpf1sdys8pMMxeCKFtw0v8Qybf5BaGLBrRykQK2D/ZLoetVkpnLctG/9PO9hTTfncjhM4muyyLeM/njjKdJkUGVmcY0BGbU0899/XnbKHcFAu/GnkI5tTg5d/6ESOMQkV2n0CShwB3NdBcUYmZaMHhZFp4rHHTKrRsrgs3OhB0qDwYCXnJ0RUPYnIR1CJ6Jcllij550oUB3bMuhSHksMBh8Zjtb3nFBG7tp1E3ZnT3RHxF61lxLkeWP5o1o2xUlYLo5KH4OyxPMUX4sq3+dyl2owZANeyG9eeU+nfDa5UZ/8Zctc1GQNYvYpt8+B9EYKeB206V4y0CPEgrKVhaYB5eizYahzOxpVugCD3Tr4bHKRDLlZK6NAtQ405416j8TXFQktzlWitXBrmeN+QTGAA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(366004)(396003)(346002)(136003)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(38100700002)(6666004)(6506007)(53546011)(83380400001)(31686004)(6512007)(82960400001)(2616005)(86362001)(41300700001)(2906002)(44832011)(5660300002)(8676002)(36756003)(8936002)(31696002)(4326008)(66556008)(66476007)(54906003)(316002)(66946007)(26005)(478600001)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OVcvNkhkM2x2ajNlek1jN0t5YTJOdlhucjVRWEx0UHg4czcrK0ovWEhsSnh0?=
 =?utf-8?B?TktuekRERTNzMHNMbUI0MUw5dkxPRGsrYXNNYm1hQ00zd0YvWHo3QUFKZzFl?=
 =?utf-8?B?MDN6d0VSRmdUb1k0U1N3RjU2M3BCSFQ5cVpzaU5VcVRKOC9tVlV4UG0rbEZT?=
 =?utf-8?B?djd4aStmN0k5TXVJOUY0RjdtOTg2T3JMSUIvWFVKcGFReDU4RFJSaFNlUlFk?=
 =?utf-8?B?eTlnVmhDUWVSYUtmVVUzSDUvdnZtK1FLalh6bVM0dGs4TUdaK3loV2hLTC9x?=
 =?utf-8?B?TU5YWlJLdVBXazMycHdzZm95NnRZYVhOdDVsUVdCc0hKWElRVUhPYlYxbkpw?=
 =?utf-8?B?c01obzVCd1NFK3VBZFh3Ri9XT09YMjRFdGFVS3NXamZPeUwrUXFtaWE2b0xk?=
 =?utf-8?B?UnpNYmVwQVNxcGJqcTVKTmRZK1NGQXB5RVZGMlMrbVk2cDg1MXBxVlhkNk1v?=
 =?utf-8?B?NUs0VEs0bVdWN056cS9OR3RHYmZJWmQ3bDh0S3FhMWxrdDUwLzJMeXlQQ0p5?=
 =?utf-8?B?ZXdIbWlGSkhZYzVEblBVWXp5dlVia3BCeWJiaU1aTjBMWlVITklzUEF4L0M4?=
 =?utf-8?B?MkNwTE1kTWloZFlCUTBwREpTVFZ0QXJtSjllK3dTU1VxMUhpcGkvYUE1U0kx?=
 =?utf-8?B?SXU0QXdRTndBQkxjUWVGb3I4bHlqOGR3RnkzUEt1eW9RaFBQWjh1bkZ2RUJG?=
 =?utf-8?B?dkZLaGN0elVWWUVWTTlrYXlsNWxnSWdqMGxWVFdkZ25zQkpGWFphNHdxQnQz?=
 =?utf-8?B?UmVWR2tyR1MzZEZLUWY4c2V1UE13a0tkQmlzVHJzQkRVMjVPbE43VmROMnVv?=
 =?utf-8?B?bmRVakRhWS9wYWxNRzR3TVNzYzVsK2Z4NXUyYmsyckorZFF2cnFsYzdLTFRG?=
 =?utf-8?B?bmh6TUdtYi85UVd2RHlQb0FFQ2VtUWQ1dHA3Q0VJc2dpN2RjMVB2azR1aFRw?=
 =?utf-8?B?aUt4ZSs2TzlTNWVFWWpSUEFyTGVUU29tYmdGUWltd0wreVNQTUZZNHJLelNZ?=
 =?utf-8?B?NmlsaFFVYWt0K0YzdG9OZmU2UU9VOU0xVzVjNTFJK0tKRUZaVU9FWTFBb0Vj?=
 =?utf-8?B?R05ZOUtsSG9MblNWTTZ5UGp6NXBKT1dxY2RCc3JBWEtnci9CNXZqSldubHFQ?=
 =?utf-8?B?Wmgva0kwelAzdXRBZXNicGVyUXQ1SlJGN29rWUJCbnd3Z0pzM09IK0szL3Qz?=
 =?utf-8?B?L2xrSVVvYjRMZVBmL2NEQXFPTTlzZ2owR0JCR1VoZ2RVMC9nN2dCY05YazVw?=
 =?utf-8?B?OE1RNTR3d2JzcjhHU2FRdlFIMm5Ld1dTeGszUm9WZWFETE5sV0lKcjZSR1N5?=
 =?utf-8?B?Uk93UFFxK0kxUFowSC96dXl1OUYrZGJjNElFaktYNWFSOUk5UU5EMlNZOEJo?=
 =?utf-8?B?YStJSWk5NWQ3dUZ6Q2U0NGJ3S05YTFdsdGg4NGhlcHFDSkFSeHZ6SnhJaEJw?=
 =?utf-8?B?cElvaDU4cnJSclM3dCtIV2Rhd2N0K3hXRUxJam1OUUV0WUlNYnBBelhWYTJL?=
 =?utf-8?B?MWxHb2VkUVJuT3dwY090bGY0WG92VXdyK29WUWo3NTRidVdhTGgxbXg0Y0Er?=
 =?utf-8?B?VUZBOW1sVzI0cXRyR2JvajRuRElQWmNVUUlNRTY1MlBtOG5QeWZHVnhKMW9P?=
 =?utf-8?B?SUdyVW4ySXdxeEJZb1NvOHNtdU12SXlrRnFBUnJKMGdqOU92NU5tUGp3b1Fx?=
 =?utf-8?B?c0tnSFFISG85ZW4wanFINXczVm1DaVVDZ2c0RzFJNGdvK1QvbUZCTnNXL2tm?=
 =?utf-8?B?S2N1UnptbVJMdm9KYVdaaGlaenFQQ3ZGbTErWWk3aEhNaUVqUUdML1ZRenls?=
 =?utf-8?B?Q0ErRHBXK1hURWs0WG1CbXZJRTFSbkN4SFl5azlXRWZXL05iL1ozNDlkNFoy?=
 =?utf-8?B?RUhkYkkvT28zdmFBTTBXWFNla3RWNzU0RFlRRWlsTkxIejV2YW0yS2lHbUNI?=
 =?utf-8?B?c1dNVFZYRFpxbXdSQmtkSHdYcUZQem1ia0VPOENSY3ZNNitHNSt0YndWNlVi?=
 =?utf-8?B?YmJWU3dtTUdWZllWMlBra1QyUVIzNXY1b04vSlpaalFHVG5hV25qaU90NTlJ?=
 =?utf-8?B?T1lRVXNoNkRkclRmanZFZXRkTC9GZXNMSkJrUFhUb3VDRFR3Nmx4YnpOYU1U?=
 =?utf-8?Q?D2RzxzE9N8e8S+FiWCex7irtw?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e81bf518-abca-47bf-263e-08dbdec70b80
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2023 12:51:07.7790 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EDZytSX5j5G2I7slxdBcHep7eW5KudxEZUgYfgvUUgj369SjqYCdsHoLRZO5GFslnKzl9/rH5Dao5+wC1zc//w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5400
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Apply notify_guc to all GTs
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 11/6/2023 1:45 PM, Jani Nikula wrote:
> On Wed, 25 Oct 2023, Nirmoy Das <nirmoy.das@intel.com> wrote:
>> Handle platforms with multiple GTs by iterate over all GTs.
>> Add a Fixes commit so this gets propagated for MTL support.
>>
>> Fixes: 213c43676beb ("drm/i915/mtl: Remove the 'force_probe' requirement for Meteor Lake")
> This came up in another patch. I don't like abusing Fixes: like this. I
> understand the motivation here, but this patch does not fix the
> referenced commit.

I wasn't aware of a better solution but now I have from your response to 
the other patch.

I will keep that in my mind.


Thanks,

Nirmoy


> BR,
> Jani.
>
>> Suggested-by: John Harrison <john.c.harrison@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> Cc: Andi Shyti <andi.shyti@linux.intel.com>
>> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> ---
>>   drivers/gpu/drm/i915/i915_debugfs_params.c | 9 ++++++---
>>   1 file changed, 6 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_debugfs_params.c b/drivers/gpu/drm/i915/i915_debugfs_params.c
>> index 614bde321589..8bca02025e09 100644
>> --- a/drivers/gpu/drm/i915/i915_debugfs_params.c
>> +++ b/drivers/gpu/drm/i915/i915_debugfs_params.c
>> @@ -38,10 +38,13 @@ static int i915_param_int_open(struct inode *inode, struct file *file)
>>   
>>   static int notify_guc(struct drm_i915_private *i915)
>>   {
>> -	int ret = 0;
>> +	struct intel_gt *gt;
>> +	int i, ret = 0;
>>   
>> -	if (intel_uc_uses_guc_submission(&to_gt(i915)->uc))
>> -		ret = intel_guc_global_policies_update(&to_gt(i915)->uc.guc);
>> +	for_each_gt(gt, i915, i) {
>> +		if (intel_uc_uses_guc_submission(&gt->uc))
>> +			ret = intel_guc_global_policies_update(&gt->uc.guc);
>> +	}
>>   
>>   	return ret;
>>   }
