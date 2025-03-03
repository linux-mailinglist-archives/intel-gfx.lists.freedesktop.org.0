Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 172E7A4CF19
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 00:16:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A356310E2EF;
	Mon,  3 Mar 2025 23:16:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lWTIVfDt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BBB110E0A0;
 Mon,  3 Mar 2025 23:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741043767; x=1772579767;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=TMc7iLVslY2HC96j5pu3ABeDvKE5uB+YQz1n7GjNSrU=;
 b=lWTIVfDtNaKYYuh7oNXz40hUJTDYBeUcTggWfoi8eH5bJfZ5z0PRbN6W
 BLAyyGI3wTP4N1zfmefhCFG8oXp+2lZBlWW2wQMPMoZ7XQMxxuimCBnA4
 xXQXtSFQNMrQ1w5xH4a1yHuiHXnGnTvx0pIwk2lTT9Sasr+GgQtP+KzEs
 GktnJ2g8J70TFX77gjGKdurlxvnFzOdY55jDgzSSABZ/afdsom0HPHhwL
 eQQCkow0NQFP81Oz04mqxWJIwYJmjGmpkprxTQULen6xUh0gbvh08K9qA
 eEq1OV1fPMMIWOW0LVyVS/pG+6r2TKIVk2Jw+H3vaq0s+Hu/+Ekj6+5LM A==;
X-CSE-ConnectionGUID: b7XmNzzIRqydIqtXYmqYTg==
X-CSE-MsgGUID: isC/UIDYQ0eAjqLIxxM6WQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="41969831"
X-IronPort-AV: E=Sophos;i="6.13,330,1732608000"; d="scan'208";a="41969831"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2025 15:16:06 -0800
X-CSE-ConnectionGUID: psryfdgMShiqteY5+ipNog==
X-CSE-MsgGUID: Hig17zq8T3yIlr3FzVfRqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="122314097"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Mar 2025 15:16:06 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 3 Mar 2025 15:16:05 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 3 Mar 2025 15:16:05 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Mar 2025 15:16:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vCwuFufq8VENZJC8+GQ3fJjBCfTpUdjHOzD/lWhlwYRO4Ym9XAUCmW1/oR0CrwB1AzEgX/Ct7It3NercRzm2I889e5j14kzA6XqMBWA4g/ngufBnqINHglfDqVhWYA/v/NLaSMksr3P/a/VTA1eaDASf9qS8sve9se0oVXMJbRWEVRjo5lE9i/bkjIUNtftMk7HhFBdYWcycwCeyVWvtVwUsjwAfU+x+Hidvlgjdbmmy0CW+0WpJkoG9buZY6n13TUpEYWKdiQFn2/v8cVe+q9VU/odJHCSzJQhH5xR3WSAmZU8uKxit7yr6E8QWYCZ+teFBYb+emd8JgOrzVfR8Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K/sTKiPI1kYbadwtl3EeDFfZTJJa4+BcSdJkQalxGp0=;
 b=ZtOlUi6M++/gimp+H8qyBoQmd359+WszuhEpTgmlf/4rs2FKl4B2w8gV5Zn0pqCJfyD5kvHEUOdRW027Zusksn1O7/FovS80Mel5VI3FyHPCu3k9svZZnrsH+ua4E6Xw5ZiKIgC38WSQ7EArynhZAJrV33+QLSQLw/EclhiV+el/kUco0ViwnzfL0nqxk6MilaspUAhtxFUPIxvUJgCVnk89QsEo2HASiniAlSiVDj3YwHdqkLu9ndV2mX/6kJNyQD4ajZouidldIoIUpaFsvGXH1LLgBfoRv1dTqzcTdL9+wonCJJkuyv5aHkTIOAEGQjnkNQbW9qHmUC8C4VM8Ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by MW4PR11MB7053.namprd11.prod.outlook.com (2603:10b6:303:221::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Mon, 3 Mar
 2025 23:15:35 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8489.025; Mon, 3 Mar 2025
 23:15:35 +0000
Date: Mon, 3 Mar 2025 15:15:32 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v3 6/8] drm/i915/reset: decide whether display reset is
 needed on gt side
Message-ID: <20250303231532.GO5109@mdroper-desk1.amr.corp.intel.com>
References: <cover.1741001054.git.jani.nikula@intel.com>
 <c32a88f292f516ec702bd07001ac609b8acc2888.1741001054.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <c32a88f292f516ec702bd07001ac609b8acc2888.1741001054.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY3PR05CA0004.namprd05.prod.outlook.com
 (2603:10b6:a03:254::9) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|MW4PR11MB7053:EE_
X-MS-Office365-Filtering-Correlation-Id: 98ef8158-814f-4193-b63f-08dd5aa94d43
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Da9U7xLE5VKel6QNKxJOVFj7cbcKlkc+JhrCDj44S+e+XxtcRcselHwao2sM?=
 =?us-ascii?Q?pi074ZU7l7js+nBrBekxxu7XJga5MJPHhvnZMd1rRijdJNGI+jZcovqLlU77?=
 =?us-ascii?Q?I0+G0Tdxuo98R8JRclcvo0iVx0bz0WDlY3h3QTeeN+SogcLmeVdSdY5GnuAQ?=
 =?us-ascii?Q?AAUqCdL/9LcDr5S8RqPBomjBfib/42OahEJl5YY991dOaz9Jf0B7VVrNZTum?=
 =?us-ascii?Q?ynbjQPh4JBWkCAb20VKroPyPQw4hhDMTZeKX20unuuVHc5XeCexRvqFCvfis?=
 =?us-ascii?Q?FFeKxIE90IMZoDuU6N4ZS0kyhjmObLhXbsnoa2zE9DlnsO+Z4nNwwWiy2PHc?=
 =?us-ascii?Q?Z3EKsH/s02DNeVrcupyTHHuL4Fmhyugb7SqyuxMJvAkQEc/xUI86Xs1fGs53?=
 =?us-ascii?Q?JjLZfy1t85h3MYIC5Eg3h2iQciwq7lt2i1XWpmgqtJxn2s4NEwuDLKFE0C5F?=
 =?us-ascii?Q?MOgq9gY69bcz39qyh9GATYvVjgwSDMwp/utt7tXpg7NamBu1KkPLctRna83N?=
 =?us-ascii?Q?IokkMDjOj0Q+DQhUgIx/3D5GLGcUhDFJdKEN9wSTbscp7rYwqAXky0lXpr1e?=
 =?us-ascii?Q?9m4cYlTNpz/GN0oTvzTwqwcKOmXLBKrYQ79LnB4+sRo+44nRAY7dyCfRIDnw?=
 =?us-ascii?Q?rj2ziir8dQGjkrKHnu0obH7mMCXeI2/sFwFaWRhtgJu2xnThC48scSdLK4nl?=
 =?us-ascii?Q?cL4EvwvzaVX5tPD+xRFVfMS0MKiNIloemrSApwMEcJXFqdjfMJxGNn9EttAd?=
 =?us-ascii?Q?/aN0DTWMVjNdmF10G53o2C2a0RVgvYfnH7jdRePBi6PC3T1tzIy0RPyM7Wgm?=
 =?us-ascii?Q?W2SPZNbgpUuW7qisbvaKIJSz/yrMJkagWf36xS+Tcyf+tzvvKZl5yc9QliYC?=
 =?us-ascii?Q?2fB/GOMAq41nuMpmTiH1kKUW7glVJrLXYR7V3uVoqFLxiCyZbDWq8lIMrlHl?=
 =?us-ascii?Q?5gQbEukPBtKMv35k6lelLDJ1S03ymhv1R1wATz8ST+vXMcF1mmGbFKL3Anyp?=
 =?us-ascii?Q?9dSTus48WXfdaDHCJ7IpCNzdQe9+bn+BWZ19sLnnAzm05Gy+0vkgJFV9/fjL?=
 =?us-ascii?Q?1ff1Gapj4YWtLBLdHcrp9BgoXuIC15rid/o5ZESFPILSkXDtEYMlDTAS3xfB?=
 =?us-ascii?Q?i32uV6G7s0tXcYpauJujoSvCu1m6c6rQ5PAXiaNBsYLm+HQ6p6bpLVm0OC7c?=
 =?us-ascii?Q?iMwn+RZyKUvNrV90+IVGP7Qz4LM/cBXS0ckmlePe2vx4KzlTOfyPQ+k9Yv+K?=
 =?us-ascii?Q?ZzwjZx9HjILP6AFx/5JcvDHEgYSuwm/N50Q4mEvSYSUPWIs/c+wGH1gQvmwo?=
 =?us-ascii?Q?9uPaNN5dYkPg7xWIX/pW5LRiOmOJjYQgMmmhDjoQAEAu2CfZkseF+MPGzzAS?=
 =?us-ascii?Q?m73ZYcyElt8UgVyULGctDG4ntOCn?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CKiMn3hvxScKdhjNgqhov6WuvMJik0QlJBaO8lTpLCT17iLltjXPPfd572v3?=
 =?us-ascii?Q?r1iETzGkmJWwfoxWYDLMrT+aZ5O2fLXWMZsrwcDltxqXxMqu9ByNLWPxCaFM?=
 =?us-ascii?Q?gWR94l831qtCP+nCUSlgiXwYcM3xXp2JLbL8Bua6N71Kv6F7bTs0uFlWzOoq?=
 =?us-ascii?Q?8t9G3evZI/BwVrlb1WgJyCzEvfkGMpP1+5iopqwC64h9TkBmwKIW5VUJFlrc?=
 =?us-ascii?Q?r0KEBUMRT/1EWD8FXkT7zJi7VoVJnJjZ9Fcb5iL4kP8TK6mrlgDfB4jh8qGw?=
 =?us-ascii?Q?uTWx+qJawgYzkWjhMMmg1wLlXUmKDJn4IsYNfX14JHf+uShwhdrC/QQbFTkl?=
 =?us-ascii?Q?H7IhQnETOAXwQPG9GG12VuG6RCa8YAmmV6bxpwB+41wMrE/sAegLrJSB6n4S?=
 =?us-ascii?Q?tWRx5xBvk0iJMI3ds3/nkNWD7K8yVxRl8JCz47rbnpzUJU26EHQlJxJgy7mn?=
 =?us-ascii?Q?soXmpYptqXwnJnp6VaZ18eExg/OGUbjPA8uuKTx2IYTpBhPEz+pZAGQHYw2V?=
 =?us-ascii?Q?IMWG/ojY49sJkOz0jU8CfBn/s29mxSK7z0vNk0+zzKOcELkqH7LBWTFB7sGt?=
 =?us-ascii?Q?OoR0ORAzzJV9irBxK0Vi9nhdwpYI++07T+MWxMEDR7nbYPs9Rv8vg3iLb8bv?=
 =?us-ascii?Q?Lut30n9kGRh1xWyhZPb3hXV2cYtih4Tl7gY2bL8i7menxGdMqOv5MJWmf90B?=
 =?us-ascii?Q?jc1+P0yzfHSes2QHoQ2g1HaJbOnuev5uZTZxs8o4hvWy4HaGA46Jpx4C5Ic8?=
 =?us-ascii?Q?yIGTfsMF90j874ufMvqdENX+qt8AJNkhbC1YTGp2lAsf5kAkRas1me5Ty1gr?=
 =?us-ascii?Q?pr88O6Qppf+V7c40dJ2EUg6w/3V9gGUM8slPQC9bz9kyz2hEf8PctI88Nwsa?=
 =?us-ascii?Q?NBxVQ7M4QC4pRT0jvgbD/GNjyL6LgXor/xleBDFLcKTApiC3UZXTLbeGWmAH?=
 =?us-ascii?Q?bpVj/Mvl62Nrt1+3fT9eCsqrljqLO7LIFSRjKuiBhvE8lTsdKAx4sZXLyCd/?=
 =?us-ascii?Q?CrVCsAMLcjTC2uEKXx1oCBnbQTDlbCDriOE1t3ADS/KdrShdW34WtijK0mvj?=
 =?us-ascii?Q?yof63glCuzWalQfF2mOZ4EW9jGDlm2RSjWSYmmaD2n4Glzw+Js2eB/WSR2Sk?=
 =?us-ascii?Q?/TM6I8syV6mOwxV6BUcUTwbigF/zcn+ehe8XsE1xkPuZW5GdDGzHAX3HHwCf?=
 =?us-ascii?Q?Std/1J2ukqp3aH10HeSMc/QaUSRT9imVeUPQ1Uu6raEPWqZsTICh3GvIr4wR?=
 =?us-ascii?Q?g/EdTmfm8LntSuXNmwWSUsm6N8ynmKAOJBNLmnLpYzzh/RpcJs6EzyEWsxEE?=
 =?us-ascii?Q?93zlPzgIXjAVWxntwDqbpYV44cAxpohBwI8k+kOCwb4abPGWAVXvQsL4g99G?=
 =?us-ascii?Q?LmdIkkLbSaDqSRTPGvsmRCkoEDmdNDF28tLEr/ANKfxENWrRiXeruDQfXoiL?=
 =?us-ascii?Q?bONU6JIEd6pe2dlxGD8Pn5ctSeoAdEhE95lQrLCnaI8p3YA7vLtcnX7p64dp?=
 =?us-ascii?Q?5hQRrFhCLYu1/N4YHUaOTi426sJTaSNrPGoLkBjSey848p0/tUA26xXCOTm/?=
 =?us-ascii?Q?qfVKdpQnP5w9FjmQLz7giWaeOo8UTnDABl4bTgIfyhPiKDMEWC62wGh0CODq?=
 =?us-ascii?Q?eg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 98ef8158-814f-4193-b63f-08dd5aa94d43
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2025 23:15:35.0353 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V+ssqeGqY4lk3VCsDPQFeRmQZ5srUxg151ov96YJHVNDeuHaJFTWFxRgXDAz7huxkwZqD+8MtiI3nouBXo0rDptWtfQA6OU4anwLh+B35/Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7053
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

On Mon, Mar 03, 2025 at 01:27:08PM +0200, Jani Nikula wrote:
> Move the checks for whether display reset is needed at all to gt side of
> things. This way, we can decide to skip the display calls altogether if
> display reset is not required.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_reset.c |  5 -----
>  drivers/gpu/drm/i915/gt/intel_reset.c              | 10 +++++++++-
>  2 files changed, 9 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
> index acc728c75328..c48d822db58e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> @@ -38,11 +38,6 @@ bool intel_display_reset_prepare(struct intel_display *display)
>  	if (!HAS_DISPLAY(display))
>  		return false;
>  
> -	/* reset doesn't touch the display */
> -	if (!intel_display_reset_test(display) &&
> -	    !gpu_reset_clobbers_display(display))
> -		return false;
> -
>  	if (atomic_read(&display->restore.pending_fb_pin)) {
>  		drm_dbg_kms(display->drm,
>  			    "Modeset potentially stuck, unbreaking through wedging\n");
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index f6c8e4d48b04..d4f2829477b4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -1419,9 +1419,17 @@ static void intel_gt_reset_global(struct intel_gt *gt,
>  	intel_wedge_on_timeout(&w, gt, 60 * HZ) {
>  		struct drm_i915_private *i915 = gt->i915;
>  		struct intel_display *display = &i915->display;
> +		bool need_display_reset;
>  		bool reset_display;
>  
> -		reset_display = intel_display_reset_prepare(display);
> +		need_display_reset = intel_gt_gpu_reset_clobbers_display(gt) &&
> +			intel_has_gpu_reset(gt);
> +
> +		reset_display = intel_display_reset_test(display) ||
> +			need_display_reset;
> +
> +		if (reset_display)
> +			reset_display = intel_display_reset_prepare(display);
>  
>  		intel_gt_reset(gt, engine_mask, reason);
>  
> -- 
> 2.39.5
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
