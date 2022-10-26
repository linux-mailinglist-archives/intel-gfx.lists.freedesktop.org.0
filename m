Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CF760E729
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 20:27:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8E2110E685;
	Wed, 26 Oct 2022 18:27:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40EB610E685
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 18:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666808831; x=1698344831;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=UDEpJnhasXqs6AwnoHqA8kCJ1sOyV/LQDB/yiuhVJEk=;
 b=D7GHGz7eZUC1JI8Ie9r3Uqmey/uoxcC7k2m9DoP2Ro/RUSWlzaCVpdEj
 GdRuoLUVFi7GSgf3SOEFXopJTO0l5nFW4lg0cgJSXFmhdE+BbPQluhxdw
 pXKhuL2buEADBEdjVG7jzphTT0KePTM6kGcNEYT4H/Aw4j++dPJ3uNzO+
 Zjv0xr57MmeB7nPb3zeixcqmdUve4bWGe35v7CmNIHSQ1Odr+9GVKgRsn
 OsgtyPWRwm/RrBEu7h9VTe4uuEc8P6fvQArznjGXBzwR0BghT/2BtLlyY
 50WehFbLfLuePyCRjA4HXNKW+IFoNzbNuVgApaEttjsb1DS+dXAzD+O56 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="305643441"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="305643441"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 11:27:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="774703846"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="774703846"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 26 Oct 2022 11:27:10 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 26 Oct 2022 11:27:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 26 Oct 2022 11:27:10 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 26 Oct 2022 11:27:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U5kyuj8kQ/pqXhOP3eG2VuySycCksOle0hTMwp0ttqJvDsIIckXiCFOfVMB4ScipbQqjNrLBEqwzj/gmhzUz2IYYdGDMR7DnV6jOpn6MkFrUJoxxFSrvVvWr94sgzY5oEGZxvEuTJ5tnlNRsyiS0Br1Wc4ROFS6g3UCZDt1jmqaZjHFO8u196JM8QsG69WnuVAC035Mf3IHQxQqMgv7swn5Te4c38CRXjiwJOWBuZRxIlWZbK/TNU3XYLzhvaMXNEFXd4ve6ZrquQ3w2bTJ1lQ2yKWh5vw0KVylrTM2Mmj2HHQd7eovoT2YU2qidYXfQ5PuLPR51z+tgmnVKKTuybw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Akc8dEdnWEyWcC7+yu3OK65jmvG8eVOhqZhJcyoqYzw=;
 b=SGWkMqaSSs5KVxQdA8t2O6AJ/xSd4ZzGZmP0RrT7LJAtLRgOz3fEinHsTyh03mrT9U0eGlfvCYaj+MrlWhDXSgRJUN3PZQIkEBmEgG+zSmsNEIHsOlnWvwgW1mu7XcfClJGvB4UVAOH9peK/eSChrCjkJegeV6F+ZSA6v+5LCyeQDrPGbStbi62FXQLpJ6tEej3MAUINvjLJtSaVwNiQy5xR5hKAWTcTIPHamkPt5XmtB25Qe0bnb9cpkvTYw2l7Q7bOQ6EYzU19OlOGtUlHxb1MjEzTLw2a+A/Sc/QbG1qkTwm8ycyu1Bf1NliRAGWjvvOqSkv3oyMB6TI1/Zv70Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by SA2PR11MB5180.namprd11.prod.outlook.com (2603:10b6:806:fb::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.28; Wed, 26 Oct
 2022 18:27:07 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::87a1:bf2f:7377:3036]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::87a1:bf2f:7377:3036%7]) with mapi id 15.20.5746.028; Wed, 26 Oct 2022
 18:27:07 +0000
Message-ID: <b7d767aa-d1ab-87a6-4bda-f59c3917afd3@intel.com>
Date: Wed, 26 Oct 2022 11:27:05 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.0
Content-Language: en-GB
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221026060506.1007830-1-alan.previn.teres.alexis@intel.com>
 <20221026060506.1007830-2-alan.previn.teres.alexis@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20221026060506.1007830-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0193.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::18) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|SA2PR11MB5180:EE_
X-MS-Office365-Filtering-Correlation-Id: 179e7722-8047-42bc-eb41-08dab77fb071
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0HcofguWEsAJIhMJiKNWVvnksqQvqWnLjUNN2g8E6F8L9vdnDbr3lBQYL+5a7BotXCuLOJkstZGbcWjvn3DMst9JPcoR4R5WQPWYys/KiyB4ov83n6L/TAUyFplnoc6NI3fFgqWwFBP4NRFz9KYAwGXabML0AnoHdk5hF38khSR4j0vEWGIbRYKf7MW6dyKpGu/NOeosU8md3clPRB1i84XJN1d0yzib8pv6BDGxxFwrmn0dT1T5LAJyliTcGbrfcx7+CStWE/KIsBS/XwwHC8csi8QAojgTQuUeGXc7eCQb8lP8tdbobU4j8SM121du3RSOfUJ+PorqbOt7k+6PGEjbKhaWBXWdbM5niY3ew5sWcCa9Rozmr+BC6EyLYUTOtcKY0y0uwBNSWimDYKFHkqoyHn/2FLkRr3AtM26LeIS7Lmi5dvp2t7xZCfBA10bb7jSOkHMP4kZASo+VO44QSO8F3CusMphZkPS/s0RTdGqapg/FgAFkyoyaNUBhwa/RJGGgnmm/d6vUrROQ0gW0V7XNsTNwfOdEfPWnKp+MmRwb+eQY7Qlb47c+ZgV76N9jw9tjrTK893P61/w9Jt2lNL7qnreat6rtjHPWGGaXTUnlweDVs+9oHapqQiwBbX+hX3p3Ilfe/kJCGgCk5XqhL2Ep6sgiUhcHeJszw/ARsczPbj+517hpBSvEHi8gQp+Wz1t/5hykB5c9Jc7VPhNVQHzZjsIeqF5FUcpSAOSbxgZfJLd7lPK4/33yeKwb2Ag1imKuu45enMVPAtGXRzJNQ8jaBNGy737M2RdLY6jVp+Y=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(376002)(136003)(366004)(346002)(451199015)(478600001)(6512007)(26005)(316002)(6486002)(6506007)(66556008)(66946007)(53546011)(66476007)(8676002)(36756003)(2906002)(38100700002)(86362001)(82960400001)(2616005)(186003)(83380400001)(31696002)(8936002)(41300700001)(31686004)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aXZHQVVhYnFkNmRQajlEdEdSVDdOMUZJRWJFWkRXK0FETHRnWXFYZXRJMzh4?=
 =?utf-8?B?QUhkSlJwQzBqeCt5YVVBRFo4elMwUDgvMGJMc2dKa3JrY2xmWHFYZVpNTFUx?=
 =?utf-8?B?K2ZZVUNpRXNhbGowUWxVajV0T0xVWDYyVWRYOTNWZFZjMW9velpPMzJuK3ZS?=
 =?utf-8?B?RmdyMXNrOXc5aVBVVllWQWU4bHd1NEZEVFF1RmpuYTBDVS92VWhXalJzaUox?=
 =?utf-8?B?K21XZFZ0cC8xR1NRSlJyVzN3aWtVeVZWQ3FVa1VmNHloZWZUTCtQdzREYmhM?=
 =?utf-8?B?QkJoemtCWDhBL2t4UEtlUGRQNHVjTnV5RDloWFJieTk1NWorZGk4SzRQejAy?=
 =?utf-8?B?U0xwcElBdFAxOUFpbnhCTSsvWEVEa0Noa2JxS3NGOWYreDg4ejZIaUxSbjhF?=
 =?utf-8?B?cythaWhGSnJsQ1BNWUYzVUprTzRLSlZlSHZQK25GbXN2UXFVWFB5RmVJeWtB?=
 =?utf-8?B?Tzd6Wno3czRZb1ZtMlcwcE1zdmJ2UjJQR2pjZUx6R0srQk9FRGVheGNHN0to?=
 =?utf-8?B?Y0NKbzdZTWFuNng0amRFbUM3Z290anF0S0FOQWswQzBSdjZMZm1FSHBtWDVX?=
 =?utf-8?B?RUxIdTlucUVYTFIyUGl6U3E5ODFobENVdXFna1R1V1d6L0F6LzdGWkdnU2Rz?=
 =?utf-8?B?OFRER2RCbzNTaTczWjdEeDA1bkdSZi92Sk1mbllUL2ROeE9sdFNzVlF1YVNv?=
 =?utf-8?B?NXNUYlZubXpEdUhyc0ZBNmVzdUhJZHBVeVhqWnp1RnZwVm9TbG5DTGJvaTNE?=
 =?utf-8?B?c0prTTQ5SFQ2QUlQUnR6TW0yd1BWajJ5MjBmWXFkSlQ5RVE5SjNHU05hZHFG?=
 =?utf-8?B?c20zV0pxeHhpdTRQVkh6WHI4K2dqSStQVEtXejVKTjYrOElrSlNjenB2dFdB?=
 =?utf-8?B?SVRwVEYrMHppSXZFa0gwYkNsTlZoajhWeGhwMFZ2YjV2Tm1jV0FLTTRrSms2?=
 =?utf-8?B?cHYxdkcyV2lOZ2F1S25kMXRKNnRHUVBCeVYwVVB5bTN6YXB3WUpOSWlyYkFz?=
 =?utf-8?B?QlU1MTYzV01iaXFnQnVsWG9IUG5kdUZIUzdyOVkxWGhRMGQ5WnFzdHFlTTI0?=
 =?utf-8?B?eENXS0xMLzhqZjdDZmVDMUJWbitqdWRGQ29uL3NGU3o5VnhWaTgrSDRXUWlO?=
 =?utf-8?B?OGxFdWVkVEhndGQxaTF3VVhVN3JYYzh1YzRpRDduWFYrT0JJZlZIbVptTnVL?=
 =?utf-8?B?WDdOelVGUm52cmNBeU1xLzhjNlZhM3VOUk5NMzkvS3d2dkcwdUlTYjNYLzFy?=
 =?utf-8?B?NThoeEtDNHM1cGVaMEhEK0lPSFYzQWlqKzBXdXg4VGtXMUkxZ0xJLzUxZDM1?=
 =?utf-8?B?Q3FaZGlSSzBTOWJLb00rOFdsR3R5a240ZGFKWmZzTG9XVnBZNzRUdythZTg4?=
 =?utf-8?B?OXRjTlNKc1R6R1h1L2pyT1pNSE5iandpdG5kamVPNm40UEFZNkhMVnlrQWtV?=
 =?utf-8?B?Y3pEd3lZZitRM0IxR3ViTWlkWndyNmc1UkJHbTMxVzE0dEliTHRRZ25MZVpB?=
 =?utf-8?B?RTRGTHQ5L1FFN0pRb093REtIWjNzQVl1N0lYYlpSS3FxSmloWTN6SDdHZU9a?=
 =?utf-8?B?UDdzTWttRjVlSFhseEtCbTdOYjFyY0ZnQXlCdkROdy9yTUEvdTd6K0hxdWpY?=
 =?utf-8?B?bHRzV3R2bms0TlJheGlPTHhmNGJUbHRtYXJNa1ErTVZaUlZXOUZEN2o0Q3RM?=
 =?utf-8?B?YTdFOEgvN0xnZGZ2VHVjQWpZZlJJRGZDUzN1K1VVVlVYY3VpZFBpYkRGbE1F?=
 =?utf-8?B?SEQyckMvamlmLzl4b2dySEk4eXFFNzlYOFgzRWlWZlllT3NLejBSTlhaaTJj?=
 =?utf-8?B?L1VDUXVWNlJuRTJkOU5ZbkY4SWsrVWR0SDBLMUZjTzdxNVRCbUk0Rnkxdzhh?=
 =?utf-8?B?SWE1TXNKSUZzUEZOMzlKd01CWHRLeS81UXE1bmNYWnkzb2V2WWlKL3Y0dllq?=
 =?utf-8?B?T0t6aXAxUWZuNjFxbERwMS9rM1o5SVN0eXpJdExQSkNqK3BreTVUT3l4bHlt?=
 =?utf-8?B?OUMxaHFibFZhaGdhUWp5U09oRnhmQUtlOVJZWkdqWnhHUkVhODdyUFBKVzIx?=
 =?utf-8?B?WVNwNFRYck03RUVqc0RPQS9tc3dpaDdXSlQ1emtTMitmZ2Jsa1IzendNV2x2?=
 =?utf-8?B?MDRadXNLamZBYVRHVnlzSmM2UTJtTnFDaytPbmJvcUFJOWdGL2VmY0JjWHFF?=
 =?utf-8?B?cGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 179e7722-8047-42bc-eb41-08dab77fb071
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Oct 2022 18:27:07.7206 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /GCBZ4V4fON6lDexgu5UtTtD4poV8snTznS0+rHL6wlRe/B+Fgiz8a2WATTjlZOlamFvaoOiBjVOlgLw9tipKoVE6dJ2Upz7IjSJkeZ4qAc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5180
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 1/1] drm/i915/guc: Fix GuC error capture
 sizing estimation and reporting
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 10/25/2022 23:05, Alan Previn wrote:
> During GuC error capture initialization, we estimate the amount of size
> we need for the error-capture-region of the shared GuC-log-buffer.
> This calculation was incorrect so fix that. With the fixed calculation
> we can reduce the allocation of error-capture region from 4MB to 1MB
> (see note2 below for reasoning). Additionally, switch from drm_notice to
> drm_debug for the 3X spare size check since that would be impossible to
> hit without redesigning gpu_coredump framework to hold multiple captures.
>
> NOTE1: Even for 1x the min size estimation case, actually running out
> of space is a corner case because it can only occur if all engine
> instances get reset all at once and i915 isn't able extract the capture
> data fast enough within G2H handler worker.
>
> NOTE2: With the corrected calculation, a DG2 part required ~77K and a PVC
> required ~115K (1X min-est-size that is calculated as one-shot all-engine-
> reset scenario).
>
> Fixes d7c15d76a5547: drm/i915/guc: Check sizing of guc_capture output
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
The fixes tag is not correct. You should use 'dim fixes <sha>' to create 
it automatically (it also adds a whole bunch of CC tags). I can fix that 
when merging, though.

Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

> ---
>   .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 29 ++++++++++++-------
>   drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  6 ++--
>   2 files changed, 21 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> index c4bee3bc15a9..4e6dca707d94 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> @@ -559,8 +559,9 @@ guc_capture_getlistsize(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
>   	if (!num_regs)
>   		return -ENODATA;
>   
> -	*size = PAGE_ALIGN((sizeof(struct guc_debug_capture_list)) +
> -			   (num_regs * sizeof(struct guc_mmio_reg)));
> +	if (size)
> +		*size = PAGE_ALIGN((sizeof(struct guc_debug_capture_list)) +
> +				   (num_regs * sizeof(struct guc_mmio_reg)));
>   
>   	return 0;
>   }
> @@ -670,7 +671,7 @@ guc_capture_output_min_size_est(struct intel_guc *guc)
>   	struct intel_gt *gt = guc_to_gt(guc);
>   	struct intel_engine_cs *engine;
>   	enum intel_engine_id id;
> -	int worst_min_size = 0, num_regs = 0;
> +	int worst_min_size = 0;
>   	size_t tmp = 0;
>   
>   	if (!guc->capture)
> @@ -692,20 +693,18 @@ guc_capture_output_min_size_est(struct intel_guc *guc)
>   					 (3 * sizeof(struct guc_state_capture_header_t));
>   
>   		if (!guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_GLOBAL, 0, &tmp, true))
> -			num_regs += tmp;
> +			worst_min_size += tmp;
>   
>   		if (!guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
>   					     engine->class, &tmp, true)) {
> -			num_regs += tmp;
> +			worst_min_size += tmp;
>   		}
>   		if (!guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
>   					     engine->class, &tmp, true)) {
> -			num_regs += tmp;
> +			worst_min_size += tmp;
>   		}
>   	}
>   
> -	worst_min_size += (num_regs * sizeof(struct guc_mmio_reg));
> -
>   	return worst_min_size;
>   }
>   
> @@ -722,15 +721,23 @@ static void check_guc_capture_size(struct intel_guc *guc)
>   	int spare_size = min_size * GUC_CAPTURE_OVERBUFFER_MULTIPLIER;
>   	u32 buffer_size = intel_guc_log_section_size_capture(&guc->log);
>   
> +	/*
> +	 * NOTE: min_size is much smaller than the capture region allocation (DG2: <80K vs 1MB)
> +	 * Additionally, its based on space needed to fit all engines getting reset at once
> +	 * within the same G2H handler task slot. This is very unlikely. However, if GuC really
> +	 * does run out of space for whatever reason, we will see an separate warning message
> +	 * when processing the G2H event capture-notification, search for:
> +	 * INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_NOSPACE.
> +	 */
>   	if (min_size < 0)
>   		drm_warn(&i915->drm, "Failed to calculate GuC error state capture buffer minimum size: %d!\n",
>   			 min_size);
>   	else if (min_size > buffer_size)
> -		drm_warn(&i915->drm, "GuC error state capture buffer is too small: %d < %d\n",
> +		drm_warn(&i915->drm, "GuC error state capture buffer maybe small: %d < %d\n",
>   			 buffer_size, min_size);
>   	else if (spare_size > buffer_size)
> -		drm_notice(&i915->drm, "GuC error state capture buffer maybe too small: %d < %d (min = %d)\n",
> -			   buffer_size, spare_size, min_size);
> +		drm_dbg(&i915->drm, "GuC error state capture buffer lacks spare size: %d < %d (min = %d)\n",
> +			buffer_size, spare_size, min_size);
>   }
>   
>   /*
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> index 55d3ef93e86f..68331c538b0a 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> @@ -16,15 +16,15 @@
>   #if defined(CONFIG_DRM_I915_DEBUG_GUC)
>   #define GUC_LOG_DEFAULT_CRASH_BUFFER_SIZE	SZ_2M
>   #define GUC_LOG_DEFAULT_DEBUG_BUFFER_SIZE	SZ_16M
> -#define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE	SZ_4M
> +#define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE	SZ_1M
>   #elif defined(CONFIG_DRM_I915_DEBUG_GEM)
>   #define GUC_LOG_DEFAULT_CRASH_BUFFER_SIZE	SZ_1M
>   #define GUC_LOG_DEFAULT_DEBUG_BUFFER_SIZE	SZ_2M
> -#define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE	SZ_4M
> +#define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE	SZ_1M
>   #else
>   #define GUC_LOG_DEFAULT_CRASH_BUFFER_SIZE	SZ_8K
>   #define GUC_LOG_DEFAULT_DEBUG_BUFFER_SIZE	SZ_64K
> -#define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE	SZ_2M
> +#define GUC_LOG_DEFAULT_CAPTURE_BUFFER_SIZE	SZ_1M
>   #endif
>   
>   static void guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log);

