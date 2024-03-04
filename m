Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D688870E80
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 22:44:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAA2511261A;
	Mon,  4 Mar 2024 21:44:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lg5VKfWx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C674B112619;
 Mon,  4 Mar 2024 21:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709588680; x=1741124680;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Pflo02xcShKXa/etbs2XK1ZI9bCFoncJkEsfHTXnIXY=;
 b=Lg5VKfWxQ/t25eIu4OZYI/EPw6qpXhWq0jkZwUX60bMtK5ad06mRoxJR
 b/g4RGQpFGZUGLrHAxQz2pTIFWQFUbVVR5xNWX5klCkV05dfqaWCdu/oH
 8EnNWMhVCZIh4lPMvq/ipYCs9PSnF7/voap1iQnLrEwp6FHiASvaKPxbO
 uUOxg63s91eEOl4dXOmgvrl3wqbBybbDGCtI1NVFMD3U4/HlXIzROsHGc
 WWK2P3i6W28c09111WExD6TmQxSTgapZDgOiLEmWzCWUSvCnxHxE0vReD
 czE3QBA+VrHAbkvhvZVU8aIFzY4yrCZMoSQgKmxijm47UGFr7laa+kFg5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="4688653"
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; 
   d="scan'208";a="4688653"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 13:44:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; 
   d="scan'208";a="8986494"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2024 13:44:39 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 13:44:38 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 13:44:38 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Mar 2024 13:44:38 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 4 Mar 2024 13:44:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YSlHqo4J7Ep14s1jwooWBiHVGYGkIAOFaUoUftmN9h/xZWWnvRCMTboR2oY670KvpQ4T0LsOywQickjvTAIPuXrLEDC2GUwbYNrO/rsj76ZSYh2gLasFxmSkJWOKwmhmJ0Suegf/gY5Wgeqt5bGsC7XCAwHpdMQ/8yOUQxVqT/2Pof/hSo825Q8mjzEsi84b2sUdOYSFaVErQIeTRWwJ9qjzDWEl2Y4nutyaMe/fu63B9uYojBDgNHY5r08/UihSqBJFClSLIYYd+/TvS8z3Iria8Kgcgn6SAqfTcaSeZegg/Qxr+HT55RQjCi480hWf+TWCarqICYwKVdyxipYuoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GoJnQYr6rIgIv6jupH/bPDZAgo5doC8onFffsMumfkk=;
 b=k0JUC8ttUhX2Q1+VWHEDzmszIx18jcsYI5n9N6HyRQXvWDVjNwO3//uQtqD8FlnTu2ndCfQO4QDBXDnap+4smdz01eTCD2fqszunBiSLJbbJOSQohA1L6Tb0cd4lTsjgZYjzCWmffOwtzbHARD0ILrXOLAQBHBDaMPeOcRMyNpXZlkEp6anzzeP/j7T+Le16BGKHQHc9CpkvEADg7WYH+eOr29S//nRRmuAy+1YSNT/J2wui6kHoJMPGQttR3uZ/LivxIsgJ0MN4KgImmpEKEoGdcix3tU/ySIYipDdHij+BGqZE2D6lZXXggW/tgqeyjXX54Ep4BaUElavQKMgB0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CY5PR11MB6463.namprd11.prod.outlook.com (2603:10b6:930:31::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.23; Mon, 4 Mar
 2024 21:44:35 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7362.019; Mon, 4 Mar 2024
 21:44:35 +0000
Date: Mon, 4 Mar 2024 13:44:32 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Lucas
 De Marchi <lucas.demarchi@intel.com>, <vinod.govindapillai@intel.com>,
 <stanislav.lisovskiy@intel.com>
Subject: Re: [PATCH 1/8] drm/i915/cdclk: Rename lnl_cdclk_table to
 xe2lpd_cdclk_table
Message-ID: <20240304214432.GV718896@mdroper-desk1.amr.corp.intel.com>
References: <20240304183028.195057-1-gustavo.sousa@intel.com>
 <20240304183028.195057-2-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240304183028.195057-2-gustavo.sousa@intel.com>
X-ClientProxiedBy: BY5PR17CA0001.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::14) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CY5PR11MB6463:EE_
X-MS-Office365-Filtering-Correlation-Id: f839d020-dc2a-46a3-dbe9-08dc3c9448c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /2qgey2tLt+Xt7SA1tpy35AlF/iHL4gw5xzCcnQJzOoVEEIgwWeB+bBcPQOtpbZSt6eg+xAKmljj5obvfN+FWUnfv9sV9gagiywNDRRUkaPr1CTRt55+HiTY1QvMZ2qaYGxv0BFU9AN5poOQnh0MF11aW4KLkoace09U0KsqDdm8RiiPXCzQEgQoDZ9HRfhkj2Vd8RJp2f0osD9AX7FvahxVCvedh18lDcyO3AhUdJRgjvda7CILxXqKysPEMX+3zFy+dprUcP8Ln6AaOGJyd6R08EhrJHcDlW7g6EbNbxCCd9QDlarmCv4rZOb1fNkIm39cYjGFRC16wQmQHUyn416ndFykC5SQvmhjTxi/tb9ye3dfv2fGJwfYP7cNrP/XfSSIOxk+ksODTlHvY/NDZ00Asa2FvPhkITmF6C47o1tP+K4GRJ2XMiYulQw6BHNyVeFh1UpFXTTeXrFqAL8Fr3TYgyrJG0YknbzrmKEo58fg8tZqCI3WHb7ZAGgROrm9BBo1bqBm+S+4FKtzyRnFb6bDdlyThaTU+PKdWJgSyjC0SfHav3tCMfk90hIqBQbJ/KowPC+D1V9rsNOMxU1AVnxdqShhu6dyz6hQTETZa1VGce3SaBmj8V6Ua17kUGoYXlITK0AY/LKmDaCn5hnthDlaW1BQobEy9v5Vo+rxm5Y=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+03YWBb4r9+Q6hmcgItMUritM0o++LnjESxvhS4vF+Xyy5X7wOx3g5wbmekp?=
 =?us-ascii?Q?1vT2m/g9xS9yiGS6MlzyfV6zbJ1zOokT1XnExHmixCgHhV5/1r54Xo6hSz4B?=
 =?us-ascii?Q?Ubrm9kmnS5Rl495DVcm4uqI9saTtzXsJ+JlXg3d8zf/ZfHBgkwO2c0qxmD8u?=
 =?us-ascii?Q?ncXVpoBEQesQ3rI8m0nIxsLJwUvEbGOVrZgJi6BlcnEsT/Gr0Hg18yZDkLN0?=
 =?us-ascii?Q?9tZjZgXRLIk1BHS8Ap5q2EG3WkisNzWdnYp7PTMRPWu+pIaIYG2oZx7ZFk1E?=
 =?us-ascii?Q?LSouRsXkOrFit+3a8gykzsXcRaTKnQAlW/Toxw0mb6fdiJ60U207Kb9C+D7l?=
 =?us-ascii?Q?eKwhUKrnrWPmS8bJHLYtLvMh8zgg1PQyq90I1FdMfCbQDeMLK+8e6zN5hPjV?=
 =?us-ascii?Q?CfkrtKRScN9DkqvJzrclE4gi+GIAi19OCT8AJ2uVQs3d3li7w/U1ErJz0q53?=
 =?us-ascii?Q?dSXRy9ZL7aQTBHxtNyLzQqYWV/MvoUZb+0/n/QlVAjFJ2+jM6XmpDnwowc/p?=
 =?us-ascii?Q?biRRl2B0TByIMD7P/CFDrnfpt6rpx3GEBGUB3PhGFZsXXgCJ5KEDjGp+xw6S?=
 =?us-ascii?Q?Z+9skUdNwJuoa0W4D+JMczVrrt2LN+dssOxrCue/a2/NhMBF9+3zB8ccCQYv?=
 =?us-ascii?Q?SDRXwk2tuHwshuXAiOZZeOamzLIf9Fu+k1BFA7EcGkwSW0KonH8CB5Y0Gph6?=
 =?us-ascii?Q?0Pi0waRQxNx1jdFNCELOLzJFmDgkah3tMqIULdU8pOG7UFAU1caymD0/fz+X?=
 =?us-ascii?Q?8300bCnKcwTZXmkjUdEoog05C3QSF9V2UBK9BdyFlOHons7pAiSd4sfep/qf?=
 =?us-ascii?Q?SPBP9EwDh7KF12mpRuSm+NsNMuQcHYunAO9BRDDsAhATHs0xEopvMZIogDBD?=
 =?us-ascii?Q?pDYEoCzxefbw60lEXM5g6gm5HVUHfhHZbcb5UT9RPvSEB/p+fLZc6oKenlBI?=
 =?us-ascii?Q?NdKhUyKVq+dJYJsx4sdeuyJEasHyx83m97a2YTQkvdK4suIokHpLUvKg0gkz?=
 =?us-ascii?Q?RqR94uYmTkR8CjQRrKG+P6WDd2fE9Q/FaG9oNp97cr/u7NVjiF19Mclum08o?=
 =?us-ascii?Q?helF1V8a/BkWUJeTwUseSzFVCwqIA7vPOLwQASpcsNC7oqqpto+5PuF7q+Jq?=
 =?us-ascii?Q?J1biSnd9AL/ryrBCteGnUVKPZRGgb50U6bWujQh7LkFdKXyvyQ3V24dEP9Yb?=
 =?us-ascii?Q?ZQEpXlBhW4nj0L3d8HGBW0nk5/3RsQD94b2oMUHUu8Yrn47/oSP0MXe7BevB?=
 =?us-ascii?Q?62mdwXWwbqn+MehHjamIiCUxGo+JB1KOeoTmmUgRBladQbw5wW/Loiqrjdka?=
 =?us-ascii?Q?plogE1LDKJCHVe5IlcjWtEdGiyQxjrEWix8nUf8MVLJEFEjU3d1yRdaAAVCR?=
 =?us-ascii?Q?Hikx5TWLMRBBsu61p5COV37V76Y4I1BzVVvucsR34A4HwVKCl6rp8vKesFKY?=
 =?us-ascii?Q?Q/wrdfHG3jzhDmWq1GFZeoX5Qv420gziqA/KDqGZmbmPRNK7lzwFrR79zZoV?=
 =?us-ascii?Q?215rlLacgxg6WdpoFJOSsECTsn/HhI0PyuWBP7I3donR5h0dFDBxMFYwxT9H?=
 =?us-ascii?Q?sVcw7ZR1a1xd6k5nFSyJuHpbXbhEjirXBwK4VRNOmpLODONh+MFf0EIA3Wlc?=
 =?us-ascii?Q?Fw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f839d020-dc2a-46a3-dbe9-08dc3c9448c5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2024 21:44:35.5741 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9DcKKltEmG+U2xBZWiQFuXW3BKWPFC5yrVyuYSmHsU1UcLBKVlpfKyncpMz8lEfxOa232sM+O5PBa7EFZoCliAY1RC+cekMvN9Zp6prh+80=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6463
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

On Mon, Mar 04, 2024 at 03:30:20PM -0300, Gustavo Sousa wrote:
> The CDCLK table is tied to Xe2LPD display and not to the platform. Let's
> rename lnl_cdclk_table to xe2lpd_cdclk_table in order to reflect that.
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 22473c55b899..407bd541eb46 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1417,7 +1417,7 @@ static const struct intel_cdclk_vals mtl_cdclk_table[] = {
>  	{}
>  };
>  
> -static const struct intel_cdclk_vals lnl_cdclk_table[] = {
> +static const struct intel_cdclk_vals xe2lpd_cdclk_table[] = {
>  	{ .refclk = 38400, .cdclk = 153600, .ratio = 16, .waveform = 0xaaaa },
>  	{ .refclk = 38400, .cdclk = 172800, .ratio = 16, .waveform = 0xad5a },
>  	{ .refclk = 38400, .cdclk = 192000, .ratio = 16, .waveform = 0xb6b6 },
> @@ -3710,7 +3710,7 @@ void intel_init_cdclk_hooks(struct drm_i915_private *dev_priv)
>  {
>  	if (DISPLAY_VER(dev_priv) >= 20) {
>  		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
> -		dev_priv->display.cdclk.table = lnl_cdclk_table;
> +		dev_priv->display.cdclk.table = xe2lpd_cdclk_table;
>  	} else if (DISPLAY_VER(dev_priv) >= 14) {
>  		dev_priv->display.funcs.cdclk = &mtl_cdclk_funcs;
>  		dev_priv->display.cdclk.table = mtl_cdclk_table;
> -- 
> 2.44.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
