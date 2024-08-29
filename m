Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B505696485F
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 16:29:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1E8910E6BB;
	Thu, 29 Aug 2024 14:29:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SfKaK5/I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4789710E6BA;
 Thu, 29 Aug 2024 14:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724941761; x=1756477761;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=6SWhiDDQ11zQEu/3BReuuU5OoqRx5/QBJbPvb6Un1k0=;
 b=SfKaK5/IYQljC6gxgP3ZDN3C8KtnS2u3PQq6GVWuMhvN7JqJ0MehuFfy
 L+WqNb4c+seNiVqqhFkL8zU48iqkqQfhp6zdvZTDpLThl0KyqAxaUtjhx
 oWFFJ8j0il2eWJZY1XmlSU5+SOHsyUNJnEi95lXg/nVj83rahUFlKkzEQ
 nYz2vrLpZ+gqPhUGBDctS5XZOfJKzJ9WPghx59bH3KyD352uunCIj4sCD
 gEQ3ps1cBZ2Sta5U1cqd+Gu3KRH2D5+oCcHGu8HxCBeQEmHl4uzGXlZfx
 S4qbu9jEpFcVPwE3MrP2C7H6I5J+DqVYzbCd+5NDXQmUDjX3SF1ACFS3l w==;
X-CSE-ConnectionGUID: WUTCMmOJQlC37SHraIHHzw==
X-CSE-MsgGUID: ucEPZXwwRJuS+nt5IHBPLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23724581"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23724581"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 07:29:17 -0700
X-CSE-ConnectionGUID: KoC2coDQSG2LxomkrXJl/Q==
X-CSE-MsgGUID: LTywuv7+S+Sh2wJfz0SlBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63584291"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Aug 2024 07:29:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 07:29:15 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 07:29:15 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 29 Aug 2024 07:29:15 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 29 Aug 2024 07:29:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E9AVwSBDDLNCMOfgxesVonbXX5aBwsZldmTRWwkxrN14pYRuHUVgO40zWEco9oR6dyjMkAtcyZs5bFbxSlVRKb9M0rMZxwekBBcR24PVX4S0MuphYHbp7GhmOwppHy4H3JEhH5+laxSW+W1OVH7aSrCQPoRSqm7L8DJLd34ZdoGW2dGZTLvEm27wvEOXrj1F0vtBK0+jUQrWfhz4y/ephhBMwmq5tamM9Dd1AretoLhMkJO+FqU/VF/wVe4UUaU6fEBKL8hpazMehKPPm3dJoTScnluDZieJuTdgbNSNj4k05l4wKfC44dDU5cDFCnM0VKEv1/wUle+IsPbq8/UzKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uyl0cobwU5sCzxlaSIVGnG9J0DVusvuXvd9I9kbcwHk=;
 b=tlHjc/jzAt+4lio/mmpydBp/iao/PfO+C6aqo6wP/lJCxAEnNk0Ven49oCb8PM9C4DJh9T/o9lSzhItVqyan161OIJNkSRkD9sCakDiC0SiRde5booQL0qA6CnIuMtXQR1qzVre44+DghN5Q0nyeB1DZNnpFvIMoRz2Kj/bae0vT4lRgAxeWq3jzVhqmkJhKUsEH42DjcAmBKDLSONKb6YVTLGAOpxRg+vMC/jLQQ6ruQS5FiEhr7QxQ1waqIPPyw7Jim6ZYZMhfkxppCD4TEdFNayk1jc4cpRiCwJbtaIPHlJNTwOJGP8E/NNHeY54E8JjlpNEpd7ovMOl7NrfASQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DS7PR11MB7833.namprd11.prod.outlook.com (2603:10b6:8:ea::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.26; Thu, 29 Aug
 2024 14:29:04 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7897.014; Thu, 29 Aug 2024
 14:29:04 +0000
Date: Thu, 29 Aug 2024 10:29:00 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <imre.deak@intel.com>, <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH] drm/i915/display: Fix BMG CCS modifiers
Message-ID: <ZtCFnopiRIDSbtJp@intel.com>
References: <20240829122928.423456-1-juhapekka.heikkila@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240829122928.423456-1-juhapekka.heikkila@gmail.com>
X-ClientProxiedBy: MW4P221CA0008.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:303:8b::13) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DS7PR11MB7833:EE_
X-MS-Office365-Filtering-Correlation-Id: 28dc587f-4271-431b-89f4-08dcc836eeb3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0wAmc89rTNlFQY+05QYrZm75SKWYxi4G+asqeShBLIr/gkTYPkJD3GIe8NUV?=
 =?us-ascii?Q?kdDPfgpWvObgwVlHaJyDB+OEq09IWikNzYq0iaWby1i/3wQcx0OJBRH9Ovws?=
 =?us-ascii?Q?ynEupRY8fcCNOjaj/G4yj3uOWjYVhyNI9UUkvohoz/kiHv0ieMKNR+ng5uzg?=
 =?us-ascii?Q?WUQDVZN9dtL5QB53mLZiIcvqnsPGMt/H1CWh/nYj+ZZBlTt/zmMWNNIuLZbm?=
 =?us-ascii?Q?E+K52DI/7y4H6W16CxLzWTh6lWHCqjM3nB3LyqkPRuXurrxVci/beiknWfzH?=
 =?us-ascii?Q?GdQqj22uHsZpa87A3WM1X536NHCYChrC5720kvOIzla8djL4VZeu8xtWoAaV?=
 =?us-ascii?Q?AjGcrMu577C1eKylpyAGiqEl5xhzLNTaO5teTzUQybyYb+2WGP4RVu4HIYbZ?=
 =?us-ascii?Q?HBG7YVfl0304caR7QaiOZOUvcTbo8TJ8o5/gjsxjUiqklkNjvWOBqOk4fkVb?=
 =?us-ascii?Q?vnq99Qa5+9hGvhr6pX1z9AW9ehFq3N8k7TJ3lfXlOCGh9wcWWGBUhV3w+4uk?=
 =?us-ascii?Q?stUF3o5OJbGwa4bRv166vtNJmNh0bZFVqr4YGp+y4Nb7fAjAeYKj9RXk8nR1?=
 =?us-ascii?Q?9h0IuyspeDhUmnNEmcgkflv61/PZRwR4mfjzvpHw3Beirf63sUbcqXeY2Fok?=
 =?us-ascii?Q?7JgJdq7QAVLkdcgX38a/2erabrAoLYDvnvvJ0lxyJ6K/0wsQpziEw4sNhxl4?=
 =?us-ascii?Q?R5bcbele0gcORB8VGIAcznYzqilw8eqrApfEj07Go0E50YSSXDNH+I4fmFAt?=
 =?us-ascii?Q?smBESfg3JQ+6+3ZCMHUxZJY2qM2oGUZqRKoeIgmXqqkueuFst1f+sXpwMTxU?=
 =?us-ascii?Q?WGVOIXKDdf11y+tlZJjsg2Sf0v+0zGzoWygMBf1UE6uILv3c2JpdSPmAVHO3?=
 =?us-ascii?Q?KwwPhUHkbFwA9OsZD7YpeMaq9gEl3P3yWH+lUd26+miWFKwLkH38+TVzf5IQ?=
 =?us-ascii?Q?LwyvwRukHYaWz2b4lhs2L4R8nuojgtSnTPjUQWyYQFi49oliN1AplpUyK63C?=
 =?us-ascii?Q?qAMZn9Fy13D1VSSpzzuAFjO+lewNVKhNm28PbqXqzMDJQYNCOWyS5oIZWK+u?=
 =?us-ascii?Q?vdcFYkPG5o/ti4giU6SPprl2HtQJlohFjLzu5Dpqe7OJhnZz342fnfZ687Nv?=
 =?us-ascii?Q?/bwuP/Tp3JOO6afNhsVuGl63IJCmTSHJ62XCm4V0Olvbibas+jgkO8P0zXW5?=
 =?us-ascii?Q?U3nQ5+c9c0zNWyttoKFgz+3NTMVC8v+UVuRehoZdkfCc2+ONmj7xsTv16FP9?=
 =?us-ascii?Q?axUEB88Pe5Exe8hMzRxCnLEMPUYFEg6BxE7DjoCAOSToyFBq+QK/1c0rQjhb?=
 =?us-ascii?Q?PcebSDGMypv4pZkc3vO6TcDsM7bU8n4FB2PUZJa5w7aaXQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YueOZWiiwnqL8O/qECY1FwAAu+voWgudUSX1/Hlk2AXO96V56nemqS/3Kab+?=
 =?us-ascii?Q?DsW0Mqot4TTQ+ivhmNLxRqQhEzsOrPi6XyFelqMwNiqMRk63SCxzbF9MvQHS?=
 =?us-ascii?Q?UD8+7P2aYjd6JTfNIaSsrICrucugAqeLbhN40rHoC35ahwLUgi4918ZiEWKr?=
 =?us-ascii?Q?L9uct9goGVAHGcapJNu//s+mBLM9e5dehxbXmM/v58UgGL9bbMZI5f4Y4a5u?=
 =?us-ascii?Q?dos9c3esdtwPXX1Mr8ys9BBxsQ+szDo6RI48iLLbn5ylHsBwHDLYi7YsIUlc?=
 =?us-ascii?Q?47Z5ly5vLWaZta9knckjVlr1FxVTczmRMYuzUi4VAFv0AqZZPom2j2hnQ7h9?=
 =?us-ascii?Q?gQYmoAXh7DsYWE+3opuF694FayRiQ2ViOb1iJG6B6qU8l4to2zdk0befN8pO?=
 =?us-ascii?Q?Z1PF2jPTDDePzerJuo83JgpTrndTo78y6meG+1dgw8MjhrmCDShP37RUgtjG?=
 =?us-ascii?Q?/cKKgJWlSwDtRAYoszYU0QeCmjrGjglEbJKI2gtKHlKrB6CBvftCJZnR4ggA?=
 =?us-ascii?Q?BF32JPRLokgul5iWvuJsDoN3zPomIXWrGF1pdX4SIaSBVphHeaG+hqoANfLP?=
 =?us-ascii?Q?82shoyYAIqE2CxYzvQF5MA4pHyUnTo/e5IzHJ0dDIUwUsSRgAy/cEo6mgB2Q?=
 =?us-ascii?Q?KQhAKCI1eLBmxntKsLo5zkE0jnC5mBKmDFOoc1GoRuvQVankqg4eRn/lyyCk?=
 =?us-ascii?Q?10eMQ7dO8lOoUrJY/oSKkmvcmkWoYVf1f/4lTDLFi2TCPBm/fWfJvc8jUaTo?=
 =?us-ascii?Q?b2+NkylOzyuYBMbjmUi6YvBAeO0N+QZc6QJgj8qPqXOoJ9pkGeQeg86FxpHb?=
 =?us-ascii?Q?kiav8vdAe5m9fvcju9bvnb8QAjB84om7pFg96c/tGonKJa6VuXDY8Li0DVJh?=
 =?us-ascii?Q?E5yXQyiGcmlGKgw5mjRSALajoolF9L5Iif1Hah7TvGV9liZPG5HgNYzl2hDm?=
 =?us-ascii?Q?Wvfe0uxncE7l1dHbOemXM9aNN/Ub0M9UZSS4cEbwCjclnkMGrwDf31bunKgQ?=
 =?us-ascii?Q?/yOO5HbwgV/3L9iBHkafw+bprObLY5Yw+5ZtsV1KXg/BwnlIK6acAyC2n/Ax?=
 =?us-ascii?Q?eSmh8ff6cvixMYsLvUWBuCxwsWEBPEEgvmyy1VXosq1u3qtje6RufPjUefyo?=
 =?us-ascii?Q?2aqhzgCaOalHe2TuFY+i1yPOhcWC5kOaPoeu1LzaE541xp5YYRQs11kts0q1?=
 =?us-ascii?Q?sItcrlvbBCDMgxVnMr7napeZViaDBKNX83SlXXr9Veeem6RPxYAVCI4dPWk4?=
 =?us-ascii?Q?Dmv8zYcrgTbrxX5GhOaRdv34gCsUa1MF8jJjWf8VGnQmKw1pMTrBt2QQ+GhD?=
 =?us-ascii?Q?TqAtUuCC5DpXwKBL5jug4eNKE8fnJiCTnRTY1iHYe6yt+/IsigK8MyutYXqW?=
 =?us-ascii?Q?3//wy/ElusKevdgs1D7e/1EJg1xLt1G2P1oXqxJ5yvf2tm8X82opDuLIi6ua?=
 =?us-ascii?Q?S7Qv+SziMpCX3lzep8nXv4JAXCn4vd/8pVTePFH2vbSl15GJp/aNC2QI5hMH?=
 =?us-ascii?Q?aYwWEZKOxSYUxCJniNKBbdqLtECkhOpAdTDCqtmItXI68PtlvEi9inAFRnky?=
 =?us-ascii?Q?55imZiESZaL6EZ8T6y9KzNp98wnrzRaHXdus2CIypPJcEQ/OgG8Kbiz+bQws?=
 =?us-ascii?Q?+g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 28dc587f-4271-431b-89f4-08dcc836eeb3
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2024 14:29:04.0196 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zpg9XhIBoXJcu2F/4DRAjE9Jc7ICnwyoIw3jI7lT/onswNawts3KEZWbv/cyJtTDaiwcV5PEaSbH2H9ex20B1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7833
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

On Thu, Aug 29, 2024 at 03:29:28PM +0300, Juha-Pekka Heikkila wrote:
> Let I915_FORMAT_MOD_4_TILED_BMG_CCS show up as supported modifier
> 

doh! I just did the pull-request with that... I guess this is one extra
pull request next week or the first patch of -next-fixes :/

Fixes: 97c6efb36497 ("drm/i915/display: Plane capability for 64k phys alignment")

> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> ---
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 9452cad41d07..d28b98e7cbd7 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2453,6 +2453,9 @@ static u8 skl_get_plane_caps(struct drm_i915_private *i915,
>  	if (gen12_plane_has_mc_ccs(i915, plane_id))
>  		caps |= INTEL_PLANE_CAP_CCS_MC;
>  
> +	if (GRAPHICS_VER(i915) >= 20 && IS_DGFX(i915))

we should be using display version here, no?!

> +		caps |= INTEL_PLANE_CAP_NEED64K_PHYS;
> +
>  	return caps;
>  }
>  
> -- 
> 2.45.2
> 
