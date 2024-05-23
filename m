Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1445F8CDA01
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 20:32:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06A8B10F1A7;
	Thu, 23 May 2024 18:32:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P1yoeokL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D075F10F1A5;
 Thu, 23 May 2024 18:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716489121; x=1748025121;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=jSf3lKz7nQkpEyzcCMA5um9zcQI79cttAeHiyeh4soQ=;
 b=P1yoeokLSAhd2wTzoS+HdEBqz9lZvri12j3bfpiIe028Zu7wnkQ2XLlM
 CL6d900Id/vZXa9RPFICGfYaSsjNTq+OGXXd1SadpAQVzkHhHxKkIEHI6
 pmpPfQG1ZS++V4RTHM/MQng7k+0ll4lFw/E8Zm0KJrjNF0AaNh0N/qvaq
 KW/4mYDXhWsqdCgVYxSaF7IQJ2WcOxlczk9F+oZvpLaqSTREM8M1gH27o
 Ilicg0jhtWz7jSHxBH+uT27DkzBU6HAZP73kYmER4S+blUi59WnCswANq
 aGNnkX9x3RP9RPwZFyOZUQemX1Yl8HB2or9hofnGbTtX0sdOQWvB+26ja w==;
X-CSE-ConnectionGUID: coSHz8D4SLGCw5PwZvMjpw==
X-CSE-MsgGUID: 7olY6YoBRU2Bm+MXYskv6w==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="12952978"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="12952978"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 11:31:59 -0700
X-CSE-ConnectionGUID: 4gd7h9eYQ4OMiKrXlf3hBw==
X-CSE-MsgGUID: ZsJFfjH5SDmyXBfoMqiIpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="56998889"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 May 2024 11:31:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 11:31:57 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 11:31:57 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 23 May 2024 11:31:57 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 23 May 2024 11:31:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=isW0OkeFS6UNfFdM19iLnteg7rs/THOQCNFJ9xH4l4JIpw3PUPppym6nNKaZhjTQ0IET5olMIzNxE//8GnwHnsx8kgNxrphYConZ1pNnezDg1OBepdbmSkXUfeMY07p8NbUJPzUo8/yHvwnbk9igFOy3joBRbsJFRyVM/yg9f+TFlrwvxV8zbcll2bXeZh0Qte8OtSQa2TU564c146ORj/jqd+fSJdXuze1gq8URX70q1iHm9HsX86mJvekUHwnD/i9yyoRZjLPt4WQ8erJid8tLB5gzzA1siO5ruzGQVq8Otgj+NqSs/kifn8lbw92QqrECLyT24Sx85LTS7MaiFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UgN/2/kLxojm3V51gDlIKL0vGJfIOT1E4TmzGYnCv18=;
 b=ijYbxxkEi6u/PKKpgQDGtzgfGYOOPaoL5KuxX7DGlmTEXkH9HlEI4v3oU5XJ+mEU11zik9lO8r9l5ZISd8TC4pHQvndGkrobEnVsp+6E9HxyARZPj29hZBpTlOCoBt2ysI/Oy5iE7Z4Pq5cJsl1lvILgVbX/db99p76jenOmCjbblbANL4x2z3GvlzcYIcl1yM8hAisrePQTYeyCCB99SVLUQIheX906vSwQY1Oi1/ymOCI1sqSrqrYYzvZuTzaMJ/QpA4v+5L0gSM172Ykp74bSLJbG10XfgoPnMsK9TdLST/tRBVNENM57msv112rRIebgvr4uCvqLLo654TksxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by IA1PR11MB6324.namprd11.prod.outlook.com (2603:10b6:208:388::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.22; Thu, 23 May
 2024 18:31:54 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7587.035; Thu, 23 May 2024
 18:31:54 +0000
Date: Thu, 23 May 2024 14:31:51 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 06/10] drm/i915: add LNL PCI IDs
Message-ID: <Zk-Ll1dCaRACDZTP@intel.com>
References: <cover.1716399081.git.jani.nikula@intel.com>
 <d2baf7f89ed4df63674dac3d59982de69a7b14d4.1716399081.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <d2baf7f89ed4df63674dac3d59982de69a7b14d4.1716399081.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0159.namprd03.prod.outlook.com
 (2603:10b6:a03:338::14) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|IA1PR11MB6324:EE_
X-MS-Office365-Filtering-Correlation-Id: dc6ea8a0-d014-4f83-c980-08dc7b569f0d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?nQIwPU5G1rXP8wlL/eS9QBAAJcDheyas4QA83JLqMubavPn7Ltex7yHZk1mn?=
 =?us-ascii?Q?V8WAk4sjsGU33Mi39+nIZE7+PQXpoJ+DR81KRmAaOqw4zp3HLWBb+9Wanqpr?=
 =?us-ascii?Q?1fhyZXg/Ozv+1HpD2qT8wSQDxbcxz0uLd3f3VSRqMK24iVwgJgz1bN4XM0yx?=
 =?us-ascii?Q?sM1jLCBSA9wi0i03xpCdF8wrTt3XXjUHvMc2+Z62paeiAfosX5PMl2tCtA7l?=
 =?us-ascii?Q?2TXcO6w50lLpN0ubRVWUP/LDSpJt/hk/4N/5C0Ha1QIWXge917ZP4OqGffYN?=
 =?us-ascii?Q?7lgqTZ3u0NC9iVsM7xNPdd4IXRxrwO/uOQJcSyH+Ih3J6Sqx1612Kukx1E1D?=
 =?us-ascii?Q?Pr20mf/xXkhSjlNIVfXFadTzL7Qt29D9vDaN27P0C99eunoS4Czbnhxhf59N?=
 =?us-ascii?Q?Z6Ak2hTET7EDzxJgm2xIHiwHQzy91HD2NJchUeA3wgW5WOe79Idh7rgszIzz?=
 =?us-ascii?Q?lBeiPVIreWqTPlW714LTo2bfF4QMyzDO5zU2PZH+qFB4rJXa3Y9q3xFJVLGe?=
 =?us-ascii?Q?/UdjS8PbuGRuRJCS4AD19rLL9BSx+lmxYWu3jH/g32aYH5atunRl3JcIeQ/P?=
 =?us-ascii?Q?C76Y2B4C+Y0fldhkRy8ODDrlGPEVS6a+xoRsiH1nlZEmfrHw6xbu75ldDEfS?=
 =?us-ascii?Q?ekIDjilCdu1d1C5iU1jefv/2qAQllBdiVGOkFul7S77cs4H7rdqEazf1PwV3?=
 =?us-ascii?Q?21xtdQ2qrA3KSbeTzqYMWNdJZfSGdT8O31hVCVGJNzDw3at0uO2bRUhxvYc1?=
 =?us-ascii?Q?V9l5Vue8KrkkMwHhUp1y5TT1Zq/8Lgyawca+hMcq4qBTwJmHcpxD2wT1hSI7?=
 =?us-ascii?Q?fUWwveqHJQaPss8MI5d0PCgHS/4CZes6Uan22DvY2NMvAHflpmWKwwA1RKAs?=
 =?us-ascii?Q?78kevBspFlLVqIbZ7I9vRyIrft6WdbssegfsnmXnc0HNg6KYzkmScigYfbpH?=
 =?us-ascii?Q?L378NrfsHnNjp3EkxqxZJe6dWeceXs7FTvjsBbRWAAPuC2/13SzhkaI2Yp1M?=
 =?us-ascii?Q?r1lVlRxApGdVgRp1KnD4rxwAW9bWJqkH1Nyc1jf97pcNuS0chmSzew8Lw6rx?=
 =?us-ascii?Q?sFpUfwzxGMKoo4LIwJ/cpJLRjjPffOghf6B4q232mfHrJkX9w2AhTpbeBBBJ?=
 =?us-ascii?Q?ahFGRzh8a4JSUhisTvHFi6MuEdysMTasemdV+43LmMETaQQ4MQGH7tI7/HHK?=
 =?us-ascii?Q?PGiCd4XklLWQyiUT41RrBpXCReYukpvrrXM2A48CD8myYHGc2Pi1UHzJUKe8?=
 =?us-ascii?Q?YViR+dUcE8CwT9d6htps3KH6O4TBI/BVg/U7qL8qUg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?b3/+v9wBPn49snbbWPn+NTVW8Tks0Vs53TYWZa0fjozPn6peeV5lpmfOk/Mp?=
 =?us-ascii?Q?MyUr8blngoxqu0v9gdsME8WYYDSWWuLsNIdm/ZjmkR6+QgAsyFSoZUmKF0SI?=
 =?us-ascii?Q?djoDpKNn0KYx42aVWqx4+1uW7+oEesgscFAM2Ozy0mXtgKVbtLvUQctmaBeo?=
 =?us-ascii?Q?O9fgIKor8s2XGDYqlcbBy2ux2l2AY7GDWwP5yKsUSIPJ7PAokFeadn3v6C77?=
 =?us-ascii?Q?JKvMtCyvcCEZDxLgM4BeKN7doZ6y5KCLadulm/M2FTNniMtmrc2dmKKGjwsY?=
 =?us-ascii?Q?IcXBlYKUdFDNopJ8PzXx5p7EoOFcXKBJtQHKwFmL1/sRatV0GrRWV3+1mten?=
 =?us-ascii?Q?kjEM88IprFdXQbeHf6PwVufj7ysTlXcwL1PhwZOVVVHza90yfpQfrsqRmhxi?=
 =?us-ascii?Q?0VVIQF/5oHa0PhxJRLJ7MDiHzZGS2SWP3d3vv9teQR9je+JXaCPAMuA1idKe?=
 =?us-ascii?Q?pDcVbWjBNt2KHTH8VJGk/49YPxL24TQAHlt+0uzw8ePdlXklVhSCMS86a7e0?=
 =?us-ascii?Q?QGx5WDkWWCSL31Dub/LTQv75LP2ZX9MHotybfQbBk5T03zPfE4rIEMgxtzT6?=
 =?us-ascii?Q?Dk+UUZ6UXgWgd0+kfyDIR3AnafWhUzyJVpQhQNEAoqed1YqnE1myIlrCuik3?=
 =?us-ascii?Q?dsQDBVle/mDJ3Od8sYt5FDFN1VZh8nBnkU16O+hWw/YF5dO+UI0KNyOAELyi?=
 =?us-ascii?Q?ZSm1N4nocTAUqTNcfEE9X1fhyxt85Miz6NucEbDwG1XSUwnX3k1eFKzrAoIH?=
 =?us-ascii?Q?fzd2Abwi0+Zt0zbCUi6FLlgM6ObN3VpndJO7WPvu+edRq66ou2QEW9PARZDq?=
 =?us-ascii?Q?SamjEw93UuFJATfaAU3uiXzRklsgWcZOUVI5i9CKrhiYIjhg8PMjpn3uaUEK?=
 =?us-ascii?Q?Ue2nq7nY6p7/bHZKad5sj2CWIwxeR82q4k8ga1U1xCnuAxcoYrD56lqR8hrU?=
 =?us-ascii?Q?JAcvyDe9tEStmIER7ovLqLcEhAPzXfoN84vWHDRwGC/SjSKoOcSQBQYyi4+9?=
 =?us-ascii?Q?nKeYPRiRiTttCfOR7WqpcULctZ5/WLXdrtQIJsoIwWfHvoQmftGrO+S4ycdA?=
 =?us-ascii?Q?eTJzPXAV4j6SwI6n/gGPQE212GacDWMGNSTPZBufKo9CSn3DoiPYdY7kdqdd?=
 =?us-ascii?Q?fdfeMUfTzwPNFNkHrGi1+WgMrD06gTSfLtUoI7fqIKbQwszJsKqsnDw7aEjV?=
 =?us-ascii?Q?kINFpgkobjCMOBxA0l+j+Bby8Q/u4HBGJn1AcPLy4ObfD4JrfcN/7s8YjtfR?=
 =?us-ascii?Q?N8FdBMI+Lend0A0yOdd6gemXgjTsrgf+RWegSO+ajTrmtMmcQ7uJuVFRDvYY?=
 =?us-ascii?Q?stUbPlSbdDUcMKVTTGWOrZ6kXEzl/rYjMWSBk/hHD6l4SHwiLzDgHB1SPnNG?=
 =?us-ascii?Q?izcMH6FA01OFZSdu9HIExXY+65eKzR4DG7yNr5r2MW3ROfhhFba06GNqkzFH?=
 =?us-ascii?Q?5qKjWVJ+Y9zz2GgqzcbkhYYo1aGHKIszPqwxTSm0xaOdnGpJs1U4UIqlmuDw?=
 =?us-ascii?Q?KF6gSfUme8THyY/27AFZvirCg55OGUznBqbPPtRbUvTOl1rDrQk4Q6mx4jD4?=
 =?us-ascii?Q?nZbPJZYUFWiibiGCCH/VgPxgHCzA0yPKqy49oGSOYDCiLQCDpkqKnIyGehpv?=
 =?us-ascii?Q?kQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dc6ea8a0-d014-4f83-c980-08dc7b569f0d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2024 18:31:54.7295 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XNf989t+wHVYJ4Y8es2r3uCtBBiT5Qr6IQCgzgsZMdLxERxjT8su1eze1I319mz7zz1TGtkiw6oV9vHIsO1Rnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6324
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

On Wed, May 22, 2024 at 08:33:43PM +0300, Jani Nikula wrote:
> Although not supported by i915 core, the display code needs to know the
> LNL PCI IDs.

perhaps we should add a comment in the header near the IDs?

> 
> Long term, xe and i915 should probably share the file defining PCI IDs.

although it might get harder to distinguish the intersection, this
might be a good idea indeed.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  include/drm/i915_pciids.h | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index 3e39d644ebaa..7ae7ee11ef38 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -783,4 +783,10 @@
>  	MACRO__(0x7DD1, ## __VA_ARGS__), \
>  	MACRO__(0x7DD5, ## __VA_ARGS__)
>  
> +/* LNL */
> +#define INTEL_LNL_IDS(MACRO__, ...) \
> +	MACRO__(0x6420, ## __VA_ARGS__), \
> +	MACRO__(0x64A0, ## __VA_ARGS__), \
> +	MACRO__(0x64B0, ## __VA_ARGS__)
> +
>  #endif /* _I915_PCIIDS_H */
> -- 
> 2.39.2
> 
