Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B5B7CEB01
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Oct 2023 00:09:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D345710E03B;
	Wed, 18 Oct 2023 22:09:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98AAE10E3F2
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 22:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697666961; x=1729202961;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0NIEoEyFT8Ot2PPW1zM0yAs7qGcw60s8fS7/HBmwrY0=;
 b=EXyxIolTiV6c8DJkqgwUmMJlyCBrbkw2eaZ213DZ0/8vjQfezz1v8ZaS
 UcLocKWpvNaSqsTXI5il1kHgnUuCHmF0DI9Bf8poX31c6sN2dtovDjerU
 Ppa6HLeRIhwSiJwdA+TVa5tkUQZCAG2N67N5iKi4KCdsJOFuIrrat/54b
 YHPOj562dmb59KekMhjaqmqs7EAibZfXqDKZnvAfkYJp2BqNEw0p52L5M
 zCGngF9LWpFNcqIa2wL9lev3b3QqZTms5rB6mK1Oq5PQ6YZtyX0RoWdUo
 wuFPYrPGppMI6jN+39W9ObCLUoNZQCbcA37zNCJTw8MIIiags/mDvvIX8 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="383341423"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="383341423"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 15:08:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="1088135921"
X-IronPort-AV: E=Sophos;i="6.03,236,1694761200"; d="scan'208";a="1088135921"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2023 15:08:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 18 Oct 2023 15:08:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 18 Oct 2023 15:08:54 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 18 Oct 2023 15:08:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DNMJ0TjCytuVRaZ3wXjablM4TFSLJ06ce7O8ENfmjOqkj9VqgfbJM6LUjZZzFqHsUOoEm2TTzIRvOUL+VpKmB/PtcwK3tgD0gHFa+KiBxuLk01E14gB8sypYbyrdhxbDbwSR4SHvHjL2XtxNnlGxxosgBBCXT/TBcYnfAGnUWfZCpCKUQyn1T8RZ2AAY/mjY+I588bbqWpajvdmy/Dzk+7qRAQx6R/doVFWqN5iXc9gHxmdWJhx+TouR2Y2SCyfa3yqUizet2BSeg5CD/EM55mVU7tiiWEMCDacnh60tdq3oxEfsY9OA4d4Lk1iYMrnmEvYP/rc3GeGIE9H3t70nxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YYJoocvMi0vT8KHpm1XEtva95KuhZcclYIP719xX/iw=;
 b=K1uqxW5ENNXX/PbccLo3dWOBHnkqdmbHXhkN1qHGnQeE7hizh8AMZmGun3cDNkwSzzhhS5U+35LMextOUB+sTL4KNJthqmv0LWH97vh5uJrqK/+ERGMhnQdz1acxQKhqtqL6h1GEGNc+fkkiQ/atx5cJWu0EJl8ofZ3qnj+ltC6wxvZn62KS/BODj+KAVJgF7InbODijxihRG4XieIi1nwALx0Izd87JZrWVoT701B1YWRuZCpCCPNaPaTu9tRqrl1LG7C3B2tyfmeQM0Sn/kxPGnmGqodG8LBIYdunPjk7UiYpWKbmTNE75s4QiYeX6DB+geEJOfqgB+rwndEKoFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH0PR11MB5611.namprd11.prod.outlook.com (2603:10b6:510:ed::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6907.23; Wed, 18 Oct 2023 22:08:50 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f957:c15a:9c34:71db]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f957:c15a:9c34:71db%3]) with mapi id 15.20.6907.022; Wed, 18 Oct 2023
 22:08:50 +0000
Date: Wed, 18 Oct 2023 15:08:47 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Message-ID: <20231018220847.GC1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231018080443.2543881-1-dnyaneshwar.bhadane@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231018080443.2543881-1-dnyaneshwar.bhadane@intel.com>
X-ClientProxiedBy: SJ0PR03CA0139.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::24) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH0PR11MB5611:EE_
X-MS-Office365-Filtering-Correlation-Id: afafb4d5-c3db-4305-0786-08dbd026cebe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BVlOvI6O5jHUw6woYtfOWQWCFirNhbXAzyZFyV6lLCpClHme6h+ib2+Iadcf2TtGwnZ77xhbOG4SJnonfsujZPEEEHbTXl8vVFRHjvYTQF7nMSXA/P9x2RV4ggngUNlg9nUnHrPGfaTTNhnSLkJUMh5ipbH4t67GbGn/XUWq75CEm+8ghZswPPdhREAJNbQostJ6jMCaY7/wL9rT4LCTXs5NY/k80FopuI/84yuzFRAqNNJjQwQqss/kVx9P1mu4iH6QDwu+o9ZVp6Ql0BIKJhfBFIiI46jMEd66c7j5wr+ziR+bojBEh8yq8wH0R5PrLOz2uPYdI+ZSWAfzT/h1UapGLPYABKKptYr+OVkatxkgCG71WzDVhbwK2y6C+EQ2XDPnZcVE4dMsPofzNmKowyyEbo/kH3EdwvVrphl+h/Yyo/S55Fk7YYhp4kgF1N6KWdj/w+2I1ySf6jsLUMX91E1aQnawP1cOqGKPowmHIEXmy6x/3ZAtOw4LyJGZ6MTfbuZssxvdMVqGcJL8nwZzVN0N3+9RMSS7OLlKW+QTcBfZm/lUPbFpPBQDkX/XeZk+
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(136003)(346002)(39860400002)(376002)(230922051799003)(451199024)(64100799003)(186009)(1800799009)(6862004)(2906002)(33656002)(8936002)(4326008)(86362001)(5660300002)(38100700002)(26005)(1076003)(82960400001)(8676002)(6506007)(316002)(6486002)(478600001)(6666004)(6512007)(6636002)(66476007)(41300700001)(66556008)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jyZG6UB5lIZwJ3N05PDODnxIMzDc36xbw3LaOxcOhN0TMoMrOY6Rdoq6sWWL?=
 =?us-ascii?Q?xgJZS+BlwGKN0UIfF7IdQMjpb/xTNbNXDmnVeGzy7qiNxxTEql9chOpA1O5n?=
 =?us-ascii?Q?vgwUSTdrX18jhhkq9NReQHONme6nvzFA9LLt7Cwk6M5HxhRSwOUw2KJwkJVm?=
 =?us-ascii?Q?xLc9cXyVaG7OYvaLWqFyaH21SPbDt+3juy5uAYnaEI2F+w9u3BMkovi6pC2b?=
 =?us-ascii?Q?rQc8Y+d9aYaGaHMCl9rebn6i1EUHjLQ0i0+BEOTDmVO0QWbdusrxFdvJXp/i?=
 =?us-ascii?Q?gn39Y4k6/v45EgMawmrG/vbXPNjFAKoi8Fw3QvCFAfTu/NqCYVvCoi60cWeN?=
 =?us-ascii?Q?5icNE8G6U0EDvtgkTtJgJabXkUbICWyXDGjIWmsljQvPuSG52XhOnsrFGMVg?=
 =?us-ascii?Q?eshlPiuN5Aultlp3dfpLM+uB1AIaUgevOj5d8LE5KBf7IkzJHSG8WhD5qqtJ?=
 =?us-ascii?Q?1WzKgb6yybDdPIVhO5TxsgWlTJ5Vch3/PNg10f2ds4rGsCGxW20DUffSbrDB?=
 =?us-ascii?Q?PxKgK7p4svS5ewCZXxQeuYZi96IVsDnHT56O1ccRfCfUNjJkftIyeYXh1q9Q?=
 =?us-ascii?Q?lbWQi/4lBBzUaQoq6hd7Zzwhp25hO8/Mk/puq5bWGAcqA5epG7UXJq2Q2sDQ?=
 =?us-ascii?Q?gRORZuVOcVlMJXfR+wkm/AngMcKD+XcE6fIslVY8FSh9nlWHWRqsad4My6Uq?=
 =?us-ascii?Q?pNvr8zJnkqjal20pDLXzJY8QQ3bJVS9r5PS+NmBxFU0ns0A00ec4SAjeDvGW?=
 =?us-ascii?Q?aGBCPQxdwuAL+hVjiiQXh2Ip3T8t40hC42wAtiECXEJbeyhlGa0XisYmqqba?=
 =?us-ascii?Q?qB0+EOfGLH3uzcGO1k/+yXsU1PUF3UKM2K8TZWP82IE/3EW/vp63JkaT9n7z?=
 =?us-ascii?Q?JJnr1J/YzWmFYO9tVN6E/ikd9s2CnMcVvBlqCpNa+PpWNTVHZ3aTkRotMeet?=
 =?us-ascii?Q?JYEQVASJcEUtn7bMPjt3BIRtxP28pPVtKU6MnDKxRg4QjXwdyrUWTgWTVFhd?=
 =?us-ascii?Q?g8bJCy/aGRzqX+o3SlaoC0HlwF/N8vz1mK8MdHMAcTnnl+ql+iSAGHRmwrsb?=
 =?us-ascii?Q?AgOGfCA+fEKA72jmfdSvK+GF1jcKhZbQ+qDbrIWZHVdONVhrcRAWHpcAL0qh?=
 =?us-ascii?Q?5KQNzDOIUZXj+FkGsXGgMgdpSazw6Yg1EegoXv4OnoG/1DWuVbWsGIcoPrR1?=
 =?us-ascii?Q?mss45sZ7nHxMIz1hO6qT88C8TI1nvHwEee+1VdxVyNb+j0CICPHKBPI5Wegr?=
 =?us-ascii?Q?Q8j8sCjrOwiocPQHQecWZhQ79G7jXdmLY0us+F5GwYb99Q2Q0t3l0mjLNEmm?=
 =?us-ascii?Q?VG7+2H2iL/d/PBL9kCtjMA5vC4fg5wRHI086AfIfzwMOYsGTuvf2x8YecHuW?=
 =?us-ascii?Q?5PQ2I6hTvWrFMotkpRsSzqF6kd6LNSrdxIXtVLoNbf6bT3ScZTpotWjFUDov?=
 =?us-ascii?Q?MT30uF7mGnzUtEUPl+aQ2DcGiTifgqRjxPKkt0X4cxXNQa4Nv8tGvzIqkm/a?=
 =?us-ascii?Q?/4MRZLWS5iPqkd7NvRPjBsO/Q4l6V5lvuVzC2mTtXrQTLxrpeWOr8VcunUd9?=
 =?us-ascii?Q?/SvoV8PA9ZGWq0uZZ5epL85WEkEvQTpScMLFQ93vBdGDqYIHlFO4LrPezQfS?=
 =?us-ascii?Q?JA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: afafb4d5-c3db-4305-0786-08dbd026cebe
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2023 22:08:50.2935 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zKn3WKwbPSvohfRlPqbYOo1yttJFxQl3+/tDax0n29bEwurTxFuXlPYJIVXmDEDyGH9eaezP3xjPhKg7OEMxhD6pzJg7zVyErMwlNGl9pNY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5611
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Add Wa_14019821291
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

On Wed, Oct 18, 2023 at 01:34:43PM +0530, Dnyaneshwar Bhadane wrote:
> This workaround is primarily implemented by the BIOS.  However if the
> BIOS applies the workaround it will reserve a small piece of our DSM
> (which should be at the top, right below the WOPCM); we just need to
> keep that region reserved so that nothing else attempts to re-use it.
> 
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 18 ++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h            |  2 ++
>  2 files changed, 20 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> index 1a766d8e7cce..b2bc5aab88d3 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> @@ -409,6 +409,24 @@ static void icl_get_stolen_reserved(struct drm_i915_private *i915,
>  		*base -= *size;
>  	else
>  		*base = reg_val & GEN11_STOLEN_RESERVED_ADDR_MASK;
> +
> +	/* Wa_14019821291*/
> +	if (IS_MEDIA_GT_IP_STEP(i915->media_gt, IP_VER(13, 0), STEP_A0, STEP_C0)) {

When I check the workaround database I don't see this going away on C0
stepping.  It's just listed as a permanent workaround that applies to
all steppings as far as I can see.  So just

        if (MEDIA_VER_FULL(i915) == IP_VER(13, 0))

should be sufficient.

> +		/*
> +		 * This workaround is primarily implemented by the BIOS.  We
> +		 * just need to figure out whether the BIOS has applied the
> +		 * workaround (meaning the programmed address falls within
> +		 * the DSM) and, if so, reserve that part of the DSM to
> +		 * prevent accidental reuse.  The DSM location should be just
> +		 * below the WOPCM.
> +		 */
> +
> +		u64 gscpsmi_base = intel_uncore_read64_2x32(uncore,
> +							    MTL_GSCPSMI_BASEADDR_LSB,
> +							    MTL_GSCPSMI_BASEADDR_MSB);
> +		if (gscpsmi_base >= *base && gscpsmi_base < *base + *size)
> +			*size = gscpsmi_base - *base;
> +	}
>  }
>  
>  /*
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 135e8d8dbdf0..31d0692a5620 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6399,5 +6399,7 @@ enum skl_power_gate {
>  #define   MTL_TRDPRE_MASK		REG_GENMASK(7, 0)
>  
>  #define MTL_MEDIA_GSI_BASE		0x380000
> +#define MTL_GSCPSMI_BASEADDR_LSB		_MMIO(MTL_MEDIA_GSI_BASE + 0x880c)
> +#define MTL_GSCPSMI_BASEADDR_MSB		_MMIO(MTL_MEDIA_GSI_BASE + 0x8810)

There's no need to manually add MTL_MEDIA_GSI_BASE into the register
offset; the intel_uncore_* functions take care of doing that
automatically when you read/write the register.  Just _MMIO(0x88xx) is
sufficient.

Also, since these are GT registers, they should probably be in
gt/intel_gt_regs.h instead of this header.


Matt

>  
>  #endif /* _I915_REG_H_ */
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
