Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8FC8D6166
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 14:09:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABF8410E12C;
	Fri, 31 May 2024 12:09:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QlcOf7dO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCC6210E12C;
 Fri, 31 May 2024 12:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717157393; x=1748693393;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=VlmVjrRzXWXSTfSOBm7fZf5DskgV0QzZalsGRbRd0hA=;
 b=QlcOf7dOaYRqbFNtkKKQ0fu82js3kxvS9l07MaJ2iko8XUFRtpBRwlQm
 54XWzWB4yJTcpP9/pev2jqK9QoQD3YxkQH9CeSV5LRpFLu/C3OevjhOy/
 Hy0om/pOBo5dp3fyDlf33fiZATerSySnM7d6Jg/LncN4YSW2rmaPoJqvf
 Uy/+FsAfrfLzEA72N/N73ElNHKT1AU9atHIxUpQdxn8qeI2LTgJ4Vwi5K
 i0XpX6EGtMh5saeeHP9yl3v4pblYmIEEWzmLJmRGFC0Nl/SC4sfQh6hOa
 qtKsopAKG51CpOvom/F42b+Mslz4FHmfYrvXwnld+gFaoGBcUULVf4TVN w==;
X-CSE-ConnectionGUID: ENbWY0rxQ7yDN+YgKqj98w==
X-CSE-MsgGUID: H9Tl34SKTxeqUw4nXKLeOA==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="24325453"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="24325453"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:09:52 -0700
X-CSE-ConnectionGUID: GrL+VnIZSv+7vuov3io9QQ==
X-CSE-MsgGUID: po2ID2G5Tt6Fqm9j5noSTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="67342826"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 May 2024 05:09:52 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 31 May 2024 05:09:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 31 May 2024 05:09:51 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 31 May 2024 05:09:51 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 31 May 2024 05:09:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gm8iYU5JvPyexLGZJppQ4ZGpaQvNG6zvnGARi/23pqRBbs0RPFUW8altBS+HXrBn6ANX5f5pb//fSyQlkhMegl5jbUkVupg/GqJcJhSuz4wU0cxV0VGBEWukA4O4GhbZb3KwXTczvwKYg6OvMa4/8j3ggNO97E5wJqkbK22AZ2UF9x9kuTNWsV7QjfCaoakGmtk3jtAwjl+qo18ANXrOGEwyp+uktEYhRXYWWqbhOWXY252rirL+EUfxgTUxoIjN++Sw81YduKpIGoL08mb4OhuDCzy04KiEsmNdKpiBS1aZF01UAIi0vwQ/fMbxIYiNPZJT5Ux6Wo3Vjkm0mgzHYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JrkS6LUwi5/SgQk4feTW2yxiLqNmtRxWHC0T/KfkZ+M=;
 b=bsAQjrZvxiMxRNs4lF3FW423Y9djq53A1oNJIUEGKYe3ed05l1RKy01o5foKLcRuDyTrHnOm0K7B2jET3E0CEh/+P8jHBK5/dhlfGIMiIT3DzV3yXhLj609s98VOgObJzXat2q3icAi2GFaY3iIbE3RIaxY5kDYX3TBoNZIxNE9DpfNx1OiZdyXrobkKHp2z5TYKeaKwM/brnM+3YbDpT0YkJApbvPcvrKPFKM8YGRQxi/7qSgo7wTokt/RIOMztv43MUnlElQGdW2//AnHKrJ0vfxUQJioYSCFjVExgddVvRkWS/P5pX7RiZ7goq9olUY+uBG2287CPrO4WbCVnvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB8319.namprd11.prod.outlook.com (2603:10b6:806:38c::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.22; Fri, 31 May
 2024 12:09:49 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%4]) with mapi id 15.20.7633.018; Fri, 31 May 2024
 12:09:49 +0000
Date: Fri, 31 May 2024 08:09:45 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 09/10] drm/xe/display: reduce includes in compat i915_drv.h
Message-ID: <Zlm-Cc-o1DuZie-3@intel.com>
References: <cover.1717004739.git.jani.nikula@intel.com>
 <ada73d5e3565b1cc284405386a16cc74d79bbb05.1717004739.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ada73d5e3565b1cc284405386a16cc74d79bbb05.1717004739.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0134.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::19) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB8319:EE_
X-MS-Office365-Filtering-Correlation-Id: 8791136c-47da-42ae-b4d1-08dc816a91e7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Pnw9KLrrC0MQjyZoupmg8Od1ypmeS1rzCCt/7EHcfIvY4PP7TxtEXHTlVRfQ?=
 =?us-ascii?Q?ewjKCEjntMMfzhKlTZOi1DsBEpQjKwU3rGHAV7P69k6Mw675ix/LlXbE2/4d?=
 =?us-ascii?Q?EfQHLztpr8U0yy6Wiy6Y7x82+EMVLjkKJeXy+m4qXAuFxbR8mLXaAH/Yx7/J?=
 =?us-ascii?Q?8K74c7WtSbMcKV35MuaJhM4XY+Fy/BCwUmm3/bh5McImlfG5b8kQKfGXej4M?=
 =?us-ascii?Q?z6OsNJTVvFw9PaMI1Sfu0vuHyWy0oCFfDnjOn38g45/Bbj0lQK5sqW4WpN5K?=
 =?us-ascii?Q?tJxxNaHDMFPk8vezoDkeogekugtLqUQ2zp4Fhx7OsDJDgwAIQi5F9LtX/HEr?=
 =?us-ascii?Q?z4e0bF0kWVhtQplHbxINI4CKED7xFsrkz2ypov9vkWl4w3Gz6chHmIWAQ6E/?=
 =?us-ascii?Q?H4Z+Td7SUEVk4CdgFdt5lu7VVcdiC3MZAmDq4jDp+rWfGxWx3Jz00E6TH32U?=
 =?us-ascii?Q?F7jNxAiEP62iGBL+214gJm3TxxKTDIpcLyuoOywpIS5mmxCxyA7KJd26A352?=
 =?us-ascii?Q?ERS7ekriVAX3wUoG2bjVNM+FZFfgg06Qef34bHq8P2CCWR68ev7RcXNxG7rU?=
 =?us-ascii?Q?490lBtdE/J8eQLPGsxU1L32lfgMuFnLQ3/tntyeQhZzkkARn9EQhc3DEk0f5?=
 =?us-ascii?Q?q3GMNj/fXL0H/E0aAL2tGkCBYsOjA1JEflm3TcNL14rERg5U79l84arQy6gg?=
 =?us-ascii?Q?Y9vmppwEOb6ZlvaWldGm9P8wz3Pr3Aj/p1D8Q8PsTfbs/Km9oZi73nOEG2+m?=
 =?us-ascii?Q?Z0ZAuIsRhxeT7NxRYz+wERACm90g/4AWLFI8PJwCjP/WgwA1xmdjuyPBdqh9?=
 =?us-ascii?Q?mez5FlpxqjBCElQ7tnVkqEKmNqvHlHZuluXCR1jyeFX+qbQCHF2yavgoWVkZ?=
 =?us-ascii?Q?HGaF4oFWPxFj77J0pUMox9rQnuk2mZ3giFLL+ERYqYSOFKP7FwrlekbAF7Sk?=
 =?us-ascii?Q?DEC4TYu5UOElLjLyztVPjI17Ru1G4B1/zA9YQhxTrkj3wQ+HhIL4Rzz5e2dO?=
 =?us-ascii?Q?ZPxOYp7A8u2/18U3tkPwOHw+Y8N3ZpxEOEM/ZHe0JoOa1NPQsFA8nzMSbinj?=
 =?us-ascii?Q?qepAxco9uio66Ri8GQfREstBILbgd7v12UnvyKhH7b2+BrTl6TQOX05IW6T8?=
 =?us-ascii?Q?j6O6x5U4f+/j99IutQWU6+tUp2G+Wjk3n7l79HhhekgqYpC+NB/pzNM0X8H0?=
 =?us-ascii?Q?tdTWzhKx9/Ned1sFseqCPlMP4cDCnbOWOnMLtjzCW0pY4FOpN8CehXKHd2UR?=
 =?us-ascii?Q?uhtwZizlxg8aDNaq6AITfXUzvMacztEHZcT0cFLVdA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nuWsOaTCl245PdeaqlxFr+LmGf/yuxIquC9UrghnSvizkCsunjbjGiSLaSJd?=
 =?us-ascii?Q?F2B22/lGX58lLOJrsfwyUJAU7zZernmoDOtBqmG1P0+oLZ+6jPBdsYJzLLx+?=
 =?us-ascii?Q?tOgAMDOjkKndFw6LTEG0Xz17NVnLw1HXKpQ+Exj+p7aSNKUsehDhHbzgGSEy?=
 =?us-ascii?Q?4/XbcT3VauWGFIauq8CFr5jjCS6Skjrm7LZwogwQGL81KNszCvVhE52kOCpw?=
 =?us-ascii?Q?wrR5If+gGv+lJVek8IjFP/0L19ndPTvdVFzrAwB7aJ394RcbhUENk4yK0ond?=
 =?us-ascii?Q?y7pOpqNDCZn+9Jx5MwcYGNBA8KCSXnEpYqDHrQE8zn1OTsMCeIPT6KwboA7m?=
 =?us-ascii?Q?xoZ/U30sx+CN2FTkA6jKaqD7jy28M7miop9oy7lFeaMeJbf3ZhzSVzi5V9du?=
 =?us-ascii?Q?aNgkDbXA/SR6XGg6x+NnNOutDx0FnZ/sAtryRepUbYGO/xA6WG53NvloZmjy?=
 =?us-ascii?Q?Zv9vDcBTIDUW810x1QiGMgjUc0FAdwBfnGnKy+Na25rj12ZRmmWSBgvNEhie?=
 =?us-ascii?Q?R2lXXo9vYJX6EY41ExYsPw73mBf7wiNBRQ70AVPClU3KJnAxhFCf0UygfzpT?=
 =?us-ascii?Q?8cI3Gm7ijiLyIx8C/4oUrEIdLBgm5mPfZnslKV00DljhadzoJ/wVW6nOQO5u?=
 =?us-ascii?Q?SkjDtJBRgR0quF29KO6B0b9X7L9FMyRXViD+fovwsJyqq0Z6Wbwz8NIECZUS?=
 =?us-ascii?Q?tQKgpomhBdZCqxyrBXaQpQZtBMmY0ZgZk9E7rmQ7MK0ATGSYer6aj+XxXQsa?=
 =?us-ascii?Q?zmaN1bRXONZ7VPHX+u2p6CEn+uKeO24qwqkbGCGpC1USncMPopXHDKaJr6b6?=
 =?us-ascii?Q?Mf3+/GHE+fFcfO2tuQ+W64zaWqxyDsaPrHMQ/s2hqMSAhwjodOgYNFeGrFT3?=
 =?us-ascii?Q?SiiZyY3SbKasd5jOQy0/YvFeLadrwnedvqtt9wie30yTZfsldf0xDVZC954b?=
 =?us-ascii?Q?vL3qpFf3QurnEWvX2ACYrClJH60N/lcpwfNAZypTeQECiUCpFI7m98WxWAZ1?=
 =?us-ascii?Q?7F5/2D7PuQ5G0ox8SlFhJnXBmSJjwPcntpzkrbhG8WskHrRqbW28L6rs4epN?=
 =?us-ascii?Q?VMxD6kUowvTD1v2iblwgag6jU9eGXE1ifQ4T7Bq+qcsNmGA4+9d7hDJKCguQ?=
 =?us-ascii?Q?MeO8e1q6qOqtUuzNeWcVkAId9P2/WVfMUU8tAkRLBzh89GzLWGvxLCh14xI1?=
 =?us-ascii?Q?1RtYi3VNlel4e78rwYKhN2yLpzVxOXm9R2Ztd4Z5TwR7wW1FIXmvzNvQFoTl?=
 =?us-ascii?Q?Gqj+5CdqdGaGFNkwgLl5Jl/6uUtoiXqhkR6gjHgisoVE9cyrmWZusyAAC+PX?=
 =?us-ascii?Q?k+yS7XEuysvCv+X0a3K5MPZ2yohdUVYet1RW7MQkpotMbJeK4GYIDLdKoQzZ?=
 =?us-ascii?Q?eKlYVJDJJ92zQ7uWF+NRPC2eKl2xBaUyVFxTmZcfxNEi/JYtauh7xNgNy/23?=
 =?us-ascii?Q?q1axczVlo/de5QXR/odDgB4RDdAiGc/MqUpXFSI7qp7HTJfSACZ3IWpyNKpo?=
 =?us-ascii?Q?xHxH6hxaRTRVAwR2b7xYk9Su5LwWFS6uf6Jw8KfdWcdoi8Q9GF7NhuWynqjJ?=
 =?us-ascii?Q?3yqhTrQDBwuYiWp+kfAqdulBQkKd4jL0s1iT2EuY?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8791136c-47da-42ae-b4d1-08dc816a91e7
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2024 12:09:49.5222 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uDwhKptgB7HjjhVjxi1cjz/FVprAz/UbLmBUnwBhjDmVBS+WA8I93/AHpCnWjyQDK7XzlrjIfFy/dELej4WXyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8319
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

On Wed, May 29, 2024 at 08:48:13PM +0300, Jani Nikula wrote:
> Remove some unnecessary includes, and replace xe_device.h with the
> sufficient xe_device_types.h.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index fb37da4850c5..2feedddf1e40 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -12,11 +12,9 @@
>  
>  #include <drm/drm_drv.h>
>  
> -#include "soc/intel_pch.h"
> -#include "xe_device.h"
> -#include "i915_reg_defs.h"
>  #include "i915_utils.h"
>  #include "intel_runtime_pm.h"
> +#include "xe_device_types.h"
>  
>  static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
>  {
> -- 
> 2.39.2
> 
