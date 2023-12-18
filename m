Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 735A2817AD6
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Dec 2023 20:17:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C663B10E2A6;
	Mon, 18 Dec 2023 19:17:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C923810E2B7
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Dec 2023 19:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702927045; x=1734463045;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=J1tQatlveBwvAfrFb8fPjf63kUL38juzhP5mD6LkPOk=;
 b=eJDG8BZpSkwt/mfkl7D/tMUmn5G5cNSYV+9QIWLq1CN5fLyYqCAL6BJg
 F/WhTOPjQZrv2+SX7tgIFqR23k7bB1wmkD4D41kwTGYTSUnqn8bSb4ByY
 Ns5sX/ZRju6eu7TbWEz4lNgx52i/jrEJYY2IBVHX74rJY5fFUC9vMD1Eu
 BtY0eUL2p9BuAkiZ/4pqbm0m9oJbQyE59/oE7PGQ0/K94SiuaXWKY1w2M
 oNojUvY4zgTAClugERy20mUz17lyy+QZDpr5xD4K2VCF40TP2DOwFOPNU
 ip3aayJ0BtfWT4UIYgACymeWxM5Fo9urT8hnSjGyeeWfqfxvDNXUScbsJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="481713668"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="481713668"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 07:52:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="17224759"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2023 07:52:33 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Dec 2023 07:52:32 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 18 Dec 2023 07:52:32 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 18 Dec 2023 07:52:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MB1lcqJYrDZYnISr8d+0XgAT+xv/GJn3P6GbD7/l6b3Tq++Fnno1MbNqPlU0gWMxCbX25yWewUuMHLtc+6q33QhkNTgTZHdnzEW4SBP8pa4AOklmlCsnn5RMhmnueN7fKZSqbpnFj/EqYxmKhAB7W8KRxOmka7txfOgwE0adj1Z3K8A+HqRJmfuCJQAxMrs1GfESyd6ol+1Psb6WPXN6FAXMn1fsxVzcuqP4UCwFrhaQqGekT0oVVe5ahF0B1JUYybr/PEuyfZ7usJhhNVibWQmxh6xPfuxZ7kVGkvXKIn+OGsxp6ydPUmTD1Ee5scrQl6WUHggjcg4U+A1Hbd87kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2yokGxz6X9VJu2hDNmNwCPatVo/B2/b1AkbdC/UUP7E=;
 b=V7NICj9KivwoUKcd+MLvrxuTEt9t+ui4No8WVyFWmj7Cmld5sHMe6mwodTbc+zR7dCkr+GvolTdz9DvPG2Ad8kePxLGQggxRQwBJFhHSHh2JiYNu5KSiFfW00ZGi6+kyBYMw34dbI3d9wU4e7HbTdy3LW9yVIbbBXpcjAT92fGUwznLJwlvr/6LO7WUj7CT2wBuG5P1X/D0dFwaSFrOyCzxqEx1htBe/9iOjyiUHk/Tt3Sf1leTsL25Ut9EGvko+X86dO+izvUoRf+548pbk0kquBLaR9JcAyJP6XXyZJrIfewt8XFNpfBknZz64KFr/BI3iZ5e3WqvYNAxEGopNwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB5344.namprd11.prod.outlook.com (2603:10b6:5:393::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.37; Mon, 18 Dec
 2023 15:52:12 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 15:52:12 +0000
Date: Mon, 18 Dec 2023 07:52:04 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Haridhar Kalvala <haridhar.kalvala@intel.com>
Subject: Re: [PATCH] drm/i915/xelpg: Add fake PCH for xelpg
Message-ID: <20231218155204.GC1885854@mdroper-desk1.amr.corp.intel.com>
References: <20231218110313.1233745-1-haridhar.kalvala@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231218110313.1233745-1-haridhar.kalvala@intel.com>
X-ClientProxiedBy: SJ0PR13CA0171.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::26) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB5344:EE_
X-MS-Office365-Filtering-Correlation-Id: d4f91ceb-70c1-4dd0-9f90-08dbffe14c7f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MMRT6jLlZGaIwEJmkj/NfKgkjXapOmwq2mGdQELlKxoDWAlM2C/glopR4vrEDI9IflPm7O4r+Sqm3ziM0B7pmSbSoTNZoDIe7VTwxzsjIIR7RO/PJTDBpEWKpxQYisbCAXEhGNuBLZ7xT2wLtSvPdMVu1zFD1chDSIHBEpLt5uX2l9+nUhy75pcTU035Dm+pAOv0xb5JJbUhftc/NNUBBe8vzeLNca2qjAWiEteBf+UfTqFRnDWMK040NQVEO01CLyb6MBeH8+ET7Q31Yy7QU9tdlcHJI3XMOWyt23H/VrhEopEFHIcv4Zx2K9UboJhv8XYpylA/853fIgy/LBBMhAWZYJa4+bawoUOBS1JRuAuiakqoUh/JdW5ZUQXX+p1LyoSlk0xzWP0I1uQDkqxVn1HLm0bCrs+ojrgPXS26rCjGIEHKBgKHV3qFbxUI0Gj1cWoB5roysXKm9IrzJms8FSxoSzhEWf+M7p7Ts2KJIkbtJTVOUxccOVN8YiIhF27gu//f7Dy0SPhF8d+DMcA4ZYmgKGd/YCYcMeIoyG8+wSgbdzY6CkfddrfNBDn/4vz5O2EL3INfrhlgJucKWDYiZ6alYYgbLqJpuEWFH/zIrkluypviw+pXS7tGYav6bYPL
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(346002)(396003)(366004)(136003)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(1076003)(26005)(82960400001)(33656002)(86362001)(38100700002)(83380400001)(5660300002)(6512007)(6506007)(6666004)(6862004)(8936002)(8676002)(66946007)(66556008)(6636002)(4326008)(66476007)(6486002)(316002)(2906002)(41300700001)(478600001)(226253002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qYBgdHE47ZT7hj4oYTxR6UqgUns3HpqdqoPEY1SvClmbZMIYf5oGex8EMO8v?=
 =?us-ascii?Q?6UsgYHzXg1cyBOQYlFoVdSfHwC5qNok1L+1+uUfjGmjAntxrTrMoyp80+Tze?=
 =?us-ascii?Q?KqaxLv7F7UObwLXuNg94ptpK1n9M85xhsI4Ek2o4GntbYMoJFspd+nq05JHh?=
 =?us-ascii?Q?Ki/yvdBApdZDpwZ7QkX4dk9ltb335X8Fpkw4T6vNev4SicZWv5mSSL11BwOW?=
 =?us-ascii?Q?Y7VoDFc6J92ejUkXqnL651cLPO6Eg8uBbWIaxmW/lKIblArc1YmEDvdZQWzM?=
 =?us-ascii?Q?rZztzR0OjvSiDtGzbvyb15mGJkeDMAMHEG18TxtvLcZlgMgmsAXjiNzGjnBe?=
 =?us-ascii?Q?oSJWiuY7crZNgkPbiHeqD8qXFfkW/w4jWt20+IyR8v7di7pQVIAPyINwApAG?=
 =?us-ascii?Q?muj8Q8YvYT8xBSPsnZjNUwi5GBvqWkySIr7bvcCkAfSNW9ZJzqbLERZ9URHQ?=
 =?us-ascii?Q?YAkTYpuWJOBGzy1oHKlMrPQaUGmr0NdDUZLVEAy406cgPbjUtfxIcfUJmN0U?=
 =?us-ascii?Q?cqNkcPfMM4OEjn3spF+UhvAMbwSzlS2TZL74vo+5EeE/4FtnVrIPEXxSimCu?=
 =?us-ascii?Q?imuGBTMmCOGsP1+9Yuhumrj0cIkBbMIHMvQ1Uf/I2bhEB9OcXiDw/vyBJ4lC?=
 =?us-ascii?Q?8ocqzKD8j0xh8OCGuF+eDjr3ZoQ8zhP2fysz+O138S9JKn4zbbZqZbuqN4nR?=
 =?us-ascii?Q?xay2r4YNpwt6If6HY7v2sByBd9daQukbjjp++i8lW/SkJ0Y80d4aIUOSMogQ?=
 =?us-ascii?Q?ZP/qvlZ0AONarMgNsARkzvi174vwTmxQxn5BJeVsH0DEIbOSissJVYKd/gBt?=
 =?us-ascii?Q?vJYRCfE/TRsjiLyofNxi58CqigHvBYs6OoC8/nWaVsrzIDec37qtT1pjXIze?=
 =?us-ascii?Q?HlKSI/ANcinqV3GVtarbxKsJN+3Bgalosr9PMIaRcV1IXgqvVvNiP4a+GGDW?=
 =?us-ascii?Q?TKk1n4DrDX6rI2dgrhkpEudBi6jlexEuXiNPsWOwSRJdRcKYslyTMAZGy390?=
 =?us-ascii?Q?JdJwSjIdswo5ft3I3BL0RJ8xoFNoxboiP8InmC9ClC2SxsJ1VP+pYvs3GWkS?=
 =?us-ascii?Q?meLYzjZB11b2ZSORATZrZM+gpRRRrh8hXX4tVr5owMb6JNEB+zeGrF4nvXTr?=
 =?us-ascii?Q?bLv0ATpUTS3EWR3uay1VKV+JhrqHvJ1Zv36rwmshZcig3IkE3Uq+Bx4/ry/o?=
 =?us-ascii?Q?kiWJZMCVIO/EilDHHgXozfdBmMevPMoeI/9BBMbUFVxlYgIux8n1MYPyURwc?=
 =?us-ascii?Q?DlMeWpBMrZjRywSZyqCM63/fjsscUwDowCr1O4E02QsIycIlXB2p8SqggQDf?=
 =?us-ascii?Q?JQ5dVIw5aKvbHaPWipC19cQw7xkVxZ38eEGXNjIL75p6T9Iqsrlh+GeApjYa?=
 =?us-ascii?Q?fQTJki2Xa0PtKbdQCvfqCdj4uh+l5LlzBl4844KEApzfvwrHMVQZPekKKDbC?=
 =?us-ascii?Q?wLNcWqOv+1p9r60T27/4gZCWf3FgbR8SIve7yIrIwtuDVgmhAWWzLjN+4fDw?=
 =?us-ascii?Q?Hem8vh6LJ76/82+YkepAVBh4QIhMyGDBebhEzSmc020d8CDLnhNkKFr3PPbr?=
 =?us-ascii?Q?H5n0+f//9wBfztjGmlRVpzjXCTl5K8imE/DipfTRtckE6zjSr9xiNJPVdt+x?=
 =?us-ascii?Q?3g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d4f91ceb-70c1-4dd0-9f90-08dbffe14c7f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2023 15:52:12.0770 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IxOyJgfwiRyTW7ckGKV/ORduA1TzZaemIY5JkVBs9uuk1fGRE8ImoWMOMYpCCsQTaYZQZOCFlVG5rpro5T2ti5To2jADBZF0Wr1c5zQhzWA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5344
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

On Mon, Dec 18, 2023 at 04:33:13PM +0530, Haridhar Kalvala wrote:
> Correct the implementation trying to detect MTL PCH with
> the MTL fake PCH id.
> 
> On MTL, both the North Display (NDE) and South Display (SDE) functionality
> reside on the same die (the SoC die in this case), unlike many past
> platforms where the SDE was on a separate PCH die. The code is (badly)
> structured today in a way that assumes the SDE is always on the PCH for
> modern platforms, so on platforms where we don't actually need to identify
> the PCH to figure out how the SDE behaves (i.e., all DG1/2 GPUs as well as
> MTL and LNL),we've been assigning a "fake PCH" as a quickhack that allows
> us to avoid restructuring a bunch of the code.we've been assigning a
> "fake PCH" as a quick hack that allows us to avoid restructuring a bunch
> of the code.
> 
> Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_backlight.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_display_irq.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_gmbus.c       |  6 ++----
>  drivers/gpu/drm/i915/display/intel_hotplug_irq.c |  7 +++----
>  drivers/gpu/drm/i915/display/intel_pps.c         |  2 +-
>  drivers/gpu/drm/i915/soc/intel_pch.c             | 12 +++++++-----
>  drivers/gpu/drm/i915/soc/intel_pch.h             |  4 ++--
>  8 files changed, 18 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
> index 612d4cd9dacb..696ae59874a9 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -1465,7 +1465,7 @@ static bool cnp_backlight_controller_is_valid(struct drm_i915_private *i915, int
>  
>  	if (controller == 1 &&
>  	    INTEL_PCH_TYPE(i915) >= PCH_ICP &&
> -	    INTEL_PCH_TYPE(i915) < PCH_MTP)
> +	    INTEL_PCH_TYPE(i915) <= PCH_ADP)
>  		return intel_de_read(i915, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELECT;
>  
>  	return true;
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index c985ebb6831a..2e6e55d3e885 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -3469,7 +3469,7 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
>  
>  	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
>  		freq = dg1_rawclk(dev_priv);
> -	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
> +	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTL)
>  		/*
>  		 * MTL always uses a 38.4 MHz rawclk.  The bspec tells us
>  		 * "RAWCLK_FREQ defaults to the values for 38.4 and does
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index a7d8f3fc98de..e318e24d1efd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -986,7 +986,7 @@ static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_i
>  	 * their flags both in the PICA and SDE IIR.
>  	 */
>  	if (*pch_iir & SDE_PICAINTERRUPT) {
> -		drm_WARN_ON(&i915->drm, INTEL_PCH_TYPE(i915) < PCH_MTP);
> +		drm_WARN_ON(&i915->drm, INTEL_PCH_TYPE(i915) <= PCH_ADP);
>  
>  		pica_ier = intel_de_rmw(i915, PICAINTERRUPT_IER, ~0, 0);
>  		*pica_iir = intel_de_read(i915, PICAINTERRUPT_IIR);
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
> index 40d7b6f3f489..2d9c740ba17e 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -155,7 +155,8 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
>  	const struct gmbus_pin *pins;
>  	size_t size;
>  
> -	if (INTEL_PCH_TYPE(i915) >= PCH_LNL) {
> +	if ((INTEL_PCH_TYPE(i915) >= PCH_LNL) ||
> +	    (INTEL_PCH_TYPE(i915) >= PCH_MTL)) {

You only need the MTL condition here.  The LNL check becomes redundant.

>  		pins = gmbus_pins_mtp;
>  		size = ARRAY_SIZE(gmbus_pins_mtp);
>  	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG2) {
> @@ -164,9 +165,6 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
>  	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
>  		pins = gmbus_pins_dg1;
>  		size = ARRAY_SIZE(gmbus_pins_dg1);
> -	} else if (INTEL_PCH_TYPE(i915) >= PCH_MTP) {
> -		pins = gmbus_pins_mtp;
> -		size = ARRAY_SIZE(gmbus_pins_mtp);
>  	} else if (INTEL_PCH_TYPE(i915) >= PCH_ICP) {
>  		pins = gmbus_pins_icp;
>  		size = ARRAY_SIZE(gmbus_pins_icp);
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> index 04f62f27ad74..63f697383bf3 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -163,12 +163,11 @@ static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
>  	    (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv)))
>  		return;
>  
> -	if (INTEL_PCH_TYPE(dev_priv) >= PCH_LNL)
> +	if ((INTEL_PCH_TYPE(dev_priv) >= PCH_LNL) ||
> +	    (INTEL_PCH_TYPE(dev_priv) >= PCH_MTL))

Ditto

>  		hpd->pch_hpd = hpd_mtp;
>  	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
>  		hpd->pch_hpd = hpd_sde_dg1;
> -	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
> -		hpd->pch_hpd = hpd_mtp;
>  	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
>  		hpd->pch_hpd = hpd_icp;
>  	else if (HAS_PCH_CNP(dev_priv) || HAS_PCH_SPT(dev_priv))
> @@ -1139,7 +1138,7 @@ static void xelpdp_hpd_irq_setup(struct drm_i915_private *i915)
>  
>  	if (INTEL_PCH_TYPE(i915) >= PCH_LNL)
>  		xe2lpd_sde_hpd_irq_setup(i915);
> -	else if (INTEL_PCH_TYPE(i915) >= PCH_MTP)
> +	else if (INTEL_PCH_TYPE(i915) >= PCH_MTL)
>  		mtp_hpd_irq_setup(i915);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index a8fa3a20990e..2d65a538f83e 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -366,7 +366,7 @@ static bool intel_pps_is_valid(struct intel_dp *intel_dp)
>  
>  	if (intel_dp->pps.pps_idx == 1 &&
>  	    INTEL_PCH_TYPE(i915) >= PCH_ICP &&
> -	    INTEL_PCH_TYPE(i915) < PCH_MTP)
> +	    INTEL_PCH_TYPE(i915) <= PCH_ADP)
>  		return intel_de_read(i915, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELECT;
>  
>  	return true;
> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
> index 240beafb38ed..f693c1ffbeee 100644
> --- a/drivers/gpu/drm/i915/soc/intel_pch.c
> +++ b/drivers/gpu/drm/i915/soc/intel_pch.c
> @@ -140,11 +140,6 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
>  		drm_WARN_ON(&dev_priv->drm, !IS_ALDERLAKE_S(dev_priv) &&
>  			    !IS_ALDERLAKE_P(dev_priv));
>  		return PCH_ADP;
> -	case INTEL_PCH_MTP_DEVICE_ID_TYPE:
> -	case INTEL_PCH_MTP2_DEVICE_ID_TYPE:

The #define's for these should also be removed from intel_pch.h

> -		drm_dbg_kms(&dev_priv->drm, "Found Meteor Lake PCH\n");
> -		drm_WARN_ON(&dev_priv->drm, !IS_METEORLAKE(dev_priv));
> -		return PCH_MTP;
>  	default:
>  		return PCH_NONE;
>  	}
> @@ -225,6 +220,13 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
>  	if (DISPLAY_VER(dev_priv) >= 20) {
>  		dev_priv->pch_type = PCH_LNL;
>  		return;
> +	} else if (IS_METEORLAKE(dev_priv)) {
> +		/*
> +		 * Both north display and south display are on the SoC die.
> +		 * The real PCH is uninvolved in display.
> +		 */
> +		dev_priv->pch_type = PCH_MTL;
> +		return;
>  	} else if (IS_DG2(dev_priv)) {
>  		dev_priv->pch_type = PCH_DG2;
>  		return;
> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.h b/drivers/gpu/drm/i915/soc/intel_pch.h
> index 1b03ea60a7a8..b044bb0a77ae 100644
> --- a/drivers/gpu/drm/i915/soc/intel_pch.h
> +++ b/drivers/gpu/drm/i915/soc/intel_pch.h
> @@ -25,11 +25,11 @@ enum intel_pch {
>  	PCH_ICP,	/* Ice Lake/Jasper Lake PCH */
>  	PCH_TGP,	/* Tiger Lake/Mule Creek Canyon PCH */
>  	PCH_ADP,	/* Alder Lake PCH */
> -	PCH_MTP,	/* Meteor Lake PCH */
>  
>  	/* Fake PCHs, functionality handled on the same PCI dev */
>  	PCH_DG1 = 1024,
>  	PCH_DG2,
> +	PCH_MTL,
>  	PCH_LNL,
>  };
>  
> @@ -68,7 +68,7 @@ enum intel_pch {
>  #define INTEL_PCH_TYPE(dev_priv)		((dev_priv)->pch_type)
>  #define INTEL_PCH_ID(dev_priv)			((dev_priv)->pch_id)
>  #define HAS_PCH_LNL(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_LNL)
> -#define HAS_PCH_MTP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_MTP)
> +#define HAS_PCH_MTP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_MTL)

Since this is a fake PCH, this macro should be HAS_PCH_MTL() to match
the naming of the LNL fake PCH.

It looks like this macro only gets used in a single place in
map_ddc_pin(), and that's another case where the MTL + LNL conditions
can be consolidated now that the PCH enum has been reordered.  So maybe
you can just remove this macro entirely once you make that change.  In
fact, it doesn't look like HAS_PCH_LNL is used anywhere today either, so
a follow-up patch to remove that unused definition might be a good idea
as well.


Matt

>  #define HAS_PCH_DG2(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG2)
>  #define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ADP)
>  #define HAS_PCH_DG1(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG1)
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
