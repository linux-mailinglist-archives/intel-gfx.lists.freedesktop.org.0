Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C392165CAFF
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 01:41:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4944210E41C;
	Wed,  4 Jan 2023 00:41:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91A4410E41C
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 00:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672792868; x=1704328868;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=umPJtxbioBYRJAVQLmWdB9l8FIv4Xkd66/tlSRMMPrE=;
 b=fSBQSBpfsNziHIVUUKsRSHd1GKqPBGS95cY2tzjcW4j9FBxhyrCjOMW1
 LYxdy1IuZ/fYlbnV0aMw9kFHc+OTGXIthpilh/4oPCaBN4MQvBsXg4RXp
 2bifAoqQgd8UMz+NbUW9iDG/Zn826suEXfXLPuhocUbw9iqTw7SM+CfFR
 Y7POHLi7AKQc2gzh4ekJUnTjZwEZRgWW6Bgejd7iqpZ/1yU7Tav07MGmL
 47SntQR+Gu67q7o1m08AMPmavOGVunk5IZOVAdbIZYlNdaTXyR/K0V/C1
 vnoAH1ZvDd921hEgehfZ0NuljFZIiYgDAMBT0v/qZWUIwgAxsAoT9+5dY Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="302169960"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="302169960"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 16:40:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="983737386"
X-IronPort-AV: E=Sophos;i="5.96,297,1665471600"; d="scan'208";a="983737386"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 03 Jan 2023 16:40:53 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 16:40:53 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 3 Jan 2023 16:40:53 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 3 Jan 2023 16:40:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YZACJcI5weMBJoh5DaHzjEB6QdpzP1sK8wf9FyPRlwH1uT2baQkiq+OcsQgGgah30Yaso4t65JTDxAA37dTUI49Uizss62q1Wsuz9+xqghjQ0NbQK/KQaoQxXLN8QT4tB3J4kA8Tt+BGE0FEc1XlscxDXRVjqCMynqwlqkeJ7Cwdk7f4tBVwSgLiXyu01X+Vg5FWfoVJMNjKCGGCn/QWW5E+rAHAFukw6K8ARaUblAtpeqA2sYsh2+RhIE+TbMNDN9G0K3CR3XfhbR3i3W+ptX20Ie8FRpS3HxrAIXZjYoC71SLUsYdvPLGtBz/dMOe+LofUCyyMSW8UIA+Bi8vn5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LGsP2I/8hw7xowutnoe773UKy2TE2fVZWYvAPxxjZzM=;
 b=XXLTVifSEVPP2Zm2qAFtwf/kNZVaXwdKgkVyIiJS4CSNf7Gx8yOuMygi4GqqMpfES4rU02RdT+zL25+iO8LmNThgVuIBnSktEu3BgJ431DWuueTMQDzwbpIh9I+p9xPupg5Eit4tKUzPIBHV+7pv1miJlros4CVp/bUiMQ5c3dJ1ce1ed6PV0Yl5bgX5jaW5G+3Zn9vc/bhtY7zGGJd8t8A1O27in3ouz/9u5XvSEqaXUr0mt217vZ6jIbp25oJfkLNyrAnm7YI9JEjrkO+H3SFnTQh5bY9bucPmCV0hz8AFMqwlc5jogYen2k1bJMVjjmXzU40YaXjfWcpfDITcDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ0PR11MB5769.namprd11.prod.outlook.com (2603:10b6:a03:420::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5944.19; Wed, 4 Jan 2023 00:40:46 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%8]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 00:40:46 +0000
Date: Tue, 3 Jan 2023 16:40:43 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <Y7TLCwIFhQJ/cJ6s@mdroper-desk1.amr.corp.intel.com>
References: <20221221132118.1822697-1-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221221132118.1822697-1-jouni.hogander@intel.com>
X-ClientProxiedBy: BY5PR17CA0067.namprd17.prod.outlook.com
 (2603:10b6:a03:167::44) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ0PR11MB5769:EE_
X-MS-Office365-Filtering-Correlation-Id: 5add8054-c71c-4f52-bb5f-08daedec513a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: e5QvKrfWKbQfiqaeQcdIAa7NNoUmTGeA3e6lWxPbz/KyAwtU/YbrjG48BVsfa2qTxUK2DXhFpy9PqizjzVy4s3wWuzELuXREDoudOAaWLHt0g+eTCfxEYX2p8EsvtANzaAY5iC6n1ABxbLTf6yAOPNNd0ev9w4JyAUDtWf5c9m2VOuJ1J87EhbcMXpiZMXqqxiSpgCMt24e4c7bawFTAOrZltD4NOolD61ZQgrdS1PoFln9eo51hil6aPoM6no1UGkhjvw7eyNqUx/SN+2hw+NCdANMTEuOEKWlEardc4qAfgJUARsAK0Z6OCNs3RPxk5QysG8PCz1JE9RO0vB+2ERF4ob7OFAd0kZTIudvpcVofSGY89lDLiSE1BuE6RQvLzX3nDObLsr1/hyR8DVIGSB9nt+4VtEnF0SiU0Enw4NQ1kAcJUCJ12g526HXj7L/WdCvZPqPbSS1qU0KC7nGN1zNElq4Z+1ln9wH/o9YRCpjG/Z/7CGZHx2MbOyOQwGXcXhl4l3vPYxUBWO/TZZM7B9b/knDAEVzrIhLVzWyIMo0WySPQrYyTkYdFHjUcNQ664voWbXQvoSTi2X9DuNL41z8No3/pGMu7vUNsvsAQWniVBTMOp75st1mliHOEtAsOiryVI2QyfGbldBQE2vr8Vg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(346002)(136003)(366004)(396003)(451199015)(38100700002)(82960400001)(86362001)(6636002)(316002)(54906003)(6486002)(478600001)(6506007)(6666004)(186003)(6512007)(26005)(2906002)(5660300002)(41300700001)(66946007)(66574015)(66556008)(66476007)(8676002)(4326008)(6862004)(8936002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?fExscgcb6Nd0solZ13REmulH1wusoohH/JXeecuj9+D42P78KoRPFBSW9k?=
 =?iso-8859-1?Q?fuHmLNb44cUoTHVE6IuMjr+z7bfg9PoEWUm4+n1NunrooQpMiJWERBnj30?=
 =?iso-8859-1?Q?xg9kMh7uAfxp/XzW5AQ4ZBBhGLzWAiicwPOVapB/jFmviQlDQBPRqCLx7G?=
 =?iso-8859-1?Q?v3q4bJ8e9wMMOhY2N+ubRFf4gYPgMGcQLZ+cKfM9lI2tD/U+sB0vYT4K+t?=
 =?iso-8859-1?Q?9Y34uQUpqDfoMNMisR574wo7zksD46rywDWCuqcoJAVnN/I1cWvmnFMBuu?=
 =?iso-8859-1?Q?toZlC/v3ms1UCfhB2ggEm5BqoJlKqdRP2W/RvPR1FVMTsZf8mXOLWB9ICw?=
 =?iso-8859-1?Q?ry9yFiplXqfTPWpMmhaRRZWAa3Awjy5cjNaI8VJJcHCjChgGWxYZ/p5J6t?=
 =?iso-8859-1?Q?xPvE5U7duE0LrufLk0MEe9Hqsl6qaeRxnJxHVBBj70vxzRv25MeEtXGEUj?=
 =?iso-8859-1?Q?ah26Km7Bk8ib4W/Bxcy8606uJri7eQgQwXio2VC6IiZSmslPzM8ic+0QN0?=
 =?iso-8859-1?Q?u5D8yhcOM8o/h4On6VA8DfBJN+V5Un/vMTIm77cRW2Zoz79khwRYc9IT9b?=
 =?iso-8859-1?Q?a4Osx+Tk62SVyZ7rMmic7P62xhk1esJRVPyt7jRHpXsVFZQkR6J7FyKtIR?=
 =?iso-8859-1?Q?HJ3UPk8pOaQtP1s5P1kUt6OD3RQloDU9Hhsrllfh2HSa477Ug06Vk175mp?=
 =?iso-8859-1?Q?ULven92LYVCPxx6rUAXCXJdECypBgnHVZWqLDFeDH7KxTYTUaz8txk6oiH?=
 =?iso-8859-1?Q?21E4PJKQ2bt4UnTP/HNMFPaYeM9vjS91m4Z9ZAmysbEHkapH3CPKiqNSzn?=
 =?iso-8859-1?Q?wTIioA7cmE9bcVSWRpplc7XA/Bjh8NP33ZFWIIoDH5644aSFlFH/Tg8ANK?=
 =?iso-8859-1?Q?kNM43usbuiJu6GDuN+9I/abIvEwi3zFtAex3epuNKUJ72QYaj3ckQOW2EL?=
 =?iso-8859-1?Q?zElY2XiCJfG3pAX+sukyJIPTZ6IfQNXSf0Ap36JGoZx1jhkvB+nrqY2MFV?=
 =?iso-8859-1?Q?qFnAULCBNrQQVVGop9AjcuEpVCCZJtVeSvDfLvjS5KBTxrCLFuhXfDF0pD?=
 =?iso-8859-1?Q?6AH/m65Y+szKwomAjF+BlspaRuO7Cfi4VR5tlRO0l46+qUJ2B7HPwZvyt/?=
 =?iso-8859-1?Q?nkxZxoDmPlhDeQaNmsDAF5hfRwRTDl1GwHwn+3DKSjH3QCOB6fTMWv8fKS?=
 =?iso-8859-1?Q?Ct5kj52PABss0wUWBJWf5Dp6+jj/cBRdj0kcZhEeXdQ2DWLdZIWAqZXbs3?=
 =?iso-8859-1?Q?dJqkgn+UzG4pre0hO69s8QmapA/+OPXWNKN3pu6hvyv7lrUJ2FgT6EZPiZ?=
 =?iso-8859-1?Q?MTldPhRT1a/Ix+73B819KooeNxnt6z4pxk0GGexetPX1ppNDsUgV+nACMY?=
 =?iso-8859-1?Q?L2cMjtsU5Ns68H4MUdt2OfM5JI7lNZJ6znDh2lLMeL4ohO15Ow1YQ2LRK0?=
 =?iso-8859-1?Q?AQmdV+8K+zOrY/rUgil1tzHNLkTfD9deZc2GnPUL8/3qd+ChfrY+cFXIgm?=
 =?iso-8859-1?Q?jJP5lqms9vHA95WNG52IVXNx0J6WiYj79amtmzIhnvtK+rjNZTcTwbUgPG?=
 =?iso-8859-1?Q?/yVqY9v2WZcUDQE+nfClG5DPn2qX/jJfEVyuoKaRnnULfTE9TrYDBfdeDH?=
 =?iso-8859-1?Q?1ra2b9ObfRiP+fXOm+usfkIMaiYwkWkO+qtpfY6bwFNJCb1ilGAV1agw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5add8054-c71c-4f52-bb5f-08daedec513a
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2023 00:40:45.8777 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QybWCcT3NFhQnCzOepSTIuQID8VD1cXanAl+Spwqen79vv0ycEIZxBO4gpIykU7oLkP5RFp6hB/U2UJVQ+kb6eSJZquJXtlpDzwHKQcyCgQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5769
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Implement Wa_14015648006
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 21, 2022 at 03:21:18PM +0200, Jouni Högander wrote:
> Add 4th pipe and extend TGL Wa_16013835468 to support ADLP, MTL and
> DG2 and all TGL steppings.
> 
> BSpec: 54369, 55378, 66624
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: José Roberto de Souza <jose.souza@intel.com>
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 20 ++++++++++++++------
>  drivers/gpu/drm/i915/i915_reg.h          |  1 +
>  2 files changed, 15 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 9820e5fdd087..0d01b8a7a75d 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1112,6 +1112,8 @@ static u32 wa_16013835468_bit_get(struct intel_dp *intel_dp)
>  		return LATENCY_REPORTING_REMOVED_PIPE_B;
>  	case PIPE_C:
>  		return LATENCY_REPORTING_REMOVED_PIPE_C;
> +	case PIPE_D:
> +		return LATENCY_REPORTING_REMOVED_PIPE_D;
>  	default:
>  		MISSING_CASE(intel_dp->psr.pipe);
>  		return 0;
> @@ -1197,9 +1199,12 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>  			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC, 0,
>  				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
>  
> -		/* Wa_16013835468:tgl[b0+], dg1 */
> -		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_B0, STEP_FOREVER) ||
> -		    IS_DG1(dev_priv)) {
> +		/*
> +		 * Wa_16013835468:tgl[b0+], dg1,
> +		 * Wa_14015648006:adlp[a0+], mtl[a0], dg2, tgl[a0+]
> +		 */
> +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> +		    IS_DISPLAY_VER(dev_priv, 12, 13)) {

There's another thread where we're discussing possibly dropping all of
the platform/stepping information from workaround comments, but this is
a great supporting example for why the detailed comments are causing
more confusion than they're worth.  The code condition includes RKL and
ADL-S, whereas the comment does not mention them.  In this case the code
is correct and the comment is incomplete.

If we move forward with Lucas' patch, this should just turn into

        /*
         * Wa_16013835468
         * Wa_14015648006
         */

and let the code speak for itself about which platform(s) it covers.


As for the workaround itself here, the existing implementation of
Wa_16013835468 is in a 'if (intel_dp->psr.psr2_enabled)' but it looks
like the description of the new Wa_14015648006 is also supposed to apply
to PSR1 as well.  Do we need to lift these out of that conditional
block?


Matt

>  			u16 vtotal, vblank;
>  
>  			vtotal = crtc_state->uapi.adjusted_mode.crtc_vtotal -
> @@ -1378,9 +1383,12 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
>  			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
>  				     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
>  
> -		/* Wa_16013835468:tgl[b0+], dg1 */
> -		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_B0, STEP_FOREVER) ||
> -		    IS_DG1(dev_priv))
> +		/*
> +		 * Wa_16013835468:tgl[b0+], dg1,
> +		 * Wa_14015648006:adlp[a0+], mtl[a0], dg2, tgl[a0+]
> +		 */
> +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> +		    IS_DISPLAY_VER(dev_priv, 12, 13))
>  			intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
>  				     wa_16013835468_bit_get(intel_dp), 0);
>  	}
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index cef9418beec0..a70a1b6e6a15 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5737,6 +5737,7 @@
>  #define  RESET_PCH_HANDSHAKE_ENABLE	REG_BIT(4)
>  
>  #define GEN8_CHICKEN_DCPR_1			_MMIO(0x46430)
> +#define   LATENCY_REPORTING_REMOVED_PIPE_D	REG_BIT(31)
>  #define   SKL_SELECT_ALTERNATE_DC_EXIT		REG_BIT(30)
>  #define   LATENCY_REPORTING_REMOVED_PIPE_C	REG_BIT(25)
>  #define   LATENCY_REPORTING_REMOVED_PIPE_B	REG_BIT(24)
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
