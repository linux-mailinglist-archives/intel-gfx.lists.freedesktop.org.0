Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B3C706084
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 08:57:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 036F610E3AE;
	Wed, 17 May 2023 06:57:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FFAA10E3AE
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 06:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684306645; x=1715842645;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=XmVUZQ4+n8xN9Sk/goo1/h5lIAhHmuAZRjly+Dh2qHs=;
 b=WfrDdz5GweHz+YeG2PpfRn3BuwQjUBM51PlfsPpCDDROyhI2EQk51rIk
 qZ1LAybSjgy1USb0ttXx5CMxG7BEQ/hfgTipt9GQSBsqQnZwSCMrua1VM
 JyoNgmTw78FlK+sHCpFqAp14useo/Eow5fV5jKEgcm8FEqapeBd6ZKGWV
 cyGytYohrLW6QyLJan5AYHcU3rJkvWUxnk8TfdgwvbEeJpGwCfy4qji1w
 clFDhRy55r+A4tt69o3mpargtS93Y+r/NcsZzannT7LkphYxu1vfkRILp
 Yvf4IeMfokACd4SNrN7dxoZlJrDYc5rnBwtcgY1fssCU++dwxCfvFr39H Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="332043159"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="332043159"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 23:57:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="825856120"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="825856120"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 16 May 2023 23:57:24 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 16 May 2023 23:57:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 16 May 2023 23:57:24 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 16 May 2023 23:57:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dfoEds+TnI9dzEL1URpep9LDHBZCMaVfLmvNp5antytEWsoGPP+LLg3Ug77ZgAI/bJrlyvGbqcEICNAPo6RL3BfWaHPX2ZnGluwSrL/Sd3zreVlrIJhWaXv7iBD4481eeRTpAHb4n25HbOZYZrb4qHmkjgcx8EDrQzvENFsTQXi6t9u+cAZ0PAFTW0tT76AgLK/bnF0R9xaRN903aesKdMrmkMhYgBluFaCCmLcnvhefJstzca42bNdhvWWEzclJ1l58P4FdWuNeAtjKe8vfcBcoPz9bWFtVk8118Dp6iIBKZ8zDXH4QglmdQ1IYPqTE5Vgmbw8z2ad73gU6jJpWfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MXRKoWAIckHqf/oMdca/yLZxbKXXip99zqg+hhlIHdY=;
 b=JBf3pqv6Z4a4mL2kHOWk5QFFw5XvUnsztBNup6llA0aum6tmlSRiCd+KNPf4Tg5t5eSxTpfWTTKhqMuRr4tJZfYYu6BfbkC0jTHhGHrZkCmezL59dfulT9/U6Qcf7vSlaMe0zFdyF2ZQFPFIvGBj+UwJjHEQRLNPQfB/pL0TbSZ+Py1Y4UsYdO7Wbo+F0prbsCXAlZpLOYZTWB7qmQSW1qOLWGoMLR8n2L/Bx1ItukP0t2HiubAuNkt9Sb3nLzldI+A/+n6yh3ZljmkhQSVwu0jmatRv3RNdc6X2hvg9C32KsDl5r8KaS3tsnC4Gb6lYoGKVPvB5SmJwzm/1XxVZog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 CO1PR11MB5121.namprd11.prod.outlook.com (2603:10b6:303:98::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6387.33; Wed, 17 May 2023 06:57:22 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3435:8461:a51:17fc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3435:8461:a51:17fc%4]) with mapi id 15.20.6411.017; Wed, 17 May 2023
 06:57:22 +0000
Date: Tue, 16 May 2023 23:57:20 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <ZGR60G4HpYh8bcsP@orsosgc001.jf.intel.com>
References: <20230516233534.3610598-1-umesh.nerlige.ramappa@intel.com>
 <20230516233534.3610598-7-umesh.nerlige.ramappa@intel.com>
 <87bkijpza1.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87bkijpza1.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BYAPR06CA0045.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::22) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|CO1PR11MB5121:EE_
X-MS-Office365-Filtering-Correlation-Id: 4161ffdf-c635-4981-bdb3-08db56a3f6dd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: J9xFogarf1/AD2xwc7/gATElKIPp5vSGqFUZ0zoB4DEJ2tpVbEwfBHGkl9CPPJFsQJhTMY6w93W3yd3cnCW90qnUt42cY7FU6IF1KmSFl1WIUHsGsSRRV/bjRl18V3j8ZfLT8RySRvufV0Tuy8oPaVrIot1UojGKMCOJuU+9hRQbx45oXgTSrjoi4g1eAQD3SQ5uHuZ+Ikv3aseD78p0BbZWbxetP63XlrJoPogfhKeSWbQgIfSBMsPKfqyPxuGtlBypwoNRYbhwXwU6Nh9wiQ31Sg5gcwZvhj56ymommbiHLmLWmSGcH4NZWWMzOS1gzkarkTgOnjrTu3h6XqElibZ2J3koh+Nkc/3FgrLw48V8wKZoraiJJ8xWS/rg8VytBH2RnIPXpTUlOUPFt2sg3tqQ4sTX81/khTHIt/UfrnpIgz0VJo4uaON1qLtmoTkJiMhVSZsB1BeMiZ2+RSOGVJulenFx2rdxRQrpDbVWk9hRqpJAhaMQFOdE/S5Nw/Dt4Oah5o173bJocwPI2Y6dy0kj0MEgZMk9HHGjhyXTl66mgv7KG64qE8J4sZtTGG4t
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(136003)(376002)(39860400002)(346002)(451199021)(4326008)(6636002)(66476007)(66946007)(66556008)(478600001)(86362001)(316002)(6486002)(83380400001)(186003)(6506007)(26005)(6512007)(6862004)(8676002)(2906002)(8936002)(5660300002)(38100700002)(41300700001)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R096M1dQRmVTaDhNOUVIV2ZPWUNWUzFwM3BuTUpXSVBRM0FZTERlVzJMU0x5?=
 =?utf-8?B?MSs3NzRaRzF6MU5QNGJISWxiM0dUaC9qenNMQUxWR1N3Y1NOdUZGNW5vLzk2?=
 =?utf-8?B?VThOQS90N3dBM2VsSklmam82cU92Rk51SCtvZCtkMzFrUkJucWRKRXZScCts?=
 =?utf-8?B?NVNiY080Zm1QTE0ySUt0SkY3c0pGTkNOV3hIQTd5V3d4eDZBSE1YUG1sNlc3?=
 =?utf-8?B?akxuT1JOU01BWTdnclYzb3hrcGpVd3BidGpERDRRRElEd2lkMXJtcUh3R0Fs?=
 =?utf-8?B?bGROVlVia0x2TFVTeUFEVFQ2YjhUOFRaNmZJZzdMRWMrVHVqem0rL0ZDaHZ6?=
 =?utf-8?B?Q082S1ZqU1k5UXo3K1FtTng3V1prZ3BsMzdLZllmeHNkV2V4ZzVvdFJBenVV?=
 =?utf-8?B?WWExaEJ2U042Tmp3ekJpaEMwYXNGd3BLR2daNmlKaFk4L2daV1hla2JmMWE5?=
 =?utf-8?B?UlExQy80UjIxRTVPNndSZ2l2bDdsZmV0Y3ExY0VSNnROTVZBOHZTeWt1L1px?=
 =?utf-8?B?NGRJdXVxOGFXZUkrdi80V2NGa0R4cFh4LzI4c2lrMzYwYkF5cFJuN0tFRnpr?=
 =?utf-8?B?OFBaWnUwbHp0ZlZPT1ZxN0tYMlppYUIzc1FzbnlhQ2p6YnpTaXZlSEJ4VEdx?=
 =?utf-8?B?ZElWd3czNmt3STJpMG5HUDFpNDZUN3c1NjhlNWtZUDUrUEZXUzIwV0ZxaHpY?=
 =?utf-8?B?bld1NTNQc05iMG9HbEFHcElCMDB1KzF0d3Z3OFNhOUp2Zlh3MEVZV2hWVlhH?=
 =?utf-8?B?bnp1OXp1NkpaeGhPeC9JRVFXUFJUNGZoQ3V1c0g1WVFiUXIzQUZyeTlCNWtE?=
 =?utf-8?B?UGtKMUU2MzZzanhwRFMzRytCNFZIWTh6bjA2M0JjVW1XM3pmTHJsT3Q0b0s1?=
 =?utf-8?B?d01ld25PaVZpeWhhQVNtbXloNmR0cHd2ZWhlV1Z5dis4MHNCWENoZ00vaFM3?=
 =?utf-8?B?UHdxU0Y2V1hLbk56S0w3TkF4b2RiTnlsVjF4YlBKT1BxN0tZTkl2amY1bkhX?=
 =?utf-8?B?TDRiYnNJT1BSaHdiWnA2RTRvWE9lK1l0M3pCdlhldXgzM0pHdU45U0o2QXZC?=
 =?utf-8?B?ZlRPVktxNjdPbEdLdkFzellPZkZFWXV4YlMrU2lJZG9SR1g0cVN6RmVOczEx?=
 =?utf-8?B?eTY2VFFkWnVaSjRWcXZWbHN2Zmt6MXdBUVhGNldhVGZDOXFFa2g3R1UrT21M?=
 =?utf-8?B?WnVQZ1N2SmRFTUVwMGtRakFpVFRGZXU1SXRpY0V5YW9RTXRpdGJLR1VpUUsx?=
 =?utf-8?B?YXFwbFdrWVFKRVNaaXNIRnUxOGh0MjQvVmEreWhXamU2NjZ3ZzNvektaeCtm?=
 =?utf-8?B?bWY0b1ZucXpaYTdCTnVFOHFWZ29oWWNVMTFlMHFtYlUzbFY2a3ZPQ2lqVXpM?=
 =?utf-8?B?a3diOW9nNmJCdVFHczhOb1VKcUpIdjN4K0ZtQXdmSm1BNHlWVldTWmNwNU8z?=
 =?utf-8?B?NUN3RzNiV3pibExIK2xick43aXlkNzlLMlc3NWVSVVhkQUFxNWlHbzVMeUh0?=
 =?utf-8?B?RHY4Mlpyb25JVlozTit0WWpaRkZYWHNqL1VLVWpobkdZVkFmRGxuUzgzTmlu?=
 =?utf-8?B?eWJiZW1GZ3l6M0tyWnhEalNCcnJPK2NxQ1lUajB0cHo1dmdSeWpUTHBxS2c3?=
 =?utf-8?B?R0xFUVNmeElaRTBHdmcvTTVKb1hZc2xUYis0MElicFFhWHdsVnR4c1BOenBt?=
 =?utf-8?B?a1RZUHhlMUhUeUdJOVdFUm56MnFsVmhKOXFFa0k2YlYwQ3JnUW56WmwyUnY2?=
 =?utf-8?B?T2pKL1h6cTd2MEQ3L3p0RFg1cDUxVGViS0JNaXFRZUpyaWY3OXF6Y3JSMm5s?=
 =?utf-8?B?aUpWQmZTdXMxVEM1cXFRd29scTNLbzNSdHgwSFk0L08zVjlsenJ1V0QvalFr?=
 =?utf-8?B?czZ6Y3ZodFJIWUJGc3NHU1doRG16cWlpWFpLcCtVNzNwbTZoSzRNaWFva3M4?=
 =?utf-8?B?Q1BYTnd0ZjRuMCtMTUkvRnUrdFYrYWxXMEUwZ2JHUGRPWVZnclRVR0JBdDE0?=
 =?utf-8?B?NTY4dHc0d1dWSjNhaS9xeUZWazVZN09wcEV4d01qOWFyQzN2ZlI5dUhBRC9E?=
 =?utf-8?B?Yk9tT1I5VkFHem5xZXptZlM0NU01cVBLVDZXdW1OMW83cURvZDNpaVRYRnpR?=
 =?utf-8?B?TyttYVMwWXdHRDNUY0EzRW1lOFl5bm1LV3JCdFlhKy90UmlGdm4vOEJFb2hu?=
 =?utf-8?Q?ONzTT8gY7ySW8AyUgP5rKgA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4161ffdf-c635-4981-bdb3-08db56a3f6dd
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 May 2023 06:57:22.6857 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ajbeJG5F4e2EyFFxQHoOMhp5AqqQRQWzPf0Tmhs2WqaSKAVBCThnEtHo+tbXvSEfqJbqlaZ+Js0GEDTYCvX3Iu7ydIihlf69sqR5pz8rVuQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5121
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 6/7] drm/i915/pmu: Prepare for multi-tile
 non-engine counters
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

On Tue, May 16, 2023 at 05:39:02PM -0700, Dixit, Ashutosh wrote:
>On Tue, 16 May 2023 16:35:33 -0700, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh,
>
>> +static u64 frequency_enabled_mask(void)
>
>u32
>
>> +{
>> +	unsigned int i;
>> +	u64 mask = 0;
>
>u32
>
>> +
>> +	for (i = 0; i < I915_PMU_MAX_GTS; i++)
>> +		mask |= config_mask(__I915_PMU_ACTUAL_FREQUENCY(i)) |
>> +			config_mask(__I915_PMU_REQUESTED_FREQUENCY(i));
>> +
>> +	return mask;
>> +}
>> +
>>  static bool pmu_needs_timer(struct i915_pmu *pmu, bool gpu_active)
>>  {
>>	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
>> -	u32 enable;
>> +	u64 enable;
>
>u32
>
>>
>>	/*
>>	 * Only some counters need the sampling timer.
>> @@ -131,9 +155,7 @@ static bool pmu_needs_timer(struct i915_pmu *pmu, bool gpu_active)
>>	 * Mask out all the ones which do not need the timer, or in
>>	 * other words keep all the ones that could need the timer.
>>	 */
>> -	enable &= config_mask(I915_PMU_ACTUAL_FREQUENCY) |
>> -		  config_mask(I915_PMU_REQUESTED_FREQUENCY) |
>> -		  ENGINE_SAMPLE_MASK;
>> +	enable &= frequency_enabled_mask() | ENGINE_SAMPLE_MASK;
>>
>>	/*
>>	 * When the GPU is idle per-engine counters do not need to be
>
>/snip/
>
>> diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
>> index 3a811266ac6a..f88de9ae1ebb 100644
>> --- a/drivers/gpu/drm/i915/i915_pmu.h
>> +++ b/drivers/gpu/drm/i915/i915_pmu.h
>> @@ -38,13 +38,16 @@ enum {
>>	__I915_NUM_PMU_SAMPLERS
>>  };
>>
>> +#define I915_PMU_MAX_GTS 2
>> +
>>  /*
>>   * How many different events we track in the global PMU mask.
>>   *
>>   * It is also used to know to needed number of event reference counters.
>>   */
>>  #define I915_PMU_MASK_BITS \
>> -	(I915_ENGINE_SAMPLE_COUNT + __I915_PMU_TRACKED_EVENT_COUNT)
>> +	(I915_ENGINE_SAMPLE_COUNT + \
>> +	 I915_PMU_MAX_GTS * __I915_PMU_TRACKED_EVENT_COUNT)
>>
>>  #define I915_ENGINE_SAMPLE_COUNT (I915_SAMPLE_SEMA + 1)
>>
>> @@ -95,7 +98,7 @@ struct i915_pmu {
>>	 *
>>	 * Low bits are engine samplers and other events continue from there.
>>	 */
>> -	u32 enable;
>> +	u64 enable;
>
>u32

Hmm, I missed that. Will fix.

Thanks,
Umesh
>
>Thanks.
>--
>Ashutosh
