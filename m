Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C3A8C1C38
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 03:51:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA9A610E366;
	Fri, 10 May 2024 01:51:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NzB01OP5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D89DC10E366
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 01:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715305875; x=1746841875;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bEk1c+1uOGXyS0SlYhtWpzuHE3PZLZ8K9FCYsE2kk00=;
 b=NzB01OP5KxWxiLm6cr8r0B0kkmJLQadED2M0VzAAHRmjkzW7EM7Qf5v9
 /dRY/P0bkzalPiaEvEsD2b55DogyrH3XuwYZu08fwZFA2AHKZuJwEoYrk
 4kb8m4mR9n21O38n1btjK0Aqo/4isAM/A4ewIdKMEvOQYtnIczhEQIijb
 XiLy7/SGpNQzbMRwfN0yZLeuAIqUXaiHyg57KzXAJixjAChcHCmCMcIvo
 5YtrWtDAUX2ofS5VVn9THLyWWuIlX9Q54wCOeeWRRr8tPhzyUoXlYWHwN
 H1xiZ0DioQgn3nBCuylcN5KGrRYQqQyHqBL1oZuQ6KgQq7DfNE5+RIx3b g==;
X-CSE-ConnectionGUID: xCueCjAWSBOkIrNFfxYEoA==
X-CSE-MsgGUID: i94T7GBQRlK5Vkw95p2eJw==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11106074"
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="11106074"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 18:51:15 -0700
X-CSE-ConnectionGUID: hKHJ4lVqQBKf+D6fpPIkyw==
X-CSE-MsgGUID: wb09Zc3bSiOt4f6FTGcibA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="29391802"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 May 2024 18:51:14 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 18:51:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 18:51:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 9 May 2024 18:51:13 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 9 May 2024 18:51:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SQukRKN2MXLDGw4UDsj/hOTPUzcKMtq2Ks3m6rUYnBeXA1DlGHqaA93VkuO/UOYGbsCuX8nN9xkEaSYTSC7uR5rg4ETbh4PwMDEV9cUP+ds60nDlIvllz9JgX3chj7DWch8YL9tEMRtcw4NmiYenMgVCNfbrqQpzoF7PMX4u+YjrfdVQRisCMhkZjDWsIIxd4YteeA1K2cGgbR5IaLpP7upxKR/G5WJ/G/3T4us7/zNaxe2/mV/Vs/JvMTp7ey6zDalL/7hZ7CtrRi95Rilwzv5SFfCuv2wtZNdqHT+T/NRiw8j5vN4vHDdS7jIsMtNiGn9un9f9ayWEa1eIVzQRNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wHkTPtBzkRISnYl/14kmtzMJu7l1G2zz6B/4qI/NE94=;
 b=Fo3apTtAAa1vZa3auks108ED7VWleqUAOHaJQVMss8fWeV0FrqJLYpWcrHAZRmS2hRXZNqYvVSKYZrsngDGrUJNMvc1CUozb08HmbqcCZ5m9LKq+t+E/bV9J1JhtGTiCCQn3oUEbzFYbsKK27eJT1qaS9FOavxdgM2pVXfhHm5zFHnw4/Y2QC8EAfJG2o5CXTfKjvFGV/rw1s2KsWrf0wF5QdfkZ80Rc6hVbY5QnZfSi4RVeSoMFyxobiummQjf+16uLb0jSdOdceivS4o0ijCE1vq55bScuQYuJ0TfoMt0c81qj6O60DZwcOIj45Rw898Tldbpe98bsP7d6+f2AtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB6947.namprd11.prod.outlook.com (2603:10b6:806:2aa::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.47; Fri, 10 May
 2024 01:51:10 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7544.047; Fri, 10 May 2024
 01:51:09 +0000
Date: Thu, 9 May 2024 21:51:05 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 07/10] drm/i915: pass dev_priv explicitly to
 TRANS_VRR_FLIPLINE
Message-ID: <Zj19ibsjoztIqGcV@intel.com>
References: <cover.1715183162.git.jani.nikula@intel.com>
 <fd8b6a7c71ba908a55a7b40dc54a1d4cf920056c.1715183162.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <fd8b6a7c71ba908a55a7b40dc54a1d4cf920056c.1715183162.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4P221CA0017.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::22) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB6947:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d65a1e6-1bf1-40e8-c5b9-08dc7093aa2b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?fE07Sbif5gpDa1WXKMcjl5SCd56vR8T0U/SW/a/yQB4oVynpkrTHXMfMJpPk?=
 =?us-ascii?Q?H7PT3nyJ3SFFABmz4gfi5DR6hXxhmrR2wxILccbBsdGeKZgiD9wPyQaircf4?=
 =?us-ascii?Q?kRx3YFCJO/BtbsikVewar0DUzsdKDZB+vgZCFmhEvFQAG00tdVg0B8K9Pa8Y?=
 =?us-ascii?Q?BidAHI0txtVdQtfb2fgAlXY79/1w1xUN7J8ui4B9/DAenQwOT9eo/Z08jwW/?=
 =?us-ascii?Q?pxpsS2EDsnaV2FvjKV+hDhM8Sb88cwzBqUVv6nOtGdvY+fiU2LCPbiS3sKNx?=
 =?us-ascii?Q?8hQQMJfij4Bz41AMe/eC6LT9EPiTnJnK3f/DqpMbIsn1QWwBh8zJWIOFokvl?=
 =?us-ascii?Q?UC+JrvT+rVoEBTydax5XgRQV06GhHn8w6JR5tbESC+PyXOhdGYfvSXrC8mMv?=
 =?us-ascii?Q?VjFcEsdw3f33R4txV3FDFm8NLP2AwtbghahtCdG/is3csyPk1VaIsp7Pksp+?=
 =?us-ascii?Q?qqsgAMKYb4ZvljHsTOhOy3fpUZl9Ug8XUA4/7Wy00UqxsBfQYm+mzQQ4wd3v?=
 =?us-ascii?Q?FKf9d/eVhZvMmKbd4C3rt6jpR+37GqmYEJ3dLtwJRKiWCaRJXlEMt2NYLpRo?=
 =?us-ascii?Q?3sqWF/SGDQJN7USG3oGsZ6k8JSoHyKeSTZrGCvfXezu5bIyex9ktfSBmQL8g?=
 =?us-ascii?Q?2FBYcGu2279HaDtjtU1MZty8M6JAL2y0LJS1dmEmiCZXcaazQCeRwe76O0HF?=
 =?us-ascii?Q?ITEzAofZxYUv4zj19lFtLjZc2XoRz2edkQQAsDWTmNHkFoOBhpsCrQYRqhfR?=
 =?us-ascii?Q?hYSan31FQJyVJrY1f/Zx/1NUdVNFr7JGV6zCuZpOh9VAsifLfnQELmyQozyk?=
 =?us-ascii?Q?0eOQwlqVZunYjNTS3I/FfaftWabGtsHyjJKZbrRdzwkMK1GokydhNFLpap40?=
 =?us-ascii?Q?n2rTFUNBlkTT3kobPa9vlnau1rrd8jNPBWNltMgxqTj91CfR7Od1KAM4UNG9?=
 =?us-ascii?Q?6i2uwKL5UMrdL2DAsgAOHRA4jVH+K1dx+yc0gYnhQuIUsNul4nthlnycvg/V?=
 =?us-ascii?Q?ll5Ga2CEYwEiA9/VNuMzsYdJ7eyafSfCkY1NHyF1ULXwOmkm8C6wfGQnVe6t?=
 =?us-ascii?Q?uXH84JYZeZ6nb8aLA8uLUyNUTHpRdVUqT3eHuf8s/m4ATfau/GJHhAZhhIAs?=
 =?us-ascii?Q?tuBvOtd/euWvxfRXUrhYt1rPx1nH4aNTS2TA4twZScLbHWsuokFNQlYn5DvV?=
 =?us-ascii?Q?J0N+JnsspiSfaPEXfWu5T2PqaCbPaQEY+3J7gY0OA/LmPdAiKgCk/9Q7jqtF?=
 =?us-ascii?Q?zPsMDjDBjDpUcyMJCkfNyfw4jGiN4rpcd5Atgt600A=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JzqncRyRIr/pxJINUeYwmiIrViXNv/uvTv+1FPU5fotVfYgPWl3XaVhmnoBE?=
 =?us-ascii?Q?94yiCqywhQ8ZCn3kdP3yP+80EpQ9JkAC4LPX/n0KNGzd1hGIKJGp9kMNBTNr?=
 =?us-ascii?Q?W9WT0uKYY02lWERf7tuaBW4cx149BGAIteOd7rBlnUVWm/1ooE2z6OWkArVs?=
 =?us-ascii?Q?bCdYVsf7dk6Y+wC8ZMtes7vI6axSye6QGSp9L9QBj9xebgCR7XdNdtxJn5WK?=
 =?us-ascii?Q?cUaxb9j8FQYTGK8RWwGMpRHKw5f3lT09bXyKdjbJ/a4QCx2gJFYyoFWC5nmd?=
 =?us-ascii?Q?BAJy8+v5AcgxDO54QC4CE6CaE4wzLzJnhJFHKF9tUWF51pOAlbFxian/P7f3?=
 =?us-ascii?Q?Y/fMYQu4/ye3zpjnVlgSfxEbqamsSzu6sUxuGVwkdSxEqy7l8+WToednrakV?=
 =?us-ascii?Q?5z6f5GCoWmDbo9wbXK+uzAcGhRKBeGZ18DlWQb7v/xGW1qn9BCBuX6Oe5Z0i?=
 =?us-ascii?Q?s+mGBXQ2n0ZDSpFIf8o5F9Asly3/39ugDqQ4cJP4RMYeGyiZqL9U7j2xZQi9?=
 =?us-ascii?Q?sdVB57ypFuIr3Gyxg1WJZuFAPLCrbUvbhGIlQqDFClJWk4V3a3K/pFIthi4Z?=
 =?us-ascii?Q?ouc+eI0SuoqwGe+KUtWjyOfvY2jsLBQQOry6nGDIiP6U/z9lVmXVzCY3kRME?=
 =?us-ascii?Q?0jcVPT2BV0KAX7nSRKjUiyx7tUTk+cfqJ0rtArdxO58pTs2ZOjdc9lweMcIx?=
 =?us-ascii?Q?VOG4vil4MenAn8o5RtPQJ5z3AIIu5w6c4cZTzOmBKtoSma3MR/pmQknZEve5?=
 =?us-ascii?Q?9a855NOrDeW5v9/aJYb+g43+wrUu8ucTwFevIa+4IAqmvC4fpu2FGxWgMXnQ?=
 =?us-ascii?Q?HpsqGtd53jbzIlq03sYyKSiho5SW8ez21yDEm/v7fsT/twcYY4HkXDQnznEl?=
 =?us-ascii?Q?OFeov8d2Fy2V+c3PuENdtLJ9GXmt1Nn7v9D2maOKJ+RsVIUV6LAu6Z+aNe1V?=
 =?us-ascii?Q?/dxF23E34HNMOWjYoRkgfEO+wos/vZ+dcGpNho4T8Sz19IHbMdFSWdTHs0z2?=
 =?us-ascii?Q?U3t8GmXADNB67Fv1xIJxaKDKpq88wmwhnRrddpko6VHALNluZh8TuFMJQLu0?=
 =?us-ascii?Q?npSOU3utkIuRbNchT+f79C0RJodRfrj3vLJolxw0xkR0VTTT2uAaipns5ptQ?=
 =?us-ascii?Q?zTfTFZcKipteyLZ8UCoT68210idyQIG1jmRx2mzzZ8nBmgyTCJnk9P3zP/7B?=
 =?us-ascii?Q?hmk4Vi30vBjGLn0fICjbJVMYv6h0ihb0Qy7RnguoIJYOMBgiMzAk/a9NZIvg?=
 =?us-ascii?Q?U5EHyQgZiB/dFN4AI6fteUJoFnG8lM9k2JHymQzrr6SX3yAFAxCdLVZUQ4ob?=
 =?us-ascii?Q?3KsuvvGHgvlkbaERmUYQ+PsgvBj3lJlh+8y3wUB1Xf1X0Txj+C/3TLr8JCvY?=
 =?us-ascii?Q?yerJCP8Xjp5W+epvKrn9Q8pbTbHuZHuydb3ABZl2ng33xNeZYVdTYIBGSvut?=
 =?us-ascii?Q?O/9WBhSPo6SGt3TDb5Hm4rrjOCXgvjpnUTgHCwGcbYdiU4OB0o4huLr1ny+i?=
 =?us-ascii?Q?im6jeL+q7oXzJhP68Xx10jNwmF0JW/EZPbl+TC+GVXenRCm9py+67FxUtE0+?=
 =?us-ascii?Q?EP+mQzLJq+aq3sczdMp6dQb3anjLbDGc/EbCMsewrrHh/yvzWS4ud0RHiK3B?=
 =?us-ascii?Q?JA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d65a1e6-1bf1-40e8-c5b9-08dc7093aa2b
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2024 01:51:09.9205 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E5Ad8//fBARUrzF1ncw7WQuesBER5xklmmTyeGrwfAaTGMshIfrPePaBDU5qdbVCSXB0bvFTP//VyAlfJytodw==
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

On Wed, May 08, 2024 at 06:47:53PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANS_VRR_FLIPLINE register macro.
> 

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 6 ++++--
>  drivers/gpu/drm/i915/i915_reg.h          | 2 +-
>  2 files changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 05cbd6e4fc60..e7709b06b92c 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -224,7 +224,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>  		       crtc_state->vrr.vmax - 1);
>  	intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
>  		       trans_vrr_ctl(crtc_state));
> -	intel_de_write(dev_priv, TRANS_VRR_FLIPLINE(cpu_transcoder), crtc_state->vrr.flipline - 1);
> +	intel_de_write(dev_priv, TRANS_VRR_FLIPLINE(dev_priv, cpu_transcoder),
> +		       crtc_state->vrr.flipline - 1);
>  }
>  
>  void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
> @@ -311,7 +312,8 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  				REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, trans_vrr_ctl);
>  
>  	if (trans_vrr_ctl & VRR_CTL_FLIP_LINE_EN) {
> -		crtc_state->vrr.flipline = intel_de_read(dev_priv, TRANS_VRR_FLIPLINE(cpu_transcoder)) + 1;
> +		crtc_state->vrr.flipline = intel_de_read(dev_priv,
> +							 TRANS_VRR_FLIPLINE(dev_priv, cpu_transcoder)) + 1;
>  		crtc_state->vrr.vmax = intel_de_read(dev_priv,
>  						     TRANS_VRR_VMAX(dev_priv, cpu_transcoder)) + 1;
>  		crtc_state->vrr.vmin = intel_de_read(dev_priv,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 745ef9a32d88..9f63d68eb9a0 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1302,7 +1302,7 @@
>  #define _TRANS_VRR_FLIPLINE_B		0x61438
>  #define _TRANS_VRR_FLIPLINE_C		0x62438
>  #define _TRANS_VRR_FLIPLINE_D		0x63438
> -#define TRANS_VRR_FLIPLINE(trans)	_MMIO_TRANS2(dev_priv, trans, \
> +#define TRANS_VRR_FLIPLINE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, \
>  					_TRANS_VRR_FLIPLINE_A)
>  #define   VRR_FLIPLINE_MASK		REG_GENMASK(19, 0)
>  
> -- 
> 2.39.2
> 
