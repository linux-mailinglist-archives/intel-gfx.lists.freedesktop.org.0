Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDFE5A2C86
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Aug 2022 18:43:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B18E710E63C;
	Fri, 26 Aug 2022 16:43:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3A3610E63C
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Aug 2022 16:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661532187; x=1693068187;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gBNRx6RSKa6gUr+Z9EfjetHpjXCpUVOw5VeyZUcQipU=;
 b=U5WzuonB1G2wBhpV8G8Ds8GGTcwi/2Ac9fZ8ZHBQ2Lx/3wfU0VaSjGQp
 hwGO/gDSZsrD5T8yJ1Dhi+yNkINpwlosylKriMaAvrxmjtwGPqfU4A+vg
 MLas7g6h185ulRSGyNbRDaQtyloql0PALpDpIbO+Yq16yiL3jmVdFiM2o
 /q1RfnuED3QKpmBWSK9+25WXTtKaMYXhTjWQYOSq/FwwTPCw1yKfspwC+
 9AguGPCuUkC/RbVHx20UwZbWQZY6Rh1JTt+3CbMiEmxxRsni5fO/Fl/Ln
 ag2eduwJqwB4rt1Vy+v92x0F7Pk7kNqQxaxC+mm2o1wQ2aJtwYCcIaZri g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10451"; a="380848237"
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="380848237"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2022 09:33:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,265,1654585200"; d="scan'208";a="671527493"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 26 Aug 2022 09:33:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 26 Aug 2022 09:33:38 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 26 Aug 2022 09:33:38 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 26 Aug 2022 09:33:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hIyuyKAuxleKnQ+e40V7Hh3vQmXt6fl4V4txs1AHiHv8op/dELtbbf30PCYBvxQc6bVC0pavs1pF/o8VtXlO/fJVsDw4lZ+ONaNzQcddlh4KS5x9ABjJxQidVPGvok7HY8RdGow4uWj43KXJDqdQ8p30vvW8GkXJtod2RJtNXZJo+fiMbYX8Iu48VsopZJWPpnIq6/d2vczECNHsGSQ54jZD8x9CujkfESIeyfmwNeOCKCIOFrptTiqsR6BVtpiSzw9Fj7it4LrzwbShPFWZb0jJWj2bRZFC1R9x4OJ8U+ei+ccXT00DZv7FsZqBXXSWbArHBjdKgGnxd/aQc71RpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=onSBV+QX+whUFhD5mVhV/coKugMbybAkd3JJgypJaPo=;
 b=S40NOMOencz+FXcCXr4+JfXTqKcwiSf/+cey8j4RF2leiCWwRl2AQI5M9t5A+I3riegwbEaxPSGQ/Du8sbwUQsDlgn/zqbS0BoS3/gR9BVQLCE84xWOFsd2ANtgS0+f+kejFg54Gh/Td+gei1k573ht6jA1IHEgCnNz9RrosOELUvKn2ge2gweAxuYdUVnaZKYMAdAL5Ru6tTiG5zb8gn+NVEiwOrUz8uNfd7k3mOoieRR9erUfKUrE06vwmHRjJzHWGtcMA/gDlQ3aFW3V2g4hV/uspGhrCTnw9RIjtnkQMATLAuvsSYsLsVKViYtzo/6PkMUjvhnDkF4S52hqmHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 BL0PR11MB3380.namprd11.prod.outlook.com (2603:10b6:208:69::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5566.15; Fri, 26 Aug 2022 16:33:23 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc%6]) with mapi id 15.20.5566.016; Fri, 26 Aug 2022
 16:33:23 +0000
Date: Fri, 26 Aug 2022 09:33:08 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Ywj1xF6Y+p6Ea5Qq@unerlige-ril>
References: <20220804232125.211449-1-umesh.nerlige.ramappa@intel.com>
 <87lerbkcbx.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87lerbkcbx.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR13CA0020.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::25) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e217012f-c7c1-44c6-bc7c-08da8780b17e
X-MS-TrafficTypeDiagnostic: BL0PR11MB3380:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pGjgLqcNSfMCIWbLc8JfMseQo9iNgK23pgwPi8UMRoHDZevjfaxmCgLaw7IuZWZ5H8JVWP4YHG/SzS2DyOdsT/KQWRpHAf/lelXn1B2S4x0NsMCYUZ6pmnFcVO6M9hCTauK3/Gr+IuWy78ZYrIQOD9P5h0GAzUNyAmLXb3NwQc08Yrd8sAcvhJUeAf0lRfuRp+5U9bo+jT7MR/LDBO8AUBHHZ8cOCNmzktv0DajCovhgNH7IFAJL0bSZBvrbBWEdW8ifWw56zj6KHVNiF2L6MHlNsaZAGzoo+9x6weWsB47D9Pw7UvqtFshDXM0EEFainrCuGCNWn4qmadNpxcP85BaEddx61Jex0k+hJJz9i68kpKsCLblfj8NLsjAafeHy3qoV7F4418nhfp1GuG2ZOI7539EDVpzb3jO0fhbcGTMOSzAVvTD9jfd6XqI8Ur1a9WTW2tBId/EYl0SnOLqA1ZYbfcBUSalSOjewy6eC0tJ4cPF3z3Xfd0JPyKW4Ga03ytqjuoMipxn5lqbwC6MiWtpv12cGuoUY04x4ff2GyA3E8sck76JExyuycItSZl7MsZc1twlwXU/f/kb2P3mrTeaamqqb2CKQNIf8QSkx2m+ae5QxmTY6eBoe5bhiaGkMj3QAqsS6eZlHYWw5IVG/n0Hkd4GlRYIBeO1HzwvZqTlYanGgeuw1bXlcAVqydhxz6VIYSYA5dPkNgW6Xe18a52OU4MlyiMo4MTJeJhw6Xi45wBl3ngdt3FxzgrtaDd22
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(366004)(376002)(136003)(396003)(39860400002)(346002)(86362001)(186003)(4326008)(8676002)(66556008)(66476007)(83380400001)(38100700002)(66946007)(316002)(6636002)(33716001)(6862004)(82960400001)(8936002)(5660300002)(9686003)(6512007)(41300700001)(26005)(2906002)(478600001)(6486002)(6506007)(6666004)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aC91R0o0UWk5YzdIOEc5WVdmZy9qWi9ZSE9VZ3dORjl1YkszcUhDdUZHTEVi?=
 =?utf-8?B?cmNSOFA2SWVsSHdMR1IvL2RhYmRqM3FicURCM1ZNeTh0bjRWQWlQZldKWWZo?=
 =?utf-8?B?a0w1aVFMWEhyNEtRZmZIdDRJc1BmWUhSNUZiazExOFhwQmxaaXVWNVErQlNL?=
 =?utf-8?B?aTZ5eXRhZzBGbjRWMzFxdmRuVm5zNkNtRzllRHl1cExWRzBXWVF0MHRQT1J3?=
 =?utf-8?B?MFE3b3J3MUR6bHF1MUtuUklibDRZNWVSUktraHg3TDNtWkh2MnpqeTFiUThX?=
 =?utf-8?B?NWlPU3BtdFlNMlhmenhFc2lTZlBlN0src1liaHA2MmdrZGhSSkJDWGNpQjVo?=
 =?utf-8?B?aStzRFptUkF4K3pNYzA4aW1FUjR4bGRIQU83TlZ1akZZVUwzeFVvcTdRWVlj?=
 =?utf-8?B?Tys3ZG1aaUx2Y2o5dmIvY2NNZHFqSjlOcCswTEVUMlBXbjRYVWt2S2ZkUE8w?=
 =?utf-8?B?QUdCQ3VSY25NQmNOTHFJRnZMaEMyZmxqZ1VqSW83S3lzaFZGZU9ObHU5V09K?=
 =?utf-8?B?UHZ1SlNkQnJXYVI5SEFVQmtUckdWdlgwb1FNVmpuWEQ3MlhRN3FrcXJyaDl6?=
 =?utf-8?B?czg2aUFUMXZNZHJMdHpXZTdwWTFmRUlOaWc0WjNFNVNFTXFEcTAvVnFZZXV6?=
 =?utf-8?B?Q3lZMm5ad28yZFZ4WU8rbXFFM2xaYXRUQ2hxZmpkWk4xVHZubGplYmZSM3Ja?=
 =?utf-8?B?dEdJUzVoUEh3ZzJXYnVlNVlXMHhwUkw1OGFIZS9rSVVNdzk3aVowZkc3SWtG?=
 =?utf-8?B?S2wwNGRQZ3NNdTJQbjBYeFVsUTFnYWRYQW8yYjlXZXFjQmdrRzNNQk42MVNY?=
 =?utf-8?B?dlJWZjFjSy8vcS9VQ3pIZlozSVc0ZWlyeTNaZHZnME5OT0E0SWFVR2huaTM5?=
 =?utf-8?B?eUpvZjZDNjZINU5UYUEzaFRseEFHdDJ5YjRzY3ROOWREQ3JEWXZSa2pSVnVE?=
 =?utf-8?B?azZjTS9XNWVpSkN6Tmdzb0JMVFlGRVRSSW9kSEZoVE5uaU1hRmpnMU5WWkFj?=
 =?utf-8?B?WFlhdTJPUkdRS21ySFY4OVNKUG81aFRadVI3MTJoWG4vMUo4ZVZTdHFIblli?=
 =?utf-8?B?L1hNcjJHK1V1NlVsSmVESXhDUmJ2b21Qem9vRXpOT1lINzAzMUR2emxOWmg0?=
 =?utf-8?B?VDA5QmNOenNEWlRzb1V2a3owcFJlbGJORDhJOERaUE5pY1I3Tnd0cXplUVRw?=
 =?utf-8?B?UnNFeTdIVWRsdjd6S0tuZlUwUXV0aVJQK3c5dG1KaWM4aE4xaTljbVJkTkZp?=
 =?utf-8?B?RWJIUnFnZGVFTU82bWQ2WnR6b0t1cTVnL1RwZXRPN0VWek9rZ3JqM01jeFNi?=
 =?utf-8?B?NWxnaEY2M2kvb1hYYU1KTEVtV3JpRVZlSHBlR05GejZIZWh6S2o3QkpJN2Zt?=
 =?utf-8?B?WWdYTk1DV0FLWmw5dWorb01ycmZ1TzlXN01Wai9ONGo5dDdoSVlOb1M3NzRV?=
 =?utf-8?B?SnEwOEZmbWlrRStzNkswbUwzbFNhY1pib3crSUhBS1Z4d3BFclIwaU85b2xk?=
 =?utf-8?B?cWtlU1JZd21HK1JYT1B2OE1mTWFwdXdVcGZUcUU1bmxic3hSc0ZzS01MYUN6?=
 =?utf-8?B?TW9HTGRqMkphL2x5NXRuTVNNMllZMnNXMTJpYko5K1JvM2tPcjcrL0YzaWdr?=
 =?utf-8?B?bkQvQjA1c1ZJZkVObTFJNVFNcS83bUJqbTlZVDl3Q3NHVUZFRjhaM0lXcmli?=
 =?utf-8?B?UkJJOWx4aUdxN0VWRGtLalgvUktielZBWVF2eERwbUtkNDQxMXlFZ0ZIdDFP?=
 =?utf-8?B?R3YwS2ROQ3JEQkNQZU1vZFlGQ1BpSXdJS3RXSitYUHkvdU5lMk5SejAxZkRL?=
 =?utf-8?B?NXAyTXV2ODhDOFBCWmIycnB0QlB0NHN6SzFaL3JtdEVNVUVjdmZ3RGkxTXdN?=
 =?utf-8?B?RGprdWxPbzBWR0dMTUtsOFdGUHlGck0xeVFIQ21WQTkrRGRUMVY5emZwZ2Iv?=
 =?utf-8?B?eVZ2dmFCdTNGTEtXZ3IwRlp0cmVZcDJDSHZneUdoUnBRLzRZRjdidWN5Ny9k?=
 =?utf-8?B?U1NhODc0MXVmSWVpL3JuNTRqcHJTbGRrc3d2MU0yNS9ISklWaFltZ1RNVGMz?=
 =?utf-8?B?RHlKZEd1Q0Q2eXlTdE53N0UxSU5hZUFYMkVna2ZROU9RdG1CNU5KVTVoTmhj?=
 =?utf-8?B?ZnZLMzFXY1FPekZDTG9pSSt4dlhCOElNeFVhbGNBVjZuSlFYWXkzTTBPdHZm?=
 =?utf-8?Q?D77SFe3FW6VX31Y7vq7ZSmo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e217012f-c7c1-44c6-bc7c-08da8780b17e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2022 16:33:23.2751 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r1aE1DX3bV8X1BlplUnquHXib6N5M8MsUnUllvdG3M62tM8R2AO9b8Co5VQjGd7GpurJVgCOeJMHrnEQP0DQJa8TI9S2hq7udSAzZK8JDpo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3380
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] i915/pmu: Wire GuC backend to per-client
 busyness
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

On Thu, Aug 25, 2022 at 06:44:50PM -0700, Dixit, Ashutosh wrote:
>On Thu, 04 Aug 2022 16:21:25 -0700, Umesh Nerlige Ramappa wrote:
>
>Hi Umesh, I am fairly new to this code so some questions will be below will
>be newbie questions, thanks for bearing with me.
>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
>> index 654a092ed3d6..e2d70a9fdac0 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_context.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
>> @@ -576,16 +576,24 @@ void intel_context_bind_parent_child(struct intel_context *parent,
>>	child->parallel.parent = parent;
>>  }
>>
>> -u64 intel_context_get_total_runtime_ns(const struct intel_context *ce)
>> +u64 intel_context_get_total_runtime_ns(struct intel_context *ce)
>>  {
>>	u64 total, active;
>>
>> +	if (ce->ops->update_stats)
>> +		ce->ops->update_stats(ce);
>> +
>>	total = ce->stats.runtime.total;
>>	if (ce->ops->flags & COPS_RUNTIME_CYCLES)
>>		total *= ce->engine->gt->clock_period_ns;
>>
>>	active = READ_ONCE(ce->stats.active);
>> -	if (active)
>> +	/*
>> +	 * When COPS_RUNTIME_ACTIVE_TOTAL is set for ce->cops, the backend
>> +	 * already provides the total active time of the context, so skip this
>> +	 * calculation when this flag is set.
>> +	 */
>> +	if (active && !(ce->ops->flags & COPS_RUNTIME_ACTIVE_TOTAL))
>>		active = intel_context_clock() - active;
>>
>>	return total + active;
>
>/snip/
>
>> @@ -1396,6 +1399,10 @@ static void guc_timestamp_ping(struct work_struct *wrk)
>>	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
>>		__update_guc_busyness_stats(guc);
>>
>> +	/* adjust context stats for overflow */
>> +	xa_for_each(&guc->context_lookup, index, ce)
>> +		__guc_context_update_clks(ce);
>
>What is the reason for calling __guc_context_update_clks() periodically
>from guc_timestamp_ping() since it appears we should just be able to call
>__guc_context_update_clks() from intel_context_get_total_runtime_ns() to
>update 'active'? Is the reason for calling __guc_context_update_clks()
>periodically that the calculations in __guc_context_update_clks() become
>invalid if the counters overflow?

Correct, these are 32-bit counters and the worker just tracks overflow.

>
>> +
>>	intel_gt_reset_unlock(gt, srcu);
>>
>>	mod_delayed_work(system_highpri_wq, &guc->timestamp.work,
>> @@ -1469,6 +1476,56 @@ void intel_guc_busyness_unpark(struct intel_gt *gt)
>>			 guc->timestamp.ping_delay);
>>  }
>>
>> +static void __guc_context_update_clks(struct intel_context *ce)
>> +{
>> +	struct intel_guc *guc = ce_to_guc(ce);
>> +	struct intel_gt *gt = ce->engine->gt;
>> +	u32 *pphwsp, last_switch, engine_id;
>> +	u64 start_gt_clk, active;
>> +	unsigned long flags;
>> +	ktime_t unused;
>> +
>> +	spin_lock_irqsave(&guc->timestamp.lock, flags);
>> +
>> +	/*
>> +	 * GPU updates ce->lrc_reg_state[CTX_TIMESTAMP] when context is switched
>> +	 * out, however GuC updates PPHWSP offsets below. Hence KMD (CPU)
>> +	 * relies on GuC and GPU for busyness calculations. Due to this, A
>> +	 * potential race was highlighted in an earlier review that can lead to
>> +	 * double accounting of busyness. While the solution to this is a wip,
>> +	 * busyness is still usable for platforms running GuC submission.
>> +	 */
>> +	pphwsp = ((void *)ce->lrc_reg_state) - LRC_STATE_OFFSET;
>> +	last_switch = READ_ONCE(pphwsp[PPHWSP_GUC_CONTEXT_USAGE_STAMP_LO]);
>> +	engine_id = READ_ONCE(pphwsp[PPHWSP_GUC_CONTEXT_USAGE_ENGINE_ID]);
>> +
>> +	guc_update_pm_timestamp(guc, &unused);
>> +
>> +	if (engine_id != 0xffffffff && last_switch) {
>> +		start_gt_clk = READ_ONCE(ce->stats.runtime.start_gt_clk);
>> +		__extend_last_switch(guc, &start_gt_clk, last_switch);
>> +		active = intel_gt_clock_interval_to_ns(gt, guc->timestamp.gt_stamp - start_gt_clk);
>> +		WRITE_ONCE(ce->stats.runtime.start_gt_clk, start_gt_clk);
>> +		WRITE_ONCE(ce->stats.active, active);
>
>Should not need WRITE_ONCE to update regular memory. Not even sure we need
>READ_ONCE above.

Not sure I checked what they do. I was thinking these are needed for the 
memory ordering (as in be sure that start_gt_clk is updated before 
active).

>
>> +	} else {
>> +		lrc_update_runtime(ce);
>
>As was being discussed, should not need this here in this function. See
>below too.

In short, I added this here so that a query for busyness following idle 
can be obtained immediately. For GuC backend, the context is unpinned 
after disabling scheduling on that context and that is asynchronous.  
Also if there are more requests on that context, the scheduling may not 
be disabled and unpin may not happen, so updated runtime would only be 
seen much much later.

It is still safe to call from here because we know that the context is 
not active and has switched out. If it did switch in while we were 
reading this, that's still fine, we would only report the value stored 
in the context image.

>
>> +	}
>> +
>> +	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>> +}
>> +
>> +static void guc_context_update_stats(struct intel_context *ce)
>> +{
>> +	if (!intel_context_pin_if_active(ce)) {
>> +		WRITE_ONCE(ce->stats.runtime.start_gt_clk, 0);
>> +		WRITE_ONCE(ce->stats.active, 0);
>
>Why do these need to be initialized to 0? Looks like the calculations in
>__guc_context_update_clks() will work even if we don't do this? Also I
>didn't follow the 'if (!intel_context_pin_if_active(ce))' check.

__guc_context_update_clks accesses the context image, so we need to make 
sure it's pinned. pin if active will not sleep/wait, so we can use it in 
this path.

if context is not active, then we update the active stats to 0.

>
>> +		return;
>> +	}
>> +
>> +	__guc_context_update_clks(ce);
>> +	intel_context_unpin(ce);
>> +}
>> +
>>  static inline bool
>>  submission_disabled(struct intel_guc *guc)
>>  {
>> @@ -2723,6 +2780,7 @@ static void guc_context_unpin(struct intel_context *ce)
>>  {
>>	struct intel_guc *guc = cce_to_guc(ce);
>>
>> +	lrc_update_runtime(ce);
>
>How about moving this into lrc_unpin() since that gets called from all guc
>context types (parent/child/virtual).

looks like lrc_unpin is called from context_unpin path.

Same as above: for GuC, the context_unpin is an async operation and may 
not happen if there are multiple requests in queue. 

Thanks,
Umesh
>
>>	unpin_guc_id(guc, ce);
>>	lrc_unpin(ce);
>>
>> @@ -3344,6 +3402,7 @@ static void remove_from_context(struct i915_request *rq)
>>  }
>>
>>  static const struct intel_context_ops guc_context_ops = {
>> +	.flags = COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL,
>>	.alloc = guc_context_alloc,
>>
>>	.pre_pin = guc_context_pre_pin,
>> @@ -3360,6 +3419,8 @@ static const struct intel_context_ops guc_context_ops = {
>>
>>	.sched_disable = guc_context_sched_disable,
>>
>> +	.update_stats = guc_context_update_stats,
>> +
>>	.reset = lrc_reset,
>>	.destroy = guc_context_destroy,
>>
>> @@ -3593,6 +3654,7 @@ static int guc_virtual_context_alloc(struct intel_context *ce)
>>  }
>>
>>  static const struct intel_context_ops virtual_guc_context_ops = {
>> +	.flags = COPS_RUNTIME_CYCLES | COPS_RUNTIME_ACTIVE_TOTAL,
>>	.alloc = guc_virtual_context_alloc,
>>
>>	.pre_pin = guc_virtual_context_pre_pin,
>> @@ -3608,6 +3670,7 @@ static const struct intel_context_ops virtual_guc_context_ops = {
>>	.exit = guc_virtual_context_exit,
>>
>>	.sched_disable = guc_context_sched_disable,
>> +	.update_stats = guc_context_update_stats,
>>
>>	.destroy = guc_context_destroy,
>>
>> diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
>> index b09d1d386574..8d81119fff14 100644
>> --- a/drivers/gpu/drm/i915/i915_drm_client.c
>> +++ b/drivers/gpu/drm/i915/i915_drm_client.c
>> @@ -147,11 +147,7 @@ void i915_drm_client_fdinfo(struct seq_file *m, struct file *f)
>>		   PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn));
>>	seq_printf(m, "drm-client-id:\t%u\n", client->id);
>>
>> -	/*
>> -	 * Temporarily skip showing client engine information with GuC submission till
>> -	 * fetching engine busyness is implemented in the GuC submission backend
>> -	 */
>> -	if (GRAPHICS_VER(i915) < 8 || intel_uc_uses_guc_submission(&i915->gt0.uc))
>> +	if (GRAPHICS_VER(i915) < 8)
>>		return;
>>
>>	for (i = 0; i < ARRAY_SIZE(uabi_class_names); i++)
>> --
>> 2.37.1
>>
