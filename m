Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A15380AB71
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Dec 2023 18:57:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A486E10E12D;
	Fri,  8 Dec 2023 17:57:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F7C110E12D
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Dec 2023 17:57:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702058271; x=1733594271;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=IHQbEZSLF1b6S3l6m1AX4bXENPBsyoiwlDFlV6eMtwM=;
 b=JlKG8vTJy6xZpUJuF88mUKMiAqwB1pVjjt+gdOWywnbjw4zhCIec+VyB
 X1J8vyZAEVRRVC670Ng5hwUqN3xre+0smWFgnh0fszWPeJpDm2vd3mTru
 PXN3fLrQUYFlxo2inv/NGbkEVBBkXgO5djCQBmnioJTVpoh6uTgPJ+HT/
 YKzZ+UbV+XOy5UH96IBug+ExWcLWlKjMSS3caygAwjXRd59DKKbkkp/eU
 hZHWKzQmjTERmtRe0zRR3+slBFftgnO4nVCD1/0TN0nYDwZ3hutPhpkiQ
 QJ1OLZ+91FoDHRyWCOpY4uQa2tvRiAQI1cx+itoAKPi8VCn66/oYrd3ms Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10918"; a="374600251"
X-IronPort-AV: E=Sophos;i="6.04,261,1695711600"; d="scan'208";a="374600251"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 09:57:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10918"; a="945489762"
X-IronPort-AV: E=Sophos;i="6.04,261,1695711600"; d="scan'208";a="945489762"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Dec 2023 09:57:50 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Dec 2023 09:57:49 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Dec 2023 09:57:49 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Dec 2023 09:57:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qws/iWwum6gGJmMKZEq1HwS9vvUAkjkeX0sjzGCqD/lt0r9CROTa5P1/Pptj7PX/Ns8iTyY24Y6QJLk4KisXTML2kYD/meQ9a6q/83nrLE8Vg/ayYy8ZSWKEHIJS5Gy3Vk9bKDI/bMfjzbjYrSmSXH311eh7Mb1HOucRDJfD7CnaeU3t8UInSeTefpHIPpksnAcNV9DGY2VJ18bCtG9HS7QGMwhM/kQFeELUJBEdIez62xQokusfpLrh80wMWlzmlwA12AbwQJ/oVrsMtaZpJvej9vIy1/jt+X3SkK4vH4ZUGT6HyYACtPBYJmPm/FNb/7vesFUFEy6IN14I+U8SkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6SBmj88snjG8sDI3+6i1WXyNc5axTKcgTbX5v7E7NMM=;
 b=Qa6GL45ftDi9bCKLqumEV3YVWAw4LNfiAFLdpufiWAzjkwMRVlfbPBUfmEpN2OxB+FLr4fVsQyMGQ+f81GzrLkKA8aRO7nv6Mfb7TQXg/8pHl/cQsk5rNDi+1HmfcZyJWmr7JIu+HPQ/Vij7IhtGxjnBSYFD1MVj3138TTnR6GAbzSlOUOZC44OWwg2L4wUmXNUweEg0gHBZx6fmOlhZhjq1nCj7rm/VyDaL3v6lbzCbLmeRCX9FFMc7LrJLu6A2eFl3KJm8xcuPr0wAQ+dA9OsBhdWFn5gwtmuAAynGbDspGXP9Q+UGuFFc2Xgn2/yY9an8tJcM/oTBvPeHStFJTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SN7PR11MB6680.namprd11.prod.outlook.com (2603:10b6:806:268::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.28; Fri, 8 Dec
 2023 17:57:42 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7068.028; Fri, 8 Dec 2023
 17:57:42 +0000
Date: Fri, 8 Dec 2023 09:57:39 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/display: Also print raw step number
Message-ID: <20231208175739.GX1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231208143137.2402239-1-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231208143137.2402239-1-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR13CA0235.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::30) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SN7PR11MB6680:EE_
X-MS-Office365-Filtering-Correlation-Id: 24f846fd-934c-486d-6e58-08dbf8172cc5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: N6xgG97Gi5TWzHJzPmhYUykRk1UqC949nyOr7aKeTfG4D/89MTAVny6atDjDFW+jZuTlVspMSS/9G0eXeDjRPe9cNy+62Z4MscP2HEWvLpP76YUrsl+S6MvMeCoInoPyFfyIloN4/lP9s3nWFQ7i0uUJTtDaz/geNOgEEWqJApGiQj/ukM9dfrjvXooeApfWzGnM/X69GzpQDbsQCn/boTFEq1pGbisoDm9cSIBhZ5e8uqZZkQP1o/3HVaWdN2qE7tfVZ4ECBll0a3nE+6LouH18GEUUdPooeAXxAVufho74RGbjnjKAiohRf42d3khqiKCPJQJjT3P1J/1V70izjIjBHgaiW1xZgezX5QSmb6Y2/KRum0gQUV97XQT0nP38F9bqk5fQIy1XDE9OZFEwm8cu/BQadtp6ZBk5dFo//OFFpl1Tb1n/keer0ZF/cv9v1S6be4MSm6BWqQKemsRzCPcSLu/tycVfPmyT86nlASTIBUs1q1PIhxj5wurosvHDDuTztj+wahk/LGxyOBmcAUIYF+BzXyhlEOxpbN3HEH4WvHn1Km3TymuaMXbNKHOC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(366004)(396003)(39860400002)(136003)(230922051799003)(64100799003)(1800799012)(186009)(451199024)(2906002)(41300700001)(38100700002)(82960400001)(86362001)(66556008)(66476007)(66946007)(33656002)(6512007)(6486002)(1076003)(26005)(478600001)(6506007)(6666004)(83380400001)(5660300002)(316002)(6636002)(8936002)(8676002)(6862004)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?K9H6PXrWa5IPdB1RhINjWaj5UIpTf3RrVgtY3b3WpQslI/4FbsFH6ob+2Wyv?=
 =?us-ascii?Q?+cxC0EDCQ35I30L1PwzpCDZfmk5WGYvOiUkL8qKhfQLYEFxxYzrGfICbt72B?=
 =?us-ascii?Q?wk2gA/m0AHIYVfTiZSGIkLgjDyJEBmm0jGaNVX1qq6OTRkn8lcPBH5Bfz0xk?=
 =?us-ascii?Q?j3cVgNVeh2/R3dFHuUp/0cejzXgRfw5BBCCHl8FnNkuIunHu85nDIRlhPK4f?=
 =?us-ascii?Q?wE0CD8ncPVDJhbwwC9C3LniUfCYdc+ooEAuNoaCZ8DJ993HcTexNKoR4NCcS?=
 =?us-ascii?Q?ybtlo9tADHHboV9uy2rQgxA1+XcslsVsrBqucYV47m29jDuV9lhQunJrj5I2?=
 =?us-ascii?Q?ehJx6DzTga20xTMVmFF8SNAex4mM14FOi/s9AvkXCcTeNyQel7h0GeUnh3xC?=
 =?us-ascii?Q?0Xvx6kx1k0BC4GXTDXSeJy9dbXTajb2YkZbh7/3k4upbHVb/vdgulfcDZY+6?=
 =?us-ascii?Q?QeRq63D5b8cv+UceBYdxe9P18MB1SP1FEpLRxtg0iXlEPL4i9MrZOY19sAds?=
 =?us-ascii?Q?MV9rOSLH38m5oeA1n1V5U+40Fqj6fdhpHqrG0HBabM0g9X/g2sro1BSbKP8E?=
 =?us-ascii?Q?I0c4y/JWH9ktmlf5GFsLdWZBmntOdN4Y1xPexqB2wORaQKLbRAlqLrKlDfFu?=
 =?us-ascii?Q?Djn5TujaeF10smgq+4rKCdLLvXaRbNT2F+AGcL8o39fCBPvNAHvIxnu37ycQ?=
 =?us-ascii?Q?OO2smuPUUfDI+otZCrxJqfR0yFWLZcl8x+HUsX4uR+FXjTwDqF9XNINyb+Oo?=
 =?us-ascii?Q?BZBWuz2dWOtfAaP1H2mI3poHSs3dIZCxu0hbhBAQ45QzHipY8gisj7/aa+t6?=
 =?us-ascii?Q?9yWZtjb2VcjMkwPTkZJFpfq3XyYfvcZiW9Pp/nZOXv19noqJ8mayus0N6cwR?=
 =?us-ascii?Q?X7n7zTBVqZzamksGLh4V49a5uf1D1eem81oPtE39rlM+Rj1WjuAkdP+VDt5W?=
 =?us-ascii?Q?dQKJ/50o3yjqUxqJnQepzC6X8m4P0j1sTH7seIvT7tjnnntdAVUeW2PZ96p7?=
 =?us-ascii?Q?ziTfQ1OVj5RIDY6dz7aoYeqcAowgDE9388EfLWtf6R81HSxAUd3tMUr8aXWE?=
 =?us-ascii?Q?8S6H6G7nEiFlbuhAEOfShH/2dT7M6RTeanzlXlxqUtShKyy3ZIcPaatZZCkO?=
 =?us-ascii?Q?lATZOb8zyOKoOErUIOhCLQBUwkq+YZbw+3KFQfb3em/ve+tPW7xJ+prSD7xs?=
 =?us-ascii?Q?h0gE4M7p99rRgisM/3LMT4FoiZRRySgjeEdVRgcdf+zgB5rK8uhsJwGIZAov?=
 =?us-ascii?Q?/bSkF0KCygUg7/YT6Yb/bYp5+XSntyoqsCslw1uHAvpwJ3LXxNjZ/3kkmIbu?=
 =?us-ascii?Q?RVLPyBoqaUczfMLPWtlcFPKo1eTof4/nMxvSMKocevzn8oCFIxBV5HFSodIE?=
 =?us-ascii?Q?2fhVP7euA3d9lDWLf/QjFWiL+Leb+zw9Vh5zYN6d9DlEu0VtWBjTLnY7Od+c?=
 =?us-ascii?Q?7LJrtaNRrMWtIi7e3cGXIzY9ZRYn2KuA/uiP6Tnk/kZhhFDjBT9sRyq6v2Ug?=
 =?us-ascii?Q?8RL+z0B6BYIo2Tvvcm1C51KSM1ycB6uuIFMU62pR+e60uxqFFkiP29kciyt3?=
 =?us-ascii?Q?tSAQfHTQfWXMcSbhqjZaQSI8u/Lm+nGvlcGvSzoABQPthZzHbMQMqBETtjG4?=
 =?us-ascii?Q?ow=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 24f846fd-934c-486d-6e58-08dbf8172cc5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2023 17:57:42.3485 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wtzm9gykBeB0qxVf2V7c/Ifx/O09H5Ah1Tc+KdfE1KF42qQNa44P2ZbBli9lhokdWRyH3P7fPnSVHQkvs3s5MczYI7O1q8aLZMd7W6kjKK4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6680
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

On Fri, Dec 08, 2023 at 06:31:36AM -0800, Lucas De Marchi wrote:
> GMD_ID is already parsed down to the step. Don't omit that information
> in the display engine debug info. This helps to double check the
> stepping is parsed correctly.
> 
> For earlier platforms, it will start printing the entire version too
> (which should be 0), as a rel == 0 doesn't mean it doesn't have GMD_ID.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 9 ++-------
>  1 file changed, 2 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 0b522c6a8d6f..5d1084a98b93 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1122,13 +1122,8 @@ void intel_display_device_info_print(const struct intel_display_device_info *inf
>  				     const struct intel_display_runtime_info *runtime,
>  				     struct drm_printer *p)
>  {
> -	if (runtime->ip.rel)
> -		drm_printf(p, "display version: %u.%02u\n",
> -			   runtime->ip.ver,
> -			   runtime->ip.rel);
> -	else
> -		drm_printf(p, "display version: %u\n",
> -			   runtime->ip.ver);
> +	drm_printf(p, "display version: %u.%02u.%02u\n",
> +		   runtime->ip.ver, runtime->ip.rel, runtime->ip.step);
>  
>  #define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->name))
>  	DEV_INFO_DISPLAY_FOR_EACH_FLAG(PRINT_FLAG);
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
