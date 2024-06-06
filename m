Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C718FF1B1
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:09:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CE8D10E9F1;
	Thu,  6 Jun 2024 16:09:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gaMwNdAP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB49610E9EE
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690160; x=1749226160;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=pqII4tDkWqUDsqF3WSzXFc5aaPHURrl50cjxrwBIpKo=;
 b=gaMwNdAPeF3uIsPc6xfkOE5VNrN5MXYq6Y9J99+7i0nFn7fxWF+zK+MF
 sS8E+gdiQWMC7xNLUekVZsVNGCcZMAF41v5mVsXS6Y7MukDX3e7FDhjAF
 oHGvRYpX/rDvhT4sL4DTQ5R0sYajW/3JxAGvH5XAuMHMWUa8LF/VM3Z3i
 3jmOCEt8fxbN6K1NtVUqv0itA1F16i70PMT4JwJfiZY9xy8FH+DKXEJpY
 tfJq1xe+sd0L93ca+fc99Cg3d+l8IbPfQRWZk0c0ymuegcGpYPWR6xp1H
 0yG47kuG3DbAl4Rns1RX3J3RHnx8Ih9Sgv5DjAVOI87ILhA1JVtLpcbQE w==;
X-CSE-ConnectionGUID: 9kPS8gzfRK+zOwIqiGasjg==
X-CSE-MsgGUID: 8S/lyk4zSwq62TDMKFU/Iw==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14507236"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14507236"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:08:06 -0700
X-CSE-ConnectionGUID: 4GGNb+POTrKdq3CiX6ev4A==
X-CSE-MsgGUID: R//XgMI7TSijifrnICVEGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="42447263"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:08:06 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:08:05 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:08:05 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:08:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lcHXrbfvHePFn88PFAsGi7h7iruycWUZNHiT3GrNS/xFb9YWgb0U44J0r5qpD5qN+Dc2eb6g+Gr1c4Ggrn7oJzj1JvLPAHnQzLqiS72/PcnNhvjgTZwF9auLsn34xgV3zgBlU+o2u9rBrNpx045OXvXlWjwtojjltul/+5Ed5QuUOXLWuSL1wpfh3BqI4UhMaThREtJJjsPw0jA4ddmkQNRnS+MHHiD949OrV8H2/7rGiQ3MDPrHSUiQNkhKlN7ut4MykOQ3v2R3/fIP/xHI8vSf4n94jQmjskfEBPjrqP/WXMf59SawW1ZyRYzk/mqRnhOvs/t4x5WecSDiooxwig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S10ujOmXAzFhZHH0gX6bJQP+UBRbDRZzkLs+9Y5FB/A=;
 b=VZhVIT1Fezrepd/JIJE1+CQ2n/gvvG4+sh5g/izf+s1ZtJB0QTPSpy/0DAJtUFRoHVnfdY0O8GRoOFdpDElnWdXPhwq5fKQ3g9sYub3S5nMzsFOC5JjCB8GlvMdPl0Q1eVKnNwRF/Qrj6OqG70ENaInjLB2doZgBCrzBcZyACfXQTwVPw5PBXAbUDXSfXDNYLW4qt5ulOnqmHBSPQC+DN8vMt1jTY+3eM3RtY1MBBjTLlmVPFvam6IO9BouRd9sIH/fUMlxqJUpQ+WR9ExzOAgfm/HhwT1CY9yF1J1/M0qZWWfzpt7sn5FSwN1EqjovDj7XDEL6g0tEeQ+kHZs0bmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MN0PR11MB6160.namprd11.prod.outlook.com (2603:10b6:208:3c8::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Thu, 6 Jun
 2024 16:08:02 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:08:02 +0000
Date: Thu, 6 Jun 2024 12:08:00 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 42/65] drm/i915: pass dev_priv explicitly to _DSPBADDR
Message-ID: <ZmHe4KXCQKuj3HsR@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <d480b52b454cb3bc49f4e20b8bf973f252454e3a.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <d480b52b454cb3bc49f4e20b8bf973f252454e3a.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0227.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::22) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MN0PR11MB6160:EE_
X-MS-Office365-Filtering-Correlation-Id: 39644550-6fb6-4fa4-55d7-08dc8642d7b7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?VFE5DYOpI9vjxu7EfrOZje33NjT7Qj0DWkdyWtGqpbxnr3QdVMZf2TiuO+GP?=
 =?us-ascii?Q?1Ii/7YAbUnmOPUP9obE6/FHxKwNh9gMlEd4Iz1nLOt3KzIlZ7F1Vua7fjS4a?=
 =?us-ascii?Q?FuF932xrUvwISOWUxuh94bDzm3G5QUoK7FAFg0AZdazl8fxbharmQEMSLJfv?=
 =?us-ascii?Q?oWNUGEKivaRN1yZcOLFVbhGWJKNQ7Ye0AIXXdX3LTlse+AWziqdsW8cKmMTu?=
 =?us-ascii?Q?iFCc1PvMAmSPjOi+UpSkbPANjoRKe34DCHzQYrn7CFSDIWviidQHH/s1Qk7Y?=
 =?us-ascii?Q?Aqk9tr0EGbDco8S4nwpcNE0yPAvQjgcEFmj5LkAaMubUMmY/sy8SdEF+IVT1?=
 =?us-ascii?Q?B6xu9+gQeSDf/plBPH6tuZ5KV33M3cA7wdNYBkhfLf5O9F5xRQTuQhXs5yQR?=
 =?us-ascii?Q?maf2OTbTdUTJe+2cqAF5BIUAL3LMlO3X/FBrxH5RE4p3xNcbVsp5ztipANdy?=
 =?us-ascii?Q?02OHSJO1IbVkCR89lYAIL+9Tg/GMVLo0OATtK5EWTj2ETfFVQufXyU8g1Ycu?=
 =?us-ascii?Q?JC6tx79KoqPNoZ8s0jHVF0ji7Hz7hkJiGv38oQadtwpSFnRT2jkJAm4VR+wH?=
 =?us-ascii?Q?PPBtkyAfLeeamwLe224eUZL1SCr7I/FNj807vUAwNka3xZLKcvXhOoTNFSO4?=
 =?us-ascii?Q?apyEEQwz5y1xoZ+6kY/YlASf8AYhFjE9IOwNpSm7ElFFhYf39AHAuvT/jnry?=
 =?us-ascii?Q?e5oUdWVE4Hi15M+SG+vpvYIaR1NKkp9RTPiKZdCG3sQClH4ERdeDM5j7ZrYp?=
 =?us-ascii?Q?EZaEl/gYfeTG50ODOR6BLdTWUhkwXIbW8UIclYaD2ySJ29+W/OOcbRFumhJg?=
 =?us-ascii?Q?dBlB93ioCksYkx+EzIAVCXC8usRBvYJ1divfJGHCjNKkTwVVZ6enxciBxEzE?=
 =?us-ascii?Q?fV75Pt8jgrANmctwY3DV9CWm+/EhIi8FNFfZv5DVmWWXFi/vpxGVlxSzm8/U?=
 =?us-ascii?Q?LhXZzmmgXq08drO+aXBMVMrKKfH01yQCuP0JRd3ecp6QHMuz9BAwZghV8WKq?=
 =?us-ascii?Q?vM7G6qduPcITrVLASWGGmBqsSWGM4HLufJ4V6s5iPOFwNifi5xAMBsY/Y32m?=
 =?us-ascii?Q?L+oJLSPWeIVAJFXTeG7AHOmqhJ93rrsPiJwtsr3uKGsUP9xM8WBBZZWOHi3b?=
 =?us-ascii?Q?8BV2pWNW/B7uAvwstq1zZoZe5v++XvuWTGZu/BY9d6CNgQwmU0ni15U/7tj3?=
 =?us-ascii?Q?5yIGMEGmrfqplM0wdbiYe8fhJUrDg0U/A2HP6v4x1+sEWDr6vYlTGTOGOQgQ?=
 =?us-ascii?Q?rR+qKZVYtBUGfPKbPAaAu5ydS+roBf0DLHOsJLyHWqLAys87t5ff5kUcxtxq?=
 =?us-ascii?Q?GyxhPU52wthwJqjCa5gr7ZWa?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?g8SB7FpNoxK0FZ5ztrUeoxscoQDvguwXnfUClhE71oK1f7q4OxdD9P74UmX5?=
 =?us-ascii?Q?op9A+oAXs6D6quTCrNQq8wiOL2ci7Oah+mFq7IZntZpqPV8S3UJXmWzZlF64?=
 =?us-ascii?Q?YhQOnEnxjgyvy7RlTDpOmDk9dTBJ2v//yPInCGiA7o0mrvAEpmb+fIyFfw7u?=
 =?us-ascii?Q?gcfvxB9+Qfba/lg6ClORjC8oBmzR7onzOzYEL0x4fBvVt10SEVlIsZhm3xCO?=
 =?us-ascii?Q?d5XElwMxkBtuFx0FEow2hlIfwKAg2dSUClaJXnLXG3YcK0bpjgB/OT5eNAg6?=
 =?us-ascii?Q?CyNN60fwtCxSGnlDkX4cujyIGMi05fd/UtQ4Z/Fyy8QFcvyohHRsj7u1cfFI?=
 =?us-ascii?Q?Db+arS2+ErzvdflBzkKNxCB/3miqasJq8HOvlt3dh8kYIIvQs2hPjyLy8sLu?=
 =?us-ascii?Q?jPS388WWstHfWArcq/7pMrhOQgBcMVqeXzu7VMvnehjnCGGfLS4sqOHr2JW6?=
 =?us-ascii?Q?pllR9uvGVIc1IaP4Gy4B3XfH7npjUXq2E4+vOCLAUsasvZZ/DjAyDNIMU5wB?=
 =?us-ascii?Q?RikRK7ZzbX5CxW/ZUjCFa9mckiTllf9dmsGRhOk0ny4dKMl51sc/yszKy/FJ?=
 =?us-ascii?Q?6FPp25fEMjsqsUQzvckrkxCEuP7hN3+82Gz6dBfH6sETyCEqvZyo+hzmn2fT?=
 =?us-ascii?Q?7GP+B+67QV6Gx8408KT4F49b6lZnJQ7M0FcQ9DaeT3WNYyOOQIkG2HQ9/iIS?=
 =?us-ascii?Q?5hTs+eSFT8qlM4EROZ7AixpeL252hfoYyRirdCcLEkd+ZDi8iBGYuC4cQL9q?=
 =?us-ascii?Q?26LuviGOpbTzSY1nLUPJdbdGPK05n7WioKriYYi2l2H3F+GLyQGu0hJSndS+?=
 =?us-ascii?Q?wwgI+trchELzw//JUFZHYEr7yjs1pk7R9mEt+1DkpD7VcoQqf1eE1CKa4oIV?=
 =?us-ascii?Q?fZ+LT1nxdnA5F8MbkoUwCYG/6KYbodDXRjqscLIYQ/hkJDUOMja+tvSgkU2V?=
 =?us-ascii?Q?3Ma36yjjV7KkzaZFJbMTvpva/dCXNzyhsTVBdtzXj4mpALJGsIAT0TJIqLLI?=
 =?us-ascii?Q?78/GQHiTiqoWU2nKQFx5L+U6jIfUJiPnuymzgL1J9a9pJO2LB/F+V9JVzPJJ?=
 =?us-ascii?Q?XBB7TR6VaMrJrSj3Momn6+2Yiui/9WKK0zLXikTbGTKl0k3bLrtUnpFxbx6/?=
 =?us-ascii?Q?7Zq+UdWkZjE4mEAC5sK9yl6f8YlYATadr+EccT8wiDQ7XguVkL98qe3CYEP+?=
 =?us-ascii?Q?LoopwONswHzXfNycFr4300Oc6iFpGPovj7XzoDpvAPpoIC4vtVFRG5vaPfUl?=
 =?us-ascii?Q?1FfwlhnlAtGFCIoAscVKFjO8Fptwy4HD3JxFhFUqihqy3BnksneAh8fvYnaX?=
 =?us-ascii?Q?0RoeEGOfaps8KW5n8CkC3tDDpCcLVa5AIaymyy77lsMQQdjP7tqHA3eLHi+A?=
 =?us-ascii?Q?TTCphDHMGI0cLZ3ShYPbpWHpa89YWylDXUNgxPJ8ToW5931959b/WT3QIBij?=
 =?us-ascii?Q?xPX5HdXvuA290sPTV0JS3TXfjp+ukV2PNb0cdC8x3BxStkRGt5p0ONtaPO3j?=
 =?us-ascii?Q?MAbFLHFWyz8epLPYVfg3+/3ztswJkvW1EJGL9tBUslfEzR147KQ5IDF+hGnm?=
 =?us-ascii?Q?DzfXp7xUOtx+OFyHgrJ7igSzjHZkWjfJraesGYIs?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 39644550-6fb6-4fa4-55d7-08dc8642d7b7
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:08:02.6102 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3q6JumcDKHiaA8PVgmsqBmzYBXI9/JC89DQ2qvV+8ajwiVlBuPkikAcV2gLjHbIb+aqjFZfNvJNLiAT/3e2+SQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6160
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

On Tue, Jun 04, 2024 at 06:26:00PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the _DSPBADDR register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 8390294aea5b..bcaa7c5b0c40 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2309,7 +2309,7 @@
>  #define _DSPBCNTR(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71180)
>  #define   DISP_ALPHA_TRANS_ENABLE	REG_BIT(15)
>  #define   DISP_SPRITE_ABOVE_OVERLAY	REG_BIT(0)
> -#define _DSPBADDR		(DISPLAY_MMIO_BASE(dev_priv) + 0x71184)
> +#define _DSPBADDR(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71184)

ditto

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  #define _DSPBSTRIDE		(DISPLAY_MMIO_BASE(dev_priv) + 0x71188)
>  #define _DSPBPOS		(DISPLAY_MMIO_BASE(dev_priv) + 0x7118C)
>  #define _DSPBSIZE		(DISPLAY_MMIO_BASE(dev_priv) + 0x71190)
> -- 
> 2.39.2
> 
