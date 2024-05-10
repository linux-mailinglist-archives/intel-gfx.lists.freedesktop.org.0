Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5E68C1C33
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 03:48:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21C2510E2EC;
	Fri, 10 May 2024 01:48:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SgIq+s0+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EBAC10E2A6
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 01:48:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715305710; x=1746841710;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=jhdGZfgreINL6kBozovmYcCAbSMY/iV/oaOGm8yDLfo=;
 b=SgIq+s0+GaI5RhhnmQLT77ivovuYCwradaU1sZ/Apy3RS94E6DGME1i/
 xvf5xvlnnFfr/cAANCivakmbTHB+ne+rzRO5CMn8zwZtZ2YeoXHGx+I1j
 jX57PJJ7e2865iX9S5xuIIgpY3u7Cjo2RpRZ1AiriaxrlRsfCIst+ROL3
 NJ+rsiMb32l1DFS6i7SIxaoYOVOtCuxR/nMpdKWU6E+3Nonz+mZIieFOT
 OCICofcRmGpzLxP3OxbAdaxFgkVEMkBIw8t9bF7IVv/qVpvLOGnB4GRCU
 c5FKXiVAZTM7UMmULRRELzWI02cVxPwKsE5TF6Wx1e9OsaSBztKmY1S1w A==;
X-CSE-ConnectionGUID: LnyjyAf0Ri6Qt6ANzsXjCQ==
X-CSE-MsgGUID: 9L3nqN0gRsGRnfw3ThXXjA==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11105828"
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="11105828"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 18:48:30 -0700
X-CSE-ConnectionGUID: 6UgVDfMJQ3SAz2TjGMOh4Q==
X-CSE-MsgGUID: mLYjmm8xS8Sw6q5HlN1TwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="29391225"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 May 2024 18:48:30 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 18:48:29 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 18:48:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 9 May 2024 18:48:29 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 9 May 2024 18:48:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dikcY7NWSukcFIjDoFMuQiy8iCsth0IK7IkIR/Z8uXgQmwIJGHXLIwO/hq76zuLH2FNfemRpYUmOTe4SrW6G0uO76+VlX6cdzlQ2xI2HZle/3ft23JNYLmPru6gZN7B9v2A0NaanbvyA6sFL0F/QdFBIaOpEtQ2sYO1HwSu+JAAsHxUAuaT5NSyFwTJuOCjk5TZ4oZNbp0ftR0tPhBUGQvsvJ87IfimxElot7Ph4Cbq+svIA96O9aOMq9aKkXOkMPakhWZG8hHulvtCKzFu2utceBWXlT7WyYu4zZJ3t1GUoEr5nRD7ZVzgrxnzEVtEFhFHQosLMOfsme3WuQ01Z8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qJzYhbIH1DnzSDt5T80LbMsqbs6mQGOyAVjCzLTLKgU=;
 b=gY1Fuv2xp9dq53Rl7qbk0h771sfYPPUXn/FLr7Yl9/wc/dlnH8SfVkGuXkQFP4EDekJgCWMhM+JRtpyb2vC+z1OezJsF4wwmPn4dt1v2f+NFfKacSfFLV/S2u1K7dijuiu2fH0GFacE2aynkeiMd99ycHiG80s/Z/ePVxiHsENDPv3XoBqYGITsRl2ni5VhRxcWfb4Q4JA6glt5k4/kb6BdfRZjLgLIuU4lVY6ZAytzUWSUntkdz7xJgUV/3tCoueUtyz9q5vjgO2GIyvrYAbtT1z+3rBHyI4tyugZVETYO0/toGGLFcAqFbyA5vBNI+XKL2gr4V8vJbqQrBbJKRDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB6947.namprd11.prod.outlook.com (2603:10b6:806:2aa::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.47; Fri, 10 May
 2024 01:48:26 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7544.047; Fri, 10 May 2024
 01:48:26 +0000
Date: Thu, 9 May 2024 21:48:22 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 02/10] drm/i915: pass dev_priv explicitly to TRANS_VRR_VMAX
Message-ID: <Zj185tiR46Ptk5-K@intel.com>
References: <cover.1715183162.git.jani.nikula@intel.com>
 <6256642f1943b87650fdf600ef08f6d3b8617a87.1715183162.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <6256642f1943b87650fdf600ef08f6d3b8617a87.1715183162.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0183.namprd03.prod.outlook.com
 (2603:10b6:303:b8::8) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB6947:EE_
X-MS-Office365-Filtering-Correlation-Id: d2b6180a-5796-4866-4378-08dc709348da
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?45KVjXXCSuW7mwX1P4SLnnq03xuwliJc+hi/+XFW0t2JfgXgDFVVcLSg0fFL?=
 =?us-ascii?Q?4tehSyTQ30NN/d/9B5aYrpkB6yiartD9/syF5syJjOks/VkGk6jDLEbOyPb6?=
 =?us-ascii?Q?gD5T6PlH+wLFzIx8cCR57KQ6gCHe5sGCp5pKRIFJskQYUCEeEBqPR7j8nGNU?=
 =?us-ascii?Q?Rthpz8LMwGAGhme7f0fG5x9nvKxO5Q2GFtUjbvgPDXyuVEhWFpZ+MJmQ+kOV?=
 =?us-ascii?Q?NdLV5DmPW4rsNfo+yl2VOxkIiRDSJvOS39yzDeFE6ccFzde7MFtmjm4hpkDd?=
 =?us-ascii?Q?qNqjtCSAU19XktxUBa1Hz5lrUF2Dydng0tTQlen9pknOIeHGXRsXFLyC7Gqe?=
 =?us-ascii?Q?goqpYLgipaOiy2E1RHcCxnr/HMxkicb3wsi8b3ydstevJTKOyFcQW+y99Ysk?=
 =?us-ascii?Q?JLioWK18RB8/QEOj8fRD2L22BZr9oaWCdSHhFrPIPb6b9GwCs7WvGIgYWSb+?=
 =?us-ascii?Q?OYh4Aa8/lcKz3tkVbLNoU9J0ea06axVHtIePup0kXbiErQ2y6Bh7D1hrFs6x?=
 =?us-ascii?Q?ecnnPCcx5lATEX4awGifHaNUIGnvFyz2Xsf6D9jRokrXR9I4j8JaJ/F5HRH2?=
 =?us-ascii?Q?Yc2P7CRKmtOD7bzXHQilWPMADNYqTO6pPv5ZRFdqW07ghIpJKfaatRHchBLH?=
 =?us-ascii?Q?drLQQnyMs898TFKmX2oCwUSf6C8IfP2iFHt7N5nM/eYsUgVwlSXFUHXgmdbF?=
 =?us-ascii?Q?bRg1R0VTwL+KNQnE6rRFAFOSe8LTPcyzCJ8qvog2R2xxeQbcnTZzXVWTEoBk?=
 =?us-ascii?Q?XEnDDfGzpy52CNo5zWoKYsRt1AhjXMV58/3KV4MclLcqGq0bT7t2Jl9Z6Zsm?=
 =?us-ascii?Q?5YaRDHIKAHHQ3zu/snXQifZ9/0tBRJkJ1v62G2Bj3p2hki05bmm4jVSqAYBG?=
 =?us-ascii?Q?p4qIKXcoOxUQhTZQsYgifp16JLVxEqhT9ylpUPI5wFH+PNxInJv0qz8ee0Bd?=
 =?us-ascii?Q?z/+/1pf4m5kRKPEV2CsU1nV76KE9uAYP4Kzxdn9BiSCDiqAq63rO5wOm/Dh7?=
 =?us-ascii?Q?RIwqnHF1natJkvGat6EGjJdS62VokI6Uo9blKB8pcWpqS8Z1naCNUXfIKin6?=
 =?us-ascii?Q?sF5+LzA/jnLSAqoxU7Dp4Rig14k+sQtWlJ+xC2GGIRMnrnQGfwyJKrAlUCjq?=
 =?us-ascii?Q?6LEx1Gavw9rXFKb0JV9IYtuTXogdb8quTBA0Q00b3WeLBz+OYHZahZHwjAKK?=
 =?us-ascii?Q?n+MeKKBTVuEt48sd2fFMp6Wfh+BrJh2F0ZK2ufaDTP2aKMSrZTNc3JugKuDx?=
 =?us-ascii?Q?4o+coVc6VP3c7rPWhmLCQXuOqFwrNpXhjBeYRk+CLQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HePADfy+DGlbzdDvepQ2TDchlSrhgG5VB9+nYRo8YcEOs+hay6MxS80CPABO?=
 =?us-ascii?Q?xjebpL2B5JVjlr5lHLN3M/hZ+e5yhMAWPLPZi/2R606cz2m0u+DRX9sWqVSw?=
 =?us-ascii?Q?TVe3PB5ENzY5AnHPhU+7aSgDwBlwAYRZOR09IAV6cmv1IVGWEdflCucaEAe5?=
 =?us-ascii?Q?8jE7QkyRw3yuHAl7RMtO/vXqK3eA9QpASALjKWorptx2MgB5bu3JS4OY53I0?=
 =?us-ascii?Q?d6pWCFjCQ7oxnBJnZkAu5bXwmjBjjSy/J3LsAdfMNTOWW9H3EszcWVb6fgRF?=
 =?us-ascii?Q?nHfLfh5m/k4o0vnqFEd4sUglL1Yqs5VjqFzABdB0CXQFQX20Hx9nfpHWivaz?=
 =?us-ascii?Q?25HEUD7+8wpyLYQS3jPduO3A/un8wRY+YpmBuD09+AUGJb6htwA4vyNw+MU7?=
 =?us-ascii?Q?IZg4Q3DRAvQ8qIIro8jm+xjTGfYzBCDd6R0cV6p1CrCtQJMDOrNSSfrVtxYV?=
 =?us-ascii?Q?n/zMElwrDJoKS+k7DGZPgXEcgxz3Gy0fcciCRVIL1Gsl4V7eX2GqfEdu041y?=
 =?us-ascii?Q?1mBBh/edZfbb/yKJak8b7SYAEB70NY2pFdyzu6FPlEDbTprjTdVhOKrGRO0Y?=
 =?us-ascii?Q?pYwCzoJoA6l037fiCpZw3/Jyw2b7HvaUvhTdB3QSnVRtMJ9hVOf9OM7q+xOT?=
 =?us-ascii?Q?iZpONYQ4ouDl7Y9XKwSYnBqvJLIg6Nhn7ID1tjAvGw9zHnc0K+BQaZghKBMr?=
 =?us-ascii?Q?iLhIRTQx35EtzYhcaBwDb/fPKyvOcnxTAaEBVo7VgBmlgDV7hG2KiJJKTnm/?=
 =?us-ascii?Q?5nalJsWughRLF/DLnOrYwbaD2UelzQ4V/dUgizifk+JkVtk/tvgBSRWgFPdF?=
 =?us-ascii?Q?mfLLUcVrKoCzoKZFktqqzAdKYY32BVPovMroZ7FPKZQTlVxIpwiPr+x0wBen?=
 =?us-ascii?Q?wCJOWwxPX48Xw7KLOEyMeC/rr9RfTyEkmOPare/0sIkwBgyWN3C8Z8gOuQWr?=
 =?us-ascii?Q?PXBRtNrWEhdfvZDo02P+rhvNwG3H5BjwyR5kyznnhJ4jQi/yR+SA026TZAK1?=
 =?us-ascii?Q?L7LZ2Ov+72cLtsfR2Cqo8fyouEr5iGpZV6WOh0negAMio/bUEpU78DnITCpQ?=
 =?us-ascii?Q?1GdTa+xyn7nfnLlGSj7qmFcwbxvVh1Ghwj/En2b1xPqJzux/AwMm4BHpn1tG?=
 =?us-ascii?Q?cXsJ0wwW0qnB95saXzHf0mEANUyMQg2g3k5y7bvh6FxLxbRNiZVrAlQl9Ul9?=
 =?us-ascii?Q?uLOsmwaZcuyFY6VrPH8t+qHPLbYmInNfw8NCThcKLIG/LS2tTR4O9VVsQiln?=
 =?us-ascii?Q?YGfCW0pl7gO146WQltex38fPyXwX++iYhdfWlFJB4Ntw+w8CzTGn6RFoRgCL?=
 =?us-ascii?Q?92PS/hiin68DLtfl9j6vKHslmJE7JVk0jASDobNYzTpDynH6goWaT+fyvPxL?=
 =?us-ascii?Q?o4fdwBzM0ytiZosD7DaSOfX1o9cdU2iEas0+dDRSqtDjeZvkwQKjCtiXFkoQ?=
 =?us-ascii?Q?hGCcOPUtrSO9qrOGi+doj53TF6PpPoYpcLbsCjCig12+udHl6utU/cKl5tEy?=
 =?us-ascii?Q?VggjDSAIgSJt6c2BsjrFKfDnTJCFMpsWV6PDwVbOQXCt8iOq+/W08MAHfnz/?=
 =?us-ascii?Q?EsQSVx/2hwzig++YslhRiMdhPzpcJvUUegVPxn9/nXyec7Y0fsYfb5AfHCQP?=
 =?us-ascii?Q?Lg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d2b6180a-5796-4866-4378-08dc709348da
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2024 01:48:26.7579 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C3WVVgVWsRZiBXy1RiimXDF3uJ8neeHI851LGjOPAfK5YzGUj3twHBP05uMX6OxYhuMsXTyrMqL0+6V2pAHXjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6947
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

On Wed, May 08, 2024 at 06:47:48PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANS_VRR_VMAX register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 6 ++++--
>  drivers/gpu/drm/i915/i915_reg.h          | 2 +-
>  2 files changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index b1136aee775f..d9024ccf6098 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -219,7 +219,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>  	}
>  
>  	intel_de_write(dev_priv, TRANS_VRR_VMIN(cpu_transcoder), crtc_state->vrr.vmin - 1);
> -	intel_de_write(dev_priv, TRANS_VRR_VMAX(cpu_transcoder), crtc_state->vrr.vmax - 1);
> +	intel_de_write(dev_priv, TRANS_VRR_VMAX(dev_priv, cpu_transcoder),
> +		       crtc_state->vrr.vmax - 1);
>  	intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
>  		       trans_vrr_ctl(crtc_state));
>  	intel_de_write(dev_priv, TRANS_VRR_FLIPLINE(cpu_transcoder), crtc_state->vrr.flipline - 1);
> @@ -309,7 +310,8 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  
>  	if (trans_vrr_ctl & VRR_CTL_FLIP_LINE_EN) {
>  		crtc_state->vrr.flipline = intel_de_read(dev_priv, TRANS_VRR_FLIPLINE(cpu_transcoder)) + 1;
> -		crtc_state->vrr.vmax = intel_de_read(dev_priv, TRANS_VRR_VMAX(cpu_transcoder)) + 1;
> +		crtc_state->vrr.vmax = intel_de_read(dev_priv,
> +						     TRANS_VRR_VMAX(dev_priv, cpu_transcoder)) + 1;
>  		crtc_state->vrr.vmin = intel_de_read(dev_priv, TRANS_VRR_VMIN(cpu_transcoder)) + 1;
>  	}
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index a178e9f6804c..693b4e562d46 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1247,7 +1247,7 @@
>  #define _TRANS_VRR_VMAX_B		0x61424
>  #define _TRANS_VRR_VMAX_C		0x62424
>  #define _TRANS_VRR_VMAX_D		0x63424
> -#define TRANS_VRR_VMAX(trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VMAX_A)
> +#define TRANS_VRR_VMAX(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VMAX_A)
>  #define   VRR_VMAX_MASK			REG_GENMASK(19, 0)
>  
>  #define _TRANS_VRR_VMIN_A		0x60434
> -- 
> 2.39.2
> 
