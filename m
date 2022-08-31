Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4345B5A8945
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 00:58:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14A6210E52C;
	Wed, 31 Aug 2022 22:58:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 098AC10E52C
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Aug 2022 22:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661986682; x=1693522682;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=klO3qCYozeJcaE+3opYoGyZlofis0hDiC/vo+rgrEys=;
 b=JBOdZ475G80mnSILO/aMFNKUWR9ZSD3dL3hhwP/JZs9eI7dBDYTZ1td2
 at0xBblzylPcR7rcXEwyX10KvycS6eDGse97NrNRWhHGXHEf0D7QXgXfq
 UeWDpmg/nTgxb5k4umUS4uakPnmphSnVWrBTEG6PgoXk/bFP064Tp+8Qq
 EN2EWu1fKRt9RRCah0MsiMolhhEgB7Ziq4G9GLRmM7Og//IB/20kkkGLB
 YbdwD9mr3Oaxd33Rn+yifaJOASJfPfVL2DfmWlbpecxKvHmP5uNq311Jm
 Lj40/ZkRqtRWp3xhcJcvwB6syATA/+rnjC/3hQ9uLblAJeIlQvz3bIzAP A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10456"; a="293140309"
X-IronPort-AV: E=Sophos;i="5.93,279,1654585200"; d="scan'208";a="293140309"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 15:58:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,279,1654585200"; d="scan'208";a="673562870"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 31 Aug 2022 15:58:01 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 31 Aug 2022 15:58:01 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 31 Aug 2022 15:58:00 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 31 Aug 2022 15:58:00 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 31 Aug 2022 15:58:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ceV2wM1I+t36UOtO6SFfEnXn7gAwKJvc1ZbyFuh3XInt+xB8AWM6ZxYaPLoJhlbURr2eNTxCIdam3bJcuAbfWcvvPjKj4ZeT+QTOvV/841s7iZQLDOtyEja4f19MX5sA+n+6tGdJhABtjGyGdlUsE6rcj6hCSNb5COYeDFdgFsZFQDLoRWQqBslBQZDISq200Vqd4YNrgh6TO1WGGQDPgNwfVoScKLnRSTWYQEOWFjDqNkXWDIrK04gtnv5+HR13a99bDWyESh9I82D7MszZ14pb6dBubaTRjkSNFs8RsFYpMlGRhAKKzOhYoruCKv9v8/gOqwTKTneUgmnF/e8bJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gdJSOgBdZUhZzQauxp2jE+AdGdIvskIWFau0W0YLupA=;
 b=gO8VNt1FH8Dy3g7uadzmil9N5oGW3YanUs/29eKZwFmthUzTtdd0mgykBfnt7EQHDxdS/Z6bTL/NDLoHTcizZYsM+O8w4eVht9sOrFSXIeiBa0vAKOYIfS3Ju4lr8V0RGC0OoFtE7pQh+VRxIFSm8KnWgosc16ujskr9kINp5uV7gWi39MUhuPgfdBhxFWtJFgVoIINRYsFA5swUqHB+rCW7t4S9mkXgrktuX7vIvUPCCSNGgoCgJSg3VoTpICsUn8XQd0XtxjLfFsN4JcUFnZSCo1e0TOUKqNlvu+wyN4Xr/+Fg4uxCgLVSjo4h7uFpqdxmdXlQ1nc24yUjNh0b+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DM4PR11MB6096.namprd11.prod.outlook.com (2603:10b6:8:af::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5525.10; Wed, 31 Aug 2022 22:57:58 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::b1d3:4447:7415:8adc%6]) with mapi id 15.20.5566.021; Wed, 31 Aug 2022
 22:57:58 +0000
Date: Wed, 31 Aug 2022 15:57:48 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <Yw/nbPAEKqua7gBw@unerlige-ril>
References: <20220804232125.211449-1-umesh.nerlige.ramappa@intel.com>
 <87lerbkcbx.wl-ashutosh.dixit@intel.com>
 <Ywj1xF6Y+p6Ea5Qq@unerlige-ril>
 <87wnaorwig.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <87wnaorwig.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR13CA0199.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::24) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: caa00a5d-3a36-482f-6d08-08da8ba43fa5
X-MS-TrafficTypeDiagnostic: DM4PR11MB6096:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Q0VJHNcQh/Olzebt8JPscQkqXHcvOWjohCDFpKEJw6Z8+TTpK/grOLT68yUDJEkmGrAU2sv3+jVgLlu3d07Y/0o1Z4S1pjOqY8er8RgXc49kgSjB7CudEL5OwrK2LNg77GCdrML+A9DT1AQ8hZ7voqTykKbHAsieewfZX93E1zWYlFhTrF3hNT4TGw9+iZJwXnRPHZ+GADMyiVBEXf0s55VGp0Arp0QkQm9wA8QBWosuPFkKWCuuZXVjNKiEIHso2GA1rLK12KrJYA9g8s6PtUunMaRjrecHgnoC/TRqRAxfBxPV6sHsJoGtwaaFKLpTLgavrHzz6yx9LmymK6csFLdgR0ZlUv3kb2uJi3Owm2nGdU7kG1vOGV2iKE4x1vo6sRw+i8HjBsoHL3nWLvby3t2UnHKqTkPRH4sxg7AoNJymC60abau6AsAiBSmopEVqqPkt6rqzTQ5MLP1GaiNMWfNWyWZM9QYSixwFTvZCmRQuldRKy/sAYUih6x1g7zA12p3z21X2BXVnK4kDNCVGXvwuQTE/ld3Kt5CSkbgYT/swvf7hT/GPMIOMW7OJnEF/P48k1huGjZqET63AF60Kjl4YjoCskFm1/jc9BocjbGRBhM6aRksmbSicL7wJgmX/fiDmCgp8WA7h8NjBwrBbhQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(346002)(396003)(136003)(366004)(376002)(39860400002)(2906002)(6486002)(83380400001)(186003)(86362001)(66556008)(66476007)(4326008)(66946007)(8676002)(316002)(5660300002)(82960400001)(6636002)(6862004)(8936002)(6506007)(966005)(26005)(6512007)(38100700002)(9686003)(478600001)(6666004)(41300700001)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UG16UnlyVnY3a3pjMmpnazBBUURTOE5VTnlDY1VpbkZoa3ZSL0dHOER2ZDBX?=
 =?utf-8?B?SVZmMG9kL3ZYeTRDcFUvelByTGwxbWkzMXIvNGM3bHdtL2hIQkpYa3Iwc1l6?=
 =?utf-8?B?Y0RhOXdxalROYWVjUy8xS0lpcEhuSTQ3a0xKYVJGNjFGZXMvL1BFNHBxeUQ3?=
 =?utf-8?B?L05VTllOU2hJUjZsUUY0T3dQQ3F1bW1WdHFHdkNFZXhhMkl0UG9ncXRqUzBr?=
 =?utf-8?B?SkdvcSs2aWFwNjBtc1M3VlhJaW5Ba3lncmJGYjA3MlQycGNDVkRrcjlkUmM0?=
 =?utf-8?B?MmhRQ2FqcjhHdS9BNDF3OTJ2Q05YajZ3MzhLTUxWYkJKOWVzd09pdXAvRmUz?=
 =?utf-8?B?bCtkbERsN001T3IzM2w3TzRQZXFDZ1UzNW1kOEU4NFpjNEpwYStESEhLQU5G?=
 =?utf-8?B?c3d4c0cxUGhuR2dxTEpHYTMxUHRyL3drQzRMcm1sWUR6dGFSOVpZNnNWKzFl?=
 =?utf-8?B?Zit1M0x2eUdJNzFuaWJwMC8xZFlpUlpDeEx2YTM5RHI0KzVYSzRyMGpFNmg1?=
 =?utf-8?B?MWZ5UnhYM2l0N2JsSkhYMDFDQXIvbGFyRnpyakx1anhjSGZ6S0hCZERkT1Vm?=
 =?utf-8?B?WHovWnFsUVBzci9RakdUa1F4UG9xd05zNTY5RnVqL1VxTGtUQjNMTmlYSm9k?=
 =?utf-8?B?eWFyd0RUQjdYZ3N0RU55eVI4YlcrSm4vZkpSWHdTMmhKbzFDSXJoSTBCcnpQ?=
 =?utf-8?B?NHNZbmE3Ukc5R3lwcFJsK09xUVV3VlNLOE9uTHVGQUZGcmJvRW9ycnVnVVhB?=
 =?utf-8?B?czZXazFUQk1XRFZrVHp5YmZZSnFPd0YyOVNnWjhYM1kyWU4xQ3plbXd0UWJv?=
 =?utf-8?B?RlByeU9NQjdOM2sxQlpFSWswNno1M3FhcDdxZDQ0YlNYNXQ4cS9ieG0rcC9o?=
 =?utf-8?B?bXlyNkIrZmtGWUVsc3pkeFN3R00yVXFQTnltbDkzd08wMFNlMFNUVVlMaDgv?=
 =?utf-8?B?SDNwaHgyMmJ5Z3hrdlVqV3hKMUlTbzRDRHVXa1l0cFBIUlJ1bTVrQ282TTlB?=
 =?utf-8?B?YWpuNU5lUUNpdWw4NnMxZmpRQnFOakZ6ZDlzeXl0MkNiOE1seFFTK2tIUktM?=
 =?utf-8?B?Q3orMC9tclQ5NEpzM2dpZ2hVU0ZBbSs2V2VwcVBjeUhSN2ZWeGpXVG0yZEg5?=
 =?utf-8?B?VWl4TlVnNldMb2VqM0FJdytQeDdqSTAwTmovaWMreENjdmJnRWd2Y2ZtYVdK?=
 =?utf-8?B?eTZCbkE0cWZNaFJUamE5MnNHc1ZzOGNINmt6U1BKRlFXNVUydXB1dUczVTBE?=
 =?utf-8?B?OE1XUHhQV0wzeTVlRDk1UDNNZ1BhMjhRV0h6cXlNVkdsWUlBSG5vRzRXbU8y?=
 =?utf-8?B?M2VELytmVVJDMVJIVVpiL3pSVGw2bzEwMTAzWktZSEdwdnJyYUhTeTJ4OUlG?=
 =?utf-8?B?ZTUxaWk2TWVLQkM5NkpXSGYxT0ExajgrKzltZU1na0RGcyt0eHZmMFlmS1ly?=
 =?utf-8?B?dVlGRTlIcGVBakdtTHU5WVhiYmhxY20vckNWYVoxTVdFWW94Vy8vU29wa1VZ?=
 =?utf-8?B?ZHFSemJNQXltQ1pEWkhlaVBGUFJTdEZkd0VVWlVUellpbUJMNUtjN2JmMkp3?=
 =?utf-8?B?RG0xVTBGNEtXdkFnVDRqRE5EWXN5aS93VDQwRksrWjlQQi82NnhIQnVMTjdh?=
 =?utf-8?B?bUUyaE9iNjFBOXp3NHJqdzFPRE95YmE2RWJqQ3FBRXZ5VUY3cmNxcHhnOGJh?=
 =?utf-8?B?VWtuWFlDdlNaSEtva2UwR2VyNW9SdFQ4RjRnZDJmeTNvMHJCa3d0bjNoVGh5?=
 =?utf-8?B?VXZldmJkL1RpRkQ4MWpITlpVd3h0cGJCVzlmc1ZCZThwc2hyMGNrTHdXMDFE?=
 =?utf-8?B?aVJVbm5oL21vL0xkSjVEQWZWUVhGKzNGejUzSUUzSXJtdVdVQnd2WTBJOXp2?=
 =?utf-8?B?S1RRQnFmSEkwMEtGQy9LcHpqa3B0Nk9nQ1hnSlJabnVPS2RuY0VMc1BtZHFk?=
 =?utf-8?B?OWhaeENiZ2Rlc2dES2lDWXNRZ1dXYU1yaUthMnFPbUdMQ3BSSFNXbTlQaEJS?=
 =?utf-8?B?b2hQYjJNQ01tUU9rRi8rSmZXcFMzcm14OUY5bFFJaC9mSjJ0bTAveGZYcklH?=
 =?utf-8?B?dXZFTkJmNzdPSklqYnJ5WlNOMTBpbGg4ajZ3YnljM01LWXhTUkM4OEJHOERy?=
 =?utf-8?B?MElIRWpjTkg2MitTd0dMYnpNMjNQSHhLUnRjTWJmZHdIQUZnS2ZJRVMwQkQz?=
 =?utf-8?Q?l1OP36QlpZRMnTUdTVbY4uQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: caa00a5d-3a36-482f-6d08-08da8ba43fa5
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2022 22:57:58.7705 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LQnmB1v3cIyM4vVZG++4Fy6AevGtn1qKi7KJ2zAET8YG+Uqdp8YOg6Hknz5AxuY9FB4nR1K7h8RkY9zwmJD599r3oloBqUr52QBl+HJv1C0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6096
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

On Wed, Aug 31, 2022 at 01:25:11PM -0700, Dixit, Ashutosh wrote:
>On Fri, 26 Aug 2022 09:33:08 -0700, Umesh Nerlige Ramappa wrote:
>>
>
>Hi Umesh,
>
>Just to communicate my thoughts I have posted this patch on top of your
>patch:
>
>[1] https://patchwork.freedesktop.org/series/107983/
>
>Could you please take a look at that and see if it makes sense.
>
>> On Thu, Aug 25, 2022 at 06:44:50PM -0700, Dixit, Ashutosh wrote:
>> > On Thu, 04 Aug 2022 16:21:25 -0700, Umesh Nerlige Ramappa wrote:
>> >
>> > Hi Umesh, I am fairly new to this code so some questions will be below will
>> > be newbie questions, thanks for bearing with me.
>> >
>> >> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
>> >> index 654a092ed3d6..e2d70a9fdac0 100644
>> >> --- a/drivers/gpu/drm/i915/gt/intel_context.c
>> >> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
>> >> @@ -576,16 +576,24 @@ void intel_context_bind_parent_child(struct intel_context *parent,
>> >>	child->parallel.parent = parent;
>> >>  }
>> >>
>> >> -u64 intel_context_get_total_runtime_ns(const struct intel_context *ce)
>> >> +u64 intel_context_get_total_runtime_ns(struct intel_context *ce)
>> >>  {
>> >>	u64 total, active;
>> >>
>> >> +	if (ce->ops->update_stats)
>> >> +		ce->ops->update_stats(ce);
>> >> +
>> >>	total = ce->stats.runtime.total;
>> >>	if (ce->ops->flags & COPS_RUNTIME_CYCLES)
>> >>		total *= ce->engine->gt->clock_period_ns;
>> >>
>> >>	active = READ_ONCE(ce->stats.active);
>> >> -	if (active)
>> >> +	/*
>> >> +	 * When COPS_RUNTIME_ACTIVE_TOTAL is set for ce->cops, the backend
>> >> +	 * already provides the total active time of the context, so skip this
>> >> +	 * calculation when this flag is set.
>> >> +	 */
>> >> +	if (active && !(ce->ops->flags & COPS_RUNTIME_ACTIVE_TOTAL))
>> >>		active = intel_context_clock() - active;
>> >>
>> >>	return total + active;
>> >
>> > /snip/
>> >
>> >> @@ -1396,6 +1399,10 @@ static void guc_timestamp_ping(struct work_struct *wrk)
>> >>	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
>> >>		__update_guc_busyness_stats(guc);
>> >>
>> >> +	/* adjust context stats for overflow */
>> >> +	xa_for_each(&guc->context_lookup, index, ce)
>> >> +		__guc_context_update_clks(ce);
>> >
>> > What is the reason for calling __guc_context_update_clks() periodically
>> > from guc_timestamp_ping() since it appears we should just be able to call
>> > __guc_context_update_clks() from intel_context_get_total_runtime_ns() to
>> > update 'active'? Is the reason for calling __guc_context_update_clks()
>> > periodically that the calculations in __guc_context_update_clks() become
>> > invalid if the counters overflow?
>>
>> Correct, these are 32-bit counters and the worker just tracks overflow.
>
>OK.
>
>>
>> >
>> >> +
>> >>	intel_gt_reset_unlock(gt, srcu);
>> >>
>> >>	mod_delayed_work(system_highpri_wq, &guc->timestamp.work,
>> >> @@ -1469,6 +1476,56 @@ void intel_guc_busyness_unpark(struct intel_gt *gt)
>> >>			 guc->timestamp.ping_delay);
>> >>  }
>> >>
>> >> +static void __guc_context_update_clks(struct intel_context *ce)
>> >> +{
>> >> +	struct intel_guc *guc = ce_to_guc(ce);
>> >> +	struct intel_gt *gt = ce->engine->gt;
>> >> +	u32 *pphwsp, last_switch, engine_id;
>> >> +	u64 start_gt_clk, active;
>> >> +	unsigned long flags;
>> >> +	ktime_t unused;
>> >> +
>> >> +	spin_lock_irqsave(&guc->timestamp.lock, flags);
>> >> +
>> >> +	/*
>> >> +	 * GPU updates ce->lrc_reg_state[CTX_TIMESTAMP] when context is switched
>> >> +	 * out, however GuC updates PPHWSP offsets below. Hence KMD (CPU)
>> >> +	 * relies on GuC and GPU for busyness calculations. Due to this, A
>> >> +	 * potential race was highlighted in an earlier review that can lead to
>> >> +	 * double accounting of busyness. While the solution to this is a wip,
>> >> +	 * busyness is still usable for platforms running GuC submission.
>> >> +	 */
>> >> +	pphwsp = ((void *)ce->lrc_reg_state) - LRC_STATE_OFFSET;
>> >> +	last_switch = READ_ONCE(pphwsp[PPHWSP_GUC_CONTEXT_USAGE_STAMP_LO]);
>> >> +	engine_id = READ_ONCE(pphwsp[PPHWSP_GUC_CONTEXT_USAGE_ENGINE_ID]);
>> >> +
>> >> +	guc_update_pm_timestamp(guc, &unused);
>> >> +
>> >> +	if (engine_id != 0xffffffff && last_switch) {
>> >> +		start_gt_clk = READ_ONCE(ce->stats.runtime.start_gt_clk);
>> >> +		__extend_last_switch(guc, &start_gt_clk, last_switch);
>> >> +		active = intel_gt_clock_interval_to_ns(gt, guc->timestamp.gt_stamp - start_gt_clk);
>> >> +		WRITE_ONCE(ce->stats.runtime.start_gt_clk, start_gt_clk);
>> >> +		WRITE_ONCE(ce->stats.active, active);
>> >
>> > Should not need WRITE_ONCE to update regular memory. Not even sure we need
>> > READ_ONCE above.
>>
>> Not sure I checked what they do. I was thinking these are needed for the
>> memory ordering (as in be sure that start_gt_clk is updated before
>> active).
>
>As long as our operations are done under correct locks we don't have to
>worry about memory ordering. That is one of the reasons I am doing
>everything under the spinlock in [1].
>
>>
>> >
>> >> +	} else {
>> >> +		lrc_update_runtime(ce);
>> >
>> > As was being discussed, should not need this here in this function. See
>> > below too.
>>
>> In short, I added this here so that a query for busyness following idle can
>> be obtained immediately. For GuC backend, the context is unpinned after
>> disabling scheduling on that context and that is asynchronous.  Also if
>> there are more requests on that context, the scheduling may not be disabled
>> and unpin may not happen, so updated runtime would only be seen much much
>> later.
>>
>> It is still safe to call from here because we know that the context is not
>> active and has switched out. If it did switch in while we were reading
>> this, that's still fine, we would only report the value stored in the
>> context image.
>
>Agreed, but in [1] I have made this unconditional, not sure if you will
>agree or see problems with that.

That would get called every second (default intel_gpu_top query 
internal) for a long running workload. multiply that with all active 
contexts.
>
>>
>> >
>> >> +	}
>> >> +
>> >> +	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>> >> +}
>> >> +
>> >> +static void guc_context_update_stats(struct intel_context *ce)
>> >> +{
>> >> +	if (!intel_context_pin_if_active(ce)) {
>> >> +		WRITE_ONCE(ce->stats.runtime.start_gt_clk, 0);
>> >> +		WRITE_ONCE(ce->stats.active, 0);
>> >
>> > Why do these need to be initialized to 0? Looks like the calculations in
>> > __guc_context_update_clks() will work even if we don't do this? Also I
>> > didn't follow the 'if (!intel_context_pin_if_active(ce))' check.
>>
>> __guc_context_update_clks accesses the context image, so we need to make
>> sure it's pinned. pin if active will not sleep/wait, so we can use it in
>> this path.
>
>I have added pinning in [1].
>
>> if context is not active, then we update the active stats to 0.
>
>In [1] active is just a local variable and I don't touch ce->stats.active
>at all.
>
>> >> +		return;
>> >> +	}
>> >> +
>> >> +	__guc_context_update_clks(ce);
>> >> +	intel_context_unpin(ce);
>> >> +}
>> >> +
>> >>  static inline bool
>> >>  submission_disabled(struct intel_guc *guc)
>> >>  {
>> >> @@ -2723,6 +2780,7 @@ static void guc_context_unpin(struct intel_context *ce)
>> >>  {
>> >>	struct intel_guc *guc = cce_to_guc(ce);
>> >>
>> >> +	lrc_update_runtime(ce);
>> >
>> > How about moving this into lrc_unpin() since that gets called from all guc
>> > context types (parent/child/virtual).
>>
>> looks like lrc_unpin is called from context_unpin path.
>>
>> Same as above: for GuC, the context_unpin is an async operation and may not
>> happen if there are multiple requests in queue.
>
>In [1] I have left lrc_unpin in guc_context_unpin but changed to
>lrc_update_runtime_locked.

 From your rfc patch, I like
- the idea of not touching ce->stats.active
- having the update_stats return u64
- not doing a rmw for start_gt_clk

With those changes, we are only accessing total in ce->stats, so we 
don't really need a lrc_update_runtime_locked.

Thanks,
Umesh


>
>Thanks.
>--
>Ashutosh
