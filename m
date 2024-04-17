Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 179CF8A856A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 15:59:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9554A113560;
	Wed, 17 Apr 2024 13:59:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qqz3XS05";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59D1811355B;
 Wed, 17 Apr 2024 13:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713362349; x=1744898349;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=wYm0SWr0qfsbuQq9CBPcHqvOUJdBC2uKpF2DJK3nrsU=;
 b=Qqz3XS05vP6Au1SlM8mJhFXZDC6jTn/geX/2M5Ep49uZDDQe+0rWYVEF
 w/Qwq2XPTryYkKokgdeY//cLddFJ2HUm1KeyPsOdCnVyQiyySIlXOG9hl
 5+pBcwziABf75MSEfAH1lCxvhjOQv+5fWSFTI4Gv8x+KZaaMYKF8ZmGj9
 STM4y5yBbCQCirbvWom3679AUW0rZBg7pn+RT2VfMmVmvAN/kvYSTiA9a
 1XM0+iDnw6EflW8YnPI0wF4c+NNq3S0neJTG5orqoAbg3qZBmTtCJS//K
 XyCPtmlAIlfHAkto3/90vOu78iRNgjaUkhjp6ZGUCyyCzfXEFZfRPpQND A==;
X-CSE-ConnectionGUID: 7BMRVf53QNGbVnVNPLrCKQ==
X-CSE-MsgGUID: QeAR/7LfRNOxKd3Vihd7HQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8734184"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; 
   d="scan'208";a="8734184"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 06:59:08 -0700
X-CSE-ConnectionGUID: mmC3x85KTsSO8DY6Sj51mA==
X-CSE-MsgGUID: R2ArU67DSq6QCRLGOus2wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="53845188"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Apr 2024 06:59:08 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Apr 2024 06:59:07 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Apr 2024 06:59:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 17 Apr 2024 06:59:06 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 17 Apr 2024 06:59:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AUM382hSjNiebndfscxcODHJTJSWeLUtpETtU+tZW/wxQb2pmgojEkEgzRtK/TGhr6eDv7K1OMJM/ycoFky4w71upAs8wW+4lPdeyG2SQER4j4GBCJGxhRlkP6Ja62CXYFNQQNQJzvepzvPEPOhZCpbLQCtOti0SQfOb7JMVPADVnhwPJIpCpnauvlkBxGhyihAYDB3ujLlZnUB7Xrt/Kw/f+GBeb+0rip+E0RjTtR8L/SQiXe9qi6/WihBX+h2ECABLU9J4AZdGNFhlVHmmSXiYi+KMPxGBOGZ8ZsSivFCQpICYGqD6v00S47Q5CgCyJFReh7bGlfKC+4IT2LCgvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xJ6ykCE7WuXfgDRp0r0H5au5hARvbM6RsW+n0ot+TEk=;
 b=McZ/Su3PDEccE5hvyEUoe8c7WZeNVlOa1nECS0U35sApw5rBaOPp4fBuL8ay42NRhkC4TQrHkT8i2W/OhoOrN3SCm1DzNixmHEAiKrQDjCXuTZczC0BrQgqxxLqILrg1zYaD5nekrMozdhudNYvNm04nmAfeE8Bh+m35yOd/Wl7fCeHVwwkygtnJ5V0d/NQoZ1owD8rA3olfTnsUGNl35V/itor2EYeiPrcUlIK3GvVNdXX1Lls9jG7t1snDJFCFmkO4q65xFt+tClarhwISuAILT3hoG7LeyXdK5dJ1hDdx/W54udRMGz1kwlpfNmMUnc5Y2mhgtmkgj7iQQqi/xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MW4PR11MB8290.namprd11.prod.outlook.com (2603:10b6:303:20f::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.29; Wed, 17 Apr
 2024 13:59:04 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7472.037; Wed, 17 Apr 2024
 13:59:03 +0000
Date: Wed, 17 Apr 2024 09:59:00 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Luca
 Coelho" <luciano.coelho@intel.com>
Subject: Re: [PATCH v4 6/9] drm/i915/display: rename
 __intel_wait_for_register_nowl() to indicate intel_de_
Message-ID: <Zh_VpLLkuxZ3k5lW@intel.com>
References: <cover.1713358679.git.jani.nikula@intel.com>
 <967d3fc67a9053f7d5f9c03010fd5f94dc8d547d.1713358679.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <967d3fc67a9053f7d5f9c03010fd5f94dc8d547d.1713358679.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0221.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::16) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MW4PR11MB8290:EE_
X-MS-Office365-Filtering-Correlation-Id: 9879e45c-fceb-4a80-aa5c-08dc5ee68a5d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OAmT/yXPL2J8XTgadT6/lOk0PzbpOLkE+4pi2OUFxLofRXYPjlaRmtmsYhRPUxinnvphyR/iWKe0Et9JAQ9t08Zo/iKAntS1QWc9Uq1Z27jJQ6EYZhGy2MjOSIeuHuhLMTu0pWOOI69iLN9tiwCGe16UVOLBp8HkmOCHc1TsOU116NQtooTNOV/rbepdZYGTa0SlQ7j9qmTDR4bnHUTo5vnCw1YMGdqXNFT2Q9iWIiCMQBDCp3llCfrw7Dt1U7A92jofs3iec8+kO/5nLlW+52abM4RRd402lYPzVwj0fQuTe43o+gKeGx/aDF9oU4JBgKnvi9m/cwW0/E0YjBVGzV2lHG83ciG6qSrCSnfjz9o48nCiGgKgr8UrA1bAIG35gY4rbcyC5DMDwyhzjsm0/OEDZdcU0LZayhBWusiSnlrMrJEZfXKVctXEkMol9J5zYlueivT6SN9yGtBJj+wdn20/i0T46p7arOV2iTI5P6U1Dvu1BiYNL8v7f++d1TuwiJoD+LUoD1/llV1lHTvJunkangomg6/WDhoTlFEv5pJrtH2V1JqXO/LOinUU3qmYv8/yHCiuW9Ftgu3x21B7hkjPfIMjfWlhAu0+sPpHcgqUmUNZnkxWZt7jHN+Q5Ec27IKFXukqRmk/9YWbUPIvFayD7MV+rAVfGdiaq75eJc0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?W36+amWzMbryuhTsg2HRrFIhe+m3rZS5KCPlQXwHUs1bVTIdFi9GA3T+5xML?=
 =?us-ascii?Q?2TzVj/BEykLIDIyUYNQDCs363gnpktZqr8vnnYTE4QOot/Z7nL5+cNIzaRXC?=
 =?us-ascii?Q?m43JqYD/O1wA0UXo9ltAnA0Ebn89k7FzR1+59nZFo6598t+2fr2Pup/n8+36?=
 =?us-ascii?Q?TZipiOtbrVV+n0sAZyOIqWCjeGHbbHHnrt3mbw2JiCTohUzT+OzZTyEFaNoa?=
 =?us-ascii?Q?2NSA67OkgQLiO+CR4NXINwuBMc//n6SBwTYQQN/9Jg70oKqIoKrzCwG3+5oK?=
 =?us-ascii?Q?cc6mH8IsGW9Z8aPKl/ZlVt8zLvJLhsJHxSoPSdgwqX1N+/3EdG+Mfonr9BZB?=
 =?us-ascii?Q?/7Mn1aBUJobf+yOGLs2xy/afANa2e4qPW3WYMm38PoE3r9oPOv5F1gLTA3Nm?=
 =?us-ascii?Q?TkkAtaG2SQQWyhqokC+9fcYaWVakntWfQsKp21w4mQM6pmM3ekb+8ktaD6i9?=
 =?us-ascii?Q?tLWV9OHr9dzcsmUAr2fF/PuaBAsIOZPeGzzZmdtDGhBBimzRpcOtprepgfd7?=
 =?us-ascii?Q?NtGjTSwzIih1NZBoiVNhw27rGErx0GfsTrEER/oCrqufArMDNo61Xllul+o8?=
 =?us-ascii?Q?75yEgKmZj4Zms0cTQLXcDlhSSvVP8B9rMdiOkaluVL5dDoM/7NpE8GZN9edQ?=
 =?us-ascii?Q?k0sbTS/xr3C0tqrWLFiwGy37FT47XX+yyWrdqXn0RPY9YhWhNJKCTYOM8lEd?=
 =?us-ascii?Q?TcPdVsy4QHlBoT8TY6acVOqCFfNev76FF9t1EdDPH8G9Kj1oOIdE6EbniWvf?=
 =?us-ascii?Q?Wp1Nk2x9CCy3tVTMtHjUpzrnFxT9531jEHjqvdF/CzX4DAhKGZx6Rdg60Me+?=
 =?us-ascii?Q?soRg9tYj8uSyEed8Vfnhqp9zd9LAVKhN6wjEJ5ahfco47IZO8jgxqzaxDOFJ?=
 =?us-ascii?Q?8qJxHOs2FmBARXMUmo519y/s5jkSZpyqR0HAPxQ8Khw/ogqo4hVNV5zLAntJ?=
 =?us-ascii?Q?PEq6nefu3t5C1DLYB4WvA12Pd46cMf+pSTbc0099O1g50fXQ1iDDBFkJua9l?=
 =?us-ascii?Q?Bb1Ge0ZeIFdsooLE7j62bFZIN93Mr9Wr2nMJ2gpflORBavG7PnCWUzDnJnWk?=
 =?us-ascii?Q?7ERyVfsgyw7s1yPs19xSPvL9AQcruKo0uIu21Scpa3D+69sjeiFL4Cm92MTR?=
 =?us-ascii?Q?eRhxpQBXYjqz7POkm9yrkub8jdZ3u3m0Y7y4HcWYal5z/VZZCJB8OoSD1gVJ?=
 =?us-ascii?Q?nv6wY7iMsOeXYZqbuSIEtDC3GK6iFFtcueWsopeDsUfR1BRWW3OvWpVA7pnU?=
 =?us-ascii?Q?Qg48fZbbZqNShg6PS8MTdZX5wiAc/bBWLDLCKtZzNqHTQvGP4Tygph8S0yn0?=
 =?us-ascii?Q?etkf5aUopez/OCfSTmq8Bp88odZIcz5K2WbZjeh80K5uijWaRevonlMT61U7?=
 =?us-ascii?Q?9XYt8gUmTHhOMNHGXp32+1TBF79kXGc/mEPhMd7T1NWBCyLzzc40okIbHuxZ?=
 =?us-ascii?Q?WAgdo3qPPax9PX1MiTvaeFlOSJSNafH3JXBQoMLt2Ta72sBl2Xk5ZR8qmgvs?=
 =?us-ascii?Q?xoyOipW5PYGJwqUgMY+WDhbf9KGP5fKXwLOm2T1ho8vhw+e04mi7L9saS6Pl?=
 =?us-ascii?Q?u5KyGKHihTwLdFevuuH19ou5MXbJ0jTTJTeMm8PcK1nmSwwmHPmS5QOj9Wn9?=
 =?us-ascii?Q?VA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9879e45c-fceb-4a80-aa5c-08dc5ee68a5d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2024 13:59:03.8384 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5FAaxT3vtQBqb+AP10h5Z4cqXTRYEB3nNIgu/yTg6UDRS2nwrU3CeP5XxFjL41XTrQ0v1ZLR/8VfjKxo/5nGkA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8290
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

On Wed, Apr 17, 2024 at 04:02:44PM +0300, Jani Nikula wrote:
> Rename __intel_wait_for_register_nowl() to
> __intel_de_wait_for_register_nowl() to be in line with the rest of
> intel_de.h.
> 
> Cc: Luca Coelho <luciano.coelho@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_de.h     |  6 +++---
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c | 14 +++++++-------
>  2 files changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
> index 0a0fba81e7af..4b51388c6041 100644
> --- a/drivers/gpu/drm/i915/display/intel_de.h
> +++ b/drivers/gpu/drm/i915/display/intel_de.h
> @@ -97,8 +97,8 @@ intel_de_rmw(struct drm_i915_private *i915, i915_reg_t reg, u32 clear, u32 set)
>  }
>  
>  static inline int
> -__intel_wait_for_register_nowl(struct drm_i915_private *i915, i915_reg_t reg,
> -			       u32 mask, u32 value, unsigned int timeout)
> +__intel_de_wait_for_register_nowl(struct drm_i915_private *i915, i915_reg_t reg,
> +				  u32 mask, u32 value, unsigned int timeout)
>  {
>  	return intel_wait_for_register(&i915->uncore, reg, mask,
>  				       value, timeout);
> @@ -112,7 +112,7 @@ intel_de_wait(struct drm_i915_private *i915, i915_reg_t reg,
>  
>  	intel_dmc_wl_get(i915, reg);
>  
> -	ret = __intel_wait_for_register_nowl(i915, reg, mask, value, timeout);
> +	ret = __intel_de_wait_for_register_nowl(i915, reg, mask, value, timeout);
>  
>  	intel_dmc_wl_put(i915, reg);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> index 30f8905fae41..162de0d20554 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -77,9 +77,9 @@ static void intel_dmc_wl_work(struct work_struct *work)
>  
>  	__intel_de_rmw_nowl(i915, DMC_WAKELOCK1_CTL, DMC_WAKELOCK_CTL_REQ, 0);
>  
> -	if (__intel_wait_for_register_nowl(i915,  DMC_WAKELOCK1_CTL,
> -					   DMC_WAKELOCK_CTL_ACK, 0,
> -					   DMC_WAKELOCK_CTL_TIMEOUT)) {
> +	if (__intel_de_wait_for_register_nowl(i915, DMC_WAKELOCK1_CTL,
> +					      DMC_WAKELOCK_CTL_ACK, 0,
> +					      DMC_WAKELOCK_CTL_TIMEOUT)) {
>  		WARN_RATELIMIT(1, "DMC wakelock release timed out");
>  		goto out_unlock;
>  	}
> @@ -216,10 +216,10 @@ void intel_dmc_wl_get(struct drm_i915_private *i915, i915_reg_t reg)
>  		__intel_de_rmw_nowl(i915, DMC_WAKELOCK1_CTL, 0,
>  				    DMC_WAKELOCK_CTL_REQ);
>  
> -		if (__intel_wait_for_register_nowl(i915,  DMC_WAKELOCK1_CTL,
> -						   DMC_WAKELOCK_CTL_ACK,
> -						   DMC_WAKELOCK_CTL_ACK,
> -						   DMC_WAKELOCK_CTL_TIMEOUT)) {
> +		if (__intel_de_wait_for_register_nowl(i915, DMC_WAKELOCK1_CTL,
> +						      DMC_WAKELOCK_CTL_ACK,
> +						      DMC_WAKELOCK_CTL_ACK,
> +						      DMC_WAKELOCK_CTL_TIMEOUT)) {
>  			WARN_RATELIMIT(1, "DMC wakelock ack timed out");
>  			goto out_unlock;
>  		}
> -- 
> 2.39.2
> 
