Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BD99AD2EB
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 19:29:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCC0810E849;
	Wed, 23 Oct 2024 17:29:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KGbJHb6U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D36A110E806;
 Wed, 23 Oct 2024 17:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729704545; x=1761240545;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=6GHss/3KNrGLc8X7Ot4fXEpt6UitODudjlMFBV2CUg0=;
 b=KGbJHb6UDAjU6IEkQ51B064OY/PARR2El+sEbpp8b4ba7EVEtaPfAriX
 mPCTGUHXjmxIuZRrZBTh2W0/qZIGxhu7U13AU5daREY41xuAsIUvpUa3v
 APkJBVdoqP5uSGpcAZtObXprNd8MzI4IfS1kq10ylQOhXcy0gPyQjy+9R
 72Aa+wBC66vfOVxdQp9OGPumInig5Qa++2Qm9lmqUTNphxwgsAqzkhTxT
 +JDBNWDWHLjWO7Fp7vUarYrGbz7zjEVxU8glFj39sGmlnsJyYK35mDacl
 J1vPfaXKpz9VvOej6IzN7LHdBDGWCD9Ia7iWmf/lELT57FxvbQzjXHldC A==;
X-CSE-ConnectionGUID: lLui062vQnSSLust/PNKqA==
X-CSE-MsgGUID: Ud+YKfpCQBm9ZfyFsiIE4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="29409808"
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="29409808"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 10:28:56 -0700
X-CSE-ConnectionGUID: IEhaIDjjQNy5xQDdu6xW3A==
X-CSE-MsgGUID: C8qtRoJJRLuSieDx+FPo6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="103604112"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 10:28:56 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 10:28:54 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 10:28:54 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 10:28:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NEzY58Wto7qjpVM6gXmrSJjt5keTR3XtweBIFBylvs53FMbPINAdsIBSQiTadZdSELg6dELsbrgBEuLKIbwxwg4VW/ajV7YMtGycOP7OXZbmjQBIAgzlKR20+jSBZBd+f0B/daOE4KIBcyAunsAoxTJb5FDWnErQ9nwccXNm010dhmH3rvbGtaALO/Y9XEkbzu5D+webGEkAWI9fMSWD9wKKpegWGKktCoUkoJFgKO/7rGVlArD5mQqNifXb5rHlsrmbCHP4YNCNTHz2jrcKV2NfBhRCbmVJYfELa/aDlGALXOeuSS1Yb/N+O9zBbeUJC8yeRbOFWfORAG5YI2Rhcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7cY/0zfAT2wNqyngzx1aQI3ZH8OXeg1ESkAwW4uh01U=;
 b=rwGEXIZi6ST1+SWeUE+gFVLxXbamnab6n2skMGo5QksjNA22dwH19ADlzQjcYnaz3Kn8gqg6G0bIf5zv9xLVSoX856GNj0IIQIcFzj5pyHlpgkw6GNzS+4pp9Jm1/rzPiNxZ7zNFVzQmST9UGTtYR9tCwGcrolWTerQS94ADwNgfxCijK3UXbXFzW37kRGYCQ91S7OW/r7e8/gk4uHwzE4p8oXb3ZuQMWvb5sdY3g7h3om6DRLIaCElwh23TCSviuIfVB/UXdIzCjH8Wbt02SR4J2HvpG4Cfqo1Eo7ND4t9XDtcJ7YCoqD5S2IbjdIvfb5FtCJwDSNZcWERiB7TZ/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DM4PR11MB5325.namprd11.prod.outlook.com (2603:10b6:5:390::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.18; Wed, 23 Oct
 2024 17:28:49 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8069.020; Wed, 23 Oct 2024
 17:28:49 +0000
Date: Wed, 23 Oct 2024 13:28:45 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 11/11] drm/i915/de: remove unnecessary generic wrappers
Message-ID: <ZxkyTawW1gqFkqcP@intel.com>
References: <cover.1729612605.git.jani.nikula@intel.com>
 <b0021a61df9f23e95a6e791f160d2ea41a839aa5.1729612605.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <b0021a61df9f23e95a6e791f160d2ea41a839aa5.1729612605.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0096.namprd03.prod.outlook.com
 (2603:10b6:303:b7::11) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DM4PR11MB5325:EE_
X-MS-Office365-Filtering-Correlation-Id: 5922ad34-8122-473a-2678-08dcf3882775
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?W42kfOBro76eCYTvek4tjK9Y81HFQrtUv6P/l9jnECVvfGW7y4bneTpZy1jm?=
 =?us-ascii?Q?oG03oJfkaQga2HWtvXVimx/76WmxdoreVvmLM084s4PiP/c3QHG4LY4+HT2e?=
 =?us-ascii?Q?EyX3HCphfzl2flS2GP41AmD/7ZPCWUUnW7CtZNvy2jknM1CyzDE8534lPYK5?=
 =?us-ascii?Q?tgPWDpyFN+sKzdiQO9+cHYWH6nC1MbEqcsCbiCFwSPbtG1Ox7PDWyMWajr1s?=
 =?us-ascii?Q?iE6BghlEZx3SKOxsE1v25eIALLcsKkE4OabIKzFVS2OpJlX/TqkgdO0PvDVe?=
 =?us-ascii?Q?31jAQosLn1CBWWDCs4vw+ttR//+kXeYFu7Su8IX5tCMJduCPkMaHYTUYW8Z6?=
 =?us-ascii?Q?ntRU+8+TkVbeZ6QFj+FoYxi95nyW77mY3+JrKEqzJ8rqaqTLXGtU4woHwHLR?=
 =?us-ascii?Q?+pBMFQM1hiZJHvh41yKqVK8hbdtYoh6D89FdF42ma6l2rfHCDG1px1CvlrlF?=
 =?us-ascii?Q?64q8tSjhHel8uCRpgL7CsHt7HtqmZRAi2a1tdixD9LG6c9cHKRgsLnsAmMh3?=
 =?us-ascii?Q?bdgFFkw+slIGexPxWEkMng92YmD+xOjBhKMagu+uimeV+g7vuo813Mt+AbUa?=
 =?us-ascii?Q?vyjpH4I3moGYs0YO7E9hGkwnTZQRrhHB5VYyXWrNWBP6N18GQo0IqvUpIZec?=
 =?us-ascii?Q?0FHb4rofNo9wUlP9qGs7si3jHp2NLVnVv9YJcpakI8G0k5FVOGxPE372q4jQ?=
 =?us-ascii?Q?Lr8bItkPAB4f5Iqe3/L1RXWVtH5/LrdIW42mbIT8gHzmoSM5XQrK6/UpWACN?=
 =?us-ascii?Q?p7X4k2YPzLfMArN66Qsv6rrMiZOfiGk1dY6keR3ScdmuKtvk5oLGIYNDN424?=
 =?us-ascii?Q?YRe3ZMmk/4CV0xXfxxr+Y8rHYIpcgpDQOkuZ3/8H+twRw6fo5TPJMrAu415m?=
 =?us-ascii?Q?yfMfbZsvmLK/PqBS1IMeD78w/AzaGNUvobT3SyVaNChj39hZM+HXQLrGbJPd?=
 =?us-ascii?Q?QVV8SEa6YqxzNdXd8uV5w+XfSZfb0ZoRksjKclBkI6pNV5ofZs9oJxTQnRuK?=
 =?us-ascii?Q?baw4HWtzuqPmzV04e0O2E59RDlvZ89Wv2FCA983bC1hlLRgYO+4+I/E3MbvY?=
 =?us-ascii?Q?KDVznVcuj+PaQcMRsLoO+sTfsWRjPFeF4FxgkRkb2JIBrNA3QWxbNKuxyB/w?=
 =?us-ascii?Q?DrmDuhWzSDvTEwTrP9KDa2KaG/fKzQtxES2NXLLpHmx24SPA/UiAum+cl3CQ?=
 =?us-ascii?Q?Hy3qItW8esh8XPTGjtS62tzr/2ofcWEKVYr5gGnWFLMqr5d/ANsaTOQCGB5x?=
 =?us-ascii?Q?VhuPEE6UcOzJUMdzNby3uUqxiCE/XpuSiPqMVNXFPtXrtX/eaqh+578wqD2C?=
 =?us-ascii?Q?FPA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?maH1HOeXl3KlF+5KNZkG7NbUKI28eXFtW1Icw2rHEQ/2sQ1r37xmVsDWQvQT?=
 =?us-ascii?Q?j8vzj8CoIvZi2s1iexmhBvn9TqKUiYfA/oEJ/j8AuW2xzQ1vybXPIkPs0lPn?=
 =?us-ascii?Q?DLgZi0fYrfbFYB+W2A0GhmhUigRDBzM2cAHAbOmLUy/sY+yutAWNtpodI9X9?=
 =?us-ascii?Q?h0SqAyiJDl31zgwkSdgqIcnK00JDrfKOqil1KDFG2Do9d5Qt6RPxdb9xTKzo?=
 =?us-ascii?Q?T0tlnBEHK4j2j/dwuPBilexRZ//EE4EzJo/lwNGDlz7x6MCSzt6IIcJT6l12?=
 =?us-ascii?Q?A0Ca2JjRH81lKlClFnmPq2LvIQxDnOW9q7X5gLb/NCE3riaXhQGPzA2wNEmH?=
 =?us-ascii?Q?Ap2NC7siUP6Sjfmf0C6luFlHiPhQk+OTMp0N6hMpQ7ZMLCkDBL+lUveN/FDl?=
 =?us-ascii?Q?TQobUqcTq8Kqbrci4akOqGjb+DWMiewIlISwdoEv4u41YuqMXLLUPgFi8PLC?=
 =?us-ascii?Q?EnBPCzwZZYVqBVER1K7oBTWe8FvALvcAGQNutKTHlIO8GxuspBT+SVEibKBJ?=
 =?us-ascii?Q?ikArFEURP5yzkfupbcEzFYMIFhAVYBWZfPvmCMbKyvVu876adOH4YqiGKnPp?=
 =?us-ascii?Q?BEhSZWwhK7aHap6i/WNw2E9bb9BeCPejA/2mcza1QxNL1UtphepUKXeLNVXA?=
 =?us-ascii?Q?qyAIn/u60wzP8TrWaUXaHx9DpzSQf8dPyeHmMmvPz3XoiadCdLY32T4KSueY?=
 =?us-ascii?Q?pUdqN36jXdxHahzmFKpkBqqTSqCCRuXSl9Gio66RSwq9046REoGkW2wwiZqR?=
 =?us-ascii?Q?bq6LE99wb2z3rmX0GYtv38GMa6G5uYG4cOk4Sq+AqWnO9znXxLo6XcjmHnu7?=
 =?us-ascii?Q?0lyHTv1Znlj+3auuXI1rkkqh+sCSAp5qITGkB6cIdysL3qndySfUyuKShtpk?=
 =?us-ascii?Q?Fn0qVZlv0YNYMJO5Av+E4oY2dKmZ5g2cbtMPVdWh8bCNV/KKBPjWJZL/pQCy?=
 =?us-ascii?Q?OAySbKtLOYQqwcdV/xEv4h4i+/zN4APMBDtOaLWZZ5OpkWZRtls8qFhyjseZ?=
 =?us-ascii?Q?L1+8KuXyAnvSV1UDJkQWVrT+8NJMwjrDalH3lt79ty/o7VumhdEFtKzWsuxZ?=
 =?us-ascii?Q?PCV8Q8UiSOWOXMJgZiLr47VoUZZXC05Al9Aqr5CsQPYieoYd4unCaUVchyUO?=
 =?us-ascii?Q?vpwwIwZ5Btmi0HrPfwsC5FAzvHHDpOdoHJ68CNeLKTScijx5vywNBxLXHbhL?=
 =?us-ascii?Q?+H44n7SfTDQvX8Gi16FLnzTo+YDC8SC/KUn3ZplOgreg9lCQJd+Zc7tIjO5X?=
 =?us-ascii?Q?OzC9oGZa1g5jPgGe9wHE0oeEtHk5VRG6n5SynY4H49ZNSWU4fzFnAV7u4Uiz?=
 =?us-ascii?Q?5bPJy6PA0IvdiI8T6i46FWdaqJEG6sd6pquEECNu/3gRD4xRtY/8GKGSR4C5?=
 =?us-ascii?Q?ed5fxQmvlHpmQXgcLlisQVaMMetmd54ig3PPj05dxJCG12QJKXFqb0VbEz9L?=
 =?us-ascii?Q?2e5wTeXxWJMGsDbV2OXZoz3bTcgDtsv1yaDWqKJxE3WQ14HXZvRArav73YvC?=
 =?us-ascii?Q?txLinvA406BYsp9vY5CYI/oXHf2nxlfPyWzBaI+EQD46P6xix9mnClFTJg3e?=
 =?us-ascii?Q?32nEMxKtQmRZO29H/DOpetzKx7iuTTenTdjn3ir7ddPhbm+7M59ECS3VUJD2?=
 =?us-ascii?Q?WQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5922ad34-8122-473a-2678-08dcf3882775
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 17:28:48.9502 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +DojgMiW6XV8U8C6k88vsrnNu/ojX40Ch4+UQUPpE4MAAD1msf4PubEBd9In5WvCHwcnpaGiyOhyC9VIsiP30g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5325
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

On Tue, Oct 22, 2024 at 06:57:28PM +0300, Jani Nikula wrote:
> With many of the intel_de_* callers switched over to struct
> intel_display, we can remove some of the unnecessary generic wrappers.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

trusting more your compiler then my tired eyes,

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_de.h | 46 ++++++++++---------------
>  1 file changed, 18 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
> index e017cd4a8168..bb51f974e9e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_de.h
> +++ b/drivers/gpu/drm/i915/display/intel_de.h
> @@ -32,7 +32,7 @@ __intel_de_read(struct intel_display *display, i915_reg_t reg)
>  #define intel_de_read(p,...) __intel_de_read(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline u8
> -__intel_de_read8(struct intel_display *display, i915_reg_t reg)
> +intel_de_read8(struct intel_display *display, i915_reg_t reg)
>  {
>  	u8 val;
>  
> @@ -44,11 +44,10 @@ __intel_de_read8(struct intel_display *display, i915_reg_t reg)
>  
>  	return val;
>  }
> -#define intel_de_read8(p,...) __intel_de_read8(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline u64
> -__intel_de_read64_2x32(struct intel_display *display,
> -		       i915_reg_t lower_reg, i915_reg_t upper_reg)
> +intel_de_read64_2x32(struct intel_display *display,
> +		     i915_reg_t lower_reg, i915_reg_t upper_reg)
>  {
>  	u64 val;
>  
> @@ -63,7 +62,6 @@ __intel_de_read64_2x32(struct intel_display *display,
>  
>  	return val;
>  }
> -#define intel_de_read64_2x32(p,...) __intel_de_read64_2x32(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline void
>  __intel_de_posting_read(struct intel_display *display, i915_reg_t reg)
> @@ -88,12 +86,11 @@ __intel_de_write(struct intel_display *display, i915_reg_t reg, u32 val)
>  #define intel_de_write(p,...) __intel_de_write(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline u32
> -____intel_de_rmw_nowl(struct intel_display *display, i915_reg_t reg,
> -		      u32 clear, u32 set)
> +__intel_de_rmw_nowl(struct intel_display *display, i915_reg_t reg,
> +		    u32 clear, u32 set)
>  {
>  	return intel_uncore_rmw(__to_uncore(display), reg, clear, set);
>  }
> -#define __intel_de_rmw_nowl(p,...) ____intel_de_rmw_nowl(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline u32
>  __intel_de_rmw(struct intel_display *display, i915_reg_t reg, u32 clear,
> @@ -112,18 +109,17 @@ __intel_de_rmw(struct intel_display *display, i915_reg_t reg, u32 clear,
>  #define intel_de_rmw(p,...) __intel_de_rmw(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline int
> -____intel_de_wait_for_register_nowl(struct intel_display *display,
> -				    i915_reg_t reg,
> -				    u32 mask, u32 value, unsigned int timeout)
> +__intel_de_wait_for_register_nowl(struct intel_display *display,
> +				  i915_reg_t reg,
> +				  u32 mask, u32 value, unsigned int timeout)
>  {
>  	return intel_wait_for_register(__to_uncore(display), reg, mask,
>  				       value, timeout);
>  }
> -#define __intel_de_wait_for_register_nowl(p,...) ____intel_de_wait_for_register_nowl(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline int
> -__intel_de_wait(struct intel_display *display, i915_reg_t reg,
> -		u32 mask, u32 value, unsigned int timeout)
> +intel_de_wait(struct intel_display *display, i915_reg_t reg,
> +	      u32 mask, u32 value, unsigned int timeout)
>  {
>  	int ret;
>  
> @@ -136,11 +132,10 @@ __intel_de_wait(struct intel_display *display, i915_reg_t reg,
>  
>  	return ret;
>  }
> -#define intel_de_wait(p,...) __intel_de_wait(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline int
> -__intel_de_wait_fw(struct intel_display *display, i915_reg_t reg,
> -		   u32 mask, u32 value, unsigned int timeout)
> +intel_de_wait_fw(struct intel_display *display, i915_reg_t reg,
> +		 u32 mask, u32 value, unsigned int timeout)
>  {
>  	int ret;
>  
> @@ -153,13 +148,12 @@ __intel_de_wait_fw(struct intel_display *display, i915_reg_t reg,
>  
>  	return ret;
>  }
> -#define intel_de_wait_fw(p,...) __intel_de_wait_fw(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline int
> -__intel_de_wait_custom(struct intel_display *display, i915_reg_t reg,
> -		       u32 mask, u32 value,
> -		       unsigned int fast_timeout_us,
> -		       unsigned int slow_timeout_ms, u32 *out_value)
> +intel_de_wait_custom(struct intel_display *display, i915_reg_t reg,
> +		     u32 mask, u32 value,
> +		     unsigned int fast_timeout_us,
> +		     unsigned int slow_timeout_ms, u32 *out_value)
>  {
>  	int ret;
>  
> @@ -173,7 +167,6 @@ __intel_de_wait_custom(struct intel_display *display, i915_reg_t reg,
>  
>  	return ret;
>  }
> -#define intel_de_wait_custom(p,...) __intel_de_wait_custom(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline int
>  __intel_de_wait_for_set(struct intel_display *display, i915_reg_t reg,
> @@ -220,19 +213,16 @@ __intel_de_write_fw(struct intel_display *display, i915_reg_t reg, u32 val)
>  #define intel_de_write_fw(p,...) __intel_de_write_fw(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline u32
> -__intel_de_read_notrace(struct intel_display *display, i915_reg_t reg)
> +intel_de_read_notrace(struct intel_display *display, i915_reg_t reg)
>  {
>  	return intel_uncore_read_notrace(__to_uncore(display), reg);
>  }
> -#define intel_de_read_notrace(p,...) __intel_de_read_notrace(__to_intel_display(p), __VA_ARGS__)
>  
>  static inline void
> -__intel_de_write_notrace(struct intel_display *display, i915_reg_t reg,
> -			 u32 val)
> +intel_de_write_notrace(struct intel_display *display, i915_reg_t reg, u32 val)
>  {
>  	intel_uncore_write_notrace(__to_uncore(display), reg, val);
>  }
> -#define intel_de_write_notrace(p,...) __intel_de_write_notrace(__to_intel_display(p), __VA_ARGS__)
>  
>  static __always_inline void
>  intel_de_write_dsb(struct intel_display *display, struct intel_dsb *dsb,
> -- 
> 2.39.5
> 
