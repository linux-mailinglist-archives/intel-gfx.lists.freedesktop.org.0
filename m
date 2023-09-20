Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D9F7A88A9
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 17:41:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5F5210E514;
	Wed, 20 Sep 2023 15:41:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A60410E515
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 15:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695224515; x=1726760515;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=otB3VghHtTJtj5R8iBhhI6m77rVhd3EMyjQgFZ+JO5k=;
 b=Pf9c70khL0NtzGWtUw9TvFGw6YDnwxmtpuypCr7kDbkZEi5WLtUeMlWH
 ugksa25LXcMKsS66Fnrhe7YbAt3l6EgCkful/Gcexvp5kQkfaFH22hC5Y
 99OLq5YM5iPISUJfD2h90keIpfwI622kTTS7AVm3dd3vDj23XwB9BGScr
 tA39XHp1dEPQ9AGY3FFqVN13FM+OFbo003Zi7/JNtmfiheVaa1KE2L7nr
 XMR27tp07bC6bJyjXDqa+aFkHULOSMfuxSYam4Wu5pIPNI2ypQvh793iG
 KvgTGS4hfvY52sI17Vt7gp+tSNSFSu0AiZcxOU0A18AJ8n7LBtGB5c5oC A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="380173939"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="380173939"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 08:41:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="746693351"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="746693351"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Sep 2023 08:41:54 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 08:41:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 08:41:53 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 20 Sep 2023 08:41:53 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 20 Sep 2023 08:41:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DKCZV/YJ0LF+RHGKwl/5/oN/8KnPtmyodAPGv7li+/VnOh6T3OOaQWAL+61JgOkwFv38e0RQaZGtqthi4eHDg29BCqQ3jzSft4CACgcrvzx6bxIp83xyeCDvxuG1xhN3bj7N9mzGkdDRAuDIrH72uc1OZwx6EL4VnjzKHeLpKAb/xkk2aXP4aKSLFxgtv+9pi1WA7bF9Wu5TDRoqa8xRyDKoXixfm1swQtKia0Z64nglWUyJafA87UIZxdbz4PuSqtzAmyBJpCthPHRZR3WGHOc0ujQRI2PtliWCYa15M4lT8/aYr2DiakhUg1+20eiJDBwQ6DjCBd1T15t1s54/WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A+NWoEdUNiR0DetzGGl+xSsrsdpHZDgdWz8xm3pxLd4=;
 b=Be4D0hOlLcc/ufO8IRuXlZIhsmJttuU2iCb42Me39UBkzI01I06C+nbbMyebzXDV5zBjyQKEw6CycCJ7mgT8FHcxIDjL4G80k7zCKSziTlMhhnbVsVetxqfEQKY0N6X3YgSUAVpazYoXu3Emny0Fc9sUd44+kWjUVE1UP7zkmahE6lQsKej4pz5J3euu+Qbk96JhYHuIYSoWAnfG1N/prEXxS+qMp7IWJqXATqM01m4fTgOQq77TRQqvx+/SAIUddEshYX8bjhJtCneWmwM4II3fR+yMxfj1LtiGbZu2Od0I78Tmz3Zv7zDvlgjYRLbwwJII5oecgcUP8DCd18xeYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by SA1PR11MB5897.namprd11.prod.outlook.com (2603:10b6:806:228::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.27; Wed, 20 Sep
 2023 15:41:50 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1d18:2488:73b2:e47d]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1d18:2488:73b2:e47d%6]) with mapi id 15.20.6813.017; Wed, 20 Sep 2023
 15:41:50 +0000
Message-ID: <425776db-cd1f-2bc1-862b-605cfecb8078@intel.com>
Date: Wed, 20 Sep 2023 17:41:46 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230918170257.8586-1-nirmoy.das@intel.com>
 <20230918170257.8586-2-nirmoy.das@intel.com> <87ttrprzbn.fsf@intel.com>
From: Nirmoy Das <nirmoy.das@intel.com>
In-Reply-To: <87ttrprzbn.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR2P281CA0092.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9b::16) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|SA1PR11MB5897:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e2dcfe5-9b3a-4f83-b205-08dbb9f01b08
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 83AiR5uMnFkCSA9rkyIoT2oZdlLVS1NaCiUNJLcZECbwYsJuyojyWKEesoGUQxa8H/c+Fcnd5Hh+WfNRT8m9iIaakIKTs9N++4xeHQGRjYI6/T7qA1s2DB2YOwZ8Hx7HlzvQ/bpFX0g3ZmzhXIYJ0tKZsogGjdrNw3r5K5hx/k3YeA1ZCuOofDeBfR6FmWh2kIqSu4FrHQbbTTlQP7BbkJdARsdhbWErtps/izk0ELy92rTTMjzAJ5pl9xMsY9whEDMQDKFgqM20fSRC5JaellUnRUXOvu3zUy0bYOuCqUNcPnL4uqtgMOs0TDfmvKl91ShZD9zV3FSDala/YvEHsxlrFyQRfGbgdQlI+uXsHxiEf+9KlwoY9o4x1DS2JkAexgHOify6rtumZ7DI0zrtjTge2QO7ZmOYkEjho2I/gv9+BEZ7PbYoOZ1n/gefCWDeiUoOWZizy6aBzRE2MzWWh0tbYq2sxpn8S4plk7M8Tdf3a1DRhYi+XkE+4JNJtCwAjvZa1Ey8FRPV8oBs/Ks4nbUmkd5qYemnF5SyN+hQdSed1LUQJKPFgbkPBQjdT49oogBbEQcKGYXfrWPPrpWzuHnMgy9pSQ+aIo94d5En6z5OG4p6s4vGilJByqGgFKv9ykG85udHQnrQ7Jat/bifqanaLr2bntPYEHmPfGoGpD36+XWJfak+MZCG62uUHKtS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(136003)(346002)(396003)(376002)(451199024)(1800799009)(186009)(26005)(2616005)(31686004)(83380400001)(66556008)(31696002)(4326008)(44832011)(8676002)(66946007)(8936002)(41300700001)(66476007)(2906002)(316002)(38100700002)(86362001)(478600001)(36756003)(6486002)(5660300002)(6512007)(6506007)(6666004)(82960400001)(53546011)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ejNRYjBpZXJML2N2THp2bjNCbWRuS2IzZFBSeGFxa3RsRzVGNXJ4ODdYWkJW?=
 =?utf-8?B?U2RXdjBVOTJ3eVBBWE43Q0ZlZkEvcnVZU0JscEx5d1l1ODJTVHVTb0hwWTlI?=
 =?utf-8?B?bEpUclJkM2NSTk1Va2U3b1pUblZhMlNpdW91VTZZR0w1aitoeW9Ob0IvTExo?=
 =?utf-8?B?dGpSRDd4WW51Q2hXQWFqNEVzTjE0emh1Y0cxTEFDTmt0SGE4MHE0RWdMNVZX?=
 =?utf-8?B?cndwdFNBT1Y4VWhlYSs5SWI5Ly9wRFhsUEpkNEVOYnUvZmRqV2tyRHlqWk85?=
 =?utf-8?B?N2l6bEp2L1c2MUw3MlZuaWU2ODE3clJrVWJhclNqTmJSK21EdDVkeWVlSit3?=
 =?utf-8?B?V0ZwUGIwU25ldlJrQUo1QXpOTEhLdTFUS2paS0dOT0JwWTlDZjMzL283MmF4?=
 =?utf-8?B?VU1ITXozdURCRHlWUXpYREFxMmNydG1EcWRnNGQwQk8ySkVuVVVRQ3Fsc2di?=
 =?utf-8?B?UGwwZ0tGOHNOOWtVckJKeTVXdlBmMHFKSkVoL1IzS0lJSE4ramRnOXpaV0Rv?=
 =?utf-8?B?VGpnekx1aEFJVldzcHNFU1dMR3VnS3F4cElRdEJVL1B2d2wrOEpVa3Q5RElI?=
 =?utf-8?B?M3ltSXVYNmx0Rzk1SkFqZThicmdpVUdtRmpDQTlwVWx3Y3R0Q04weXQ5QUlo?=
 =?utf-8?B?NVpVMTdGZWxTbmVLcXpvZ0xaVmIyQzNIZjZFOWFzcUluOWdxa2J1WGhFQnc1?=
 =?utf-8?B?a0JqNVZHd0Z1YktiT3F5SU5BR1hpWTV0eHpFR2pjYXdsUU05Wmo3bEJPbzcw?=
 =?utf-8?B?Wi96WkhlT2lEaXdhMlB4SlczWGZCTERqdnFFTDBwUEo4UXVaTmxWamRJUnBB?=
 =?utf-8?B?KzBWNXduMG1UZVhtbEFzdWVqSTdlZ0JiMk16MGthVFRSMmxJUUQ3R1ZqZlA3?=
 =?utf-8?B?eWFPUGFnYTd3dFNIOWVkZWtMd2Zrck5INnlKRDYxdlpCZzEyWDhGTUtybGUw?=
 =?utf-8?B?bHRueTloV0lJZE5NenRWQ081UWJZUTFzYTZGYkg1Nnc0RjM5Vm1sOHNJcFdt?=
 =?utf-8?B?UDlHLzlwWUFsVGlLcm05YUZ1WUkySVVKSEluOEJKY3hPSUVleXFNZDdzREhk?=
 =?utf-8?B?U0VkbzhmbXQ1Yk5Kbld4eWxkcC9NTkQvbUdQVmRnQnlJeHBkOVc3Y256ZUVk?=
 =?utf-8?B?ZUw1ekVDSmE4WW5NTGJwU2wrVjRsQitNUE8wb1pLOWNQekJqTjlGdDZlRVBE?=
 =?utf-8?B?dWNIMER4cDhrb3hZbFY0dUluMU1OSDIwdWErakUxckY4YkY1Qlpka1VMTWRQ?=
 =?utf-8?B?dmswdXNHR3kwUStUUHl0ZTBBemwwUXBZbDJ1U3QxMUlGQUNNdGdqczdRK3ls?=
 =?utf-8?B?ZmZJOStYbWFHTzNkd3lOaVREU0t6MlIwZFRlcHhjYVRaUXZYeTBsUTRQczJy?=
 =?utf-8?B?ajBKT2Nha0VadEJ4YXV0UnY5YTNKRTlOVE02VXZnY3pFbFdKTURIR1hUTFRN?=
 =?utf-8?B?anhvTnEzMlFrQ05NUHZMc0xCYk9ERU5KdDN4cGhrUm9pOXl3NmY5eWRRcmJu?=
 =?utf-8?B?OVRhbkpPUG9FNS9pSnZxNkpQQUNiMUo5TXArd3NHaSt5Q2N3Vk5zRUVpQkdo?=
 =?utf-8?B?U2p4M3dWK0NYcTk1OTluYmFqUWV2Z0x1TmlJQmF6d3ExZ2ZDbVRSOW0vT1Rs?=
 =?utf-8?B?b2swNStGcGJxWTVsOEhQakxDcHE5d2VxNktNNWhseWVlMnN4dlM4QW5RNWx4?=
 =?utf-8?B?RnBoVFBGMnpQcGxKdWhPdGN0eXFFT016cHNSSXNnelJBZ0NUVU5UV2xKNWRl?=
 =?utf-8?B?VFhxOXJrcFd1aVZ1ZHpZaXlXRnRqMnlLSVVtVFZaY1JXUDdDbFlyak5Wdklm?=
 =?utf-8?B?blZ2dWZCRDBObXlKRm43Rk55N3BYN2x1aS8ySnI1cFEySXBJa2c3Q3o0dG45?=
 =?utf-8?B?MkRpQmJ3eCt4WXZtRytJTS90UkZqclhxcDd1citVdVN1eCt1MGdZVFpnRi9k?=
 =?utf-8?B?Q0hVMVBqZ3FYWW5DUHFqRDMyMUprYkxrWSt3OXUydVQ5SWkzRzlmUVNwUmF3?=
 =?utf-8?B?cUhQWmJNKzNWRzc3VDNyZkdxcEJIc1hMTitXYUxWVEtLL25NNXdMR091UEt5?=
 =?utf-8?B?ekRiU3FlOTFnMEVFdC9qdktERTAxd0EySDNUcGphUk5lUDhKUDRDYjlYNUlp?=
 =?utf-8?Q?tPEdBI0BpxNjZWBKrrxNuLQ6K?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e2dcfe5-9b3a-4f83-b205-08dbb9f01b08
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2023 15:41:50.1636 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A8bi65gf9TGhSE9lpoN8S/HplguxDGkGVZYPcFBSEsm2qLDaAmUAXdVrvpJZs9NKRwhZlyfWti+Or/2ryPnu4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5897
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915: Lift runtime-pm acquire
 callbacks out of intel_wakeref.mutex
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
Cc: matthew.d.roper@intel.com, chris.p.wilson@linux.intel.com,
 andi.shyti@intel.com, Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

On 9/20/2023 11:03 AM, Jani Nikula wrote:
> On Mon, 18 Sep 2023, Nirmoy Das <nirmoy.das@intel.com> wrote:
>> From: Chris Wilson <chris.p.wilson@intel.com>
>>
>> When runtime pm is first woken, it will synchronously call the
>> registered callbacks for the device. These callbacks
>> may pull in their own forest of locks, which we do not want to
>> conflate with the intel_wakeref.mutex. A second minor benefit to
>> reducing the coverage of the mutex, is that it will reduce
>> contention for frequent sleeps and wakes (such as when being used
>> for soft-rc6).
>>
>> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> Is this patch a dependency on the subsequent patches in the series? If
> yes, what's the rationale?

When we do GGTT update with gpu request, we need to take pm wakeref for 
GT as well as for the engine and

without this patch/improvement there will be lockdep warning as we are 
not allowed to alloc memory with

vm->mutex held which can happen when the runtime pm woken up 1st.


> If not, please submit separately. None of
> this is is obvious in the commit messages.


So I would like to keep this patch in the series. I will add rationale 
in the cover letter and

resend with your below suggestions.


Thanks,

Nirmoy

>
>> ---
>>   drivers/gpu/drm/i915/intel_wakeref.c | 43 ++++++++++++++--------------
>>   1 file changed, 21 insertions(+), 22 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/intel_wakeref.c b/drivers/gpu/drm/i915/intel_wakeref.c
>> index 718f2f1b6174..af7b4cb5b4d7 100644
>> --- a/drivers/gpu/drm/i915/intel_wakeref.c
>> +++ b/drivers/gpu/drm/i915/intel_wakeref.c
>> @@ -10,21 +10,11 @@
>>   #include "intel_wakeref.h"
>>   #include "i915_drv.h"
>>   
>> -static void rpm_get(struct intel_wakeref *wf)
>> -{
>> -	wf->wakeref = intel_runtime_pm_get(&wf->i915->runtime_pm);
>> -}
>> -
>> -static void rpm_put(struct intel_wakeref *wf)
>> -{
>> -	intel_wakeref_t wakeref = fetch_and_zero(&wf->wakeref);
>> -
>> -	intel_runtime_pm_put(&wf->i915->runtime_pm, wakeref);
>> -	INTEL_WAKEREF_BUG_ON(!wakeref);
>> -}
>> -
>>   int __intel_wakeref_get_first(struct intel_wakeref *wf)
>>   {
>> +	intel_wakeref_t wakeref = intel_runtime_pm_get(&wf->i915->runtime_pm);
> No non-trivial function calls in the initializer please.
>
>> +	int err = 0;
> Until now err was only for handling error returns. If it's also for
> returning success, it should probably be named ret.
>
>> +
>>   	/*
>>   	 * Treat get/put as different subclasses, as we may need to run
>>   	 * the put callback from under the shrinker and do not want to
>> @@ -32,41 +22,50 @@ int __intel_wakeref_get_first(struct intel_wakeref *wf)
>>   	 * upon acquiring the wakeref.
>>   	 */
>>   	mutex_lock_nested(&wf->mutex, SINGLE_DEPTH_NESTING);
>> -	if (!atomic_read(&wf->count)) {
>> -		int err;
>>   
>> -		rpm_get(wf);
>> +	if (likely(!atomic_read(&wf->count))) {
> Adding the likely should be a separate patch with rationale, not a
> random drive-by change. (And maybe it just should not be added at all.)
>
>> +		INTEL_WAKEREF_BUG_ON(wf->wakeref);
>> +		wf->wakeref = fetch_and_zero(&wakeref);
> fetch_and_zero() should just die. All it does here is make things more
> confusing, not less. Please don't add new users.
>
> The get and put helpers could probably stay, modified, to make this more
> readable.
>
>>   
>>   		err = wf->ops->get(wf);
>>   		if (unlikely(err)) {
>> -			rpm_put(wf);
>> -			mutex_unlock(&wf->mutex);
>> -			return err;
>> +			wakeref = xchg(&wf->wakeref, 0);
>> +			wake_up_var(&wf->wakeref);
> e.g. here this bit is duplicated in ____intel_wakeref_put_last().
>
>> +			goto unlock;
>>   		}
>>   
>>   		smp_mb__before_atomic(); /* release wf->count */
>>   	}
>>   	atomic_inc(&wf->count);
>> +	INTEL_WAKEREF_BUG_ON(atomic_read(&wf->count) <= 0);
>> +
>> +unlock:
>>   	mutex_unlock(&wf->mutex);
>> +	if (unlikely(wakeref))
>> +		intel_runtime_pm_put(&wf->i915->runtime_pm, wakeref);
>>   
>> -	INTEL_WAKEREF_BUG_ON(atomic_read(&wf->count) <= 0);
>> -	return 0;
>> +	return err;
>>   }
>>   
>>   static void ____intel_wakeref_put_last(struct intel_wakeref *wf)
>>   {
>> +	intel_wakeref_t wakeref = 0;
>> +
>>   	INTEL_WAKEREF_BUG_ON(atomic_read(&wf->count) <= 0);
>>   	if (unlikely(!atomic_dec_and_test(&wf->count)))
>>   		goto unlock;
>>   
>>   	/* ops->put() must reschedule its own release on error/deferral */
>>   	if (likely(!wf->ops->put(wf))) {
>> -		rpm_put(wf);
>> +		INTEL_WAKEREF_BUG_ON(!wf->wakeref);
>> +		wakeref = xchg(&wf->wakeref, 0);
>>   		wake_up_var(&wf->wakeref);
>>   	}
>>   
>>   unlock:
>>   	mutex_unlock(&wf->mutex);
>> +	if (wakeref)
>> +		intel_runtime_pm_put(&wf->i915->runtime_pm, wakeref);
>>   }
>>   
>>   void __intel_wakeref_put_last(struct intel_wakeref *wf, unsigned long flags)
