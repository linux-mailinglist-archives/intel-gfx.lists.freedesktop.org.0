Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D9B8A21C9
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 00:36:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE18910E47F;
	Thu, 11 Apr 2024 22:36:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZxJSidwQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9AA710F3FB;
 Thu, 11 Apr 2024 22:36:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712875002; x=1744411002;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=oebl/yW6yOuErXpoTzjDfx4Tf7UmnhGTXKa1bN00TSk=;
 b=ZxJSidwQwjfx2YrbNOrBuNG/VnwaRtH0avpJHqy/U0AOSVTPKn5Ho5NZ
 6WQ5HfLRnfVnSKBAzCpNBaQQ4wEVAcTQM3Rcov2ToAB8zotTw7pBg8zf9
 yuXewiNWXHud4/IIPoG3q/MD+a3yoBZr0k9w4xDHF1WMyzGnLIs9kdEMF
 9yT/at3wHsK9QjlFHNn4ofKtcbAdk0mgsFwfotWFk3Q1Et7OHba2oBL7C
 8XdE9ryPu09iKvo2SiHjlan7KqwfrkqfZFVvO17JIeC2Y4tPEMOvgGpIA
 jKzuBUHNcmDMtYBJ3eSRt+Aase5721NXCk166U8Pnyvj1EHo2Jofg8WqD Q==;
X-CSE-ConnectionGUID: mmOyoZrNSxiJGJW3CO2Tew==
X-CSE-MsgGUID: oTPn9nynQWm0emnOVVKJ3A==
X-IronPort-AV: E=McAfee;i="6600,9927,11041"; a="8177507"
X-IronPort-AV: E=Sophos;i="6.07,194,1708416000"; 
   d="scan'208";a="8177507"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 15:36:41 -0700
X-CSE-ConnectionGUID: mjpHoVqYRXKsq+1CQPnPYg==
X-CSE-MsgGUID: UxkJnOu9Ti2ECaeLVB4/Sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,194,1708416000"; d="scan'208";a="21013828"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Apr 2024 15:36:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 15:36:39 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Apr 2024 15:36:39 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Apr 2024 15:36:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wx71tesHZ5xrhlqd/cBNP/NqnvxYyoD9+rYtme5Yfsv5fnbhgvM8vpRjP1e++SR6D0IvkHio3jWbq7KGdeNnf1BWYBQAcJUO6hSwlfSpYLJQFrPkckxhFtMWk+LxMamHKisGXPOFWI+mbGiVUS9yXAInI2DRsiMdAMuWBVyWADRCA02uTeJv+ZTQlrUaXPZ49T29NT6KZ4KYCt0wBt9ORZ5ALACdFFhk1/cOBEE+zJy8RK49U22paNbSJrKtUZYgvRw4wxSbkJ8U4kS2Vtb78X9QZOFzT8ZASk5vnm0lAsSNC/eZbPddW/zrH34NpLlSKwjoxQQfxharEDNwrKV1ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rl850WGO+6CZUWfq4Frr4yfgdI/INJiqFo8FMvQwtUc=;
 b=QUz0XgiSKaZlEz4YOxEPBquN9OSVX/vNQUhdgpfrWGXM99iYTuW3wSrNdqRkpWX37Au4jr7KRw0hh/PgI92EeaOOWMMVsMKvyHAzQsrXvOkwVuPslmIr8Qa0PYycySeQfG0AhEO+ObVH2RE5r6+IgwjhNHq3VvtrEey6MHrU+jamoBh5v1CmcGhfqEyoEYpENn5T/rM7mbhAnPcbQhm9tl64LBrx2Gcov4raiomO3OHglkzAh/mtgt3rLSEhiFW6gDngt5WOwT5/8mLfJuzROquHB6pMmENjCy5oJrtmuleiepLQV6v8CSNlVxF86fRMkCl612c3C4i96y/5Ido/Qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA1PR11MB5923.namprd11.prod.outlook.com (2603:10b6:806:23a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.26; Thu, 11 Apr
 2024 22:36:37 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%5]) with mapi id 15.20.7430.045; Thu, 11 Apr 2024
 22:36:37 +0000
Date: Thu, 11 Apr 2024 15:36:35 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Uma Shankar <uma.shankar@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <chaitanya.kumar.borah@intel.com>, <jani.nikula@linux.intel.com>
Subject: Re: [v2] drm/i915: Implement Audio WA_14020863754
Message-ID: <20240411223635.GE6571@mdroper-desk1.amr.corp.intel.com>
References: <20240410135046.933254-1-uma.shankar@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240410135046.933254-1-uma.shankar@intel.com>
X-ClientProxiedBy: BY5PR13CA0002.namprd13.prod.outlook.com
 (2603:10b6:a03:180::15) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA1PR11MB5923:EE_
X-MS-Office365-Filtering-Correlation-Id: 02bc4eb2-2099-4192-8d83-08dc5a77d948
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ItYR/feE6GadnNuxL7jeEii4O2mldcC5Pf7XkvbJDQxFmZcjzMAt6RWUvBaCoQxWfsJD3R7fEskK7EaLuPZo6ET4yf8PtC51+4IhuTxoPeQTXQAD8/yRZ9FkxPpi30N+EOWEQpFXaQpV9wawG/9+XKAa0ReaAFYuZQBnC3gngALddz+lWp3/f4Ce7fLIomvcm8bPyqJr4DGOhFc4fWlljuw7eT//Ds9c9X5RcDAbfYDBcDO3I6cuWlQJEBufmhx2GOJAD7Dz3Bc4fuOkjBMvAZCFYn0Tb7rpEFUcRNmNWQ08SZRvHuo3JHUObko+BqUqOaR0W3JbCwbyONp5fCjnBm7jWhgJdABo1nl4EOAixRr0vwKQh7ZPKErHjcVDa3sHGUpjViFeVQo8u5yIHuaO32eC+PpR8ewZ1VklnXIUr5Qlry8LN4nya3UCzY/FvlWO4Tul8au/j6fPGcPYOxv+XAcLrNVpZH8CWVc+FOsP+6pzgdBCzccUTUcxc+v59DPukafCKPzJWYXYQoM1z3dLIYfM/ldP0nRv9DqHreOMY1ODQ0kBolS4cEpoi+wk4sIcgNFWaagYKiC5eZZ+2ptEtydtoxS/gefON3b4hhxAjW5BG6cBmEqL4yV8CIX01kubZjFo2AM+WkWZJ0dqa2gVMA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MmC/r3KlGB1TJCS/PKKWFsGJGXss61bOgt1iTKbbdWYLWyHrpUpJWwQ5xE5R?=
 =?us-ascii?Q?sSX7EMLPFf73qAq02ptrg+UZpeP5ekgOd45KHcPQSeqCAkkjn7on/7lqcIfa?=
 =?us-ascii?Q?p8v5BlK3s9h/UfvYFoHuDKVXG33I+scSmsG5BvtbMv7TEAEwpk8IR6F3/kg6?=
 =?us-ascii?Q?N+gw/7aZSVNk18RdKKhe+kgkv0JcfWbGNLYjlCFZBjtPWLZ8Z91inCFcJHS4?=
 =?us-ascii?Q?vPIM2zJU/NjqY6diKPOuR/phpsprp9QZIQS/mJEa3PPOBc0KDLVUUEgqSAjn?=
 =?us-ascii?Q?TUCf1GQMX7xZYqfEWV6AZ3Qwp8SrrnCW0ZH2P6LXzFQl84hh1nkgxAh8k/so?=
 =?us-ascii?Q?Bng2oBxxgab7hO5/BZIZum4I3afNco9ngAj/kHen0J0tW63CQXXqABuflCuY?=
 =?us-ascii?Q?tfjlJbnt7N7IGD0cEDig8KGOqpXghATPSg/6ilE3IrkqOuGL8+jAxU7i9eh5?=
 =?us-ascii?Q?YkHvlnaQlfdVFCZi8f0Up9l3Gn1sd/wRSm15DbfkXwhJfkT0hgi3mdbtNOlD?=
 =?us-ascii?Q?LHe8OWygzX3ElJdJ8TYypJs8TTKuJF7VexMrsfkDHtiiMuOw4o9gvQqOuFLL?=
 =?us-ascii?Q?44yGu+AOVLjd6RvVtNw9FpiP+DZiwL05UDoPQ9m4VHqIuH1R2GpIA3LxV4bI?=
 =?us-ascii?Q?FCt/muRxYk6KTr/U5yR8cQxRwvuK3QYHZ0X794YhFxdiE5r+FzlpD/NjobPC?=
 =?us-ascii?Q?09V2/VVPWdFDmbCJyRVQsP1teEBAuXTNYdsFGi3QSbcC/uBHPB7aVI40owz9?=
 =?us-ascii?Q?xeen+ub+bULXCk36WJDNCOkuvJqtS/k1jXj9AkZGLzQLsIzu4XcZ26LemYRq?=
 =?us-ascii?Q?OQX12Xu0fsqZAS0wngqUthovxQHQIqdpNieUgBxkeCApiTyFr/8sUn84U/vj?=
 =?us-ascii?Q?BOAAAR+ttUae5GzOtlMlZNoPb+5Kdyy/OVQ0BHSwLqqxUd64heGL31mlZhzH?=
 =?us-ascii?Q?hAw30my2Wr5TeBu3aP5dvRRtm648daNR0T5Nsyc4JU807ZZVgdC0R9gMwN2b?=
 =?us-ascii?Q?dRc+RPfotMXKjboCqIkIZHDeqFcFevIF9JsoT65aqjuqWHWKaT3tRt/CxxdQ?=
 =?us-ascii?Q?hIEIwfSvJRpcPkt96tlHy4xeWozLg0t++nmMzgl/Cdwmwp5issPQBQDzkam/?=
 =?us-ascii?Q?NrcCdqfkZbI4xD+2cO0/Mx0yNkmfel9KtLMjez+EQi2G92QsqjEYTLuDbbOB?=
 =?us-ascii?Q?KaH6vkN6YT8QvuynE9hw4jnen8NTT+hp624eeh0R4N2ZxKHzvDoXhQ8OAHjK?=
 =?us-ascii?Q?ilIIfTGMa5KN/GhQ0IiihfP0sHmh/5cDO0K7Tl0g9iLcKXc6jrwqMPfkIuNn?=
 =?us-ascii?Q?FHfEsUMGrh7nuf2mCVQD0xisZphdtXhSXRI8paCo1+ssajVQ2VoH35ugsdjA?=
 =?us-ascii?Q?sHa2zlOxW9StzyVvsZD3RhgjQBLk+3/GVi6trmT6AtWn57HtJyGt8vRG5nIj?=
 =?us-ascii?Q?z4F7KSyp0ydKeCW6rQYJ2pAwJOBpsFhkmcnTvxyY85VHzNDcea6P1jnuqOIV?=
 =?us-ascii?Q?Ou/aJUZFdSmKzcZnH0LBB38QNL/2XhvmEj5Bbro3Th86/N1qdhD19kmG22Qy?=
 =?us-ascii?Q?+jduRPK4P4CJ7aQ0LX+RA3H/d3uhH0ubFSXLtSrN0xwXZ8wXzd4nNnN56KZj?=
 =?us-ascii?Q?ww=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 02bc4eb2-2099-4192-8d83-08dc5a77d948
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2024 22:36:37.4330 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j8xgQbDgWp6czucPV1hhdlS3bCbTJySoVlzEqAS9T1a735cniqtZu/q83+8jL7EMUR0pNMKq8cZa6FrKEtDy0SJFeLwuOVpaVbR73yr3nb4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5923
X-OriginatorOrg: intel.com
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

On Wed, Apr 10, 2024 at 07:20:46PM +0530, Uma Shankar wrote:
> WA_14020863754: Corner case with Min Hblank Fix can cause
> audio hang
> 
> Issue: Previously a fix was made to avoid issues with extremely
> small hblanks, called the "Min Hblank Fix". However, this can
> potentially cause an audio hang.
> 
> Workaround :
> During "Audio Programming Sequence" Audio Enabling -
> When DP mode is enabled Set mmio offset 0x65F1C bit 18 = 1b,
> before step #1 "Enable audio Presence Detect"
> 
> During "Audio Programming Sequence" Audio Disabling -
> When DP mode is enabled Clear mmio offset 0x65F1C bit 18 = 0b,
> after step #6 "Disable Audio PD (Presence Detect)"
> If not clearing PD bit, must also not clear 0x65F1C bit 18 (leave = 1b)
> 
> v2: Update the platform checks (Jani Nikula)
> 
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c      | 14 ++++++++++++++
>  drivers/gpu/drm/i915/display/intel_audio_regs.h |  3 +++
>  2 files changed, 17 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 07e0c73204f3..61df5115c970 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -512,6 +512,13 @@ static void hsw_audio_codec_disable(struct intel_encoder *encoder,
>  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
>  		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
>  
> +	/*
> +	 * WA_14020863754: Implement Audio Workaround
> +	 * Corner case with Min Hblank Fix can cause audio hang
> +	 */
> +	if (DISPLAY_VER(i915) >= 20)

The workaround is currently listed as applying to both Xe2_LPD (20.00)
and Xe2_HPD (14.01).  So we should match on those precise IP versions
for now.  Future platforms and/or refreshes may or may not need this
workaround and we don't want to just assume the workaround will carry
forward forever, so the condition may get updated further as new
platforms/IP versions are added to the driver.


Matt

> +		intel_de_rmw(i915, AUD_CHICKENBIT_REG3, CHICKEN3_SPARE18, 0);
> +
>  	mutex_unlock(&i915->display.audio.mutex);
>  }
>  
> @@ -637,6 +644,13 @@ static void hsw_audio_codec_enable(struct intel_encoder *encoder,
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
>  		enable_audio_dsc_wa(encoder, crtc_state);
>  
> +	/*
> +	 * WA_14020863754: Implement Audio Workaround
> +	 * Corner case with Min Hblank Fix can cause audio hang
> +	 */
> +	if (DISPLAY_VER(i915) >= 20)
> +		intel_de_rmw(i915, AUD_CHICKENBIT_REG3, 0, CHICKEN3_SPARE18);
> +
>  	/* Enable audio presence detect */
>  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
>  		     0, AUDIO_OUTPUT_ENABLE(cpu_transcoder));
> diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> index 616e7b1275c4..6f8d33299ecd 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> @@ -148,4 +148,7 @@
>  #define HBLANK_START_COUNT_96	4
>  #define HBLANK_START_COUNT_128	5
>  
> +#define AUD_CHICKENBIT_REG3		_MMIO(0x65F1C)
> +#define  CHICKEN3_SPARE18		REG_BIT(18)
> +
>  #endif /* __INTEL_AUDIO_REGS_H__ */
> -- 
> 2.42.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
