Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E1B69FC19
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 20:26:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 100F810E1E9;
	Wed, 22 Feb 2023 19:26:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC41210E1E9
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 19:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677094014; x=1708630014;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+DRrfiuQNMsWoV9/qcWxSHaTbVIHds2gZcY7Y36QWnE=;
 b=VDFAZk1s809veM3pmsLKtQS07qF6uWxt/TOC6zWok52z9YvfWCSK4uyV
 8AK++jXM8ObVdSbwaPlR6StiI38C49bIG09PxDqxtptygVv2amMY8RDIY
 vlu9av/y9fTNcKd0et9J5ckoMfKBL+6r71KWvPsi7GB/8aZWEhJmzai2U
 AHha968XtFH08UVlUNG3J6AlI3zvUFoU1u6GZECiKXwz3AX5h2imxjEIy
 iKXA54zKkFibytIh1g1waR568YOxcToxQEYuQytZ+eJ9QouyHCQHNpZWT
 sfT7p7qLOwk3N3JqqHuC4AoYeRHdeRgrJ8IX15uAX1MsozwCNL5qsyNEf g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="331691365"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="331691365"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 11:26:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="704573292"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="704573292"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 22 Feb 2023 11:26:53 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 22 Feb 2023 11:26:53 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 22 Feb 2023 11:26:53 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 22 Feb 2023 11:26:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V8v9GIPe8jj7ozkcH8fyOUQJMESg4p5ASCSHHDdLsl9bc3BRbCt9WLPnIttJBZaYczJtD0ZF2CvtnVatEH9Mt9Wym2MpVYcBlxLIMUxcQ2F41pAGfJgf6/eqjq/dgU4pvjWsgZqjAcj/TxfRFetFQaILES9g+7rFGwvGj3WzWfK8R5nRUZy+oivGt8ftetlZwuYhazUD19PLUQuIEZz2bl771eZMsy9LxKu1OafNlUKEZRl4lI1FWdjhDYV8bCcSOWlu+j68ZX5lEa7mv+Izjte3LMNHlkL8/Vk+uN9SKvy+1UPNGrdoelgWV562iYRDLpPDzAWw3OKWxxvcQW8CBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FbSTBSydXCY2y+aTeFSmX8s6BctXRozHLsB9mooDkI0=;
 b=gHhFSvhfBVO4dXsuKu7k9KGyeuWk1B3SREtEHDVY43PgVWF+In+3mxWLXPMEvQeS4e12kWjd/TyTF+7xRYMBilu5WBZuhOCLDEpbQpeMSTtpbWmF5/l9gbw+uZKjBu0jLqYItnUF115eFFRdnwZbGsimeA3JTWt11JioAFrhNClBfAxAf0TrUy+6WpSCeViMZkyaETbIpmkUNcTIF1vzukwSpxTa00BJKxgMuiLZBjNv9UJxndGChHNdASTrQIKPZA0sIfxpmQ2bIE+IVXpPWqqq8bFQ/lcpvXLP5hHvCdRbsho85cBDb6ilzikmGQvvpown4pdWYGltA1U/0RXOsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CH3PR11MB7177.namprd11.prod.outlook.com (2603:10b6:610:153::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6134.19; Wed, 22 Feb 2023 19:26:50 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%5]) with mapi id 15.20.6111.021; Wed, 22 Feb 2023
 19:26:49 +0000
Date: Wed, 22 Feb 2023 11:26:45 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <Y/ZsdevHbATkf3Xf@mdroper-desk1.amr.corp.intel.com>
References: <20230222073507.788705-1-radhakrishna.sripada@intel.com>
 <20230222073507.788705-8-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230222073507.788705-8-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: DM6PR06CA0011.namprd06.prod.outlook.com
 (2603:10b6:5:120::24) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CH3PR11MB7177:EE_
X-MS-Office365-Filtering-Correlation-Id: 770cd35b-e77b-4d0c-11a6-08db150abdfb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5b+oDGdYnh4KdU/iodT8SWc/PghErgkMBFitOU38um9PKQGo7FxpbmYtdrNxx8Nu3D+vw0zvPrppKntyCPrhcKtbAGFcAE4Te/VGEljigLh3AZQnYAxz804RJd9pALdKkejWMLBzk54x/7ziJ9Bm5R8kHClzOTlKBI8sUqyAjn/ECk8bdAp4pjNxiZf6JL6gBTTq2WVcC3ElBdl/4+xJazMf0M5xr+uH1z9hRavHAYhCApLAynEH0iXkE/4fAjrw2x6ZkThqtB7HmtMGhdzl2UzXb1IW8RXMI2S3RD8lplJCIyuc3v3gHLPxdTANTxhoJQriTPBcZSk8h3v31hMNyobHVbZ4XcBMxze5x0i3Tns9RrF5BQ1G+++YUqPiRJd5Kvt9J9h8bEtpd+VWaCkMYDOCrHYCo8SDTD6mjDupIRa3nVs9C7dU8bhVernPpHoje7VJizo3lH1KdjSAKu08gEhj2JjeATYQkjkli2qAcKv6A5tFlfvqMA+5OSM5MA1cyF05uNIk5dOYwLA91ySVOWiVTy7DiwmpNuFpyHcmbn8DxgWfEUPPB7QWDxG2kofIVL/W+goHMsfxYiI6iayqQhlQtzpCDETKg5xYBTbjI96988TErvyIQKGegqLkBiv6MJXEc9Rqg2I/ic90G/1qRw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(366004)(346002)(396003)(136003)(39860400002)(451199018)(6486002)(5660300002)(6666004)(6512007)(6506007)(186003)(6636002)(26005)(478600001)(83380400001)(316002)(4326008)(8676002)(41300700001)(8936002)(6862004)(66556008)(66946007)(66476007)(38100700002)(86362001)(82960400001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BueEvoP7WAATK7XP8C/+dJE8IAthEfG9z17aPtvI6E9dyCaKnPG66ZldLh3A?=
 =?us-ascii?Q?Kd12fDNWUvJCRUgBzUXFy/lJCKD8r+kOTczOXbN2K5unLZfTt7Lp97c2a1vU?=
 =?us-ascii?Q?cG+e5vWowcweXqouzfRFlXO2tdhQn26qC7PoIkAboFxCg7oVAM6A7FEjYeSs?=
 =?us-ascii?Q?9IF0JCVcIEy+MQmCFV2SnVkVEYznqz+Jl6ES0WOhPCFevMXXFdVKqPYva4Y+?=
 =?us-ascii?Q?1Bc2v04VA1ShIi0190+OPG9MuTPkKSfMu1Z+pizUL2l9Iv4WTmBDPQ6wkhPT?=
 =?us-ascii?Q?JscYCmo+1+13PmzD7BTUTXsFbxxHqSUX6KR0Ke0riAyMAGmTzvGA6wElwVPR?=
 =?us-ascii?Q?AXoEmu0Qj8FHDthpUwKjgPJYO06wEV/F2BhivNyKp2wFuPwT4MmBAggGEete?=
 =?us-ascii?Q?BGe04vzejh/vEFMU82LAxmhUFf0z8NcH2YpXjcsDioLmNEgoBlNB9/rEPTPd?=
 =?us-ascii?Q?4stH4LSuUDqaasZinGrVjqdcIJtb+0AsAzwFtHgaLV3P8PdfTakI6lhv6FhL?=
 =?us-ascii?Q?ndkXjWfdY2sdkJVkDASTEyyxaY0XJzZS6Z9qS3Xd7J97HxUmigftQu+DdAf/?=
 =?us-ascii?Q?nK5+d7HMwjIQmR9rskUZmTdPHcmHl48r7os0BGsWbAzyZB2Q9rhP7FBtJ3ac?=
 =?us-ascii?Q?GghCS1i+k4YmJw/tYnyIybs/wf9Y+W3pEvC4194dVTdxqxhDkmFFudAilhtl?=
 =?us-ascii?Q?/c0NmdKeSmlhdKUbBEj6/pTsc7ywS2MpiFKQv8sfDR2EoLQxNK0K0PDu7CGI?=
 =?us-ascii?Q?VF9zS6Mi2Mkkmd14wd2IpMDnjRgu6jlIloxGvniIKfHQ+a1Y+cYTSWlt2tOg?=
 =?us-ascii?Q?PU3Ztt+xS07e6sAgJEUhC8ehbwUoSpmjays5ZtuBPnTqI5CSyvo7yFCMhQR1?=
 =?us-ascii?Q?krJ/2aoDZoEH9ym2PabDN1FDH2nlWYkZlrM81gEegjaTXHRlLsyi/Lirvmjq?=
 =?us-ascii?Q?zCvXMPmPkgKqP/uxwPSuUY0hAzhrB9Oj3e7ERT7wono8Qa5dO5tNZZjnmyBc?=
 =?us-ascii?Q?/mioHRv7AwGo0AYR+60alKFDT7wWaN3QKdZOp+bUyjc1GPtw48T/2Yi2Vf/B?=
 =?us-ascii?Q?RNF4f9SckLJHzZ0HR+uEWZZU+fYCIIBFN03kxi57VOTO623ox0Z1eHdoc1aJ?=
 =?us-ascii?Q?L9JEaQJETDQd1EGIJgCm78qhAOE8cU6CC1z+EuhAdYaUdGp591O05fkDrNbl?=
 =?us-ascii?Q?S5MmYVsB97/fFm3wQBvwfLchHdfa4kwFOuReB147/LO15jfFZyBNaXCcChHb?=
 =?us-ascii?Q?wmieRHfNGRAA9p9GFwXv7Q+4bj8f8FbMEOxS/3jB6Yz0Er4zYkTKmUpEaWOO?=
 =?us-ascii?Q?j0zrFy054+6JfHsIs1+8I2INS2SrLUVjR2DIxPfdmvQNZ0i6noj+UWsHvPx1?=
 =?us-ascii?Q?LJnYPxUf8jfbfih/2a7Z18HeEJJsghm/L3L9YQ4hTw5Hq6fpH2HpoLtZxata?=
 =?us-ascii?Q?REKwfDeGJTzwRLBoU82SPO/Um7Y6JYoj3MSj3X3gaeX9iWDg7/DS8kovMSMf?=
 =?us-ascii?Q?H6svIEX1qVNr2EBpIUw6EI+zogx4G4llzaHwE9+P5ubyixfnGTWLfNIP2CQU?=
 =?us-ascii?Q?TdfYIJ8TfDwArOxYn9xPO+13jMQdlgJVwTotcJO98V5q6Twx7rtTq6akqx4Y?=
 =?us-ascii?Q?cw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 770cd35b-e77b-4d0c-11a6-08db150abdfb
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2023 19:26:48.7542 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZHmHlcpoTI8eJQh50H8idOKKV6tPEiAtEHATqTJ6muto6KybOH6s3XsOfUNRyUAXu+oe3jKCMf52NEo2J7yw9+BbBtHIbbjxF+saA7PTins=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7177
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 7/9] drm/i915/mtl: Add MTL for remapping
 CCS FBs
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

On Tue, Feb 21, 2023 at 11:35:05PM -0800, Radhakrishna Sripada wrote:
> From: Clint Taylor <clinton.a.taylor@intel.com>
> 
>     Add support for remapping CCS FBs on MTL to remove the restriction
>     of the power-of-two sized stride and the 2MB surface offset alignment
>     for these FBs.

There's strange/unwanted indentation here...

The "Add MTL for..." part of the title also seems confusing to me.  It
might be worth rewording?

> 
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 799bdc81a6a9..fc4cb829e8af 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -1189,7 +1189,8 @@ bool intel_fb_needs_pot_stride_remap(const struct intel_framebuffer *fb)
>  {
>  	struct drm_i915_private *i915 = to_i915(fb->base.dev);
>  
> -	return IS_ALDERLAKE_P(i915) && fb->base.modifier != DRM_FORMAT_MOD_LINEAR;
> +	return (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14) &&

We're updating this condition in a few places (and may need to update it
again in the future); it might be worth creating a feature flag for
this, since I'm not sure if it's definitely going to carry forward to
all future platforms.


Matt

> +	       fb->base.modifier != DRM_FORMAT_MOD_LINEAR;
>  }
>  
>  static int intel_fb_pitch(const struct intel_framebuffer *fb, int color_plane, unsigned int rotation)
> @@ -1325,9 +1326,10 @@ plane_view_scanout_stride(const struct intel_framebuffer *fb, int color_plane,
>  			  unsigned int tile_width,
>  			  unsigned int src_stride_tiles, unsigned int dst_stride_tiles)
>  {
> +	struct drm_i915_private *i915 = to_i915(fb->base.dev);
>  	unsigned int stride_tiles;
>  
> -	if (IS_ALDERLAKE_P(to_i915(fb->base.dev)))
> +	if (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
>  		stride_tiles = src_stride_tiles;
>  	else
>  		stride_tiles = dst_stride_tiles;
> @@ -1521,7 +1523,8 @@ static void intel_fb_view_init(struct drm_i915_private *i915, struct intel_fb_vi
>  	memset(view, 0, sizeof(*view));
>  	view->gtt.type = view_type;
>  
> -	if (view_type == I915_GTT_VIEW_REMAPPED && IS_ALDERLAKE_P(i915))
> +	if (view_type == I915_GTT_VIEW_REMAPPED &&
> +	    (IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14))
>  		view->gtt.remapped.plane_alignment = SZ_2M / PAGE_SIZE;
>  }
>  
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
