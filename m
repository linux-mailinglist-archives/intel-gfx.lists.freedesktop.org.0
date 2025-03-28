Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE525A750BA
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Mar 2025 20:23:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A70DB10E571;
	Fri, 28 Mar 2025 19:23:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gdjn1lhs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 506D210E571
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Mar 2025 19:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743189798; x=1774725798;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=KM/qb+ynuqr4+bzQkjlSskhOmOfnHslLaFTUnjzNqZs=;
 b=Gdjn1lhsMGLmM7fTsW0gPz5F/zGRony00Hh1KpG6H+4x1OpDP+QZohv9
 W2pNZQRwI05jwAY8Rvnip5FComqRnKe3EqJ/9zQGDGACZWANGa4g5HucI
 6wBhYNNwq0KzgTxyd+bKEE3wdObG7VFcQT+TeDQZl14Sy/PlmoetjnP3q
 KxE9e90LJc3ugQKoQZKej308nnS5jivYcboDl3yy57DijY6u0I2zFT9z1
 SWsF0VH3fGlT9emvKivR6Ca58CJhzGvDRP60ZBEYO5Jeg/kV9lLCezhD3
 K4cq4MNtaeVvBZVUcSOiL9VHBb6oIYF6roFQ2PYEGocCs3fcVRz5Oi5Vt w==;
X-CSE-ConnectionGUID: 3JdVJHr1TjSOLC1q9Xxz9w==
X-CSE-MsgGUID: MVOiuUTkSjS/4RdxL6uANQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11387"; a="44474715"
X-IronPort-AV: E=Sophos;i="6.14,284,1736841600"; d="scan'208";a="44474715"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 12:23:11 -0700
X-CSE-ConnectionGUID: Qfdmm/TBSMaJIrEqCt+HsA==
X-CSE-MsgGUID: lHi21PY4Q7WfRNx4/mbpZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,284,1736841600"; d="scan'208";a="130228526"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2025 12:23:10 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 28 Mar 2025 12:23:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 28 Mar 2025 12:23:09 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 28 Mar 2025 12:23:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fSSp1GfsP+ie/ENa0BwZ9VFfx1eujvp7YgmHcv2MVq4vgMfJ8BUR+OcOghgW8dxTSLGOCf2MFZc4/yTlTQG8h+PdX6bUlFhLexQvtnyIsMwMU2cX/bevpmfasOerPb5bJ1lr6+/Zm5NiVJT4ItDJG584JbebfKOWo3FiLt6HRnTMmB7rYGQxq2qaBfhHyOu7+lIrBaDKHG6NIZIwpgx4faCgFwcWGfPHiSjy2e/mDD6K4pFK9b3US8V40H67gM0BI/2hBBfNlNcaK3iZcE1VX/g5lgLBGSZRXCzgHqsWo1sCd4+Kdl8+3dF5Ieb3zUqkUa5DJhkTBjg82ovJaMaujA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XqVCqnCm+/RJw4f747E/DF1WH6LYHHIp7754lQ7/spE=;
 b=p3qM9ExB6EEwPsbFm/N1Na8smp0CFo0h4yanqtB/jhan5N0i+fPU7WHzY91MbjupUSMwc4xitRnWuEWl6YuDcfz7uOuXsAubhtewQYbikntPbVlslfn+B+mjOpwt9EB3SHxWwQvBkxDmf31FnwO/NQER2lDCBppF0MSPX0msu//Z85Ck9PT5Kr4sPH2mszu07oKEL9CU2iso1V5WYo6wxzGLs2i3Xc0ZCnk+FqkufUQP3pom46UNGKJxetVOtiLO7Vda+z4Z1IeQ5xvyehTufndK5OeEpDVJJrbMpT918gtfUXZ26qv44kSfr5IsffwF4bTEKympa8uxzaGTsNjYLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB6916.namprd11.prod.outlook.com (2603:10b6:930:58::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.47; Fri, 28 Mar
 2025 19:22:37 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8534.043; Fri, 28 Mar 2025
 19:22:37 +0000
Date: Fri, 28 Mar 2025 21:22:37 +0200
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Stephen Rothwell <sfr@canb.auug.org.au>
Subject: Re: [PATCH] drm/i915/display: Fix htmldocs build
Message-ID: <Z-b2_YjBpZO9Ip6p@ideak-desk.fi.intel.com>
References: <20250328180829.25892-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250328180829.25892-1-rodrigo.vivi@intel.com>
X-ClientProxiedBy: DU6P191CA0011.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:540::25) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY8PR11MB6916:EE_
X-MS-Office365-Filtering-Correlation-Id: 150bbac7-eb76-4743-af99-08dd6e2de63e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?3MaSoCYVZCR0voKs4XTuTUoWh5PepvmonjMryIMgG2hnDQEDt9DwKRV99dCO?=
 =?us-ascii?Q?9Mx4FtDMcf1kTX7C3T1dzoF4/RTkzlvK/21+4ZzI61JuJcWgJFvhSSLqELYY?=
 =?us-ascii?Q?LrzxEb1ti72p80LwZVlSR8MNf0MwvEZ7Slu4VQV99GvUubUUzxa4kWVmA6yj?=
 =?us-ascii?Q?dFVYuyWn/rxk7RafygwhghBMGSfEDNkaQ738a+0rArveYxlYN2OfgCIc5gIk?=
 =?us-ascii?Q?GeXSp8aLuCvk4uEv+AG9VTnQvELAJffw3dT6IvKEqTiLM0rnBGCxu5NSp4J8?=
 =?us-ascii?Q?Gdq2Tqs4wSx3FBLfhLL6UevzA3kIfGJORM1EqhAT01R+iGLns/Gi+v0Hof2/?=
 =?us-ascii?Q?gmV07trXU+BuT5GD9QmxtqxlXwgwpYM59U09PirASD3hwOBx0kUyTYmTN+5P?=
 =?us-ascii?Q?BDV4Ed+2kC1xPw9BnkMwJupXw0us7uPCIIp9DlRfKfM43CvIzubkHmliHobs?=
 =?us-ascii?Q?QLzsM0YTWgm7zypEXPCL7RDd25PIo2Cob2DCjYk1guf29Mpd5ISEb2p7l0vU?=
 =?us-ascii?Q?7qxoHd/rnsqX+dUyzvqg8zNA5vrce2tRT8Fa1n+11Y+7M9NhuTzre6/+Sflh?=
 =?us-ascii?Q?2ceyR9iAp8M8oFBB6fkWM5Vm4mr+Sd1JdUNOFDAVcXJomATUB+DemMjyVVIY?=
 =?us-ascii?Q?2WBMOR+R15wjzXHsCibBOEP0W/xID/NSrv9UPcV/5C5qRcmjdcndnk/FSogk?=
 =?us-ascii?Q?HT9dDuQi24Kbo7KOmkVCbTe82zb86k+iJyFHHrkJuzeixcVservxTN7ZYSKX?=
 =?us-ascii?Q?sdzFWXLyZD0L5zXrxTsNd4kgWedNzekOMzhJSE9rQiziKLQCkU2kRc3ZumiM?=
 =?us-ascii?Q?m4brhUNLRmxvs2EdxGmudDAcVrEIpaaNdh40haQ/hnahi2OgKYxJDPRPSA3z?=
 =?us-ascii?Q?4ygjdSRl2JwHlrC2FEgIJxxk5dlVKBqrMYxwl/TACFveOjCd9c6fAMQiD6fz?=
 =?us-ascii?Q?O0F70sa6nfV05wzwBED2AZbLW6FZNZnglDM0gGgr0Cc9Rant61l5gI6wqnsA?=
 =?us-ascii?Q?Mcn4h/MftNRirNstyVlaf++z04Ai/zZpnC2cD/Tol9/8OjghbmffWcFDEchp?=
 =?us-ascii?Q?yIU6BEKMWHfaYoMFS/zBQgk0hWosXJsfpYQJ/4GABg3x8qiSOtmfb830XvPE?=
 =?us-ascii?Q?0ketnm0IOOFubIhGmv0P8JxV6gSfG3Q2NevCElETvcrg5lThxW9eRzyUNLPi?=
 =?us-ascii?Q?QdlZXGWqG3CxB5YisR4w7lpo6iit53tFGYD32ReXQf37E4cb2lAhNHv49coC?=
 =?us-ascii?Q?0MelPT8o4JGX4yc1Sz5HAZV1vhS4uJSeQ01qqoTi7CTD/obuz0+imGGkTamn?=
 =?us-ascii?Q?cnHAsu4AayGI/wB5bc3UqiZojdxY8K0RLN5n5nBRirZ2Hw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?obgRaOQ5VImJAhtECx8qF0yKcHuvoPO7cztljfrlEiotzEoMwyJF+nJUhmxi?=
 =?us-ascii?Q?pY34BrJ9uamEQjzXEWcGWVqHgR3vk1NLztXf2KUJN3G8qRsvJ4gJ7RUb/fa0?=
 =?us-ascii?Q?kprjBJEdHfcmvLn4pb6M+FA2RcWGcA+3F+oJRoO8twALl5cTUO5kB38KIwdt?=
 =?us-ascii?Q?pbGuDHbKoB5T+69m8Vgv+6mdJnBy4wHdTXtACo3qBFi/mK3yYJp/8ztVKnxA?=
 =?us-ascii?Q?EYPapIMca/vTIcJ+Ietg/eCyeXsyRNhuIpbWN+c3sigjhtdvgH8+kRM+EBv4?=
 =?us-ascii?Q?pXSDmgVua8UtXaMP/e1X3lfK5wy1J1xSVaEGBaDZZE6dmhFBzLGfAQyVq/vF?=
 =?us-ascii?Q?ylZ1bYjTOtAE9PFtYlEdC58/JirIs/57a/ju/nJLJGe1LIoeQ0T2HaA2yapn?=
 =?us-ascii?Q?i+C+fJsK8lug4TNrKtpOEONQ0tyqo7SLSs4bibs6rOzn4r3dZbWdBVfPJdCu?=
 =?us-ascii?Q?P+ZG3RzBpVK0O29VNyw/ecpGRBUBFqGvGeBSFXj7tUo0NGrDc11y6FwBvZJs?=
 =?us-ascii?Q?LLezrBCHuFwLzkdiHf2urvbhON0fWF8wpmIMnFs6qiMvIxmd9eiPDR2XtaDU?=
 =?us-ascii?Q?FUwYlgdxyx1CqNMlRXw6FmPfdz0ZgPCev/DbXg4/oCu1shKyGH6XA3bF6ohY?=
 =?us-ascii?Q?HC2Rb4tM+yfpnL2Vd/SwmXn1rKCxl4C5DvJnlwiRiFWkFQKW24JL0Dw12eKY?=
 =?us-ascii?Q?Vw47UIJ7xXjXLyt5qzHJsb2uoJSzO1Yff1DvjxI2dZKHK5rnElzQyW8wbLYW?=
 =?us-ascii?Q?kxnA194wwMoEONZkR4eO+mvLLsWqf/KEwrJvFd6+4oYphKTIyp6Age4nt+er?=
 =?us-ascii?Q?Y/Hd+Id0QCoyQa/gmr/nej/HfZoxkwlfZiPvnCfSDVgU2xDn9zdL6DGysgH+?=
 =?us-ascii?Q?YcibDbV27NoZAAX6z7OQ/eFBV7oFCy162vJPHtrmhGVIGRL+ZbYXmc88lMZB?=
 =?us-ascii?Q?Mi7NODejKG2iwbajXutU3nxy3P8ryqxsEBBOICqtJ81a1gv59KUDdd9O7yWI?=
 =?us-ascii?Q?0BNIeN+zsuxd16iisn0i6Eof/bIsKBWDe0koq3CcI9wFSARsClBCFVaESgQI?=
 =?us-ascii?Q?4nmzpJCOj9lqPNe1y7TFASy6rLrfo//MrtFB13PkT/stQIgH+jxPovkihyC+?=
 =?us-ascii?Q?yd8iEBbCCX6so/SSV9kTtY/jMh80zpYXvhFAmR4ucmqGqDKYdzyEkvIpwgF5?=
 =?us-ascii?Q?FykEnbEshOw0V52tOrUvs7t2vqqKvSBsTNW4bNwhVMgYOAKMU3E+WHsc11wx?=
 =?us-ascii?Q?zQQS0ThckJlJEglW/hM8FZmxTmvm0Eg29RKJw8xaEjXRZSI23x+KfaCxtWLW?=
 =?us-ascii?Q?lKeKT9SJld+59RZS0ZO7N3UmL4zecR+gYSreyUlC/lgpHYkhlyDavz6Z4oFv?=
 =?us-ascii?Q?4D+j3KckpvyCuAjsHm4pntaduzLF8Ci3ly1hdqoaiqHl8YbGWMSqPN9y7OlJ?=
 =?us-ascii?Q?8T1FY/wX2pksjERp8J9OilJGAmi6NLuxWSz5zc+fG5g45teEbrVHzCk/zfcK?=
 =?us-ascii?Q?Cqp31elfEo1zDcucTFlvE6hS9VlG+3MA9t8p7a1mWF+dphxV6FhDnkYLhGcJ?=
 =?us-ascii?Q?5tvzxSHLUZgYLVpQgg+/Q5ZVVAG3DddBSwqVPQBd?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 150bbac7-eb76-4743-af99-08dd6e2de63e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2025 19:22:37.3262 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p6uSOIXW22fz9PH9yO0ys/Oh44REwMUZc1GP5hi9v6yxYxmpFyhyDh1XBA6QcQlQMnKG9dSknPEP6If3ptQ4Dw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6916
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 28, 2025 at 02:08:29PM -0400, Rodrigo Vivi wrote:
> Fixes a wrong documentation block indentation:
> 
> Documentation/gpu/i915:141: ./drivers/gpu/drm/i915/display/intel_hotplug.c:1080: ERROR: Unexpected indentation.
> Documentation/gpu/i915:141: ./drivers/gpu/drm/i915/display/intel_hotplug.c:1082: WARNING: Block quote ends without a blank line; unexpected unindent.
> 
> Fixes: 0d77a3e0ea90 ("drm/i915/hpd: Add support for blocking the IRQ handling on an HPD pin")
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Closes: https://lore.kernel.org/intel-gfx/20250312232506.47451f83@canb.auug.org.au/
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hotplug.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> index dce9cde03d70..0f5068d2389b 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -1075,15 +1075,15 @@ static bool unblock_hpd_pin(struct intel_display *display, enum hpd_pin pin)
>   * Blocks the handling of HPD IRQs on the HPD pin of @encoder.
>   *
>   * On return:

The closest documentation I found about lists in a kernel-doc block is
the one for Sphinx at [1]. According to that an empty line is required
here (i.e. before the first list item) and then no need to add extra
indents for list items. Tested that now with 'make htmldocs' as well.
Using that fix instead:

Reviewed-by: Imre Deak <imre.deak@intel.com>

[1] https://ikerdocs-sphinx.readthedocs.io/syntax/lists.html

> - * - It's guaranteed that the blocked encoders' HPD pulse handler
> - *   (via intel_digital_port::hpd_pulse()) is not running.
> - * - The hotplug event handling (via intel_encoder::hotplug()) of an
> - *   HPD IRQ pending at the time this function is called may be still
> - *   running.
> - * - Detection on the encoder's connector (via
> - *   drm_connector_helper_funcs::detect_ctx(),
> - *   drm_connector_funcs::detect()) remains allowed, for instance as part of
> - *   userspace connector probing, or DRM core's connector polling.
> + *  - It's guaranteed that the blocked encoders' HPD pulse handler
> + *    (via intel_digital_port::hpd_pulse()) is not running.
> + *  - The hotplug event handling (via intel_encoder::hotplug()) of an
> + *    HPD IRQ pending at the time this function is called may be still
> + *    running.
> + *  - Detection on the encoder's connector (via
> + *    drm_connector_helper_funcs::detect_ctx(),
> + *    drm_connector_funcs::detect()) remains allowed, for instance as part of
> + *    userspace connector probing, or DRM core's connector polling.
>   *
>   * The call must be followed by calling intel_hpd_unblock(), or
>   * intel_hpd_clear_and_unblock().
> -- 
> 2.49.0
> 
