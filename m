Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 776386779C9
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Jan 2023 12:03:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B7FF10E33E;
	Mon, 23 Jan 2023 11:03:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 873BA10E33E
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Jan 2023 11:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674471819; x=1706007819;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=KMAxjntVMoo29O3q315bpmiWj12mvkUlzDfK2CvOwro=;
 b=YVIl0BnDD467VK9vILezP+c5bSFbFw5Oo6aEpBr0NwFWbKXuJqYXTV15
 BvQ9byyqcYUdFd03rie3Ty6aDwbALmhtLDZkEvJDn2GTB3PwHUmM/rv5J
 Kthz9cbMgSadNy9p0pYzR2Z+O93DhzzbgUlRTjcyzgL08L1jCSnvc5RCd
 3M5oWJeHRa/UI9QYtU7Md1IMmhu7yiZiVH92X8+FdxEW/iE2d1hIzyAI0
 OXYXCW5gtbqojwxjlqSfj/LmUlwildOETu2uirk6lGL8aEYGQDBegHVam
 dFkEGdDsTooeativrYpor1Ff79YZTSav6Sfk0XVPvPM7Y6iv0N8aLLUm7 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="390518108"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="390518108"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 03:03:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="692095337"
X-IronPort-AV: E=Sophos;i="5.97,239,1669104000"; d="scan'208";a="692095337"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 23 Jan 2023 03:03:39 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 03:03:38 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 23 Jan 2023 03:03:38 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 23 Jan 2023 03:03:38 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 23 Jan 2023 03:03:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ghva+TUEbS4Wcnvwz1itMIB4SsqlO4oN4ew1NbUoZ3QID+G0StwZK6ZwE1GjeJtLnnAYA6eswDY7Gvb2nZ3rNxvuSDfEQSK915/qwTYDXpZoAYnFMh5qk1Okl6+mUPCu2uqqCexJVxhepecXhuMxOAu0EYyCifmZcN8fHAs7M5tto922sudtVCH02sr1nzK/fAH57KvHp6QEHBKHM1IA1dP+w8uAOwUdrCw2CQ5VkZRMt4BWelvMczGAq6xjLXYrzPIXcn/TBRL4OYHVjQx1B0iAhq4VC463HKt035jfth0Z9uaqwzbNtyg/Fbex7aTUzArdynKHysqnXw04BpzNvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V3xIUKQHUk7/Wefwbsq99EAqtRMx/oURXhMVZQrxack=;
 b=RJOA9Tqvs/oqqH2CkYXFnsqP6y5Yi6px37BKYgAuAYnAfVu1WbsCrUQsWClS7oQgDpgGzMNBVpNof/MmtH3HVik2K3/VeFgQ9TnLhE68xvGpe45lfv1qJB6Z2IDA2g4H0JGlqWnwHxPdSY0sHczsh2Z8q1SKD+27DOTKdS91aFzBGTnumT/5KKgC4onnBFvrjDKyGyQ3WyrKCqhTWcx9ecIkN+yRyLxxuUbu9Gw88Ee/gXheU4ba826Gp3x/+J+fmUukVkarHFDywdx3cyL3BptShCbluIo9s77zxVcaT5CUhzjLZ4HSxYkgm66+i2QfgbBeu2EAwM0ZN/RGaGMagw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 MW4PR11MB7104.namprd11.prod.outlook.com (2603:10b6:303:22b::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Mon, 23 Jan
 2023 11:03:35 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::165a:9b6c:b72a:7747]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::165a:9b6c:b72a:7747%11]) with mapi id 15.20.6002.033; Mon, 23 Jan
 2023 11:03:35 +0000
Date: Mon, 23 Jan 2023 16:33:24 +0530
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <Y85pfBSYRR6cH4uK@bvivekan-mobl>
References: <20230111235531.3353815-1-radhakrishna.sripada@intel.com>
 <20230111235531.3353815-4-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20230111235531.3353815-4-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: BM1P287CA0014.INDP287.PROD.OUTLOOK.COM
 (2603:1096:b00:40::29) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|MW4PR11MB7104:EE_
X-MS-Office365-Filtering-Correlation-Id: c836c184-9c1a-4431-092b-08dafd317893
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TMYvg1hG8G5+pBXE/w/W5jJFlhcmvavfH9RuKR6qKrcxTcVj1QU8mlfDGBoxmp3lQFEN1mDEumw1cZgAYPrbMLp2Z8zGpK8F3NGNbKls6854o+Vx+z6AfQ1WxbjQUmoFeWMRoYBcj4gaMBgANb5DFHUmWO0P+5roPuzBi66FrbPNVJbVvRB0wyo3VTAmuC4f8iY3gI8R/vnliHlqFsJ+L8ixMZvYx1hfxigVhMO65iuAs1xp7uFYGHiCVKUIxSIQBYNDpOo/U3A+PmYGV7VBeE9aYoZ/R5+2qPiyGBi5/SRwhRDdSl9vA+JgkbmUKSWtTLF6SZtEIdeCsV/OHaEpL3lPCHKy+Zbt4qVMj7MKtJ7F6eU1fFeCdmNacZrjS8LYf7k15zrxAnlnVK7OiSU3NbhBYB8ZtO1LGz2QTi+0HPo6aRXzWVdDJNcEYDXVeZ7gcwYYQZ625nlE/XcU+sHynnETQ0KPrMmnhrbX+62WlfY1/YK2SKU1TVXfDRsmom8i5Y58uZOW77MFKKvg8xbYw+z46CEGCiw8XoJihpFsj2aEOLlZNP8Aomf+vS+TlJ2edlm0asnGxW4GLmRLEFCb17acPZFl8JEzkBvmB81wN3vmaWeWnwVNdRSn47c877/fXFO0mjSvX1LybrxInXKqlg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(396003)(39860400002)(366004)(346002)(376002)(136003)(451199015)(83380400001)(38100700002)(82960400001)(86362001)(41300700001)(44832011)(2906002)(5660300002)(8936002)(33716001)(8676002)(26005)(9686003)(53546011)(6506007)(186003)(6512007)(6666004)(66476007)(316002)(66946007)(66556008)(478600001)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bThvS0ZYdjExNlVid0FsNVEyMWpJYmwyRE1TSzRWdWNSNGxiRnhmU3pCTG4r?=
 =?utf-8?B?RS9Qai85N3R3WUNlVjkzc21KTk15OURFdWJjT1BOZnpldDlsVTQrWFpaYnZD?=
 =?utf-8?B?UVNOcmNZcDVsemJWa3JyS1k4WHdvc0NlQnRMMHVabVdUaDhva0RCZ25kVFRV?=
 =?utf-8?B?NUVKUTdHVUhpNDEyR0xhZiszMnI4SGl0Q01BTVBVdWZtdzVrT1NFM2Y0L1l0?=
 =?utf-8?B?ZXdYT0pQaHlBaEV1bVpjUTN0ZmpGVmY3RGlZUzhIVURNYWdseXVlcUwwQ2Er?=
 =?utf-8?B?MW5WME5LK252NngySlVYUk1pcGd1YVJTSmdoRlo3Sk1LRzZLVEswRGNjUFFV?=
 =?utf-8?B?Wlp3TUZnY0sxUUFYQVVycEM4Y09sQVJncHc4OEVncUxhZml6TSswVGhKZ0E5?=
 =?utf-8?B?V1VDeldkZFBOaTVTQVQrR2NzZnRsYzBRZUdXek5aZ3ZNUTZRVVMrbjMweDBV?=
 =?utf-8?B?KzRmWGpNajQ2MDJ5YThyVUlSZHVDdUtWdkU4bGhRdnpCeG1RcjJtRnB4amRz?=
 =?utf-8?B?OEN5NDZvajE1SkNieGlOY1loZGpaSVRJMTFJcTZqR0VDZUJWLzdHM3BlSmVq?=
 =?utf-8?B?SmgwWEtKMjQxMXgyTVkyUm92N3BNbVdwVlJEOFp5dk5oZUR5L0NvcWlnMUJ1?=
 =?utf-8?B?YW9vWmJGUFJ1amRLUEZHbXJhZTVWemJneU9ScTJzU2xVY0d1RHB3N3JqTzdj?=
 =?utf-8?B?dkFnL0cwdUcwVVZVT043bjl3VTZnS0xRclFDazlWaXNOQmdwYyt5REJUMVZH?=
 =?utf-8?B?SGc3eHh1TFM3MUMvTnhZM2hETHlwTlA1WCthaVFvL0d2Z3dTY0k4TlA2eDdH?=
 =?utf-8?B?TEhGT0U4QzJ6UHlGSFlZRnpRK0tSTlFBWVI5cjNBbGl0TnBuWlorKzdqQWE1?=
 =?utf-8?B?TGRaNFYzcm5pdXBKVGtOK2RUOTY3QXVwN2ErTzlLcytJRVJONWo4WnE4R2dh?=
 =?utf-8?B?dTdNZFA0TkRMYU9Wem1sK3ZydWdlMnZQSU01SDRjU3hkVzd4cm9LL25pcWdC?=
 =?utf-8?B?L3RGN0hPQVdlNFpkbzVGTXZvM0FJdUl6cXJyNXFhc0xZN01vcGtKRFZxcGxZ?=
 =?utf-8?B?ZzNURnhlb3cwbWY5RlNzMEhVQ0t2eFkycmdHKy91Q240UzVwVGVGcW1sdHp5?=
 =?utf-8?B?a0h2Q0FCRk1TOXVGY3djcTZONjc3RG1xTGczU1hUdEJWbjlVOXg0OVFQblBl?=
 =?utf-8?B?ckljWVlsT1pZOEpYTTY4TnRTT2htNUV1bzZ6dlR2UExPLzlZR3E2OWcvRlhJ?=
 =?utf-8?B?Y0o4Q2pNTlBndlhwVTh6UXQ0RkNjZlNZTDBYZ2FoQ2NaSjZYSFZlTmFHRVI1?=
 =?utf-8?B?UWRZMllkU1dVN3lpU0hyNU5pT3hsMGRSMndXalhaZlQ5OThZU0oxNS9mMVhS?=
 =?utf-8?B?S0dCcERma2dEejFxaDFxNzdOdC81K2llUXdDd0JFWjlRbmRHSTdvK3pqWGhx?=
 =?utf-8?B?dmY5YmFQdUd4NUJQU0x3RWZQYnFjRW92U1RGeHJFcjNlVzg5ejlib3NHbFZm?=
 =?utf-8?B?SCtiYnVibDBWb0VvUWNzYjBpcHN3S0pUUHpjbDJuYktoc0Q1ck5qUkZxODFI?=
 =?utf-8?B?WE10aFYvRlBkU0h4VTArN1ZrSjhyYlpEVnQ0TEZSQjZFTXNsYms3TlhOb2tR?=
 =?utf-8?B?SGZOaE9yc0cxZ2J3d1Q3amI4ZVhGekRRV2VaMFAvdGpLS24yUHZxRW81a0hJ?=
 =?utf-8?B?SlVseVdZWTVvMHhwSThid1NxVnZ1UWNmclZDVVV2ODk1aXluczhLckZxMVlJ?=
 =?utf-8?B?VVFZS1d2VEtkcWtlNkNobGx1R2FrUHN1YjlPdTJHREluUEloSHBhbC9xUjBp?=
 =?utf-8?B?REN6TEdWQ3RyRnhmamdXYk9uc2w2SkpxTCtHZFZxM3Z1bWpSMzZreGFEWUJ4?=
 =?utf-8?B?dXNadjBYVndlNGdQc3Q1cmQ2eW1MWmRFb1RIWWxmaHNwZ1EwUmZNV1YycXJk?=
 =?utf-8?B?Q3BnVmZ1b1I4dG9oUkRqdStEdUEvQURGL0FFTjJ1UDJtSjBMS2hIWXgzNFFS?=
 =?utf-8?B?NURpYnI4Q0xodXdNNUlLekxIN1RuTkZudStuNERLNU1jM25CVlg4VStzbHAz?=
 =?utf-8?B?YysxZ0hlWklJekpUcFZEaTlHbXF2Z2JzVzVzakxuQUxTbnl4K2QwQ01qNjRN?=
 =?utf-8?B?L0p0SnlkUFJyUEJmcUQ0eGJpYVdBRFUyVGxXUzloMGtROXBkVmlFaURwb0dK?=
 =?utf-8?Q?+vJyiJWjMZVpq9HJw0KFb5Q=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c836c184-9c1a-4431-092b-08dafd317893
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2023 11:03:35.0097 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2hVwzggVB/PR6r3OeYgcrhwkqMTEL3dB4VMAThitZSctvPucCALUP2YUB7k3md5PjGYzx2D3qvq2YM6G4s9SanyTNpiOqzRdwzURqHbs5QdGgmOo3AiU/9OKdgZ128tX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7104
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH dii-client 3/9] drm/i915/mtl: Fix
 Wa_14015855405 implementation
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

On 11.01.2023 15:55, Radhakrishna Sripada wrote:
> The patch "2357f2b271ad drm/i915/mtl: Initial display workarounds"
> extended the workaround Wa_16015201720 to MTL. However the registers
> that the original WA implamented moved for MTL.
> 
> Implement the workaround with the correct register.
> 
> Fixes: 2357f2b271ad ("drm/i915/mtl: Initial display workarounds")
> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 35 ++++++++++++++++++++----
>  drivers/gpu/drm/i915/i915_reg.h          | 10 +++++--
>  2 files changed, 37 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 4124b3d37110..216915256eb6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -372,15 +372,12 @@ static void disable_all_event_handlers(struct drm_i915_private *i915)
>  	}
>  }
>  
> -static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
> +static void adlp_pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
>  {
>  	enum pipe pipe;
>  
> -	if (DISPLAY_VER(i915) < 13)
> -		return;
> -
>  	/*
> -	 * Wa_16015201720:adl-p,dg2, mtl
> +	 * Wa_16015201720:adl-p,dg2
>  	 * The WA requires clock gating to be disabled all the time
>  	 * for pipe A and B.
>  	 * For pipe C and D clock gating needs to be disabled only
> @@ -396,6 +393,34 @@ static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
>  				     PIPEDMC_GATING_DIS, 0);
>  }
>  
> +static void mtl_pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
> +{
> +	/*
> +	 * Wa_14015855405
> +	 * The WA requires clock gating to be disabled all the time
> +	 * for pipe A and B.
> +	 * For pipe C and D clock gating needs to be disabled only
> +	 * during initializing the firmware.
> +	 * TODO/FIXME: WA deviates wrt. enable/disable for Pipes C, D. Needs recheck.
> +	 * For now carry-forward the implementation for dg2.

typo "s/for dg2/from dg2/"

Reviewed-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Regards,
Bala

> +	 */
> +	if (enable)
> +		intel_de_rmw(i915, GEN9_CLKGATE_DIS_0, 0,
> +			     MTL_PIPEDMC_GATING_DIS_A | MTL_PIPEDMC_GATING_DIS_B |
> +			     MTL_PIPEDMC_GATING_DIS_C | MTL_PIPEDMC_GATING_DIS_D);
> +	else
> +		intel_de_rmw(i915, GEN9_CLKGATE_DIS_0,
> +			     MTL_PIPEDMC_GATING_DIS_C | MTL_PIPEDMC_GATING_DIS_D, 0);
> +}
> +
> +static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
> +{
> +	if (DISPLAY_VER(i915) >= 14)
> +		return mtl_pipedmc_clock_gating_wa(i915, enable);
> +	else if (DISPLAY_VER(i915) == 13)
> +		return adlp_pipedmc_clock_gating_wa(i915, enable);
> +}
> +
>  /**
>   * intel_dmc_load_program() - write the firmware from memory to register.
>   * @dev_priv: i915 drm device.
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 8b2cf980f323..d43f0f8e061c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1786,9 +1786,13 @@
>   * GEN9 clock gating regs
>   */
>  #define GEN9_CLKGATE_DIS_0		_MMIO(0x46530)
> -#define   DARBF_GATING_DIS		(1 << 27)
> -#define   PWM2_GATING_DIS		(1 << 14)
> -#define   PWM1_GATING_DIS		(1 << 13)
> +#define   DARBF_GATING_DIS		REG_BIT(27)
> +#define   MTL_PIPEDMC_GATING_DIS_A	REG_BIT(15)
> +#define   MTL_PIPEDMC_GATING_DIS_B	REG_BIT(14)
> +#define   PWM2_GATING_DIS		REG_BIT(14)
> +#define   MTL_PIPEDMC_GATING_DIS_C	REG_BIT(13)
> +#define   PWM1_GATING_DIS		REG_BIT(13)
> +#define   MTL_PIPEDMC_GATING_DIS_D	REG_BIT(12)
>  
>  #define GEN9_CLKGATE_DIS_3		_MMIO(0x46538)
>  #define   TGL_VRH_GATING_DIS		REG_BIT(31)
> -- 
> 2.34.1
> 
