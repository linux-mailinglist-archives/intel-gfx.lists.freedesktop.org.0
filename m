Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC54787EFE
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 06:26:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D1B010E5FB;
	Fri, 25 Aug 2023 04:26:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4545210E5FB;
 Fri, 25 Aug 2023 04:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692937560; x=1724473560;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=nFzN3SJxif1o5BxHGf1Zo8jWgXpMN0c6G1ai8cjtAwY=;
 b=gtLaUUtVtmaKS+AACUZETqILLqmROmRzWY034Jj75qsXDUIflM33cOUW
 4HPbFvp+jwc+2FktJlFspLLBraQGa0WlRPCGI6eCvffsmNbm3Sk80lG8B
 mR5a739amSSNpN58ititmSnuhYYnTUEzJsIrJN1PTZwVhhq+z0ke4CQ9W
 qC/7eqr/SKwFgaJQI1H3o+W68N6knANlpWNpKFssWtPpRyETtJ2klfTsb
 wpGP+ipwyOjc2uifau8bR30/Hv8SYHhbxnz2hzq1jKxxAAOAaIuKzHtCY
 NDiftFZaPijjLVxYxp1SF6xt1LSfkzAYs96ePjz28e1n3vq3NotSck3ZE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="373500521"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="373500521"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 21:25:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="983951819"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="983951819"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 24 Aug 2023 21:25:59 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 21:25:59 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 21:25:59 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 21:25:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HadUy1sRZe0dvue+pu6m89ws8U8kmrkcSstpOfOZmoUo3ZYhEDVEhXK+aq9qV0hbU6ahlr2kT4wkbeO9aprAS0E0IozBMx9XKPAJxga9ob0U/Qk3frtonrzUxWSEYVRRg9LaiiT6bXY8MwGkCYjWCUdco6LwJ2y9sNrzdkobVx02cjt9cR8ifgTBKuGiP7OK3xk/OFShJlQlQ/HZ1BA3TTNzmRaPfGhhKpHUWxMobnDFs0CrV+DS1P6ZuHhrUlj+JNsEqzJJ3BjxlAOA3qXoLpv7CywtRsP0SpwNQfFR9mq+Yx855sbXUVwCOu/oJnNdOw0V3tttjgK3uygdv6nk7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nvdj4QaHMh0x8B+ENscdnpbF+3Hs+qwpph5glJmC7ds=;
 b=kMIOGtKiIw4rx75zT950BNPeLuX5q/3vg+Ilm+8Kx+RM5BDajqumgBLDPxPT+qbVH97S+iWIP8M38XIP/vr6pjJW1kvQ9Xx2BsmwYv+SWBRGYQBBhr2CQso2B06swKcAE959dnZsaNoeN1EJPlTW6nZLKlNfrcp1I1vvkhHKk5kAid1JsC6l6QYS1QwzCm8dDRzviMJJxRB2rYFK8hgSRdSOk0E42OJ92SPB9YrQmHOxFhvr7+j2mb7Zo68kUs7RXg3V23b4MV5cqbxtzhGaArTHA3AqSxrgTtUZWzbpGaf4XKrQoisbE6yhNNZpEXc4rRxB0YQ2seEfibvs607vQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM3PR11MB8681.namprd11.prod.outlook.com (2603:10b6:0:49::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.27; Fri, 25 Aug 2023 04:25:57 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6699.028; Fri, 25 Aug 2023
 04:25:56 +0000
Date: Thu, 24 Aug 2023 21:25:54 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <sydv7bpb3ov6nemwjcmbf5f5eojpdcul6bz43lsjmshgmo4pxg@utjuv4nyyerf>
X-Patchwork-Hint: comment
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-32-lucas.demarchi@intel.com>
 <20230823204921.GL1529860@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230823204921.GL1529860@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: MW4PR04CA0250.namprd04.prod.outlook.com
 (2603:10b6:303:88::15) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DM3PR11MB8681:EE_
X-MS-Office365-Filtering-Correlation-Id: a132f89c-14cb-474c-0523-08dba523606e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: U1uknihwyOhW8d4IkOATV1QjY0rYet9sw/14MfSz51OI5ElfQEuQRKIMOhoLcSz0kv0NRDsVh8UoihufvbKnLZYUWglmwF+ye1rBK0tJGtp1i9iJFc6KAt5P9PBjwYNr/+twx7Rr4gbibdocUEz6LL7FPdwKQc6Iq4wOs40UhlGE9w+UPklo06jVp8LN1HuBrvE2F290GYbtyXqxoQXldpWdYDj7XgSWGsw9VNppZXF7KN0CvgiP1VNaQQR5QA4tGfUia1msAdghlFkaOOnSp4xzIFY3l0nprYkf47CAw8AJY9GOb3OZzmh+iX+/CfKtrC4cw169nY/9Jrm0hgXYLxaAowWRVI1zesf+21JSq2GGv4hOE0A4b1LtqYg3RTeJtumNjHBs+EkguURWkMaxkrxX+Wg27M7Paj9j545VwlyXcOafjss9Trx8FzGKNX5qzxNgdLE/N7CU31Q98FcNXQGTuYBK53REBObDUEOn25aUa16JqcuGvfwBpri0gFSKcEKdsE3yHRnu0CmEj9OFZTl+Geks0M/ikYtvxak4e0nCUSf69hhfqQcx+N5kjaR8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(136003)(396003)(39860400002)(376002)(366004)(451199024)(186009)(1800799009)(33716001)(6636002)(66476007)(66946007)(66556008)(316002)(82960400001)(478600001)(26005)(38100700002)(41300700001)(86362001)(6486002)(6512007)(6506007)(2906002)(9686003)(4326008)(8676002)(450100002)(8936002)(6862004)(5660300002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?t+wfLt8Q9V4EZ4vxmzcQ8yKtv9fXGZ2ygGqQqUfLWjDfBCByUEIWWSJXGgK3?=
 =?us-ascii?Q?DVmVJCoysam7aLAzBIgzYeqMvAIHPCCCsbZc+1k+hVhfhrD9Je7BT47OghPN?=
 =?us-ascii?Q?U3m/Hsbo4OpcRqyq3J6ws/jcI3SuggnuaG/jhmuhwZzHu30Hqz6++1c9VlUx?=
 =?us-ascii?Q?F+XWnqHQ3ZntKz9A1JiUxOQc6O5m8pZzhQKeEZsb2INcJ2KDDLUS+GWWBbNH?=
 =?us-ascii?Q?crg8l2yxumFVeD81VIyXpp0AhkvVWAslWIPdwuS7J39te4X04gzxIJ0iwuVr?=
 =?us-ascii?Q?E0OEEw4yqnMFk6tkmQ3y/nbbKknyeeQcYs5/hHkP8ekKWAsaUSyIOIKqFPmk?=
 =?us-ascii?Q?e1XZp6bFYZjGmxdEPf20H4i4pRvXWk5V2PmG8TD0vS7sQLCi6KrmCxB72OXK?=
 =?us-ascii?Q?oWdC1oKqaA02mRpUOVp6zDxovrw/h25H1Q4YMBV8ISsFizTQ/gARcR5v0vpQ?=
 =?us-ascii?Q?8Esa+ag93RztJ710igifGqZPsMG1bJkjrIWZb63wUHZ3XhVBsfzO3Exior0q?=
 =?us-ascii?Q?lHoWkC8CANTHjP2pvaqU/fwFE31MnvQ59BagOs2lQgn4K03aANsLlrLkdEml?=
 =?us-ascii?Q?aV1GJYwF78m6XU43BAPBdDc2chOHZTCN+gLPNgp4YKd2+wuyJtnSl8xN02mB?=
 =?us-ascii?Q?dbm/LqciUiZWuej1CQ5sulIHvBl9tCh9FSe56BLfgSUi0SU4BKDKcM2KrXrm?=
 =?us-ascii?Q?DsUnmLGKVkj1A49pp6/K3o5mvzOk9WCdcr6Eceyv0HREhUARQiC8ZsOYVavM?=
 =?us-ascii?Q?laVeeW4ImB8jxSt9P3iCmSMQbBmg9w00OGNXBM3umw3MUWIYBLAttHiI9ff7?=
 =?us-ascii?Q?u5Q90MNKyhhpoSTbrCwWu1Q11OQqDxfWQQA6o4cfH6TTNKEH5VOB7oJjR2v3?=
 =?us-ascii?Q?GgbFSaMHO8BPmwPyWdv+VscqaeL0ZN/JR0F0vOzd3+yTUYQR9EdBVnKcY4AE?=
 =?us-ascii?Q?twtHXUTlSfYqnvAG481q5nrFOgpwjhCNt5UTapTq5+j4sxsUO9acBLk8yRSB?=
 =?us-ascii?Q?NP9VcG4msmzVmmQSC7GgnEl/XioH0fdsAgKvRfLtq7TbtXcnxbFe74ChKLbS?=
 =?us-ascii?Q?BCJvB+TkugmVbbr/Y+IXJTL+Pkua8jYiGTnLyfnjzK2X1NmEXSK/Uhrfm+4k?=
 =?us-ascii?Q?U9h94Io7c0XlayOnkvhdOgfdZSB4NDNx9ZUCA4ntcKDyZz/krpoTuYpP811D?=
 =?us-ascii?Q?UwHiFoleRZrNQkOk9NzUpplfE3hGlCLw7d46MMns/S4fiNnWmNKRpb8oOsgk?=
 =?us-ascii?Q?WEIatNGI26s+v+gKuSocXksHqNPPqDCWWfk727dEJfqnU8rde4QY6PP1CsBD?=
 =?us-ascii?Q?Ynu8jkSonqTQQ8V2D2jDx960GRO0HK6gFOwn2rSPATpsmCTJ7R4ZsI8O5V9E?=
 =?us-ascii?Q?Jvgvs8N+BlXXNNKqptHugPimITeE4JzVoHQNONK2Fz0w/gs1wqsiZdVWHKbB?=
 =?us-ascii?Q?OqJaGNjKu2npniYpI7go+GyclLwrhQfkkXXNrbvkHTYdbp982mrxOCgDoaNx?=
 =?us-ascii?Q?xkePRF5/DW0FfkCcs7zivg01+fPVm7/b7RuuQsrg0DvTIkedxL0ViFObQqhx?=
 =?us-ascii?Q?PJvzmMUGLTMNhbo4cAFklTWgupyXiqHXDsY6fx2JTluEnDG+EufzpG76JEni?=
 =?us-ascii?Q?Ew=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a132f89c-14cb-474c-0523-08dba523606e
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2023 04:25:56.5246 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XNYuBjZtwP6v6ZwOKmt8nq14ZWfLwhoD6G6aWT4ZHzxaDkO+AYfcwG8beAk2dis4fhcEJ2Hxb8xFTwFD5kVA0JY+GKRAtaS/erHG+yUcuOo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8681
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 31/42] drm/i915/lnl: Add
 gmbus/ddc support
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 23, 2023 at 01:49:21PM -0700, Matt Roper wrote:
>On Wed, Aug 23, 2023 at 10:07:29AM -0700, Lucas De Marchi wrote:
>> LNL's south display uses the same table as MTP. Check for LNL's fake PCH
>> to make it consistent with the other checks.
>>
>> The VBT table doesn't contain the VBT -> spec mapping for LNL. Like in
>> other cases, uses the same as the previous platform.
>>
>> Bspec: 68971, 20124
>> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c  | 2 +-
>>  drivers/gpu/drm/i915/display/intel_gmbus.c | 5 ++++-
>>  2 files changed, 5 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
>> index 097c1f23d3ae..3772b91e155c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -2195,7 +2195,7 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
>>  	const u8 *ddc_pin_map;
>>  	int i, n_entries;
>>
>> -	if (HAS_PCH_MTP(i915) || IS_ALDERLAKE_P(i915)) {
>> +	if (HAS_PCH_MTP(i915) || IS_ALDERLAKE_P(i915) || IS_LUNARLAKE(i915)) {
>
>The LUNARLAKE here vs PCH_LNL below seems inconsistent.  Either way, we
>should probably put the newer platform first in the condition.
>
>Aside from those

If we drop IS_LUNARLAKE, then we need to check for something else here.
What about doing this?


	if (INTEL_PCH_TYPE(i915) >= PCH_LNL || HAS_PCH_MTP(i915) || IS_ALDERLAKE_P(i915)) {

?

>
>        Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>
>>  		ddc_pin_map = adlp_ddc_pin_map;
>>  		n_entries = ARRAY_SIZE(adlp_ddc_pin_map);
>>  	} else if (IS_ALDERLAKE_S(i915)) {
>> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
>> index e95ddb580ef6..801fabbccf7e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
>> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
>> @@ -155,7 +155,10 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
>>  	const struct gmbus_pin *pins;
>>  	size_t size;
>>
>> -	if (INTEL_PCH_TYPE(i915) >= PCH_DG2) {
>> +	if (INTEL_PCH_TYPE(i915) >= PCH_LNL) {
>> +		pins = gmbus_pins_mtp;
>> +		size = ARRAY_SIZE(gmbus_pins_mtp);
>> +	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG2) {
>>  		pins = gmbus_pins_dg2;
>>  		size = ARRAY_SIZE(gmbus_pins_dg2);
>>  	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
>> --
>> 2.40.1
>>
>
>-- 
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
