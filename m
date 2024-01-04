Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA7F824BC3
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 00:17:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3D3610E548;
	Thu,  4 Jan 2024 23:17:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8763010E548
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 23:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704410222; x=1735946222;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=TD+4rzwwxA9ueJ0oH8FraGJb/7StQDwYILLQGZ3ZWl4=;
 b=bnhsiCqUz8dOotVhYup4OOKiYStfFV/rk/HYzo5MvSnzVxgSr2oOwmrx
 5cCIeZ/JWpG1B3G+FcQSjNN+0kJynDWaU03Xk6Hf29zaS3+PIhMsbBNwg
 T08q0DipHhV0brHnS0y4iJnurq0yZByXxyzbfpVWgDZAnU0kOiv4f8bvH
 U7fLCzVo8QmVYuYpk/mNYxqPJboCa2J0W6iU1VZYIK3sjFGjcHu2OceI/
 1q3piEUnbN4PYXJXjfjGE/nmhADpHOUrO2pvyEhSdhZJmcVuFxjuTiaBO
 zQA3MKUAY3wYfti66CK6WN/g6PFHXlwff4WHtgMHJYXC59/s4DE7FDH2j A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="396269982"
X-IronPort-AV: E=Sophos;i="6.04,332,1695711600"; d="scan'208";a="396269982"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 15:17:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,332,1695711600"; d="scan'208";a="22663909"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jan 2024 15:17:02 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 15:17:01 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Jan 2024 15:17:01 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Jan 2024 15:17:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gMAmWln7MoLdbhzrXUQ8g7hIc3/IvDVUHmV5t3x6OuLvCCYazki/NmmRIW6OxnH5bQnAeBnSN2kQrP7kUTKyzb2j85YrHogUwSLA90C3G5LTgC/Qzsp2LwYzcUJXuB3g8s+wgNW/PvnXYGxmuO0vfAZHqCskWSrH9QUCrxvsVasMXMleciLoh9FWXNYcxhpA3L79+ofd0A8Ge3YgpXys/QyzUwl04VNZgPXk5gFsPPuLXwq/OlmEqdErZ88ago2eMTFYu6IuUDCXyttxtiYPNUVSjkg533LhYTovfP687YInKCUOdul5sI6pos4+Kvgsva+bf1+KvjAre6iec0+2Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SVE1kwvdwrPzJhMq0VEvp0EWgdM9xh1uQuEgaojsQ3s=;
 b=ZTiU8TpixGdO+iy3W95PHfWs+rKWLvRS4i7ZzyHEpP4UNtVprKW9CPZ4YjEEmElvy7TcjjbwS0D7hVehE4mfWmbb9HMpKyI4QUftE7h2FH7j7Io0PFz0MR/xWuTMKF74ym51B1eSJFKy/7x2fWQakqF3s9Qm3hyTh1wKy/VqlFNDjMqA5Li6aoBhaKDOT07YXXLe2W/g/EIRqzFO7TglI1MVMQSwklS7z7MAt4bSLHQCCqe0Xo2ehTEC8xFMc2QIX/7c3Y+JNnZDYT5WgT5fSnqrXLc9nvAPz18BM32FTn0eM2J//UA9bMZzuFkVqDyk133uzxILsLcILKz+Ajl5Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CH3PR11MB8546.namprd11.prod.outlook.com (2603:10b6:610:1ae::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.26; Thu, 4 Jan
 2024 23:16:59 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3%4]) with mapi id 15.20.7135.023; Thu, 4 Jan 2024
 23:16:59 +0000
Date: Thu, 4 Jan 2024 15:16:57 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: Re: [PATCH 1/4] drm/i915/xe2lpd: Update bxt_sanitize_cdclk()
Message-ID: <20240104231657.GG3529480@mdroper-desk1.amr.corp.intel.com>
References: <20240104032150.118954-1-gustavo.sousa@intel.com>
 <20240104032150.118954-2-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240104032150.118954-2-gustavo.sousa@intel.com>
X-ClientProxiedBy: BYAPR06CA0013.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::26) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CH3PR11MB8546:EE_
X-MS-Office365-Filtering-Correlation-Id: 17eb0425-dcd2-4193-d84b-08dc0d7b4072
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: N/tAhe2GS5mTdChehjOHPpfqdVWe/ziNxJvIcMIuGVHB5VbThi/38Y1c+KgVyVj35YXPpXQfqumyLf9Vyz+ZwfKgI3lXHFxmZtkHHN9VANKFHDlYJ84ilNHgLxXgK/PP/OasOXHKTSeoGpN9E6mkX2ON7FphcALhUN1uMd0ZmneBGQKc9u/LVgqyeOG8HZSj4Hb4Y0rREGrR2rGGNH/sZvxYLxoZte893guU8ycwnKoH9CeXLJFDAKllCpnSOR5USpvrBbhiMRAMEfwbfUG9B82iB9lIsjFk4r5DKipc/1KGb+QttZxz3POE2Q49pLhjGD9QGfqAURbi+mg+wr5d5YGO4pnJhDUyBEO69B3K0Fn5Twcq9dgVVrK1wvu6CU0Si5/WrWfMyOhnDD1HfztT8RMwR8L9zrMhudR3MSaATqvQ0Ps2y2mY8f9FzK+MtccTy3jKfdLYKX3Wca9egKWtGNhZAO8mhX1MjGEVPinuX5A2UhF7BQeYfFDIiaXIBkfgD3ae+BEjXpuoLrU4Xebkj/on7a/j+VxOiAmS30WUapdkHEW6INIG3hmaNciJAzvq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(39860400002)(346002)(366004)(376002)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(66946007)(83380400001)(26005)(1076003)(41300700001)(82960400001)(38100700002)(316002)(8936002)(5660300002)(6862004)(478600001)(2906002)(8676002)(6636002)(4326008)(6486002)(6512007)(66556008)(66476007)(6506007)(86362001)(33656002)(66899024);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EAvFFdqhZ1pISFKXWYEJeuHAGg42nV0L3tzQgolAE/4izXuO2ATUoIY6Bhcm?=
 =?us-ascii?Q?GNplB+F7rL6C0k8oMBNjX8qR9vUBHLzSRfHQ+6eidVfhrbWhV/SWDz7TZ6Y9?=
 =?us-ascii?Q?k0VTUUzacpEv2h7V9YXGdwQ3Jwz1lod/TIuz7K25YRwnckzONMLm5c8QtIRE?=
 =?us-ascii?Q?qCnSny/bfufX0ly9NOTA3R7HlQazkw41Nawt/9coVFHpYmZuCwUjHWm3Lc9m?=
 =?us-ascii?Q?gNmywqVtsrJ+T/f6MS7AkGouVEinYN+O4ovi1nfHepIMinDt7djWwrBYEG9x?=
 =?us-ascii?Q?kaMle5hV5+PSJ6JfVnPgsDEZa89cpUGTGtxrcFVcBkJXF7akn2HgiIETleZn?=
 =?us-ascii?Q?Csp5SOxIE1yDUByNEfbHbHgStVtQSNR622gghw0jq7HowfUSDhUe2K24PUEw?=
 =?us-ascii?Q?X6a5LS1nFPw1MBtCV1WTQ7O2x9ibHGYGKxW41ZP7WDjbYxNGLzn4JR0+JzZq?=
 =?us-ascii?Q?R59ubMZU2vt+eGlJBh7wRlUaF5mtUeLbQGzQhL0o8S+Fw1faFD38epnrBZTr?=
 =?us-ascii?Q?KRS/cQdA+Blf3ISP4FFr5Yd3AQul6HHSUAtiSDur7cj/0RIVJfxxlCgDx4W7?=
 =?us-ascii?Q?L0At9UQYm5i9BD42qrVsq7pWuhja9GopoXoyQzuZnuqFhX6OqXH5+NxaMqqq?=
 =?us-ascii?Q?DWiYi7NnHzCFYYp8zr+WbhZQTgHiY6w8a1gAybvBRplQ/B/vmTR8T0nf6lAs?=
 =?us-ascii?Q?q060d236PeDiSTlUzAPRnGL1vRd+EqhPqFAzQM56YP0mvX/OU+6d5t5FrjNr?=
 =?us-ascii?Q?LJKD9euR6Fdrk667FExovGq53XwKgrd4cKfJUBEWXwFuJCBX5oNjzEcL6Zkq?=
 =?us-ascii?Q?IlKOTRw464JIbpp3YIgFgg0tTMiYhu58g1NOSGfyPnPGAJrsOhDS/Nk7jHLa?=
 =?us-ascii?Q?uR8s/HHroSsnJQTSpTGbkE1zAaOA/xVCFbKtlbnD5PP8LPh1+DdKjbZd/oLE?=
 =?us-ascii?Q?flzM51cuJuxz1+QS1NitErpRSAahad68v6E1nf0rRYllLZILeMfskU7R/UFn?=
 =?us-ascii?Q?kvk5xQy8jc13cYjLqmAR5QRdxwRexdgD6eG0KANIoqBMHVQpPmmPTekmI/dj?=
 =?us-ascii?Q?R+Yewgd8mZXM+LZ/VZQO/XQb5Or4EjwlziEYbeOj8erCT4eSEdAMM8xClkXh?=
 =?us-ascii?Q?UnGRakZFvwefVih+8crMesfK7PjGCpKXRpF4YXfIRlo6JssR2/xb+h43TkJ6?=
 =?us-ascii?Q?c5y36rEiQVpgrxjcdSas24vo6lFBzRH56kLYZbKz2lpTjIflopDxyCgMr9UW?=
 =?us-ascii?Q?dT2vn5HdffBs//4qekEXWUTh1uf3bzDxR9scxp3l1E0uxWPpv9TrBuCtNV2e?=
 =?us-ascii?Q?eGmAF9WuQopBSA/Qy2qEcVojirrd9Ebbh4BBmBlvXHLsQ/x0f1vecfYnG4s5?=
 =?us-ascii?Q?ZldQjtep8FP/69NcwqtTib32sqonoElW/r3JG+xIvt5rPi5fKMNMzr3YVnWo?=
 =?us-ascii?Q?/jzU3Wbl1KfZiazrizWvJwyd9/MKZ7Su2FISBq+WLyD4C5CcXqxKlvxnLXqY?=
 =?us-ascii?Q?65Yxpj9X40PhOZ5TlbjHgT2sV/ekM5BNqZESp0mHYkCK2LHJBDQ151toC7Hh?=
 =?us-ascii?Q?csWCqYOAYOvdZJEGadvrhHeTMSQ3cGlgPv1DpcQ7dId2jmZIseZvThdDeHlh?=
 =?us-ascii?Q?+w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 17eb0425-dcd2-4193-d84b-08dc0d7b4072
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2024 23:16:59.4659 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pNntVJf2GO1A96wC9202II+OXFHcDAcIT9rnYnXQ0AnJbixwqiTAKpvr8ZFyjgNEtw1H96XYQqvitA57lhh4BpFuBBVpaWOR2krW836RVjM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8546
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 04, 2024 at 12:21:47AM -0300, Gustavo Sousa wrote:
> With Xe2_LPD, there were changes to the way CDCLK_CTL must be
> programmed. Those were reflected on _bxt_set_cdclk() with commit
> 3d3696c0fed1 ("drm/i915/lnl: Start using CDCLK through PLL"), but
> bxt_sanitize_cdclk() was left out.
> 
> This was causing some issues when loading the driver with a pre-existing
> active display configuration: the driver would mistakenly take the
> current value of CDCLK_CTL as wrong and the sanitization would be
> triggered.
> 
> In a scenario where the display was already configured with a high
> CDCLKC and had plane(s) enabled, FIFO underrun errors were reported,
> because the current sanitization code selects the minimum possible
> CDCLK.
> 
> Fix that by updating bxt_sanitize_cdclk() to match the changes made in
> _bxt_set_cdclk(). Ideally, we would have a common function to derive the
> value for CDCLK_CTL, but that can be done in a future change.
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index c5fecde7afa8..0012e3171f3f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -2071,7 +2071,10 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
>  	if (vco != dev_priv->display.cdclk.hw.vco)
>  		goto sanitize;
>  
> -	expected = skl_cdclk_decimal(cdclk);
> +	if (DISPLAY_VER(dev_priv) >= 20)
> +		expected = MDCLK_SOURCE_SEL_CDCLK_PLL;
> +	else
> +		expected = skl_cdclk_decimal(cdclk);
>  
>  	/* Figure out what CD2X divider we should be using for this cdclk */
>  	if (HAS_CDCLK_SQUASH(dev_priv))
> -- 
> 2.43.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
