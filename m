Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 244459AB563
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 19:45:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B28B710E6F4;
	Tue, 22 Oct 2024 17:45:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jJFcBh8n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59BE810E00A;
 Tue, 22 Oct 2024 17:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729619140; x=1761155140;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=94Qsutj7I9ch4aj+pfl7NY0wxcNLtk6Gmii+vzK1XKY=;
 b=jJFcBh8nXe5ipNUSoo89Abnh93rqhuUEp/6D/gNjjNORjwCcKWNzuZmg
 O5POS1IYNWx2ngaLEgxdA/jHlj2Fm2SvdNl6OTd1vJuPKNI0O5M7KV0mv
 3l0ahydS7peIC5OrLrSZFbcFSCju4WRxO/SdKcT5Qt+vxIjJIYX+dW6Cb
 FL5u/p5WhuqHQqaruUs1O0DF/simcnWGigL9O4ihpNsaCExzhGayb/9gJ
 IrWAFOsQ+zHF8MQ5y80szDcv1Gj38IXDWFs+BuufZSGYKwWI/DN+zxVGV
 wN+/g8E+QjhDG25gnSLjUAs4yqXIUu2OcXr2I3x9hF0cK/KDYScMPUpoT g==;
X-CSE-ConnectionGUID: RBu0jKGwRCyiODBdsXP/AA==
X-CSE-MsgGUID: bFJk3gUwR5aezQOPwcdvNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="32981794"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="32981794"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 10:45:38 -0700
X-CSE-ConnectionGUID: cOS8J9qGS9yE1M8MYZ73iw==
X-CSE-MsgGUID: FaR8qNyZSo277gd8WmJong==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="79600987"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 10:45:31 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 10:45:29 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 10:45:29 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 10:45:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wiaa51uyQ0wB/meNrSvwQ6kjF58YBKrEz+CyUOGoBQN7bZFa6O7OLYbZkHSWJ/JeOGzBCLbn+huZ62upTcmADKSeBFCu8QrHxp6MxwwpcNroV4FdiNGBCSQiKbMmyBkaqSECmLjNMY/XJdSIAbCYY7WPLc9HGLG/ORvBC/UUVqLCtKhYMZ3ypLGol/6WSDqHbZQNISOytRonT4MGDgHRvQYP9LHKOWVPlJNC4fEVJAVGX5OzA0X66GjnlbMxNJEsyNdDmVNJHE+7R2L/EpXFwYIkMog0RlRB9q4xgDIPvPmBvNnOuFpVmrR1OvdQTgLcI/vc82G6t9TxTiZWJ4rryw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QjgotfW4D5UH30Q3IxybyyDPzZvLml3LzZig//UiXaM=;
 b=XLI6EMlq8RHY1SFH8ggnjOz+jADRhjU4dghQgsj8XWZFC0ttQMsqOkP0U5FfuqjRDTFkul1h5LYELBTX7kVglkUpwa0fawhbpTiUwgmCamX9L0bbUxcqmXhp/2pbqdUKZfEYtb5VC9WZD2bAI6IMlhoIFJrAPtDvhAK8s5Tv+at3zLOoK+yWJl7yN2ijpFKi19UaVAJaySMRZi5Q+WQFc2CprmtoUobsxA/nAeR7b9zpTWiQZiMzeiL75Z9hfzUZdUt9rG5KhMuB4oLrKFgY8JHv0xUmI8CBxavvAF2wkd8HuVnwYMjkWi0gI6bAdp0UYPnFsLPgZtgIcU+oqm95FA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by IA1PR11MB8150.namprd11.prod.outlook.com (2603:10b6:208:44c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Tue, 22 Oct
 2024 17:45:27 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8069.020; Tue, 22 Oct 2024
 17:45:27 +0000
Date: Tue, 22 Oct 2024 13:45:23 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH v4 09/15] drm/i915/display: add platform group for g4x
Message-ID: <Zxfks_WFptpa_WSK@intel.com>
References: <cover.1729518793.git.jani.nikula@intel.com>
 <c189ffb52003b4bf7a85eedf1d98a93ae7a0df36.1729518793.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <c189ffb52003b4bf7a85eedf1d98a93ae7a0df36.1729518793.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0203.namprd03.prod.outlook.com
 (2603:10b6:303:b8::28) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|IA1PR11MB8150:EE_
X-MS-Office365-Filtering-Correlation-Id: 982a40df-172f-4ea1-fb28-08dcf2c15051
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?BYShIw4VBirnsdhnJM9fWonGV6IBDuElfQuV0NkNkGPOF/NpnC8OXJPgrGs/?=
 =?us-ascii?Q?jgA4ewnQ7y59dOCQURC1iKyg280BOb+fx1O4aaztJ+QHHZlpXbzlQJ1zOO0t?=
 =?us-ascii?Q?HZucTOPwJiqtalgUqGvMsEH1sVkNhrPc6vo9VzzsRvN/wFpgfnqXLzYUI4MQ?=
 =?us-ascii?Q?t9kOyDOtlarZ/WPZrv8OM1tpT9PpmoGV5NBlKVBdXX1DLvRenRBDkOQn+r7X?=
 =?us-ascii?Q?2IRVxu3ksfCAZYDMREz81MsZJzWKv+t1I7KNn5m2Sa7kN7sRjjbBe6sRg/G3?=
 =?us-ascii?Q?1zFPqtkEYJWxYEbfzdDIOjUPiHlD+l+AEo7h8Zgjt3GdJy2ItvV7+mVdWCDd?=
 =?us-ascii?Q?jPRhjOQVfmtcRiu73GtVxMYsQkBFd+VXTeOcfh/U+ogYr+AiLtfqqfsh1feS?=
 =?us-ascii?Q?WF4roa9U5zEDMyMkh2dZUjvhYmu2vt/oLEKoB9txC/Yt8EJkpSP0IhzuBqpQ?=
 =?us-ascii?Q?MvA2PaKqoY0Nh6Ve8xx536QjZlJhu7PicM1OLnf2XqlVcCWd+vmBd+3LHw/h?=
 =?us-ascii?Q?PXwgQDjkwUIcM6rY4vPmiRU7TkqDlpInpXk3ZsmztC/epKH7WTTlQhu1owmY?=
 =?us-ascii?Q?2sD5KduS46gfM/iDc1t5GhGARJxKuN1dx6qiqyUA5EJMydVOH9FrMv0jIN3i?=
 =?us-ascii?Q?Z+SZfkblomInpuwRsFamkC37gR3vkFSM7KQtk3AntNvGaD6QuAvyqdeqvTRl?=
 =?us-ascii?Q?HYPyWqoDq6bFJgfI0i6L603GTb86eiLmQbwhy/7EjzKU4VxegCwETt9KOkta?=
 =?us-ascii?Q?ubkuMJQvTTLWn05VdlUqLo5Lw06S4zQ6wnoFMCw8EAU3+1EzoLBlBJ8KJEC1?=
 =?us-ascii?Q?OedYfvPA22igGGIrJav7qkuyLgAgwyH5aB0vc4ICh1YSpMKk9SFYkvjtE9/Z?=
 =?us-ascii?Q?ZpSQalORCZ97Oza0JjRT5WlSTrFqRmzJwxLc1NY2/JavL9+K+YmPCA59KOmb?=
 =?us-ascii?Q?ys5lAKHJgtzEcCWbkKNUk8E/qs0jwbSWxYAl4/cub+jJVS5Zld2W4A1eN72e?=
 =?us-ascii?Q?yFxSe4awkyKZL0VMhhNHFJCTINs83YB4dLcFu3ISX67IxiyyUJbDwRcDfoqw?=
 =?us-ascii?Q?yXuwsVQsMzOAIvNcxQMd+79GbjugAiN+993kCtcIDE/xRHPomy9z0+224wbt?=
 =?us-ascii?Q?2845Lw4mkY7mMNsGg2Rjb+TaKcxqmLaIC8w/8R1SuwPtTLBl0TehTqfR2fwo?=
 =?us-ascii?Q?+gbM3LamkZhmS3ZApS9KOHvAM1dUBFiM7b6fHtw0HRgJ3qpkC56VMpQat7ZU?=
 =?us-ascii?Q?hHSAhFhsCtGkaj3qE5dzuEH/z4ENuF9qUkrXTaFp4bomanPONa7SYNZuQejX?=
 =?us-ascii?Q?rxzSKJMZcUoA8sdSKoGL0/B2?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MOMveq7XKZSQCNuIWAtv/0N+uXCDDhkOt2CM3nhWtjx2TPO125k/9Jd7Sm5x?=
 =?us-ascii?Q?Wxv7gNCC+AINo7nwPFYkpuObVWD3OtL03mUpgtvyoK/3HFT6pRr6a1Ay7P2I?=
 =?us-ascii?Q?HzfYGal5HUPfzNEKB0WiSEUQsgwM0mwOViyKfp/9VAuBtxA7a1OqGYPJnzX0?=
 =?us-ascii?Q?q1WbndIv57MR/7YdTJfs8PtVqNzoDrm1Dpgkd4pcltWhXhfp3VUneywTP4Sx?=
 =?us-ascii?Q?kuSW2ctSDr6rWW4d3Ts/wHKWvdXXLRI52s5xhnbdbro7/sJFRZQhQP1NiNGY?=
 =?us-ascii?Q?pAsFCcmf57XXwmZfGuwCSGdGN8pTxbVSIGe0J8O5zZYuAwofeXCs6KHQq4yR?=
 =?us-ascii?Q?sA86rFQ1lq4RuBhz3G9vaVmgIWjUBA6y/cVwq/FfoRsWFN85Wpk9UKGMTMYW?=
 =?us-ascii?Q?/ubEHLjI/kqUAkA8U3pvSVqxBoNerY0gMyGhMDs+Xmi/SUC5auEUwynqFBrG?=
 =?us-ascii?Q?aw42GNvNOzToB/97ku9XI4VG5fYAiNeVLM+NmCyoRzyF6HwQHREz/OkVTUjf?=
 =?us-ascii?Q?esjQdvsLwWx+cdmhXpF1UjhyeNB2psuxvHKLjvUj3e7lRqbTQ2VNqTIW/qUS?=
 =?us-ascii?Q?AqmRjd5XVLf3wgOk4p52Y/sF/pzkeMa9Ae9iyUhh4q/PGwalXto8ADAEHio5?=
 =?us-ascii?Q?lakw09EG2m4WZFo4VRW//gStvLrophc1/A9L68M4wYnUi2Ti4Be3siq0eXXT?=
 =?us-ascii?Q?LcZjgmo+24QDeF9G0FQiG7cdV74MOO3epjrRO0fCGHvfC9PBOTaJc3VJWJCc?=
 =?us-ascii?Q?WAoyjWJwDTO23S48a2Hp4y8/LSlzI0jekU1YCwiOxfRn8k25NYzuK+zsMFnR?=
 =?us-ascii?Q?EHEuFnr2uSXfhKM/U6RGX8LGlRTAXP1fMAhg7xpyRo9Pwl5yEFTU+iwrLcWq?=
 =?us-ascii?Q?yONmNtF0d0Euh9vveJ1IavzHl5VDJD/EswY+9nbSOWy8ptyIw89zXhBXSWwD?=
 =?us-ascii?Q?fIwQUqPx7s76uk0H2jDVY1G4O9lSDe/dnJ/AK8uDMeRFbldYMv0rQYlGbfw/?=
 =?us-ascii?Q?/5A8JYED0PaFBXF5snM2MDan7OGojyU9xgKUvnzqmbL0G7Vo7RjfjombDsmb?=
 =?us-ascii?Q?zQACq7UnxA2kQdo3euoKjRThOVlL6sFPUZ9YqZZsp4ktZ6WrAsFENKJyxBGn?=
 =?us-ascii?Q?E0SLLEIyP8XUexmiRP5mrRi91IatP4X5e3aAN4k7Us24+FvDbNaOMe9WHVZU?=
 =?us-ascii?Q?iJtjxib0akZKym7ctbJ/rKWd2dwDgp7eZvEfqgaljc0Rr+aH8sMAn1wcAR+/?=
 =?us-ascii?Q?j2ENOm8jaUEuscBUc0CoAEq8WDjakZC7xE3Fc1K+aRVa1pUZl3tDgfVIDhTA?=
 =?us-ascii?Q?LC2C+yPGW6jov/P7QcRKVcgaZr3qcKc3xiNjWQnn0CvX14W9b31ZPRCIjJ5j?=
 =?us-ascii?Q?YRza5oM/Fsu0qCP20gdBFDAjQkgDx09YPs7sGWgrkJbADJtUtGENnheOurrl?=
 =?us-ascii?Q?nL5uZsS5ss22L2VUxcNpA3fb/8lnzrah8iZ0fk3FROgx/koFMi/PEFvaWxWy?=
 =?us-ascii?Q?WdjxBYpx0HperRvHCrTNGQmGDkDVipCrQy9875cUlORytcLQQoOOTFbB47TV?=
 =?us-ascii?Q?fh3WxQe01/A8Y8DifUXq3JTJPga4jnsTInuItnSl84sKY3bZ9WRMPDYK9Y9C?=
 =?us-ascii?Q?zg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 982a40df-172f-4ea1-fb28-08dcf2c15051
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 17:45:27.1853 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QJK7GHADjENcrUArTv9kYLR3mt9gqBVMgW2OmiDo9O5jBiY2QfxgCTZ5PMU/TzkrvW/SYnWQJVjLjxfzJ4FKkA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8150
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

On Mon, Oct 21, 2024 at 04:54:10PM +0300, Jani Nikula wrote:
> Add support for defining aliases for platform groups, such as g4x that
> covers both g45 and gm45.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 9 +++++++++
>  drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>  2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index e9d56f8aa3ab..50ffb31662b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -53,6 +53,13 @@ struct platform_desc {
>  	.platforms._platform = 1,		 \
>  	.name = #_platform
>  
> +/*
> + * Group platform alias that matches multiple platforms. For aliases such as g4x
> + * that covers both g45 and gm45.
> + */
> +#define PLATFORM_GROUP(_platform)		\
> +	.platforms._platform = 1
> +
>  #define ID(id) (id)
>  
>  static const struct intel_display_device_info no_display = {};
> @@ -387,6 +394,7 @@ static const struct platform_desc i965gm_desc = {
>  
>  static const struct platform_desc g45_desc = {
>  	PLATFORM(g45),
> +	PLATFORM_GROUP(g4x),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN4_DISPLAY,
>  
> @@ -396,6 +404,7 @@ static const struct platform_desc g45_desc = {
>  
>  static const struct platform_desc gm45_desc = {
>  	PLATFORM(gm45),
> +	PLATFORM_GROUP(g4x),
>  	.info = &(const struct intel_display_device_info) {
>  		GEN4_DISPLAY,
>  		.supports_tv = 1,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index b240c28db2cb..745d03f49acf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -38,6 +38,7 @@ struct drm_printer;
>  	func(i965gm) \
>  	func(g45) \
>  	func(gm45) \
> +	func(g4x) /* group alias for g45 and gm45 */ \
>  	/* Display ver 5 */ \
>  	func(ironlake) \
>  	/* Display ver 6 */ \
> -- 
> 2.39.5
> 
