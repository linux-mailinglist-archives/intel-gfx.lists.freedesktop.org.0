Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFED9AD263
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 19:20:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0348010E848;
	Wed, 23 Oct 2024 17:20:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EAv0xjdn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59FC510E382;
 Wed, 23 Oct 2024 17:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729703998; x=1761239998;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=y6La+v4YAdJwRX9Ch0lq9uNsLeitodSy//Qohs6hM7U=;
 b=EAv0xjdnLAHv8chQN0u6DCDwditgH6DGEdPqPueqD9OCSeuW4XF8gV45
 GeCPcXTfIaXknjdYvGRn/VG/8byMgLQs4ZkHwEFW9yS4RtugFKbgRRJtG
 LpShDyoZ8LAHZxo5x2IonYFcGW6eYFXEWk8Tj4MVcIh3boOmDbbNOHxgK
 A7HMKIj/OP5rFF7O4IWTGOT7w/GGgEK0fz3Zl65DtHzZVRLs6PfBuVEIN
 UTAaTBeO8l/6LqsehawSKtI0ZgQV7ZN5Z9fzkisWvw7cIg3l22Oe87OT4
 wV9DU1GSmoSsl++2zR/azfynpQdq8bPTtPwdPQ0dONJy1eCYlPdqPRvOl w==;
X-CSE-ConnectionGUID: gXtCieAaRLSmskLieMaAYA==
X-CSE-MsgGUID: BhBDXF9YQFmQJ3lEKVguBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29174742"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29174742"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 10:19:58 -0700
X-CSE-ConnectionGUID: d395UHBaTlCNlDOKGqV89A==
X-CSE-MsgGUID: 7l8dl/jXSaumrkHyMDgllw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="85408150"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 10:19:59 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 10:19:57 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 10:19:57 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 10:19:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ndaGfLPk7grJjGHxWvLA10/nH6G1SM39aYOLwJES01k/4ilPRWnVl9VSuckMkrVsRaJOayGhA8b2uY+nxizf2+mvek/RZrRnGwmBxKgMnbrSanGndkH1fJLw+EdbxbcVPYr41JrWptQu7GXTFAdVqKtYOrP+Uqwgbbi+mR0/+lafJx8zz9kLCryIL/4kzBG1JjxJ/2yuCVfxZfpRdAQbzCgAzkERvnT4QmKqZl3L9Qaw7WNJgxIiH9bM/bXcWoWfYHzGLIPEJYoklPlVyOR7lFpp45UzGoATkOc0udbW5CLQf5wnqnn4F3WyDZdU0pp810Fg1XeOgJkkB5wxtLarhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DSGNTfjHHLtap139RMF1ufVUG75iU9ZDsV0j5h2WlIM=;
 b=RgmU7bXDvMmD0nhWIDqgtRdq3Z7OPaH1nLyRiNTpxkUGQOt5sv3IPkpTAP8XGZXfcTXf/+bzC3c+npPeYYS55NVpYJ8Ro0+sm4dmzpR1A6upZHXGC396pZ8UsWtSFgkUmb6u1vP1pmQvyt60ITtG8ogQ9KZTiq8TYrKCzwQaUx4afYq8ZWYhg29MtupCH11nggbF0v2CKDR4d+XmyqwLsMbn018ziyCxY4iTqBoO8fN/UcNO0atWuKut3RHxRE2hBsJ3VaNWnTXTaFOJgwKFI7G9N7DTCf+ulrUCV62jss/cFf4CDBCwAv2a2s2zgQKl5EB/1aVQNs3Vog71g30wkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB7429.namprd11.prod.outlook.com (2603:10b6:510:270::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.18; Wed, 23 Oct
 2024 17:19:54 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8069.020; Wed, 23 Oct 2024
 17:19:54 +0000
Date: Wed, 23 Oct 2024 13:19:49 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 09/11] drm/i915/ips: convert to struct intel_display
Message-ID: <ZxkwNXTVSgUkzVBJ@intel.com>
References: <cover.1729612605.git.jani.nikula@intel.com>
 <2733f533be0729b15720a432a4fdcd77b6cb9dc8.1729612605.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <2733f533be0729b15720a432a4fdcd77b6cb9dc8.1729612605.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0154.namprd03.prod.outlook.com
 (2603:10b6:303:8d::9) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB7429:EE_
X-MS-Office365-Filtering-Correlation-Id: 05afa05e-c8be-46fa-eafb-08dcf386e8d9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?7S2t4o6q70kTimAvS1k5uFpvCBFmjk/Nh4bnfgo97g1XlrupN7NiytIJgq/c?=
 =?us-ascii?Q?KXDzYgVxpk3aAQvrsQ9CvyNciwdhXaenyQaqm+0TaThDO8h5KmO2X5klPkcq?=
 =?us-ascii?Q?y7zkI9dSebJ7c8IggsusWNx7pXnMfdEpy0gtKBSsf6ugccXvmVQ2bMKbE2Z1?=
 =?us-ascii?Q?9G3AKCthdiEbe/ffamZ3DMlqjAa2vKC1UxWL8cqkXlsaA7jvyd7+ECDYfp7z?=
 =?us-ascii?Q?uqgLQS3vNV5OIa0TOBdKEYYAPzRibZ64s967gjAmx2XddwyPC8SzFfBLjwZG?=
 =?us-ascii?Q?krQpxz9BfNnSWfpBTzJtnYCAB3b2f0Q8XAqOhY8jOqep/Iwip2RLfJoNdF5Y?=
 =?us-ascii?Q?QHcq+GHfup69brpzvs2+6s3nB/mcfU5JQvw6oTUh7/eEdkVMnlqBQsdY4ENg?=
 =?us-ascii?Q?c/mRnWmvFG+qQS8B5NoTriwkYpjKSq15MKqq6pLoPSOnKr7K7Ri3Mlt4rmcB?=
 =?us-ascii?Q?s7RsEPb1B43w+N2lhbi1I0LAxqKGeAA0MT6szkKE5WCP0NTlM2b6CEqPiEaQ?=
 =?us-ascii?Q?8N/y2XbhsLFYTvP9f+Sm+WXktkAqdgU4tqWw5PWP/UN/3m9KZO3HiTH6C2PS?=
 =?us-ascii?Q?7zGdGkP8/cFKTUDtO9jJbRYS2nm7aNnFTME/aK7BBLnkX3CES/Upstwgo3np?=
 =?us-ascii?Q?RIKzjABFljynW75BjQa8KBrWEy9oC1dkNzTF1qm768marN72VqEeGF4la5xo?=
 =?us-ascii?Q?7KHshKHs7BT4KvkYs1JEUaU6KhMIOQ9sSdEiKo30m2JDRH7W0oKvgCeVqXsX?=
 =?us-ascii?Q?lxGVfN6HpCmBCFnEzWybFbxb9xwRI17sf4oBbYycA4L1ypa+adYtQi/5WqQx?=
 =?us-ascii?Q?hwIjSn90170c3LbxDu40I0oQ+nxz/Lbz8ypVLc6TDsjkdLFITPevMpqJHr8y?=
 =?us-ascii?Q?QbkVAYasiFbfezVMnu5I7xcY8qzooHcdCDaJdFDMua8UELSOPFC20SQIO6ZW?=
 =?us-ascii?Q?tSmYV1iHc41eFjRslOzQFFdfKA+9ByEDnImgm3BDEyyGzVjYBGCPXOucTY9Q?=
 =?us-ascii?Q?LimFLk55U2pbhrtGC1eDcwptZgym5OcDXWWCg50Lu7+hFvmu7PHUtUAi8IJ/?=
 =?us-ascii?Q?TSglPLQyYhiF4z56gRqNu3raOggHrw3dVUcFdWwqRsUJIEBLD1OfHpAefjtu?=
 =?us-ascii?Q?Z8GV2c3pU0m+vNfzhIsM5OfAL9h1if9jjD84AzScCyDAwDlnvpbdfDF+5Twy?=
 =?us-ascii?Q?QJSw1lYKFOAR/ntaEhOw32CrGYoV7k3Uaug64BAadNV9bugK496/4OL3ptVk?=
 =?us-ascii?Q?XliDIMeO40ZLs08qD+XeIpkSw7mLdy8i0tGgM5FgJMx3VFXjh8BW+ZVGIGB/?=
 =?us-ascii?Q?WmDDKf2iCproWGDrkpF2Gae7?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?owFBPvRK2YrqA7nIUIgAI29JS/lUDQPmIMhg8lRZLAOE1y+v7IqHVz6T7bcC?=
 =?us-ascii?Q?g3YECd751FI0k5lhEEIkmRX7raeYVFvH+iIw/sBJzn3X9GCtCBwDj/jNqzqt?=
 =?us-ascii?Q?ikV2loboflCqmGplXXkIhNPXjyRu27r39JCfyy+EZicxLg21Fk7zKK2W3y8I?=
 =?us-ascii?Q?7Grg9vTZfS3dEsT+hkH6gaaY4pJhCxvGvmLVS9Y3XSfFYOPUKIxQKFr6VjOZ?=
 =?us-ascii?Q?eFTQPsNFFNN8jsQUCSvHhjNkC1sTP+Fi1APbTxoQulCYDMBf8weICpjjvRqi?=
 =?us-ascii?Q?3Ut1LKzhqLDG+an/GcRFuiDz+P3N6Vuv+FYvAbblk3492HYlTkdB/IQbwxSz?=
 =?us-ascii?Q?pOgz/lZcpGrx/GXr76I1YGdxDgCGDtRZtxpd/pKgLC+jPvO//gs7JRQHmBB4?=
 =?us-ascii?Q?fcAPXFhIBCUtFXRSJWY+dPbn0hvoTVLI+VNfMaOpcYNagTwdzzOnp9r0221d?=
 =?us-ascii?Q?wT18nDHK0jkfcpGwuN4eIJcjZLGoWbft8zu4kPAOap64bbJcNGO0j2AZ/4W6?=
 =?us-ascii?Q?gGHdIhZHeDX74JSD8oJwJLHMCiT6hLtsbW+swRo6BMa4n4tWLrtCxvGaFKWG?=
 =?us-ascii?Q?7kd2j7HMoERxDtg5Q5kPXTp6bhz5v6SbNviLF/113LPdVVsLFCC7xWPohpSH?=
 =?us-ascii?Q?9H3CIiFaFy2c3qugnlbRPATnLl8c/kDcKXZHNX02cMgcQeb3IaGihmhCRWn5?=
 =?us-ascii?Q?zli1J3Jap3lWdPZj5WI2xaC5xyGL1xQioD3W6zaQnA2zFpKZWO1ZvBbswDHc?=
 =?us-ascii?Q?TqENCKxW2b0xIQiu1NueJu4BbZ7QtykYe36U+G+d76ANauTe7yWhhp7/9aZW?=
 =?us-ascii?Q?S8fIrnq4W+YN6/tzCpc4n+agArNYVt0tANkIGDftXPqvzvwFj+AKP35/G74y?=
 =?us-ascii?Q?L+4WxCbH4dDnq5k7m7PKgzutydMCIC6iG6y80zVifyeSjcv/L5IlsH211rhi?=
 =?us-ascii?Q?O/P8MwwFofZwlXUyhCgK5/+oTeav8VL5KkOjPK/q4gxCS83Bh5CONj1ViGRt?=
 =?us-ascii?Q?kPvGrxVq985mO3Wdr7MokLvaL5hEckJa2/cD7bgisK9aTOLRmNtbDn5P/XJI?=
 =?us-ascii?Q?PgiZyuJhD1qapZzXbVqL9CdF0oPmydEJnnfZreF//Sd1Jb8sX3z4CGDBTeSI?=
 =?us-ascii?Q?WuvPGC0xmmRLINqM7+uWtQgw56JV4DYIi0Ck9FqxxeDB0RhhE93h5I3iRiCs?=
 =?us-ascii?Q?lvT0oLO2vJWl37tEGY9yEZgboTJ2OuMJW3o/6kxR60hLpfyJsVw58fiO8SjQ?=
 =?us-ascii?Q?fkHFs0l0v/gFf438ftkdtPvzVNkTcBHxB2RAA0Sjv3sRj7yyIUX2ehHPFvRO?=
 =?us-ascii?Q?LOSy3lUZaqCHm1Sdgs0dZY1EflPUoWlfz6Pgfy/pKiM8niRHB+u29nBoYdUT?=
 =?us-ascii?Q?xVq/7gn9lxnseZG782Tev20q1wj6ohndw+Aqm1xRFkKQE8cjsy7fZT60A9KY?=
 =?us-ascii?Q?MhxXZpTeWkzzX+qPTmsrwHfSRdjgR1OeC2PAvEpQbCjYENLIXlof/l1YrxHk?=
 =?us-ascii?Q?y/ACBrV/VFXlHjIi8g3Sc4JHCptKZncuAOLwP47v54vynG+bB3AcoTM/Vdrq?=
 =?us-ascii?Q?Hu9dJSeGlq183IiEdE0zHnePHw3Vf7eV5wrh7BR5FkJqCaUq5kI+ZnnJSatx?=
 =?us-ascii?Q?xg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 05afa05e-c8be-46fa-eafb-08dcf386e8d9
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 17:19:54.3940 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GyV31BmlS+OPRcE9Q3X27CUjC6lEsBzNrdRE3N35GPsg0fInXfkDGK+UG/+vrjsi8FFXXvqbh0JFhwUueo4mWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7429
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

On Tue, Oct 22, 2024 at 06:57:26PM +0300, Jani Nikula wrote:
> struct intel_display will replace struct drm_i915_private as the main
> device pointer for display code. Switch HSW IPS code over to it.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/hsw_ips.c | 47 ++++++++++++++------------
>  1 file changed, 26 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
> index c571c6e76d4a..34c5d28fc866 100644
> --- a/drivers/gpu/drm/i915/display/hsw_ips.c
> +++ b/drivers/gpu/drm/i915/display/hsw_ips.c
> @@ -15,6 +15,7 @@
>  
>  static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	u32 val;
> @@ -27,16 +28,16 @@ static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
>  	 * This function is called from post_plane_update, which is run after
>  	 * a vblank wait.
>  	 */
> -	drm_WARN_ON(&i915->drm,
> +	drm_WARN_ON(display->drm,
>  		    !(crtc_state->active_planes & ~BIT(PLANE_CURSOR)));
>  
>  	val = IPS_ENABLE;
>  
> -	if (i915->display.ips.false_color)
> +	if (display->ips.false_color)
>  		val |= IPS_FALSE_COLOR;
>  
>  	if (IS_BROADWELL(i915)) {
> -		drm_WARN_ON(&i915->drm,
> +		drm_WARN_ON(display->drm,
>  			    snb_pcode_write(&i915->uncore, DISPLAY_IPS_CONTROL,
>  					    val | IPS_PCODE_CONTROL));
>  		/*
> @@ -46,7 +47,7 @@ static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
>  		 * so we need to just enable it and continue on.
>  		 */
>  	} else {
> -		intel_de_write(i915, IPS_CTL, val);
> +		intel_de_write(display, IPS_CTL, val);
>  		/*
>  		 * The bit only becomes 1 in the next vblank, so this wait here
>  		 * is essentially intel_wait_for_vblank. If we don't have this
> @@ -54,14 +55,15 @@ static void hsw_ips_enable(const struct intel_crtc_state *crtc_state)
>  		 * the HW state readout code will complain that the expected
>  		 * IPS_CTL value is not the one we read.
>  		 */
> -		if (intel_de_wait_for_set(i915, IPS_CTL, IPS_ENABLE, 50))
> -			drm_err(&i915->drm,
> +		if (intel_de_wait_for_set(display, IPS_CTL, IPS_ENABLE, 50))
> +			drm_err(display->drm,
>  				"Timed out waiting for IPS enable\n");
>  	}
>  }
>  
>  bool hsw_ips_disable(const struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	bool need_vblank_wait = false;
> @@ -70,19 +72,19 @@ bool hsw_ips_disable(const struct intel_crtc_state *crtc_state)
>  		return need_vblank_wait;
>  
>  	if (IS_BROADWELL(i915)) {
> -		drm_WARN_ON(&i915->drm,
> +		drm_WARN_ON(display->drm,
>  			    snb_pcode_write(&i915->uncore, DISPLAY_IPS_CONTROL, 0));
>  		/*
>  		 * Wait for PCODE to finish disabling IPS. The BSpec specified
>  		 * 42ms timeout value leads to occasional timeouts so use 100ms
>  		 * instead.
>  		 */
> -		if (intel_de_wait_for_clear(i915, IPS_CTL, IPS_ENABLE, 100))
> -			drm_err(&i915->drm,
> +		if (intel_de_wait_for_clear(display, IPS_CTL, IPS_ENABLE, 100))
> +			drm_err(display->drm,
>  				"Timed out waiting for IPS disable\n");
>  	} else {
> -		intel_de_write(i915, IPS_CTL, 0);
> -		intel_de_posting_read(i915, IPS_CTL);
> +		intel_de_write(display, IPS_CTL, 0);
> +		intel_de_posting_read(display, IPS_CTL);
>  	}
>  
>  	/* We need to wait for a vblank before we can disable the plane. */
> @@ -188,6 +190,7 @@ bool hsw_crtc_supports_ips(struct intel_crtc *crtc)
>  
>  bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  
> @@ -195,7 +198,7 @@ bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state)
>  	if (!hsw_crtc_supports_ips(crtc))
>  		return false;
>  
> -	if (!i915->display.params.enable_ips)
> +	if (!display->params.enable_ips)
>  		return false;
>  
>  	if (crtc_state->pipe_bpp > 24)
> @@ -209,7 +212,7 @@ bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state)
>  	 * Should measure whether using a lower cdclk w/o IPS
>  	 */
>  	if (IS_BROADWELL(i915) &&
> -	    crtc_state->pixel_rate > i915->display.cdclk.max_cdclk_freq * 95 / 100)
> +	    crtc_state->pixel_rate > display->cdclk.max_cdclk_freq * 95 / 100)
>  		return false;
>  
>  	return true;
> @@ -259,6 +262,7 @@ int hsw_ips_compute_config(struct intel_atomic_state *state,
>  
>  void hsw_ips_get_config(struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  
> @@ -266,7 +270,7 @@ void hsw_ips_get_config(struct intel_crtc_state *crtc_state)
>  		return;
>  
>  	if (IS_HASWELL(i915)) {
> -		crtc_state->ips_enabled = intel_de_read(i915, IPS_CTL) & IPS_ENABLE;
> +		crtc_state->ips_enabled = intel_de_read(display, IPS_CTL) & IPS_ENABLE;
>  	} else {
>  		/*
>  		 * We cannot readout IPS state on broadwell, set to
> @@ -280,9 +284,9 @@ void hsw_ips_get_config(struct intel_crtc_state *crtc_state)
>  static int hsw_ips_debugfs_false_color_get(void *data, u64 *val)
>  {
>  	struct intel_crtc *crtc = data;
> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	struct intel_display *display = to_intel_display(crtc);
>  
> -	*val = i915->display.ips.false_color;
> +	*val = display->ips.false_color;
>  
>  	return 0;
>  }
> @@ -290,7 +294,7 @@ static int hsw_ips_debugfs_false_color_get(void *data, u64 *val)
>  static int hsw_ips_debugfs_false_color_set(void *data, u64 val)
>  {
>  	struct intel_crtc *crtc = data;
> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	struct intel_display *display = to_intel_display(crtc);
>  	struct intel_crtc_state *crtc_state;
>  	int ret;
>  
> @@ -298,7 +302,7 @@ static int hsw_ips_debugfs_false_color_set(void *data, u64 val)
>  	if (ret)
>  		return ret;
>  
> -	i915->display.ips.false_color = val;
> +	display->ips.false_color = val;
>  
>  	crtc_state = to_intel_crtc_state(crtc->base.state);
>  
> @@ -325,18 +329,19 @@ DEFINE_DEBUGFS_ATTRIBUTE(hsw_ips_debugfs_false_color_fops,
>  static int hsw_ips_debugfs_status_show(struct seq_file *m, void *unused)
>  {
>  	struct intel_crtc *crtc = m->private;
> +	struct intel_display *display = to_intel_display(crtc);
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	intel_wakeref_t wakeref;
>  
>  	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>  
>  	seq_printf(m, "Enabled by kernel parameter: %s\n",
> -		   str_yes_no(i915->display.params.enable_ips));
> +		   str_yes_no(display->params.enable_ips));
>  
> -	if (DISPLAY_VER(i915) >= 8) {
> +	if (DISPLAY_VER(display) >= 8) {
>  		seq_puts(m, "Currently: unknown\n");
>  	} else {
> -		if (intel_de_read(i915, IPS_CTL) & IPS_ENABLE)
> +		if (intel_de_read(display, IPS_CTL) & IPS_ENABLE)
>  			seq_puts(m, "Currently: enabled\n");
>  		else
>  			seq_puts(m, "Currently: disabled\n");
> -- 
> 2.39.5
> 
