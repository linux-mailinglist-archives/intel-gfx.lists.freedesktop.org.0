Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AFD27FA63B
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Nov 2023 17:22:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E508B10E39B;
	Mon, 27 Nov 2023 16:21:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E00A110E39B
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Nov 2023 16:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701102114; x=1732638114;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=3KF6iRKrUenOg1wH/JGBMucyjDihj8EpRbU1NUF+YYk=;
 b=DppyWo22mampkO4IowKSZKf7HpASpDVB/dKUN+OQ+YAuZH9cmqqlhiM6
 394qWeUWQCTi07slkZ3rovVu8x1YuM0hIJB/4LISkCdXmm5ilUKv5aR1y
 f5CPySuM76yhfO7EZCaE5Q3B4DDeLNK+qKq1dH3o225kSdOWCq5Xd8xz5
 wb8qVOd1c6IkQ7I4/Jah6SFI99PYivMTqUuIhkeNBWz5rOOz3+RSc664x
 GmVWZCEQdoNoAKF7URmTqbtcp6y/LrdHUTeq033pjc+NuNRBmWv9nuAOs
 TTcKXSB4MU5quy4E2mpV2BV4KkvUftgvWQarV6b+h8XHAZ6C6cFvCsPRr Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="5988426"
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; 
   d="scan'208";a="5988426"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2023 08:21:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,231,1695711600"; 
   d="scan'208";a="9823574"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2023 08:21:54 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 27 Nov 2023 08:21:53 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 27 Nov 2023 08:21:53 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 27 Nov 2023 08:21:53 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 27 Nov 2023 08:21:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eAdnh9oL+1nG2mmQ5qfJVrWMi82/WZcOHuhKXv9M2+UBJdVimN5/GrIXLm+G8M7nr0d9AIHKL6VumWHnKFW4GNwA2TGYLbaSD+L96hlfagN6JOPpGXsWErUwwjss5nxIgjv7HJQMQIaGL3etfqJu+c9lrZ68wqN8fIvAnZy7ASsRkoFK/oBXk+MJPvrXLUa0fWMigawhb8rOSQnA+wtfFG9TytCZta4eWLP6jR9nGVYz4AVShyeb0M28vS9sKxbetYqdhnlAtR22SSeN77sdBoZ+Q8j9Hj17DPaAlsyKIEjYzd5HXkKn0vFOUAHC5g+lFYBdoggQxGYuMnGcfwsncw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m+A1JKKbFgZfuCnn9XP8Q+EnaOXZnMuhwakiVxgejuI=;
 b=DjBt1NRaaTXShPO4BwxD+TPG+X6bI16ajL8zGiiKSArwoe5Imzhr/Bl8ysZfVrlrKUKXg0SgGnmRtgJyNCVXwlzDBQH0EWwnqhLJE/5/6Op8Y123A3IJH98q8u7mWG661qwGyCaoQkEHwOBwi5IjlROe0PicJVoQDoxMEie/tn/1Kt81biV6axC2mC23motQAueb0TDedPNilxIHIzUOXuPtiN7/EttLv8HtDQAJb7B55vdi+oiW+5TMlrSSyPJJf9CmZzPTAI2kX/ZhSu0BvW6K4maoarlhRGG8tbrb42uAfTOI13+ntKLfAqibgoN31VHuiGdz9/OmcS/WZCSvqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA0PR11MB8377.namprd11.prod.outlook.com (2603:10b6:208:487::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.29; Mon, 27 Nov
 2023 16:21:49 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7025.022; Mon, 27 Nov 2023
 16:21:48 +0000
Date: Mon, 27 Nov 2023 08:21:46 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <20231127162146.GG5757@mdroper-desk1.amr.corp.intel.com>
References: <20231124205522.57696-2-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231124205522.57696-2-gustavo.sousa@intel.com>
X-ClientProxiedBy: BYAPR11CA0039.namprd11.prod.outlook.com
 (2603:10b6:a03:80::16) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA0PR11MB8377:EE_
X-MS-Office365-Filtering-Correlation-Id: d43c97fa-d22b-4e8c-0fe1-08dbef64f4da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: u/lHZ0O1YhenSqbWZmwJuG5XXvySeSkonEFi+6+Gh6GMKVo8sToO/lME00wYQj31OmuaOaqdN1Uhng2kaiJonOZmp61U9d1EaW1YmQB/aZ6lDmHpC+Th6CLQGtCYuJeef+0QYPJMPgfVcvSTTNIZ7udcN0i/nSLy79fRhWan72w92wShaXULU+DNJAm67d0/1xCQhKBtA0jbZfd/mZ9M2ETlX7JI+8Euh1GIgErHhJR516pOiNYfVdmStTGZmdfAHF3Gjf8z7b6EMYyWjLyRDIw/jo+qNtIwSFSPg5J4A5+9Y21W/NCYgQnAwr/j3wsH8miX2nO0Ebl/YqfEshB9XHVCr+po3BOghy0B0NllT73NBYKwprlqGSuSSI5ycv/GOa6hCFJRhn7/VWIGpY5hC+y6xxyiATDnoZeCNnaoTmJA5IS2R4wXXNQvUxT9eQBmy1kWjUx5OCktEMxM7vyONpt+1n/TN0atSz2uzWm0mw5iyktYEYJW6nt/kTk5z0Z2jPJJdAoUtQVMCr7857TGeZpWOCkAKuxJroXe9GvgemI/KNY8tFXc3uHpqfjfJ8zn
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(396003)(366004)(376002)(39860400002)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(38100700002)(41300700001)(33656002)(1076003)(2906002)(30864003)(83380400001)(5660300002)(82960400001)(66574015)(26005)(86362001)(66476007)(6512007)(6506007)(8936002)(8676002)(6862004)(4326008)(6486002)(478600001)(66556008)(66946007)(54906003)(316002)(6636002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?a6zyeKCZrfvliZCX6tNLhGPoeJXvqj7geeGEbfrpM/UvmsD7zomiHKdgOx?=
 =?iso-8859-1?Q?cS+Q/zXelP4QjDhrQy0rubf2/RyWXl6EQ/RmA9iPPaPDYguiA+w+TuNuvV?=
 =?iso-8859-1?Q?l4N3wucjRm2rYd/tvItOTnwM8deEz2WAUqhnC8FzDOS0bYS2WrbOX3nijd?=
 =?iso-8859-1?Q?iIuNsYg0SRGofWUTrMmXqLGedW+v/ywSoNJPBb8EYqhdeH8GaiyywqmKdM?=
 =?iso-8859-1?Q?3qVJVGhxiN8W2yuqsaoXRMseSpElJuc44AWWlf0ReN6o4jo9KUoMr2rn1y?=
 =?iso-8859-1?Q?pye6hGQL/KGH37bOZP9BFcz7SPSPo/P0qm0VcD0O/yOnSbuETFAgBDOBpz?=
 =?iso-8859-1?Q?GG0ulInNv3zfC2Au8JV0YV9bONJBsFK2cIANpOWkTyXhCovwQu9FaP0RGK?=
 =?iso-8859-1?Q?cCg7OFDQU3WTPrUEP/d0Ga7NbLC0lbG+j8jqAmqPzlN/fKRvnaLH1Oh3dk?=
 =?iso-8859-1?Q?Y+U5Sr8HAYShyjIbNJBL/1Thr2+hHB/oYWrx84DDnlCJ0BqV07MzrgRqYe?=
 =?iso-8859-1?Q?E7XfeXtYxnRfkPkCjRsoLBjD7ZzYhlyLMqnB7tteAsg+qZAbSuNVuy1Sbz?=
 =?iso-8859-1?Q?RMI4HPADvg5+Nr0b4Rnr60I4YHyC80bCY9op3raHk37RW/M6RVHGxkNnj5?=
 =?iso-8859-1?Q?ng5vCDRleLIdGb2qmgJe+huQ3Xb395soOvrzpfw6TF8IoByfmxMyVtmlbt?=
 =?iso-8859-1?Q?B0krd2e9iNjdn7FxV+7Qc9THY/oA/7CeTfRBNtK4/a1uE08Yk4AYqb6YOW?=
 =?iso-8859-1?Q?GyfSu9GLNnz+p3O0qzLBa3SlGQmFKCXbLAkP2budFeWqX3sRx6cmn/JPTP?=
 =?iso-8859-1?Q?DWy8pkM+mLICrDdQY+3cNOaVo7Kzpx9D3n8AxZkNnY4TTXrAwry+PjgO/U?=
 =?iso-8859-1?Q?/FemUzhSAqR/u0kEENMf6J5tCud+veOSR8eRbUM2zScuTePRgkTWTSOhdt?=
 =?iso-8859-1?Q?7KHovtpWuZaJSsF8jRH7ANdYSxHizRkxa61awHfGrpCACDjhrn/hcxoz4F?=
 =?iso-8859-1?Q?o/WxR7GYzTMk1cbGA44TSvqP80cYUvaaXBCV7PJidaQrKKiiK27MOHQ6Ai?=
 =?iso-8859-1?Q?pySxs0X2HlryJnLiIIJ5VvRNIhAf+KpN+R3k3HoVtrOWpS+6QN/PxwztGj?=
 =?iso-8859-1?Q?I5UiWlCHZX0Fo2QOc9juj3dumFVKVzfT4vYbF4R9dhQTVkJRH5GKmOrbQd?=
 =?iso-8859-1?Q?hyS+FMwQ0GnaI3DvEXOhw0I8kq3RtCA/bkk/AdV09BOToK0xVp3ZNyCZgp?=
 =?iso-8859-1?Q?IRrLQAGgeJfDZcSgFJZ1Qxr39UGnxN0/PBIbuHd4GQmyNMBiIn7baP7Hga?=
 =?iso-8859-1?Q?7jbL4qW2mXlwsFhZQAaMortzNG5q6wHKwF0c7p+Psrb8xJ/PL5gjk7Hm63?=
 =?iso-8859-1?Q?bOhkJG9qw7q9rv9k7N2G7Kb3vkwlkPY/hp7hesZVK1Hkk/Xx2EguQw14o/?=
 =?iso-8859-1?Q?GlScqLXNsQHDcphJVc8mgcFO92AiH06f7ks9RTVTpxmTsbilTLlc/2xtnJ?=
 =?iso-8859-1?Q?Wa9HNuVS1A6aVgEDtVanCG3kwCuDfyjPn+VlBu+YZZH+0bf0VfKJfRSxQu?=
 =?iso-8859-1?Q?u0E3WC0YAFRDrVhOArwk7/OzaicPLrbozhvpzIv5wT469/9Ap705JRuf3l?=
 =?iso-8859-1?Q?3njj3FVpc9SZeQVFxAJEx5YH1BbuntR5v9XpLmKoGqRhbekqa60+Uc5A?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d43c97fa-d22b-4e8c-0fe1-08dbef64f4da
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2023 16:21:48.8711 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mCi7Sre24yaBL6m/bQBUXh+GVrRzdTDGvnPAtkpz7pe222pH0HHKRA26lEyJy6Wb6cm7kKg2h/c3w+8r/GVyWbVASq0RwctwguG2o93vN3E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8377
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/cdclk: Remove divider field from
 tables
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

On Fri, Nov 24, 2023 at 05:55:23PM -0300, Gustavo Sousa wrote:
> The cdclk tables were introduced with commit 736da8112fee ("drm/i915:
> Use literal representation of cdclk tables"). It has been almost 4 years
> and the divider field was not really used yet. Let's remove it.

I think we need to go the other way and actually start using it instead
of (incorrectly) trying to re-derive it from cdclk->vco.  The logic the
driver is using today doesn't account for the potential use of
squashing, which means we program the wrong divider value into CDCLK_CTL
in some cases.  I pointed that out during the LNL code reviews a couple
months ago, and I believe Stan is working on fixing that.

I wonder if the misprogramming we're doing today is what requires the
"HACK" at the bottom of intel_crtc_compute_min_cdclk for DG2?


Matt

> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 269 ++++++++++-----------
>  1 file changed, 134 insertions(+), 135 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index b93d1ad7936d..7f85a216ff5c 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1227,183 +1227,182 @@ struct intel_cdclk_vals {
>  	u32 cdclk;
>  	u16 refclk;
>  	u16 waveform;
> -	u8 divider;	/* CD2X divider * 2 */
>  	u8 ratio;
>  };
>  
>  static const struct intel_cdclk_vals bxt_cdclk_table[] = {
> -	{ .refclk = 19200, .cdclk = 144000, .divider = 8, .ratio = 60 },
> -	{ .refclk = 19200, .cdclk = 288000, .divider = 4, .ratio = 60 },
> -	{ .refclk = 19200, .cdclk = 384000, .divider = 3, .ratio = 60 },
> -	{ .refclk = 19200, .cdclk = 576000, .divider = 2, .ratio = 60 },
> -	{ .refclk = 19200, .cdclk = 624000, .divider = 2, .ratio = 65 },
> +	{ .refclk = 19200, .cdclk = 144000, .ratio = 60 },
> +	{ .refclk = 19200, .cdclk = 288000, .ratio = 60 },
> +	{ .refclk = 19200, .cdclk = 384000, .ratio = 60 },
> +	{ .refclk = 19200, .cdclk = 576000, .ratio = 60 },
> +	{ .refclk = 19200, .cdclk = 624000, .ratio = 65 },
>  	{}
>  };
>  
>  static const struct intel_cdclk_vals glk_cdclk_table[] = {
> -	{ .refclk = 19200, .cdclk =  79200, .divider = 8, .ratio = 33 },
> -	{ .refclk = 19200, .cdclk = 158400, .divider = 4, .ratio = 33 },
> -	{ .refclk = 19200, .cdclk = 316800, .divider = 2, .ratio = 33 },
> +	{ .refclk = 19200, .cdclk =  79200, .ratio = 33 },
> +	{ .refclk = 19200, .cdclk = 158400, .ratio = 33 },
> +	{ .refclk = 19200, .cdclk = 316800, .ratio = 33 },
>  	{}
>  };
>  
>  static const struct intel_cdclk_vals icl_cdclk_table[] = {
> -	{ .refclk = 19200, .cdclk = 172800, .divider = 2, .ratio = 18 },
> -	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
> -	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> -	{ .refclk = 19200, .cdclk = 326400, .divider = 4, .ratio = 68 },
> -	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> -	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> -
> -	{ .refclk = 24000, .cdclk = 180000, .divider = 2, .ratio = 15 },
> -	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
> -	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> -	{ .refclk = 24000, .cdclk = 324000, .divider = 4, .ratio = 54 },
> -	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> -	{ .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
> -
> -	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio =  9 },
> -	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> -	{ .refclk = 38400, .cdclk = 326400, .divider = 4, .ratio = 34 },
> -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> +	{ .refclk = 19200, .cdclk = 172800, .ratio = 18 },
> +	{ .refclk = 19200, .cdclk = 192000, .ratio = 20 },
> +	{ .refclk = 19200, .cdclk = 307200, .ratio = 32 },
> +	{ .refclk = 19200, .cdclk = 326400, .ratio = 68 },
> +	{ .refclk = 19200, .cdclk = 556800, .ratio = 58 },
> +	{ .refclk = 19200, .cdclk = 652800, .ratio = 68 },
> +
> +	{ .refclk = 24000, .cdclk = 180000, .ratio = 15 },
> +	{ .refclk = 24000, .cdclk = 192000, .ratio = 16 },
> +	{ .refclk = 24000, .cdclk = 312000, .ratio = 26 },
> +	{ .refclk = 24000, .cdclk = 324000, .ratio = 54 },
> +	{ .refclk = 24000, .cdclk = 552000, .ratio = 46 },
> +	{ .refclk = 24000, .cdclk = 648000, .ratio = 54 },
> +
> +	{ .refclk = 38400, .cdclk = 172800, .ratio =  9 },
> +	{ .refclk = 38400, .cdclk = 192000, .ratio = 10 },
> +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16 },
> +	{ .refclk = 38400, .cdclk = 326400, .ratio = 34 },
> +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29 },
> +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34 },
>  	{}
>  };
>  
>  static const struct intel_cdclk_vals rkl_cdclk_table[] = {
> -	{ .refclk = 19200, .cdclk = 172800, .divider = 4, .ratio =  36 },
> -	{ .refclk = 19200, .cdclk = 192000, .divider = 4, .ratio =  40 },
> -	{ .refclk = 19200, .cdclk = 307200, .divider = 4, .ratio =  64 },
> -	{ .refclk = 19200, .cdclk = 326400, .divider = 8, .ratio = 136 },
> -	{ .refclk = 19200, .cdclk = 556800, .divider = 4, .ratio = 116 },
> -	{ .refclk = 19200, .cdclk = 652800, .divider = 4, .ratio = 136 },
> -
> -	{ .refclk = 24000, .cdclk = 180000, .divider = 4, .ratio =  30 },
> -	{ .refclk = 24000, .cdclk = 192000, .divider = 4, .ratio =  32 },
> -	{ .refclk = 24000, .cdclk = 312000, .divider = 4, .ratio =  52 },
> -	{ .refclk = 24000, .cdclk = 324000, .divider = 8, .ratio = 108 },
> -	{ .refclk = 24000, .cdclk = 552000, .divider = 4, .ratio =  92 },
> -	{ .refclk = 24000, .cdclk = 648000, .divider = 4, .ratio = 108 },
> -
> -	{ .refclk = 38400, .cdclk = 172800, .divider = 4, .ratio = 18 },
> -	{ .refclk = 38400, .cdclk = 192000, .divider = 4, .ratio = 20 },
> -	{ .refclk = 38400, .cdclk = 307200, .divider = 4, .ratio = 32 },
> -	{ .refclk = 38400, .cdclk = 326400, .divider = 8, .ratio = 68 },
> -	{ .refclk = 38400, .cdclk = 556800, .divider = 4, .ratio = 58 },
> -	{ .refclk = 38400, .cdclk = 652800, .divider = 4, .ratio = 68 },
> +	{ .refclk = 19200, .cdclk = 172800, .ratio =  36 },
> +	{ .refclk = 19200, .cdclk = 192000, .ratio =  40 },
> +	{ .refclk = 19200, .cdclk = 307200, .ratio =  64 },
> +	{ .refclk = 19200, .cdclk = 326400, .ratio = 136 },
> +	{ .refclk = 19200, .cdclk = 556800, .ratio = 116 },
> +	{ .refclk = 19200, .cdclk = 652800, .ratio = 136 },
> +
> +	{ .refclk = 24000, .cdclk = 180000, .ratio =  30 },
> +	{ .refclk = 24000, .cdclk = 192000, .ratio =  32 },
> +	{ .refclk = 24000, .cdclk = 312000, .ratio =  52 },
> +	{ .refclk = 24000, .cdclk = 324000, .ratio = 108 },
> +	{ .refclk = 24000, .cdclk = 552000, .ratio =  92 },
> +	{ .refclk = 24000, .cdclk = 648000, .ratio = 108 },
> +
> +	{ .refclk = 38400, .cdclk = 172800, .ratio = 18 },
> +	{ .refclk = 38400, .cdclk = 192000, .ratio = 20 },
> +	{ .refclk = 38400, .cdclk = 307200, .ratio = 32 },
> +	{ .refclk = 38400, .cdclk = 326400, .ratio = 68 },
> +	{ .refclk = 38400, .cdclk = 556800, .ratio = 58 },
> +	{ .refclk = 38400, .cdclk = 652800, .ratio = 68 },
>  	{}
>  };
>  
>  static const struct intel_cdclk_vals adlp_a_step_cdclk_table[] = {
> -	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> -	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> -	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> +	{ .refclk = 19200, .cdclk = 307200, .ratio = 32 },
> +	{ .refclk = 19200, .cdclk = 556800, .ratio = 58 },
> +	{ .refclk = 19200, .cdclk = 652800, .ratio = 68 },
>  
> -	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> -	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> -	{ .refclk = 24400, .cdclk = 648000, .divider = 2, .ratio = 54 },
> +	{ .refclk = 24000, .cdclk = 312000, .ratio = 26 },
> +	{ .refclk = 24000, .cdclk = 552000, .ratio = 46 },
> +	{ .refclk = 24400, .cdclk = 648000, .ratio = 54 },
>  
> -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16 },
> +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29 },
> +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34 },
>  	{}
>  };
>  
>  static const struct intel_cdclk_vals adlp_cdclk_table[] = {
> -	{ .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27 },
> -	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
> -	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> -	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> -	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> -
> -	{ .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22 },
> -	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
> -	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> -	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> -	{ .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
> -
> -	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
> -	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> +	{ .refclk = 19200, .cdclk = 172800, .ratio = 27 },
> +	{ .refclk = 19200, .cdclk = 192000, .ratio = 20 },
> +	{ .refclk = 19200, .cdclk = 307200, .ratio = 32 },
> +	{ .refclk = 19200, .cdclk = 556800, .ratio = 58 },
> +	{ .refclk = 19200, .cdclk = 652800, .ratio = 68 },
> +
> +	{ .refclk = 24000, .cdclk = 176000, .ratio = 22 },
> +	{ .refclk = 24000, .cdclk = 192000, .ratio = 16 },
> +	{ .refclk = 24000, .cdclk = 312000, .ratio = 26 },
> +	{ .refclk = 24000, .cdclk = 552000, .ratio = 46 },
> +	{ .refclk = 24000, .cdclk = 648000, .ratio = 54 },
> +
> +	{ .refclk = 38400, .cdclk = 179200, .ratio = 14 },
> +	{ .refclk = 38400, .cdclk = 192000, .ratio = 10 },
> +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16 },
> +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29 },
> +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34 },
>  	{}
>  };
>  
>  static const struct intel_cdclk_vals rplu_cdclk_table[] = {
> -	{ .refclk = 19200, .cdclk = 172800, .divider = 3, .ratio = 27 },
> -	{ .refclk = 19200, .cdclk = 192000, .divider = 2, .ratio = 20 },
> -	{ .refclk = 19200, .cdclk = 307200, .divider = 2, .ratio = 32 },
> -	{ .refclk = 19200, .cdclk = 480000, .divider = 2, .ratio = 50 },
> -	{ .refclk = 19200, .cdclk = 556800, .divider = 2, .ratio = 58 },
> -	{ .refclk = 19200, .cdclk = 652800, .divider = 2, .ratio = 68 },
> -
> -	{ .refclk = 24000, .cdclk = 176000, .divider = 3, .ratio = 22 },
> -	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
> -	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
> -	{ .refclk = 24000, .cdclk = 480000, .divider = 2, .ratio = 40 },
> -	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> -	{ .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
> -
> -	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
> -	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> -	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25 },
> -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> +	{ .refclk = 19200, .cdclk = 172800, .ratio = 27 },
> +	{ .refclk = 19200, .cdclk = 192000, .ratio = 20 },
> +	{ .refclk = 19200, .cdclk = 307200, .ratio = 32 },
> +	{ .refclk = 19200, .cdclk = 480000, .ratio = 50 },
> +	{ .refclk = 19200, .cdclk = 556800, .ratio = 58 },
> +	{ .refclk = 19200, .cdclk = 652800, .ratio = 68 },
> +
> +	{ .refclk = 24000, .cdclk = 176000, .ratio = 22 },
> +	{ .refclk = 24000, .cdclk = 192000, .ratio = 16 },
> +	{ .refclk = 24000, .cdclk = 312000, .ratio = 26 },
> +	{ .refclk = 24000, .cdclk = 480000, .ratio = 40 },
> +	{ .refclk = 24000, .cdclk = 552000, .ratio = 46 },
> +	{ .refclk = 24000, .cdclk = 648000, .ratio = 54 },
> +
> +	{ .refclk = 38400, .cdclk = 179200, .ratio = 14 },
> +	{ .refclk = 38400, .cdclk = 192000, .ratio = 10 },
> +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16 },
> +	{ .refclk = 38400, .cdclk = 480000, .ratio = 25 },
> +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29 },
> +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34 },
>  	{}
>  };
>  
>  static const struct intel_cdclk_vals dg2_cdclk_table[] = {
> -	{ .refclk = 38400, .cdclk = 163200, .divider = 2, .ratio = 34, .waveform = 0x8888 },
> -	{ .refclk = 38400, .cdclk = 204000, .divider = 2, .ratio = 34, .waveform = 0x9248 },
> -	{ .refclk = 38400, .cdclk = 244800, .divider = 2, .ratio = 34, .waveform = 0xa4a4 },
> -	{ .refclk = 38400, .cdclk = 285600, .divider = 2, .ratio = 34, .waveform = 0xa54a },
> -	{ .refclk = 38400, .cdclk = 326400, .divider = 2, .ratio = 34, .waveform = 0xaaaa },
> -	{ .refclk = 38400, .cdclk = 367200, .divider = 2, .ratio = 34, .waveform = 0xad5a },
> -	{ .refclk = 38400, .cdclk = 408000, .divider = 2, .ratio = 34, .waveform = 0xb6b6 },
> -	{ .refclk = 38400, .cdclk = 448800, .divider = 2, .ratio = 34, .waveform = 0xdbb6 },
> -	{ .refclk = 38400, .cdclk = 489600, .divider = 2, .ratio = 34, .waveform = 0xeeee },
> -	{ .refclk = 38400, .cdclk = 530400, .divider = 2, .ratio = 34, .waveform = 0xf7de },
> -	{ .refclk = 38400, .cdclk = 571200, .divider = 2, .ratio = 34, .waveform = 0xfefe },
> -	{ .refclk = 38400, .cdclk = 612000, .divider = 2, .ratio = 34, .waveform = 0xfffe },
> -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 163200, .ratio = 34, .waveform = 0x8888 },
> +	{ .refclk = 38400, .cdclk = 204000, .ratio = 34, .waveform = 0x9248 },
> +	{ .refclk = 38400, .cdclk = 244800, .ratio = 34, .waveform = 0xa4a4 },
> +	{ .refclk = 38400, .cdclk = 285600, .ratio = 34, .waveform = 0xa54a },
> +	{ .refclk = 38400, .cdclk = 326400, .ratio = 34, .waveform = 0xaaaa },
> +	{ .refclk = 38400, .cdclk = 367200, .ratio = 34, .waveform = 0xad5a },
> +	{ .refclk = 38400, .cdclk = 408000, .ratio = 34, .waveform = 0xb6b6 },
> +	{ .refclk = 38400, .cdclk = 448800, .ratio = 34, .waveform = 0xdbb6 },
> +	{ .refclk = 38400, .cdclk = 489600, .ratio = 34, .waveform = 0xeeee },
> +	{ .refclk = 38400, .cdclk = 530400, .ratio = 34, .waveform = 0xf7de },
> +	{ .refclk = 38400, .cdclk = 571200, .ratio = 34, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 612000, .ratio = 34, .waveform = 0xfffe },
> +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0xffff },
>  	{}
>  };
>  
>  static const struct intel_cdclk_vals mtl_cdclk_table[] = {
> -	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio = 16, .waveform = 0xad5a },
> -	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 16, .waveform = 0xb6b6 },
> -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16, .waveform = 0x0000 },
> -	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25, .waveform = 0x0000 },
> -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29, .waveform = 0x0000 },
> -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0x0000 },
> +	{ .refclk = 38400, .cdclk = 172800, .ratio = 16, .waveform = 0xad5a },
> +	{ .refclk = 38400, .cdclk = 192000, .ratio = 16, .waveform = 0xb6b6 },
> +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16, .waveform = 0x0000 },
> +	{ .refclk = 38400, .cdclk = 480000, .ratio = 25, .waveform = 0x0000 },
> +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29, .waveform = 0x0000 },
> +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0x0000 },
>  	{}
>  };
>  
>  static const struct intel_cdclk_vals lnl_cdclk_table[] = {
> -	{ .refclk = 38400, .cdclk = 153600, .divider = 2, .ratio = 16, .waveform = 0xaaaa },
> -	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio = 16, .waveform = 0xad5a },
> -	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 16, .waveform = 0xb6b6 },
> -	{ .refclk = 38400, .cdclk = 211200, .divider = 2, .ratio = 16, .waveform = 0xdbb6 },
> -	{ .refclk = 38400, .cdclk = 230400, .divider = 2, .ratio = 16, .waveform = 0xeeee },
> -	{ .refclk = 38400, .cdclk = 249600, .divider = 2, .ratio = 16, .waveform = 0xf7de },
> -	{ .refclk = 38400, .cdclk = 268800, .divider = 2, .ratio = 16, .waveform = 0xfefe },
> -	{ .refclk = 38400, .cdclk = 288000, .divider = 2, .ratio = 16, .waveform = 0xfffe },
> -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16, .waveform = 0xffff },
> -	{ .refclk = 38400, .cdclk = 330000, .divider = 2, .ratio = 25, .waveform = 0xdbb6 },
> -	{ .refclk = 38400, .cdclk = 360000, .divider = 2, .ratio = 25, .waveform = 0xeeee },
> -	{ .refclk = 38400, .cdclk = 390000, .divider = 2, .ratio = 25, .waveform = 0xf7de },
> -	{ .refclk = 38400, .cdclk = 420000, .divider = 2, .ratio = 25, .waveform = 0xfefe },
> -	{ .refclk = 38400, .cdclk = 450000, .divider = 2, .ratio = 25, .waveform = 0xfffe },
> -	{ .refclk = 38400, .cdclk = 480000, .divider = 2, .ratio = 25, .waveform = 0xffff },
> -	{ .refclk = 38400, .cdclk = 487200, .divider = 2, .ratio = 29, .waveform = 0xfefe },
> -	{ .refclk = 38400, .cdclk = 522000, .divider = 2, .ratio = 29, .waveform = 0xfffe },
> -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29, .waveform = 0xffff },
> -	{ .refclk = 38400, .cdclk = 571200, .divider = 2, .ratio = 34, .waveform = 0xfefe },
> -	{ .refclk = 38400, .cdclk = 612000, .divider = 2, .ratio = 34, .waveform = 0xfffe },
> -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 153600, .ratio = 16, .waveform = 0xaaaa },
> +	{ .refclk = 38400, .cdclk = 172800, .ratio = 16, .waveform = 0xad5a },
> +	{ .refclk = 38400, .cdclk = 192000, .ratio = 16, .waveform = 0xb6b6 },
> +	{ .refclk = 38400, .cdclk = 211200, .ratio = 16, .waveform = 0xdbb6 },
> +	{ .refclk = 38400, .cdclk = 230400, .ratio = 16, .waveform = 0xeeee },
> +	{ .refclk = 38400, .cdclk = 249600, .ratio = 16, .waveform = 0xf7de },
> +	{ .refclk = 38400, .cdclk = 268800, .ratio = 16, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 288000, .ratio = 16, .waveform = 0xfffe },
> +	{ .refclk = 38400, .cdclk = 307200, .ratio = 16, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 330000, .ratio = 25, .waveform = 0xdbb6 },
> +	{ .refclk = 38400, .cdclk = 360000, .ratio = 25, .waveform = 0xeeee },
> +	{ .refclk = 38400, .cdclk = 390000, .ratio = 25, .waveform = 0xf7de },
> +	{ .refclk = 38400, .cdclk = 420000, .ratio = 25, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 450000, .ratio = 25, .waveform = 0xfffe },
> +	{ .refclk = 38400, .cdclk = 480000, .ratio = 25, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 487200, .ratio = 29, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 522000, .ratio = 29, .waveform = 0xfffe },
> +	{ .refclk = 38400, .cdclk = 556800, .ratio = 29, .waveform = 0xffff },
> +	{ .refclk = 38400, .cdclk = 571200, .ratio = 34, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 612000, .ratio = 34, .waveform = 0xfffe },
> +	{ .refclk = 38400, .cdclk = 652800, .ratio = 34, .waveform = 0xffff },
>  	{}
>  };
>  
> -- 
> 2.42.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
