Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D835B71F26A
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 20:52:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7393510E267;
	Thu,  1 Jun 2023 18:52:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 437F610E267
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jun 2023 18:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685645561; x=1717181561;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=iIyF3/wMhYvH+91gm1H81YpRoyoT1hL80n0YEXJ11Rk=;
 b=JqD38k8Gjaj4hMLr3DIHA7P14vinF0DjvzT6GFZhg4LN9zorO/gRqkVq
 lqkqiaXwCz7N/l6TxbSlAlU0uh3rs2KI/QMJoD+yZbwacGkE49/z0d8vI
 VCwWA4uIe+6tbKUc1l9zZ7MW2ShAncYD1PQXWoyZJpQXQy3hZmFnvOCJR
 5KOVuYos7GE3C6WRO7rpA/zyqMUC0OKFPg6Y53aCBx/oaOeUJ5oRwRK/R
 6xlIOsaWf12lItHPsZAYVu8odeXuCNwHSncM7rkpC5iCtVZfJsx4GpFmK
 nJSSM8TFly2ojOgZIBobCWqixUhti/COqiowyS2FltRP9CpZJk3q4OfaZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="358076513"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="358076513"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 11:52:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="831671710"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="831671710"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 01 Jun 2023 11:52:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 1 Jun 2023 11:52:36 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 1 Jun 2023 11:52:36 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 1 Jun 2023 11:52:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SnCO1DwRaE3ZsGDJggTf1gfefmeyV2ZMEDtzQA9DwL/Zkb03zAU+Dg+gLPcdbz+Gaz1vDwoJxuPK7r0+J6WomHGcKPmNfKw4PnnrrYVsX/Ej+BjjhfEyu2nuipZKPBcY1M1Zuh9W10mqWXa9TimhiSVeI/2s48XgxNlb8Z3mL0U3kpMRKfOZ0wSWUYuOzhSxAlKeZHbFs5LDlB1kz07lL5aUTuLCaHK+thPSHnUse0tD8tx9Iw4bRD1lRg8/BFXEzsi8O5Y6peX2sehBQxeANVZFBIGDgU6viI6adb3hP/+vG0Mb6smdfW9WmUj58qe3dmjSSuUiYJulePlQdv2ZFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lY6IFJ1q/JexJm6EVI9fA7/icjpp96lbBp6w++9Pp+Q=;
 b=eQs5Z1oKXKKaZN8TnzgZM7viDXHi1ZzpCVfKsNDluQZiSXZQsyXNIwVB1opA+34bqtIq95sgh9rhRzaG8s6iKQpHvDSCxUx3AIZujX+kwhr0+wVGTQEeEJCqxmUz7zL4VDnqivJrACqMv7LhWnM6xXK0rXpQYlkBiYiI3hD6zbT4xb5aYE+Zh7j3nlUyfN1qet8OaUhTc2Rn0Kgw86TDoLIRLvvIrbyeBszIjRNS9q3KYOidIlJ9iPstl/oUAWOdg/AJ5At+Mr0Q8fPmJvnmuj3zPDc1xqibM7QRuNmMA5IGzXlNGQ0zv+UiQ+LwrZm5PParBw7iAep9gL4KAKV8ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 BL3PR11MB6362.namprd11.prod.outlook.com (2603:10b6:208:3b5::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6411.17; Thu, 1 Jun 2023 18:52:34 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::daaa:41e1:8dc4:d281]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::daaa:41e1:8dc4:d281%7]) with mapi id 15.20.6433.024; Thu, 1 Jun 2023
 18:52:33 +0000
Date: Thu, 1 Jun 2023 11:52:22 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <ZHjo5s1wVo2ZBp6R@orsosgc001.jf.intel.com>
References: <20230531213547.1525692-1-matthew.s.atwood@intel.com>
 <87wn0nujol.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87wn0nujol.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: MW3PR06CA0007.namprd06.prod.outlook.com
 (2603:10b6:303:2a::12) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|BL3PR11MB6362:EE_
X-MS-Office365-Filtering-Correlation-Id: 59b148f8-2344-47b9-dca3-08db62d15c1e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: v/HWCtnk2PSpw9Brcy/i7ra/ZKzbj5XrFadVKw7eKlRboUGqHc7oP8ZGVtHkOPI5NfBXDG7zTFs9P4mmy2aK8txSYOskyp4bCdLTP+Oty439q3gD4OMiHjgIBkoKBBppjE9/lDjDLiRyuX7DokQL8P4AbL6P7wRCNWmkmJ8yoIJE9sOuZ4mYwYnFGqFozIlFNh/Fx8Y8Bt5vH16C8H2hyCoNL9mAA6Ri/ZrIjvrJBu7eIlx3rnwcX7t2g7aqdOQ/ipA7pecbFE5jcwxuGdExNv2Wq0yQbTd6gCt/OR2MuA/ETWomedGZvhi3ntGJG9rw/Rb7duQB48xXt/HwH7+c8WwtDexScV4ckR15VzGKf8oJUFRDJYY7//vbbNhjNeWC9hVl+91MwuBh5lpex2lvgXkM341JkMitfjrONu+rhS2a/WfMAGMzzbugPDzHVMPpHA9xnTF4+l3egqr2G0vh6A/k96XGbHX+HBGaVAmNJ2DtwFsB1cBzghUEcriC6Dc/SUe3Oh3GQ7onTeWzrU5ORCsu2fXmzkEPMCaaQb2mLo7uqF4pA975FnQlsvgu5L/9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(346002)(376002)(366004)(396003)(451199021)(4326008)(66476007)(82960400001)(66556008)(66946007)(54906003)(38100700002)(316002)(6636002)(478600001)(6486002)(41300700001)(6666004)(26005)(6506007)(2906002)(86362001)(5660300002)(6512007)(83380400001)(8936002)(6862004)(8676002)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VUlUNnlBTVFzWEZPUWNiV1UxTHNYOUNJaGtqeGZLL3ZKWjE1Vmt4NmJQRElU?=
 =?utf-8?B?TWhTekxyMjBIYm1lVHMrcDc1R0JWRjNnUS8rc1lVTnBlZzIwcUtSNWV2MWhT?=
 =?utf-8?B?RHZndjAyUUhzZ3hIS1dCVGprVS8vd2t6dkVlbnpTSCtUbm9Canlld2MzaUVH?=
 =?utf-8?B?dFJDTGZHeGgwb2Z2amgwZ1ZXUEthNkZGZFRHS3pmeUVMdUUydTFKY0Rna0Rj?=
 =?utf-8?B?MEdZNDhvRDEzUUl5cXFmMW1hNVUwTVlraWRYT2RwaG1LNGJjRE9BWGNiUmdh?=
 =?utf-8?B?d0gxNDR6RmhxV2pqMGozSVVLMHBSTjlNVDhPaHJmL0srOFI5OWg4Q2RvSkdB?=
 =?utf-8?B?a2JmZTVoOWVCTkIrRUZoTDlwR0N6cHdNUDljdlJqQzdQd0ZvMkx5Ty9MdW5S?=
 =?utf-8?B?N3Zncjl6Qk83aUIyRFBTTWVmT1RMczVxMHdOWUhYd0ZWM1FBb1ViU3JNQ25K?=
 =?utf-8?B?NmZoL05FTk5GUFgwR1hVV2NldlN5ZnNhM084VzJodXFueXFVSFpyRERoQjJH?=
 =?utf-8?B?YS9xb0t5emM2K0h1NXppbzVIaXdVcmY1NDI1Rm5GRlBXS0huV1BNdWROVnMw?=
 =?utf-8?B?MXAwVFRuejAwdGJaQUdXekRSbWlGR3JlL3g3NlZyZ3ZVbjdNSG9RbGQxYmRz?=
 =?utf-8?B?L0NKaEcwYU56bXo5VkpFMlF1anQ3cndMbkl5OU51TGZTZmZERXkvKzJyQkQr?=
 =?utf-8?B?bFF0R1RCQTZGRW41UGhkR2J4UEV1U3FMWXU0Vk1rdnFHT0JyQ0IvNFB5SWkx?=
 =?utf-8?B?b1BzR3VYRU9RUjd1QUFLRXlRS01MQzVVWnpzN2RYYVUwaS81NlFLWlI2bVpw?=
 =?utf-8?B?MkVodE9IRDZmeGlUZXA0NTcrK2c5MWtUcElFOHZYQllzbVhIbDlST25qb3Jp?=
 =?utf-8?B?NnoxODk5enpqWjEzbnRjNmpHL0Mzb2dIZFZIeURtMmZvVG9vM3NtNUxhYnZl?=
 =?utf-8?B?MzVkNTZmTkhTanhNaXp6aThTQWE1SStRclY3OStvcjc1UkliRWdzYndQRVBy?=
 =?utf-8?B?L1lWMGdtMGxoZUFyL3ZDM3BBdmd5dXk4SlMrZk5pdmkvWjhSN0ZTUjRldjBa?=
 =?utf-8?B?WUd4OEtNSTN6cEJNSXFUK2ZNaG80TnZDaWZja3hwdEpvQzBPTStTOWFNVFd0?=
 =?utf-8?B?MTRpSERtUGdyejcwWFA0NG8rR3FRZDl3akYzZGRzYzZQc1hZTXBuNXA5QXpB?=
 =?utf-8?B?bFF3QTR6Mi9OeW15QkxZSVhQd0dIcmpEdFV3VFJ0U0dMbVNIbEpZYlFIWTZI?=
 =?utf-8?B?QVA2ajJrWHRFMnZ1emE2SkdpNjBwKzZRMjYydXhxRFdJa1loZm5aNEdydnUz?=
 =?utf-8?B?NXNzZldIRGVHbnFFMTBHY2k2N0tQTjNsMWlGNlJIUDBnWUdpSUdUQkpLL0dZ?=
 =?utf-8?B?ZEEySmtZMnVmTU9uejZIdllQMTNUaVdQNkczWDRLUmgwQkhUcllzZUtDWm1Z?=
 =?utf-8?B?VGRoUWxYeEhBcDNzVUNLbkZQNnJ1WU4vSHhtL1BQNEVZZDYzMFNpcytTOTBy?=
 =?utf-8?B?UDBuUDIxbXRhckNXTmhhTVcrSDI4TWIyQmlRUzdTSUxoemI3TnYwWmh0T0ov?=
 =?utf-8?B?em41OHhOV1FiekRndCtWenhLR1RzUXNYUnlYWnJlbGV4ZVN6dC85VG03c3Vm?=
 =?utf-8?B?K1FWMjk3YmlDZVErVjhNcjNuNHFlVDF4eGRsakxuR1lSZEl5RjFaTlg5K0ty?=
 =?utf-8?B?bGxGVzFvNFRnVW43bVNGWE9kVWFqV21jUWhXWkhxLzg3QUE0eVBsUkRlMDdD?=
 =?utf-8?B?b2RJWXFJWnJKdDhzZm5lOGlnUEFSQ0czeUR5NmI5b1RxL0VEVWsxbjRYZkFo?=
 =?utf-8?B?NXlKUGJSSkVMZ2RzWGtYSFJKLzB0NUk4ZTRJK1dtbXpGUUFEQXh1L0VEajN4?=
 =?utf-8?B?T2ZMSnpKV3dadHJJbGV4Q29jVDNVNk9GQm13ZW1ZYzlER3NPQkFFMUUwQlVN?=
 =?utf-8?B?S3poOC8rRnZkWkZBNXBQOTlJeFdwZkR1cmh6RFErUFg2RkRtNHllYlBhWlN5?=
 =?utf-8?B?cGtFd05KZXJEZjF4OTZXWFhQZHBlY2x5R0tzM3hqcU1kSUlRcXhyQ2tjZGgr?=
 =?utf-8?B?OGFuNEhEblpndnpVdWNkL0poSGJSUjZjeTBQZys2OE5ITFNaY3hrcGpacURl?=
 =?utf-8?B?OXJtQ01oSWVvZFZoQkNYTktaSEtpOFZhdG5wQ01URVh6ZFJTb250NVVuM1lR?=
 =?utf-8?Q?PSZ3Ah7HYNg4poEXO6cp8o0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 59b148f8-2344-47b9-dca3-08db62d15c1e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2023 18:52:33.8180 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NI/vQq/Z9NsYx/a3qTeEf0e8OG4ImMRCOvamCsyd4hOmBY9+jSXo5WpkyvILSIXPZFF0Ygu3r2pJFkAFosSSCygNH0xehIQeyq+EQLpAz8k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6362
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: sync I915_PMU_MAX_GTS to
 I915_MAX_GT
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
Cc: Andi Shyti <andi.shyti@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 01, 2023 at 11:22:18AM -0700, Dixit, Ashutosh wrote:
>On Wed, 31 May 2023 14:35:47 -0700, Matt Atwood wrote:
>>
>
>Hi Matt,
>
>> Set I915_PMU_MAX_GTS to value in I915_MAX_GT, theres no reason for these
>> values to be different.
>>
>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
>
>I don't believe the mailer actually Cc'd us. I just saw this and am Cc'ing
>the people who authored/reviewed the previous series now.
>
>> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_pmu.h | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
>> index 33d80fbaab8b..aa929d8c224a 100644
>> --- a/drivers/gpu/drm/i915/i915_pmu.h
>> +++ b/drivers/gpu/drm/i915/i915_pmu.h
>> @@ -38,7 +38,7 @@ enum {
>>	__I915_NUM_PMU_SAMPLERS
>>  };
>>
>> -#define I915_PMU_MAX_GTS 2
>> +#define I915_PMU_MAX_GTS 4
>
>This was a discussed during the previous review and it was decided to keep
>the two values (I915_PMU_MAX_GTS and I915_MAX_GT) different. There are
>currently no platforms and there will be no i915 supported platforms with
>MAX_GT 4. So I prefer to leave the values as they currently are. Unless
>Umesh or Tvrtko agrees to this patch.

I would leave it as 2 since we specifically changed it to 2 (was 4 
earlier) during review of the PMU multi tile support patches.

Thanks,
Umesh

>
>Thanks.
>--
>Ashutosh
>
>>
>>  /*
>>   * How many different events we track in the global PMU mask.
>> --
>> 2.40.0
>>
