Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44467ADBB6D
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jun 2025 22:45:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9360C10E442;
	Mon, 16 Jun 2025 20:45:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TXDwTsNG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5FF210E442;
 Mon, 16 Jun 2025 20:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750106701; x=1781642701;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+CKbI4YFKTjbUcmoSSfy/VNjj90PFgtxNFn/FCwr/Lk=;
 b=TXDwTsNGqAJrb9Xw720rTKVvNzK2B5y7KOT6xq8vVBHQ77hLG902582I
 4cnJ5agi/cUGdN6u1wkO3aT/+Hcu9gR78xwl1QTLgRkIo4t44zK5RfOwr
 lLKNu34RaObWZmYfrFdfd2vioyCHwCVDV7KwPMHP7al+IMg/bPDojxzOh
 57hvOUtRDsf+BSslZg/f/JTfc0nLt+Ww5oX1cTEShS4zPPySs7v7lA6rw
 nDDk+LZcMsfB3gDyGYmnkcX+lu55PYFRtY/mT9Q/r7qy39B5/dVPwEoQc
 6ODZqWAuJr+gUXAdd9TJHH6yDBJfKttPUNBt0pe13QE8zobwiCiSjeXYa g==;
X-CSE-ConnectionGUID: U6ArjrDqQ3mH9dTwn0c0XQ==
X-CSE-MsgGUID: hfSm9R9oReeBkegB4qEAkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="63612739"
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="63612739"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 13:45:01 -0700
X-CSE-ConnectionGUID: oiELYKEfQu2jz0ZbmiKcLA==
X-CSE-MsgGUID: jlBsZ5YeS1m7CtR9vfrmTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="153453452"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 13:45:00 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 13:44:59 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 16 Jun 2025 13:44:59 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.58)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 13:44:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZctA8VnTAqgF7zR97uiPKbSfgxUUQ81IG9+rPfp2IlEHZfhIpKLe0Z59Im5Yjpo3XiXkxglBFY6yNedyaZrDc9quXojqMsANrsOxkH+0KgoZrC+UjsaZTv5crwLw/r+VwYxsw1vCrbyjmhbQDiL5eFy/Sd88y7L1Up/ufh6gGOo+W35fkfwMtiTYh/OPz60+55rBnBzrZ91gWiH8g84JJQgqAbGy46NlelrOz/Qh5YtKIh1ow79dhTU00V33U6pdGBJwv0XMDfzYx2Ijj4hxJ+AZ2IColzoa9syvWPn3E/X7I8zJRRtijEAb9UK5PmS+bUCGqj3efqv1jFEbJnHyAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z4tr7Y3V8DtLtSefkgp3DNvsl6hOVEDyh04pHgs/0o4=;
 b=IOJ7+sUqhcSvgK5TOanRXEQk7GYSAER2wOQL1E3N7/ysEJs8qwxXhzKnLGUo8Fw943Bm1G7QEQsMeAm3wRqbiENELmJ88uHUl/oA5cSBpXxOBCWCfJYave9kAOf6fWVbgtAAB+sElUVzB0hLV6VTxW4iY1X0+j8ts+SMm5ui0RuKpRMaCKXFjWCHVZnLfKYgsq6RVJLSCTir13BCKZxM9iGwebLlYWAPqM9smQ3DzIl1Ulu7NDypIGDvJ0rXDLOrlzF7YYRlAQkejp5gS86/9ZjeDjIsMfnyo9VbMvkiVSrVX7dN1AYoYlef+erwxbjiBoEZSj9Jn+nebLtjN4JWmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by CO1PR11MB4834.namprd11.prod.outlook.com (2603:10b6:303:90::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.29; Mon, 16 Jun
 2025 20:44:55 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%6]) with mapi id 15.20.8835.027; Mon, 16 Jun 2025
 20:44:55 +0000
Date: Mon, 16 Jun 2025 16:44:52 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 3/6] drm/xe/pcode: add struct drm_device based interface
Message-ID: <aFCCRKolGMjo9p04@intel.com>
References: <cover.1749119274.git.jani.nikula@intel.com>
 <d121307f4b50473cf0fbba8f8859c72de5f6fceb.1749119274.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <d121307f4b50473cf0fbba8f8859c72de5f6fceb.1749119274.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0066.namprd05.prod.outlook.com
 (2603:10b6:a03:332::11) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|CO1PR11MB4834:EE_
X-MS-Office365-Filtering-Correlation-Id: 5ceef764-2318-4329-1d9c-08ddad16a6a7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?/RDRH5H+dKgBvQdbVYTndvnmu5NblEck+jRXc6atMTKMLiP6wERzsXTF7M+z?=
 =?us-ascii?Q?bd3HRxz8fctjNqDADdKHNRCQvPrSC0Sv+vy0B+mzhCHMqsN89kxia9FB5bF3?=
 =?us-ascii?Q?Dm6fp2IMpoDcZeSjVxtrSO1rsQswhtLKWJ+88O0fZCdVGZFKIzQ3YKqezzX6?=
 =?us-ascii?Q?+czpFY7V0yLUMadr9oSHKQnTK3IhQLjUZyJiVnYIrjdjdnkcuWK9SK2d5blg?=
 =?us-ascii?Q?sDM0cTV+YPvEgnuktcuCzSuFRTeGqemWatSV5AMztb/OuwaZRDfSBAn9wvXx?=
 =?us-ascii?Q?vA4oY1jxY9eWfjdt+ExauMjP4oWY8GSahGbXYlc4xYLaFKCrIukFfY+5Kuia?=
 =?us-ascii?Q?yGH1OwE2bT2zNtfFYsl1AyLBYZgR+B31FdZfoITjvoRBdrRb6O9I76Zx9TEe?=
 =?us-ascii?Q?zHSkX0jNNXl3/l7XpEuNMuO9H8iEDIAz/zh0QQt6iA78FMfUsnbQHQIgyqLZ?=
 =?us-ascii?Q?OohPdKHqC7wJepkNPOQAL7ZDx6XHsaOYULl20MvzSL2XwiX0uVGcPKmRLOD7?=
 =?us-ascii?Q?VhFPFwNIrle5Mimr6zba5tCVwYYRUX2A300NvNng89A6+GIZIfuWw4pHe3la?=
 =?us-ascii?Q?k+n3DZnvFbEyWSul3G/ZpsFr0MUURMq1RjpZTIq3DwHq+Rhe41PD1zHVkfru?=
 =?us-ascii?Q?iVa9x8p+6lTNXPiIVlaIHgacNu4DlAyezVUbgA3I2B2L81PnzvXsYIafTbU9?=
 =?us-ascii?Q?1zO1EPHt/uHfBBTw7MYIq1J9CVm+Sg7BzLVVlnKbSKMuVBxSNEw1P00niB34?=
 =?us-ascii?Q?W2RZXpYNEONzPLJqCNbLbBJ6x906D88yqZKmSGc8kHyIkL7iFUZEPy/qEkD2?=
 =?us-ascii?Q?kjqbEHFsGcBONL67tCSyFK/okHN8sidmZH9Nv5rNiAQPaU75lG3NfTice6y/?=
 =?us-ascii?Q?rPfwn+JPpn2Vpd7ZsLC9u/VKCbvNUXBeI8limaSIQjIeGxrb0N2CvJk1olF6?=
 =?us-ascii?Q?zI5V07kKapnxKyVM+Nzyt7HRWRmKSEJsDzwCY0/nGKEtkaybnTdsGtR8hvHy?=
 =?us-ascii?Q?e7YqSXddMW/5DG/q67MG/csqqqGtLaLntmB6p0GwasrfJe12AnEZwd5HYVA0?=
 =?us-ascii?Q?k1KHo/xP9sIiNFxpXvRZTRzRWMftRvvdr60exBzcBVkO5oEgnkfBiStZH1IV?=
 =?us-ascii?Q?nC9OlZ5TH8xsNs4S23e7CL4uUgOFmn+V/AiefsRUWedvD81ayKANyQt09ogj?=
 =?us-ascii?Q?T9kZCZ/mkLb7nNH/z7OfQEsVj85hBGUhhxNWTQS53EqoNOUf3TDnH0j6WinU?=
 =?us-ascii?Q?qQHYxpu5R2yeHUsj81qRbIWxiqj2mUyFC8v+PIFSoAVmktOMiE6pCVyZGpz5?=
 =?us-ascii?Q?3iNC69AfDMxOaURybk8va38dljafiiFxVBmElzx1p0egJZ1r7htL0OM81Ghg?=
 =?us-ascii?Q?//tK+HfYTm4G/XJMFYzGg1O5jCELs7SgEp0EB9XwAs9mRyvTyRHGZv23zc5/?=
 =?us-ascii?Q?GgKpAza4U80=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ca7MxqtHhyZOjZRT95qRxEjwmWg9DNun5BaIYU2WxYp5j0ZEqi0CtuHocgbB?=
 =?us-ascii?Q?WNAqizBUiYLmRWsWqdCRKY6NnpcaAfk4nodAYpyHWqEpuHQL6Tpd0amG4lv/?=
 =?us-ascii?Q?THcJ4jP1JBnvRrpGzLwIY9mBWC0lQe9X8j3zRfm8aS3B8LdTHm2alKigOPEL?=
 =?us-ascii?Q?b8l8jXqw8FjsU9edHbY6HY3wgEVLGNw5AK/F2A5+ZBRjr2NAk4pNMb8v2G9y?=
 =?us-ascii?Q?BWeOomANtRgOOsod1Sk86xVTPeTR8r4rD8zHk4ma9LfvIefm1a+ebNFPZulI?=
 =?us-ascii?Q?ROHdUHzi+W9CldvCdPI0vUQpNJ6Bv19bDsIAHYLHk/DvCWc7PrsrDNV83zAP?=
 =?us-ascii?Q?HciSTf5kL7xO4VfWm9ZUMcJKfz/H9C+SDw6iRf+jyiN5ZeZHjQZ/kvB8WSue?=
 =?us-ascii?Q?mC04gFAjIO0+JktW/mEM5ll27LMF5CW+odND7miqriCCCA/HJzmgo4Be17iB?=
 =?us-ascii?Q?/uhmHY8+318q2zRub5Tjo29ckWI8/6urdjxpjtVNM+xFFBNIh8Frgmo2/uw4?=
 =?us-ascii?Q?6GUlCtums9vnI2u3yc6YLD/9t8jb8qh0Wvu3K4YslgBb5DFwz9rWNJTtARD+?=
 =?us-ascii?Q?HEwBV22p78ZR5CYGvCLPgwtIK2CdvWmFeLaWBt9LhOZpFyYIUXPPRHKaI6Yg?=
 =?us-ascii?Q?sk78B+PI2BOae8Ii8yqRNHsP9dRIELuwlW9WalRgl08iawFaLlhKHxMH7wry?=
 =?us-ascii?Q?03gsBwWeNkx/4dxBq3TgMQlBVg+il2DIMvtuX2ytq6YnRw/zARQtb1Itr+NB?=
 =?us-ascii?Q?LAoKXeu4Tyx+hKpJod9udEKnrRL3XTG7aWcLSfEsK3rg7q9RqWadR09oULxv?=
 =?us-ascii?Q?Qpv0CmFf65s+wbDvlERZrI6HcS26ksUHnfBGQ9aBER5eKsZNNbaRyodchr3a?=
 =?us-ascii?Q?09FlCRyW1mumzAKnRYngxXN6+pXkRUIySMeu4v0yJEea9cS2VHElhgc6uiJq?=
 =?us-ascii?Q?Mo0IZC0Bofwoi8nfbpNm/1jEXN1as1xQxe66aWJ7l5MZ6XMCK1yXBEDyLjL+?=
 =?us-ascii?Q?Zan6KFTqts6Hf7bKGbz245J3boZYuFpnMg9AoOmUjHdJLBshVCB17biOlWkP?=
 =?us-ascii?Q?RYnz8BBS8f0iq7nsLetD7MO6iXIbyeEmRTb0eUU5kxApnAbmSFhJ4XVhSFRT?=
 =?us-ascii?Q?gXXP1mDVjE8dw1AXXWTHmmZh+WlLn5nDTa/uhUHzYvXNAXvfewiFeYSxWkX1?=
 =?us-ascii?Q?zOxE+0pNmVyOvXDTx5QChFx2VGzRXCAJQAfL3ObxsvFdTWc4Q85o8hjdJS6U?=
 =?us-ascii?Q?4flOFnIqdggxGgop20TqOSj2Ij8O9Gj9gtZJTajdfzdN9byvcAKmXfSqzcnr?=
 =?us-ascii?Q?O9D8GmUqWRNkWjKg9UZX7hi5fZkkaykom6hOoP6rTsip6ZOiGeCPVGWE0dHT?=
 =?us-ascii?Q?Jv6HvOJpdTmyJumSvFHi2YYitRvv6EUOg1YDPNh9/S+RbdZU0XAlKHjbxaES?=
 =?us-ascii?Q?z/rmqmGo4FFLIEtXdGAuL6HjHm0Gwug3G5zX100/ef17ALhowGlYME6/CC/Z?=
 =?us-ascii?Q?uZOGxAam2Ng5OZXUtfOEzjTDBdriMmHXYnDwBE4ZhgVPaB1b+qXuWOylPXMR?=
 =?us-ascii?Q?ydskT9vhD2gf/G6BhQH4iUkKUhsRzItFwBK1iFPX41W/DP9DMjuTDTkl3XCK?=
 =?us-ascii?Q?tA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ceef764-2318-4329-1d9c-08ddad16a6a7
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2025 20:44:55.5425 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qqFjFjnRBTFaqsbZEV6d8+krApI45PP772ioBSSYbZEoipE63c3B712c5aIeYK4PmKoqVxFZWuhiziYb+J+UyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4834
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

On Thu, Jun 05, 2025 at 01:29:35PM +0300, Jani Nikula wrote:
> In preparation for dropping the dependency on struct intel_uncore or
> struct xe_tile from display code, add a struct drm_device based
> interface to pcode.

great idea!

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_pcode.c | 26 ++++++++++++++++++++++++++
>  drivers/gpu/drm/xe/xe_pcode.h | 12 +++++++++++-
>  2 files changed, 37 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_pcode.c b/drivers/gpu/drm/xe/xe_pcode.c
> index 9189117fe825..87323ad0cbbb 100644
> --- a/drivers/gpu/drm/xe/xe_pcode.c
> +++ b/drivers/gpu/drm/xe/xe_pcode.c
> @@ -336,3 +336,29 @@ int xe_pcode_probe_early(struct xe_device *xe)
>  	return xe_pcode_ready(xe, false);
>  }
>  ALLOW_ERROR_INJECTION(xe_pcode_probe_early, ERRNO); /* See xe_pci_probe */
> +
> +/* Helpers with drm device */
> +int intel_pcode_read(struct drm_device *drm, u32 mbox, u32 *val, u32 *val1)
> +{
> +	struct xe_device *xe = to_xe_device(drm);
> +	struct xe_tile *tile = xe_device_get_root_tile(xe);
> +
> +	return xe_pcode_read(tile, mbox, val, val1);
> +}
> +
> +int intel_pcode_write_timeout(struct drm_device *drm, u32 mbox, u32 val, int timeout_ms)
> +{
> +	struct xe_device *xe = to_xe_device(drm);
> +	struct xe_tile *tile = xe_device_get_root_tile(xe);
> +
> +	return xe_pcode_write_timeout(tile, mbox, val, timeout_ms);
> +}
> +
> +int intel_pcode_request(struct drm_device *drm, u32 mbox, u32 request,
> +			u32 reply_mask, u32 reply, int timeout_base_ms)
> +{
> +	struct xe_device *xe = to_xe_device(drm);
> +	struct xe_tile *tile = xe_device_get_root_tile(xe);
> +
> +	return xe_pcode_request(tile, mbox, request, reply_mask, reply, timeout_base_ms);
> +}
> diff --git a/drivers/gpu/drm/xe/xe_pcode.h b/drivers/gpu/drm/xe/xe_pcode.h
> index de38f44f3201..a5584c1c75f9 100644
> --- a/drivers/gpu/drm/xe/xe_pcode.h
> +++ b/drivers/gpu/drm/xe/xe_pcode.h
> @@ -7,8 +7,10 @@
>  #define _XE_PCODE_H_
>  
>  #include <linux/types.h>
> -struct xe_tile;
> +
> +struct drm_device;
>  struct xe_device;
> +struct xe_tile;
>  
>  void xe_pcode_init(struct xe_tile *tile);
>  int xe_pcode_probe_early(struct xe_device *xe);
> @@ -32,4 +34,12 @@ int xe_pcode_request(struct xe_tile *tile, u32 mbox, u32 request,
>  	| FIELD_PREP(PCODE_MB_PARAM1, param1)\
>  	| FIELD_PREP(PCODE_MB_PARAM2, param2))
>  
> +/* Helpers with drm device */
> +int intel_pcode_read(struct drm_device *drm, u32 mbox, u32 *val, u32 *val1);
> +int intel_pcode_write_timeout(struct drm_device *drm, u32 mbox, u32 val, int timeout_ms);
> +#define intel_pcode_write(drm, mbox, val) \
> +	intel_pcode_write_timeout((drm), (mbox), (val), 1)
> +int intel_pcode_request(struct drm_device *drm, u32 mbox, u32 request,
> +			u32 reply_mask, u32 reply, int timeout_base_ms);
> +
>  #endif
> -- 
> 2.39.5
> 
