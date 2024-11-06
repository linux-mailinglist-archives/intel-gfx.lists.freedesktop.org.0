Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5979BF38D
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 17:46:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD43C10E733;
	Wed,  6 Nov 2024 16:46:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wwi/VtMJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D40210E72D;
 Wed,  6 Nov 2024 16:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730911614; x=1762447614;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hCenEUYT1y9sIG0IvyUmly/XVLbMRGAvF3pdwOeNCUY=;
 b=Wwi/VtMJ/4Uopx9vQRPDUCYtrqLHw+61cxgpU8HM78w3o2TB1LTvXzB6
 3PGDFm4zG3kxEKEMukw5WaLyttzIAr/Miw7b8c1Zs4e2s5wGWMiTCcsDu
 vfePmKGE2U13nqBJpPpL7LsxU03SHWHzQHwCSFlm0JXm/oo60XuqW/EfO
 K9V9fml/0Bg1FvWun/r2tRrHuK/6QoLk+BaFaSEQXhk8Tr5JV9r/XHwo2
 cSOGXQQcSA/XO4JRuCD5BVUgheQptG3veHmqaGd8dNRUMVB9+/70o2bXQ
 +0KAKhIbYdNmTNtSRy+kxMOHe1QH6Fs0pUpIfMfGVrus/yzGDglb2skNX A==;
X-CSE-ConnectionGUID: q5klSNILT2anWDAgj6eYqQ==
X-CSE-MsgGUID: Vck0ZX3cRyy+fBnS3BYNvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11248"; a="42098938"
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="42098938"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 08:46:53 -0800
X-CSE-ConnectionGUID: 5XFMiDHcQiSbyYlfiTxiyQ==
X-CSE-MsgGUID: HeHQPptLS32tugDukVluUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,263,1725346800"; d="scan'208";a="84550229"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 08:45:35 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 08:45:34 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 08:45:34 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 08:45:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hVaOGNVWzNgIGvQ6JerSjfm19ZGE4OczO4GtemZYCjxXGyhgeWrxls3Cmdq34yGdcBIQQ2qNeKJrGYURqRbXnTn/rdAzu/b4auhEoAXjwfue7Mk5gSRZgaMdOwP6DbsUmee9+NppM3SPA9Zf4Tm6v22gGrMdhxYEf6K3MZKq7/gRaEPDjUlES7O8QBm7QuR9Rqvwp3h+cZ2q2KO/qUHtDAvYoo+i2qJWiIM6Jr5TIlfRcxmwOGg4RFEK12WiSrMQef/I7naXF7ZR75gjynkEVbsinkpHYYzINCl0/TjNqDSQ0GDsFN8vDEnzce95wg3H3xHLi0Y6AgjkLGGBVluN5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OqQdp9CR55bcOhO2V9HUS/+mmaOfXeLFmjy/hd4onCM=;
 b=v0l7msKDf8RQbu/a2/yOMRXzKIkRmjZBScFrCVTvJE/M1VWN3Z0jC10aUWh9RIbahIuCCMKxHnx1J6RvyblEVzPzom+7Qa58REl65kDYDe3XR7DPgMLu70/NQJbHNZenpAHOqtiV+yQ0LiM9bUYJu5qTlR7Fo01cl9iBImQU/9oiGJnY//eUvOCXO9WD98V80AI15JMk5JDod7LyZQiAG044UB/VcwuvynVfuvtSL6M6B2BXr53XehgVuQwgux2ejqtIZv+1j5Q3FiVJo6rHBB9Hsi8OP2Z6VOQV2lVzxmCrtVWxCF6ZVVv/YBJdrjfqOEUOV6XgMhXVgsb56Gok9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DM4PR11MB5995.namprd11.prod.outlook.com (2603:10b6:8:5e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Wed, 6 Nov
 2024 16:45:31 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Wed, 6 Nov 2024
 16:45:31 +0000
Date: Wed, 6 Nov 2024 11:45:27 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 03/15] drm/i915/display: convert HAS_4TILE() to struct
 intel_display
Message-ID: <ZyudJ1Kq7utEc1JU@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
 <6e5ed4a54281f0e35a8802e1eec57601be73f837.1730740629.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <6e5ed4a54281f0e35a8802e1eec57601be73f837.1730740629.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0225.namprd04.prod.outlook.com
 (2603:10b6:303:87::20) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DM4PR11MB5995:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a174e7c-e54d-4673-1a92-08dcfe826d31
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?WACL4CS0HUN14pTPUCv2k3QAUa39EPS3Em6MrMxuDeJaZChy+R6Sr5xkdNnB?=
 =?us-ascii?Q?kb0sedTRa8/GBZqYgnZlral/mmNxGhYDCN5s7RFancmqG8uxR5d25XzMKLfu?=
 =?us-ascii?Q?YXIG4wTv/ugs9b0cFqFo+n8YmKEt2XamuCHQsSMzNMxVGhZokNrznAM0qMMz?=
 =?us-ascii?Q?W2faD9mU9F6MZm1ZnORBr392ot6v5iGFk6d+HO3fmPRICnm9a8POsWhJcOVJ?=
 =?us-ascii?Q?LpsjdH2Y3lg6CG5uwxIT7jQdpl3y0JKdjOYfbYHO4XqkHt4jswJlX/TnpxPi?=
 =?us-ascii?Q?Cc9ef5VRnsaR6JfG6DUy6iedamxKonCRWXFtdIPX8fzN1bKmcD+wZ4C5FlFV?=
 =?us-ascii?Q?Os2PuvPZgfA5nIF6z6IQW4sfNW4zFpUcGPrmVCukR6GU5+CqUVOMTeTUOcnd?=
 =?us-ascii?Q?fsHMIwIkVjMCy1BFjfLkAjrGxo1Mn63jXh6p3+z2Ntmhl/OOmGvu3PmwLYrS?=
 =?us-ascii?Q?QBjdKPPmtSdcu2l4fgbJHNLOvqDRIF+uHZ7Ql+7JPhJMCgpQZ3yZV3U1RK99?=
 =?us-ascii?Q?yvWAW2cxBgJMM52iza9Yije1goHjzcWppOlDmzDu1r39KL298pmQAMhRLyeB?=
 =?us-ascii?Q?2h93Yv4ErHsCG9X5z26+LO6ecOTLh/P1ly7010FSNguOmcodMsc8As74FiFw?=
 =?us-ascii?Q?LVyRsEk1O/glz+9B/iHguvNc+fSmZBmNOXYDGxGFdmOgh8SmRjNzu26SXGif?=
 =?us-ascii?Q?J6OfG0+dgAYQxSKPsntCnc/KPyT92MNig1vGkhn+AizmTwhBEbT3kdBWZYy7?=
 =?us-ascii?Q?KsXeZP9uMtBn9qNAFsA+D9bf8DNXTTLaWQT92Ri5Ik3HksKL9TZieTTVPOgl?=
 =?us-ascii?Q?2+qJbvNtXIaKuhNnuUbEOTq1BwbNZxPI6A6X8dZPmiJBgSYOJr7uK7MyDygO?=
 =?us-ascii?Q?/+TX/VhZwp6lnImt5i60RlkNc57IDrLE9sRBOFeQEp5xlnw5DIiIIRLV74gc?=
 =?us-ascii?Q?Bg+VSHvR5xlwEb5YAoqwLsJEh4IFUsTzFKFFiVXhCslzPAkl3lqAMr2iM4DH?=
 =?us-ascii?Q?lIDE2/P0CUPY2ZeCf/855ojJAVUeA3JFjKJpaxd6dEiOfkwxzDIAbXzM5JlZ?=
 =?us-ascii?Q?1kK4AA2/4X4v433HyGBBmwgA13UwFSmtHXsu+Tymlf4G7UCxaiKCF7tuos82?=
 =?us-ascii?Q?7R4+ntrvfIoAcrnmhQK/5R7M77sje6lwCxD+4hURAf+heULx/TQ/JK0i29yi?=
 =?us-ascii?Q?WVgfyACGrT6RNS+hrGR/WJx5+oiAUAwDUbIpx9rbf7hJ5Cp43w6lylrlg6BY?=
 =?us-ascii?Q?jUqP6wAz7Fjzy/SqJeurOcPUDwJCv3HrDTbPn+Ty32IkhBLunKNTvyrQ524s?=
 =?us-ascii?Q?OgVbB79u6qdPVxKcjJ7r27r3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Jw1L8RLDXqQ4z4SttAkt1BYOxz6gm4pDMZsL2pvH6JS5rwi4ZVq38X8ia1Ca?=
 =?us-ascii?Q?3qbAN2UcplMaW1MBpydjnsHr7yzFNbnCjqK9iaSeTKwaLOh6lWdtD5bfE5FH?=
 =?us-ascii?Q?QrMefczCnpUEtly6f073B1ZPLsa0cHKMivdfrbkROJwIAUpNmbhm5SGAfrwF?=
 =?us-ascii?Q?R+oaG5ivtdRn62uaZnt0QmS9oeiLpUNQRBiah7mm/eYmPCa7p/YowY144v4L?=
 =?us-ascii?Q?/2hJ/swsWzyhjP1xuOJAx6tbAfHcguTDKxJm02THCaXududZEwvGk1a8soH1?=
 =?us-ascii?Q?oKuHtszB0VBWV8PGLcpYHXTTR6r4ZR6/q5HtgMkLIo7hc2fQgVTMfSwc6jpl?=
 =?us-ascii?Q?onPPPGz9ZDcEzK1OUoQ8GiVDg2/XMqcd7KM88TjejXKTJIyjThAp8kkJwSXG?=
 =?us-ascii?Q?mfqX/eqhUge6gORCp0Kv6MikBvIVZ53ls3BZf5YfmMtlUeGNONHW7Q5Wv+gH?=
 =?us-ascii?Q?0bs+y8BPsLdjqY0W0ddp1HBfCc2DUQmCkRpSlEMKpIFDQ8dh9o0N/M7yNacg?=
 =?us-ascii?Q?+r91Yr/8Nt+wMEqcwEZ68u0iMHMCPeFMv4HzQDlsrncUgX+6alA8X5mwReFY?=
 =?us-ascii?Q?yKJKRoHKUKt2XMmYZsCBxPPaq0Zve7HPddt7f/CuhmJ4RqYQFtNHhyOK4ZM8?=
 =?us-ascii?Q?ALxZkJ35+yxXdEhrTOYpD29RPiHj580HUcjhOnq/u99HaCR/6QfbK763QmjS?=
 =?us-ascii?Q?TdzmJUhGThG0MZvQSyGG82lCawsmxVDA0skXUUcv41XcRnzNyZpcDUu99i/W?=
 =?us-ascii?Q?gZmkgHp5eKsCnoWmQziUVMhsNk3WpzmdGuDMJ4PGuNwDxKGUCdfm3J+kKs7C?=
 =?us-ascii?Q?2+43bzI7Jc7o5+cTcsi+q2sFX6VMdoK9CeDixCzQ4wNWdS3M0+P+WuRUv0/Z?=
 =?us-ascii?Q?csc5qQfXEeXQ+UFmVya6GzNu3XvC4AkaSGMVlbayzgkS297m5+WjufOvSChF?=
 =?us-ascii?Q?cFtnuZl+64yUSzlRdKPbGZWBXZ9230QXBmJ8OkFIfPpsNd1tQCcW52jk+F9h?=
 =?us-ascii?Q?ILANczDLQgixHXGqsltJ8yf0U3l7ruE1UhSQOZJy/YbIb3UMxvN7+l9hJMTz?=
 =?us-ascii?Q?9P4l42HKKSZM0FZLAhxMdAfi1hVCFGnYwuxYZDSB4n0F4tTtWRpDl/bxwVVf?=
 =?us-ascii?Q?AldV1EfeAoCFPJ4H9N70xtNl+tcsfuzVGkrDsU0hktZVvaJAmGwjmub2LkZR?=
 =?us-ascii?Q?RP3hbQhNgD0bKDfzlQKLU1AcGKEUNpDnuHy2TdzI85x7ZyPAiFEEJvLed9Pa?=
 =?us-ascii?Q?VaiZvG6saJ2K7ZXhNXaP2flwzBaQH/JSWOkSykd7roD8j/xGnZajBk0plckI?=
 =?us-ascii?Q?4T2c7uYBtuUf1U1vD2wDPodGuxo+yKOcmtjnPIEuiJCIMBOjPX9+ayGpTzM8?=
 =?us-ascii?Q?JGpr0gV92HQA/3C6MkUobMVQXOHiMUtzBQYvh/ZN8BcTrU06Lu3tYzwW1YMN?=
 =?us-ascii?Q?piIP7bPGsjhBvfMtabjrf5z7RzO/R5rNKo7/gcM5y7EcefDjHdDDuwk3ehOH?=
 =?us-ascii?Q?THneF2yOwsDHGQdzskMHQ0t3HlE2KuSAYY/fUK4X+I8LUCcombgfXYGQOC4B?=
 =?us-ascii?Q?MjniDFw4k6NdbgSYOc7uopbjuQqZ0Kc6Bqma3sMkqwewtopnfrEUr+fr2T0G?=
 =?us-ascii?Q?hA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a174e7c-e54d-4673-1a92-08dcfe826d31
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2024 16:45:31.2817 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N3LCyVbOLq4ayKfMJoqCVJ5Jm1KL36xFcAUcdeZrWBS3E3Y4Smca4c4jUnSyNEbhTckIjN7SNAp3SbdwQMHXcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5995
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

On Mon, Nov 04, 2024 at 07:19:17PM +0200, Jani Nikula wrote:
> Convert HAS_4TILE() to struct intel_display. Do minimal drive-by
> conversions to struct intel_display in the callers while at it.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_device.h    |  2 +-
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 14 ++++++++------
>  2 files changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index e45ba21166d3..70d1beebbf8f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -138,7 +138,7 @@ struct intel_display_platforms {
>  	func(overlay_needs_physical); \
>  	func(supports_tv);
>  
> -#define HAS_4TILE(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
> +#define HAS_4TILE(__display)		((__display)->platform.dg2 || DISPLAY_VER(__display) >= 14)
>  #define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
>  #define HAS_BIGJOINER(i915)		(DISPLAY_VER(i915) >= 11 && HAS_DSC(i915))
>  #define HAS_CDCLK_CRAWL(i915)		(DISPLAY_INFO(i915)->has_cdclk_crawl)
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index c6e464d70cc7..28f7f2405ef3 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2550,13 +2550,14 @@ static bool tgl_plane_has_mc_ccs(struct drm_i915_private *i915,
>  static u8 skl_get_plane_caps(struct drm_i915_private *i915,
>  			     enum pipe pipe, enum plane_id plane_id)
>  {
> +	struct intel_display *display = &i915->display;
>  	u8 caps = INTEL_PLANE_CAP_TILING_X;
>  
> -	if (DISPLAY_VER(i915) < 13 || IS_ALDERLAKE_P(i915))
> +	if (DISPLAY_VER(display) < 13 || display->platform.alderlake_p)
>  		caps |= INTEL_PLANE_CAP_TILING_Y;
> -	if (DISPLAY_VER(i915) < 12)
> +	if (DISPLAY_VER(display) < 12)
>  		caps |= INTEL_PLANE_CAP_TILING_Yf;
> -	if (HAS_4TILE(i915))
> +	if (HAS_4TILE(display))
>  		caps |= INTEL_PLANE_CAP_TILING_4;
>  
>  	if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(i915))
> @@ -2564,14 +2565,14 @@ static u8 skl_get_plane_caps(struct drm_i915_private *i915,
>  
>  	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
>  		caps |= INTEL_PLANE_CAP_CCS_RC;
> -		if (DISPLAY_VER(i915) >= 12)
> +		if (DISPLAY_VER(display) >= 12)
>  			caps |= INTEL_PLANE_CAP_CCS_RC_CC;
>  	}
>  
>  	if (tgl_plane_has_mc_ccs(i915, plane_id))
>  		caps |= INTEL_PLANE_CAP_CCS_MC;
>  
> -	if (DISPLAY_VER(i915) >= 14 && IS_DGFX(i915))
> +	if (DISPLAY_VER(display) >= 14 && display->platform.dgfx)
>  		caps |= INTEL_PLANE_CAP_NEED64K_PHYS;
>  
>  	return caps;
> @@ -2745,6 +2746,7 @@ void
>  skl_get_initial_plane_config(struct intel_crtc *crtc,
>  			     struct intel_initial_plane_config *plane_config)
>  {
> +	struct intel_display *display = to_intel_display(crtc);
>  	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
>  	struct drm_device *dev = crtc->base.dev;
>  	struct drm_i915_private *dev_priv = to_i915(dev);
> @@ -2826,7 +2828,7 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
>  			fb->modifier = I915_FORMAT_MOD_Y_TILED;
>  		break;
>  	case PLANE_CTL_TILED_YF: /* aka PLANE_CTL_TILED_4 on XE_LPD+ */
> -		if (HAS_4TILE(dev_priv)) {
> +		if (HAS_4TILE(display)) {
>  			u32 rc_mask = PLANE_CTL_RENDER_DECOMPRESSION_ENABLE |
>  				      PLANE_CTL_CLEAR_COLOR_DISABLE;
>  
> -- 
> 2.39.5
> 
