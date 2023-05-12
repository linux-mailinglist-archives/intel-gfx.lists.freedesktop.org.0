Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F7C701242
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 00:45:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D851F10E6D8;
	Fri, 12 May 2023 22:45:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11A7E10E6D8
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 22:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683931512; x=1715467512;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=fBLktTgP3xUwsuqnqlVVYgjMLS3vULjFeuCLorwdx5A=;
 b=nJHzPy0P2u3oH+hDgmeD8lYSi9Tww1cxFUpyLglcrqgNA7snDAZ5jZFz
 Xh5HPeIOhF+VoG2jEAOzpo8CDtl44lZKnpSR86evpLGFm5Bu8rm/UoRt4
 K8GzL4JNP6Kuls5Vm8rEqfpJqssAEOK3cAwhOWnQWv41ePYjf/nR1hbnZ
 m7Yyn6U9nMt4APmzPcZ8wTLbAgrcGShQGaChEvqt8ApFWvcgLQ521nM4y
 hQKnkZtVwlv0ls07Of6rBPa5SKG+VknVi4OrA10EjeVj/RyINsLKnFWkO
 bKvEMdWMAcex69zKP8FWDTH+1UlGlPtZV5c25am3PkJ/n+Qv/eRU+tNk1 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="379038576"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="379038576"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 15:44:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="700326252"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="700326252"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 12 May 2023 15:44:05 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 12 May 2023 15:44:05 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 12 May 2023 15:44:04 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 12 May 2023 15:44:04 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 12 May 2023 15:44:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G7cG0yIOanlV97LOHl0f1MAXgCyqoLddWTCio07Z4619OQ1zYQkxcj/kmeTJ4xqQQHkIE+ECFxeLVdGdp/cAIeNb4RwIRUZX5WDgPn2DTp2qYNaaY197ZLq2bHphrYX8Llhb5VSrIYDARt8TTk6QCuLkwMeu5wAI5Y5EFt666/DNbTDDAmOq2+HZsPNfA5Bf1dqkCBLFFrKN7NVZA2gIg/oYT606DEJsc6Zg3ExVoVTDZGQ8EoXT25YKZmix39Gnxc7e3vWo3/QOnXLspYIe+W48CSeW4LIUjy45SUqT/lRIC2tM6LWD2wHP2Gm7KeBE3MaQdfYPQH8pNSRlcA/kUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kbwvGRgvmzNqrzw9vxp0fxOyIP9fsxTZuaQI0+o6XuI=;
 b=HZ2/+m2jD2YZG4FZp9ZZ2Dwks/EVg79TuSRx424D48D+pLJi65OJVIM+Pj6083M36PLVxTNqmjjCM2RZbf6wqgP7YbCNMFCCnK0slxA0X7EzlYbSS7An2c0rn63Q6KoDYg+MdlmZVgqIjxWygWhaCGEYu2rubxI5k/Vs3SjNJuUnyvrs6wIf9BxcOWHzJsWBjZ0hlA68rSxOQ0/yl4cnSYOWmkVApqD2IZfxXBz7ZNfxzJSZeeSrE6v/98vTnxA15rR0fyBcDNwrD+sSk38xLNjbcOgTU7y1BVE73XgOtzSgAX0Rjbmqv26pNetTnOEDGu+66iFTAkqOR1dMJti14w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 SA2PR11MB5084.namprd11.prod.outlook.com (2603:10b6:806:116::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.19; Fri, 12 May
 2023 22:44:03 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3435:8461:a51:17fc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::3435:8461:a51:17fc%3]) with mapi id 15.20.6387.023; Fri, 12 May 2023
 22:44:02 +0000
Date: Fri, 12 May 2023 15:44:00 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <ZF7BMH5W/lzS2tq0@orsosgc001.jf.intel.com>
References: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>
 <20230506005816.1891043-5-umesh.nerlige.ramappa@intel.com>
 <87ilcxdw0g.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87ilcxdw0g.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR03CA0344.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::19) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|SA2PR11MB5084:EE_
X-MS-Office365-Filtering-Correlation-Id: be08344a-6c84-4abf-1974-08db533a6243
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4LmwpMiLU8Hrsr+xrU2RQiALeTNCibp2wG/6naPVYWa/MetnLQ3O+mcvBkwXcZ13qOAfTFgayvbdQXpfpqzjcTadtOYljaIVjG1YZqK2xJWTD6iQ7Nyxfr2lCB/wHsSfzKgqj7HLnt/Nv9akffBS+MgBJ0NfCsQIL/1paSocdgX8okqtSQRwNdlLR/bhH+hgkgorp828drU6ZOkt0/ZJYWcvZ3UmsuCx7jodklb3U7+DCvsjhMSn1NyHmV2TTZjf5rkSwHO7rin8ePnv5VMEcBGFIcMB/X+lFJt83LitHJ/mUSlIW5AfvoKUedQrzE/rOjEL3KbxeXTuShptCKUvE8oED802wyrhhWT4lROYDkrs6gzIdWJi8FGzCVMNYBh2nLcri64iHPUdJ/YVQx3Kjnz6aoNLZ2I+RSCji487ugEJzyVtnRmc+xRdxZa7+euoZbqWz4xtueHinXQPLaD4BKHhJX6SQJ259tp+XqdmlwaDc0pLt08tH01l9Zbkt6Z8kSKp7sYnX8ZxfBZBHWuIL3I6w61aQ3zzfMwkUexjIJuuAQ3CP9djpVTs7CtREtPg
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(396003)(366004)(346002)(39860400002)(451199021)(66476007)(316002)(6636002)(478600001)(4326008)(66946007)(66556008)(86362001)(6486002)(83380400001)(6506007)(6512007)(26005)(186003)(2906002)(8936002)(41300700001)(6862004)(8676002)(5660300002)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YW1wNEFaQ21ZZU1seCtjY052Q3hCS05aWmhkb1FSZXNQQVV6eWs4TFJrYzI0?=
 =?utf-8?B?UVZHK2tZYXJlM3dvNFU2cVV1c2I3cmJQbEE5U0ljUkU5aUNkVHREV0hnUk83?=
 =?utf-8?B?SXVnMHh5dFpEbUVKS3RGbjEwZDNUNWVyTW9wMVV3UG0rQ0lCY3FIK05SMzE4?=
 =?utf-8?B?Z3RsQVJYcUtCUkIyVkNybk9WdE4vdEVpTFpXSzhEaFdlRkg0eldYSEpCY2Nr?=
 =?utf-8?B?ZWtEOTFtWWtFeHdDQnlhZnZHMjZNL3BtUkU5RHhrdFpqc3o3NkdkT09qM1l3?=
 =?utf-8?B?TnJqempRTVN0TUVjdHFaWDNTN2tuVnVHd3cwaDE3eFhsQXVlWVJPSmY2MWJz?=
 =?utf-8?B?azdYcGxQRFk2SjlQM1k2QWMrRk5KR3NJOTZ3MDk1RjdzMHEwbTQwK2NDalJZ?=
 =?utf-8?B?RmJxQzVXbGU3T1hOV1QzQW44UzNLU1lzRTZMbjVXelNFbmgxUFVFdXl4QWZ6?=
 =?utf-8?B?TlNlcDRrK1ZOc0IzZWJmL1FLWDZsdWF1YW1XVUdaVzc2Z3RycTR5bU5pbTY1?=
 =?utf-8?B?UWNMeVRBbytVclplUFJZclFZQXRBbHZLTW9tMEJaa0I2V3J2TXNTb3FvYlIz?=
 =?utf-8?B?MnJ0N2pGN2daejBTSWQ0d3pnSGREZHA4VTlxVkQ5dlpDazFZVytudkV2aXBx?=
 =?utf-8?B?R2FPWDgybFNhVGFmbXB6d2dLVnMwZnhIVXRmZHpwMko4dlFGRnNjRmx2dTll?=
 =?utf-8?B?Y0tYb1FsQ0hEZXNJNjF5cVU1K3pBZkF0ZklrM1NFendoN2lZbDZVR2RQa29Q?=
 =?utf-8?B?aXJvRlBwRVlTTHlEMkk0L2xERWFJeFlwVHZzUVlEaXd3aUNPMXpYVURZZEdp?=
 =?utf-8?B?RTkyNlJSdjVBS25ZUTZBd3g5Q0ZCbmdBbGNWRXVZdmR5V044bmVUNk5hVHJh?=
 =?utf-8?B?SXdsNnBNWlU3MVgyVUR0NklFTGdseGRvOGM0MXlQWkFZdkRZcUpUaGJlSklY?=
 =?utf-8?B?V05laXJIMTBaTCs1aEJZYkRkK08wbDNKN3hzc21xVHM0RU1LWjJVMVlpTEpw?=
 =?utf-8?B?RWM0NVFFbzV0dDN6QkNVL2wvWnRmZkhyMDM5TGNPTk9nOE44STlHblBxS1JK?=
 =?utf-8?B?d0F1aHlieElpTFFXYXpYWXNRYmFtWWwrSE5GRW9IUDBWK0JxdWZXMHc0YS8v?=
 =?utf-8?B?WWF5bEYrUm9iYUZLTVFicGN0UkZHaVd4WTBWRkFSY0IwU1FjdWZ2SU9ZUWtt?=
 =?utf-8?B?RGliWjVmRndhWThOUUdCNUloUzFTVzJJRDRka1UxY1d0TzRyMCtNeU1ETnRw?=
 =?utf-8?B?T0JyMVVWOS9kQkU3MmtLb3pyVCt2OXNVY2c0S2tvaWc3YjNMTFhxbERNN3pV?=
 =?utf-8?B?dG9JR21yS3dKQVh3OWEwTzR6cU9hRUVGUTdaZnBZdTJ1dnVGQ25NeHFLMVZJ?=
 =?utf-8?B?b0hQbjVtcFJLOVB5eE04NkFSZThqUDd4UDNwTFpHUTc2QjlmUlZzL3liLzNr?=
 =?utf-8?B?NUsrSkUxYllXOUdsOEY0d25TOHFYdnNvQ0VoMTdtaDhqcTBUbjNvRW02WENu?=
 =?utf-8?B?RmwzQ1FMUzJsRjIyajdsTXE2Qml2Wk0xamRmVE8vaDJCaG9Ya29ZYkdHRktU?=
 =?utf-8?B?ek5VR05aMDlFLzNDbVdObHh5UUVDK21lMlhxNzBEdnppV3UyWnJtRGlERnlq?=
 =?utf-8?B?ZWcwUnQ2VnI3bU9XTXBDL3JYZkJYRVBtWGFCaGJNVU9CQVlPVzdkMFNvYnYw?=
 =?utf-8?B?ZjM4dVFlWWVWMVpHZ2dzTlpyZHlZSjJ6SnJxZFpFM1BIeW1UNFpwZjZJam1S?=
 =?utf-8?B?akx5Y3QxeGRmTGFKTFZhSnQ3end3WlB6NFRKK1Q0S21ZemduZXNLUm1TbzBv?=
 =?utf-8?B?NmI3ZFNVUUx0SlprNjJvVi9OTGVKZU9YSHhMRFc2YkpFakUwc2FGcFBja3R2?=
 =?utf-8?B?N082OWpmTE1GaU5HMUVENDFWMVF5YkZRT2VCd2dIeDBIalgycWQwTVVwd0k0?=
 =?utf-8?B?bTVSRXgwcDJjbXhJcUNYZ05FL0xNTEFMSjJuenYrSEJFd1FiWkdMbjlQb09Y?=
 =?utf-8?B?N09ocWtrK3BTblVpMHBBOHNFR1FCTE5TSUoxeDZ1QmJNakhrL2N5TGdzclgx?=
 =?utf-8?B?NVk5U09uWC92UjRLY3FBVk9Tc0dnVUlabUYvam8vSzhqOTd5V0xTdkVDS2dI?=
 =?utf-8?B?aHVJWUJuRWFYMGlKQmJzM1k2VXZwM01nUjR6T2I5d2JOZEQrcEF5NnZiL1FW?=
 =?utf-8?Q?N6S4Ry2mfC5deHCGadDl0sc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: be08344a-6c84-4abf-1974-08db533a6243
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2023 22:44:02.7177 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RPY/dd5IPH3h3kFEi2YZjYK7ZI+60Fbmtv/ynCa58Wd0Grh7hTJtSpyaXSEsPiaQNuraCr9Yr8h4VWUBWnHJA8BWYFqhu6ppiyO/tvxype0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5084
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/pmu: Add reference counting to
 the sampling timer
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

On Fri, May 12, 2023 at 03:29:03PM -0700, Dixit, Ashutosh wrote:
>On Fri, 05 May 2023 17:58:14 -0700, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh/Tvrtko,
>
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> We do not want to have timers per tile and waste CPU cycles and energy via
>> multiple wake-up sources, for a relatively un-important task of PMU
>> sampling, so keeping a single timer works well. But we also do not want
>> the first GT which goes idle to turn off the timer.
>>
>> Add some reference counting, via a mask of unparked GTs, to solve this.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_pmu.c | 12 ++++++++++--
>>  drivers/gpu/drm/i915/i915_pmu.h |  4 ++++
>>  2 files changed, 14 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
>> index 2b63ee31e1b3..669a42e44082 100644
>> --- a/drivers/gpu/drm/i915/i915_pmu.c
>> +++ b/drivers/gpu/drm/i915/i915_pmu.c
>> @@ -251,7 +251,9 @@ void i915_pmu_gt_parked(struct intel_gt *gt)
>>	 * Signal sampling timer to stop if only engine events are enabled and
>>	 * GPU went idle.
>>	 */
>> -	pmu->timer_enabled = pmu_needs_timer(pmu, false);
>> +	pmu->unparked &= ~BIT(gt->info.id);
>> +	if (pmu->unparked == 0)
>> +		pmu->timer_enabled = pmu_needs_timer(pmu, false);
>>
>>	spin_unlock_irq(&pmu->lock);
>>  }
>> @@ -268,7 +270,10 @@ void i915_pmu_gt_unparked(struct intel_gt *gt)
>>	/*
>>	 * Re-enable sampling timer when GPU goes active.
>>	 */
>> -	__i915_pmu_maybe_start_timer(pmu);
>> +	if (pmu->unparked == 0)
>> +		__i915_pmu_maybe_start_timer(pmu);
>> +
>> +	pmu->unparked |= BIT(gt->info.id);
>>
>>	spin_unlock_irq(&pmu->lock);
>>  }
>> @@ -438,6 +443,9 @@ static enum hrtimer_restart i915_sample(struct hrtimer *hrtimer)
>>	 */
>>
>>	for_each_gt(gt, i915, i) {
>> +		if (!(pmu->unparked & BIT(i)))
>> +			continue;
>> +
>
>This is not correct. In this series we are at least sampling frequencies
>(calling frequency_sample) even when GT is parked. So these 3 lines should be
>deleted. engines_sample will get called and will return without doing
>anything if engine events are disabled.

Not sure I understand. This is checking pmu->'un'parked bits.

Thanks,
Umesh
>
>Thanks.
>--
>Ashutosh
>
>
>>		engines_sample(gt, period_ns);
>>
>>		if (i == 0) /* FIXME */
>> diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
>> index a686fd7ccedf..3a811266ac6a 100644
>> --- a/drivers/gpu/drm/i915/i915_pmu.h
>> +++ b/drivers/gpu/drm/i915/i915_pmu.h
>> @@ -76,6 +76,10 @@ struct i915_pmu {
>>	 * @lock: Lock protecting enable mask and ref count handling.
>>	 */
>>	spinlock_t lock;
>> +	/**
>> +	 * @unparked: GT unparked mask.
>> +	 */
>> +	unsigned int unparked;
>>	/**
>>	 * @timer: Timer for internal i915 PMU sampling.
>>	 */
>> --
>> 2.36.1
>>
