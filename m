Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFF1A181D0
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 17:15:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97E5A10E091;
	Tue, 21 Jan 2025 16:15:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y9j4+i+8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE65D10E091
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2025 16:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737476117; x=1769012117;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+QNXwt2Mm+lqAlNeH9G+rozSfvPaGFsLSQtAE7wwoqg=;
 b=Y9j4+i+896jlZT1dnY0sp5xaZvVV7fRBK4Qh7XzTkwfuvriCDPKktSJ9
 KHljpEFAG0yAqsTwUanOkPlEW843Uf+axQhMLjhPj6r1/Mgzpl9dw/656
 qrUqZG+6FV3ckVsEWTtU/K3yYkUw8r8WOPTFtOHQxCguJCd+OLQppLsLK
 a+CMkAIHg9wzmfk5Y2rQHzc4aGiEO88SqID8SxXSyi2FKejlEUa4PqHHX
 GGA+1Fd+HASTfuNfh6I6tZRtCjBeoka8WypOhibGojkAbrd7IHczzEIxN
 MZmbOCjBuaYDYrP/dlG3CdYnGMNDRffcasAxCg5fyz0PwOgsaDeEmmNY0 g==;
X-CSE-ConnectionGUID: jA98PMNjT1K2+JJkKaODkA==
X-CSE-MsgGUID: Mue8eV4oSZarYT73GBTUzw==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="37777798"
X-IronPort-AV: E=Sophos;i="6.13,222,1732608000"; d="scan'208";a="37777798"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 08:15:02 -0800
X-CSE-ConnectionGUID: 6V8x2BxMQmKTk2iFsMLahg==
X-CSE-MsgGUID: CkEkpRC6SH6auZN3DhkpQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="130137698"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Jan 2025 08:15:02 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 21 Jan 2025 08:15:01 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 21 Jan 2025 08:15:01 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 21 Jan 2025 08:14:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pdlH+7K0cL9vxwLOW12xwufM2+CnYuvns2W5pOJSL5q39884FT3TzRwfHVXb7MPWeW8D8UJmX24tjgzSZ/7WNbjlBXeWDJX6cEIcFN8o+FYq6GSjTdjtL4f2C2kz7HAjyjgIwVxHnOypY/N6eMw18GbkZ9FGLAaB/VTMnbpjvS5saOxMZHrNkOGAvCjzwKN9r7MyURyrbwSQMyFXXdFQ7ssOOfKSF4sLW2+v4ShUytMpbJ7H1AFbxgmntOJgJRWxEH3nvYoKcQhf5dymfr9VcD67scrdS5yh7/CCTfZidSQro8nNe+tI0GVeMgBF6pqgnzj+CO1mcoMVinkWXQpnlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bfcRL4uPsxqN6azEOAai+O02gEgtwdi0EOjj+jfqhb0=;
 b=vNK0yNMki4N9cGC09zPIOIuFFhPyPjNa6XVPtwa6m6Cuv9/zvMzaXjyxFyyE1jLAg/S1Ch1ZpXUMWmYvRXI8WKenik7iLYGH0WyOSMp3u7wJNWr7bQBtKGhZl99kUmIGSa/0/lpricw/VjQzvgGkkEyL9HbXey8jFHb9qKIzBh+Lx83N8oc0cEAyr8xbUZOYDxeu69aP+6uXQqrahGXUc81AIh68C0+s45zHhLgQQ9R0gVWSK7P1oxAmAmQFS9347GRThCZmCVH4CsxKXUW+tCZPfqcvD/K+eaIK5phu5ChgKqW8O6zdEpwEypMdIz9Grxe+4ErJwvGeonv/MuJFwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by MN0PR11MB6279.namprd11.prod.outlook.com (2603:10b6:208:3c1::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.16; Tue, 21 Jan
 2025 16:14:57 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%6]) with mapi id 15.20.8356.020; Tue, 21 Jan 2025
 16:14:57 +0000
Date: Tue, 21 Jan 2025 11:14:51 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>
CC: <krzysztof.niemiec@intel.com>, <andi.shyti@intel.com>,
 <jani.nikula@linux.intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v4 3/8] drm/i915/gem: fix typos in i915/gem files
Message-ID: <Z4_H-1qhW1AjH_-m@intel.com>
References: <20250120081517.3237326-1-nitin.r.gote@intel.com>
 <20250120081517.3237326-4-nitin.r.gote@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250120081517.3237326-4-nitin.r.gote@intel.com>
X-ClientProxiedBy: MW4P221CA0028.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::33) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|MN0PR11MB6279:EE_
X-MS-Office365-Filtering-Correlation-Id: 619ecb10-02b0-4640-26a8-08dd3a36bf3d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?k6GK5paK1y8L66JAOwsbmte9J/nwtpCXSLDPnQ6/T6odK521hb7fjDjmWUv1?=
 =?us-ascii?Q?0tAF7klW5RFbI90Hd/0YHM3JF4XaUgQcDzLiVvPwzaNsQW1T4n9stWMqTcx3?=
 =?us-ascii?Q?tnN2BeLRIAEy0qhqd78/iKp7X9S5wzOoZhUkDs/LtUrXEGHu6aIVXkZy+ruI?=
 =?us-ascii?Q?OpuLwh4FbvNMXHMPdjsSjWw90Ew8AD/t2/Hct/vMzEg0a2LMx9x7X2Z5+e+5?=
 =?us-ascii?Q?9/VBSG1roeb8ur0FnHbTDYIxnPhgYS8aOYiG2X5H8DgT5Phs/NBDLZeun3Ds?=
 =?us-ascii?Q?UUlHWYmm4i9D3zmgbxl1Og9Yx3hwyUvfPVT76nKSMjYGpPPAZDBzRJ2A0kCI?=
 =?us-ascii?Q?7GHz4XnLCtoQOYcsUKknedq13mvVRcAwX3WlHeGw9iHo3zXD7Wf5vDh4xkuw?=
 =?us-ascii?Q?pWa9R2G5XHN27+uGEXWfv+76fNkLksR5c5ZbYCO7aK1F3CwV8+nIp3HqROyP?=
 =?us-ascii?Q?+7xlx7ft8ZL5QDLss+hSfQrnkPIoJLV1588OeKubzB6ZFWUsbFywSshl7pIm?=
 =?us-ascii?Q?rQp4m5gOWLAEfxINkSdqsmLBwL5uKDKZHiQkgWse/wWRQv4pfdC00P7YAcqt?=
 =?us-ascii?Q?aL/d5tdZzbT0a3YF6YHjIpD7k2++ZCtxINXf5cW109reWT6iQ6RCPmGo8VdH?=
 =?us-ascii?Q?26waeIqFqPrYJ4IO08DfsZ2mfGcFzaL0goCzYyJLNFzJhqBH3yF6fFYdyjHy?=
 =?us-ascii?Q?i0TyBpOJHMHwksoFa4qtl12zg+tFJrRE/XcHzG2KSwoqC+pOzJd4CmL9y0Wf?=
 =?us-ascii?Q?An1GfoHh4JidU8vTO/DfTkVbN840KUHcXjJ9XdwW5TbzX9cz7qcgSW/DskR1?=
 =?us-ascii?Q?YwXOrhqws+CSGoGGZkEooxC9Uqf/46Novwuxf12Fffcvo6WzSaocCACqLb32?=
 =?us-ascii?Q?eQPq0IgW/4sZiiy2DXxYoRgLqxajtG7yXuPcZPwt9nPOrJ8+K1l0/IIpBOVa?=
 =?us-ascii?Q?NogjWS4TvdBscbl99PRYXNm1XKXPg+LbO/mjSuRW9ogpt3VWfECN6+2V1Tn0?=
 =?us-ascii?Q?Duz4sD7p+NY0dCblN5d9euDoQJPfDz6q2NrMc5cSzSYdqeNK20xqcXN1oNO5?=
 =?us-ascii?Q?epExWbRsMuw+A4sLaTgWlRIMZZ+NP43pb+N3S66GZTmx4pIB3apUZaXKFRuD?=
 =?us-ascii?Q?SiXlksN6DhxK8DkJk32GqxvwnnQUVlx2xkjBRoFB4k6FfjNmGxV/RhsdFnSI?=
 =?us-ascii?Q?neLTqdaiChqV0oO5DrnnnmQxvnQ9o6CopsM0tFVzWJ0JUvB/TYa09fkvjim1?=
 =?us-ascii?Q?GvjTOgeuT3Ik+t2Ia5Ony+wzPVnKLJH/BIHhuSW+cXIYVbK0I61TmMdjnjB9?=
 =?us-ascii?Q?AjshJlCsaRquLaqd7GMO3iXbrNSPZnKqWusIQu8FgmsUfQViqz+Un5W2GFw+?=
 =?us-ascii?Q?l2RR2Fot9DjjyCw83BRHZAZ+pJos?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5qjIzDvm4tMBNRhNZvr43E0AD8k1BdLSKo8jtjO63uoP2GZjlRadaiaeBab+?=
 =?us-ascii?Q?ufYtinP/GG0YqBceeZe2mBeXKNz8FkPGd8fV4rLNxtQxe7BAtOWZMaoMG535?=
 =?us-ascii?Q?7DtEDF3CKvTOch0Pb6WjZ4G587lJitku59yql5u9i3rHwMixEmYo9cYUp7Gp?=
 =?us-ascii?Q?zC2uVXR8KFaiGtQTVOq0vyn/113wARydWiND6crGCwsxOYaogyuiOh+raY6m?=
 =?us-ascii?Q?LgyVOARER7eoKd4FWx1x1NsBPR/VJPiSNeVDgrRtrlbb6jZEsUJhHkOeXNYL?=
 =?us-ascii?Q?ztqR9fZUnccTXjZd2jdnKPvITFu229YcGwRbWRl6o6D8ahc0FBvEfi3HIrIY?=
 =?us-ascii?Q?DRRzmnpRW2elByYZY1AkinQHMZKliiYeVH5/BWC5p+kUL5JlbvU6AoxR67QV?=
 =?us-ascii?Q?MDy5+wdb0keKFtex/Rs86rKvFDagJ/YOX6AKfNndUDGDr0ZKwi5zOcRuhAOg?=
 =?us-ascii?Q?IygMinMF5yvHAjhv+zln/9FZTNpmFwKQ870/Uv+x0Hf4C1gRXWzKNSLsY+gp?=
 =?us-ascii?Q?m9ErpvQ/eDnyOh8MxGXnbMCqnQf/zU3wObtSiN1ChqJfG3e4Y5q83+WLUnI3?=
 =?us-ascii?Q?Z9guq1JQ1a6Z7CJLz15vxrsQ96mKcKq9fbto1SqyavZHd3E4AYXQypufvQuo?=
 =?us-ascii?Q?J/a+KZhbJf5ffROkEqP+YBVjhyF9eQCC52nn4O6BOov73XljtBKub8HsKGev?=
 =?us-ascii?Q?YlWtg7cSXkerLZKm4xL2j1lpmgyFR7e/fl/TxQbyuxWWg/ima1TwSQEWmaN0?=
 =?us-ascii?Q?1ZocdQ7jK5+yv/DAx4o82e9QnesLU2sjOHHGXq9nyl9Z8Oy01RNqeqVC3Iwl?=
 =?us-ascii?Q?L+fo39cAM0fJ//865CEsZDtxUNqJHg30V/OXBlx6YGL1L1xXAWa7UVixJcKe?=
 =?us-ascii?Q?BvkFGk5d4OayO966ttQ0EuVZ7MjTAN6YGKj6x+RD702cxuwEYF2au9GDBiEW?=
 =?us-ascii?Q?sH/r1K3ysHRlP8SN3Z87fcT3r+6qs15iQdGym/O92D1SmFNajzS+dFb3xAya?=
 =?us-ascii?Q?ZI40w4QjmkxHFRsedXOnvwP6XXVHPfNKgSMACSU0wgV0T88Wgg44jazIfTjA?=
 =?us-ascii?Q?+98eZXDBq7qqeIzgmaeCHc4XiHowhZNneV0rygp4oRI+ZtVtmC2+yWNWOuMo?=
 =?us-ascii?Q?2N0P6OEVzRtuNtWvFWxgQ7Bt5bDsam1axpeL9EEhrz+GdPJjD//Ya9usfSbL?=
 =?us-ascii?Q?yYNZecVO9mnHbVHO09BO8dG0lcGP3Lpg7ZqbF4fB8B5uGoAYCwBPPwGTi10s?=
 =?us-ascii?Q?o7ofxAwpsFvFP7EsIUdcJXMAPih9yxp7yPPHaqKAGpQngm3x0I/RZoL020bF?=
 =?us-ascii?Q?Mu/S6K6sEF3JHrnUzk85/VZaPsy4iZrrKu8TzHQl1L1VKWSuGGL3mzIt6CBa?=
 =?us-ascii?Q?YZWBA5Vu4YWo02XHl/CI/8FY1FUAFU0/C49s/eaUPRd7cEx97ENhYkiEbSM6?=
 =?us-ascii?Q?ZEsWHt/9OF/E0BIlF/x5exvTdF9bvjy8hzssYp2SmBVHxjGA1PrsiLJrVjR2?=
 =?us-ascii?Q?EYvU5/sdb9X31jHPPp9Gr/2i+bhyoD8Fahm+YUAMndUVp5DMuAXAky9t1w28?=
 =?us-ascii?Q?ZMvl3LWuNSbNe+AwIbScWk8ZMxCc/XOTir7NBL82kPpIyGEZFSH8QpU0PlM+?=
 =?us-ascii?Q?fg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 619ecb10-02b0-4640-26a8-08dd3a36bf3d
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2025 16:14:57.0442 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 06/0TjyH+d8PvCxFwM1riWET1ERN6OdoA6ed9/szwZezG3ubgF7UwHmePAyaq/8w+dXirQR44uWZfQxIN5biug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6279
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

On Mon, Jan 20, 2025 at 01:45:12PM +0530, Nitin Gote wrote:
> Fix all typos in files under drm/i915/gem reported by codespell tool.
> 
> v2: Codespell won't catch it, but it should be
>     "user defined" and not "use defined". <Krzysztof Niemiec>
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c        | 6 +++---
>  drivers/gpu/drm/i915/gem/i915_gem_context_types.h  | 6 +++---
>  drivers/gpu/drm/i915/gem/i915_gem_domain.c         | 2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c     | 4 ++--
>  drivers/gpu/drm/i915/gem/i915_gem_region.c         | 2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_shrinker.c       | 4 ++--
>  drivers/gpu/drm/i915/gem/i915_gem_tiling.c         | 2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c            | 2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c       | 2 +-

Joonas, Tvrtko, ack on taking this and the other gt related patch from this
series both in drm-intel-next?

>  drivers/gpu/drm/i915/gem/selftests/huge_pages.c    | 2 +-
>  drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c | 2 +-
>  11 files changed, 17 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index c0543c35cd6a..ab1af978911b 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -238,7 +238,7 @@ static int proto_context_set_persistence(struct drm_i915_private *i915,
>  		 *
>  		 * However, if we cannot reset an engine by itself, we cannot
>  		 * cleanup a hanging persistent context without causing
> -		 * colateral damage, and we should not pretend we can by
> +		 * collateral damage, and we should not pretend we can by
>  		 * exposing the interface.
>  		 */
>  		if (!intel_has_reset_engine(to_gt(i915)))
> @@ -1589,7 +1589,7 @@ static int __context_set_persistence(struct i915_gem_context *ctx, bool state)
>  		 *
>  		 * However, if we cannot reset an engine by itself, we cannot
>  		 * cleanup a hanging persistent context without causing
> -		 * colateral damage, and we should not pretend we can by
> +		 * collateral damage, and we should not pretend we can by
>  		 * exposing the interface.
>  		 */
>  		if (!intel_has_reset_engine(to_gt(ctx->i915)))
> @@ -2328,7 +2328,7 @@ finalize_create_context_locked(struct drm_i915_file_private *file_priv,
>  
>  	/*
>  	 * One for the xarray and one for the caller.  We need to grab
> -	 * the reference *prior* to making the ctx visble to userspace
> +	 * the reference *prior* to making the ctx visible to userspace
>  	 * in gem_context_register(), as at any point after that
>  	 * userspace can try to race us with another thread destroying
>  	 * the context under our feet.
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> index b6d97da63d1f..67ac2586a0f3 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> @@ -245,9 +245,9 @@ struct i915_gem_context {
>  	 * Execbuf uses the I915_EXEC_RING_MASK as an index into this
>  	 * array to select which HW context + engine to execute on. For
>  	 * the default array, the user_ring_map[] is used to translate
> -	 * the legacy uABI onto the approprate index (e.g. both
> +	 * the legacy uABI onto the appropriate index (e.g. both
>  	 * I915_EXEC_DEFAULT and I915_EXEC_RENDER select the same
> -	 * context, and I915_EXEC_BSD is weird). For a use defined
> +	 * context, and I915_EXEC_BSD is weird). For a user defined
>  	 * array, execbuf uses I915_EXEC_RING_MASK as a plain index.
>  	 *
>  	 * User defined by I915_CONTEXT_PARAM_ENGINE (when the
> @@ -276,7 +276,7 @@ struct i915_gem_context {
>  	 * @vm: unique address space (GTT)
>  	 *
>  	 * In full-ppgtt mode, each context has its own address space ensuring
> -	 * complete seperation of one client from all others.
> +	 * complete separation of one client from all others.
>  	 *
>  	 * In other modes, this is a NULL pointer with the expectation that
>  	 * the caller uses the shared global GTT.
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> index 3770828f2eaf..ee55caca67a1 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> @@ -276,7 +276,7 @@ int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
>  	 * For objects created by userspace through GEM_CREATE with pat_index
>  	 * set by set_pat extension, simply return 0 here without touching
>  	 * the cache setting, because such objects should have an immutable
> -	 * cache setting by desgin and always managed by userspace.
> +	 * cache setting by design and always managed by userspace.
>  	 */
>  	if (i915_gem_object_has_cache_level(obj, cache_level))
>  		return 0;
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index f151640c1d13..c8107502190d 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -303,7 +303,7 @@ struct i915_execbuffer {
>  	struct intel_gt_buffer_pool_node *batch_pool; /** pool node for batch buffer */
>  
>  	/**
> -	 * Indicate either the size of the hastable used to resolve
> +	 * Indicate either the size of the hashtable used to resolve
>  	 * relocation handles, or if negative that we are using a direct
>  	 * index into the execobj[].
>  	 */
> @@ -2543,7 +2543,7 @@ static int eb_pin_timeline(struct i915_execbuffer *eb, struct intel_context *ce,
>  
>  			/*
>  			 * Error path, cannot use intel_context_timeline_lock as
> -			 * that is user interruptable and this clean up step
> +			 * that is user interruptible and this clean up step
>  			 * must be done.
>  			 */
>  			mutex_lock(&ce->timeline->mutex);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_region.c b/drivers/gpu/drm/i915/gem/i915_gem_region.c
> index b09b74a2448b..636768d0f57e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_region.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_region.c
> @@ -82,7 +82,7 @@ __i915_gem_object_create_region(struct intel_memory_region *mem,
>  
>  	/*
>  	 * Anything smaller than the min_page_size can't be freely inserted into
> -	 * the GTT, due to alignemnt restrictions. For such special objects,
> +	 * the GTT, due to alignment restrictions. For such special objects,
>  	 * make sure we force memcpy based suspend-resume. In the future we can
>  	 * revisit this, either by allowing special mis-aligned objects in the
>  	 * migration path, or by mapping all of LMEM upfront using cheap 1G
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
> index 9117e9422844..aec41f0f098f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
> @@ -25,7 +25,7 @@ static bool swap_available(void)
>  
>  static bool can_release_pages(struct drm_i915_gem_object *obj)
>  {
> -	/* Consider only shrinkable ojects. */
> +	/* Consider only shrinkable objects. */
>  	if (!i915_gem_object_is_shrinkable(obj))
>  		return false;
>  
> @@ -261,7 +261,7 @@ i915_gem_shrink(struct i915_gem_ww_ctx *ww,
>   * i915_gem_shrink_all - Shrink buffer object caches completely
>   * @i915: i915 device
>   *
> - * This is a simple wraper around i915_gem_shrink() to aggressively shrink all
> + * This is a simple wrapper around i915_gem_shrink() to aggressively shrink all
>   * caches completely. It also first waits for and retires all outstanding
>   * requests to also be able to release backing storage for active objects.
>   *
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> index d9eb84c1d2f1..5ac23ff3feff 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> @@ -39,7 +39,7 @@
>   * Since neither of this applies for new tiling layouts on modern platforms like
>   * W, Ys and Yf tiling GEM only allows object tiling to be set to X or Y tiled.
>   * Anything else can be handled in userspace entirely without the kernel's
> - * invovlement.
> + * involvement.
>   */
>  
>  /**
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index 10d8673641f7..1f4814968868 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -994,7 +994,7 @@ void i915_ttm_adjust_lru(struct drm_i915_gem_object *obj)
>  		 * If we need to place an LMEM resource which doesn't need CPU
>  		 * access then we should try not to victimize mappable objects
>  		 * first, since we likely end up stealing more of the mappable
> -		 * portion. And likewise when we try to find space for a mappble
> +		 * portion. And likewise when we try to find space for a mappable
>  		 * object, we know not to ever victimize objects that don't
>  		 * occupy any mappable pages.
>  		 */
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> index 041dab543b78..2f6b33edb9c9 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> @@ -603,7 +603,7 @@ int i915_ttm_move(struct ttm_buffer_object *bo, bool evict,
>  		 * sequence, where at the end we can do the move for real.
>  		 *
>  		 * The special case here is when the dst_mem is TTM_PL_SYSTEM,
> -		 * which doens't require any kind of move, so it should be safe
> +		 * which doesn't require any kind of move, so it should be safe
>  		 * to skip all the below and call ttm_bo_move_null() here, where
>  		 * the caller in __i915_ttm_get_pages() will take care of the
>  		 * rest, since we should have a valid ttm_tt.
> diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> index 84d41e6ccf05..bd08605a1611 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
> @@ -1781,7 +1781,7 @@ static int igt_tmpfs_fallback(void *arg)
>  
>  	/*
>  	 * Make sure that we don't burst into a ball of flames upon falling back
> -	 * to tmpfs, which we rely on if on the off-chance we encouter a failure
> +	 * to tmpfs, which we rely on if on the off-chance we encounter a failure
>  	 * when setting up gemfs.
>  	 */
>  
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> index 99a9ade73956..804f74084bd4 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -1342,7 +1342,7 @@ static int igt_mmap_migrate(void *arg)
>  		}
>  
>  		/*
> -		 * Allocate in the mappable portion, should be no suprises here.
> +		 * Allocate in the mappable portion, should be no surprises here.
>  		 */
>  		err = __igt_mmap_migrate(mixed, ARRAY_SIZE(mixed), mr, 0);
>  		if (err)
> -- 
> 2.25.1
> 
