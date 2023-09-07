Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 370A67976D9
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 18:17:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E596B10E4F1;
	Thu,  7 Sep 2023 16:17:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59CFF10E23A;
 Thu,  7 Sep 2023 16:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694103438; x=1725639438;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=A3sYfC1b228s1ZXTbBjN/sdfB9BtGIhtnE9ec0jSF8Y=;
 b=MXLSfDX0SsMs086B+9Tdb+xurg5R6pa5f7QBf6wpMFIPLGfoRAYcZqia
 wV0Kg7qAF2+H/pbj7SjtID25G4VmGwtA+ee90kxTDxHN0eRx9OMthr1el
 BbFrXZIZF29TfUyWcvFC6Y+Q3w4EwDVPC31F18QhfuJpV3DJ8EmF6W04K
 kWvvzpCzX+pxASoiw2wcW8v+I5i1CgIxjqTBFC3G50PPZRW3Y1It0zdvb
 B1ezoV+Fap9ntF1OZ8Po5Y10hZP+3M33u/4T8euWxsIZj5jcIVMRWdZPx
 YjK/17HCokjVMrp8x+/OenmEyffVDKZ28YjCOyiXwIWWrIb0Lat5yOLec A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="367651534"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="367651534"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 09:10:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="777117986"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="777117986"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 09:10:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 09:10:49 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 09:10:48 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 09:10:48 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 09:10:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kXodCrhUqEqd5L386Lh/RiuQuacGArww5E8iUn89hMvlgAFWfUvrNEiP9qOR5pwkw/izv4q6IClhT77fjq4Upi0YisG7nYDnIRUtJ+n41EulYPrQTrXm9iH8XlLWOQS+pf7uGKXFyv9HaQ9BoAbuhfPaGJju9d4adt0Ga8zSdTiLNQqCaypseYMrPHT3gK36NaPvVecVYGLm9P83MrGJxeT+Nf/6jvokippnslABOLIaImDqPGSz/Mv/0s3zRCojK049MAFxzpFu8ordFm5EHdGjH0tIg3GdgfGWlqNthXy/VcA+uyEpeT8/K3ARBNrl5qj3D8rT97la7s3Pfhjq0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v1F5hCcd56M1JJ+hF6DKx1QzGXKh7ZLn4xgNWXBVO0k=;
 b=euFpUoGsGYZHCZnj1ZzYahA9BOCIHgt9cTNWatnHbr6//a/KUYwezUWDTzUbk+rWu+x2TN0873cyS793p+h1aHOaApI8FzKzpID3Lx/q0KfWdAY/441aaZvGjT5ClJjF4HQ5J3blLVx3J8tFuMgYijBfKD/ZJGl+t1kXGK9gDRWur1zMUDym6wOV1G4zrnmuAKvkPdPWPxhexFgzPGWzUGfVEMEL8BKp/v9FJdUQr3tvnE2seVCFzBZNkPYYdekkJ8yMZw9SfrF+KudMpgbwb+dOuD0LvNyIl3orBO88V4JRuyDbzZu4kUg2p1iJVAwZIeNN4tkRdktPls9FKjrvWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SA1PR11MB6847.namprd11.prod.outlook.com (2603:10b6:806:29e::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6745.36; Thu, 7 Sep 2023 16:10:47 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.035; Thu, 7 Sep 2023
 16:10:47 +0000
Date: Thu, 7 Sep 2023 09:10:44 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230907161044.GJ2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-3-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230907153757.2249452-3-lucas.demarchi@intel.com>
X-ClientProxiedBy: BYAPR07CA0021.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::34) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SA1PR11MB6847:EE_
X-MS-Office365-Filtering-Correlation-Id: c0865418-403e-48a7-5300-08dbafbcff13
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Gb+L9Q6TfZa049o8zw5TW26xvQRbt5+kF5kg//CzA+i1WkxNAynJMXrL5woBmelyHGR2g5H7Pi/eDPJqJYCoUT0EQixzcDsP544cV8ZfnEVrs4vxJ9W7FfLs9ohRZrUcgOXh5Id3bl6I8G2GCBO9iczmTBxWwpv4b58/NK1r3suQ2CaMK1/AbmbsMgzjNHaMBQfjqHtDLr6tmSa7Hriff9Xk/I+3HRpFnqBpn+5hqT+xeSXONewg5RXCdi98vtOZ9EotdKUdSwgZWkqOYuBi1BNweHW+zTIFS3Ezqcb3Po5ZLcgr3PC4lyM4DtWFmyC2X4NpSGBFLHmWh++otjCnug4q/M3YSqI6PRJo1xbY42aJowppQU5hbEGiv+LqQThoM+EcTa1jjeO3c1pQXNfdJiDPtdFfATAQtelVpUgTvGK+bbMoWs6RlQVSujrCGq9szpZ0vZQv5Z7dHKjLY0FBkFE1nS1mZ6BUhWlNo1HXWsb0YneqRzleOBLp6i2hK4P+fDt6Nn4a5nIMWn0/Z15hJkB9uNtmLqkH8yhwgVUqRw+HugeipU0L5fRvgVLW1Kx2
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(376002)(346002)(136003)(396003)(451199024)(186009)(1800799009)(6486002)(6506007)(6666004)(6512007)(478600001)(83380400001)(107886003)(1076003)(26005)(2906002)(41300700001)(66946007)(6636002)(316002)(66476007)(66556008)(6862004)(5660300002)(8936002)(8676002)(450100002)(4326008)(33656002)(86362001)(38100700002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1CFg+VjkagARL+sa35YUbLsm6HfHulZEFGcD/QAXwf/6Jk7K2EEDDb00hZ5V?=
 =?us-ascii?Q?/HVTpcmz3wpslz2TAPKr8QxhP9WTNhzZ6M7EmtPKqHf1AAov7vHjsjZP7Hbu?=
 =?us-ascii?Q?QgVSvfnGNZGWuF0mXvpd7LLgUNi+Ecd+XQ6BprgzSZO59JQbcq5EnmV5fvtM?=
 =?us-ascii?Q?7bolZlCXJtcGWvIQWl9nEJDl8QpcghBscwinADD6SBewYOe4sBOs/O0AIwyf?=
 =?us-ascii?Q?ccmLdywdxY3td5TFeY7rLQBrLiXDNBaKH1w1wJhMI9ZfWasvMLsmcnTn6yLg?=
 =?us-ascii?Q?ENAab9q5iRJoIhqv734NnOd77x82kFbu3H1hRpuO2zVvPMDjHrZsvg8u4tYp?=
 =?us-ascii?Q?EyE250GelAvDMq921x6r+vAvB4/7i0JIoTQ0v2Hx+TerorF8RUYNHBPFPNWN?=
 =?us-ascii?Q?JFgokS88Sf89sxezBmzCnI7sA8QXPwO9GNyAgG6AjvXXVGxT/pC3TjteA1DA?=
 =?us-ascii?Q?feA15ZM2+cSowtMPTXjMo0HW6xnj4ch37DLcW+BXA82paqLm2oron1Y5Oa9O?=
 =?us-ascii?Q?df61RNt2wunSBNdUPO4a8Coe76YJooeCUdiJRb7Kv/0/75baSD5uM8uH5589?=
 =?us-ascii?Q?1XbaJsSaDR59EArn1YibPXAepIr1B8TYUCNpxamY+DfNYqS4fR0QlqERUSDB?=
 =?us-ascii?Q?bS/rL15/SVVGpJaKk+ip4kK8i1dBzyWpVN6+cMT5UbeXdoVRPos7S29zmA/4?=
 =?us-ascii?Q?aQDue5qsaiZMoCjLFwG8yTdff9yCkmxahDI9Qhq90/WtOJ9kYwBCB+mHaS/r?=
 =?us-ascii?Q?XVpQTKuhwXl51StV5kclAYNl0swcTHhhE9OCYxRe3gpR7W5XrjsCDmOdZNLj?=
 =?us-ascii?Q?9PGc9INJjY1ddKd3C3tk1PXqHhOCsNq6e38wJVf6Pf47YgS4kjYhCp9AWqq4?=
 =?us-ascii?Q?0ncJ23PZvyg1xyr0FIrCjQAqB7m9t6+tHhiRRobQzzNJiQnpH2mrUDm9VCSU?=
 =?us-ascii?Q?RFBcoD9MIEU8AXxuYMfV0q5CZRPw/MUEmp0JU43QUqABE6rFLlhnaxU204GS?=
 =?us-ascii?Q?qvDpbSgv346352I6tECj3FB5aDQEb4hPvV9dridCvOyt/s8XPXaWShdY51qf?=
 =?us-ascii?Q?np92bRtS69QMr8O3hnwFxhjxya9veNpuE+5HS5IMt5K48dk27piTvakzVDYT?=
 =?us-ascii?Q?TcuKNYZDAJ+rK5awWReZeYj1hUB0go85XmlpUO8m5MqSIGsYgUdGGVbB6VPZ?=
 =?us-ascii?Q?NzI9qik/Vgn8fcOK0u2kO+V/Ezzvx6WAf0n9Q1yhvNmv55Ov/1j9JZDtZQOC?=
 =?us-ascii?Q?5BOt7oT2C+cUzFJDpWltuiqRSnPKQk87g+G1fx6B1Wp/0MVkLUnVZSF2u/lz?=
 =?us-ascii?Q?dN0vYnQkoxKuMZzN+oTU/QWCZDF7NiJUWUPzk8wzi1ngVxIyUU9vwX/AoRDv?=
 =?us-ascii?Q?Kb4klq/vKHAiqxZy/+pLbPZbtKiT7fwoOzCNdUlrnLmOb7RWZEqJ/Xc3p5kz?=
 =?us-ascii?Q?+ObzBqKU7Xuzy7oEbyvQ7NUxVi0TNqGokuJHkt5Wen+D+FLd4z6Tfi/MqOfO?=
 =?us-ascii?Q?48QGRdWEGe+yDrCRhg6WXMYockutYodm4X5IDlLQyxrsLSmAwk61QcRaEzKi?=
 =?us-ascii?Q?Z9BrgiUQf28aL20FMkLmRytcDQVqnRkxMCgkWW7/FJiEBYrgM8ZlY4Pl40oH?=
 =?us-ascii?Q?bQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0865418-403e-48a7-5300-08dbafbcff13
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 16:10:47.2514 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3qA67LosqeEPpGcqhaOk9o0DIk9sVASha63Z0vp4QOpJzueh6JgAslQxbJVvrbWKa4ifvirte1L/0/9rUlXwqRqpR9FVkUC/zOsX4mlCo+U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6847
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 02/27] drm/i915/lnl: Add display
 definitions
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 07, 2023 at 08:37:32AM -0700, Lucas De Marchi wrote:
> From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> 
> Add Lunar Lake platform definitions for i915 display. The support for
> LNL will be added to the xe driver, with i915 only driving the display
> side. Therefore define IS_LUNARLAKE to 0 to disable it when building the
> i915 module.

This final sentence no longer matches the patch.  But it might be worth
adding a different sentence saying something like "Xe2 display is
derived from the Xe_LPD+ IP; additional feature deltas will be
introduced in subsequent patches."

> 
> v2: Use a LPDP_FEATURES macro (Matt Roper)
> 
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 089674e2f1d2..feafb0f94b06 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -768,6 +768,12 @@ static const struct intel_display_device_info xe_lpdp_display = {
>  	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B),
>  };
>  
> +static const struct intel_display_device_info xe2_lpd_display = {
> +	XE_LPDP_FEATURES,
> +
> +	.__runtime_defaults.ip.ver = 20,

There's no need to set a default value here, right?  If we've managed to
match this IP block, we already read out the GMD ID version and matched
it against the table below.  We'll be assigning the real value directly
and shouldn't need this for anything.


Matt

> +};
> +
>  /*
>   * Separate detection for no display cases to keep the display id array simple.
>   *
> @@ -847,6 +853,7 @@ static const struct {
>  	const struct intel_display_device_info *display;
>  } gmdid_display_map[] = {
>  	{ 14,  0, &xe_lpdp_display },
> +	{ 20,  0, &xe2_lpd_display },
>  };
>  
>  static const struct intel_display_device_info *
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
