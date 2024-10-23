Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 441319ACD9E
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 16:57:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE8FC10E816;
	Wed, 23 Oct 2024 14:57:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hkdfFvjL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ABDA10E803;
 Wed, 23 Oct 2024 14:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729695447; x=1761231447;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=zzoabk8fWg3ph2jzF2rExJ8//yyOM19hzSxelGcEpJA=;
 b=hkdfFvjLXiGTJk+f57J/Y5/k0HFamYFYnBQ9OCtcOqGx+sKbYCNC7gR/
 fbuuro79kQPcX/wzPgFAH2W4CjdKOfDHy5fx7e9ljhkXvBLH/Y+MyZg1z
 XSvwO8DwEqkBOpEFCT0enwp8/10IqhQzABAinQ1TjKCUCuXAiSwwbd1yd
 TcwGOLOqv3HJLLZ7R19OhW79XaqdYVGRRLsK2lq/vUUjg4mSzHxWzicmQ
 DEmcMTheKPycRyowBkV8El83fkcVh24gaV+X7qCQHON09zIRxfuzMAwPP
 Ti05Oc5bNPx5kxdXS5ngvZlr3OtZpUzUxfCmhfYwzhsE3jLzXgcqODDey A==;
X-CSE-ConnectionGUID: 3hWl/4TTQ+WQKq+sANw83Q==
X-CSE-MsgGUID: aGVA/LuISu67m0YpqPhtXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="51830386"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="51830386"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 07:57:26 -0700
X-CSE-ConnectionGUID: RasMY90vS7i5H4VTrqb5xw==
X-CSE-MsgGUID: WRbfkDU2QZGNrvx+z0uFsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="80425292"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 07:57:26 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 07:57:25 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 07:57:25 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 07:57:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qPTvCtTE71YnOsRr1NXTSvYD3OrwjXsU3zHN10qWTztCkT9xoGYEDuHjCyxOZWbcFOtp5+i/vdXGLHqcvGSKmMIen1KrxBpe5Ss4LoVjDEmoDoC7tiFKejgP135xtg3unEk0EXxxa7dwCNjSAighg3YB4GtHcmdO9odZQO1OlNsMrz3ULxtbUAeaeoFFknb5rZ30bRTmCdmYpqsXrWsqA6fV3ocpPRN3wfzfmFEFBs8q9v/5jSkm9q3ZNOAaAYF8GQZy94WrK5RvJZn73VyOR1EAUVwxQwuKJww/4OxwoNN53Eym4ad+bmR3Hhp0V5ACbBSq+6rXcDUfYs7Z8ED1Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ncvmI5jGUpNCbPmsZUUcX/kgfi7dJzgoiUfEw45yOE4=;
 b=KBRqFVVMEhM8SZbGeuBZY+8KJhzrA0AAUgFTyp0R2ppEDcDrQvMisHadlpNX6Zskdueiu3AjvMFbpVlS9a9Z8VzqXSk1h1qr7mP0ohWOv51z8rm85UIQ/7SVCdYaab3NU5kwSwPxPGWfA5pxS++F9rcMBC9oLRiwVPFHQHu7dJ2hMYue+a1vM+ZHsvM0Jy2X1xme3M1ggEJFOLs65k2YvGzexcpJ2eK4j3cTrjbDjfzWlJUucax4iTSzGgtPbNb2rvx65GYNwOywlzywSyI0vhn72YhnjMiyRvkgRRxYn13LsrAhp5CSo6ZZeQN3hw4Po+S1y3U7zd/ravt+hF6UFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH8PR11MB6681.namprd11.prod.outlook.com (2603:10b6:510:1c4::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.17; Wed, 23 Oct
 2024 14:57:21 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8069.020; Wed, 23 Oct 2024
 14:57:19 +0000
Date: Wed, 23 Oct 2024 10:57:15 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 05/11] drm/i915/dp/hdcp: convert to struct intel_display
Message-ID: <ZxkOy1Kj_JC7bcd1@intel.com>
References: <cover.1729612605.git.jani.nikula@intel.com>
 <cc314c7be1d175b7bbb82844a99a3de4b4d2c135.1729612605.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <cc314c7be1d175b7bbb82844a99a3de4b4d2c135.1729612605.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0383.namprd04.prod.outlook.com
 (2603:10b6:303:81::28) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH8PR11MB6681:EE_
X-MS-Office365-Filtering-Correlation-Id: f9289d03-c09c-424c-e742-08dcf372fdcb
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?UMDgSN+Ehx33i452iJjjwCfxQEKkJ2fsRCXLfQfiLykKivxNZbHUBwRTplb/?=
 =?us-ascii?Q?0zAU675lTJlzFaKa7w3iK6ip45jH6+gHgQmg+KmJeYFKHZSb3EgsPuMN3iFO?=
 =?us-ascii?Q?LbEL8Nhn45G/qaWBAakl2grb+YGvs4eto38meG4hHeamiOv74NU2uJbz0n8d?=
 =?us-ascii?Q?fb2c/XNMQojrdigEpeNpUQKKLmovtNjO6xa4KEAzLiU6oLC2GpxWH9ufF3CK?=
 =?us-ascii?Q?UZSPvKN9shZiKrXd/wroGPZUOIiibbDpUx9HIHF8QW5EpXeKCQMoxWHYza/R?=
 =?us-ascii?Q?35d9SAi/syJQNQwG9x4Qt7+9bhSo/bAq4z0UwHEt6zAqrDvgNdEM0gjUhZB5?=
 =?us-ascii?Q?2GsHPrKM99X6wDsUb1vBERiw8xZmCDrWMFbmlXwu5oUTuvwgxlYUkFjq3jFR?=
 =?us-ascii?Q?wd/Bkt56daasxU7VQNftgGwlF2PNEToxlmU5stIYvkS/Ar+RHozHGf2Ok1h8?=
 =?us-ascii?Q?NZ/yq8+3im3505JH/JygO/D+6ROnk7jU5wU3OVCcPzyQll8QTquuCcYIllw7?=
 =?us-ascii?Q?Wyjbs5YBeDBpI/i7bGBqlB4YFJGviwnjte282g5eu56PIB0ykokkCxjMSHaq?=
 =?us-ascii?Q?uufe2llu8ZN9tgbkFvfom53Sx/AwSmWtAn/c+GMT5Jp1aE7U2iMNUQ1DZgYf?=
 =?us-ascii?Q?4698Fq/V8l7i47IAhTqVh5lafMQeTNIy9/louL1BC/2NJdsBeY+y3l8u697f?=
 =?us-ascii?Q?wwbQQany+QabPM0yQb8P7CquiSOvQ22/Y3xoFXd4BdJgIYmWuULZbJJs4+tA?=
 =?us-ascii?Q?id5FTVzZYJsMnpZ9gf1tdqfkeBMEJUjEv/sq1aKMCKFd2iAeTVSPOQNzskE0?=
 =?us-ascii?Q?+3ynuLYbhTiekUaqtpbRpwKpo2FA5eiuWLbPz9Jz/ftOklp7wi4lDfHxWPSe?=
 =?us-ascii?Q?N7S9P8XthB//YpzU4yyKeHgWN5OQQmzbUY8p1LvnW2Ll4ndc8Dz65DjDKKRl?=
 =?us-ascii?Q?ilEqqQzNWdD6BsBNiFM+JLGnyQhp+k9x4jnI6GuQEuaUtOHH0+e8dzzUUS7F?=
 =?us-ascii?Q?BZkO1IoGPOt95UvUbo07kSxBWWxnxnfYd/lkFigl06lrpgCaDwyjgK1Icj23?=
 =?us-ascii?Q?6M+PnXqx2a0Wv3sA1bfds/R85HaV8qdt8GkgZW+VDhe7+auhG1SmYK8POlWP?=
 =?us-ascii?Q?+rmSrZ/O4lJVCeoCtVZ9d2xnzKeWdgRUjzomIHnElbMEByAX6w2vBhmK+ODE?=
 =?us-ascii?Q?dFS765Dsq/b02O8oRWFdhyazbxBbsRFfdaKDtujJIxYCNzWykuzUESdN91h8?=
 =?us-ascii?Q?1bMvvZEbqYdaRj0V45ph9m+1Yck5J5pDTbrct2QeYCjYRPTzEtE1RQZec04R?=
 =?us-ascii?Q?0cA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?x/HGxYohyZTEWDoQnsx2Qx43Cby6we9kk6AJfGTWWwiUlqQ5+vj6hAmuAOO0?=
 =?us-ascii?Q?IShEIZlpXkDo23pNj7ivA1fej6rn4zD9LedMFaPBZGVMpTyI0US06nVD3RtD?=
 =?us-ascii?Q?k4f3XCOiFcq+eeftgIbzVs4VQ/7L8FLOuE4p17lQ9+n2Tdq6OMeJI/4fY8PO?=
 =?us-ascii?Q?LEXjlsFM/tQvZGgz5LTART4MiEawS3reYMdY7wA4M1oayXwYa+Dp+OcwTa1/?=
 =?us-ascii?Q?2ngZhZTf351yvQQEPrysshvqY69cVWocBfDlz43f2NVYF7PVUp+xBAtvcVOv?=
 =?us-ascii?Q?7DefzBAc3q5sdsH3o/6Y1OuU5M32+4wE36qM2/CPqOzw572FKJH2ihrjXc/A?=
 =?us-ascii?Q?hF3d+P+PkVXeilPfyrPVxd5gEOqDLQIb06vcHP3wGoKDCVabexLw+9VnxCde?=
 =?us-ascii?Q?6/kacEvr77zKBlG/5dfz4x8XLgOtgmKOSwe2JiyrnYyZd5ywI3eQtq3asXEd?=
 =?us-ascii?Q?edF1Xf9lur2ApUH6pLPM7+TB2q00tvZC0GQCZNf7rRpU4D4tEOuAkS7Tp/yx?=
 =?us-ascii?Q?B3LMPI6PAmcLWYqJ8xKq+C8ByWftcPwdVA+rb4qSU2FCiER74nBhVl6LWfUT?=
 =?us-ascii?Q?r3rKM7la/xUZBMPCfIv7/gQjUFl1x3zxcwKqqSDxYCqi6iDdleeZzud5axjP?=
 =?us-ascii?Q?+T9HtwL7neXefy1/n4fxKVuDVEIHD4Uh2ngwvr1tMnggCtzydh/k7OzDdXQn?=
 =?us-ascii?Q?q67YcNzragDfdxDpZ26tBmvKSZYFR/EVAPrlLAVYwv2nresvWhUviQwQ7Vd5?=
 =?us-ascii?Q?eafusc1157O5eh+zu7jMMeZbQ5/uZkNDHTPLfapNEtlFAXX/KHUyTwnhHBGr?=
 =?us-ascii?Q?eSQB9jGowUMrdc8I/3pl5LnuUay+u7htZ+P/g/Iageth/9/H78N0KE/fBlTv?=
 =?us-ascii?Q?t9JUuKIH95t3hmF8Hrhxqjs9FGLmhEbpqr8wni41/6GdYYVW7ABlw+8bBa05?=
 =?us-ascii?Q?82goI1gu9c9ww6KWN0RbJUBkfxOhnPLeS/shdFujLR84wtQA3hXVyz3SYQ3E?=
 =?us-ascii?Q?dj5/+JlL7GdtPob64g5J0Je06KDIYgk0i2tDwiPMdIie+6iMo0mI2GfB3xEm?=
 =?us-ascii?Q?pHnYXfrDVxsMZCqBqEwn+DGzyIGolRAohhhpqaQZiZzGrUJC4iUP4rkNAIR+?=
 =?us-ascii?Q?lv9s1/ti7PmFJujMzLk5UO3kCQGd2kFGQ6JVAfuVaPUSMba78CH0D01Bbi1P?=
 =?us-ascii?Q?bSJOZFkm9gYIefBnRUOFQiQ7JzjtaA/E0OiPGtEi8Rg4o9j6hLXf96szWD3j?=
 =?us-ascii?Q?tuY5S9H5hVKiSyRkoNNJJ+l+vVC7uzTBmjs6iPaNz13ZWdqUAIznRjTxWJH3?=
 =?us-ascii?Q?lMc99djEgWCvHS4f0tC+FvMdVsVgOlW7dKGNSE5NA7iFHiB8cjbcx1K1uqlT?=
 =?us-ascii?Q?bvtiRw6ijG/0bvPw/KWB6XRiVSWcPFBveyLzZIWCELgrEkxdvFKVasTlcMXx?=
 =?us-ascii?Q?llz7rCov7TRMaSVbIop0rvO9jAp34cm7F8c/FZN6dnj3B181j8BZIpFasRTF?=
 =?us-ascii?Q?yQ0OTEO0LcWK1w2exGlv1SBJafvyV/wSALXpTDUiNxdf4EekFVr+juOUv4+l?=
 =?us-ascii?Q?gB5WfVu/LNNbUV/iE6QkQb3m2WfDdTkA8/MZnGqRw0bAy8tMx+tw7jUBKlmo?=
 =?us-ascii?Q?7w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f9289d03-c09c-424c-e742-08dcf372fdcb
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 14:57:19.3352 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kElp9iwvmWAo6yvpVYqWs/qSe3EBiD7/2CL0l2xNGkvfLxHuX4jkY4HPNyCkh7u/5v4MiHfE8wBv7j7a1wJykQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6681
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

On Tue, Oct 22, 2024 at 06:57:22PM +0300, Jani Nikula wrote:
> struct intel_display will replace struct drm_i915_private as the main
> device pointer for display code. Switch DP HDCP code over to it.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 88 ++++++++++----------
>  1 file changed, 45 insertions(+), 43 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 5d77adaaf566..e7f9619bccc0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -58,7 +58,7 @@ static
>  int intel_dp_hdcp_write_an_aksv(struct intel_digital_port *dig_port,
>  				u8 *an)
>  {
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	struct intel_display *display = to_intel_display(dig_port);
>  	u8 aksv[DRM_HDCP_KSV_LEN] = {};
>  	ssize_t dpcd_ret;
>  
> @@ -66,7 +66,7 @@ int intel_dp_hdcp_write_an_aksv(struct intel_digital_port *dig_port,
>  	dpcd_ret = drm_dp_dpcd_write(&dig_port->dp.aux, DP_AUX_HDCP_AN,
>  				     an, DRM_HDCP_AN_LEN);
>  	if (dpcd_ret != DRM_HDCP_AN_LEN) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Failed to write An over DP/AUX (%zd)\n",
>  			    dpcd_ret);
>  		return dpcd_ret >= 0 ? -EIO : dpcd_ret;
> @@ -82,7 +82,7 @@ int intel_dp_hdcp_write_an_aksv(struct intel_digital_port *dig_port,
>  	dpcd_ret = drm_dp_dpcd_write(&dig_port->dp.aux, DP_AUX_HDCP_AKSV,
>  				     aksv, DRM_HDCP_KSV_LEN);
>  	if (dpcd_ret != DRM_HDCP_KSV_LEN) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Failed to write Aksv over DP/AUX (%zd)\n",
>  			    dpcd_ret);
>  		return dpcd_ret >= 0 ? -EIO : dpcd_ret;
> @@ -93,13 +93,13 @@ int intel_dp_hdcp_write_an_aksv(struct intel_digital_port *dig_port,
>  static int intel_dp_hdcp_read_bksv(struct intel_digital_port *dig_port,
>  				   u8 *bksv)
>  {
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	struct intel_display *display = to_intel_display(dig_port);
>  	ssize_t ret;
>  
>  	ret = drm_dp_dpcd_read(&dig_port->dp.aux, DP_AUX_HDCP_BKSV, bksv,
>  			       DRM_HDCP_KSV_LEN);
>  	if (ret != DRM_HDCP_KSV_LEN) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Read Bksv from DP/AUX failed (%zd)\n", ret);
>  		return ret >= 0 ? -EIO : ret;
>  	}
> @@ -109,7 +109,7 @@ static int intel_dp_hdcp_read_bksv(struct intel_digital_port *dig_port,
>  static int intel_dp_hdcp_read_bstatus(struct intel_digital_port *dig_port,
>  				      u8 *bstatus)
>  {
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	struct intel_display *display = to_intel_display(dig_port);
>  	ssize_t ret;
>  
>  	/*
> @@ -120,7 +120,7 @@ static int intel_dp_hdcp_read_bstatus(struct intel_digital_port *dig_port,
>  	ret = drm_dp_dpcd_read(&dig_port->dp.aux, DP_AUX_HDCP_BINFO,
>  			       bstatus, DRM_HDCP_BSTATUS_LEN);
>  	if (ret != DRM_HDCP_BSTATUS_LEN) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Read bstatus from DP/AUX failed (%zd)\n", ret);
>  		return ret >= 0 ? -EIO : ret;
>  	}
> @@ -129,7 +129,7 @@ static int intel_dp_hdcp_read_bstatus(struct intel_digital_port *dig_port,
>  
>  static
>  int intel_dp_hdcp_read_bcaps(struct drm_dp_aux *aux,
> -			     struct drm_i915_private *i915,
> +			     struct intel_display *display,
>  			     u8 *bcaps)
>  {
>  	ssize_t ret;
> @@ -137,7 +137,7 @@ int intel_dp_hdcp_read_bcaps(struct drm_dp_aux *aux,
>  	ret = drm_dp_dpcd_read(aux, DP_AUX_HDCP_BCAPS,
>  			       bcaps, 1);
>  	if (ret != 1) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Read bcaps from DP/AUX failed (%zd)\n", ret);
>  		return ret >= 0 ? -EIO : ret;
>  	}
> @@ -149,11 +149,11 @@ static
>  int intel_dp_hdcp_repeater_present(struct intel_digital_port *dig_port,
>  				   bool *repeater_present)
>  {
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	struct intel_display *display = to_intel_display(dig_port);
>  	ssize_t ret;
>  	u8 bcaps;
>  
> -	ret = intel_dp_hdcp_read_bcaps(&dig_port->dp.aux, i915, &bcaps);
> +	ret = intel_dp_hdcp_read_bcaps(&dig_port->dp.aux, display, &bcaps);
>  	if (ret)
>  		return ret;
>  
> @@ -165,13 +165,14 @@ static
>  int intel_dp_hdcp_read_ri_prime(struct intel_digital_port *dig_port,
>  				u8 *ri_prime)
>  {
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	struct intel_display *display = to_intel_display(dig_port);
>  	ssize_t ret;
>  
>  	ret = drm_dp_dpcd_read(&dig_port->dp.aux, DP_AUX_HDCP_RI_PRIME,
>  			       ri_prime, DRM_HDCP_RI_LEN);
>  	if (ret != DRM_HDCP_RI_LEN) {
> -		drm_dbg_kms(&i915->drm, "Read Ri' from DP/AUX failed (%zd)\n",
> +		drm_dbg_kms(display->drm,
> +			    "Read Ri' from DP/AUX failed (%zd)\n",
>  			    ret);
>  		return ret >= 0 ? -EIO : ret;
>  	}
> @@ -182,14 +183,14 @@ static
>  int intel_dp_hdcp_read_ksv_ready(struct intel_digital_port *dig_port,
>  				 bool *ksv_ready)
>  {
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	struct intel_display *display = to_intel_display(dig_port);
>  	ssize_t ret;
>  	u8 bstatus;
>  
>  	ret = drm_dp_dpcd_read(&dig_port->dp.aux, DP_AUX_HDCP_BSTATUS,
>  			       &bstatus, 1);
>  	if (ret != 1) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Read bstatus from DP/AUX failed (%zd)\n", ret);
>  		return ret >= 0 ? -EIO : ret;
>  	}
> @@ -201,7 +202,7 @@ static
>  int intel_dp_hdcp_read_ksv_fifo(struct intel_digital_port *dig_port,
>  				int num_downstream, u8 *ksv_fifo)
>  {
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	struct intel_display *display = to_intel_display(dig_port);
>  	ssize_t ret;
>  	int i;
>  
> @@ -213,7 +214,7 @@ int intel_dp_hdcp_read_ksv_fifo(struct intel_digital_port *dig_port,
>  				       ksv_fifo + i * DRM_HDCP_KSV_LEN,
>  				       len);
>  		if (ret != len) {
> -			drm_dbg_kms(&i915->drm,
> +			drm_dbg_kms(display->drm,
>  				    "Read ksv[%d] from DP/AUX failed (%zd)\n",
>  				    i, ret);
>  			return ret >= 0 ? -EIO : ret;
> @@ -226,7 +227,7 @@ static
>  int intel_dp_hdcp_read_v_prime_part(struct intel_digital_port *dig_port,
>  				    int i, u32 *part)
>  {
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	struct intel_display *display = to_intel_display(dig_port);
>  	ssize_t ret;
>  
>  	if (i >= DRM_HDCP_V_PRIME_NUM_PARTS)
> @@ -236,7 +237,7 @@ int intel_dp_hdcp_read_v_prime_part(struct intel_digital_port *dig_port,
>  			       DP_AUX_HDCP_V_PRIME(i), part,
>  			       DRM_HDCP_V_PRIME_PART_LEN);
>  	if (ret != DRM_HDCP_V_PRIME_PART_LEN) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Read v'[%d] from DP/AUX failed (%zd)\n", i, ret);
>  		return ret >= 0 ? -EIO : ret;
>  	}
> @@ -256,14 +257,14 @@ static
>  bool intel_dp_hdcp_check_link(struct intel_digital_port *dig_port,
>  			      struct intel_connector *connector)
>  {
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	struct intel_display *display = to_intel_display(dig_port);
>  	ssize_t ret;
>  	u8 bstatus;
>  
>  	ret = drm_dp_dpcd_read(&dig_port->dp.aux, DP_AUX_HDCP_BSTATUS,
>  			       &bstatus, 1);
>  	if (ret != 1) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Read bstatus from DP/AUX failed (%zd)\n", ret);
>  		return false;
>  	}
> @@ -275,11 +276,11 @@ static
>  int intel_dp_hdcp_get_capability(struct intel_digital_port *dig_port,
>  				 bool *hdcp_capable)
>  {
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	struct intel_display *display = to_intel_display(dig_port);
>  	ssize_t ret;
>  	u8 bcaps;
>  
> -	ret = intel_dp_hdcp_read_bcaps(&dig_port->dp.aux, i915, &bcaps);
> +	ret = intel_dp_hdcp_read_bcaps(&dig_port->dp.aux, display, &bcaps);
>  	if (ret)
>  		return ret;
>  
> @@ -342,7 +343,7 @@ static int
>  intel_dp_hdcp2_read_rx_status(struct intel_connector *connector,
>  			      u8 *rx_status)
>  {
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>  	struct drm_dp_aux *aux = &dig_port->dp.aux;
>  	ssize_t ret;
> @@ -351,7 +352,7 @@ intel_dp_hdcp2_read_rx_status(struct intel_connector *connector,
>  			       DP_HDCP_2_2_REG_RXSTATUS_OFFSET, rx_status,
>  			       HDCP_2_2_DP_RXSTATUS_LEN);
>  	if (ret != HDCP_2_2_DP_RXSTATUS_LEN) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "Read bstatus from DP/AUX failed (%zd)\n", ret);
>  		return ret >= 0 ? -EIO : ret;
>  	}
> @@ -397,7 +398,7 @@ static ssize_t
>  intel_dp_hdcp2_wait_for_msg(struct intel_connector *connector,
>  			    const struct hdcp2_dp_msg_data *hdcp2_msg_data)
>  {
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>  	struct intel_dp *dp = &dig_port->dp;
>  	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
> @@ -430,7 +431,7 @@ intel_dp_hdcp2_wait_for_msg(struct intel_connector *connector,
>  	}
>  
>  	if (ret)
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "msg_id %d, ret %d, timeout(mSec): %d\n",
>  			    hdcp2_msg_data->msg_id, ret, timeout);
>  
> @@ -514,8 +515,8 @@ static
>  int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
>  			    u8 msg_id, void *buf, size_t size)
>  {
> +	struct intel_display *display = to_intel_display(connector);
>  	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>  	struct drm_dp_aux *aux = &dig_port->dp.aux;
>  	struct intel_dp *dp = &dig_port->dp;
>  	struct intel_hdcp *hdcp = &dp->attached_connector->hdcp;
> @@ -568,7 +569,7 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
>  		ret = drm_dp_dpcd_read(aux, offset,
>  				       (void *)byte, len);
>  		if (ret < 0) {
> -			drm_dbg_kms(&i915->drm, "msg_id %d, ret %zd\n",
> +			drm_dbg_kms(display->drm, "msg_id %d, ret %zd\n",
>  				    msg_id, ret);
>  			return ret;
>  		}
> @@ -581,7 +582,8 @@ int intel_dp_hdcp2_read_msg(struct intel_connector *connector,
>  	if (hdcp2_msg_data->msg_read_timeout > 0) {
>  		msg_expired = ktime_after(ktime_get_raw(), msg_end);
>  		if (msg_expired) {
> -			drm_dbg_kms(&i915->drm, "msg_id %d, entire msg read timeout(mSec): %d\n",
> +			drm_dbg_kms(display->drm,
> +				    "msg_id %d, entire msg read timeout(mSec): %d\n",
>  				    msg_id, hdcp2_msg_data->msg_read_timeout);
>  			return -ETIMEDOUT;
>  		}
> @@ -696,7 +698,7 @@ int intel_dp_hdcp_get_remote_capability(struct intel_connector *connector,
>  					bool *hdcp_capable,
>  					bool *hdcp2_capable)
>  {
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	struct drm_dp_aux *aux;
>  	u8 bcaps;
>  	int ret;
> @@ -709,10 +711,10 @@ int intel_dp_hdcp_get_remote_capability(struct intel_connector *connector,
>  	aux = &connector->port->aux;
>  	ret =  _intel_dp_hdcp2_get_capability(aux, hdcp2_capable);
>  	if (ret)
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "HDCP2 DPCD capability read failed err: %d\n", ret);
>  
> -	ret = intel_dp_hdcp_read_bcaps(aux, i915, &bcaps);
> +	ret = intel_dp_hdcp_read_bcaps(aux, display, &bcaps);
>  	if (ret)
>  		return ret;
>  
> @@ -745,8 +747,8 @@ static int
>  intel_dp_mst_toggle_hdcp_stream_select(struct intel_connector *connector,
>  				       bool enable)
>  {
> +	struct intel_display *display = to_intel_display(connector);
>  	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	struct intel_hdcp *hdcp = &connector->hdcp;
>  	int ret;
>  
> @@ -754,7 +756,7 @@ intel_dp_mst_toggle_hdcp_stream_select(struct intel_connector *connector,
>  					 hdcp->stream_transcoder, enable,
>  					 TRANS_DDI_HDCP_SELECT);
>  	if (ret)
> -		drm_err(&i915->drm, "%s HDCP stream select failed (%d)\n",
> +		drm_err(display->drm, "%s HDCP stream select failed (%d)\n",
>  			enable ? "Enable" : "Disable", ret);
>  	return ret;
>  }
> @@ -763,8 +765,8 @@ static int
>  intel_dp_mst_hdcp_stream_encryption(struct intel_connector *connector,
>  				    bool enable)
>  {
> +	struct intel_display *display = to_intel_display(connector);
>  	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	struct intel_hdcp *hdcp = &connector->hdcp;
>  	enum port port = dig_port->base.port;
>  	enum transcoder cpu_transcoder = hdcp->stream_transcoder;
> @@ -780,10 +782,10 @@ intel_dp_mst_hdcp_stream_encryption(struct intel_connector *connector,
>  		return -EINVAL;
>  
>  	/* Wait for encryption confirmation */
> -	if (intel_de_wait(i915, HDCP_STATUS(i915, cpu_transcoder, port),
> +	if (intel_de_wait(display, HDCP_STATUS(display, cpu_transcoder, port),
>  			  stream_enc_status, enable ? stream_enc_status : 0,
>  			  HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
> -		drm_err(&i915->drm, "Timed out waiting for transcoder: %s stream encryption %s\n",
> +		drm_err(display->drm, "Timed out waiting for transcoder: %s stream encryption %s\n",
>  			transcoder_name(cpu_transcoder), enable ? "enabled" : "disabled");
>  		return -ETIMEDOUT;
>  	}
> @@ -795,8 +797,8 @@ static int
>  intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
>  				     bool enable)
>  {
> +	struct intel_display *display = to_intel_display(connector);
>  	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>  	struct intel_hdcp *hdcp = &connector->hdcp;
>  	enum transcoder cpu_transcoder = hdcp->stream_transcoder;
> @@ -804,8 +806,8 @@ intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
>  	enum port port = dig_port->base.port;
>  	int ret;
>  
> -	drm_WARN_ON(&i915->drm, enable &&
> -		    !!(intel_de_read(i915, HDCP2_AUTH_STREAM(i915, cpu_transcoder, port))
> +	drm_WARN_ON(display->drm, enable &&
> +		    !!(intel_de_read(display, HDCP2_AUTH_STREAM(display, cpu_transcoder, port))
>  		    & AUTH_STREAM_TYPE) != data->streams[0].stream_type);
>  
>  	ret = intel_dp_mst_toggle_hdcp_stream_select(connector, enable);
> @@ -813,11 +815,11 @@ intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
>  		return ret;
>  
>  	/* Wait for encryption confirmation */
> -	if (intel_de_wait(i915, HDCP2_STREAM_STATUS(i915, cpu_transcoder, pipe),
> +	if (intel_de_wait(display, HDCP2_STREAM_STATUS(display, cpu_transcoder, pipe),
>  			  STREAM_ENCRYPTION_STATUS,
>  			  enable ? STREAM_ENCRYPTION_STATUS : 0,
>  			  HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
> -		drm_err(&i915->drm, "Timed out waiting for transcoder: %s stream encryption %s\n",
> +		drm_err(display->drm, "Timed out waiting for transcoder: %s stream encryption %s\n",
>  			transcoder_name(cpu_transcoder), enable ? "enabled" : "disabled");
>  		return -ETIMEDOUT;
>  	}
> -- 
> 2.39.5
> 
