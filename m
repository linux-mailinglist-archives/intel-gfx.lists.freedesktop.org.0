Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED4D9AB55E
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 19:44:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E909E10E6F2;
	Tue, 22 Oct 2024 17:44:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mw4taSpi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF2E310E6F0;
 Tue, 22 Oct 2024 17:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729619042; x=1761155042;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=SYhFOqrHlRmdVC/I/pUxiEXqLymBCZZz8j8GOsO/g+w=;
 b=mw4taSpivU9/e7Tc3fqVq3y6SRV3XrqRal1HQBvh8T0Iy/pMmZCpFHj6
 TS+QfkhBLR1+Z/H/Ma3KF5a4gyPub62897R8bImjZRveOIGUSA6BSsN3Q
 +LKws5TDf4DfHN3cNu9jTZZguQKmp/AsBtVu361v47Eiob17wlmf/KLxa
 /7qFNylIRL9tSOGuPYeC6A9tczXuswASg2VMwhTHFk/RtIQB/YMAG2Xpv
 UkJgs9K/2dVYTMUp4Vt5ovSw0spqjD1aKqG0XYmrjE7Nr4HQbeZOMlI2p
 uC0UkB7dLyPb0EKo74r9ND6X6+RT5zAH5PvRhd/X4zQGhr5jRD6UZwBYX g==;
X-CSE-ConnectionGUID: BFCEqoz+Txueg46SNOQQPQ==
X-CSE-MsgGUID: EdwlZ1MCTCagoJSfRv3Azw==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="40566420"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="40566420"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 10:44:01 -0700
X-CSE-ConnectionGUID: rsu0gqIiQQ6QKWfV3uWoQw==
X-CSE-MsgGUID: CT2bawtfTI6DkhXbvaTUoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="84762577"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 10:44:00 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 10:44:00 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 10:44:00 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 10:43:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ykguXXmo1anA+avs3wuADjjml2XAKWZhBVSFdTZQ7c4hnMwtl+15y4yddssQTcDOK/V0GOiTYV0BhC47QWSMvta4tWMgqqRd8IJ4B5i+zKfI58OvBbGqGF1N24t6kPFvsOBzWkqUFz+2l44kl8ZxuK+n8Q0SsdWuW36qQOLfciEzB4mcs+ig/QtCNsrU+yljALsNN97zYpRnzqGcjXC3K9IUFjOU2nIRacMKh+6DDRZya+sfUthABw7JovmuuDfiBggJd3yrxbHfVebcJJlASaK6iMHnac1wVqZpqhhViz3tb9NRzGPOXUj6o2O2CA0knEBdTikESXaIquzLA+a3bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3U8H2a98kJ7LRoAVoh+qhNSSoZjbdkDlMVyYbmpupl4=;
 b=fqF7XJ3m6P9475s6Xiw8maoTDW8a3baOIEnT9PAq2QgJytgi4jKvK65I1F7vd2AweRjRwtZ9UWX7Bi3It4VIX/jFqRGJ5tx6bCL0NynRQ8VZTgapwlqy9FQFuYG28nqwaDn/rWni7I4chSxvVinDH3kdtxMvnjsxYv72TbDMlB+sZRbCyEpzJSrh60TNL9lVq0WkemwHbtNnzxEhv1rfYxFOReWuRmjJ29do+akwG+QEOgNK6asRoP720+h+h6YcdW2090AruQoZ2YGq2KyHaB5Pp5+YdrWzqoZSWSjErUd+4eSQXsWqwVA1XEzYFt+eIXH96cEfCcjc+/VJFk7obA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SN7PR11MB6604.namprd11.prod.outlook.com (2603:10b6:806:270::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.27; Tue, 22 Oct
 2024 17:43:57 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8069.020; Tue, 22 Oct 2024
 17:43:57 +0000
Date: Tue, 22 Oct 2024 13:43:50 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH v4 12/15] drm/i915/pps: use display->platform.<platform>
 instead of IS_<PLATFORM>()
Message-ID: <ZxfkVvFFx4DTr4mx@intel.com>
References: <cover.1729518793.git.jani.nikula@intel.com>
 <308e80947bf6930cbdb4739399094c93ad631476.1729518793.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <308e80947bf6930cbdb4739399094c93ad631476.1729518793.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0329.namprd03.prod.outlook.com
 (2603:10b6:303:dd::34) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SN7PR11MB6604:EE_
X-MS-Office365-Filtering-Correlation-Id: 153e4628-14cd-4cd3-0074-08dcf2c11ac9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?qvCaTxOVaVDT1FwmjA3lRtLN5bGsq+i+FuEn5AZOqMjm0VtTyIhGKWPlbv1g?=
 =?us-ascii?Q?3qLC9E408PpbrZeXaWi821YSEK9GenfPNq4divzaTpS3YAYuIxzhCZvILqE1?=
 =?us-ascii?Q?Hn+GkqQB/+Nz9xTVFF01WEOEH5Ldua/SsTDy+HbeYuOs82z/MK8/IWmxEYOj?=
 =?us-ascii?Q?TVaOF/zqYKyzsY7AdD5DK8aym9VGE7If2WAv4IQf3iDAtV/ix2mmjTmDYaPm?=
 =?us-ascii?Q?Dc4R1cy3kGk+Bg/d98AO37c7aQA+JPD5yoajYp5r7vBg3bh9ECeuduTxFaRE?=
 =?us-ascii?Q?K8gkVhKFJwhbC9eKwbWjz+wz7rcuPer7QARxGO/j1jwG2a+ax9ScUb2AxALU?=
 =?us-ascii?Q?usYwPwV1XE+wbmSvoTeJwJdXdapiQdKWDUn988lrq5TAkHG0jFm/rvw5z1KN?=
 =?us-ascii?Q?Oj5AezWUis84VcXeIkq9bBzrldiJipMNc26ae3jvfqn+P6kYM89eAksjeMsP?=
 =?us-ascii?Q?v74bhePFnHUW515E6qhxfmUtIPwuW2T7AoQi0WSu94WKDMB8xgpTEZUIJZdq?=
 =?us-ascii?Q?ZeIaNxL2sCgm41LHsCtNfgr39Nj3fFk1d2ylUsWgRRk+6Qy544Q+Fyb1LVT2?=
 =?us-ascii?Q?veK6gjTIMPUo3uqFigbpKhyolc826jrof1DWeXUip81aQ9OSSxgQTFt7GIWg?=
 =?us-ascii?Q?nkCJdLQmzrL7iu1CfkDP6tRUfC789zth9Wn93nNcaQxlGCAdZdArwXMhy/9J?=
 =?us-ascii?Q?HkGw4Bsu4Xdk4ihsZbzyIZkWXeekjiZp1lzw3OemJbUkKIXBjfxhh5wVIqEV?=
 =?us-ascii?Q?bQgotcn77hOMLZSS4Y9TlnqRTdwjZAQGhz8HNSOVlZCezddl1dgNUbammuYz?=
 =?us-ascii?Q?WXXjI9c3xeOkGvsQH0FaMyjAe6W8H+vtE5yCG7eFts0BSMIpU9KdA6tuynt5?=
 =?us-ascii?Q?sz4ywET/l/evVEHdZt2UWST7o783oPLhY73TDQrApwQlVZp1t4c4nhOgRTZP?=
 =?us-ascii?Q?AY2oWAkPFgYEW8lUMrpulT+5k3E+AYARdJvTmRduFdWVOIZBHKY+1Yd9IKPV?=
 =?us-ascii?Q?/IbfyH2PQAu2vBb6ryi5/aFrJvdABOpNfQlCZHrVKm5h55IH1W7FvK6/whOE?=
 =?us-ascii?Q?4Qqq8Ujira9ZwCRWDyHfzGNgF3sT8TFMrIsCNX3ndceRvDa0sjL3T9jFVVty?=
 =?us-ascii?Q?nTkpudVoZdflFahDosgH/n+6NzjJAy6cu+RpZI4FTG50bi9IKvF1G/p5Tg9k?=
 =?us-ascii?Q?h8XwBgsLFRWOB9gOhhebD52A4K7APFBw6ZosHDIfrVmCqqOz5tr4RUhHEFt/?=
 =?us-ascii?Q?yM/C8oNQwezP5ysuSt107zX21fND6J9pqw7IHIrO6jxU8CPGKAobvIvENVJu?=
 =?us-ascii?Q?sVdQl1RWArrUtnjXkQeSc2d0?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?noLfz/P+d4EoLDV5YPwuZJBDlUXEfpIck+qB7WIxcHfGsad05YXNaBp6ZNZc?=
 =?us-ascii?Q?CR3WshqsOo0P+n9Fv5cQ1KunWOjUpfV9x1l0icYmhcOWrKruoJfGdVwW5s42?=
 =?us-ascii?Q?AR8N5EjO+0gLN1mKVSmKVkNPGJgY+MvUCxgQcA+Gr+Q8oVIwfePVt7cSIZv0?=
 =?us-ascii?Q?m7FEtGm0XgNyrh1EMg2oVAdwS9yE3zrPTH0xZQEwVqa50qH4OAMtxmBCL6FX?=
 =?us-ascii?Q?pIBaEExrsbOS72DI63G37aIyqFtUG44fZfxObgc3jLiXe0jYYkQgYaR9lMVA?=
 =?us-ascii?Q?kimqyfr9Jl8+eyF8voP8NfZ0Q7CYXnWvDwXbckPWVAMu5UXoKM39W5nPSVy3?=
 =?us-ascii?Q?PONKhseaghPbD3gxlxRmR6i15PsZDMwW3i+/7Wtkyt5o55yloG+50eyQOybe?=
 =?us-ascii?Q?ZNR08BeYP4JAbIDP/eouJfSi8Bxaxn82r4YrB5hO2boacN2uik6aN83SnpA2?=
 =?us-ascii?Q?3a60S0nN6KBJ8mOKltk6uY28k7GtO0/4cIkz/PWBlZO7/UkvWUOje6Tlc0H3?=
 =?us-ascii?Q?7tDpFhBAmHWwknzXa5HQgXX7sgzJcIjgit8QJOFOgoyFpiPqZvM7ifTibqkO?=
 =?us-ascii?Q?xC2sl0RcWkSLe/C4n9wNQZAAc/dhbW81RTTRO7ZCrzwShz1DpyG/Sgx96QiC?=
 =?us-ascii?Q?6Hclxp6Pj6JYth60SLHN+btRHiPMUe+yK2VcR0aky9CmjjxbMboUL05/KeVp?=
 =?us-ascii?Q?CRyq6Y7Oc9khyXSI1tD5PcE2EEl2iom8NQSE3E4kJn4/Q+0mkoAubpfyquLl?=
 =?us-ascii?Q?IKVEtIoe9wHYT2dr0Hd/+v0lm31aTgV8se8uVRcjTEeV9hjau/MVM2XwjT5e?=
 =?us-ascii?Q?Z1Eu0uaksw6Vtwp1+oz97uTw3yy7iVo23aScmpc98jEvVjhQCYVlIWefOOaV?=
 =?us-ascii?Q?naA+xHp0rpb+ydQKc/HlnJaLnkheOe9zB0qecNzPDwSimh6rH4EeCvM8sKoZ?=
 =?us-ascii?Q?v6r3kFGNIsUIECNbZjf8hc8EqwhBqg5NZA1KXaUcLQUmp8mmYXNNRKi1qZb8?=
 =?us-ascii?Q?XHO/1sHMiRLVPDsjHCgscXN00poMNKGTebO1i4dLl0FJdVSmpn/VF8q0M5ou?=
 =?us-ascii?Q?fiRaKk50JBSIwfdio60dIb44cmMIIuneacKC2jYzF/g3gfnc/NBk9H0nxnLx?=
 =?us-ascii?Q?yRoUwbR2NSPMx3zXWpcjA1Ob/YJfdB77iJHxM3Ld4dtBdKjVqaMuKwZCD7YD?=
 =?us-ascii?Q?ixG5arYwH/vt9dHUomYMk1xtn5IzZxVDw0Il2OwcQ6PDtKr+TCTElk2YhLMY?=
 =?us-ascii?Q?flUA110zVGdwVq26ZxaXIJtX6cT0UjGJv5lt7K30T6MLyRKQX4LjSOjcnVor?=
 =?us-ascii?Q?7caWbpiOP7pSmrkX4xmahnjOVZxmImp4iKvGYu6V0gZC4pzqDzy7ey1boFbP?=
 =?us-ascii?Q?foRZbuEpG9KIX6MhdvYJsolsEmXcnztvhimzqEXjC99yflOzoGsQ2C7EntVV?=
 =?us-ascii?Q?OCM7hiavCnDncIUTvgJSqwovmXdp7ioZyV1YCYWaYDu8cnXHligGqGZXpvhi?=
 =?us-ascii?Q?C2Iv8aVj2RnSailYbLb0hVL2OjzzXbgyYKWaIkWODIZn2z3BqoOJWCuGIVp7?=
 =?us-ascii?Q?gzu1QPAK8sbXk8RWvuO2V/Pr4qVs4cnAFSWVShFg23XVteEZQEJtRuE/sA/1?=
 =?us-ascii?Q?uA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 153e4628-14cd-4cd3-0074-08dcf2c11ac9
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 17:43:57.4111 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KEsCdK1gD3AMteqOIWXxkI449N+z7zv9z0mXtIkgoiFJkfe/kmPGvemq3AuWJY/MYsIkDZjD9WYrCLxri10OJA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6604
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

On Mon, Oct 21, 2024 at 04:54:13PM +0300, Jani Nikula wrote:
> Switch to using the new display->platform.<platform> members for
> platform identification in display code.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 47 ++++++++++--------------
>  1 file changed, 20 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index ffeee9daa568..4bb7461e4616 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -29,10 +29,9 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
>  static const char *pps_name(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_pps *pps = &intel_dp->pps;
>  
> -	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
> +	if (display->platform.valleyview || display->platform.cherryview) {
>  		switch (pps->vlv_pps_pipe) {
>  		case INVALID_PIPE:
>  			/*
> @@ -122,7 +121,7 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
>  	DP |= DP_PORT_WIDTH(1);
>  	DP |= DP_LINK_TRAIN_PAT_1;
>  
> -	if (IS_CHERRYVIEW(dev_priv))
> +	if (display->platform.cherryview)
>  		DP |= DP_PIPE_SEL_CHV(pipe);
>  	else
>  		DP |= DP_PIPE_SEL(pipe);
> @@ -134,7 +133,7 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
>  	 * So enable temporarily it if it's not already enabled.
>  	 */
>  	if (!pll_enabled) {
> -		release_cl_override = IS_CHERRYVIEW(dev_priv) &&
> +		release_cl_override = display->platform.cherryview &&
>  			!chv_phy_powergate_ch(dev_priv, phy, ch, true);
>  
>  		if (vlv_force_pll_on(dev_priv, pipe, vlv_get_dpll(dev_priv))) {
> @@ -356,10 +355,10 @@ static int intel_num_pps(struct intel_display *display)
>  {
>  	struct drm_i915_private *i915 = to_i915(display->drm);
>  
> -	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
> +	if (display->platform.valleyview || display->platform.cherryview)
>  		return 2;
>  
> -	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
> +	if (display->platform.geminilake || display->platform.broxton)
>  		return 2;
>  
>  	if (INTEL_PCH_TYPE(i915) >= PCH_MTL)
> @@ -406,11 +405,10 @@ pps_initial_setup(struct intel_dp *intel_dp)
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>  	struct intel_connector *connector = intel_dp->attached_connector;
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  
>  	lockdep_assert_held(&display->pps.mutex);
>  
> -	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
> +	if (display->platform.valleyview || display->platform.cherryview) {
>  		vlv_initial_power_sequencer_setup(intel_dp);
>  		return true;
>  	}
> @@ -509,9 +507,9 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
>  
>  	memset(regs, 0, sizeof(*regs));
>  
> -	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> +	if (display->platform.valleyview || display->platform.cherryview)
>  		pps_idx = vlv_power_sequencer_pipe(intel_dp);
> -	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> +	else if (display->platform.geminilake || display->platform.broxton)
>  		pps_idx = bxt_power_sequencer_idx(intel_dp);
>  	else
>  		pps_idx = intel_dp->pps.pps_idx;
> @@ -522,7 +520,7 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
>  	regs->pp_off = PP_OFF_DELAYS(display, pps_idx);
>  
>  	/* Cycle delay moved from PP_DIVISOR to PP_CONTROL */
> -	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv) ||
> +	if (display->platform.geminilake || display->platform.broxton ||
>  	    INTEL_PCH_TYPE(dev_priv) >= PCH_CNP)
>  		regs->pp_div = INVALID_MMIO_REG;
>  	else
> @@ -552,11 +550,10 @@ _pp_stat_reg(struct intel_dp *intel_dp)
>  static bool edp_have_panel_power(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  
>  	lockdep_assert_held(&display->pps.mutex);
>  
> -	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
> +	if ((display->platform.valleyview || display->platform.cherryview) &&
>  	    intel_dp->pps.vlv_pps_pipe == INVALID_PIPE)
>  		return false;
>  
> @@ -566,11 +563,10 @@ static bool edp_have_panel_power(struct intel_dp *intel_dp)
>  static bool edp_have_panel_vdd(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  
>  	lockdep_assert_held(&display->pps.mutex);
>  
> -	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
> +	if ((display->platform.valleyview || display->platform.cherryview) &&
>  	    intel_dp->pps.vlv_pps_pipe == INVALID_PIPE)
>  		return false;
>  
> @@ -953,7 +949,6 @@ void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync)
>  void intel_pps_on_unlocked(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	u32 pp;
>  	i915_reg_t pp_ctrl_reg;
>  
> @@ -978,7 +973,7 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
>  
>  	pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
>  	pp = ilk_get_pp_control(intel_dp);
> -	if (IS_IRONLAKE(dev_priv)) {
> +	if (display->platform.ironlake) {
>  		/* ILK workaround: disable reset around power sequence */
>  		pp &= ~PANEL_POWER_RESET;
>  		intel_de_write(display, pp_ctrl_reg, pp);
> @@ -994,7 +989,7 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
>  			     0, PCH_DPLSUNIT_CLOCK_GATE_DISABLE);
>  
>  	pp |= PANEL_POWER_ON;
> -	if (!IS_IRONLAKE(dev_priv))
> +	if (!display->platform.ironlake)
>  		pp |= PANEL_POWER_RESET;
>  
>  	intel_de_write(display, pp_ctrl_reg, pp);
> @@ -1007,7 +1002,7 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
>  		intel_de_rmw(display, SOUTH_DSPCLK_GATE_D,
>  			     PCH_DPLSUNIT_CLOCK_GATE_DISABLE, 0);
>  
> -	if (IS_IRONLAKE(dev_priv)) {
> +	if (display->platform.ironlake) {
>  		pp |= PANEL_POWER_RESET; /* restore panel reset bit */
>  		intel_de_write(display, pp_ctrl_reg, pp);
>  		intel_de_posting_read(display, pp_ctrl_reg);
> @@ -1627,7 +1622,7 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
>  
>  	/* Haswell doesn't have any port selection bits for the panel
>  	 * power sequencer any more. */
> -	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> +	if (display->platform.valleyview || display->platform.cherryview) {
>  		port_sel = PANEL_PORT_SELECT_VLV(port);
>  	} else if (HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv)) {
>  		switch (port) {
> @@ -1674,7 +1669,6 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
>  void intel_pps_encoder_reset(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	intel_wakeref_t wakeref;
>  
>  	if (!intel_dp_is_edp(intel_dp))
> @@ -1685,7 +1679,7 @@ void intel_pps_encoder_reset(struct intel_dp *intel_dp)
>  		 * Reinit the power sequencer also on the resume path, in case
>  		 * BIOS did something nasty with it.
>  		 */
> -		if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
> +		if (display->platform.valleyview || display->platform.cherryview)
>  			vlv_initial_power_sequencer_setup(intel_dp);
>  
>  		pps_init_delays(intel_dp);
> @@ -1721,11 +1715,10 @@ bool intel_pps_init(struct intel_dp *intel_dp)
>  static void pps_init_late(struct intel_dp *intel_dp)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>  	struct intel_connector *connector = intel_dp->attached_connector;
>  
> -	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
> +	if (display->platform.valleyview || display->platform.cherryview)
>  		return;
>  
>  	if (intel_num_pps(display) < 2)
> @@ -1783,9 +1776,9 @@ void intel_pps_setup(struct intel_display *display)
>  {
>  	struct drm_i915_private *i915 = to_i915(display->drm);
>  
> -	if (HAS_PCH_SPLIT(i915) || IS_GEMINILAKE(i915) || IS_BROXTON(i915))
> +	if (HAS_PCH_SPLIT(i915) || display->platform.geminilake || display->platform.broxton)
>  		display->pps.mmio_base = PCH_PPS_BASE;
> -	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
> +	else if (display->platform.valleyview || display->platform.cherryview)
>  		display->pps.mmio_base = VLV_PPS_BASE;
>  	else
>  		display->pps.mmio_base = PPS_BASE;
> @@ -1857,7 +1850,7 @@ void assert_pps_unlocked(struct intel_display *display, enum pipe pipe)
>  			MISSING_CASE(port_sel);
>  			break;
>  		}
> -	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> +	} else if (display->platform.valleyview || display->platform.cherryview) {
>  		/* presumably write lock depends on pipe, not port select */
>  		pp_reg = PP_CONTROL(display, pipe);
>  		panel_pipe = pipe;
> -- 
> 2.39.5
> 
