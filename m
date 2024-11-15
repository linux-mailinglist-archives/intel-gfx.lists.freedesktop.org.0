Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AD09CF497
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 20:11:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E02810E2DD;
	Fri, 15 Nov 2024 19:11:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eO6VAuZZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D297310E2DD;
 Fri, 15 Nov 2024 19:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731697883; x=1763233883;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=CNw+1oxpLB4r6TCollF+NLuY03Wcx/qSP1PQtkw6bok=;
 b=eO6VAuZZIJ4qT8Nn2hQcJljmzQzb4HXmHlnfPpm5UHERUkIXRr+g64DY
 uABeuKf+F+7idJ41TyK1gvHp1JJOqnxSzoJ/tQjws1xyiNVp0wMYH4wSg
 u9GLw968gAbcHZnzf/onmyfVI2QY5y8r82683mYx/ns2rGVSvYJXJyXq8
 H3ol39MCjTZeFMNojbpwZo32vjJaNNn5dMgPjAUnhdBt590vrxEGzpMZf
 /tvw93rdxV2MEoQnw5hreHN1NrpwWMh+IkQZYTi03yPWE/we3AJMJddso
 UQ0oCTt32h7OtA6lQwo0H0zm2Jo4kWTWuEcR6lRa4jEu9dTWW9t3Pjp/6 w==;
X-CSE-ConnectionGUID: 0pGbWizhRmWAA7quk/RtoA==
X-CSE-MsgGUID: bB9OLzZ3TIWB1kfN1Q6Xkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11257"; a="49245124"
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="49245124"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 11:10:41 -0800
X-CSE-ConnectionGUID: LnhnMVKTSz+wnW8SJPIPlg==
X-CSE-MsgGUID: arT8kodzSkKftgb8OPutuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="111923966"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Nov 2024 11:10:40 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 15 Nov 2024 11:10:40 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 15 Nov 2024 11:10:40 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 15 Nov 2024 11:10:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j/ACFY2Vpl+CQOJztVveRrADlV+Lb7yzI48+JtKfvIBXHyW6ExtPGyrtOPj9orQdMNhDgvg7ayeGcwE29k4pRhHxjt+/hVM+7th1ojJ+k0b84FsYq5gZn5bPfitQK05TwZMunTmxS3yRah+aHwyfxIf78ZqqxrSZMi5z+u69vNfWal7pnppstZxd3rQothlHnXuubT+uA+E29QN7CAaaGtX0GweAvBWBZNZrvxGEywfRzZNO/O19UUaJnuN292dWQMvYLQIkRNmSVTdm1mgGRtYCwp1xdo0hRHDnTgTIMsbG1mF2l7/WwXg0RjrXRyjAqY4qTm/uvPGOebGcFms3Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yasMO2LV3Y7m07+gv8nviwIYn+7o0u45KcyVlI5b4e8=;
 b=fkila08DboEvHOpjA+ujgYYin3D9nyztyXIUKtyxCeZF0LluUFbsarbTj/gKKzjPpOSO4aQfYGkUVURMaW+J4wgaIR6mPXP7tJ7J2eoP7V5shNfKTwG6XPE3VasLWLCxFoiVJHgFXVtQst5/eaqZrpx6rf6g6gl06BHVaaEUblJgdnTPcvLLUS5sKBCrfVzMLLT6CkYIMlcs5mSYy4jhbNRIMG8F/GxGEiT0c4RkVYb1i5U3tX8ZuXG0Bq4zPqj5On/r+BOlljO9opVc+HQ8RRE7gbBo20hXs0pnSuAOjXqL9zEwngUJm1qgJlhS6gIpf3l7vgZIi3VxjDH6G3+yQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ0PR11MB4861.namprd11.prod.outlook.com (2603:10b6:a03:2ac::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.18; Fri, 15 Nov
 2024 19:10:31 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Fri, 15 Nov 2024
 19:10:29 +0000
Date: Fri, 15 Nov 2024 14:10:25 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 4/5] drm/i915/irq: hide display_irqs_enabled access
Message-ID: <ZzecoVjYtoa4omwT@intel.com>
References: <cover.1731347547.git.jani.nikula@intel.com>
 <6dcb90c7786532c7df0281e29a3e680c9551f060.1731347547.git.jani.nikula@intel.com>
 <ZzY5f-p1ERZwH7mj@intel.com> <8734js63no.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <8734js63no.fsf@intel.com>
X-ClientProxiedBy: MW4PR04CA0238.namprd04.prod.outlook.com
 (2603:10b6:303:87::33) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ0PR11MB4861:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e8a7d4c-f7cf-4cb1-cae5-08dd05a92ad3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Ukwc2Tw4DGgFd18YhR84KecpVzep9XNNGg6khwnQ3AJiP5yO2gzevGnPSmwv?=
 =?us-ascii?Q?ZLQJI76yBs2ELucZw2IB6+kr/br94vAzHNTOFjAAuLlk8Aefr5QzopgDKBTf?=
 =?us-ascii?Q?h8GzbXsWwvz41mMggPXnoZ1/sAcXN7IVXgh8nceAcqig6NUAgLES1P2yA8rc?=
 =?us-ascii?Q?eSNxXsLOO4x7xqfYAj5UOqI6N/K0ZudlTDj0XWtLBrZWEp7qG0SXHVxhnHI0?=
 =?us-ascii?Q?J0OBd2F5/H9uOFCq+pUNhqTjwUdnZUMQlCt7wIyW1fu0LHbhlRBhNoWvVdFU?=
 =?us-ascii?Q?W7PZjMh6sVuO3CQSxFU39osZaMEv1DPMhl0dXY5wWbVHeXHlM2JnIKNvmJNj?=
 =?us-ascii?Q?JsxHwIWhBR40V0DoV5Cau0ysfT/aqYBeNGgHdCuToqI7/qerIewCA+cL606o?=
 =?us-ascii?Q?0fx1d9qjEK20ZML9r/GocpcIJmhbUsugeVFWohXHn7nPVge8osaljPlc/FCr?=
 =?us-ascii?Q?70Lx5NeiIEM3QkxjMtYxSuWzNFPINCzwHDJEjtqPTaOQaO2FwjdRl1WCQF60?=
 =?us-ascii?Q?mkecGcCG2QxLtELlpwjfEe4tQ5YEnrA0rmdEFrkpoZ8OtI+eyKV/ETX1yliZ?=
 =?us-ascii?Q?fJ/r0o5wSqIjCMqDYyVSiDcKSl0+DNdVjzBBnvZd/dd0HeVvjDx1cy/s9HOv?=
 =?us-ascii?Q?dsePnR2BH9fhlFERL5bOUNXEM7Ziv/Y1ftYOP6uE0MBmD6fQYziIGwePocou?=
 =?us-ascii?Q?l2/nwQsIQ3bp8CrwMmh61s7sbjLD6o6h4fzpqbB1ZWD0Cxe8gcCqJ0ipkI14?=
 =?us-ascii?Q?OYk2F+7+PqL5yhZJfu73jtioVoK4mgy80hbw3HSR9o4Bw8RYHSg7KpVEIThe?=
 =?us-ascii?Q?AicXcHccR6rxNTSKrtV1Oq7myGCAjE42FSrHmXMI2GMHABGIDRGj0iOVBi+H?=
 =?us-ascii?Q?9PMTLfncrIqSFY4tO4Er7YW76cgtk/UHAijiu1NgkeMA6zmxHSJiCWgc4Zrc?=
 =?us-ascii?Q?YG2BCrqqjVxuCQwTNa4eOnS5clVZqT3Vxs4Gi5fIU1mpfRQ/2D5dsEZJhqMp?=
 =?us-ascii?Q?KQqK+nUZhRHexjU9etMQ4WHuXVfAnFN3PgvP+N6TiYq6R6pHQFk2IA4vXLJY?=
 =?us-ascii?Q?XWEieMNDIK4tySww/gPpCeIH+MUWaep1NUCHIU/wX3l405RmJ7OiRvsCUKXi?=
 =?us-ascii?Q?oTXQ3vlgzrs8VdI4W345inO6E4mUlkuIriFP5N1o5OzkUWVXEbDgRrdAw0Wb?=
 =?us-ascii?Q?6CbkgzmANWoLT7hNaKxT+2uASIr0mHA2ZD2wEei+auBotpe2b/e5yruz60Ah?=
 =?us-ascii?Q?dy6qdNJzObQWUKT0Uogj8FqoPC1TPTh78CqVK71R6C3I92nkUpvZfUEZp8vq?=
 =?us-ascii?Q?aRSfMaGyJiIi6AYvh7oYCUtP?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JDsXhvUruBOAFlbWTBXWevvhDtVRWMxm0rR+JKbtzmWJpZVxKeubJOl84h0j?=
 =?us-ascii?Q?BDB6WqC6wkU5hfRJChpZirot4Z0ZZH1UFltZ9uvvLAYXTmtoIKn3o5yuv0Ld?=
 =?us-ascii?Q?v1H1qsunKYM83XhsMxncAR6XT9ISMAasuLWSkau5j5+kgJwbY3vuhZ2J+pgE?=
 =?us-ascii?Q?696sHOVL5nIxXrW4nszLVOoGsGKsKJjWsjSbgGTbrOkmt7VqmIy79lr0VfSM?=
 =?us-ascii?Q?bt0GB5OK/l/LLSXIYcv9VQrg2suM6f/HC1iT3RiKPFWM/TDwdf8RvFgiNLF/?=
 =?us-ascii?Q?xSX/acXVvja8DJOQyj5oOLomhh7W+v/7VyWtxm9lN3dY5ZQOavHisNintdiH?=
 =?us-ascii?Q?vKcURC6T6mphYTlJHMGc0omR8F2XAOiT8wVl4J8K+Jf4Xhsh3bc8ZD7wcDWC?=
 =?us-ascii?Q?dt7tpEEwHjOmYdaiP9hxI9SoslzyC8fYavnapNsOR7nYaOwjRroTHFbMgSaR?=
 =?us-ascii?Q?1hpLfsTYOV7kKaZv2tWAS+XumlQkRZdShVgOUNdjTmQgbPpjtPldRHZ0qXG2?=
 =?us-ascii?Q?LdlAAhDF0TIw4szfx8wAZmEjA9a1ujhhuYdgMdIU0DcRdU190smyZANmvIkQ?=
 =?us-ascii?Q?XjlDbLt5TIiTv9OkmNGuxIMv7vgm1vXJ4/RKcHlvycBhRNQKu7FuFXxtQ0Q+?=
 =?us-ascii?Q?uepXufCaJK4ZhplKiC8QpujvjztFeDIMrBwvBR8Ie63EZzY1g+re4/A6wntt?=
 =?us-ascii?Q?cUOg4/Aetudqh/+0ZRCnr4TUfsEpLlGBHkwfiS5zhZs6nivKt8WTQVg4IGbf?=
 =?us-ascii?Q?IsYxT/FiYGoxHUDInS2gAKsT1mcJSj+e3BrH/tqShRm7Bi/lanDmDS8pwx5V?=
 =?us-ascii?Q?xo0lEoTj0vRaFok0nCVW18azkQ0HZeGEhciSMbEBskQ2N5BgxzifAnu6Av09?=
 =?us-ascii?Q?475QhzMdLbRCCUrm96sgKMHlAKU8JZIFCrARIZjBzQOBYFpZxMlMBvFYBh75?=
 =?us-ascii?Q?fAHVVK1PyhleXofXX2Fb6InlLtIl406xU/A48lg8vzOzk805/Dm5wxnI5DN1?=
 =?us-ascii?Q?egWezxKQPSLZ+fceVPfnbb3utwYBF7NHtjg+TtDD6yzAWY/UkxyvRVSA2hSv?=
 =?us-ascii?Q?yAV5/2zU343YfWJWbe9rF5T73bVq1sKrT7IZF8nc3ujsv1FOvtjS5oSLNu1D?=
 =?us-ascii?Q?VDvhXGGADfiBKoeOhrdzzyD5t9tXAKjJY79cVsxv1QYx271kkF9Nwhzdu3sR?=
 =?us-ascii?Q?HjYDWUAZl46MufAMJGZ2wxetlIm3/25oOS9e+f8aEs9oeIj3vRQprNFFGnt2?=
 =?us-ascii?Q?ghIl1iWcppYoiDF9RgghU7OTUek4eN4BR6tpgWyXBghcnIkN8v5n3fvaH/hJ?=
 =?us-ascii?Q?x37vzo8uEfYaUm9cjL1qR6dEeqJGQ8FTXB208p7ZeisoqoR452u63i7Hrkkd?=
 =?us-ascii?Q?kfLqwdKjcYEsRDTGB5nvJ6C5j42nvvfUnB9hN2cTOXEe5RsJaDq9cKSLITk5?=
 =?us-ascii?Q?xObLD+yYk6EPQ/dTvp30QNRW3H5pVehC3MQjgxfZC/0ku7JNkikOu9d1Zi9P?=
 =?us-ascii?Q?miPpDNcVwu/zyW5nf9oLrB1NtV+hwHlfMay49KKX5ElAfFwxzW+jpbMF0oLJ?=
 =?us-ascii?Q?jHJJnfrHySG+mZemoaSXbEEhbF6wpxGJ/LVL+jliFLcu/XVE0EriLiQZRZ/v?=
 =?us-ascii?Q?ZQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e8a7d4c-f7cf-4cb1-cae5-08dd05a92ad3
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2024 19:10:29.4395 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lPnqaIFBxOmZEaQD3L1Od1njVtn6UsbVxNGMzrM9TijAykhEM+dPSBEeiYtmUv6zy3QebZCZhkFg14Og5YZaFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4861
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

On Fri, Nov 15, 2024 at 03:13:31PM +0200, Jani Nikula wrote:
> On Thu, 14 Nov 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Mon, Nov 11, 2024 at 07:53:33PM +0200, Jani Nikula wrote:
> >> Move the check for display_irqs_enabled within vlv_display_irq_reset()
> >> and vlv_display_irq_postinstall() to avoid looking at struct
> >> intel_display members within i915 core irq code.
> >> 
> >> Within display irq code, vlv_display_irq_reset() may need to be called
> >> with !display_irqs_enabled, so add a small wrapper.
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_display_irq.c | 15 ++++++++++++---
> >>  drivers/gpu/drm/i915/i915_irq.c                  | 12 ++++--------
> >>  2 files changed, 16 insertions(+), 11 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> >> index e1547ebce60e..d5458b0d976b 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> >> @@ -1479,7 +1479,7 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
> >>  		schedule_work(&display->irq.vblank_dc_work);
> >>  }
> >>  
> >> -void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
> >> +static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
> >>  {
> >>  	struct intel_uncore *uncore = &dev_priv->uncore;
> >>  
> >> @@ -1497,6 +1497,12 @@ void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
> >>  	dev_priv->irq_mask = ~0u;
> >>  }
> >>  
> >> +void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
> >> +{
> >> +	if (dev_priv->display.irq.display_irqs_enabled)
> >> +		_vlv_display_irq_reset(dev_priv);
> >> +}
> >> +
> >>  void i9xx_display_irq_reset(struct drm_i915_private *i915)
> >>  {
> >>  	if (I915_HAS_HOTPLUG(i915)) {
> >> @@ -1516,6 +1522,9 @@ void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
> >>  	u32 enable_mask;
> >>  	enum pipe pipe;
> >>  
> >> +	if (!dev_priv->display.irq.display_irqs_enabled)
> >> +		return;
> >
> > I got confused here. this likely deserves a separate patch?
> 
> I thought I explained it in the commit message. The check is being moved
> from the callers to the callees. But for vlv_display_irq_reset() we also
> need to be able to call without the check, so that gets an additional
> wrapper.

doh!

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> BR,
> Jani.
> 
> >
> >> +
> >>  	pipestat_mask = PIPE_CRC_DONE_INTERRUPT_STATUS;
> >>  
> >>  	i915_enable_pipestat(dev_priv, PIPE_A, PIPE_GMBUS_INTERRUPT_STATUS);
> >> @@ -1694,7 +1703,7 @@ void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv)
> >>  	dev_priv->display.irq.display_irqs_enabled = true;
> >>  
> >>  	if (intel_irqs_enabled(dev_priv)) {
> >> -		vlv_display_irq_reset(dev_priv);
> >> +		_vlv_display_irq_reset(dev_priv);
> >>  		vlv_display_irq_postinstall(dev_priv);
> >>  	}
> >>  }
> >> @@ -1709,7 +1718,7 @@ void valleyview_disable_display_irqs(struct drm_i915_private *dev_priv)
> >>  	dev_priv->display.irq.display_irqs_enabled = false;
> >>  
> >>  	if (intel_irqs_enabled(dev_priv))
> >> -		vlv_display_irq_reset(dev_priv);
> >> +		_vlv_display_irq_reset(dev_priv);
> >>  }
> >>  
> >>  void ilk_de_irq_postinstall(struct drm_i915_private *i915)
> >> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> >> index f75cbf5b8a1c..7920ad9585ae 100644
> >> --- a/drivers/gpu/drm/i915/i915_irq.c
> >> +++ b/drivers/gpu/drm/i915/i915_irq.c
> >> @@ -658,8 +658,7 @@ static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
> >>  	gen5_gt_irq_reset(to_gt(dev_priv));
> >>  
> >>  	spin_lock_irq(&dev_priv->irq_lock);
> >> -	if (dev_priv->display.irq.display_irqs_enabled)
> >> -		vlv_display_irq_reset(dev_priv);
> >> +	vlv_display_irq_reset(dev_priv);
> >>  	spin_unlock_irq(&dev_priv->irq_lock);
> >>  }
> >>  
> >> @@ -723,8 +722,7 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
> >>  	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
> >>  
> >>  	spin_lock_irq(&dev_priv->irq_lock);
> >> -	if (dev_priv->display.irq.display_irqs_enabled)
> >> -		vlv_display_irq_reset(dev_priv);
> >> +	vlv_display_irq_reset(dev_priv);
> >>  	spin_unlock_irq(&dev_priv->irq_lock);
> >>  }
> >>  
> >> @@ -740,8 +738,7 @@ static void valleyview_irq_postinstall(struct drm_i915_private *dev_priv)
> >>  	gen5_gt_irq_postinstall(to_gt(dev_priv));
> >>  
> >>  	spin_lock_irq(&dev_priv->irq_lock);
> >> -	if (dev_priv->display.irq.display_irqs_enabled)
> >> -		vlv_display_irq_postinstall(dev_priv);
> >> +	vlv_display_irq_postinstall(dev_priv);
> >>  	spin_unlock_irq(&dev_priv->irq_lock);
> >>  
> >>  	intel_uncore_write(&dev_priv->uncore, VLV_MASTER_IER, MASTER_INTERRUPT_ENABLE);
> >> @@ -794,8 +791,7 @@ static void cherryview_irq_postinstall(struct drm_i915_private *dev_priv)
> >>  	gen8_gt_irq_postinstall(to_gt(dev_priv));
> >>  
> >>  	spin_lock_irq(&dev_priv->irq_lock);
> >> -	if (dev_priv->display.irq.display_irqs_enabled)
> >> -		vlv_display_irq_postinstall(dev_priv);
> >> +	vlv_display_irq_postinstall(dev_priv);
> >>  	spin_unlock_irq(&dev_priv->irq_lock);
> >>  
> >>  	intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, GEN8_MASTER_IRQ_CONTROL);
> >> -- 
> >> 2.39.5
> >> 
> 
> -- 
> Jani Nikula, Intel
