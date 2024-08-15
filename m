Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78814953AC3
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2024 21:16:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 261BD10E455;
	Thu, 15 Aug 2024 19:16:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HSOvAeob";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64A4210E455;
 Thu, 15 Aug 2024 19:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723749399; x=1755285399;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WsknxUjCJg8Cj7CzM841kmQttxXi2SFtKsa1MGLsJ9Q=;
 b=HSOvAeobtCZaejjNmpkEd72CfmvRTKw04rhZsGfF6oDoztliI8dk+ksx
 YW6ZMINPALXr9k+CrhCr2mRZ9XmHhtRsIzWQnRJN9QIqYcUho2S0RaKCR
 AowteeFM7XEV91l4wwlZpKPfpNyUzidtk/vHz5PspgVXG5/PiVu21GS3S
 /RWEDdkftwVUjuklD1MT7DwE6f5A82BonLyQ8pLCYhl/g4KP+kihv9joh
 As1yf48fyvFhJTq988LCpcQDO6929CiBn1VvsQXTXwFXLyjINxOBrylAl
 Cwz+dZgUWSDY27pQXCG5un9L1x9Z/NxWL3LmDn3C0kCSfjMidp4lTGuyB Q==;
X-CSE-ConnectionGUID: TLnXGhdKQcmKFW1LyusU9w==
X-CSE-MsgGUID: tUPMsV9gQEq4BKTUHJnGTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11165"; a="21905415"
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="21905415"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 12:16:39 -0700
X-CSE-ConnectionGUID: whHz7tI5SlKM8VM4XZqRuw==
X-CSE-MsgGUID: zSMTNSxTSFOIf8vMZ3TdNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="59081628"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Aug 2024 12:16:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 15 Aug 2024 12:16:38 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 15 Aug 2024 12:16:38 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 15 Aug 2024 12:16:38 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 15 Aug 2024 12:16:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eRsTce/XUp0QX3v67/aAv8ialNTvG1WBIDR24Q8ZquYJKhPmdzNQPc/+P7HMsj4k55Flk/dj5B+cDZoQlulzEovzUfpiMYpm0bBvKdGMKyZuYnOBKCSx8iaki3hBC7f+cGc8IxUC8bA6xqEW1bU9wLQWd1YMlgZzHx0fy/W23n/vb2L+FzM554NsCFKtfMjlRr9vHPGMAy2arKWxxg1PgxwL+P82XHUVgX030LWMhW3L/dSLzpq5v5QGLiBJQEij5Ei576QqxvsoIF+UYnEb2pDdIyCkhRytSyX580v+5D/mUT+HTb2NJA2MKxfx4YT7z1bBwjsNUc8VPY+ymMi6ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=//lIDWtZ3bkOYEL+PwEfv6rZkYxMH11cbAJJ1fN4VCs=;
 b=ugtzZd3ZoWlR17bgzBRgZWoqXH3qRayu3cQS2bJEvvCs4ObUex39aUF2D+x1tWgCO1V8EBVfRkmVowTdj9vm+DD0/SyGbClF2MNq9tZ19WUv+FHIDbOlJN08xueF/gosPy+7idoqBVPJjUnNf1JgoAspsCHC5qtCGpA1zgH+i1ZK+yt/ZsFPGVjlCbdTcTnr43ciSVQ5JXSqqYXvBYXe9fGNKG1wlnhouKV3OlA1TX0WWIUCSffhGwmF5NhFjwa9HJ+yb8umthYLCVdD7kK3A3ezuWZsPGIUGhjRvIf3iZqxRKB+vAa3OYkyk2X+isltiMNi6lbuC6Ee2QjDuAxVfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MW4PR11MB6666.namprd11.prod.outlook.com (2603:10b6:303:1eb::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.33; Thu, 15 Aug
 2024 19:16:36 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7828.023; Thu, 15 Aug 2024
 19:16:35 +0000
Date: Thu, 15 Aug 2024 15:16:32 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 7/7] drm/i915/hti: convert to struct intel_display
Message-ID: <Zr5UELA6EwYKPvtD@intel.com>
References: <20240813164123.2674462-1-jani.nikula@intel.com>
 <20240813164123.2674462-7-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240813164123.2674462-7-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0102.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::17) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MW4PR11MB6666:EE_
X-MS-Office365-Filtering-Correlation-Id: 1cf12803-9215-4af5-120c-08dcbd5ec74b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?CVrF3gzZ3mLpTUOWogSbfooNh9/3XFGdjAxo3y4t/tH5XMy9zLe/MH6KINPN?=
 =?us-ascii?Q?+akXIS1qGbKUqFOVwvH5s//8+FKXvp3YLl5mT+YVyLn2UggJAl5yyBYm2ong?=
 =?us-ascii?Q?ZDNdFgwsBifqHFa47dXfN0n16sJv2IO/t8kvBYkzvDk7Njvypikn1JIhDeVy?=
 =?us-ascii?Q?4lPp7CPbxAaiHqqcstkEkiYmSz4a7VItJ1u02/QYFmOeRsHK3TGuD2FHisZd?=
 =?us-ascii?Q?IHij7I9TVFUnIvb2kskJ7Yzhmqey8ynJ7XvMwuUioLKlOf1rewpWl1nkUa3/?=
 =?us-ascii?Q?/X0G5fkfalzdG9rc266ujP2hXE/nOCqKYirqVY9id5xHbzpJuk5bXmT1jzap?=
 =?us-ascii?Q?DM2HRNvwpfH4o0YO3WxzWsvOSkuHmiJuoL+/glo7N6Fv5eCMcsmKitdTQ6du?=
 =?us-ascii?Q?MnYXo382pIh+54SxPXTxVMgNbSncUjJ5pvCmhkPKOzlBv4t9dBQhBO3sCW7U?=
 =?us-ascii?Q?cAwgpkzABLie3tM5oxmDxDwwvJfWo5wfbKctD0JQHwl442lu6jVa3Wz3fznz?=
 =?us-ascii?Q?/oPM1kUp9OcpwSuUZmVfNKqfz7qFum44gyndfOLicrq3/gRSIgArRfIhVdup?=
 =?us-ascii?Q?myRrmHP0AzfLYUnPgwxIwFZM36fW7YJkkGf48ZtwTSu4Ve6BvdUSOYRuqU9y?=
 =?us-ascii?Q?Zs5jnsTADekczTP6HhUQN/pnrB/vjRoy0lC4UniB0+mlLFLowIi9abCtgYhz?=
 =?us-ascii?Q?UA1rKcNqeJZxc3J9ETEnG5oqZCJOD3AITnFRHiEtZKr1XjQvcW1MCQ11x4tp?=
 =?us-ascii?Q?uw1qd55oNtkwI+kALSDfo/TGvwCv74J7/OLg+aOIcAKQE3P7LBhQVPKve1Qi?=
 =?us-ascii?Q?v2Dz1fck9L3+Ugw16roKBd179QDqo1dOXFGGh9Rrz8N6Z+dBEcZbbuKV+YA9?=
 =?us-ascii?Q?GTQFT2Ue+HxN/YulpcyyBabywjpO32dEsoxzIyCOQnZQsySodLuQB5he3iCh?=
 =?us-ascii?Q?2MBqNaSVp8P+1BP8FAOTBr5PkWQ50wg+r5Ii8voqWjCIYPpSKPbVBoSbIqmM?=
 =?us-ascii?Q?9JICKVlwkvXqWnBkbS88dYQcMVdPgqQDNoPgy0YU/FvGGu5wRAS1t+4VjiGN?=
 =?us-ascii?Q?uTysQasF0oUVaHJrWQCvwH/U5rQugXXVjz0zjhJ/Gv9VikT/dN5PUXg/gOoJ?=
 =?us-ascii?Q?dN2eGOaXOfVh5RasF2DhpCU5XmX/7lB8BpGwC3ZmIkaRupI8QnIeALRR8Bf7?=
 =?us-ascii?Q?eGUMUdpgTGEz4rT7AIfzG885tYJDAElopR9aIECUHXm5SOHwtnBIpeeCkDDd?=
 =?us-ascii?Q?0OggNQNjou9AtSsPZtHB0yYCREiTxpp/nOoACcmyIJqUKirS/e3uShaR26Mv?=
 =?us-ascii?Q?gF+1/sa3AHy+io8mlenTTvC54uesRXyRmxSr0GuYVHgRCQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Om4lZQzZmpPg4EwSO7Egj95vESJPbXIx8AlgIpJ649UCmINaK/pFPe7Bmnyb?=
 =?us-ascii?Q?dxSlYt1ccYS4GJmYVKcdAkkiQ8UCboKai4ffRlH9x+yC4yhCi/Z5Nrv8/7wd?=
 =?us-ascii?Q?gRT6vR1B8qKbVRndgCsSaw0b3N+t1hkdXIIwRptD5MfpfgbFIjmOl2disOPK?=
 =?us-ascii?Q?k3hdAtPFGmWUVJajbVSqu9lUqanV2IDo/XL6xOJL+at5OIgXhMKi029nt+lx?=
 =?us-ascii?Q?9ht07MaBDs0IhY+SgkIdygIZtw+433KYWQptBQZjRA3V17S6/kaiDIghyIQo?=
 =?us-ascii?Q?2oc+2sJjerb5eyL6ve6qlmqsEOaUeniKlKbldAL4u6H6WDqRWhAq62gzh4ve?=
 =?us-ascii?Q?882/l2pyN/MWMtKHKm/PDIgYnc3Ln8f3GiMpntB4Fq84oRwCDaD6KhSU1dbL?=
 =?us-ascii?Q?U6Ci2asbDO7ITv+xiG+e8nl/WUAVg1/AN14TaWvEA9aFjAnPHSz9UikSjMHY?=
 =?us-ascii?Q?lVJJWfjV5Z8PPaXecmuA5ysLrVnaLJyZfVaKAeJtw9G7i6ZwiZhybUBJUP7T?=
 =?us-ascii?Q?+jsB/mu3rCo9OMS5sg+8s13ClGDllI1UwZtqiavpmpJiUFZti+2/7d0FlaqK?=
 =?us-ascii?Q?igTziA1H6LeMsCMM9hqY8MoZJ/0bEz3Hk0oa3MThHut+63ZF1OIv2A/k54an?=
 =?us-ascii?Q?yvaGIRNaZonPFPgJ7sHFfXSSPCP2S+yz2sMfsyt8mUBWSsc9t1Jbay6QOTqU?=
 =?us-ascii?Q?KDAKav2NkJoUNvwOsRHIwZBO3ksRQpJqpVLe8Vu6gLog87yv1rh2iGKsN3Hj?=
 =?us-ascii?Q?RfFylL3F0HGkMinsZDwxy5oXq18C7KMss0G3ABw8YWZiKmFmD4mM2eJZBBne?=
 =?us-ascii?Q?svEXYE+EvVeATomnUe7kdoNgGefo7g1PHgeU+EnZy/+FSs12ZnYcCP7sfpNJ?=
 =?us-ascii?Q?NVEw8sf4TcNdvZB7QZgnpCsda1HHMLX4imLvPpObD4eWiRhYljcA/cF8b4Fv?=
 =?us-ascii?Q?YAc9owOeEi/7R+6TJUDx9/ddV6+eYwlCeFKtoKoY3lZDhf7plr8caNw2uhco?=
 =?us-ascii?Q?Hqh/2I8DzsBu3V4eizjxqmlMc49ZilpasRwCuiMRUPbFo9lKUb3BOqwjKwMm?=
 =?us-ascii?Q?KPcZj4Ei0NGa5BXLvhYKDp+vqwUvAeafxFe7GbFrqEKXWORT3JWcQjqj56V3?=
 =?us-ascii?Q?S8KT4H/nrLd9t0pqyUzmjOblLDk/P+4CRX96kfYcCs1MqyJlPJqGN5wyUMkx?=
 =?us-ascii?Q?rkjBI8gZ5PD7emvJoY9vpem+5CyNYhkvwnUKRsX5+wWVaex9HF85N5zfOY9J?=
 =?us-ascii?Q?ecJ4mPHgGWjERTSZMuYDcktXcdRBy8Yvz8y6zGv8yUeet2bejuPikI2dq3u2?=
 =?us-ascii?Q?to1sfFA9q/yywizNKsTLgWEAFO/1Idzz5ES8A53MrdxssFo0xLCgIn4pl2Ty?=
 =?us-ascii?Q?PKLi7TSo8dyvJ5g1VNvXXXcWcqQ1vhW2PUa4FsltTqiSoeCv7yCFmDaNQkmd?=
 =?us-ascii?Q?im9DDVveglUvBEogKbJARG4FH9OP1jy639j08MLgNFvoKK5cg4hyQxpJfePs?=
 =?us-ascii?Q?TbezaNqbAYz4SOdzostxtpH175gpfv+T+WqYw/OKZi0jjGl6WlKLAVG2QPMN?=
 =?us-ascii?Q?5F3bM557R33YL//lFCplUZtCQ1TMZFtZhea708F8?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cf12803-9215-4af5-120c-08dcbd5ec74b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2024 19:16:35.8952 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e1lMnoNw7e7uA4+JBu0MfSzXqTDscVp2OoyPLZ/WAtwXnEz6/CbGWOQF1CYpAB+lKpqWKj9TvZSPlLqxq9dD7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6666
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

On Tue, Aug 13, 2024 at 07:41:23PM +0300, Jani Nikula wrote:
> Going forward, struct intel_display shall replace struct
> drm_i915_private as the main display device data pointer type. Convert
> intel_hti.[ch] to struct intel_display.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
>  .../drm/i915/display/intel_display_driver.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  3 ++-
>  drivers/gpu/drm/i915/display/intel_hti.c      | 20 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_hti.h      |  8 ++++----
>  5 files changed, 18 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 926cf3751593..25ff3ff0ab95 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4900,7 +4900,7 @@ void intel_ddi_init(struct intel_display *display,
>  	 * driver.  In that case we should skip initializing the corresponding
>  	 * outputs.
>  	 */
> -	if (intel_hti_uses_phy(dev_priv, phy)) {
> +	if (intel_hti_uses_phy(display, phy)) {
>  		drm_dbg_kms(&dev_priv->drm, "PORT %c / PHY %c reserved by HTI\n",
>  			    port_name(port), phy_name(phy));
>  		return;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 328d8b5a6b66..eced20d2ce6e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -453,7 +453,7 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
>  	if (i915->display.cdclk.max_cdclk_freq == 0)
>  		intel_update_max_cdclk(i915);
>  
> -	intel_hti_init(i915);
> +	intel_hti_init(display);
>  
>  	/* Just disable it once at startup */
>  	intel_vga_disable(i915);
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 292d163036b1..f490b2157828 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -3339,6 +3339,7 @@ static int icl_get_combo_phy_dpll(struct intel_atomic_state *state,
>  				  struct intel_crtc *crtc,
>  				  struct intel_encoder *encoder)
>  {
> +	struct intel_display *display = to_intel_display(crtc);
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	struct intel_crtc_state *crtc_state =
>  		intel_atomic_get_new_crtc_state(state, crtc);
> @@ -3379,7 +3380,7 @@ static int icl_get_combo_phy_dpll(struct intel_atomic_state *state,
>  	}
>  
>  	/* Eliminate DPLLs from consideration if reserved by HTI */
> -	dpll_mask &= ~intel_hti_dpll_mask(i915);
> +	dpll_mask &= ~intel_hti_dpll_mask(display);
>  
>  	port_dpll->pll = intel_find_shared_dpll(state, crtc,
>  						&port_dpll->hw_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_hti.c b/drivers/gpu/drm/i915/display/intel_hti.c
> index a92d008d4e6e..19d1f196d9fb 100644
> --- a/drivers/gpu/drm/i915/display/intel_hti.c
> +++ b/drivers/gpu/drm/i915/display/intel_hti.c
> @@ -9,33 +9,33 @@
>  #include "intel_hti.h"
>  #include "intel_hti_regs.h"
>  
> -void intel_hti_init(struct drm_i915_private *i915)
> +void intel_hti_init(struct intel_display *display)
>  {
>  	/*
>  	 * If the platform has HTI, we need to find out whether it has reserved
>  	 * any display resources before we create our display outputs.
>  	 */
> -	if (DISPLAY_INFO(i915)->has_hti)
> -		i915->display.hti.state = intel_de_read(i915, HDPORT_STATE);
> +	if (DISPLAY_INFO(display)->has_hti)
> +		display->hti.state = intel_de_read(display, HDPORT_STATE);
>  }
>  
> -bool intel_hti_uses_phy(struct drm_i915_private *i915, enum phy phy)
> +bool intel_hti_uses_phy(struct intel_display *display, enum phy phy)
>  {
> -	if (drm_WARN_ON(&i915->drm, phy == PHY_NONE))
> +	if (drm_WARN_ON(display->drm, phy == PHY_NONE))
>  		return false;
>  
> -	return i915->display.hti.state & HDPORT_ENABLED &&
> -		i915->display.hti.state & HDPORT_DDI_USED(phy);
> +	return display->hti.state & HDPORT_ENABLED &&
> +		display->hti.state & HDPORT_DDI_USED(phy);
>  }
>  
> -u32 intel_hti_dpll_mask(struct drm_i915_private *i915)
> +u32 intel_hti_dpll_mask(struct intel_display *display)
>  {
> -	if (!(i915->display.hti.state & HDPORT_ENABLED))
> +	if (!(display->hti.state & HDPORT_ENABLED))
>  		return 0;
>  
>  	/*
>  	 * Note: This is subtle. The values must coincide with what's defined
>  	 * for the platform.
>  	 */
> -	return REG_FIELD_GET(HDPORT_DPLL_USED_MASK, i915->display.hti.state);
> +	return REG_FIELD_GET(HDPORT_DPLL_USED_MASK, display->hti.state);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_hti.h b/drivers/gpu/drm/i915/display/intel_hti.h
> index 2893d6668657..b692571c5558 100644
> --- a/drivers/gpu/drm/i915/display/intel_hti.h
> +++ b/drivers/gpu/drm/i915/display/intel_hti.h
> @@ -8,11 +8,11 @@
>  
>  #include <linux/types.h>
>  
> -struct drm_i915_private;
> +struct intel_display;
>  enum phy;
>  
> -void intel_hti_init(struct drm_i915_private *i915);
> -bool intel_hti_uses_phy(struct drm_i915_private *i915, enum phy phy);
> -u32 intel_hti_dpll_mask(struct drm_i915_private *i915);
> +void intel_hti_init(struct intel_display *display);
> +bool intel_hti_uses_phy(struct intel_display *display, enum phy phy);
> +u32 intel_hti_dpll_mask(struct intel_display *display);
>  
>  #endif /* __INTEL_HTI_H__ */
> -- 
> 2.39.2
> 
