Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C1870607D
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 08:55:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9725410E3AE;
	Wed, 17 May 2023 06:55:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1468010E3AE
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 06:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684306540; x=1715842540;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gUscpYvREypYdSmyHJ110XRC8JDhmRVXTEURxJ9Vu3M=;
 b=ENW8I6++YynBiRU/bqcFDaScjUDvZzjnkEbFJuIu3OVYkAsFBwyLd8Mi
 BGiYhPI5jN2gYFJl5qNter5LQ/XI65zWQbwHhst6u/JUbECAjZkNBLPGb
 sNMd+RfNnnS8RDlN2MSwa74dYQByYj++ja2DmjlqW3dwxVbXYkWFaAd5Q
 LjlFXWibLDVeRUd95bMJ43r1xOWGpBwbtOOsUfhRv9y+Elgv+qNlpFMb9
 hXLZOapqoBrUR0LGymcDA5xWCLQKDM1b9Ea/8qd9duT/siE3nGO3Asdm9
 8vIM9lT8BqZZiaw4Hy9GH+2cnCgMPsasq8MnRGvK7KZCt5ySLQ0lAdqZ/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="332042856"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="332042856"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 23:55:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="825855150"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="825855150"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 16 May 2023 23:55:38 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 16 May 2023 23:55:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 16 May 2023 23:55:38 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 16 May 2023 23:55:38 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 16 May 2023 23:55:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FQX/HEzDEMBzMLD01DoujQKvhW7eme2jK97qC1jVtjfB56BoV15TlLi3I7g14DZ4t+m/uhljicLogFcwl25sJ3mbRLVOPxhfBLdoS5Qv60cWHQpSgTTV8xCWnfBqNnBm6cKDxhtm9PC3gFv9SLnbH4QHpi0r7zLKS7UNQlARY1lxuO/gJL14is5fTLC/h9dmj4WOampqkzeIh+Wx56M18TTB2IiPL9pQk7CI8UBcrYxra3N7dZmL8gsKj4ARFX0tLhPl+Y4w+T6p+6kpB8+dZ/LH/BgGyFGD5sbNoKH5SpEtfqilWLx6mbxAa/C76ShMWKTOVtcvmq6OwWP1B0RDXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KKB9frAGuqXI0sJQQu86lVHalHs3sBRV/lTlLnZqkQA=;
 b=FMjrZueYlaBVgbER8PmD6e4H8f4cRws09dN70leVrmE8FlfVH463b3QHBqY/EYes9mVLN/yXIlI9Z3r9RhqSWwe3722hpA8Bhm9uQZDbyhZLvYSZWONRQKo30iCdotWVoU7hoyrQkN3dBo8GXtCgUTwObZpK7f9LkuqdIhp0HFv+pecDhLbaQgzBHCWiwLohrdyWOiHBy4UhbmuoPOOmkAzDpXkyn3cZrlEXqbyLW4WZFilyKSgjpNvstl80XPMpKT98mDcj69Z4id5i3ff4vcNX6tbIBWO8JwXG9aHtbTj7poUtF5/xJeFD/uFyJHQqklRH+pahVBqcmXNz6SNSjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 CO1PR11MB5121.namprd11.prod.outlook.com (2603:10b6:303:98::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6387.33; Wed, 17 May 2023 06:55:36 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3435:8461:a51:17fc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3435:8461:a51:17fc%4]) with mapi id 15.20.6411.017; Wed, 17 May 2023
 06:55:36 +0000
Date: Tue, 16 May 2023 23:55:34 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <ZGR6ZnjlUqerD+nY@orsosgc001.jf.intel.com>
References: <20230516233534.3610598-1-umesh.nerlige.ramappa@intel.com>
 <20230516233534.3610598-2-umesh.nerlige.ramappa@intel.com>
 <87cz2zpzw1.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87cz2zpzw1.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BYAPR01CA0059.prod.exchangelabs.com (2603:10b6:a03:94::36)
 To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|CO1PR11MB5121:EE_
X-MS-Office365-Filtering-Correlation-Id: e829d780-9e6a-45ec-9ae8-08db56a3b7a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8G1MlwgGSRqRyaWU+gVxH1jRwLljaFbtz86uhdsSTS37TqTSYeLo2pH9uZ111l9K0UgukhtQ9PrvShCc3q5//o93LGOCiaovEkYuyN32CzCmDrzDlGzWVLRGxPTdzptROd60JVvJgA3OTD+Gplnkg4w3bKNUTfLPltzTgsxUTWw3egyay2FQuBocUFRNBWPuh7HOh2uvYfVC1iXuusVEw/es3vo7yj1a7+xdQmiNbWUjMftXbAOfHVlml9rZKneUrdFXBIJqxG9irk7O/BlUKrabNX4jbXqwGXYREng+DYe9oMllE6fSR4qS/Pwah5dM5702lxDU6DT3ejAfSP2iO64ME0VhyQCuqMppHuG4yu4zH2jUotX4f84p4fBAAmv1X2CUEykYp/WBrPOAY1Xo8xRVTn8TIRDI4UScWHFwW8d4XilITOTLAnTh7AIwmHGRNbMq6x/YPrqkTZ2Lmz8eThum25PHI+sDF1rfbI33og537QpG8tHcbGdLL0HkI9Vp4lICYTNwD/etQpiIChSMoAxaqjjH++GM8/BymFndwt0wMnJYTj+2eHTn183BujAdBlIG40WyZKjC9ViR5VM3E4lymEZDrML6P+FfeZc7c4Y=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(136003)(376002)(39860400002)(346002)(451199021)(4326008)(6636002)(66476007)(66946007)(66556008)(478600001)(86362001)(316002)(6486002)(83380400001)(186003)(6506007)(26005)(6512007)(6862004)(8676002)(2906002)(8936002)(5660300002)(38100700002)(41300700001)(82960400001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZVBrQ3dFZEg1WlZoV1JhejdCWkpCd0dNendqQ1BPYkhyYldISXRRWUlkUmMy?=
 =?utf-8?B?VU1QZVhZSXQ1NUhLd0ZQYTJETmlqa3I1RllETUdXWS9VaFNyWVVLS0hsYTk5?=
 =?utf-8?B?WGdkV2JUMFZpOWZHREVjNnNxaWRpT3VsM3lCcTJkU1VhTlRTTytkdDZCTjJE?=
 =?utf-8?B?K3I1S3kvdm9SMlllL1MxVGZGUVhzZXFKaE9uRUhLQk5WampJUGpmbGpZOWcy?=
 =?utf-8?B?akpYRy9lME9FZGFrUnlHZGc1eWVBZWhHQzNvbDN6a1N4OUo3OVljK3prbGpM?=
 =?utf-8?B?R1BOTmo5emduQzVYQThMU2tLNUpUelJjZ3pJWVB1bHZRUUlTWC9TZWFYandi?=
 =?utf-8?B?VDFOYjh1OTFaOUxCaGtCMHJZdGQ4SGpoZnJhNVJvU0MwRzhZN2RTOUwvVlBP?=
 =?utf-8?B?Y056OU1IOXJQclVPVFRCMHA0TUlKdEVGUTgvVFlrK250SzlJM2NjaW9Ldi9x?=
 =?utf-8?B?MWtnR0JhOHpHOWNONk9FaG0rZDIzUmNUdlZMaTRIWW5sajZya251ZUdreVdj?=
 =?utf-8?B?cTlGNSt1YzVENnJEc1lFQjFPdE5KQ3RLS2NacXNPVFZkZkVJTlhyMm9JTWNi?=
 =?utf-8?B?OGlHOThDYXZHWkRqeWRXc2VEWFg2RlRHRHgvb0NrWVR1NUx3RHNyNjhWZTZ4?=
 =?utf-8?B?WDRyNDVMbkE0dThxOEh6K0NkQnBoWG1aNTN1NHQ5Y1VIMk9tMlYxamRsQ3dj?=
 =?utf-8?B?dXZqZTc4aHN6dW0wM011TWVzZnlSaDNPdTd1SDVlbXBWWEJORFdIS21YK1Fw?=
 =?utf-8?B?ZVd3a3dNMDZhWEJSVno1cUdJVnpxMHBZa1ZmNWVTMnpXeVJTMWR2bWVyc2Zz?=
 =?utf-8?B?Y2svbGJ6UW1Gb2hGNmx4QzRIeFhveU9NQUNyV1h0a3VibGFOUTlyL1h0OXRj?=
 =?utf-8?B?MkJmd21KSGJROHNxalArd2N1NUc1NnFta285UzR0MW43UnFGelZEcmsvcFBS?=
 =?utf-8?B?TzZ1djNMdG5xb1cvQ2xwREJaWXZ0WVNkUnRNQ3ltaUxya3B2N3dzWXlRWmhz?=
 =?utf-8?B?clJJankwZFFwNDhJU2ZMaklqQTZrY1BvU0ZVcG50Qi9FRHVaUTAxdE1kWU5J?=
 =?utf-8?B?SnZjQWh2VnRDSUR3bTZ2dldSTWpuUzQ5cEdZR0xrbENrWGFkQktUS0VVTEla?=
 =?utf-8?B?cTU1N1YyRzZjLzlDMHBDK3FnV21yekQrTGJtVzhZNHVJUXVLVDRHY3dnYS9B?=
 =?utf-8?B?TStzZnM3eFZ6dFJ4NTlsZURXWkF4d0RLSlpkUUZSME5FaXloaS96anBVMXMy?=
 =?utf-8?B?VzRzRVRjdWtZclo1TVRscGxRN215N3lSVFJFSnVSZDI1K2twVnlsaGgwcGlX?=
 =?utf-8?B?a01uRUdvbTEzUW9JTHVTVW1CMDh6VnBlZWNnNVRCMng1eGJnbzVINGJKUmYr?=
 =?utf-8?B?V1VhUFBQK1VGYmwyUTN2QzVIYkMraTJkNTZWMzJXWDNZWWJ3MEpvbW51ZWw0?=
 =?utf-8?B?am93MXFSeXNCUzI0UWZKWS9QbnJEbFRrR3ZXYmZ6bk1hV0FhSVlvTGFKZUNj?=
 =?utf-8?B?SVhsL241RmxGdkZMSmFPQnE4ZjRlaW9rUlVTQkI1Ty8vVmNlYWFZL21QTk5h?=
 =?utf-8?B?SElzdFAvaUdPNkl6YjBtby9ZZzV4SERvdHIxeit2bHZRblJJN0tIWXgzSXlq?=
 =?utf-8?B?YzdwVUY0Rk1GNWtwSXZINXNISUg0ais4SngrWFozdE9LcVV6RkdEblNudHFJ?=
 =?utf-8?B?Z2kyNEh4S0lRYmtibGdUai9vT2ZZMFB0Mk1XWURsUUxRcGVNMmxZRDd1eDZr?=
 =?utf-8?B?azJQN21QaDZWblI1VWg2WEduOWJTNXoraStGc05lVS80UUphbWpsZ0VDNzNO?=
 =?utf-8?B?Mjl2ZDVOeWdVWEdsZ2JvVHJ0aXU1aTZPaDdGRVFDSCtMYURZbXFjV05WcGdk?=
 =?utf-8?B?SEl1OWdieGlVYktDQWhPNFRNYi9pNHFtNHJTUjcwRUlTYnJlU255UnhzazAv?=
 =?utf-8?B?U0VOVE9ac0NFMkcwZlJYazBNTlpvZGQ5RlN1OGRlQlZxcEx1bmt4Uk1CSFJS?=
 =?utf-8?B?WHlLaC9UK25JbzZtWnVjZFVTbElDZ3U5YTQ2RGZvWXA4SGpHNjdQbExjdERm?=
 =?utf-8?B?Nm15b0p1b2NwclVwTG1CUW9CT3l2dHVXWWJMQjE0VExUaVlaY2cycGlMcTNV?=
 =?utf-8?B?RFcyOHFnRnNEY0pRUUdtRmExVUkyRW5QaGhaeU9VcHp2K2VUdTFIZCtlTmZj?=
 =?utf-8?Q?S8xoug8TjSSjCh0HxGawNH0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e829d780-9e6a-45ec-9ae8-08db56a3b7a4
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 May 2023 06:55:36.6663 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nP4S0D43ToYPBhspSWLj8OcF0H9wsAHoMBzuPsuE6sL5fjQVZUHhT5f+izQGo15EXnKtIQGstCcNHZRNIiBBLOqNczElzz0mMSro88/XnXk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5121
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 1/7] drm/i915/pmu: Change bitmask of
 enabled events to u32
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 16, 2023 at 05:25:50PM -0700, Dixit, Ashutosh wrote:
>On Tue, 16 May 2023 16:35:28 -0700, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh/Tvrtko,
>
>Mostly repeating comments/questions made on the previous patch below.
>
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Having it as u64 was a confusing (but harmless) mistake.
>>
>> Also add some asserts to make sure the internal field does not overflow
>> in the future.
>>
>> v2: Fix WARN_ON firing for INTERRUPT event (Umesh)
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_pmu.c | 26 ++++++++++++++++++--------
>>  1 file changed, 18 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>> index 7ece883a7d95..96543dce2db1 100644
>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>> @@ -50,7 +50,7 @@ static u8 engine_event_instance(struct perf_event *event)
>>	return (event->attr.config >> I915_PMU_SAMPLE_BITS) & 0xff;
>>  }
>>
>> -static bool is_engine_config(u64 config)
>> +static bool is_engine_config(const u64 config)
>>  {
>>	return config < __I915_PMU_OTHER(0);
>>  }
>> @@ -88,9 +88,20 @@ static unsigned int config_bit(const u64 config)
>>		return other_bit(config);
>>  }
>>
>> -static u64 config_mask(u64 config)
>> +static u32 config_mask(const u64 config)
>>  {
>> -	return BIT_ULL(config_bit(config));
>> +	unsigned int bit = config_bit(config);
>
>Give that config_bit() can return -1 (I understand it is avoided in moving
>the code to config_mask from config_bit), maybe the code below should also
>have that check?

config_mask is only called to check frequency related events in the 
code, so I don't see it returing -1 here.

>
>	int bit = config_bit(config);
>
>	if (bit != -1)
>	{
>		...
>	}
>
>Though as mentioned below the 'if (__builtin_constant_p())' would have to
>go. Maybe the code could even have stayed in config_bit with the check.
>
>> +
>> +	if (__builtin_constant_p(config))
>> +		BUILD_BUG_ON(bit >
>> +			     BITS_PER_TYPE(typeof_member(struct i915_pmu,
>> +							 enable)) - 1);
>
>Given that config comes from the event (it is event->attr.config), can this
>ever be a builtin constant?

Not sure about earlier code where these checks were inside config_bit(), 
but with changes I made, I don't see this being a builtin constant.  
However, nothing prevents a caller from just passing a builtin_constant 
to this in future.

Thanks,
Umesh

>
>> +	else
>> +		WARN_ON_ONCE(bit >
>> +			     BITS_PER_TYPE(typeof_member(struct i915_pmu,
>> +							 enable)) - 1);
>
>There is really an even stricter limit on what the bit can be, which is the
>total number of possible events but anyway this is good enough.
>
>After addressing the above, this patch is:
>
>Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
>
>> +
>> +	return BIT(config_bit(config));
>>  }
>>
>>  static bool is_engine_event(struct perf_event *event)
>> @@ -633,11 +644,10 @@ static void i915_pmu_enable(struct perf_event *event)
>>  {
>>	struct drm_i915_private *i915 =
>>		container_of(event->pmu, typeof(*i915), pmu.base);
>> +	const unsigned int bit = event_bit(event);
>>	struct i915_pmu *pmu = &i915->pmu;
>>	unsigned long flags;
>> -	unsigned int bit;
>>
>> -	bit = event_bit(event);
>>	if (bit == -1)
>>		goto update;
>>
>> @@ -651,7 +661,7 @@ static void i915_pmu_enable(struct perf_event *event)
>>	GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
>>	GEM_BUG_ON(pmu->enable_count[bit] == ~0);
>>
>> -	pmu->enable |= BIT_ULL(bit);
>> +	pmu->enable |= BIT(bit);
>>	pmu->enable_count[bit]++;
>>
>>	/*
>> @@ -698,7 +708,7 @@ static void i915_pmu_disable(struct perf_event *event)
>>  {
>>	struct drm_i915_private *i915 =
>>		container_of(event->pmu, typeof(*i915), pmu.base);
>> -	unsigned int bit = event_bit(event);
>> +	const unsigned int bit = event_bit(event);
>>	struct i915_pmu *pmu = &i915->pmu;
>>	unsigned long flags;
>>
>> @@ -734,7 +744,7 @@ static void i915_pmu_disable(struct perf_event *event)
>>	 * bitmask when the last listener on an event goes away.
>>	 */
>>	if (--pmu->enable_count[bit] == 0) {
>> -		pmu->enable &= ~BIT_ULL(bit);
>> +		pmu->enable &= ~BIT(bit);
>>		pmu->timer_enabled &= pmu_needs_timer(pmu, true);
>>	}
>>
>> --
>> 2.36.1
>>
