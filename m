Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B1186B62C
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 18:38:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE6D710E19C;
	Wed, 28 Feb 2024 17:38:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dz4lXaXS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3834710E62D
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 17:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709141929; x=1740677929;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=n3UxWQALOR1UTYShAuoPqklY626H4FjlJjAsJPBZ/TY=;
 b=dz4lXaXSTBrrNKvEJXEk7KSilfOZ6X/ggl+G/pKw+QKvt1K1mgEKn42O
 WRIzBA/Tc3ruVLCC/vXiNAU32JqL88p3ABCWFxSjua3rkV+josoiUWC0n
 +Z3VnfsuUzx9DykLCguowHR5EwKNkmWJ8wY59PDE56AEwsJe59MxA8xiS
 slmHv8S+z7yPxabiMa41t4uRUsdheBsYcvhjZXAFcDuRCcwMwUAiazIkM
 MfJ/6uvuhXTCwM8DyumD3lnEb9zhkzxZXBfWSLZREl5H72TM0If4otT+n
 d/qTNxRsZvhlxwdNwqDB1Pl/qmJonlt2BFzz9ltp+M1QPMippKd4VwkVC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="3412540"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="3412540"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 09:38:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; d="scan'208";a="12169288"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Feb 2024 09:38:41 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 28 Feb 2024 09:38:40 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 28 Feb 2024 09:38:40 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 28 Feb 2024 09:38:40 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 28 Feb 2024 09:38:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OgElkeXHSHq/0rKRVCK2m6LhnUm6SJhP2BM4M/Diu6kfRGjuqyak7qHwW46IeVZOBRqsZE6WaaxBmVKzHRhKOHmM1GxcIBS1lppA2ZQ5IhMCwTopubj1/m0kNxO7fHPPH7XUJsGXx2s6kIfR37jnHXep9yLdPP9/avUt3wdPywvjYwaCUREC26GXq1Z51Tti9WCINvzmtP6h0/bsNQ50bJQ3pN3+ncshtXi1mCRlwB/8+QdcAt7qmZZjKkY46MeoKhnYvdyNmsSy3BgN2k1Ayav39B2qNxLAhd9x3/1Yy7z04k17O7AhUNSSPmfPzIxV/1QJBx0J42gVdiTwTotfMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yWf+9ntEkRIrQQ+OIIeDnnyxsqnjXUQh40DSvUQZl0E=;
 b=II2WLtK563EQ16r5sG/WP0KfzZZ48EZvwCryob0DEmp4wpDnzqofnwZ3X7kD/CAk1GFjbbeFTklKkcS8XgZw7DjV8fSJCV7ewMsfk6cQPSq5Gb4DjgBmPVDGZxkVtiwxJceUkyrNbeHnlLf7YJzWV2AoZUh8ASS92N+dKhpDxDp394Hg1Ru5Rw9QRyi8LJnIJyW5p/Is0SnsLVR9Pq6jscC/9dojAGKLW50PzGKeFttx2LafJ9Q5RqlK3N5BjhnhNu+K0zLPrpQJaCEpZx0MH/HezUuflIFMEnPwYmdZAzP2j0Uo3hfvpiNlutBI8Yf0RitWz3slKLV1BWN+VDRo9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH0PR11MB5596.namprd11.prod.outlook.com (2603:10b6:510:eb::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.12; Wed, 28 Feb
 2024 17:38:38 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%5]) with mapi id 15.20.7339.024; Wed, 28 Feb 2024
 17:38:38 +0000
Date: Wed, 28 Feb 2024 09:38:36 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti <andi.shyti@linux.intel.com>
Subject: Re: [PATCH V2] drm/i915/mtl: Update workaround 14018575942
Message-ID: <20240228173836.GS718896@mdroper-desk1.amr.corp.intel.com>
References: <20240228103738.2018458-1-tejas.upadhyay@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240228103738.2018458-1-tejas.upadhyay@intel.com>
X-ClientProxiedBy: SJ0PR05CA0180.namprd05.prod.outlook.com
 (2603:10b6:a03:339::35) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH0PR11MB5596:EE_
X-MS-Office365-Filtering-Correlation-Id: 01524272-4d88-48d7-48ef-08dc388418b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QA/UH7kixbR3LiSu924DSa8IuogE2l9QppEY0z6f8egLMzQDw29WMyzvs1IySxqvjHcREniLoYGOgd/o1RFOQS5m+05V9VGiYN1obXsM1V1CNvICOzFlDFTUjVJ0F4T8nfOcsOBCAL+Y99wU4JEufv4RBuzTzNDsUYcjLp0OVCFYNaaIHwJXaCEn94Ga7uG1ssDNA+r2ZWJtKp8II9sh/SPc8Vaelno5knIuV31O8go3H0HMjYQ4nDV4FGOawHuYZ6NWrjx0ArGzjPhCxxN4CAz0d2LOFI5VC3KoBt4ZCJm1AKiegQvSzHgJaNgORyYLoHVfYwbok7mdNe2yEq9HVP18+mRACMo6YRg338Wu9pvfwLSvuBzFWPyXGiZFTRYkIpZ2mngzhVE77Txatmd/ZDd4XpEIhI8iqWjxaC6JALpbQCohvXa9sIhNObLqX21O39m9d1p1lsP2Z8fQR9kAaflU7w9EXpvLUF/hizG1sooYa+GGWPzVX7q8dVG9PuCAHa0jaYvOUwls6QGUT+ZiOLp16PqCeDP4WcMzQlY5gki1FNkbku9hXcHbaXDVxImkft/DOnX6pJORDaFLz+TAE8h9vahLMzAQAf2pMX7LGRmY6/Y2PNM8NAFIv7d29wzsn7kEKVnH1bGY2PQpRI8ahA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?54HbOOb1322DHm9WYsd6ufnpKjTFWZ4fkL80j9Uw+VnMxlVZ8tuwF6tBvmqR?=
 =?us-ascii?Q?3EqesJSb9Dr9++qfgindbrqH6rQlC5r7Uvt2PhFC/vzLjDlIGuqb5b1MyBdE?=
 =?us-ascii?Q?tGHXeCUOOAipiSv/Z05prIsBhnyArKOf/2pqrKQFlurlv2fP4DC6PF14/aLY?=
 =?us-ascii?Q?GW5a+8xTQo9aR0iSOLGP6k9TNDbKkm2BXHIZtoWIlqMDxCG5B+zNrH+hs9ig?=
 =?us-ascii?Q?rBeO8yh0gVL31mpy4ozoWry7PyPfLt4ApS+8ssxwZANm0FJINLz9e2/09jdQ?=
 =?us-ascii?Q?aD2+LzztfDQW8FHkftf9eKg4dHXusgEF43H7UZzqBCTQktoz3UaXVegnFsZe?=
 =?us-ascii?Q?3Rf4n5H0rCkVb+lblE5f/iHWvtoAbSSF01tlwkBrEcg4LIk1YYL2sRo7c5+S?=
 =?us-ascii?Q?y43rayFJ1nqnNqBLspB7hqXbz6BsP76+rYSJ/7yvmouPP5jbnb9y9Ae9PhBv?=
 =?us-ascii?Q?zhAbMmPyXDWOU1g30rfapGXiotQ3GBm5UjB5do82N+y61SiP/nahu5NV9YZi?=
 =?us-ascii?Q?Im54DGt6Hx3fWPc5VYWXXn3nDyaG+S69cscQi2Tro/0ylCnqtpQ4qZItMXsn?=
 =?us-ascii?Q?tMgpk003bHTeOA4xjIEaFV0wpbjZffv/qRPqf8B4+SowqX+fBxv/5okHvGI1?=
 =?us-ascii?Q?sDIOJnTWr/4Fy8qAmWuGXV5nlATtl39PL8ib6v+Ob9oRapjM+DQTpYK9HQB0?=
 =?us-ascii?Q?yF/5wpqBsb5VzLSGGhujc3aGKng89vWx0eWk4o2A3O67dN0DxqegmX3p1yqP?=
 =?us-ascii?Q?QHeHzWpVEKyBkbiiLVSgdYGrJZu6ksLiUh0/uxIfsh4grEXAzisIKN4FGeWi?=
 =?us-ascii?Q?KYBNnutb59rkpxfDdw0uW9WzuMvVlNfN3p8QhS+GcE9T/UMSIYdjNcm6bq8S?=
 =?us-ascii?Q?3KBaWiuEhGifmFStk61AavDIBMJhxgKWsQ7WipjtQtyW/fkvG0+ZSmJOGBF+?=
 =?us-ascii?Q?o6MZ0swdtIQsBleS1ueASPQVC66uJ3xOGmamQ+s0h8rN7r5cayF3i8kEgNEE?=
 =?us-ascii?Q?BSUkk/gcTGCw0Vox1HvH82kgTtjIABtaOL6vlyYAXwVwnMRd3LrhBAOoglyy?=
 =?us-ascii?Q?BeIl3KrlxJcHTR1nJ7M6Yn8Pt2NzKD+I+9mxZwV+cm3HzuKhjzmcDUr40oHh?=
 =?us-ascii?Q?HnPXbjCyBtP84+kHk7ruo1jmaMeHi9Lapw7vhUN47WTu3kJ1rowWFxNCCCsk?=
 =?us-ascii?Q?tCN59JLFuH0A4IKAP5tAAce5XkXOrHmgOxPZBAW0R7L/+s8vdkGgd/ebC/2+?=
 =?us-ascii?Q?DbWqcpSl17RMP9V9Rn8FGDOaIf/kBrMvxsVE9dwkZQu7BVLOvCrbrXVrSif+?=
 =?us-ascii?Q?ESHYx/0WMJ6sd7tDnUqrskbBICCuHeOiklge9Loj/zlUG7hHnzBO02OpAYrQ?=
 =?us-ascii?Q?TOVJeMD7pEEgcYpTuPGJo7kxlWnCMUWrWwdOVPFzhb+saiIHWDYAMqfKTG2a?=
 =?us-ascii?Q?/dm7ZvpTevNMD2ZQT6cYVOjlGo7r5Q8CCLHS/I16ZvGA+9WCPo+8lUVUD/dD?=
 =?us-ascii?Q?XhWXnf/yacXpYjQeQogsBuoi/MOS3e+3VE7qyyKlLwzOUmY+8vAbEdCPn4eD?=
 =?us-ascii?Q?t7BiU/GfC2Gr+ceIdhrb3faSXm/oTHHcz6KcqnxoMcw4j0NRpdXP9h0Je2SX?=
 =?us-ascii?Q?FA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 01524272-4d88-48d7-48ef-08dc388418b6
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2024 17:38:38.2531 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x0ydXfaqa0URweb0aUJnRQ5rWVe1SV0wPhvBIIwjxxSDjAeaKWN7TimrvPI60O/NVaBhCqrwHtMafsdoVU/geoPY9PTR95yUqSlT4TgyovA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5596
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

On Wed, Feb 28, 2024 at 04:07:38PM +0530, Tejas Upadhyay wrote:
> Applying WA 14018575942 only on Compute engine has impact on
> some apps like chrome. Updating this WA to apply on Render
> engine as well as it is helping with performance on Chrome.
> 
> Note: There is no concern from media team thus not applying
> WA on media engines. We will revisit if any issues reported
> from media team.
> 
> V2(Matt):
>  - Use correct WA number
> 
> Fixes: 668f37e1ee11 ("drm/i915/mtl: Update workaround 14018778641")
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index d67d44611c28..25413809b9dc 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1653,6 +1653,7 @@ static void
>  xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  {
>  	/* Wa_14018575942 / Wa_18018781329 */
> +	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
>  	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
>  
>  	/* Wa_22016670082 */
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
