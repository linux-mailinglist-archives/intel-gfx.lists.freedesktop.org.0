Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 880AF8FEC0E
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 16:29:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 065DD10E1AB;
	Thu,  6 Jun 2024 14:29:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O3xgzaPp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B1DB10E1AB
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 14:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717684155; x=1749220155;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NKz4SteCVXjqlkI0UaqfrLygavgvUVKx8ICA4d3jlm0=;
 b=O3xgzaPpnDnbrx3kjXJAmiR/GHpHZDmqSAo+zx3NqHkY2eaUea7jXEZs
 KFrVw/uUkFFzyj5z7yLFjGKUILstdx2KsrQ6n7RrTKYWMVDlGx04oLmYB
 223ybMs66smjVvFmQQKWxYCxNGksD3Roxd71/voc2MFzVNAxGrShbshVQ
 fx621+fjydThVWjCS9Yr6OTG+81L0giDwGCrG54eG2kPHbE59OeeJ324d
 kquDCLkKAGSVj4sCWZceJvUsJvgzrnDRHwyB7DeQVoFZvsF24WBUsPUtL
 nnyygjsj3gGp5WYjrB24XdeYq8STtF9Qew0hAh+Z+d1OSCdDhFiI/R8x2 Q==;
X-CSE-ConnectionGUID: vKi5QkV3TkS/ZwuED3ACAQ==
X-CSE-MsgGUID: i3dGKZv9R7utB9CjVMUsiQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18146858"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18146858"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 07:29:15 -0700
X-CSE-ConnectionGUID: JoXifiCcRJa/FPDBbUWlxQ==
X-CSE-MsgGUID: 7QoM52/2RxyMDQJaLYt9Lg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38056047"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 07:29:14 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 07:29:14 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 07:29:14 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 07:29:14 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 07:29:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W3rNHOaBOf1UKiCFZwTB3dW11tJJKijuy294iVpTInjx+Jog8oMjVxhdiRb/ic6988gTJZZQimqExvXqJdRU+O+nN8d0NiQDhD6lRbUPxrviQvcJdQkyEKcUflgTYPy/9rO2kCXKnutCxvbhdv4+R5rZ2FksusqIzMWWsDqn0OawA1HBvTajMR1H/I8w6iyqQLFC2woCp2Gvqso971Wy56wPql+LCigUKzoZcbrjgT3D239SlBzJQrThltuipoVWnlrOXpv+rSw62PzhWkQmmCp7Yrn4CESUHjjd7Q0olY3L7zNxXvZ8v1u3mS+AnsQjeJqvMcHbBR0SU1jh7qIJ2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lnhvzQJ6nG8U0Qv5SKsydV4hVqppmYo6rYfh1POgBx8=;
 b=RP8LInpfnwQEHAVnQwp4BV1yNy4c8/kooPMasj7IbopdlPyBFsB7eE6lU38AXcChXnSyTJkHvzfrun7ABAcaq8Dxh2LyBvGDQ82ipUZmeJvJOQdCd5xqHjnwG0vWgIw/mxE/YfrRqw1U5A5ybTarf7Ac/5tU5doHqabzr241YmnLADOEFcmSFc8yH5fjvqwpO1vXFKEuAxc9X3jCsZCwTHjfD/oIwkuczbbxDbmq8lpzTn4lbyapvQAqsrQiwRJYjcTZC3Ng3CGGJqnjbwsgQzFGLezKSbh0nND2q+dxQVcNtGaaz5Al6VPJFYy5+bolDRlBd1yKqvH325HcEupPpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by IA1PR11MB8097.namprd11.prod.outlook.com (2603:10b6:208:457::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.33; Thu, 6 Jun
 2024 14:29:11 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 14:29:11 +0000
Date: Thu, 6 Jun 2024 10:29:09 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Matt Roper <matthew.d.roper@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [PATCH] drm/xe/xe2lpm: Fixup Wa_14020756599
Message-ID: <ZmHHtTSqGj-R1E6t@intel.com>
References: <20240606072459.982249-1-tejas.upadhyay@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240606072459.982249-1-tejas.upadhyay@intel.com>
X-ClientProxiedBy: SJ0PR05CA0079.namprd05.prod.outlook.com
 (2603:10b6:a03:332::24) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|IA1PR11MB8097:EE_
X-MS-Office365-Filtering-Correlation-Id: e6b8fdef-7c52-4765-3289-08dc8635087a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?uL5TEbWiRR0w/IQDLSUbqEI14TVFZTod3KpUDuX3kcjGBb+lmNF78gjJxTE0?=
 =?us-ascii?Q?HHYuJLHAtxf2uefz6f12iCK2GdrrGQ0XIBF9oT4uIkyVlBS1j39P3brDtAhM?=
 =?us-ascii?Q?krKbqKjKuftc+A/4oWHB5SVWMt4ShnpZ4N89uj55wDKHDdFHdyiUmDRxStj3?=
 =?us-ascii?Q?xZddHXSvhPolyuEkphkUbpqeE8h5tu7nHKOLYKox3ap5CB80gULJvcNLEH5q?=
 =?us-ascii?Q?up6vpM3iGuG8d8POgleHIqCG3qfHpZAlRv1Zv289mYIqiNcQZOn3vvRkUoTd?=
 =?us-ascii?Q?o/84yov5l6Bkro16Wzm3YVxP2xf/TLMo2zodq2MmMdK9+zyKVP8i4q2mZBeY?=
 =?us-ascii?Q?YL6tnft6/aKCm4P32uW1Tgv1iBjpoJ+Qh5+EH1lZ/crKHtegpCtMK3iS83dn?=
 =?us-ascii?Q?31uZE+ehLs5AveJi6wQjlBK8hIub+DvGAwqyc3xMiDpaEuBfDHqO6DQ7NDUk?=
 =?us-ascii?Q?v+ZDNpKuqRrGVasS8r+DUipCpEPfv1NGIbv8pyqeCZ12rq0ysCo3qysXUu/a?=
 =?us-ascii?Q?sAw4cELgH2CSpMh/h3NysW8Qp+QI8FYuNjJ9cLH8I6NN6mqBgeWkSCv+QFNH?=
 =?us-ascii?Q?vED+UAt5l8eTRfcEEOzgMo/b6UPFveQa/EZ1x9iRiH8p2FWQ+umTW5J2wc1r?=
 =?us-ascii?Q?t0b5BobAsBmy19aPXMIcqsBHy7+nqi8e+WoeOdz6rG7Tub7hyJ1OIqj1IUsW?=
 =?us-ascii?Q?hV7bPFW+ZwCHHAc7Bd2LWfilIhCIfmfTfnsefDFxl9Bb5h30gzS1PpOvRtXf?=
 =?us-ascii?Q?U5tgrcZdp1YUp9tQByblcfnao0w7+3giLeOoX0XWRdz0Vp1na3A6/K/U8PSt?=
 =?us-ascii?Q?wE9XWPk1TnsgbgGEVEixDMJGxJLEX6Z8kXybKsfx7BdEGz2EQmAzkEm+Kkmw?=
 =?us-ascii?Q?HOAIkR5777fCQ/gV3ZM/ca8Q/IwXpifueMgNt2x6x1jPrFPMFv2SavabuSZu?=
 =?us-ascii?Q?NxT3pq8lDyqisLyRVvbzT2D8m7XrQwZnVnIoO854/NdRRXrb+jHheuYYRSeR?=
 =?us-ascii?Q?tSEkeW6o/OHSEEtGAserE7Kw2w7CKYx2/LTo+EHVesH16ITTR6jZlxk1mrtc?=
 =?us-ascii?Q?M6WkAma01wJqg40SaNhpVp/HY0xQKAnLHo5Mo1bQP+gNEcSjp/J2CBy4+b4i?=
 =?us-ascii?Q?dPTGj5zEcsucNBvVJY8jrRI204snOvFifRp5YFK7EzakKJOpPW+OMR3jS7c+?=
 =?us-ascii?Q?OWZKLB2guaw0eIWP8vUmDSuF4o/IY0/nn50zePPEig+vXaxy02z6lRfLLYSQ?=
 =?us-ascii?Q?IWe+v64CPTvG1Ymj0C3w?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Vqg2hNhm0UP2XBO5UMA8msv2qANrd+ySD5e+gyZtfd+qmbUUn5Z73V8hcPvF?=
 =?us-ascii?Q?440q8WHBbepvHEO7WUGN1ijsaH4W4SkcvFlpSm2BWxIbBTvzD7llAQjxidAE?=
 =?us-ascii?Q?/apLuItA/yl7/Rj31gG1faqmuaf10GMgnS3P7ofFn7OhxfRbyjWxQlWSuKhK?=
 =?us-ascii?Q?0CKY97TWNfOWrPGlvQq45oQpYexqkHYDFWPIMo5+adOWr4iHFhpmJQjetCfW?=
 =?us-ascii?Q?kSoT2UCNrCMZgYB1iitIP28g80tlyZ5Lo0p9PUxodRDwwLaRSGYNmbmYnjBg?=
 =?us-ascii?Q?zaldGEA6sEwXfk1k7ERToIuIX6fmy1dHnm30HtQ3kjg9spXy9CQofeXLR7b4?=
 =?us-ascii?Q?gVvWJ4G34rGHI0otBVC1BT07RooRiOpiyzpqqX62XxvgggC2RiWhatrCe16u?=
 =?us-ascii?Q?KVk80Uje8BuFzP4rQeVx0Xy28yP8UiE/Sg7psCmELVmNecsFsovrKl7TIael?=
 =?us-ascii?Q?CyDCDb8WIf6CIALI73hte/GJJ0wrgpBtx/ch3EuH6vzSok501mg3Rs9YB8PZ?=
 =?us-ascii?Q?HHIMZvSSrg2wRNeoRdu0XabzPaH4ninmeSmMtrVxoGd34tbEYjDjNYKVh2xO?=
 =?us-ascii?Q?OFvZa6ekS3I3+N9L35e0b3N14Gi7SdK+c2tsjO3gbkmgm9Rmljz4rGSj8SWx?=
 =?us-ascii?Q?YwrqtNpJzUQI/55nnolZHQXrizUM7cdqC63hHChlSNJZAy1YRKlUKQbx6UWY?=
 =?us-ascii?Q?+6XrL7xEFGxL1+evADFpdbP9GE+ZiDMTxDZlddD8piW6UVTAXhSxI8jAs/T+?=
 =?us-ascii?Q?VDMzN7KoepcPxUzN+2PaOmeIs0gqb5Wnx1VP06VRCGDupQ7h5Wt1ADvjdpWf?=
 =?us-ascii?Q?MvxhbLhK48zh/RHN9KyzHhQTQo97z2BSQzfcrptlr8kneHFN9La6TMOgruHd?=
 =?us-ascii?Q?bKbq0pl0o/cyqE5lYw0shk6R4DgI/B9W4fZ8zneawmJiYY7XxYje07R228Lf?=
 =?us-ascii?Q?46vB63ViibWR2X7JBY8Dw9hvo0mCYdFP+jP/wR0h3oE5/3J8T+y6eqkSIs2N?=
 =?us-ascii?Q?ZmzGgRZprLMVo+zMnoOrwcinfFNEiE3N3cXf5q7Q4DeGGORZW7NgkMEZ9nQ1?=
 =?us-ascii?Q?kv/cnZlpj43Yw0/NFCDORIpAuFVJ2nv1xjYpUP0BDYMfLJZn6ZXZSrgXcu4L?=
 =?us-ascii?Q?QsCr3SejpTzayBoNsHID77rRMQ016jJn67Q1oVyiJc8TM2M8zdaVkNDBLWw8?=
 =?us-ascii?Q?EKiqwi68qL5MHNGoNDhFb3QUshelPIkZ7ja2/Qhsx060HRFD46Tzu+Js1AUn?=
 =?us-ascii?Q?GKy+tT5mNVk5kh1P46Dn1DLD+uo19fpSm6aeD72Dj93rggsfTqXHj6hRicdi?=
 =?us-ascii?Q?F+Vm/fZBmscYor7EOcD0cXxF+lbxoEeusCnTOldeBnI8gm5ssPmkd3cMR1RL?=
 =?us-ascii?Q?6KTczD1IoccN+QBABjchuRDjSyROFC0y4+2JbWxCiyjl4bVvrk9+tL96XxsK?=
 =?us-ascii?Q?h2UpD46bDmwF9SzmGD4JN5ntPaapHk5AGNaCpt1+kwLoRxQbT2jsI86v0icn?=
 =?us-ascii?Q?HtyX+gM6PxRkEaEXAl9TzFyq04wA/845/hW/qX+HanjH30ns1GdyHb4kvxSz?=
 =?us-ascii?Q?evz9lUry8oZUpobrwX/ELsNUCqpG0ycizn38WeqG?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e6b8fdef-7c52-4765-3289-08dc8635087a
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 14:29:11.6815 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Nuyc/fn6kk5rSeF5AO71axrANhDqFFl4DRiWtPxRCfG/nujDPOB6L99ZOX9NDgU7uVITVnEj3rn3SW7CB/SCMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8097
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

On Thu, Jun 06, 2024 at 12:54:59PM +0530, Tejas Upadhyay wrote:
> In the current situation, Media 2000 is along with xe2_lpg,
> thus WA is already covered.
> 
> https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2016
> 
> Fixes: 131328aa5699 ("drm/xe/xe2lpm: Add permanent Wa_14020756599")
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_rtp.c |  5 -----
>  drivers/gpu/drm/xe/xe_rtp.h | 14 --------------
>  drivers/gpu/drm/xe/xe_wa.c  | 13 ++++++-------

Please send this to intel-xe mailing list.

>  3 files changed, 6 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_rtp.c b/drivers/gpu/drm/xe/xe_rtp.c
> index 01c32a932780..eff1c9c2f5cc 100644
> --- a/drivers/gpu/drm/xe/xe_rtp.c
> +++ b/drivers/gpu/drm/xe/xe_rtp.c
> @@ -324,8 +324,3 @@ bool xe_rtp_match_first_gslice_fused_off(const struct xe_gt *gt,
>  	return dss >= dss_per_gslice;
>  }
>  
> -bool xe_rtp_match_when_media2000(const struct xe_gt *gt,
> -				 const struct xe_hw_engine *hwe)
> -{
> -	return (gt_to_xe(gt))->info.media_verx100 == 2000;
> -}
> diff --git a/drivers/gpu/drm/xe/xe_rtp.h b/drivers/gpu/drm/xe/xe_rtp.h
> index a32645f5f80b..337b1ef1959c 100644
> --- a/drivers/gpu/drm/xe/xe_rtp.h
> +++ b/drivers/gpu/drm/xe/xe_rtp.h
> @@ -427,18 +427,4 @@ bool xe_rtp_match_first_render_or_compute(const struct xe_gt *gt,
>  bool xe_rtp_match_first_gslice_fused_off(const struct xe_gt *gt,
>  					 const struct xe_hw_engine *hwe);
>  
> -/*
> - * xe_rtp_match_when_media2000 - Match when media GT version 2000
> - *
> - * @gt: GT structure
> - * @hwe: Engine instance
> - *
> - * Its one of the case where we need to apply workaround on primary GT
> - * based on if media GT version 2000 is present. Thus this API will help
> - * us to match media version 2000.
> - *
> - * Returns: true if media GT version 2000, false otherwise.
> - */
> -bool xe_rtp_match_when_media2000(const struct xe_gt *gt,
> -				 const struct xe_hw_engine *hwe);
>  #endif
> diff --git a/drivers/gpu/drm/xe/xe_wa.c b/drivers/gpu/drm/xe/xe_wa.c
> index 26b170a0cdc7..ce6f1b0ca808 100644
> --- a/drivers/gpu/drm/xe/xe_wa.c
> +++ b/drivers/gpu/drm/xe/xe_wa.c
> @@ -677,6 +677,12 @@ static const struct xe_rtp_entry_sr lrc_was[] = {
>  		       ENGINE_CLASS(RENDER)),
>  	  XE_RTP_ACTIONS(SET(CHICKEN_RASTER_2, TBIMR_FAST_CLIP))
>  	},
> +	/* This WA is also needed on primary GT when the media version is 2000.
> +	 * In the current situation, Media 2000 is along with xe2_lpg, thus WA
> +	 * is already covered below. In the future, Media version 2000 can be
> +	 * used with some other graphics version where WA still needs to be
> +	 * implemented.
> +	 */
>  	{ XE_RTP_NAME("14020756599"),
>  	  XE_RTP_RULES(GRAPHICS_VERSION(2004), ENGINE_CLASS(RENDER)),
>  	  XE_RTP_ACTIONS(SET(WM_CHICKEN3, HIZ_PLANE_COMPRESSION_DIS))
> @@ -705,13 +711,6 @@ static const struct xe_rtp_entry_sr lrc_was[] = {
>  			     DIS_AUTOSTRIP))
>  	},
>  
> -	/* Xe2_LPM */
> -
> -	{ XE_RTP_NAME("14020756599"),
> -	  XE_RTP_RULES(ENGINE_CLASS(RENDER), FUNC(xe_rtp_match_when_media2000)),
> -	  XE_RTP_ACTIONS(SET(WM_CHICKEN3, HIZ_PLANE_COMPRESSION_DIS))
> -	},
> -
>  	{}
>  };
>  
> -- 
> 2.25.1
> 
