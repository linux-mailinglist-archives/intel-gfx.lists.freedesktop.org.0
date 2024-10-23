Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 556DA9ACD76
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 16:54:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4F9710E234;
	Wed, 23 Oct 2024 14:54:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SDzKFhS+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 906C910E234;
 Wed, 23 Oct 2024 14:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729695243; x=1761231243;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=r5xu7PjUo/vQcw+jvKTh8m8EqHaV4sHB2SC97wdT0iI=;
 b=SDzKFhS+HEdpUDzJNRxgH8qkG5FpjaQzqGdaDbbUnJImk84dMDl2ejyt
 tl5U0EHlt8uyo0Fnced4p+uOtRA1JaEZfaCQ/x3YeZaT7ptGkyrJTWYku
 uwRRraGgcKntC8/bfICRfOJfNvg4k/Ubos9VSMiO3U9gSz2kjQh10iAxL
 jFb8m0PiEVy1nsCaUVyhFpVhp0UZekTgVHynvJ154yKeyhY18oG0sAQcq
 mjGPVLbIipHOxAkX4Nz1jHvCfGNzCnPRHmZzwhf7akINFrdtV5LuUMG3t
 cYznJo3vHc7hIJGuvQaxpoBChpMyZ2TdzmFlnwnDg9OXcl6RTJGj924DI w==;
X-CSE-ConnectionGUID: 7/J3t0ATSKuCXK1EXcqqXg==
X-CSE-MsgGUID: DmLwu4qxSdGNO9bOwI+zjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29158981"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29158981"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 07:54:01 -0700
X-CSE-ConnectionGUID: NRhPDjbqSzG+lQcXH/Nx/Q==
X-CSE-MsgGUID: tXbuAjW2Q7aUIR3sGvll6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="111092487"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 07:54:01 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 07:53:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 07:53:59 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 07:53:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=otMPKOLVMAjBHKlDcqpwnGyqgcvsTxZUFf6+cP27mVIhin+dQZHuxrp468soSLW6Tadhb94HTHsrySlyIxxdNqS/J/61A/uo/YnOBK/9fDYYGxAKYg3lh1/VIP0/fl7rPRc3C6vozH7F5/BXob/1iXdlmbj6dFOajSfXA+oVA13vew7d3Lv8yVIdSovnoOJC271yssLzYFYBLtg0Xi/5i4dixRzGqiLYQqntqfynIg0OD93ek4YT46YyKCbSHDpMC0kdoFWL2z7Tv6eW60VjBaB7q5LOZAtR0g5gwtyea582ZIBuKrcB+v96fZwxFJixJ+fwq4pkn70dKaD+g1pTrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uwsxH0/zaOHsNz+oxu35T9PRO6ben13A66az4UFhCB8=;
 b=tj8CDI2EgrBuY9rUYeUT0bSd9hCJP1wMcMp1HJN3QKMEjA9JAoPKr7b7Ez6FWwfpE8wFVtr1fhq65/L4eMexUcfXilByKz08SAa4Nxjdg9OG+QkQE5WZbVta/VV5MdMuWkhWeLaT+BgkRienMC4ddkwvgIkys/QU/LfnjQIvXVISIWehh9ePuF57wRqGI8RC5N/3ZaeXAZinoAkFMLmqKgOJ2ekPrZd3ltRo1DH+5bYn1NuzmzEnhVbGFkdgvu2MIFjU2U0kLmdklGKj7QHIwLw2h8LvvMM5Yx/GZvqpFbjCii8iBIirZxQDhT7q6vDOwzCqkapa6aZGti6zFM0ROQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH8PR11MB6681.namprd11.prod.outlook.com (2603:10b6:510:1c4::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.17; Wed, 23 Oct
 2024 14:53:55 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8069.020; Wed, 23 Oct 2024
 14:53:52 +0000
Date: Wed, 23 Oct 2024 10:53:48 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 02/11] drm/i915/cx0: convert to struct intel_display
Message-ID: <ZxkN_CVTqRRz329I@intel.com>
References: <cover.1729612605.git.jani.nikula@intel.com>
 <3d2b6591fefe6e9b4f3cd402ba74f3a35cb504b5.1729612605.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <3d2b6591fefe6e9b4f3cd402ba74f3a35cb504b5.1729612605.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0017.namprd03.prod.outlook.com
 (2603:10b6:303:8f::22) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH8PR11MB6681:EE_
X-MS-Office365-Filtering-Correlation-Id: a1f0b049-edf0-47b8-abf8-08dcf3728261
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?TQaMXwsqQ5DCDruxS9ECBmSHn34jAQhkJBwWbUfEBUypN8SkkCkFELJpebT0?=
 =?us-ascii?Q?m9aRXHhCmMMTEYeOYooRaul8nji0X3A1jo2gP+/+WX4/Zf+bHzZYufPX+m/j?=
 =?us-ascii?Q?oZO5P/7LOHiRpWHWxEQqCcUNVU/0/JYqG9U1fZLeJc86y7rIx3UCHrOI1moF?=
 =?us-ascii?Q?tnaOfvjeCu5oB+oNMKbpew4O6CJwEgfGIRI6WwXtM69PKAffhXvs6GBBJr5y?=
 =?us-ascii?Q?MEi9+v2oM58mIjTiPRJeNRet35iI6AVS0eXBFY2YWdZ0KWkbhcqCD7m35YwM?=
 =?us-ascii?Q?RgEda5rp8zq+WaAekgBold2J7aD8IEl1Wo3pT7o6i4WnGUGyBnsXtf2Cdm6E?=
 =?us-ascii?Q?ks3+/opkh136btdXC1azxnch6oEJOlaFcDFCHJiu3dlKuhGnhe+RzMlpdYz9?=
 =?us-ascii?Q?Z1iQAB85ThXdrjv7ayz49A9N6vZqC/+Z0g9SSGQSDkImtCPvpmt8wBHPBdL1?=
 =?us-ascii?Q?yPMLrXuSfkRGbLSime2+gmRHGPp7/j02fbt3pcEt4Ssdz1+s/lZrTqkf4pAS?=
 =?us-ascii?Q?KIErBy6pg6IahEQDiiN9nz4e1zPjAcsDWVrL/nzBVZVx+AeFwQX4lgzzN3xC?=
 =?us-ascii?Q?bJTQNwKyKAefkP3EW8eOUHLkzwEo1EAck2RscsaSh954PK+KJI6U0YOC4Lm5?=
 =?us-ascii?Q?fFyRSlr5cLUylZIFRcWqJQJGl5CRUmztzQIjyL8+zGNHQP3qwwLWeZATLL3H?=
 =?us-ascii?Q?ch0ibCM9RWuQ5f0KeQPyGWfBA1qjGef2DiahPRkC0WQ7nxGaaZmgxkIL2Vqt?=
 =?us-ascii?Q?CZARmu6TMB+z5UB11DmeiOqsvOpi/8uizdWVHLfSQHUBiWgTFQYTcg4baiMV?=
 =?us-ascii?Q?dQvC/5/Dn9/VgsyxgiRZLszUTQ8YFKlcu+P9oUgD3DHhaF69G2y9DO16IOpG?=
 =?us-ascii?Q?oI/RgjkL/hgfPlzq1ItJVEruWoElfsXjivUNI2q3lYJSw3kkhtRM8P/3r1u5?=
 =?us-ascii?Q?YJamSyrTgIh0BljSIdX8ISKL+WwD5l7kQAyGMp+VWRx37M8dYmvOeibnx8xp?=
 =?us-ascii?Q?p7+h6ab1LtPlAHaVAFrH+zY5LjNU4Tgv9iCfvRAe54Zik+8v/2BMEoHAXbA/?=
 =?us-ascii?Q?bqEWJpx4Fgk3H9ZMRUN0sIcCqiMofNQmXtwx+2whz+yPhSHieu2KVMZcNZX8?=
 =?us-ascii?Q?heI8HV+j3rCxCneT30JzcszbDjYOpZRFF5yyV8OmTm5hJJZFFJUKnY+7Kj7+?=
 =?us-ascii?Q?CZkXRnZK1NEWhU022JWI8/MFp/dF7TxILBs1hzpcWaUqq5Gg5zq7beRddyF3?=
 =?us-ascii?Q?Ne+yE/yjkuTqC8ci0OHYTGMbvbhoaMH3/3I2MxYQEpFFejPFabW0+6lYGJbP?=
 =?us-ascii?Q?0bIedNZyiDkciirADlqdu5Pq?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?q8e4QEExlmDAfEtntVVrO+xBu86TrF6FBtb/5UgDVyVUebE63lFK44hSQ7XI?=
 =?us-ascii?Q?TZxORIEpKbmrE1TCNC1UIF52XX51VkvarSSEBRM2cDu8SbeXhn41fJ6BxuVN?=
 =?us-ascii?Q?Pei5XfbFzwlFcf6JYypGGKO4BYci1NO5TAxdfa/H59W2zoF6BXIZ002PvI2N?=
 =?us-ascii?Q?jtTV5VaZscIi0qkP7tLJKlekMmTBqVqCFs8Jwl13KH872g7dgoTGdPXAohke?=
 =?us-ascii?Q?4FXy08XwdeAJQ5pvYQmbXf4IQ4JYWl28uxGqlaBJqrRjAUlkO98hHOWYmjys?=
 =?us-ascii?Q?dMpTfoqcih1HuXMt7O9WgOhRQpVwNHCpidfEkSA6pmCxpjlLNRjB7OD5RO21?=
 =?us-ascii?Q?pBOHipHl4yV+J8ISylH07maQ8Rd9MRQ8U8SW40eiT6ihW+DP6Z1a3PQccu/U?=
 =?us-ascii?Q?y0LXYwcnDheltlraRbmDWD5L9e+lVGkB9qoG5Vu29gy8O49DVky8WONpLuO7?=
 =?us-ascii?Q?0/DFwD6pGhDvbLKGMAByHHRvAhK/eeTTox2unFdu6jNat/GABXl0ZlFLF3Ow?=
 =?us-ascii?Q?rwH+QkKuHUKkcTkdv7JLYsS51ui+qFRUDdXS487URTdnDNXUiAVjj6nkI09R?=
 =?us-ascii?Q?8z7pKMNL3vXi+YWW7HSBnMufOu9VM1xdI0NRYAKRNw5RfIxtha724XXKtMJN?=
 =?us-ascii?Q?yIPKBU8cd5iT141DzXASkVssEDGfGFUODn6MPGJyOGK3mDUvqZiWlHoZVmG3?=
 =?us-ascii?Q?QbIpY+OBi8I+yYahMLhn4upqgk0TwGB4x0DXciusg10KBF5fz0TNyNsEE3uu?=
 =?us-ascii?Q?iVw/uQPWvdB9hsNOEeVMNGJaK8PDe7Y67sGai4wVcDDKpUUnVwqtWCqA+Jy7?=
 =?us-ascii?Q?TtCEor0fXwWIM7EAQ+r3+671j8CF9q98ccFyF9uAKmBcmnh0aZX6OA0G9t3m?=
 =?us-ascii?Q?MXEPT/mzQyoy5XXWNrMfWk60K549aK6umFL8vaZ6+cGMJ9i+mIjWhEj+11Lf?=
 =?us-ascii?Q?qmq5H227AtTpkp0YC9pPs57hJuE9c86zt7oHtHF8YslySzuw36vz/TXCe3dG?=
 =?us-ascii?Q?NXArTb9ZJHxwCok5OWmsKu+YiU82GcL/h8jQok3fXNyU6Q8AJbRno7xOzxy7?=
 =?us-ascii?Q?lUV8Oj0nF+RBCUC9Pr7hp+32ECx7lk1hpoIwswzXISyoWgZlWiHdoPxLWLZ1?=
 =?us-ascii?Q?53qv9B1sGYAjo5vFB+Mj2nFQfrlpQZ9jubPhnqcL4Arfhk2kvCr1zcmbQhvI?=
 =?us-ascii?Q?fM5Ww1heP10uYSQt3a9iv8SXoGDsBXu/AwUdOxY9bWdWx/hDQxAXvjpdeWDc?=
 =?us-ascii?Q?8KnDWa/nVZELzVDqvtHgJFEZ6oOWDovmKjZ7UQ4DK6rpCbX119AZhO9BWwQJ?=
 =?us-ascii?Q?CZw2Eq8+Jc6EaEMTbslKTbOB6U7crdbKNQBSNvu91QEpZZJ3wi9Wk+8id7Ej?=
 =?us-ascii?Q?7HRUdb8CcNuIVpewgitrFUBE8aCucraBt01YXGWTXMk5hsw7MBleyQP/k9zB?=
 =?us-ascii?Q?GDYOiPog+SlhqZd5r14Zg5TakrMg/GgZVZLDVDsqg4wxqH86v0CpmXo4GCQh?=
 =?us-ascii?Q?jHyazLCBhYgro7ORUCuEJe3msqfd+ImaduDEEfNzF8cudJlS2HX5V97goc7+?=
 =?us-ascii?Q?p381c0KzKpcJ8tMVwgBBql3KBTx8h7/UbBztommE+8+uN33zyjrXMTzqvOCS?=
 =?us-ascii?Q?oA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a1f0b049-edf0-47b8-abf8-08dcf3728261
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 14:53:52.3362 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7qTYstdcad4zZSMG4R4Bpo1g7/wx8U/6j89GNrP2Ua3Q6rj18hezSsZ85/tpOIMrGCltucPCBzI1of8esg/LRw==
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

On Tue, Oct 22, 2024 at 06:57:19PM +0300, Jani Nikula wrote:
> struct intel_display will replace struct drm_i915_private as the main
> device pointer for display code. Switch Cx0 PHY code over to it.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 308 ++++++++++---------
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h |   8 +-
>  drivers/gpu/drm/i915/display/intel_display.c |   6 +-
>  3 files changed, 174 insertions(+), 148 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index f73d576fd99e..814bb17c9379 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -65,22 +65,23 @@ static u8 intel_cx0_get_owned_lane_mask(struct intel_encoder *encoder)
>  }
>  
>  static void
> -assert_dc_off(struct drm_i915_private *i915)
> +assert_dc_off(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	bool enabled;
>  
>  	enabled = intel_display_power_is_enabled(i915, POWER_DOMAIN_DC_OFF);
> -	drm_WARN_ON(&i915->drm, !enabled);
> +	drm_WARN_ON(display->drm, !enabled);
>  }
>  
>  static void intel_cx0_program_msgbus_timer(struct intel_encoder *encoder)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
>  	int lane;
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  
>  	for_each_cx0_lane_in_mask(INTEL_CX0_BOTH_LANES, lane)
> -		intel_de_rmw(i915,
> -			     XELPDP_PORT_MSGBUS_TIMER(i915, encoder->port, lane),
> +		intel_de_rmw(display,
> +			     XELPDP_PORT_MSGBUS_TIMER(display, encoder->port, lane),
>  			     XELPDP_PORT_MSGBUS_TIMER_VAL_MASK,
>  			     XELPDP_PORT_MSGBUS_TIMER_VAL);
>  }
> @@ -119,25 +120,29 @@ static void intel_cx0_phy_transaction_end(struct intel_encoder *encoder, intel_w
>  static void intel_clear_response_ready_flag(struct intel_encoder *encoder,
>  					    int lane)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  
> -	intel_de_rmw(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(i915, encoder->port, lane),
> +	intel_de_rmw(display,
> +		     XELPDP_PORT_P2M_MSGBUS_STATUS(i915, encoder->port, lane),
>  		     0, XELPDP_PORT_P2M_RESPONSE_READY | XELPDP_PORT_P2M_ERROR_SET);
>  }
>  
>  static void intel_cx0_bus_reset(struct intel_encoder *encoder, int lane)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	enum port port = encoder->port;
>  	enum phy phy = intel_encoder_to_phy(encoder);
>  
> -	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
> +	intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
>  		       XELPDP_PORT_M2P_TRANSACTION_RESET);
>  
> -	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
> +	if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
>  				    XELPDP_PORT_M2P_TRANSACTION_RESET,
>  				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
> -		drm_err_once(&i915->drm, "Failed to bring PHY %c to idle.\n", phy_name(phy));
> +		drm_err_once(display->drm,
> +			     "Failed to bring PHY %c to idle.\n",
> +			     phy_name(phy));
>  		return;
>  	}
>  
> @@ -147,22 +152,23 @@ static void intel_cx0_bus_reset(struct intel_encoder *encoder, int lane)
>  static int intel_cx0_wait_for_ack(struct intel_encoder *encoder,
>  				  int command, int lane, u32 *val)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	enum port port = encoder->port;
>  	enum phy phy = intel_encoder_to_phy(encoder);
>  
> -	if (intel_de_wait_custom(i915,
> -				 XELPDP_PORT_P2M_MSGBUS_STATUS(i915, port, lane),
> +	if (intel_de_wait_custom(display,
> +				 XELPDP_PORT_P2M_MSGBUS_STATUS(display, port, lane),
>  				 XELPDP_PORT_P2M_RESPONSE_READY,
>  				 XELPDP_PORT_P2M_RESPONSE_READY,
>  				 XELPDP_MSGBUS_TIMEOUT_FAST_US,
>  				 XELPDP_MSGBUS_TIMEOUT_SLOW, val)) {
> -		drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for message ACK. Status: 0x%x\n",
> +		drm_dbg_kms(display->drm,
> +			    "PHY %c Timeout waiting for message ACK. Status: 0x%x\n",
>  			    phy_name(phy), *val);
>  
> -		if (!(intel_de_read(i915, XELPDP_PORT_MSGBUS_TIMER(i915, port, lane)) &
> +		if (!(intel_de_read(display, XELPDP_PORT_MSGBUS_TIMER(display, port, lane)) &
>  		      XELPDP_PORT_MSGBUS_TIMER_TIMED_OUT))
> -			drm_dbg_kms(&i915->drm,
> +			drm_dbg_kms(display->drm,
>  				    "PHY %c Hardware did not detect a timeout\n",
>  				    phy_name(phy));
>  
> @@ -171,14 +177,18 @@ static int intel_cx0_wait_for_ack(struct intel_encoder *encoder,
>  	}
>  
>  	if (*val & XELPDP_PORT_P2M_ERROR_SET) {
> -		drm_dbg_kms(&i915->drm, "PHY %c Error occurred during %s command. Status: 0x%x\n", phy_name(phy),
> +		drm_dbg_kms(display->drm,
> +			    "PHY %c Error occurred during %s command. Status: 0x%x\n",
> +			    phy_name(phy),
>  			    command == XELPDP_PORT_P2M_COMMAND_READ_ACK ? "read" : "write", *val);
>  		intel_cx0_bus_reset(encoder, lane);
>  		return -EINVAL;
>  	}
>  
>  	if (REG_FIELD_GET(XELPDP_PORT_P2M_COMMAND_TYPE_MASK, *val) != command) {
> -		drm_dbg_kms(&i915->drm, "PHY %c Not a %s response. MSGBUS Status: 0x%x.\n", phy_name(phy),
> +		drm_dbg_kms(display->drm,
> +			    "PHY %c Not a %s response. MSGBUS Status: 0x%x.\n",
> +			    phy_name(phy),
>  			    command == XELPDP_PORT_P2M_COMMAND_READ_ACK ? "read" : "write", *val);
>  		intel_cx0_bus_reset(encoder, lane);
>  		return -EINVAL;
> @@ -190,22 +200,22 @@ static int intel_cx0_wait_for_ack(struct intel_encoder *encoder,
>  static int __intel_cx0_read_once(struct intel_encoder *encoder,
>  				 int lane, u16 addr)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	enum port port = encoder->port;
>  	enum phy phy = intel_encoder_to_phy(encoder);
>  	int ack;
>  	u32 val;
>  
> -	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
> +	if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
>  				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
>  				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "PHY %c Timeout waiting for previous transaction to complete. Reset the bus and retry.\n", phy_name(phy));
>  		intel_cx0_bus_reset(encoder, lane);
>  		return -ETIMEDOUT;
>  	}
>  
> -	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
> +	intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
>  		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
>  		       XELPDP_PORT_M2P_COMMAND_READ |
>  		       XELPDP_PORT_M2P_ADDRESS(addr));
> @@ -229,11 +239,11 @@ static int __intel_cx0_read_once(struct intel_encoder *encoder,
>  static u8 __intel_cx0_read(struct intel_encoder *encoder,
>  			   int lane, u16 addr)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	enum phy phy = intel_encoder_to_phy(encoder);
>  	int i, status;
>  
> -	assert_dc_off(i915);
> +	assert_dc_off(display);
>  
>  	/* 3 tries is assumed to be enough to read successfully */
>  	for (i = 0; i < 3; i++) {
> @@ -243,7 +253,8 @@ static u8 __intel_cx0_read(struct intel_encoder *encoder,
>  			return status;
>  	}
>  
> -	drm_err_once(&i915->drm, "PHY %c Read %04x failed after %d retries.\n",
> +	drm_err_once(display->drm,
> +		     "PHY %c Read %04x failed after %d retries.\n",
>  		     phy_name(phy), addr, i);
>  
>  	return 0;
> @@ -260,32 +271,32 @@ static u8 intel_cx0_read(struct intel_encoder *encoder,
>  static int __intel_cx0_write_once(struct intel_encoder *encoder,
>  				  int lane, u16 addr, u8 data, bool committed)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	enum port port = encoder->port;
>  	enum phy phy = intel_encoder_to_phy(encoder);
>  	int ack;
>  	u32 val;
>  
> -	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
> +	if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
>  				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
>  				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "PHY %c Timeout waiting for previous transaction to complete. Resetting the bus.\n", phy_name(phy));
>  		intel_cx0_bus_reset(encoder, lane);
>  		return -ETIMEDOUT;
>  	}
>  
> -	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
> +	intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
>  		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
>  		       (committed ? XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED :
>  				    XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED) |
>  		       XELPDP_PORT_M2P_DATA(data) |
>  		       XELPDP_PORT_M2P_ADDRESS(addr));
>  
> -	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
> +	if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
>  				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
>  				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "PHY %c Timeout waiting for write to complete. Resetting the bus.\n", phy_name(phy));
>  		intel_cx0_bus_reset(encoder, lane);
>  		return -ETIMEDOUT;
> @@ -295,9 +306,9 @@ static int __intel_cx0_write_once(struct intel_encoder *encoder,
>  		ack = intel_cx0_wait_for_ack(encoder, XELPDP_PORT_P2M_COMMAND_WRITE_ACK, lane, &val);
>  		if (ack < 0)
>  			return ack;
> -	} else if ((intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(i915, port, lane)) &
> +	} else if ((intel_de_read(display, XELPDP_PORT_P2M_MSGBUS_STATUS(display, port, lane)) &
>  		    XELPDP_PORT_P2M_ERROR_SET)) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "PHY %c Error occurred during write command.\n", phy_name(phy));
>  		intel_cx0_bus_reset(encoder, lane);
>  		return -EINVAL;
> @@ -318,11 +329,11 @@ static int __intel_cx0_write_once(struct intel_encoder *encoder,
>  static void __intel_cx0_write(struct intel_encoder *encoder,
>  			      int lane, u16 addr, u8 data, bool committed)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	enum phy phy = intel_encoder_to_phy(encoder);
>  	int i, status;
>  
> -	assert_dc_off(i915);
> +	assert_dc_off(display);
>  
>  	/* 3 tries is assumed to be enough to write successfully */
>  	for (i = 0; i < 3; i++) {
> @@ -332,7 +343,7 @@ static void __intel_cx0_write(struct intel_encoder *encoder,
>  			return;
>  	}
>  
> -	drm_err_once(&i915->drm,
> +	drm_err_once(display->drm,
>  		     "PHY %c Write %04x failed after %d retries.\n", phy_name(phy), addr, i);
>  }
>  
> @@ -348,9 +359,9 @@ static void intel_cx0_write(struct intel_encoder *encoder,
>  static void intel_c20_sram_write(struct intel_encoder *encoder,
>  				 int lane, u16 addr, u16 data)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  
> -	assert_dc_off(i915);
> +	assert_dc_off(display);
>  
>  	intel_cx0_write(encoder, lane, PHY_C20_WR_ADDRESS_H, addr >> 8, 0);
>  	intel_cx0_write(encoder, lane, PHY_C20_WR_ADDRESS_L, addr & 0xff, 0);
> @@ -362,10 +373,10 @@ static void intel_c20_sram_write(struct intel_encoder *encoder,
>  static u16 intel_c20_sram_read(struct intel_encoder *encoder,
>  			       int lane, u16 addr)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	u16 val;
>  
> -	assert_dc_off(i915);
> +	assert_dc_off(display);
>  
>  	intel_cx0_write(encoder, lane, PHY_C20_RD_ADDRESS_H, addr >> 8, 0);
>  	intel_cx0_write(encoder, lane, PHY_C20_RD_ADDRESS_L, addr & 0xff, 1);
> @@ -429,7 +440,7 @@ static u8 intel_c10_get_tx_term_ctl(const struct intel_crtc_state *crtc_state)
>  void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>  				     const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	const struct intel_ddi_buf_trans *trans;
>  	u8 owned_lane_mask;
>  	intel_wakeref_t wakeref;
> @@ -444,7 +455,7 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>  	wakeref = intel_cx0_phy_transaction_begin(encoder);
>  
>  	trans = encoder->get_buf_trans(encoder, crtc_state, &n_entries);
> -	if (drm_WARN_ON_ONCE(&i915->drm, !trans)) {
> +	if (drm_WARN_ON_ONCE(display->drm, !trans)) {
>  		intel_cx0_phy_transaction_end(encoder, wakeref);
>  		return;
>  	}
> @@ -2003,6 +2014,7 @@ intel_c10pll_tables_get(struct intel_crtc_state *crtc_state,
>  static void intel_c10pll_update_pll(struct intel_crtc_state *crtc_state,
>  				    struct intel_encoder *encoder)
>  {
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	struct intel_cx0pll_state *pll_state = &crtc_state->dpll_hw_state.cx0pll;
>  	int i;
> @@ -2019,7 +2031,7 @@ static void intel_c10pll_update_pll(struct intel_crtc_state *crtc_state,
>  	if (pll_state->ssc_enabled)
>  		return;
>  
> -	drm_WARN_ON(&i915->drm, ARRAY_SIZE(pll_state->c10.pll) < 9);
> +	drm_WARN_ON(display->drm, ARRAY_SIZE(pll_state->c10.pll) < 9);
>  	for (i = 4; i < 9; i++)
>  		pll_state->c10.pll[i] = 0;
>  }
> @@ -2073,7 +2085,7 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
>  }
>  
> -static void intel_c10_pll_program(struct drm_i915_private *i915,
> +static void intel_c10_pll_program(struct intel_display *display,
>  				  const struct intel_crtc_state *crtc_state,
>  				  struct intel_encoder *encoder)
>  {
> @@ -2106,7 +2118,7 @@ static void intel_c10_pll_program(struct drm_i915_private *i915,
>  		      MB_WRITE_COMMITTED);
>  }
>  
> -static void intel_c10pll_dump_hw_state(struct drm_i915_private *i915,
> +static void intel_c10pll_dump_hw_state(struct intel_display *display,
>  				       const struct intel_c10pll_state *hw_state)
>  {
>  	bool fracen;
> @@ -2115,29 +2127,31 @@ static void intel_c10pll_dump_hw_state(struct drm_i915_private *i915,
>  	unsigned int multiplier, tx_clk_div;
>  
>  	fracen = hw_state->pll[0] & C10_PLL0_FRACEN;
> -	drm_dbg_kms(&i915->drm, "c10pll_hw_state: fracen: %s, ",
> +	drm_dbg_kms(display->drm, "c10pll_hw_state: fracen: %s, ",
>  		    str_yes_no(fracen));
>  
>  	if (fracen) {
>  		frac_quot = hw_state->pll[12] << 8 | hw_state->pll[11];
>  		frac_rem =  hw_state->pll[14] << 8 | hw_state->pll[13];
>  		frac_den =  hw_state->pll[10] << 8 | hw_state->pll[9];
> -		drm_dbg_kms(&i915->drm, "quot: %u, rem: %u, den: %u,\n",
> +		drm_dbg_kms(display->drm, "quot: %u, rem: %u, den: %u,\n",
>  			    frac_quot, frac_rem, frac_den);
>  	}
>  
>  	multiplier = (REG_FIELD_GET8(C10_PLL3_MULTIPLIERH_MASK, hw_state->pll[3]) << 8 |
>  		      hw_state->pll[2]) / 2 + 16;
>  	tx_clk_div = REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK, hw_state->pll[15]);
> -	drm_dbg_kms(&i915->drm,
> +	drm_dbg_kms(display->drm,
>  		    "multiplier: %u, tx_clk_div: %u.\n", multiplier, tx_clk_div);
>  
> -	drm_dbg_kms(&i915->drm, "c10pll_rawhw_state:");
> -	drm_dbg_kms(&i915->drm, "tx: 0x%x, cmn: 0x%x\n", hw_state->tx, hw_state->cmn);
> +	drm_dbg_kms(display->drm, "c10pll_rawhw_state:");
> +	drm_dbg_kms(display->drm, "tx: 0x%x, cmn: 0x%x\n", hw_state->tx,
> +		    hw_state->cmn);
>  
>  	BUILD_BUG_ON(ARRAY_SIZE(hw_state->pll) % 4);
>  	for (i = 0; i < ARRAY_SIZE(hw_state->pll); i = i + 4)
> -		drm_dbg_kms(&i915->drm, "pll[%d] = 0x%x, pll[%d] = 0x%x, pll[%d] = 0x%x, pll[%d] = 0x%x\n",
> +		drm_dbg_kms(display->drm,
> +			    "pll[%d] = 0x%x, pll[%d] = 0x%x, pll[%d] = 0x%x, pll[%d] = 0x%x\n",
>  			    i, hw_state->pll[i], i + 1, hw_state->pll[i + 1],
>  			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
>  }
> @@ -2239,13 +2253,13 @@ static const struct intel_c20pll_state * const *
>  intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
>  			 struct intel_encoder *encoder)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(crtc_state);
>  
>  	if (intel_crtc_has_dp_encoder(crtc_state)) {
>  		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
>  			return xe2hpd_c20_edp_tables;
>  
> -		if (DISPLAY_VER_FULL(i915) == IP_VER(14, 1))
> +		if (DISPLAY_VER_FULL(display) == IP_VER(14, 1))
>  			return xe2hpd_c20_dp_tables;
>  		else
>  			return mtl_c20_dp_tables;
> @@ -2412,33 +2426,37 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
>  }
>  
> -static void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
> +static void intel_c20pll_dump_hw_state(struct intel_display *display,
>  				       const struct intel_c20pll_state *hw_state)
>  {
>  	int i;
>  
> -	drm_dbg_kms(&i915->drm, "c20pll_hw_state:\n");
> -	drm_dbg_kms(&i915->drm, "tx[0] = 0x%.4x, tx[1] = 0x%.4x, tx[2] = 0x%.4x\n",
> +	drm_dbg_kms(display->drm, "c20pll_hw_state:\n");
> +	drm_dbg_kms(display->drm,
> +		    "tx[0] = 0x%.4x, tx[1] = 0x%.4x, tx[2] = 0x%.4x\n",
>  		    hw_state->tx[0], hw_state->tx[1], hw_state->tx[2]);
> -	drm_dbg_kms(&i915->drm, "cmn[0] = 0x%.4x, cmn[1] = 0x%.4x, cmn[2] = 0x%.4x, cmn[3] = 0x%.4x\n",
> +	drm_dbg_kms(display->drm,
> +		    "cmn[0] = 0x%.4x, cmn[1] = 0x%.4x, cmn[2] = 0x%.4x, cmn[3] = 0x%.4x\n",
>  		    hw_state->cmn[0], hw_state->cmn[1], hw_state->cmn[2], hw_state->cmn[3]);
>  
>  	if (intel_c20phy_use_mpllb(hw_state)) {
>  		for (i = 0; i < ARRAY_SIZE(hw_state->mpllb); i++)
> -			drm_dbg_kms(&i915->drm, "mpllb[%d] = 0x%.4x\n", i, hw_state->mpllb[i]);
> +			drm_dbg_kms(display->drm, "mpllb[%d] = 0x%.4x\n", i,
> +				    hw_state->mpllb[i]);
>  	} else {
>  		for (i = 0; i < ARRAY_SIZE(hw_state->mplla); i++)
> -			drm_dbg_kms(&i915->drm, "mplla[%d] = 0x%.4x\n", i, hw_state->mplla[i]);
> +			drm_dbg_kms(display->drm, "mplla[%d] = 0x%.4x\n", i,
> +				    hw_state->mplla[i]);
>  	}
>  }
>  
> -void intel_cx0pll_dump_hw_state(struct drm_i915_private *i915,
> +void intel_cx0pll_dump_hw_state(struct intel_display *display,
>  				const struct intel_cx0pll_state *hw_state)
>  {
>  	if (hw_state->use_c10)
> -		intel_c10pll_dump_hw_state(i915, &hw_state->c10);
> +		intel_c10pll_dump_hw_state(display, &hw_state->c10);
>  	else
> -		intel_c20pll_dump_hw_state(i915, &hw_state->c20);
> +		intel_c20pll_dump_hw_state(display, &hw_state->c20);
>  }
>  
>  static u8 intel_c20_get_dp_rate(u32 clock)
> @@ -2538,7 +2556,7 @@ static int intel_get_c20_custom_width(u32 clock, bool dp)
>  		return 0;
>  }
>  
> -static void intel_c20_pll_program(struct drm_i915_private *i915,
> +static void intel_c20_pll_program(struct intel_display *display,
>  				  const struct intel_crtc_state *crtc_state,
>  				  struct intel_encoder *encoder)
>  {
> @@ -2571,11 +2589,11 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
>  	for (i = 0; i < ARRAY_SIZE(pll_state->tx); i++) {
>  		if (cntx)
>  			intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
> -					     PHY_C20_A_TX_CNTX_CFG(i915, i),
> +					     PHY_C20_A_TX_CNTX_CFG(display, i),
>  					     pll_state->tx[i]);
>  		else
>  			intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
> -					     PHY_C20_B_TX_CNTX_CFG(i915, i),
> +					     PHY_C20_B_TX_CNTX_CFG(display, i),
>  					     pll_state->tx[i]);
>  	}
>  
> @@ -2583,11 +2601,11 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
>  	for (i = 0; i < ARRAY_SIZE(pll_state->cmn); i++) {
>  		if (cntx)
>  			intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
> -					     PHY_C20_A_CMN_CNTX_CFG(i915, i),
> +					     PHY_C20_A_CMN_CNTX_CFG(display, i),
>  					     pll_state->cmn[i]);
>  		else
>  			intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
> -					     PHY_C20_B_CMN_CNTX_CFG(i915, i),
> +					     PHY_C20_B_CMN_CNTX_CFG(display, i),
>  					     pll_state->cmn[i]);
>  	}
>  
> @@ -2596,22 +2614,22 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
>  		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
>  			if (cntx)
>  				intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
> -						     PHY_C20_A_MPLLB_CNTX_CFG(i915, i),
> +						     PHY_C20_A_MPLLB_CNTX_CFG(display, i),
>  						     pll_state->mpllb[i]);
>  			else
>  				intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
> -						     PHY_C20_B_MPLLB_CNTX_CFG(i915, i),
> +						     PHY_C20_B_MPLLB_CNTX_CFG(display, i),
>  						     pll_state->mpllb[i]);
>  		}
>  	} else {
>  		for (i = 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
>  			if (cntx)
>  				intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
> -						     PHY_C20_A_MPLLA_CNTX_CFG(i915, i),
> +						     PHY_C20_A_MPLLA_CNTX_CFG(display, i),
>  						     pll_state->mplla[i]);
>  			else
>  				intel_c20_sram_write(encoder, INTEL_CX0_LANE0,
> -						     PHY_C20_B_MPLLA_CNTX_CFG(i915, i),
> +						     PHY_C20_B_MPLLA_CNTX_CFG(display, i),
>  						     pll_state->mplla[i]);
>  		}
>  	}
> @@ -2678,10 +2696,10 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>  					 const struct intel_crtc_state *crtc_state,
>  					 bool lane_reversal)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	u32 val = 0;
>  
> -	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(i915, encoder->port),
> +	intel_de_rmw(display, XELPDP_PORT_BUF_CTL1(display, encoder->port),
>  		     XELPDP_PORT_REVERSAL,
>  		     lane_reversal ? XELPDP_PORT_REVERSAL : 0);
>  
> @@ -2703,7 +2721,7 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>  	else
>  		val |= crtc_state->dpll_hw_state.cx0pll.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
>  
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
> +	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
>  		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
>  		     XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_SSC_ENABLE_PLLA |
>  		     XELPDP_SSC_ENABLE_PLLB, val);
> @@ -2734,48 +2752,49 @@ static u32 intel_cx0_get_powerdown_state(u8 lane_mask, u8 state)
>  static void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
>  						u8 lane_mask, u8 state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	enum port port = encoder->port;
>  	enum phy phy = intel_encoder_to_phy(encoder);
> -	i915_reg_t buf_ctl2_reg = XELPDP_PORT_BUF_CTL2(i915, port);
> +	i915_reg_t buf_ctl2_reg = XELPDP_PORT_BUF_CTL2(display, port);
>  	int lane;
>  
> -	intel_de_rmw(i915, buf_ctl2_reg,
> +	intel_de_rmw(display, buf_ctl2_reg,
>  		     intel_cx0_get_powerdown_state(INTEL_CX0_BOTH_LANES, XELPDP_LANE_POWERDOWN_NEW_STATE_MASK),
>  		     intel_cx0_get_powerdown_state(lane_mask, state));
>  
>  	/* Wait for pending transactions.*/
>  	for_each_cx0_lane_in_mask(lane_mask, lane)
> -		if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
> +		if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
>  					    XELPDP_PORT_M2P_TRANSACTION_PENDING,
>  					    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
> -			drm_dbg_kms(&i915->drm,
> +			drm_dbg_kms(display->drm,
>  				    "PHY %c Timeout waiting for previous transaction to complete. Reset the bus.\n",
>  				    phy_name(phy));
>  			intel_cx0_bus_reset(encoder, lane);
>  		}
>  
> -	intel_de_rmw(i915, buf_ctl2_reg,
> +	intel_de_rmw(display, buf_ctl2_reg,
>  		     intel_cx0_get_powerdown_update(INTEL_CX0_BOTH_LANES),
>  		     intel_cx0_get_powerdown_update(lane_mask));
>  
>  	/* Update Timeout Value */
> -	if (intel_de_wait_custom(i915, buf_ctl2_reg,
> +	if (intel_de_wait_custom(display, buf_ctl2_reg,
>  				 intel_cx0_get_powerdown_update(lane_mask), 0,
>  				 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 0, NULL))
> -		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
> +		drm_warn(display->drm,
> +			 "PHY %c failed to bring out of Lane reset after %dus.\n",
>  			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
>  }
>  
>  static void intel_cx0_setup_powerdown(struct intel_encoder *encoder)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	enum port port = encoder->port;
>  
> -	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(i915, port),
> +	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
>  		     XELPDP_POWER_STATE_READY_MASK,
>  		     XELPDP_POWER_STATE_READY(CX0_P2_STATE_READY));
> -	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL3(i915, port),
> +	intel_de_rmw(display, XELPDP_PORT_BUF_CTL3(display, port),
>  		     XELPDP_POWER_STATE_ACTIVE_MASK |
>  		     XELPDP_PLL_LANE_STAGGERING_DELAY_MASK,
>  		     XELPDP_POWER_STATE_ACTIVE(CX0_P0_STATE_ACTIVE) |
> @@ -2807,7 +2826,7 @@ static u32 intel_cx0_get_pclk_refclk_ack(u8 lane_mask)
>  static void intel_cx0_phy_lane_reset(struct intel_encoder *encoder,
>  				     bool lane_reversal)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	enum port port = encoder->port;
>  	enum phy phy = intel_encoder_to_phy(encoder);
>  	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
> @@ -2820,48 +2839,51 @@ static void intel_cx0_phy_lane_reset(struct intel_encoder *encoder,
>  					   XELPDP_LANE_PHY_CURRENT_STATUS(1))
>  					: XELPDP_LANE_PHY_CURRENT_STATUS(0);
>  
> -	if (intel_de_wait_custom(i915, XELPDP_PORT_BUF_CTL1(i915, port),
> +	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL1(display, port),
>  				 XELPDP_PORT_BUF_SOC_PHY_READY,
>  				 XELPDP_PORT_BUF_SOC_PHY_READY,
>  				 XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US, 0, NULL))
> -		drm_warn(&i915->drm, "PHY %c failed to bring out of SOC reset after %dus.\n",
> +		drm_warn(display->drm,
> +			 "PHY %c failed to bring out of SOC reset after %dus.\n",
>  			 phy_name(phy), XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US);
>  
> -	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(i915, port), lane_pipe_reset,
> +	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port), lane_pipe_reset,
>  		     lane_pipe_reset);
>  
> -	if (intel_de_wait_custom(i915, XELPDP_PORT_BUF_CTL2(i915, port),
> +	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
>  				 lane_phy_current_status, lane_phy_current_status,
>  				 XELPDP_PORT_RESET_START_TIMEOUT_US, 0, NULL))
> -		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
> +		drm_warn(display->drm,
> +			 "PHY %c failed to bring out of Lane reset after %dus.\n",
>  			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
>  
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, port),
> +	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
>  		     intel_cx0_get_pclk_refclk_request(owned_lane_mask),
>  		     intel_cx0_get_pclk_refclk_request(lane_mask));
>  
> -	if (intel_de_wait_custom(i915, XELPDP_PORT_CLOCK_CTL(i915, port),
> +	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
>  				 intel_cx0_get_pclk_refclk_ack(owned_lane_mask),
>  				 intel_cx0_get_pclk_refclk_ack(lane_mask),
>  				 XELPDP_REFCLK_ENABLE_TIMEOUT_US, 0, NULL))
> -		drm_warn(&i915->drm, "PHY %c failed to request refclk after %dus.\n",
> +		drm_warn(display->drm,
> +			 "PHY %c failed to request refclk after %dus.\n",
>  			 phy_name(phy), XELPDP_REFCLK_ENABLE_TIMEOUT_US);
>  
>  	intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
>  					    CX0_P2_STATE_RESET);
>  	intel_cx0_setup_powerdown(encoder);
>  
> -	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(i915, port), lane_pipe_reset, 0);
> +	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port), lane_pipe_reset, 0);
>  
> -	if (intel_de_wait_for_clear(i915, XELPDP_PORT_BUF_CTL2(i915, port),
> +	if (intel_de_wait_for_clear(display, XELPDP_PORT_BUF_CTL2(display, port),
>  				    lane_phy_current_status,
>  				    XELPDP_PORT_RESET_END_TIMEOUT))
> -		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dms.\n",
> +		drm_warn(display->drm,
> +			 "PHY %c failed to bring out of Lane reset after %dms.\n",
>  			 phy_name(phy), XELPDP_PORT_RESET_END_TIMEOUT);
>  }
>  
> -static void intel_cx0_program_phy_lane(struct drm_i915_private *i915,
> -				       struct intel_encoder *encoder, int lane_count,
> +static void intel_cx0_program_phy_lane(struct intel_encoder *encoder, int lane_count,
>  				       bool lane_reversal)
>  {
>  	int i;
> @@ -2930,7 +2952,7 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane_mask)
>  static void intel_cx0pll_enable(struct intel_encoder *encoder,
>  				const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	enum phy phy = intel_encoder_to_phy(encoder);
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
> @@ -2962,15 +2984,15 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
>  
>  	/* 5. Program PHY internal PLL internal registers. */
>  	if (intel_encoder_is_c10phy(encoder))
> -		intel_c10_pll_program(i915, crtc_state, encoder);
> +		intel_c10_pll_program(display, crtc_state, encoder);
>  	else
> -		intel_c20_pll_program(i915, crtc_state, encoder);
> +		intel_c20_pll_program(display, crtc_state, encoder);
>  
>  	/*
>  	 * 6. Program the enabled and disabled owned PHY lane
>  	 * transmitters over message bus
>  	 */
> -	intel_cx0_program_phy_lane(i915, encoder, crtc_state->lane_count, lane_reversal);
> +	intel_cx0_program_phy_lane(encoder, crtc_state->lane_count, lane_reversal);
>  
>  	/*
>  	 * 7. Follow the Display Voltage Frequency Switching - Sequence
> @@ -2981,23 +3003,23 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
>  	 * 8. Program DDI_CLK_VALFREQ to match intended DDI
>  	 * clock frequency.
>  	 */
> -	intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port),
> +	intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
>  		       crtc_state->port_clock);
>  
>  	/*
>  	 * 9. Set PORT_CLOCK_CTL register PCLK PLL Request
>  	 * LN<Lane for maxPCLK> to "1" to enable PLL.
>  	 */
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
> +	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
>  		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES),
>  		     intel_cx0_get_pclk_pll_request(maxpclk_lane));
>  
>  	/* 10. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> == "1". */
> -	if (intel_de_wait_custom(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
> +	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
>  				 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),
>  				 intel_cx0_get_pclk_pll_ack(maxpclk_lane),
>  				 XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, 0, NULL))
> -		drm_warn(&i915->drm, "Port %c PLL not locked after %dus.\n",
> +		drm_warn(display->drm, "Port %c PLL not locked after %dus.\n",
>  			 phy_name(phy), XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US);
>  
>  	/*
> @@ -3011,15 +3033,16 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
>  
>  int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	u32 clock;
> -	u32 val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port));
> +	struct intel_display *display = to_intel_display(encoder);
> +	u32 clock, val;
> +
> +	val = intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port));
>  
>  	clock = REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
>  
> -	drm_WARN_ON(&i915->drm, !(val & XELPDP_FORWARD_CLOCK_UNGATE));
> -	drm_WARN_ON(&i915->drm, !(val & XELPDP_TBT_CLOCK_REQUEST));
> -	drm_WARN_ON(&i915->drm, !(val & XELPDP_TBT_CLOCK_ACK));
> +	drm_WARN_ON(display->drm, !(val & XELPDP_FORWARD_CLOCK_UNGATE));
> +	drm_WARN_ON(display->drm, !(val & XELPDP_TBT_CLOCK_REQUEST));
> +	drm_WARN_ON(display->drm, !(val & XELPDP_TBT_CLOCK_ACK));
>  
>  	switch (clock) {
>  	case XELPDP_DDI_CLOCK_SELECT_TBT_162:
> @@ -3036,7 +3059,7 @@ int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder)
>  	}
>  }
>  
> -static int intel_mtl_tbt_clock_select(struct drm_i915_private *i915, int clock)
> +static int intel_mtl_tbt_clock_select(int clock)
>  {
>  	switch (clock) {
>  	case 162000:
> @@ -3056,7 +3079,7 @@ static int intel_mtl_tbt_clock_select(struct drm_i915_private *i915, int clock)
>  static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
>  				     const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	enum phy phy = intel_encoder_to_phy(encoder);
>  	u32 val = 0;
>  
> @@ -3064,13 +3087,13 @@ static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
>  	 * 1. Program PORT_CLOCK_CTL REGISTER to configure
>  	 * clock muxes, gating and SSC
>  	 */
> -	val |= XELPDP_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_select(i915, crtc_state->port_clock));
> +	val |= XELPDP_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_select(crtc_state->port_clock));
>  	val |= XELPDP_FORWARD_CLOCK_UNGATE;
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
> +	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
>  		     XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_FORWARD_CLOCK_UNGATE, val);
>  
>  	/* 2. Read back PORT_CLOCK_CTL REGISTER */
> -	val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port));
> +	val = intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port));
>  
>  	/*
>  	 * 3. Follow the Display Voltage Frequency Switching - Sequence
> @@ -3081,14 +3104,15 @@ static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
>  	 * 4. Set PORT_CLOCK_CTL register TBT CLOCK Request to "1" to enable PLL.
>  	 */
>  	val |= XELPDP_TBT_CLOCK_REQUEST;
> -	intel_de_write(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port), val);
> +	intel_de_write(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port), val);
>  
>  	/* 5. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "1". */
> -	if (intel_de_wait_custom(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
> +	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
>  				 XELPDP_TBT_CLOCK_ACK,
>  				 XELPDP_TBT_CLOCK_ACK,
>  				 100, 0, NULL))
> -		drm_warn(&i915->drm, "[ENCODER:%d:%s][%c] PHY PLL not locked after 100us.\n",
> +		drm_warn(display->drm,
> +			 "[ENCODER:%d:%s][%c] PHY PLL not locked after 100us.\n",
>  			 encoder->base.base.id, encoder->base.name, phy_name(phy));
>  
>  	/*
> @@ -3100,7 +3124,7 @@ static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
>  	 * 7. Program DDI_CLK_VALFREQ to match intended DDI
>  	 * clock frequency.
>  	 */
> -	intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port),
> +	intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
>  		       crtc_state->port_clock);
>  }
>  
> @@ -3130,7 +3154,7 @@ static u8 cx0_power_control_disable_val(struct intel_encoder *encoder)
>  
>  static void intel_cx0pll_disable(struct intel_encoder *encoder)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	enum phy phy = intel_encoder_to_phy(encoder);
>  	intel_wakeref_t wakeref = intel_cx0_phy_transaction_begin(encoder);
>  
> @@ -3147,21 +3171,22 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
>  	 * 3. Set PORT_CLOCK_CTL register PCLK PLL Request LN<Lane for maxPCLK>
>  	 * to "0" to disable PLL.
>  	 */
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
> +	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
>  		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES) |
>  		     intel_cx0_get_pclk_refclk_request(INTEL_CX0_BOTH_LANES), 0);
>  
>  	/* 4. Program DDI_CLK_VALFREQ to 0. */
> -	intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port), 0);
> +	intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), 0);
>  
>  	/*
>  	 * 5. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK**> == "0".
>  	 */
> -	if (intel_de_wait_custom(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
> +	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
>  				 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES) |
>  				 intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES), 0,
>  				 XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US, 0, NULL))
> -		drm_warn(&i915->drm, "Port %c PLL not unlocked after %dus.\n",
> +		drm_warn(display->drm,
> +			 "Port %c PLL not unlocked after %dus.\n",
>  			 phy_name(phy), XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US);
>  
>  	/*
> @@ -3170,9 +3195,9 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
>  	 */
>  
>  	/* 7. Program PORT_CLOCK_CTL register to disable and gate clocks. */
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
> +	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
>  		     XELPDP_DDI_CLOCK_SELECT_MASK, 0);
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
> +	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
>  		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
>  
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
> @@ -3180,7 +3205,7 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
>  
>  static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	enum phy phy = intel_encoder_to_phy(encoder);
>  
>  	/*
> @@ -3191,13 +3216,14 @@ static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
>  	/*
>  	 * 2. Set PORT_CLOCK_CTL register TBT CLOCK Request to "0" to disable PLL.
>  	 */
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
> +	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
>  		     XELPDP_TBT_CLOCK_REQUEST, 0);
>  
>  	/* 3. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "0". */
> -	if (intel_de_wait_custom(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
> +	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
>  				 XELPDP_TBT_CLOCK_ACK, 0, 10, 0, NULL))
> -		drm_warn(&i915->drm, "[ENCODER:%d:%s][%c] PHY PLL not unlocked after 10us.\n",
> +		drm_warn(display->drm,
> +			 "[ENCODER:%d:%s][%c] PHY PLL not unlocked after 10us.\n",
>  			 encoder->base.base.id, encoder->base.name, phy_name(phy));
>  
>  	/*
> @@ -3208,12 +3234,12 @@ static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
>  	/*
>  	 * 5. Program PORT CLOCK CTRL register to disable and gate clocks
>  	 */
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
> +	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
>  		     XELPDP_DDI_CLOCK_SELECT_MASK |
>  		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
>  
>  	/* 6. Program DDI_CLK_VALFREQ to 0. */
> -	intel_de_write(i915, DDI_CLK_VALFREQ(encoder->port), 0);
> +	intel_de_write(display, DDI_CLK_VALFREQ(encoder->port), 0);
>  }
>  
>  void intel_mtl_pll_disable(struct intel_encoder *encoder)
> @@ -3230,13 +3256,15 @@ enum icl_port_dpll_id
>  intel_mtl_port_pll_type(struct intel_encoder *encoder,
>  			const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
> +	u32 val, clock;
> +
>  	/*
>  	 * TODO: Determine the PLL type from the SW state, once MTL PLL
>  	 * handling is done via the standard shared DPLL framework.
>  	 */
> -	u32 val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port));
> -	u32 clock = REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
> +	val = intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port));
> +	clock = REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
>  
>  	if (clock == XELPDP_DDI_CLOCK_SELECT_MAXPCLK ||
>  	    clock == XELPDP_DDI_CLOCK_SELECT_DIV18CLK)
> @@ -3408,13 +3436,13 @@ static void intel_c20pll_state_verify(const struct intel_crtc_state *state,
>  void intel_cx0pll_state_verify(struct intel_atomic_state *state,
>  			       struct intel_crtc *crtc)
>  {
> -	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	struct intel_display *display = to_intel_display(state);
>  	const struct intel_crtc_state *new_crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	struct intel_encoder *encoder;
>  	struct intel_cx0pll_state mpll_hw_state = {};
>  
> -	if (DISPLAY_VER(i915) < 14)
> +	if (DISPLAY_VER(display) < 14)
>  		return;
>  
>  	if (!new_crtc_state->hw.active)
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 9004b99bb51f..711168882684 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -7,17 +7,15 @@
>  #define __INTEL_CX0_PHY_H__
>  
>  #include <linux/types.h>
> -#include <linux/bitfield.h>
> -#include <linux/bits.h>

I believe this deserves a separate patch, no?!

>  
>  enum icl_port_dpll_id;
> -struct drm_i915_private;
>  struct intel_atomic_state;
>  struct intel_c10pll_state;
>  struct intel_c20pll_state;
> -struct intel_cx0pll_state;
>  struct intel_crtc;
>  struct intel_crtc_state;
> +struct intel_cx0pll_state;
> +struct intel_display;
>  struct intel_encoder;
>  struct intel_hdmi;
>  
> @@ -35,7 +33,7 @@ void intel_cx0pll_readout_hw_state(struct intel_encoder *encoder,
>  int intel_cx0pll_calc_port_clock(struct intel_encoder *encoder,
>  				 const struct intel_cx0pll_state *pll_state);
>  
> -void intel_cx0pll_dump_hw_state(struct drm_i915_private *dev_priv,
> +void intel_cx0pll_dump_hw_state(struct intel_display *display,
>  				const struct intel_cx0pll_state *hw_state);
>  void intel_cx0pll_state_verify(struct intel_atomic_state *state,
>  			       struct intel_crtc *crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index ef1436146325..c19f01b63936 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5305,15 +5305,15 @@ pipe_config_cx0pll_mismatch(struct drm_printer *p, bool fastset,
>  			    const struct intel_cx0pll_state *a,
>  			    const struct intel_cx0pll_state *b)
>  {
> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	struct intel_display *display = to_intel_display(crtc);
>  	char *chipname = a->use_c10 ? "C10" : "C20";
>  
>  	pipe_config_mismatch(p, fastset, crtc, name, chipname);
>  
>  	drm_printf(p, "expected:\n");
> -	intel_cx0pll_dump_hw_state(i915, a);
> +	intel_cx0pll_dump_hw_state(display, a);
>  	drm_printf(p, "found:\n");
> -	intel_cx0pll_dump_hw_state(i915, b);
> +	intel_cx0pll_dump_hw_state(display, b);
>  }
>  
>  bool
> -- 
> 2.39.5
> 
