Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A047DE86D
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 23:59:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0DF010E7D7;
	Wed,  1 Nov 2023 22:59:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9009B10E7D7
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Nov 2023 22:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698879543; x=1730415543;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=i4ErLokpQ0K50+WK7FSjvVre9rQROVY8u4FJjI5puMY=;
 b=Dm/ODjWly2Xzxqa3rMOU191DXvQVQsZoyUEOa/PHfESu/e166lBwPuGh
 Tvw/moVFk0iE7PzVvTZr4K4aIruERO36xXZAFQpGvl1vcffXV27turTlC
 08fid1H0Di02Lp1qbwhrV9q7V2kCxhqpx9NXMPzDekS2U92BEnTISrJ8T
 xGC8jZ7g9G7a20XQDAELw+vhEaFf9BkMBsvNoOsllVx7ui6NFIeYMXBYE
 lESPGnK/qXbv4lMwaH7u6dAUz8uXY3XmhyZ7cDaA7l+t0mNxSplrPHBvS
 wTUAveRkZRO9BFhhsRDX3YmN34WZeJOhN1x7sCSy9sltlOEsEMljJKNQD w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="385767733"
X-IronPort-AV: E=Sophos;i="6.03,269,1694761200"; d="scan'208";a="385767733"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 15:59:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,269,1694761200"; 
   d="scan'208";a="8809878"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Nov 2023 15:59:02 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 1 Nov 2023 15:59:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 1 Nov 2023 15:59:02 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 1 Nov 2023 15:59:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Haf8Cke/Y+HbHhWf0GARp+S3WA0hyfkPJSMYGFoU/Op2bdaAa+NUy1iKitml/AlsxvBGrvSx6OkXC1iVZ9S3DjPMAPxqr12U4XQTM+VbceGF7b67d+scwQrKR1EQuoHs6bnz1aosxX7qqOuq6jR+mpgqPU0MN+mxX4+UV+kWTO8HhDfNYtNqzUX85Dk5p8M4HpJfO0joyXrUaU6x3Xp1aje3VCrrr+f4nl+rtzCedr0aAMNSL7J3ZdGPpjWysrcgOghtYnR/DysZ9SGWZk1yTMDDaZMSmhlbYLA0mP3wfOa1L9zrS5pl4KQqJQYkDOqL8bs4lOuZBgwglNxAJrJOUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B+SbNTX49JEG1I6cv9lGtNQsj3lcDuCBT2IQKQl3OZE=;
 b=KUtcnVAJ5sKdZDOG1n0iAZWVxPFmfXnk5lCA6LFZyr4HoC8wbg23VozE/KjPBR40g0tQaeAf6hQdIegtOjqXvx7pSmEnnGPJmsE2/AafZsLCnethPTVUiZYRl2RydBrpkaUUX7y+Ogv+KhxtwoJNVk+IvMaSpGi2JlZ+G6DNCV6248Nnm9bEQOdQPQ9f/SXcJLiqU8Mf8e3GKJKxb/sWsJ4RtiPnav9qvXPAvdQJK9p848l2z4vhNdifWpPiD+Ir7PluFuIG1+7bcw29+lrjSgmtHViAgoyjl96aVXKXGH8zwQTS9qUetN3C+AD6flf55aRsKHnCdkuGxDWqwMZ81A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB7854.namprd11.prod.outlook.com (2603:10b6:208:3f6::5)
 by PH7PR11MB8598.namprd11.prod.outlook.com (2603:10b6:510:2fd::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.19; Wed, 1 Nov
 2023 22:58:55 +0000
Received: from IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::929d:7372:b3aa:2541]) by IA1PR11MB7854.namprd11.prod.outlook.com
 ([fe80::929d:7372:b3aa:2541%5]) with mapi id 15.20.6954.019; Wed, 1 Nov 2023
 22:58:55 +0000
Date: Wed, 1 Nov 2023 15:58:52 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Message-ID: <20231101225852.GP1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231027195052.3676632-1-dnyaneshwar.bhadane@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231027195052.3676632-1-dnyaneshwar.bhadane@intel.com>
X-ClientProxiedBy: SJ0PR03CA0360.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::35) To IA1PR11MB7854.namprd11.prod.outlook.com
 (2603:10b6:208:3f6::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB7854:EE_|PH7PR11MB8598:EE_
X-MS-Office365-Filtering-Correlation-Id: a4ad2354-ff6b-4bc3-f386-08dbdb2e1fa4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wAkOVEGA+F1Mx8cYhUXYsBXTm+O1KSQ2FWZAo71PmZ61Ok1+ffle98JmxkzO4KhgJ3pZ9usJIbSyiYPxb/j82lzkSV2CEQvfYS7JzXhdAKlZrdDFRXtJ/qhNyieD7iNtpoSJygIBxGFBVY5i1eR/mOFrqrdojTED1iditxZ+GZPUs2MXDtO2uE3R211hl6lB3byGRT34ok9S9JaRBvpKoOSwDRjrkN5CuO39KgrZOAO3Dsa0yTcgHxRX/60UypKULEyc9TUodHxUjy9VxhtekbSJWm5vxLsWirlXBI7WhaZ+kZcivuchr/hv4LkwEdwrOAHAy0PREvKpJqumzQPVUGdf7J91miKeCnHsohkk47XC3upiyRO5yhB98qC47psPnngKAqNl8azcL7yVdehs4EjrWv6Rbay1JWs2sj4wPlA0sONz7BgUhrKvQrqvF4tHtO6THgptO0nh7Et/PIKiovefScu86q6s0lfb6TC2t8WihFBmonpd1beHgkeU//d7jtDQ84xFUeayfHJ6KbvFDzZh1yChcvuXT3cVh4nLDrqFG9eFrmFOgdZ4FuS2VT4Y
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(39860400002)(396003)(376002)(136003)(230922051799003)(64100799003)(1800799009)(186009)(451199024)(1076003)(2906002)(316002)(8676002)(4326008)(6636002)(66476007)(26005)(8936002)(66946007)(66556008)(478600001)(5660300002)(41300700001)(6862004)(83380400001)(6512007)(82960400001)(6506007)(38100700002)(6486002)(86362001)(6666004)(33656002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uj5YAtpQ7jOH3S7pjsMeQhbo7vsk7HuyF//7QuzzHySjm62UdUcNQV6ImE5c?=
 =?us-ascii?Q?FZvi/UYA3wvzKe5dKILwvnhAgs8szBFf52Sjj5lWBOiEUe6oimN4GvjMbl8H?=
 =?us-ascii?Q?x6eEap/kqDLBEJn+aKOrYp40PfLlwYKjhgrYnaa9letE65URaBqAYKGJi1RM?=
 =?us-ascii?Q?bkjs684eMOzWQ7m3HOiuOWce//rIypAJcYPkuZHOUFtYDRXaCliQnWNtGbXv?=
 =?us-ascii?Q?Nps4JkyW154gacX+Y8JhR46bbS86dN5Iw7+yYM/w/TKW3A1UuBcycXTJUhoG?=
 =?us-ascii?Q?X6YRfN2b9yqNoKO56HJSFIN7Datp+y36CHpT7njQ4duRfncALgzSLR7hl8lG?=
 =?us-ascii?Q?siU4d4A7RnNEQJhfyJBV2sZ6METltuK31VIheblpt3n3uX2+8mOX8YHzHrje?=
 =?us-ascii?Q?JTqGhTu2VNv3vDYVeDa1Mxns+P/Xo2RdndJ8mu+FJFazpAz15jHG0NZFw/S0?=
 =?us-ascii?Q?AyunBTvlRu/X/znNH8rN2vP94DwSvxVQ2b+6fIlJ+BnTpQaXCHkHBo8ndF4k?=
 =?us-ascii?Q?KVfJw+Xdrj+y9ZSG4iteq1Tw22DjZ/31mc9wr857DrEbs6NgHHrvrsi5axv8?=
 =?us-ascii?Q?AGhRPLWyJn/apl9f7lR761Fum9+o7FzaEFKoIjJxA5Fco4CV2kisrmIgug8F?=
 =?us-ascii?Q?avxrWQ8rOynesov0gv/JtKiU0jNNnJrsv+CraLJf8AEzUWMYpFqmrHJmz+Re?=
 =?us-ascii?Q?PLhDh9QwgeMi9wFKDimyVaf1qrpk0o7tbyGFdv03umZrHT/ie2sTX/fduD4Q?=
 =?us-ascii?Q?vKo7Cx2UvOd+BmP9EdRbR5U/NhmxHiHwSVVE1VYYSoNsB8bakD9VHS1DJHFX?=
 =?us-ascii?Q?iOl6sSfQWIC92SGdxDfMyn3UnmhfY+U94ixn6qYw7ZJJJZZDjZbHArpb461S?=
 =?us-ascii?Q?3NVRcBt/l///jorv4aht7MK2akRCVQqEtdUAKWy0Q1mjZArc7dJ3WFvc4W3G?=
 =?us-ascii?Q?dGZbE+AyaCny9T18YZdnYlDAR6vONr/d9zjO+JHoig0wcBz4BeQ9vNWUJjYp?=
 =?us-ascii?Q?u/+ekBSX7hMexpq4LVcN7MaMr/h03fcCOdyS5ncBr4wuaik/5AAoVjsmSPkc?=
 =?us-ascii?Q?bD1hSUU5IhrxwEGhJt/hifbv4TRnO7ndfm0KrVM93qih1RMzuB+/jDrnt20i?=
 =?us-ascii?Q?pi+dUHOWxhiPmq1r28+Gf0vAdAjrVR/8rcOAHFi4O1PLeHW9DtAGOpGo+OJG?=
 =?us-ascii?Q?VUDZCPpCZdyfPRT2PiGNFjOzx7s3TBzOgs6kN+W878HiB/HuTgU1UVK7waCX?=
 =?us-ascii?Q?+ohk1u08MVQZZZ4AeAXWk/euQOrqT5TBjC6R8I0Vyh3SJku6CRj51Wy0+E6/?=
 =?us-ascii?Q?K5uSccXW6S4gfFz0CK7CPvkBHu65ZU4TX+CbVwd/r0E+FN18uKGju7WHd0gl?=
 =?us-ascii?Q?Eu/Qi9/5TCDaFVEitMGRHeIA56g3UCVW7JutnSWKxYLpYiZx/+dD7nJQhJFb?=
 =?us-ascii?Q?sSBgRq7dD6AYZr/J3LU0hJdu9mIJBWv2GLiiNJQY1usfff/EfVoPH85a+h+o?=
 =?us-ascii?Q?YedAwjyWUkyzvsApLrtLKnexuX4KmGnwGyYDRU4rMYEegpLwJqv65WFobL5x?=
 =?us-ascii?Q?rMZTMXD6Afu5ziU8x7p0F5drjc8Qatwwc0eE6bHn8hsLgX/uCMHxXBM3MsM9?=
 =?us-ascii?Q?YA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a4ad2354-ff6b-4bc3-f386-08dbdb2e1fa4
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Nov 2023 22:58:55.0716 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rkj06aWb8HfVkkAAcdEWzlevOrv9btjctNQAMydRzT1oYPazcauK2/lN7KTfFdTiYsDlHNZ5QmiU6DoEHzDQVV4IvkbSvHtAhxMaHrR0+7E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8598
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/mtl: Add Wa_14019821291
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

On Sat, Oct 28, 2023 at 01:20:52AM +0530, Dnyaneshwar Bhadane wrote:
> This workaround is primarily implemented by the BIOS.  However if the
> BIOS applies the workaround it will reserve a small piece of our DSM
> (which should be at the top, right below the WOPCM); we just need to
> keep that region reserved so that nothing else attempts to re-use it.
> 
> v2: Declare regs in intel_gt_regs.h (Matt Roper)
> 
> v3: Shift WA implementation before calculation of *base (Matt Roper)
> 
> v4:
> -  Change condition gscpmi base to be fall in DSM range.(Matt Roper)
> 
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

and applied to drm-intel-gt-next.  Thanks for the patch.


Matt

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 21 +++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h    |  3 +++
>  2 files changed, 24 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> index 1a766d8e7cce..8c88075eeab2 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> @@ -386,6 +386,27 @@ static void icl_get_stolen_reserved(struct drm_i915_private *i915,
>  
>  	drm_dbg(&i915->drm, "GEN6_STOLEN_RESERVED = 0x%016llx\n", reg_val);
>  
> +	/* Wa_14019821291 */
> +	if (MEDIA_VER_FULL(i915) == IP_VER(13, 0)) {
> +		/*
> +		 * This workaround is primarily implemented by the BIOS.  We
> +		 * just need to figure out whether the BIOS has applied the
> +		 * workaround (meaning the programmed address falls within
> +		 * the DSM) and, if so, reserve that part of the DSM to
> +		 * prevent accidental reuse.  The DSM location should be just
> +		 * below the WOPCM.
> +		 */
> +		u64 gscpsmi_base = intel_uncore_read64_2x32(uncore,
> +							    MTL_GSCPSMI_BASEADDR_LSB,
> +							    MTL_GSCPSMI_BASEADDR_MSB);
> +		if (gscpsmi_base >= i915->dsm.stolen.start &&
> +		    gscpsmi_base < i915->dsm.stolen.end) {
> +			*base = gscpsmi_base;
> +			*size = i915->dsm.stolen.end - gscpsmi_base;
> +			return;
> +		}
> +	}
> +
>  	switch (reg_val & GEN8_STOLEN_RESERVED_SIZE_MASK) {
>  	case GEN8_STOLEN_RESERVED_1M:
>  		*size = 1024 * 1024;
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index eecd0a87a647..9de41703fae5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -537,6 +537,9 @@
>  #define XEHP_SQCM				MCR_REG(0x8724)
>  #define   EN_32B_ACCESS				REG_BIT(30)
>  
> +#define MTL_GSCPSMI_BASEADDR_LSB		_MMIO(0x880c)
> +#define MTL_GSCPSMI_BASEADDR_MSB		_MMIO(0x8810)
> +
>  #define HSW_IDICR				_MMIO(0x9008)
>  #define   IDIHASHMSK(x)				(((x) & 0x3f) << 16)
>  
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
