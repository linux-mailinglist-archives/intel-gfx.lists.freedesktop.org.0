Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF72E8018B7
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Dec 2023 01:08:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B49310E15E;
	Sat,  2 Dec 2023 00:08:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C09A710E15E
 for <intel-gfx@lists.freedesktop.org>; Sat,  2 Dec 2023 00:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701475710; x=1733011710;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=FqqQN36ToXMpBS4J49Gd3POf+rILq22ossWI0P5mil8=;
 b=PFHlUFFEcZm+iNXMZoyk/SKlETbqqqjqFnOlkqaAZdfM0u4eezWb2zZI
 lFTQ9U5EFRQwRZFvThrHcF/O0Tbi7A4gAS80sC0S7et4nGq7AWoTlYP5Z
 I17ieSiiTpMWMySCgTkktopYsNdeoAksOJXiFt2uGGQjoTyTANC0vVtyn
 jrilGHrs4CKfyevOFOFVmLdn9/SBkUUeF90CVYgS+F0IeifYoFYrGq7J9
 UEeoB6hew6s/dFwnPOkLIhS6JVHdRLl88LM4mI/renlB3Iyt/8e1yikm1
 mIMdrDTMMKXRXWgVj2Wz7Bcvwhr3j+dCmNTUMzTBCjKyhUUARM9Rxp3IG w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="584203"
X-IronPort-AV: E=Sophos;i="6.04,243,1695711600"; 
   d="scan'208";a="584203"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 16:08:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,243,1695711600"; d="scan'208";a="11308595"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Dec 2023 16:08:28 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 16:08:27 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 1 Dec 2023 16:08:27 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 1 Dec 2023 16:08:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YRlDjyPAwYcQMUrsd/6AaRNRIAm/4EMTLxZxcAp7fnKpQYDOTICEkJHbEskHaTHqlbQNL0tK6u8H5hbBIbSboODMbIKpr47n3/osH5jC8kc89L8B9HHDl/OD/1R5rGpLHYT+oiGOPrIG5v573mJ9nmxMcZ3ix3DRRzkvetjZB91lpFKYG4HafuJi8ZgE+8c1j7yAiWKum3jHoQSViTKylspqgEJ4ypLqo0Zm4s1ICA4Ig1H1TJ9LttEgF089BerYIz6xvg+VLU/ijIEJvj28rqvpwmxNMLXzzp+Igd1KMVvK23dDpK99qdGDfRNoiWfTLU5h+qAXRrEH1cQZ7nX8cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VHNLZwxBqJ1oIoY/R1HsV3KMY0nrlGNJMRsYDH+5Xug=;
 b=LrQj0ky2f95KfizoFbo+HGb40znVqvWW0A2B/wciX0g/X05NGAQuO8ji72RftiOOQ6jtMqZjQ+WeancbuUYslkri+An59SvE5SNOxe3hPaHT4MhozXlWnqfUxsTs81xiksSHfOeZE1TRRQ6exwoe4Md/qF41NkUAlqEIN3oexS85l3tmat0FhActanruXkTG3126Hkx9rqWiVp+yGDM27+EjZmEr0bgZrxA1Qyi4EQC4c1rXQUAMKc8BHaocwWxQEqI0tiv2Ar3j1dHEMtEqQHbRhmTzsDSVIy5kIpTIKemCD0j1SOtaE2of/Up1NiPXH/FIey+Zsf9iUgkNjm4shg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DS0PR11MB7767.namprd11.prod.outlook.com (2603:10b6:8:138::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.24; Sat, 2 Dec
 2023 00:08:15 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7046.027; Sat, 2 Dec 2023
 00:08:15 +0000
Date: Fri, 1 Dec 2023 16:08:12 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Melanie Lobo <melanie.lobo@intel.com>
Message-ID: <20231202000812.GF1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231011102356.22014-1-melanie.lobo@intel.com>
 <20231201091133.23508-1-melanie.lobo@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231201091133.23508-1-melanie.lobo@intel.com>
X-ClientProxiedBy: SJ2PR07CA0006.namprd07.prod.outlook.com
 (2603:10b6:a03:505::18) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DS0PR11MB7767:EE_
X-MS-Office365-Filtering-Correlation-Id: 59e03f97-7e95-42d6-80c6-08dbf2cac797
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hcnYI88/r1f1qu2kYLKR5ZCHJF9OqcjLyH/OhThklmt/LsqFPt75zkf+TpaKvo323wasNvSEVxJkOCL1N31OHT7t8drk3UUw5x7tZZ32GBdD2Zakc/V6etp4lSKYz+u/44L24IAOdWtLWslLbn+b0LVL3T2gfDZRVGZU12d7nbhhRGgMWXpDhphg+XREjsDqijGUawoDcEf8mTvzSxiOS6ejbUZElpQ+4a40EMtiL4i3L6p19fhqRkSjwakxkgbPEdBkaHAQlIZaydZ3gL78aOJpwRIBgJ1nsDQW+9hY+TRv1exVS4iL1b5L3MYd1xNJLx2CBY5WECI0h4uXINalw/Q4V7QYk+EOXgUsWe90wso1c1XrrSb0ZEBFXl42qh0iWeyG04J+M2/ymCEXKHazpwNtAcY+d1PK2UNhp21afDIwUXM0ecDd+8mbOc8kalcSOEa+DIW4H0GMwH/KXyhpbBd5pdI7U/oqqyLEfffNl0mDvm9+1XpMFQQZ3U5lkYYDo/Q9mv+TDdEuu3hF8vo0boJAPa/Q2XhZi97NMK9ve63Mn5RENJJaPNsF8oQQQg7jirrGpyd6XXxv1swiOUdVVA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(39860400002)(396003)(366004)(376002)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(107886003)(26005)(1076003)(6506007)(86362001)(82960400001)(38100700002)(33656002)(6666004)(83380400001)(5660300002)(6512007)(66556008)(8936002)(8676002)(6862004)(4326008)(66476007)(6636002)(966005)(2906002)(41300700001)(6486002)(66946007)(316002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zMN0O9328L3uuem9ySGVq9bwUTQmrfs1zHEAYr95eeI4BmTN+uB0Qc0GThPA?=
 =?us-ascii?Q?ruKKuS1UGS8gORxxEYEN0VRCIPEZNRsuOF+LIw0cNBlT9oDReKMrk0EqMpAE?=
 =?us-ascii?Q?vbyTqy4PsNVTIIi0/PKIN4OqOPpb6Wa0MVZaWwdYAsZvftcR3VBTk+58DAMM?=
 =?us-ascii?Q?POZ7+AKt7uuyoZH/CrvvmG3T+Y3QAbv4wBaxRNLYqHCscH8SRa2PzZ/wdDUC?=
 =?us-ascii?Q?MaUSCWiFmBymBpzoDpkwMRgspubFibkteVSxXEr8ADKHvCxYCoqcrhjaASdw?=
 =?us-ascii?Q?IuIqRgFiKRhC7EuXmcy4eM8j66fZXpbDC/0TaxR+G763gGLbX880RBjh/qrj?=
 =?us-ascii?Q?TIsuMbyRfAtcfA+TkNf6goaForPfsFCdJ6wl8qsozZCG9yE5VqkfKrtN0vrj?=
 =?us-ascii?Q?j264UF+lp7uNGE0fBD2LJZW0kVm7Q7WYIv+Hrh12wYoeemb8pWqw+gAqK3wG?=
 =?us-ascii?Q?Zohr9YwYmrGjEScMfKURhr5dSPchlip5EEBKRq2PyCIE1Se4heQN/x8TWdjx?=
 =?us-ascii?Q?Na2R3kWGlW4WSUJUsKlw8oFAFpNTeCT/HSqtvjDCRbUgIDJUqjEbWdMi7QKm?=
 =?us-ascii?Q?Q5q5mSOavM6GuH4zsgoEnr6Zi6BWh24Wp6lhpq8TkrcyY57PVRL+HFyBJEXe?=
 =?us-ascii?Q?Z/QolLAGVtl0J4kWGk52qA9j+0UR4jsx8mzDXGIEwolO9pUG9JIM9RfP6W60?=
 =?us-ascii?Q?eK/tf53imjTe9/j9J8m/g1u5hsolOh00xukudHzMYo8sMYzLI1zFx8ktBP0j?=
 =?us-ascii?Q?sTg4E8CAmX81zzRCNzUahXOsDHK5kBt+kZcgjBnqWK5iavgQ3TnLVETshXxY?=
 =?us-ascii?Q?dmxYC2DHY5rJSfLpkrqh48FAdr4iI5DRGnVaauimV0cdEr98zbZJ5edgjQa6?=
 =?us-ascii?Q?Z0qyRfvTFx5bkqxcXbHDzkGD9XdtCYzCKeo3PFTfClSerbw++2nPgwgY2gjM?=
 =?us-ascii?Q?CJU2knnMt89xb79xw3urOEZmbkEzcsZw9NCFNAGCyuWilZjNVRMm/qoxK3Ti?=
 =?us-ascii?Q?eYtIVE0ajxDhcOqDFjcPlipLoOG/8CWirfg3MXJs8v4VOZTO0ZQJuQNs2IKJ?=
 =?us-ascii?Q?M8r2fSzFYX5fIwfShRLk/6g3lRfbBCz2ztvRPuOnhNRORKh/oO6KzeNg6PnS?=
 =?us-ascii?Q?5Ba7FmIRFHy1iQiGMK9C1qhnQLbQ8qQ9Gy6nOJxdpIGc4B30ysuXougOGf7z?=
 =?us-ascii?Q?R8jn3/yasT7E2nGSVQKzCyTa7ChalaMpOzk0HloHaBxthxMAxyNM+ED8QfHl?=
 =?us-ascii?Q?V1agaFvrW5sZnA0l5EQURrBEVUgleyU7P22T/yu018M5OstcFOcpTZcfNidU?=
 =?us-ascii?Q?YcZT+1URBUbTvM0L3uF8F/fp6rCAXHpXIoEuMDHXkgYHSgUyLunriGWm8hPR?=
 =?us-ascii?Q?0J4xrxiMCfBCRcsrGtAmXw7Aw7ZgShZe/J7KBYfDWgCT+7G8LBQlG0wX9LpR?=
 =?us-ascii?Q?cpDPui4tnSPhu7gXXnU5phRUdq2ufafZH8ciGJVhdcQ1LnNUZocJD4910uD/?=
 =?us-ascii?Q?LrIm1fssh3TfU2dMpoRqUcwKv60JPIhJbLc/Qn5SkB4v/GhnOiVhh7WtgGhg?=
 =?us-ascii?Q?tzG5s1bdaZIM09BeRpuax6GgGVAAC9mIgZiL9jJN6ndnol2mp8fnLpK48ij7?=
 =?us-ascii?Q?gw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 59e03f97-7e95-42d6-80c6-08dbf2cac797
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2023 00:08:15.4792 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DIiQxMCyZ9qdjmF+vukiEUqeOuI4h8xzznvAwqJ0yVXYz8DN1G5tWKOcRECBPTpEt0fY3K871U+ZS+ByqI2eVgQjj4yZ4xOigyFE4G8KEWQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7767
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Support FP16 compressed formats
 on MTL
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
Cc: intel-gfx@lists.freedesktop.org, juha-pekka.heikkila@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 01, 2023 at 02:41:33PM +0530, Melanie Lobo wrote:
> Supports FP16 format which is a binary floating-point computer
> number format that occupies 16 bits in computer memory.Platform shall
> render compression in display engine to receive FP16 compressed formats.

The explanation here is somewhat confusing and might also be missing a
few words.  What you're actually adding support for is an RGB64 format
where each color component is a 16-bit floating point value, right?

> 
> This kernel change was tested with IGT patch,
> https://patchwork.freedesktop.org/patch/562014/
> 
> Test-with: 20231011095520.10768-1-melanie.lobo@intel.com
> 
> Credits: Juha-Pekka <juha-pekka.heikkila@intel.com>
> Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> Cc: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> Cc: Swati Sharma <swati2.sharma@intel.com>
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Closes: https://lore.kernel.org/r/202310150454.S9QF86bl-lkp@intel.com/HEAD detached at 29b1181aa95a

I think you misunderstood the robot's directions on your earlier patch.
It said that you should add these lines if you were fixing the mistakes
"...in a separate patch/commit (i.e. not just a new version of the same
patch/commit)..."  Since you're just fixing this in the second version
of the same patch you shouldn't add these lines, otherwise it implies
that the whole patch (i.e., the need to add support for this new format)
was something reported by the test robot.

Instead you should pass the -v flat to git format-patch when creating a
new version of your patch (e.g., "-v2" for the second revision) and also
include an indication in the commit message about what has changed since
the previous versions.  E.g.,

        v2:
         - Added foo
         - Fixed bar

Also, you seem to have some unintended text at the end of the Closes:
line that didn't belong there anyway.

> Signed-off-by: Melanie Lobo <melanie.lobo@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb.c            | 10 ++++++++++
>  drivers/gpu/drm/i915/display/skl_universal_plane.c |  2 +-
>  2 files changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index e7678571b0d7..494baf20f76b 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -91,6 +91,8 @@ static const struct drm_format_info gen12_ccs_formats[] = {
>  	{ .format = DRM_FORMAT_P016, .num_planes = 4,
>  	  .char_per_block = { 2, 4, 1, 1 }, .block_w = { 1, 1, 2, 2 }, .block_h = { 1, 1, 1, 1 },
>  	  .hsub = 2, .vsub = 2, .is_yuv = true },
> +	{ .format = DRM_FORMAT_XRGB16161616F, .depth = 64, .num_planes = 2,
> +	  .char_per_block = { 8, 1}, .block_w = { 1, 4}, .block_h = { 1, 2}, .hsub = 1, .vsub = 1 },

Should there be an ARGB form of this supported as well?

>  };
>  
>  /*
> @@ -394,6 +396,9 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
>  			       u8 plane_caps,
>  			       const struct intel_modifier_desc *md)
>  {
> +	const struct drm_format_info *info =
> +		lookup_format_info(md->formats, md->format_count, DRM_FORMAT_XRGB16161616F);
> +
>  	if (!IS_DISPLAY_VER(i915, md->display_ver.from, md->display_ver.until))
>  		return false;
>  
> @@ -408,6 +413,11 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
>  	    HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
>  		return false;
>  
> +	/* Check if CSS modifier and FP16 format is supported on different platforms */
> +	if (intel_fb_is_ccs_modifier(md->modifier) && info &&
> +	    info->format == DRM_FORMAT_XRGB16161616F && DISPLAY_VER(i915) < 14)
> +	       return false;

When I look at bspec 49250 and 49251, it appears that this format can be
supported with compression on display versions 12 and 13 as well.  Is
there some other reason (e.g., a hardware workaround) that requires us
to restrict this to version 14 and higher?


Matt

> +
>  	return true;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 245a64332cc7..f5e9be57a74b 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2091,6 +2091,7 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
>  	case DRM_FORMAT_XBGR8888:
>  	case DRM_FORMAT_ARGB8888:
>  	case DRM_FORMAT_ABGR8888:
> +	case DRM_FORMAT_XRGB16161616F:
>  		if (intel_fb_is_ccs_modifier(modifier))
>  			return true;
>  		fallthrough;
> @@ -2115,7 +2116,6 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
>  	case DRM_FORMAT_C8:
>  	case DRM_FORMAT_XBGR16161616F:
>  	case DRM_FORMAT_ABGR16161616F:
> -	case DRM_FORMAT_XRGB16161616F:
>  	case DRM_FORMAT_ARGB16161616F:
>  	case DRM_FORMAT_Y210:
>  	case DRM_FORMAT_Y212:
> -- 
> 2.17.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
