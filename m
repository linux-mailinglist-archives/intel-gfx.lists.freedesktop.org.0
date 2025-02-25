Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F48A44C3A
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 21:15:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DD1D10E7C1;
	Tue, 25 Feb 2025 20:15:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AOwg9kIB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE72E10E7C1;
 Tue, 25 Feb 2025 20:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740514555; x=1772050555;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=CqwNWUzDqYgpDv548BylVBT6QyZShtE1e7U944ULWQI=;
 b=AOwg9kIBxLDMAGqSts8M/US8sts94SXU80Ri9LEZE+KZ0Pwd1lmPm8eJ
 Jgs7sZ1RZK6fRJ2wtR//8IYqDQNoZXH/3QLqpnzt4VmTFi4L/lzhHl+62
 lNJ80lcflkOtpDbHI8Xxs3GI67PY3bJDBJWj9znJtDzfX5rh+zFARyzXf
 LXHBooGNK/N1meDak/EluDxm1Mt7jQQCDRT86AOTGXfuVee3bHlM1ggDA
 xNXVmfIdJMTlyS2uRakP4vRKd4PUusc+fACXTBIf1lY1Zz19M0wCQ7bts
 YbxtbRZdpgNj3f4yRdHX30P/2gwHC4KdDDq2dLhWW6p0G5wYfVp5pdUIe w==;
X-CSE-ConnectionGUID: UP4r7SDRQFiFOMvJ5HpM0A==
X-CSE-MsgGUID: EVK85FJXTKmebkVN3QPGKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="41476713"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="41476713"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 12:15:55 -0800
X-CSE-ConnectionGUID: HuddZAz3TLGs5sLWKcy23g==
X-CSE-MsgGUID: os/p0BKyR/eHxijyljl+2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208";a="147313756"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Feb 2025 12:15:54 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 25 Feb 2025 12:15:53 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Feb 2025 12:15:53 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Feb 2025 12:15:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ht5/UZV6iZkTwPoyX34BqS8qpNqYKW2hYPvSFBCeK6t2x5JlzgR3SjQNUujTT8wVQ/aGZ0nabgP7iRcXTkZauaU22UHaEM0BE5o3ir9hiKVsP0IF3hCiGAwKUL6a/of/DQNZTLOVLWDyx1waChgLcIm/CssPAqUmM6z9kiDXJNCjHndK8GYSXjIB19Jc5wGSu18Jxd/JCV7UkpoteTmsI9q5oLYekCtVKzJTq8D6M2wpFbvgpL9EliMLRWOo2h4BVuTE8aDB05VE5arkA6+/fFV74ByqArT+tFSRP0wzlDSfKE70LJJJ26MT6RmU2qaYwgy2AUpteMUT5jBR8q0G8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L3ucRBOqWAvgn3NJ+enj28GYB6qsT617Wpyukd8VAn4=;
 b=tOTj1taaVvX8wqFlAI2fg3pZChHfe9iD9DK3yBwqVMdphq+7S8GjSw0+p2qCRdop90Mqfz79RJSz4auxftDSu6VtmZRzvGTYRhanNQW0p0/SlInOfYpYZAayWak4LY+WuhgZsVi7+hPLWMG5jwccHWyESvAO53yvbbx1WNJNVjrdUkbv89UFbSadH06UqqrvCiliT3AMBq8Nz7O2+TWBTVhBxBQYi4/c69WMvAKeQ8CVJNVdnpwtNOahVy9tRnVcu2A9R69tdwBdQCBWaQS6IWriTVc36MjyAF+xorTDzAufl96oHBVF3aPQBj1oztbzAYyVMChmkRWapAgrLJ6cxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB7277.namprd11.prod.outlook.com (2603:10b6:8:10b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Tue, 25 Feb
 2025 20:15:16 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8466.016; Tue, 25 Feb 2025
 20:15:16 +0000
Date: Tue, 25 Feb 2025 12:15:14 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 5/8] drm/i915/reset: add wrappers for display reset
 calls
Message-ID: <20250225201514.GJ4460@mdroper-desk1.amr.corp.intel.com>
References: <cover.1740481927.git.jani.nikula@intel.com>
 <9619e1fca5599e7703d4847f92a92aef82f847b6.1740481927.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <9619e1fca5599e7703d4847f92a92aef82f847b6.1740481927.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0031.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::6) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB7277:EE_
X-MS-Office365-Filtering-Correlation-Id: 169fef20-b233-420b-5207-08dd55d91e90
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?QjfhnuTTCrPJT5joH0B5qv2G3T80gp8XBBy6ip9iFFpH9b/ZL6Auej/oNomi?=
 =?us-ascii?Q?jphObjnOrww3v/Hnjt/7dpnKUk/Z54XzSg5TQsPmyeouBQyTLIealYyO6blu?=
 =?us-ascii?Q?nIjQo/Cm90A1FZmXuoTGl5/B3+0b3VVUws8aCgaV9rGOVDzVcM1n6L8tXAIE?=
 =?us-ascii?Q?oZzsC9KKM4uuuyNHw2XRc1WcgyAzh2DJyEN1jm0/FgROp9d7IxkWYcO3y839?=
 =?us-ascii?Q?kG1D1YUv0/27dHFLfTkY2ulgNUfWNGGvaXYz7dzYVInYl7e3TMxWnzB55I0D?=
 =?us-ascii?Q?AwqCO5kAR1Ogiq2whmhOOBd4kB44g30dCM51zU/wW8p5dn2c+8lPSa1r+CAv?=
 =?us-ascii?Q?tYmc2jLfmSXy1h8AXYZkwUPUKAlBk6oimviFPPJynMinix4pzbvNi+QyNsF5?=
 =?us-ascii?Q?PaS0VxTDnp6qvpxyr1doyGmjCrnPBGN03MT7ma2sduRcw0H75weifrcWhkqh?=
 =?us-ascii?Q?YSK0sFjOKo1f9+3A5bKfqt99SGR6EnRyXZ90QCxv/+h9T5djwaD8My41pmWd?=
 =?us-ascii?Q?XLhA4LeNpbjfmFr2FH2ETteo1NFFwvqoVtj+O9c/d2vb9lrkBRfwBuTFv8x5?=
 =?us-ascii?Q?mdwhtSxiecz6gAmU/mHAhnVHgHtJih8ZTcvuUnRQtNHjg4ylFYuigV6ue9LU?=
 =?us-ascii?Q?t9WcSrDjdMdS0cYkgoDWY/M7ekH6zEJJ8tMjyv0h1DmVX5CagNdbwDdNEATK?=
 =?us-ascii?Q?Lf4CFXCNSYjeX3o1DGCLd9adCgeMalk+P4drpaIDeZw4fP/8H38SNzJjdTx9?=
 =?us-ascii?Q?hNbc8mIdYKeOwHfjuiLXSbpGNamnw/SYsRsyVG7bFvFnimCtfVmcgfL90xBb?=
 =?us-ascii?Q?bP4jwJ2SbuB8vudgG0I8c1GSBMYA8Jkd9kRr7Hb2+ta/IQDfcherMgYI4L/M?=
 =?us-ascii?Q?d7NMALHVaMjRkCmGe+QUpyGYEcvpdnxO0DzkEuQRXG1o+5+TRIx0RQ9e8prc?=
 =?us-ascii?Q?29HeJtahLcCO+6KlnKgR/4cd/k2EFXOaLUPSPueeDAM/Zj+ihEGfQf8A1xIE?=
 =?us-ascii?Q?dRRUtjSOQmAdUWmeJMCkN3DdMJTtYGmjASPRRfxYWHrD3GI+Eh2QUxIbTAxr?=
 =?us-ascii?Q?qHljfWZT8toepfb+GdNFNvDYzsy6olmB/Kb/SHTCjc8SVvg6lJZcQGKil4qZ?=
 =?us-ascii?Q?m3WMtGMHZ1Zpv2rBgo0EbZyGMWlFA8HRelbXEPanPZB7a739WHUHrXfd9acm?=
 =?us-ascii?Q?y64GAl8iIIJCgog7rkhU2og5/dnqSIcuiZOKVmlOH9cRwOPgXggksArkJNyQ?=
 =?us-ascii?Q?5elm742XOZOKO2ArVKLgdC/yL2ZS4aXntx6ncSunQaAWlNjpfWl9syVnFCu+?=
 =?us-ascii?Q?TCoW9sb7ZjCemlXmni/x2LEEB8WM/gaH86pyzKr0IDtKbqhpVOoBPWujXbvt?=
 =?us-ascii?Q?M9qm4BpZMeOO9n8A2PJroOR/pN7n?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4cdiQMQHm2C4FyYxw145mQNMg6CAxeZobtBHEEg7SvHFIFntKk2iT5om8KBb?=
 =?us-ascii?Q?NjZHSnN/Q0Sny3VsMUx1n6krvZrNmTtSCWob/EHnOOnSkoOA5QwBPtHFSzPN?=
 =?us-ascii?Q?IdH1dfjfbm56M/fLtJmTQ0M2trpNTfnKG72Z7JFL/XdS9oePDAvIL3kwpT/e?=
 =?us-ascii?Q?QxyjgBljmSSRKMWkwEinIiLNnIUggtFkTfzXysOWs/fMfu8SGpvouemXZ40O?=
 =?us-ascii?Q?tgUGfxC/IFcGCmXSfhf1WVfKoyk4VUN9AkVET9NBM1QnuWQj/3mX1OBp+RoM?=
 =?us-ascii?Q?6pTUwPo2HS5JEnSrdhesZUPmRShZDxFSqsb8VYup85VHGlNSQzh/pLbR2GYD?=
 =?us-ascii?Q?2esr1Mf4Lgk8DoOr5Wv4oMtRn0Q6ck5Ezl1PLU9YXMx1GBWDgyjUi65Fkn+r?=
 =?us-ascii?Q?BmjAvejRCijPBu3NoLyc1RvRVbjRUiGthN0fCUtDpIqputtUcyT/epNnbKZC?=
 =?us-ascii?Q?DUQLJLTC4kLb6C8qZ4ptxALtrrnjBzRPVWxqIao0L7+AEYL4FFrGH6qI2Wkt?=
 =?us-ascii?Q?39aGXkI81Cj1IWMolt+t8MNIRV2m5PzTck2IlHX4xmuhlNGQSuhQMqNylipO?=
 =?us-ascii?Q?bfH9tipP8tAQZnbYSRaLD4DiyIX6kQD9fleCFUS/2qKxN20PQNiDZR8wGYWG?=
 =?us-ascii?Q?O/c/Op9bGDeUPvWf0GOhI6yuYsuFiBIk8h1cNBxrrkuRWvFqNRVmodEqaWF/?=
 =?us-ascii?Q?0/phGVemgGLXgXuv+bnjW/dt+JUwpnE8r74gA0je05nd1r4L6f+NyCf9TSDf?=
 =?us-ascii?Q?cpQAGoKxTEGb5n9j5oj39LE9UFCdI35QIj7xMoruHjwLR+5u/Au2k4ijyWGz?=
 =?us-ascii?Q?C1cIShrGL3F/eolwmSuN6YmE8N9hWe4WyrZnDmEeU5g33r8w/0vk3ckXQi+R?=
 =?us-ascii?Q?ONKLfa7nWH2h/H5jHNydcDy4q2HLoy/u3XqGzBPvYKI6amxlzq/3V9W/sl87?=
 =?us-ascii?Q?Zo/zIMtYk6pEqCnngxdAcB/NDlsUEhBvjTwHntw8Dou+WHjunggoEnqihpdQ?=
 =?us-ascii?Q?8HX9F1HSmB6N6GYd9AAOFdq32Id/Zm+nH2YVgCf5Xn42fdkiZ3BDR0rCbSRF?=
 =?us-ascii?Q?inHJ8VwYaMjmfJwZS2XlFAYMurKv0OukSGG/qnYrG/OpykfYzWbJsEL0CduK?=
 =?us-ascii?Q?n8t+KEJGV0ucmtjQ4RqgV7Fwos5H3QNuptlCdmjn4Ax6VmxdOA1IFFNkrqB0?=
 =?us-ascii?Q?NZTlU4fqmljOSJTvacQriXC75qc7QgXgZUgmnHpoupA0hCzOOlxR57ni3HzC?=
 =?us-ascii?Q?U76wM1GqcCq3x9igBPKDGSi/G2mYGppFuRVevZFPhR59hp9a6NBlYRgZnuTT?=
 =?us-ascii?Q?rhHJDsXVf3WDt4pYBt6VH135w82R+VHqC5ypuD7ZUYXJIa/VStmMCXiznb35?=
 =?us-ascii?Q?A69UOuYVQRCCwutfuBpHwPc6jokoMdDKZNwsD67fEolpF5boXajSj6ENxY/P?=
 =?us-ascii?Q?YiNKMn2jVb+OX2xcC/1KM+hRwaA37x68KLcY9g/FnPECB9Y0cqhxVu34xTBp?=
 =?us-ascii?Q?zpXPqioqtmR1Cp1Ir/VJi1yBg0h5oJ+xDePv3TVkLc/NGf9z1H0n6lyyZ5PO?=
 =?us-ascii?Q?7vJiOInTOVuJhRPtn7rAsVktz0u5PVnJ91sy4qq9sXl+5lrJJvmc0/oVvruN?=
 =?us-ascii?Q?9w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 169fef20-b233-420b-5207-08dd55d91e90
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2025 20:15:16.6899 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vVFploXkn4fY6YwjO172KpHZUsk3ComqgdqdN4093+KMXhl7lmoTNhKbk+biPHliIi6pjqqq0nX6eU1HzAR7zEWoAJp3LYASgFeoKUAGKsw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7277
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

On Tue, Feb 25, 2025 at 01:14:19PM +0200, Jani Nikula wrote:
> More of the gt side of display reset will be moved away from
> display. Add small wrappers for display reset calls to not clutter the
> gt reset part of things.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_reset.c | 23 ++++++++++++++++++-----
>  1 file changed, 18 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 835c9081b239..d424ffb43aa7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -1400,6 +1400,22 @@ int intel_engine_reset(struct intel_engine_cs *engine, const char *msg)
>  	return err;
>  }
>  
> +static void display_reset_prepare(struct intel_gt *gt)
> +{
> +	struct drm_i915_private *i915 = gt->i915;
> +	struct intel_display *display = &i915->display;
> +
> +	intel_display_reset_prepare(display);
> +}
> +
> +static void display_reset_finish(struct intel_gt *gt)
> +{
> +	struct drm_i915_private *i915 = gt->i915;
> +	struct intel_display *display = &i915->display;
> +
> +	intel_display_reset_finish(display);
> +}
> +
>  static void intel_gt_reset_global(struct intel_gt *gt,
>  				  u32 engine_mask,
>  				  const char *reason)
> @@ -1417,14 +1433,11 @@ static void intel_gt_reset_global(struct intel_gt *gt,
>  
>  	/* Use a watchdog to ensure that our reset completes */
>  	intel_wedge_on_timeout(&w, gt, 60 * HZ) {
> -		struct drm_i915_private *i915 = gt->i915;
> -		struct intel_display *display = &i915->display;
> -
> -		intel_display_reset_prepare(display);
> +		display_reset_prepare(gt);
>  
>  		intel_gt_reset(gt, engine_mask, reason);
>  
> -		intel_display_reset_finish(display);
> +		display_reset_finish(gt);
>  	}
>  
>  	if (!test_bit(I915_WEDGED, &gt->reset.flags))
> -- 
> 2.39.5
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
