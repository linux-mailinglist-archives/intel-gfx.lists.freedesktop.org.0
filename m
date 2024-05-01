Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEE68B8428
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2024 04:06:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D57A4112FDC;
	Wed,  1 May 2024 02:06:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j5MMEZnE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29E2B112FDB
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2024 02:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714529169; x=1746065169;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=LeTnmKJc0G8rosgH2+P3xLvZwAzDk654tLgLF6ea5pU=;
 b=j5MMEZnEC3fyFlS2vtrXE4CJVHNvMROuTK9KCf5t/UA52H1Pyc12oL9S
 qyjaddhdJ+6AmUSogVpaoBSpS0HjjIEXAr8ebpU8x4PpOqo9fJJTnUcRs
 H8/E894Ygztlu8Kh2628woTBwO+WpkQhjehoIT5VONTtUhGE0GQGTci52
 9vJo/LDoMOcnxKNzmVTF4f6CLF5emVJjyRuAgzoPxi6EsJxSbhzyqnA/i
 PFnCnqnL/KmKdtt1SvTfV32ch/iu/4aRHm6KP3w024adIVFcKu+lRipKR
 03GBjBdVgXTbYmOO5T7ZvnC0l5xXu3JCl8UFI6ZAUy1ANefX4jNaLo6YL Q==;
X-CSE-ConnectionGUID: dORNZiilRLScOQa2t+OXtg==
X-CSE-MsgGUID: 5QnvF6M4QxWDciqVLkZjLQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="10427183"
X-IronPort-AV: E=Sophos;i="6.07,243,1708416000"; d="scan'208";a="10427183"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 19:06:08 -0700
X-CSE-ConnectionGUID: yVQkXYhWTDy78FX+VGgXnQ==
X-CSE-MsgGUID: MRK1RGwOQB+F2oUyOq+WgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,243,1708416000"; d="scan'208";a="26686471"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Apr 2024 19:06:09 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:06:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:06:07 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Apr 2024 19:06:07 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Apr 2024 19:06:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m0UYX2oyJXCXe6wHqglSkM5mMc/1kMod8ULRgYbGEaiy94P5oC1xtdu6lKdWsbeUV08OlUdr6Tdaashexqg4fQbSj1ublSWDWwWI7hP9Cbf2JyRtwoc787bsoe6XXpCrqCG82ZLOlB8IiIoTGRKuZlLZzBikN3JcEs+wghcK/drwoyfXKUQLqoL14iHRyuUWDwGq4eXgwJ+KDfHgasZmOCtY/7KOz1OgXEMD4w1LqIS/wruH0hnq5/9Mb8szD2rq6kSYLhEWEXar81SDDdHufm4hoVj/8+A1pyAVlIV5qyDWg2Yv05/zg8omhh5W3r9Um7R6E31U1Y+HCetO/ahJKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nz8uKWzk2YJcL+HvbMy2Qqx0Wg/nz/OHWvwqn1kkg+k=;
 b=DDlNozBjcO+XLhgX5PUA3DNcq8TG3zdk545NlWa70PJ76guUOJw5mhWKJ8saNdkCwIR5yT6YwJdPQAzdkf8p4IYe65K4Hb7JDEPSWz5JlLKgFOYjSMKP14UWjrZezlOGOkQBR4Ws4qxab38m/XTXIzElDcRttP/oAQaxUEHeMrF2+iuai2pE8Hfr2M3uQs7oBaCiPXOf3cvZVgh4S8wODdzG+ixEH7E68DDDpyXWIy0z43pr8yit+47eQJq/gqIXi7MiH5unZPjAF5NcbLnaZHI+ekGo9jtV8RJlach5qAhqQvWSE/96hXwGy+5565SJ7KKzxPDoemQYpbFrA5VmgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB7254.namprd11.prod.outlook.com (2603:10b6:8:10e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.35; Wed, 1 May
 2024 02:06:05 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Wed, 1 May 2024
 02:06:05 +0000
Date: Tue, 30 Apr 2024 22:05:44 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jouni.hogander@intel.com>
Subject: Re: [PATCH 02/19] drm/i915: pass dev_priv explicitly to EDP_PSR_CTL
Message-ID: <ZjGjeD2N6zfBFuNQ@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
 <198858bc3925c02c0975670e3ebb5ce2084ac658.1714471597.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <198858bc3925c02c0975670e3ebb5ce2084ac658.1714471597.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0175.namprd04.prod.outlook.com
 (2603:10b6:303:85::30) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB7254:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c5199a9-1696-4a64-d106-08dc69834239
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?qhwGv9bcikHEjUv8bTeyNAitT9zK/dcu3bNEOKevErguzkLeFrFwnbvEQiyE?=
 =?us-ascii?Q?m0e+1DWj9sBTpBuyN3Q+h6mTIEO8dM76szm5zSmLOsWqRtGxRJzyCgDVOmv4?=
 =?us-ascii?Q?AxJFLyT0tEKh1LOvhMABo+23bjZvUwXHaJAnWZkzk6kHXozULntb5VdQ+QYO?=
 =?us-ascii?Q?ov3Gylfx8qqMJWqBxoFuB6cjR4hbTJ5zGwZ3JQbdfq4jNDo8GRyTkhYQJKxm?=
 =?us-ascii?Q?N4HhvomhUbbBfPBjcVSKU0+kc5NCYbBbnZLv49l3A1l6rdSdtGY6RI/jIBq2?=
 =?us-ascii?Q?q7BHjsjPSCop3w9NhilStO7pxpNSUS1k0/pcnp66F5vaTO12LjbOhhiBFNUX?=
 =?us-ascii?Q?mT15nfuz0hT490qCJSm2LJ1ErFPBigTP6YYK21K/TfunNG/KWS28lhxJ7wOl?=
 =?us-ascii?Q?JkApu8FEf8RJlLOQPPIOU6bpeaYhkumiTsOyBIQ4NkK31hadil0zaSRXxQ5y?=
 =?us-ascii?Q?Wg35SLV2aZxBYhTJUYodhMNgesQdBIoAOT+mYSb6mLDgZJ8F9b6QqUyjaOuq?=
 =?us-ascii?Q?AaCR31JxdGugoYa8ng4v36ItNYnaoK5CG2O3KKTspIA2gd1L2QC+EemMmD+k?=
 =?us-ascii?Q?FTUscuV7nEf/TevfUJt13aKZpG/idNEz52UXPrsU7hpH1byPqsbJlZ1iYzWG?=
 =?us-ascii?Q?8qU3x1g+5Kfdjv1h5AZdUrir0UUGXpOj9BMIOmrtFhEvOmT9G//Wq651qmc1?=
 =?us-ascii?Q?6NbuSgtrtCfZv9mH9xUPnu/4Bnqz4GBz7uumkgoIKNaAJ79ugD80uHQDPDzA?=
 =?us-ascii?Q?zjD08y5g+rJAR3d/a2UQ8yPNJY4ibshLZSfsQOd/z3RQ2w3SodXuv7S3XgMd?=
 =?us-ascii?Q?xZlkczWDnrsiAaf/2Hl44M3mPeta7FY/jzJzGGBM/YobA4y4ihAkc6YTqp/T?=
 =?us-ascii?Q?0ZzsHRtq4fydzePLY041vk08188miRyic2pL/pRufGhSmxJPZgyWSTRSRBsh?=
 =?us-ascii?Q?3p0Q3oQW3V0FabMoB6KvJZPrDSW+TyuGNejFl/xHShGpL1Yr4yXhXVJUkkeh?=
 =?us-ascii?Q?1WZpd+wQlPtUYa92QyVB3siLzi5y8sYlWc1+ErqlSb1f2xTJJA+aKYbDHYym?=
 =?us-ascii?Q?Za3arBoYWPHR/dPNjrrciUgdHzI+u+d/tE6QCcB468K4x9Shm68WloNOgGl+?=
 =?us-ascii?Q?7QpmbsWOu2p5koB/7hnrieptZWPhUkFgRAp0c5o0NnLhBoFaVmAt50c2P/cc?=
 =?us-ascii?Q?xPS3oWbzoCnqTCLffBXyjm9xdadL6DX1mM9KiiQPWtv3a5OkH4p3fwaZbpyp?=
 =?us-ascii?Q?0hqARoUcY4UYZf7asCphypp1FvTpOKv+YbBB5olvlA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?13fwFE5/C7+dnNRJCkvFoakUioBq+qjjKxRj4Jpy5Y/u/B6I72voNeYba4xz?=
 =?us-ascii?Q?NjEFVf291bxvt1cjU9ZRyCXGZoYtGR2HgOdnhDr6sCcb1GLa+JVBn/LY3z6c?=
 =?us-ascii?Q?0Sem84VhWAwgGRPU+i0OxmfvgT6nUWk9yzqBAZT61NZ+K2zFOGxLw4O2lW+a?=
 =?us-ascii?Q?/NAdRT/XoMFH+5+wz+gtbrr/qkuqhF7gqTzqvoLbhoCqwujokgWl19ZE3k4l?=
 =?us-ascii?Q?siXVMuzUxiPDLv4vaq5RoB6FwzJg8GgHwrKpKMx1C7nAaHKOYE2AAfNkGnC6?=
 =?us-ascii?Q?mzI/p+F4waU70SCuj0UQqGUMFT3E3MFewJ9KQcqRiTGXBRrVGVdAraKDie3Q?=
 =?us-ascii?Q?LejzmgCq88JaEinMRwgWEYv2s2VQPl7aAbsiptQujsBrDtJEb+XPqlbshJiK?=
 =?us-ascii?Q?AXwI1z6BAOV0O7gnmZVWkUEIy0ue0/HzIxuAy7CUYBYSZy8N2ktPZNd7dSVo?=
 =?us-ascii?Q?jt76Xgcq2bYerk7qNtk+kqrU0WK+VjJwQDAYU50zDx3p0WOUBS6orjaDrerS?=
 =?us-ascii?Q?4GKP9SprW4E44/FFHPfJ0r7NWhQGv9oe0PGWdRHnlvX3QiZTuleZ5/UtMb0T?=
 =?us-ascii?Q?wy7Dhy//MMkfCgt4qg6CWPrvHMVMX/9Bb1sIdaKNmDvRfkwxSzUSIhYjUxDq?=
 =?us-ascii?Q?SvAE3ai0JBY+gJZWNtXzPY3wcaDvx9zeFPl3TBFgW9OyKN41ha7ziHlrfEw4?=
 =?us-ascii?Q?5x9UCOHn3IjhD3wPkeTWUy8v9nfCZUjdp8I9p/F29gI1N1eNUNTo6w75S+Qq?=
 =?us-ascii?Q?v0uWVj3GJgFMvBZW3BWh2DqcXD7gWnyJwhjgsiZ/rVkuGxBHZxrq8u1jZBYJ?=
 =?us-ascii?Q?50o++1p3u4YMtPKEWXMXrq6s6U7tyDCvX3eqpLx6s9pTpZV6gANbabggDGzC?=
 =?us-ascii?Q?7tWTxRulq0hOpLtdumvL30oLnDP3TN0m8NE4q9uXpWL2HPibHWSsCaGcE7LE?=
 =?us-ascii?Q?gBUlE+kCmnxQvo3fJGq58bZdBO0KNuTPJ49CrD7wk96DL1KH7cVi5BbVGWCG?=
 =?us-ascii?Q?cuayaCxZF4Wtr314jc+TVNmGVOEx+i02SzyCvRNyKSowG/uQVlIpTYv4Ojgm?=
 =?us-ascii?Q?MmrtkH3b4hUp6GowllqocrZaj9OmcTiwGWwHg9l/AIZNhW2gwgdaZaUjdyna?=
 =?us-ascii?Q?iS67hbquJ2wTaxVnwLrtnCgU2kzAf2G+QYe8122NAL6Y9oQPY/+dbZiIl45O?=
 =?us-ascii?Q?/xx+vpSAXV3xS+dxnxNX5E2TYbA6IkvN1OABhUNpI4EDQoH8eLUg+ro+ohlW?=
 =?us-ascii?Q?Em/2OZ7+WqRipevoEKqolMBB98dFdX8JwjFaFlH0JhG4CKT3NSxt/9wwD4CC?=
 =?us-ascii?Q?xgqFzWS4ac4X8GWPjhrFoGZ59K3jQuOVudvtZ4PbBP9pLpU4XTEUka4fboVq?=
 =?us-ascii?Q?HjsZ57JVdbjSDaH9mzqGT+HdY9/FFTnSSriBSgnuleh3aQe7h1KLUer2Oi4b?=
 =?us-ascii?Q?bfCqMrCB+omBhvpYR93vlRsjc/RReeT46Q6SXKWQn7p2nLzfRlc98RCZjLRb?=
 =?us-ascii?Q?+1/7DVrB5m6P6ByAkRwE2j+8NQt23BT0NB+Tgc80N4pqGd2g2vUR9Il6z5R7?=
 =?us-ascii?Q?Y5JUjs28jYjj/3sxX8OXJYdEdA6m7uK5sp4QS84yPdE4GkSiFGoWsPshdyIp?=
 =?us-ascii?Q?nA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c5199a9-1696-4a64-d106-08dc69834239
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2024 02:06:05.7011 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /YxknvFcnX0LCKN5iL+1vJ3spRkyR7tcm+NeWHf5KvAG3RE9q9SstKeQycQtFf7mcmiapiWck/HZahT0B6js6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7254
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

On Tue, Apr 30, 2024 at 01:09:56PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the EDP_PSR_CTL register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c      | 2 +-
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 1cbd8c6714b1..57414a1375b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -269,7 +269,7 @@ static i915_reg_t psr_ctl_reg(struct drm_i915_private *dev_priv,
>  			      enum transcoder cpu_transcoder)
>  {
>  	if (DISPLAY_VER(dev_priv) >= 8)
> -		return EDP_PSR_CTL(cpu_transcoder);
> +		return EDP_PSR_CTL(dev_priv, cpu_transcoder);
>  	else
>  		return HSW_SRD_CTL;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index 0e0c71ea9fe3..d815f08aac2c 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -23,7 +23,7 @@
>  #define HSW_SRD_CTL				_MMIO(0x64800)
>  #define _SRD_CTL_A				0x60800
>  #define _SRD_CTL_EDP				0x6f800
> -#define EDP_PSR_CTL(tran)			_MMIO_TRANS2(dev_priv, tran, _SRD_CTL_A)
> +#define EDP_PSR_CTL(dev_priv, tran)			_MMIO_TRANS2(dev_priv, tran, _SRD_CTL_A)
>  #define   EDP_PSR_ENABLE			REG_BIT(31)
>  #define   BDW_PSR_SINGLE_FRAME			REG_BIT(30)
>  #define   EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK	REG_BIT(29) /* SW can't modify */
> -- 
> 2.39.2
> 
