Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E31F9B3C81
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 22:11:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBC1710E580;
	Mon, 28 Oct 2024 21:11:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XvFsmTFd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E4A810E57F;
 Mon, 28 Oct 2024 21:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730149886; x=1761685886;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=HNtYHUIhgd/igN76dpBtypE3aEle8mGJKXzMjriwgj0=;
 b=XvFsmTFdNLy3WyH7xHTMfKkNYloaR7eGcBQLDGti4n5GnYHnpnSCTN/o
 94Zwsld2nBFKlX2wh41LRSQAkSOlwbaGFkxDr67fFR1ppoFpBfyPNW/uj
 sj0KSV5FufGg6U5O7vGxVLLJgTe9C8z3Vn3qFvsuPnFc53b7NdSZ5n0/N
 qWdmM/y5SVv8Rp/MFH7gxtVT1/kGcfrZJ7Ogr0/3UO+1seFSlbnNe320B
 4YXUchA5ZefLBx8jJsF6zdZkvYyUYsvad1XovenoPIWvKj2bXxriJDjnC
 BtmBJCGSLyDAjg2xPjlNRV6gC86nTAQtxiean+r7o1+nC6VvZvHDR8u1V g==;
X-CSE-ConnectionGUID: ZIbryAQVRmmfgjVokvdIPg==
X-CSE-MsgGUID: /MuGlAGrT26tYbW0lLcLHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="52321892"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="52321892"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 14:11:24 -0700
X-CSE-ConnectionGUID: H0F8OCO+T+q1jrHbMtdgSg==
X-CSE-MsgGUID: F4fRXCc8T26uIAN2Y7zq/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,240,1725346800"; d="scan'208";a="112552937"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 14:11:23 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 14:11:23 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 14:11:23 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 14:11:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tb1l8xfrRidmJRq+QTuoSOyHjSBKwppGTolXE2md8woEzSIjxQEerxlVAMZXUbYCsP8JWENCuznNj0kajn8YuLYL+5++Ie/CiXWhgGvMZPjpKS//X6ZeEvpJu2JdhdH5Ehp4Uh0wfG6Qj26bT3zaEqEj+wsnflMRPnLXrX/cJd2T0nx0jFh/y9I51NdDq3qXreWDVd5U2cI5gSOKTIxph0aO3pd/72sKugsK0gDvJBZOgNFnzBWL3j2d2+t3bhLixc5RuFLZUoUF/EIXakt7gI3SUhloMAfrVsWb01p951pDgtDv3tF1xW6zsmC+7Tvq/IE49Rb+R3hZyQPGgJpd/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MDi9SXxgUHIkb9bN38S+kCSL/XNKbk/B1rQf19sCwY8=;
 b=czJb5TyoOv3Nd0exr0ImJpXjaHQbwuebzrd4vgVS+1PebI6G666JE023HaZbG2BpZf+JGOuLr6JyuHX8lD8gOWnsg0nt2n9C/ZIXucylRJiPx6qWQgVT9YWuFsrpA0mEebcTUOSajt7e6kksjwTREUQp0iB07yukuiRW26qYz9jy6UxjoFyQUvwNPymaKobI8YdvWjEh13/1WfYwYUmUR1iDhDLjOV4bqUIykTlmPbAGaOas/YTftxGQRvHpk5tSWqTxhs/f8PB2dYyv9eYwBe8Dw4vSTG5RO89LxGzLKAxQ0mVSzaebbGsCrfTA5MFxJIgUDI3+/c+MKs+oAnh6dQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SJ0PR11MB5023.namprd11.prod.outlook.com (2603:10b6:a03:2de::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.25; Mon, 28 Oct
 2024 21:11:14 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8093.024; Mon, 28 Oct 2024
 21:11:13 +0000
Date: Mon, 28 Oct 2024 14:11:10 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 2/3] drm/i915/psr: Change psr size limits check
Message-ID: <20241028211110.GV4891@mdroper-desk1.amr.corp.intel.com>
References: <20241028074333.182041-1-suraj.kandpal@intel.com>
 <20241028074333.182041-3-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241028074333.182041-3-suraj.kandpal@intel.com>
X-ClientProxiedBy: SJ0PR13CA0127.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::12) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SJ0PR11MB5023:EE_
X-MS-Office365-Filtering-Correlation-Id: 9effd93c-0660-4b82-33d0-08dcf7950de9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?bgJGlg876jewE/7i1mNykk9zAcY2nmIKhQjOdqIrvawg7uex1GpGIwaItvi6?=
 =?us-ascii?Q?Vc/wpyFHfJsvRt46owZAxKhez9HTBl5Vz2igaj+nfttw00AcZN35uqzkEGMP?=
 =?us-ascii?Q?brwDbYXImsL8XxWFVjyBernfyp1/B5n6dbVGfuDoRKY/JQLBx2/IpgA+XzGF?=
 =?us-ascii?Q?RCrZiqQVLzFO8WjHg37LX2WA3sYtHx70YZE4yzPK8YTaVd2wtdyslZlfoaAx?=
 =?us-ascii?Q?WtxfBNKqrsKMY/N6ctDIkDyWK9CeH/D/nZcw1u6fYCmJxh89l8BAXVb0tFYq?=
 =?us-ascii?Q?O+2BKBj905pXpW1Zzh86JuZ13Ea0P+Zdo9mFWSQn2c1+3rK135xNRAujkDlX?=
 =?us-ascii?Q?+G67HHDqbenkJ7k7euFHLnQ+TqawMBzsCGXJdpUmzguBCBiyEfOIuEbPfK8r?=
 =?us-ascii?Q?AWdgrTTGtrQjR3byeAz9F8yxOA74D+IlBazMTGW6N6YNwFnZfw7PCI+7pg8J?=
 =?us-ascii?Q?f1DUMLmAg+Et/6iqcQm40h+0frTMhRUlsCMQ9TAa7cgvM3Hb4G8CnohO1C4v?=
 =?us-ascii?Q?fmlYb/rgeou8Ii2rHamDRbyi53J7Md5nmrd+DzLQo+wSfvhHifVI3YlbDcbp?=
 =?us-ascii?Q?usabuptgLs/p61cSsy+8LFqpAVIj+tVNUAjBwMYZvvLDE4YlSd7uOAb2jtoG?=
 =?us-ascii?Q?ALD49XnHhVh941uA0AlBpqci5xmntuQ1xZbVjHwUDAFVGmruN2I8bwMpGjpc?=
 =?us-ascii?Q?aU8YjsSAi8S3tL5pnKaW827FttF7IdhhBvC3+9zrdW8DeGSq3XCMSd3FUEfx?=
 =?us-ascii?Q?ulrXY2rEbUmnLhe5J64JPxdHD9SinXBe1TEW1lbtUvsTUCMZH9CVbTYvTgqM?=
 =?us-ascii?Q?UWZDr+NiwnA5VCTso31HEZRC9pZTZpns2GdMLlBNkAnUBUpH3LrVW3uin5+A?=
 =?us-ascii?Q?Rvfrhnb/hfo53NlS3WfgjLCvkOBSMN5oTSKUblMq3ICq1DzPGMNhCe/psbRm?=
 =?us-ascii?Q?vV50ZMIqJ/TFwk/aWEnjiGrX/i1uE6usiEyiJ42aSIZan0lgH41bCy0iQISh?=
 =?us-ascii?Q?rpmuAYB+7r938z+KCTY04VSUtKOSICZyocKsUI3ezIF+fWXefkM03Qvp/8dH?=
 =?us-ascii?Q?VHvc1sPi1T8ibb3K6cMTvXEed2mYROL+brJArLxe3CQNQakwcS+inGfRptYU?=
 =?us-ascii?Q?m0MX8+b8qYc7N1y4jBf3RmUychLlaLsWewduNJCAMS14Vl+dTTxXb730QG3X?=
 =?us-ascii?Q?d1kIXBeYaBmiXjBpG9yT2DH4apIqDYBZoTiwJFNZ/Wb1u/5Ig6Zp7WVpjJFr?=
 =?us-ascii?Q?U+cpSu/9xoUFax3VdF97lNv2zHtgu9QqdlmE4vnZxMVSj7NMAM/SqRKgtf8J?=
 =?us-ascii?Q?e48vIsqwuc7mHzXgNvgChxWZ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Gay160s/IcV11uS9WqZqGCuQArS/z6XZau7fbQ9sWz4GyhiJq1McFsxaAAJi?=
 =?us-ascii?Q?fHHastzQZL0Uri5BrCYNQh1Haftuke1nuAad45hScQEtJWp3MsMWLOhS4EXV?=
 =?us-ascii?Q?pFAPlg1JAZTPcfkc+HA7FkkipLkw0BJrErF7JEIkEFZqUwQQ8cWtMyD3fGx8?=
 =?us-ascii?Q?NBqMpeTNMX4ueuoJQE5XiIktp7I1UCk5cFGmtSHuyUYI5LNFBOKhd3N99Vt1?=
 =?us-ascii?Q?hM6QlwuU+U+I3QDvtRVM75tkyTbjiveBGWnwmYnwrozKC5mTZloarYf/T8hl?=
 =?us-ascii?Q?Gt/MaG7Fo89ts8hKSPRc93Px/nN6HcDuMetlLgzEzeKVKRQTJuKdRQJOCL36?=
 =?us-ascii?Q?AHjonD05gwdJDJphtQ+vR1oaZDCcvSFrmB925wODz6wOzqdl5eev5ogHIJ37?=
 =?us-ascii?Q?10yKeupext5zdznKLst8ZcTLO+8Kp1CzKJDclbJpu8150RTvYzSJOOCP8LfE?=
 =?us-ascii?Q?uaAvGChUpMPf+ZhKkCvoj5uS9eeMjleKRVXKl4wxuZNCfI1CGg4mmbP0hGZ9?=
 =?us-ascii?Q?UZeKhX3gE6q2z8sFVHWTAMwFtv0onGEvnFUKOOltfI+y7rtW2M5lgHa/Ayt4?=
 =?us-ascii?Q?Y6KwJJAl2RszP8uCH+WgdhJS6Scbp69ij+lMrOHIK43S+zAk11Kk46U+jHxL?=
 =?us-ascii?Q?wJgwH7lXbZ//ENutcgSe9LbwQCfIwm3X6is3LDrkKf+1L9MBXZdFyUBIVnuq?=
 =?us-ascii?Q?xHfCZ47tErsI578L80B5BlwHcWoFEgOf4O0HD+daZ/BD+tNb3dK6lxqUb6TV?=
 =?us-ascii?Q?XVcDSEujTU4UtXrJ9+bVDLuGAEfYGZSfSIzfW1XXBxmZ9GPLcftuzx45Af9o?=
 =?us-ascii?Q?HfOzB0xlr2JRbufWgMlsNA3c4ez9e8Ulzvjm/wsAeokEqpdaLOkKgPFlJLRi?=
 =?us-ascii?Q?ClK4q2wjcFMTHwN9TJEj6IXsN1Ee2URY/+3DZup9H1Z2PajOrwz8J1HWm4Jf?=
 =?us-ascii?Q?sacW45u4SAGMiAv2RbYkBemz5Dh5v0P0KXJrPcTHzBfkRCJy0ziuXFBmTJ3G?=
 =?us-ascii?Q?AGqkKbJjzLWHt/A9Z9dZ/SR0w9htmRlRa7wHSzFYTKx1JTlZel+BLd58z16i?=
 =?us-ascii?Q?7Dsu0+pDd2CHnFe8eHJSd7SHm8/ps4boNj9vO4pJ+B8BxD6Ud9V/2sWBx8aN?=
 =?us-ascii?Q?VeYOLl6u6AlzWydwOrkTBneTrnIKGIiwNZry7M81no9txoD9AmnIuL9AtfMU?=
 =?us-ascii?Q?zMHa9DN0RaYw3ORhCUfXhJ3G5dt2sX4xf2thWH3MzaW2YzgXVeiNHHjUNufo?=
 =?us-ascii?Q?dnkMSQOAGVWKK/WktIf82CVxkxgoAFwC6k80t+awh8M0FLyu4wwCMBdlsUIT?=
 =?us-ascii?Q?Yvz/mmukKVfUa2/cE6MVAfEX08nY+eldB3zhQJCP6WZlcuTFiUYFaZgVqaKa?=
 =?us-ascii?Q?Md5dEginF9ilYH+e2qBq64kYu4XGqy7xmC8S362CZP6KC86Lg569wrIdT+tf?=
 =?us-ascii?Q?yFv2sm6z0lsDrGsIk1i/n7fxMsOGP3y0UwWA9F6yd9D5BiMlCt1hkqV4uR6o?=
 =?us-ascii?Q?fwORajtowWtSZVJv+nq3NSbMQBDyOmv5ZHHsk98+niA8mcnIxBG/+ZgJ5qX3?=
 =?us-ascii?Q?6XwwTPJyhmJOPyEUoLybGWlrBsnBgrfXwg+6E9emO0dC5At3xH02rNT0kURK?=
 =?us-ascii?Q?eA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9effd93c-0660-4b82-33d0-08dcf7950de9
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2024 21:11:13.7108 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D3pX9OYO6NrU7TjXepEac6sfcOCvv1r2b0mhxshNe8ZO/L4b9So+lyxH+f3WesRfeSQKeeJJZfEVBOg0GqGJ624qDXes9hna2LeiwYuy8dw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5023
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

On Mon, Oct 28, 2024 at 01:13:32PM +0530, Suraj Kandpal wrote:
> Change the check to only check for psr size limits till Pre-Xe2
> since after that the psr size is equal to maximum pipe size anyways.
> 
> --v2
> -Check only size limit until pre-Xe2 [Matt]

This will skip setting the limits (leaving them as 0), but I think the
important thing is actually to avoid the check against these values
farther down:

   if (!crtc_state->enable_psr2_sel_fetch &&                                                              
       (crtc_hdisplay > psr_max_h || crtc_vdisplay > psr_max_v)) {

You can add another condition to that to make it only apply to pre-Xe2,
or you could probably change the assignments here to something like

        if (DISPLAY_VER(display) >= 20) {
                /* There are no PSR-specific resolution limits */
                psr_max_h = INT_MAX;
                psr_max_v = INT_MAX;
                max_bpp = 30;
        } else if (DISPLAY_VER(display) >= 12) {
                ...

which will make the condition always pass on these platforms.


Matt

> 
> Bspec: 69885, 68858
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 4176163ec19a..7bc64eae9c8e 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1453,11 +1453,11 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>  		return false;
>  	}
>  
> -	if (DISPLAY_VER(display) >= 12) {
> +	if (IS_DISPLAY_VER(display, 12, 14)) {
>  		psr_max_h = 5120;
>  		psr_max_v = 3200;
>  		max_bpp = 30;
> -	} else if (DISPLAY_VER(display) >= 10) {
> +	} else if (IS_DISPLAY_VER(display, 10, 11)) {
>  		psr_max_h = 4096;
>  		psr_max_v = 2304;
>  		max_bpp = 24;
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
