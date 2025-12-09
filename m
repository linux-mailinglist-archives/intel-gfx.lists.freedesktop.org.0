Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B20CB150D
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 23:42:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 362A510E4F8;
	Tue,  9 Dec 2025 22:42:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aCDYtLwO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8502010E4F8;
 Tue,  9 Dec 2025 22:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765320129; x=1796856129;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OeAOeU4kg2sNfDyvIdeCXTyk3wY9Vwt9utR+IFEnHF8=;
 b=aCDYtLwOrGR90qYz4qhMdSKAe4UksJEXtorlsCUlZ1r1xZI9KOlAfVZ5
 suJ1v9qEqg3762U19074S4A4kT5zIvJrLhyWJXR40L+wtz20PdltAj46x
 Wosf6ztKQmadMeWyvJ/eScXpI+7+K2CClABAWJ0cidaqYl1V/KglKvtov
 OgRn+tRyFysa5bsXc9dvzx8lZ5vrnSgOhhVbdMqcwivV789NBCP1rqS86
 HBpA0N9zil7mY7fMzv70Ki5KD+GBDEWQEOR2jYfrGv7ZJ4mVhP2xf+EUD
 LmHqAQyt4mKni/PPspIe5cWZJ3H1nzJ0tsqMnh0DFqI2ni3rkFnNzAT1F Q==;
X-CSE-ConnectionGUID: 0xJUwHgLTSWpTxscxnnFFg==
X-CSE-MsgGUID: E5ULjTCbSLygtD7GblZLWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11637"; a="84700129"
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="84700129"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 14:42:09 -0800
X-CSE-ConnectionGUID: tVDBi1JOSdmLJnvyaL/4TA==
X-CSE-MsgGUID: Dqf9YeHMTOGnsewp7JKerQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,262,1758610800"; d="scan'208";a="200514788"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 14:42:09 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 14:42:08 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 14:42:08 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.25) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 14:42:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vo/zzjYKiIcEiMShCa3U2dIO17FQ6g0fuDBOpqAWnSJkuHIBpqrHEp0U84CEj/bmyBGYoGPKat0+CL0Va/o6NiTAuX9Scy0n5OAJRLT1v4D+SKDiQ8DAQsoqJ7tpTTnihrd3BMnAaW9YYMwsHD0kb68cKk2rR8Qp/QrXwuG96F5hA7PmD4cEN61pOLrqQO923R6sbf/UmNowlO/w54yCKvSWhsnEI9XfoXqdn+aZnKk6NTw0kiOoZl1PaGAat53ci7Lge3fhKcLXHAUmS4QaQyyej/ZH6xSBucg5XK5rlRXgVQBNEJitodPnEDRmsx3ZBZ5fGlB9954AT9fB9iF10w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s019CPp1Fu7EbWhkDtq4G1dXQvv3z0R7QHHSBfNGABY=;
 b=YjJ+im8lkZ/16q/9Qf00QkqGIdINas0zgOIAXh74D4xZC9wycgKmWQeSijIJ+0m5S+LJg9bsTH7Y7ywGp6lsa/JUY79MIaK+1g/4Y11Z5Y3hUmtfFkviM7329umvn93clG0+wMR5iUSoAfsVhsvJHHAMC/N5YrU8ugs0W2UgPqmqLvuWXLW2bf7lVD+ptqA+5XfoXN/VR9Y6Y8oReXjoDPdiklNv+vuPIiBXtrox5bY5EE2+ATcFbnqgdOxzVAIH5x9nxwGBKLnK1XWZMG8Gn8xEUuIOnUN1xDjo5tRUGe5ckSAZ0SFFApdWPErpkaIX99CsutHDYId9ogkstgHgHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6508.namprd11.prod.outlook.com (2603:10b6:208:38f::5)
 by SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.7; Tue, 9 Dec
 2025 22:42:06 +0000
Received: from BL3PR11MB6508.namprd11.prod.outlook.com
 ([fe80::53c9:f6c2:ffa5:3cb5]) by BL3PR11MB6508.namprd11.prod.outlook.com
 ([fe80::53c9:f6c2:ffa5:3cb5%5]) with mapi id 15.20.9388.013; Tue, 9 Dec 2025
 22:42:06 +0000
Date: Tue, 9 Dec 2025 14:42:03 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] drm/i915/display: Fix intel_lpe_audio_irq_handler
 for PREEMPT-RT
Message-ID: <aTilu/CAEuv5Uz1H@lstrano-desk.jf.intel.com>
References: <20251209151319.494640-3-dev@lankhorst.se>
 <20251209151319.494640-4-dev@lankhorst.se>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20251209151319.494640-4-dev@lankhorst.se>
X-ClientProxiedBy: MW4PR04CA0380.namprd04.prod.outlook.com
 (2603:10b6:303:81::25) To BL3PR11MB6508.namprd11.prod.outlook.com
 (2603:10b6:208:38f::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6508:EE_|SJ1PR11MB6180:EE_
X-MS-Office365-Filtering-Correlation-Id: bff0bb66-db79-4280-fe22-08de37742df6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?T+1Q63ckMY67fyFhwwoOlC/jKyd2G4nRY8LdeGw/SUGW2qjRoeYPlHojv5Y5?=
 =?us-ascii?Q?29r7hirvFtUsjkMQBWIZDJvZ6qoQ7SMqr7Ji/yGfUlfXqVfeFN/74IZOb8nC?=
 =?us-ascii?Q?q2F80pQm0O62tEWPRPOvdGIoj7FgqaBoPop3M0hlbh0j9Qo1yYO1kPleSy/l?=
 =?us-ascii?Q?sQqZoCuAONzO2Fkr4yL2KE5UPveLCVexPWm04E/1ubGuQqKCWnUoX083fQIp?=
 =?us-ascii?Q?26AwhCBHxZlx9O1rcOhs3fM0ihVu4x+LrewIPHG0SVegmF1edxBJpx508TRI?=
 =?us-ascii?Q?fnPK0QWb+jDvzXojsKxBkM1UOJZ3WCVCLiiVUhtoGbBVl8IdrhO2ck2ezKQ7?=
 =?us-ascii?Q?3OZ4v6Jwex+exiWwrY2iUH4dx/wG3m7hpzH7krqa/WW5EUukyFzQbFv8LgVS?=
 =?us-ascii?Q?AL3Ufr2cPehSQjsUr2ybPFlDmXnJtQ1OIcNqOi0PJ/XxBEw2YCt4xNdJYyee?=
 =?us-ascii?Q?kmaYKvKF0gu9UhP5+7tyqPw6zSuuirJ02NLfqF0YmMhwTmusGUMWQZt2x313?=
 =?us-ascii?Q?aR9owiAlbSYZzrkuXsD6z2CkLGSmrdXxlfBmuY5rfxIQwtpJW7amvc8yO3zG?=
 =?us-ascii?Q?y2c5k+6twLQkoHcfqmgoTQddYAhVRMMaaaLca+5y6wR/hOFSNrbxMkQ6Pef7?=
 =?us-ascii?Q?9kbyauszPVumwCJvBNe1bzszBJaz7vUxo7uEq0fdaxdXh1ldDXH1LUPiAi5s?=
 =?us-ascii?Q?V6bJSBzcUmWWkJNSCdvuUvTXKg0iBaWBjSqxJpwY22vdpP7LeRRk7Vkl8rBX?=
 =?us-ascii?Q?jd1tUQ/CDOK7fa5OcuvAiSh6tsXNlJFp0zMdm5wOQbSI2mwic7wJO0rU734f?=
 =?us-ascii?Q?e9G+I0Fz7+8dv90ZWcggq5xbrAV+KHfZBhGHOGdslGydjoqiKR/dE++mg++B?=
 =?us-ascii?Q?Rf7dw9n6UTsmX3+hqzCvBDO0W2qjWF+Wb/BEslN0XDO8SSjspVNwBzvMZFwI?=
 =?us-ascii?Q?/qHLwXvA8t+cjgzsTMjH+fZbhrpZBAKGPF9MI4uIZTAZ3csPsLYLHNjeAKtS?=
 =?us-ascii?Q?RZEJ+hzXr0u8AUIqw3NGumwsJ3G4gO3LMBmqNycuzUp9j+Kxu12ePslDlIvP?=
 =?us-ascii?Q?Xk5p/yDjyJh/ZvarX9JJlEaYn68JbNDbjlsGIRe0qywrPZFGs9BWWTGS8swc?=
 =?us-ascii?Q?8kjSZA09sEbKJbMaeKEabS9COqoDejULFijzDRTt9TheVfzJnlWiMpOVGUTm?=
 =?us-ascii?Q?ybrMIEV/o7shq1v8glJUw9laY6sbGxil6yj0/s4zfKS3+/oWKdylZiNehNNS?=
 =?us-ascii?Q?wZbOLON2SOfLcXTxXrg8DMlt/XPFZafGeiVwn7auUANXtOkJcKYhuXrWTsuq?=
 =?us-ascii?Q?srB88Vf7khWaVTEMkPhN3D0rpb0z6ZQ5wldwMvlnxKwJzjpFsVZ4+L3UQu7F?=
 =?us-ascii?Q?CPbsxMOm+AVplu48lhvlhaEP0wmydlG0J0IFqaBffmmoz30XXZtAAHtSe6fJ?=
 =?us-ascii?Q?y0MHRfJdQG/9KfX1s/idER3aai3LwySL?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GM+fsDGa1Iv3WRdtf7cJmNeSKCbZT+2MV3hzJGnUEpe2iYU8GKg95yS1erjx?=
 =?us-ascii?Q?ZYDvfJomyZQCEgyyo+EYnt5u3Vlr9uVU0f8yJN90Y5AqzqKbO5UxhHg8ByVa?=
 =?us-ascii?Q?BUPwVVxrTLzEs+5J2X1GcRdodATtu6o9MAgBsG5d2F7EbKUuSGAztf39iz+Q?=
 =?us-ascii?Q?+zF32JNWxXWsf1xu7j1DAkmyK9H+W/gBRlibbthzRm3mOivtYPRGiiySFPuS?=
 =?us-ascii?Q?TRRJsTpnnz/X1wAqtXLIxv5IOM8pZr6fMKQTdbXPK9VhlxaYRhKnwbAfKzUt?=
 =?us-ascii?Q?FYbbEY3QGWQBxTBwqtyHRz8dv8G1CY/4+dOPfGeiOJI+7jiDZGV7LXfHiZP/?=
 =?us-ascii?Q?hdq5nTpzk++zA6YMIxmOTQLCJg68oCj44xODHucr0YdpZZTVZipQvH+jVjMw?=
 =?us-ascii?Q?gHaP7knO+VKsEP+tXOvnvwLfWV7MJ0ruTft0isxGA3We6/ajWP4Zt1Bjweoy?=
 =?us-ascii?Q?YCsISw/63zscTqjGxrFonlZ5ARItisIKipthUkfNikww39bb2r+EF48a5a0a?=
 =?us-ascii?Q?bDENwx4/JsLtI/gdFfsFLtaLeBcBXBoRH1yA712eWvVxw/1ANoO5N03E3OQe?=
 =?us-ascii?Q?JOmxpl8Ak4dQJLOWBJQeqEQI9qcimilOtKGQxGSNAoaBbUO5erbUso9dMZ9I?=
 =?us-ascii?Q?EKBg385/ClGo/dzqS7gqjsSUSTSyWSZ2/KX8eugG/fWa71VVZT/wLt4O7TKy?=
 =?us-ascii?Q?Ze5Qe6FPrnlEMrnsx6eQZzvV/Hx717DffR7jnm1kf8/p8OZgPrjpVGCui0vW?=
 =?us-ascii?Q?GLm8aThif3xYPhkUdFdb00pQ2/y4N8d2s4LMpPdlFXT/UnopcHrjmvnHFHRc?=
 =?us-ascii?Q?G5VtXXtMRV5jtV8eemK+QOTEfDBOUhI4v3rVT9ktP7d/Q2c9n+sr/UjUaXMH?=
 =?us-ascii?Q?WusBNi9Nh+IRr1/Zi7yTLDLNcFLkB2y8DC1O1+Z4PuX0OtiOKm4awqzzvspw?=
 =?us-ascii?Q?/G9PSkKD2/Emjyg4f+HH9NXyTByWaD4e95hQAbtyvsCCEuG4oTWcA9fJcUkE?=
 =?us-ascii?Q?cnEUHgO9+1OfBFR8Qr9rvL0H65HweVUyKTLeQkz3YuX2tP60laONXtaVaDFE?=
 =?us-ascii?Q?ZjiU/h0yxzjwNjZFv2zjlRLrqDsx/NkdcQnLBmAB/9sGYprr4mKdFixChjqj?=
 =?us-ascii?Q?EFneAr1N92ajoC72lCtH2sCvscN38PMydnfcXUjkt/duTcFOcZDOHK6oDFum?=
 =?us-ascii?Q?uZppWeigGt8OvGzstM3ECATutYphwbTYIoCXxyfmya9EjdBeMXHASwFTI2QW?=
 =?us-ascii?Q?ItrW8DldyJ1WbM4bCTF//0/1cEwHQyCGpjfQCJ4Il1VdfgIIARpHbK+ZN9Nd?=
 =?us-ascii?Q?8FboqE/43tz7vbAjk64BoBP7iZGm+Dqdrt1n4SuLIvF/V+HaG8rTiqYadAbT?=
 =?us-ascii?Q?vuEERDJtIoTAXclqy/XaY/BmM582OLZvIe71vqK6iwdSIio4OxEsO5UQd6Fr?=
 =?us-ascii?Q?7NBFA1AXZPMdEkQEsnUK0hw82bDHLPTgedTRIKOZ/IA72mqKFKf8C80d2pOl?=
 =?us-ascii?Q?5dSJb5bNPEGqcU9e9tmF7UAgQhvxZ7iz95c4bkj043mHluxG5IureS5TG0uF?=
 =?us-ascii?Q?IeB8zsXaPo5emb2K1vbTWf5tmKpl/QC4zmyh+VW89IurYzN6AVdTvb80KMGf?=
 =?us-ascii?Q?dg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bff0bb66-db79-4280-fe22-08de37742df6
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2025 22:42:06.3026 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UBOJyq40nJlIA9VWPWd2emKVPLs1IsPQ6ymEdwhtqUP8EESdsElXTLa/McKSkBDe8VsrosvV9ncURz3W3SBTkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6180
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

On Tue, Dec 09, 2025 at 04:13:21PM +0100, Maarten Lankhorst wrote:
> No need for backporting, this is only useful for i915,
> and it doesn't compile with I915 enabled.
>

s/I915/PREEMPT_PT
 
With that fixed:
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/i915/display/intel_lpe_audio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> index 5b41abe1c64d5..172c0062237eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> @@ -262,7 +262,7 @@ void intel_lpe_audio_irq_handler(struct intel_display *display)
>  	if (!HAS_LPE_AUDIO(display))
>  		return;
>  
> -	ret = generic_handle_irq(display->audio.lpe.irq);
> +	ret = generic_handle_irq_safe(display->audio.lpe.irq);
>  	if (ret)
>  		drm_err_ratelimited(display->drm,
>  				    "error handling LPE audio irq: %d\n", ret);
> -- 
> 2.51.0
> 
