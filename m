Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5EE77E86E
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 20:14:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1DDA10E3A4;
	Wed, 16 Aug 2023 18:14:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2754B10E3A6
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 18:14:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692209655; x=1723745655;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=xJuWgFrgZ5swQW8YFWezAcXHRzhy0+diT190ZG9dI+w=;
 b=WzNNzYZOny9msTlFUha8DsLlKYkYcJgrn3Mdf1IPU+dGrk4lggcZ0X4S
 ULecP4RuFFlzt3SDb2Hei078+hMMA0PQ8yLg2pCpflmQVmZzr9o5Kkvz6
 t/GsrUGbeHMhpueEv6tTkJbb7aj21mVJpXviJWM8BA1IkWg4k6e+u6olx
 Y6IPWiO+cnkHHdc+bs6RDKHdlLM83/kB913LmDvs/jiOTTnwzdLR9wV7e
 RZrVZ6fCUtqz04LST4f/ULKpKD+srMFCEjHDDR2OFVZs3LrL0JO2c7ySX
 6utcll3yW9I0Et686y2w1GlTZh9U8lmh63RCUjb/zhhIrKc8XObVkreqX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="436504034"
X-IronPort-AV: E=Sophos;i="6.01,177,1684825200"; d="scan'208";a="436504034"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2023 11:14:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="877907915"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 16 Aug 2023 11:14:18 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 11:14:14 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 16 Aug 2023 11:14:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 16 Aug 2023 11:14:13 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 16 Aug 2023 11:14:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BIaRpsm0+BPDWse/pgWuu9rAEw03cbQZwkMy8BgQ/Czr8tMv4EFggvLhuTx8vw7/xsCHHuaLo1n2WPX1GFccHiyEVEGNeGNE6JAcVM1Ward0EzyLaphNRFn5Jkray/PMG4FMv8Byq/l8JQcv4jsKXFS2/EFvKdPH/hDcOMassnYo1czRK1zcjEL/92LZO1Pr+u79GjxD3dA7q4OXoNsEvfygtR7AWzoa2Xqb/j4YxO2c8ecj4qVpSSa+s3HQ0vbkgB3jdP1e4roebMWH9Bamwdv/ME3ASLPSnCChR4BWWg3gt9P7EeqBlTUFFS48tNwHCjtMtU5o5VQXy0ypSr2vCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GH0XNscb7sO96mt3yUrQ6Fo723vfbOaQddebqtBKu9c=;
 b=VMtFJCaJ8gcJe/xYwbZXkw7ShacLoTSj+bQ6ugSG03ZfII39bdfADSG716lSjp/BC3X9aBd8j2TayavicMvsrAkyiFLEYaH6vvaWdYpXkQFghZ0XX/AUOQEPXyEIBX0mPAdZ47a4jN7ZpMeT1kJ/Sd74AbbGQUGPflnYNUXUeF1JudkflDFlOtmvEfphp0rHx+HlsrU1bYunuSwF6MoOmXY+G+S9XZ8L+E/PGueOHFTbUBxmYFNs5ttcvm+lVjzULHHl83+JduoC1lcaL/IZwYxE6oVrOSwlMnZ4io8JCYN92wnNL1qlUOT/IL8vB7ETI5WkYJ120wp55VHHWhPoEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN2PR11MB4239.namprd11.prod.outlook.com (2603:10b6:208:192::20)
 by SJ0PR11MB4783.namprd11.prod.outlook.com (2603:10b6:a03:2af::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Wed, 16 Aug
 2023 18:14:11 +0000
Received: from MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::18a6:cbff:9bcd:4acc]) by MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::18a6:cbff:9bcd:4acc%4]) with mapi id 15.20.6678.025; Wed, 16 Aug 2023
 18:14:11 +0000
Date: Wed, 16 Aug 2023 11:14:07 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <ZN0R7xotjbbjuLXh@msatwood-mobl>
References: <20230815173611.142687-6-matthew.d.roper@intel.com>
 <20230815173611.142687-8-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20230815173611.142687-8-matthew.d.roper@intel.com>
X-ClientProxiedBy: BYAPR04CA0020.namprd04.prod.outlook.com
 (2603:10b6:a03:40::33) To MN2PR11MB4239.namprd11.prod.outlook.com
 (2603:10b6:208:192::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR11MB4239:EE_|SJ0PR11MB4783:EE_
X-MS-Office365-Filtering-Correlation-Id: 450627e8-a94d-4a9c-3880-08db9e8496ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zeU1Ut8zM2tlD9l38uPp8daTPGvfHV5g2nmjdq7zP8Wc1lCQrWH30Qf63LgoiaNih3St8DwC0h6S9DVn99IzopnYmSGpHcsKZHjjzu0vis/0Y1jyDZpARNIrj/FFV3t6ha+ETsmeYXBB7temoUxBq3eRFBuEDsSKDYeHbsSuKy7EGtA36Njjq84ixtbLP8wViNirtznZswLe4Qu5gXyg7XbSCNOgEBodL2I43FyG5ImgZnMaRn1JuKLGWC0/+bd+CSHLVTJB6nbqoe5NLI/UBEtWVWUHepbMSWLC0bTnJTAbk11JXL0rQUaxaR2pfBEFM4FX9JYMSq6UOx3vcSRkdkCoZXAOixzaEcH+gk2CWeHQtvzBcRM1ZyuCZ1P4HSs/ObtfN0+sc7FU9Dmm8USQqf5X4r1Q4mmE9bE2oMTvYozHpZjv2tEDrhHWWxXQTxGxHNEzg8OoZET/e6W2FrCxrazWE2L8Fe0e+JJBMSm4or+U4oF7fxI3FUw6c2+TbYgn2W9TnTnunhcu2DYoLWZFVOarznX1Iy+uNDQi0KqpKSRwEB4gW3e5sZA2cIuXryjI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4239.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(346002)(396003)(376002)(136003)(366004)(451199024)(1800799009)(186009)(316002)(66946007)(66476007)(66556008)(41300700001)(5660300002)(38100700002)(8676002)(4326008)(8936002)(33716001)(82960400001)(2906002)(83380400001)(26005)(478600001)(86362001)(6512007)(9686003)(6506007)(6666004)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bjU3RUd6U1J0ZmJYUHhHdWM1ZTNzOWVFRjhZWFgzU2crblpFYzFuS1kxVHZJ?=
 =?utf-8?B?NmhaZlJWU3dCVSswT0J2NzBLMHlVa29sMURjRFFjMWlpNnQyMHlRZ01ISGl1?=
 =?utf-8?B?YXJtTnBjN1RmZzdHL3FuMW5LdkZXdjNyL2w4MDh4Kzd6WFBRL1J6UjNOeElr?=
 =?utf-8?B?WW1OMFkvc05uTk9OcTU0RmgzeDhsdmloVjM5c0FicTBzZmQ4RGkyQmdYWEFq?=
 =?utf-8?B?UVJjUmNZT0xUZ3BiTUZVd0FBWjV4QUJhQm4rOWZPVUkrQUR0blBkY2NHY25z?=
 =?utf-8?B?VEtxbkZoYUlWVWlLWitJSkQxTWlKYlU4T1E0NzNsQkZTb1Z3a002WkdsMU9N?=
 =?utf-8?B?YzFsSWdlbXZEbVl0T1A0NHlsYVBRaTJZRFVuK3M5TjFTcklmeE9pVWJYWTU3?=
 =?utf-8?B?ODNtL1N2OWVXVW9GRmlRUXRwb0FpNXNjNFVvQ0JVZ3RENVZsYzJrNzY2TmZm?=
 =?utf-8?B?RVg1elg2Rjk3L1Y4cElETHhuLzdiNk9sQmhtSVZrN25QaG9yakF0Ui9FNG1S?=
 =?utf-8?B?cEJ3K0VVeStjZ0c0d2dlK1JwZUZaVm1UTjNUd0RrWnN2NUJleERVV1dUb3Jx?=
 =?utf-8?B?Nm1tQ3B5eHJwVkttV3Vtc1Y2ZWRNTHdkV2VETFhKeTVrM3hESDU5dWd5UHRs?=
 =?utf-8?B?S2VrVXk5eFlkQTRuZlJSbTlqRXdzYzlxa3FMczJCblRaRExwZ1BJQTJWUXAz?=
 =?utf-8?B?Vk9XeVE2UEQwQldCNDlNYVdoUXRndUptRERoVDNBT1U3NGd4L3I3cit4Mlo0?=
 =?utf-8?B?aG4wdjBtaWtqN1Iyak9hYldGeEhreWduOVgyVSs5Rm41RTJiQjlvanJ3Zlp4?=
 =?utf-8?B?dFFXam11alBWZDY3dWpqM1VXZVQ4SDdZbHJ0UGlTVndwamE2QkxMNlljMSto?=
 =?utf-8?B?Y3BwdE90UC9wRTA0OEZFc0hVN09xS1BibGNGaG1Bai91N0R3SnFLZGV4dE9W?=
 =?utf-8?B?anRUK3BNNGREVmpXM1V4SXJUS3NvbjMyOGZWdGxiSWk4UGtSVm9oTGVFOGt5?=
 =?utf-8?B?N0tEZ21tTW1uY3czS0ZxWDBtc3ljYjRHNXZVT3FaaWwwWGJ1Y1FYMGRMV1R2?=
 =?utf-8?B?WEtTalppTmk2WGdYdG9YNWFmMkdjUldML3A1UGJvaHJsR0I2SHhQWkZGUlUr?=
 =?utf-8?B?TnNSNXhLYTBQTk9QMjJUNUllanI4cjloZ3dyYkZ0V1NzVjFPUG4ySVNaTHRB?=
 =?utf-8?B?b1VSZVdOUjlMSCtYVUZGZVBjS1dJU2kvM0NpenJnR3lFRjI1M1hvbitNaG9z?=
 =?utf-8?B?VGphNGtya3BLaFpxY2RQYkIwbzc1VEJrYWs5ZFc4a1Q0cEQvQ1k5VFRHUWJi?=
 =?utf-8?B?Z3U1dFVxUTFSbVE5TzZMSGo1cmtlQTB3Y3doNGNTQXpXSGE5UGVkc0IySG1V?=
 =?utf-8?B?THowQnIydWo4ckh1Z01FVmdmQXV5QVJIUHpqbnM3bnhLNjZ3M0N3eHlGM3Uy?=
 =?utf-8?B?SHFySXFIaE4yU1BKSENEQUpXUld2eWhITW92dUY0dmRJZG9kV0RYV1FicXhq?=
 =?utf-8?B?a2hSQ29yWWtCN1AyRGY2TXVPZzVRZDhva3YxVkxTeHhIdjdhNXlIYlVVb0Zn?=
 =?utf-8?B?eVhPU3Z6TWVqS3BxUmV1UU5VWDFtb0Y0V2ZzeVRiN1hUQmNLdVV2SDU5VFMr?=
 =?utf-8?B?UmYrb083V0JyenBoY21MbVJxZHlYM2xvd0JzYmEyd1ZIRFM4eHdmNmcwcEhx?=
 =?utf-8?B?RlViWC94MXE0cFJGa3JhYjZPVUU4ZG9qQXBkRDEzRU9vQm4ybjZxekJGNmxl?=
 =?utf-8?B?bW5LZWV3TEc3c3ZoNVZDMUJrV0pMMjZNM2NnYnlJK2JudXlscXZncS84VHNV?=
 =?utf-8?B?dUNjSFQ1SGhHelpDQXM5ODAvRURzNHg4VXArdmVTUGRsWUdTZEx4dGp3eXk2?=
 =?utf-8?B?KzFvL0Q2TGJhbDdKZjBLaWRlRlFPNGVXOGVvZ1N5cGJWOC95RmRSbnArdjFl?=
 =?utf-8?B?S2xXOWNkbkpUSnJEd1RtcElvZ3JTMWxJV1BiaWhJY2FDRGluNkd3TlN4aHhG?=
 =?utf-8?B?dFdrQ0FoNkt2cTdXTnN0citic0tBOHhjQnp5TkgyVE1CUVVXaTR3TjdkS0U0?=
 =?utf-8?B?dnRQNTJybHVrSkcrZnF2Y0VWaHdudEVabC9xZzdDcTk2TFRwaW9aZFhWaXFW?=
 =?utf-8?B?TDZ4S2NDNUFkRm5Id2VVQkttU1U5UVhBZ0JSYUtQQkJmYmJqM01JNkdRbm1O?=
 =?utf-8?B?Z0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 450627e8-a94d-4a9c-3880-08db9e8496ed
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4239.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 18:14:11.0447 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zbU0XODHLuUcjGhvKHpyMqoPhhJ6pct/NWsJBQJz0RDgiBpD8dUvdPH4XXtcY5RJkEhf+HLrn8GvJBrdtQdJgijV7xkvnVM82vU0447UyMA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4783
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/dg2: Drop pre-production
 display workarounds
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

On Tue, Aug 15, 2023 at 10:36:14AM -0700, Matt Roper wrote:
> All production DG2 cards have display stepping C0 or later.  We can drop
> Wa_14013215631 (only applies to pre-C0) and make Wa_14010547955
> unconditional (applies to everything B0 and beyond).  Also drop the
> now-unused IS_DG2_DISPLAY_STEP macro.
Bspec: 44477, 72197
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c       | 2 +-
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 4 ----
>  drivers/gpu/drm/i915/i915_drv.h                    | 4 ----
>  3 files changed, 1 insertion(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 763ab569d8f3..8c81206ce90d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -726,7 +726,7 @@ static void icl_set_pipe_chicken(const struct intel_crtc_state *crtc_state)
>  		tmp |= UNDERRUN_RECOVERY_DISABLE_ADLP;
>  
>  	/* Wa_14010547955:dg2 */
> -	if (IS_DG2_DISPLAY_STEP(dev_priv, STEP_B0, STEP_FOREVER))
> +	if (IS_DG2(dev_priv))
>  		tmp |= DG2_RENDER_CCSTAG_4_3_EN;
>  
>  	intel_de_write(dev_priv, PIPE_CHICKEN(pipe), tmp);
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index ffc15d278a39..a408ec2d3958 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2203,10 +2203,6 @@ static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
>  	if (IS_ALDERLAKE_P(i915) && IS_DISPLAY_STEP(i915, STEP_A0, STEP_B0))
>  		return false;
>  
> -	/* Wa_14013215631 */
> -	if (IS_DG2_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
> -		return false;
> -
>  	return plane_id < PLANE_SPRITE4;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 7a8ce7239bc9..7f8fa0eb9dc6 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -689,10 +689,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	(IS_SUBPLATFORM(__i915, INTEL_DG2, INTEL_SUBPLATFORM_##variant) && \
>  	 IS_GRAPHICS_STEP(__i915, since, until))
>  
> -#define IS_DG2_DISPLAY_STEP(__i915, since, until) \
> -	(IS_DG2(__i915) && \
> -	 IS_DISPLAY_STEP(__i915, since, until))
> -
>  #define IS_PVC_BD_STEP(__i915, since, until) \
>  	(IS_PONTEVECCHIO(__i915) && \
>  	 IS_BASEDIE_STEP(__i915, since, until))
> -- 
> 2.41.0
> 
