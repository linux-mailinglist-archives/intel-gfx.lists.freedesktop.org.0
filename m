Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A87A6E3E0
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 21:02:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6520910E4D4;
	Mon, 24 Mar 2025 20:02:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ORvQgvBJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBF4310E4CC;
 Mon, 24 Mar 2025 20:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742846548; x=1774382548;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=B2UF34jIuO3gK60ptDZbLhes2eA5knx5MI+XWD97tNc=;
 b=ORvQgvBJBW3HzQklvsjJacdFrA38dsNy2r1yKAj1YiQWcZdkIn2Mqbx5
 pinBiIALWxqxI7FHa5/Ezli0g/d0z00vkWadvvuGoZkjoHUgaRmYwE2ss
 ncitvNy9Lze3gqhQ7zve8V66ZlY12dQmp7gc3jnD5SCbDkckRaKAE29RE
 p5Ki1jSiwVSGrdJprXMIerL4D/vEJudVDZ+8IpB+Wrpk9C7pboSikbDG2
 hu3T5ogNukx5VJDEHG5/jb9VMSfS9aNLOR0ieaOh4S3y/PCFHlpNePPDg
 7Etz5+Q0QY7/Zb634GZb5y+/XcW7ObevMZ6e3BdrqDTskQ/YVwkQu1UYI A==;
X-CSE-ConnectionGUID: 1eBPMR/ZT2GyOhbYqF8/XQ==
X-CSE-MsgGUID: IMoN9AgJSP6OgfbFWgMOLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="54712026"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="54712026"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 13:02:28 -0700
X-CSE-ConnectionGUID: Y/UxIrETTZaAXdcKg+cBFw==
X-CSE-MsgGUID: ChIzI9TBTyibd+puwxcHRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="155063160"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Mar 2025 13:02:28 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 24 Mar 2025 13:02:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Mar 2025 13:02:27 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 13:02:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zR1LgcXKWtS5HncFwxlT6Zl1LyFhSrzRwJH96UM/9nNanGbDchH/uwfQV+QiyTZB2iP4rTr13z29pp4Vbw15lmEgIZTKj8PZsyHYqYFV4aJlYR2lroA7yFRcjBlmmdg29EcHlSB3JQuKChMeD69N+9mXsVrdLCy15TGeUB7YUwM8xp6xcxLq6kDkUhnRfSxDxyx89hWWHdabi/U6Goh4316Zv/CjfGOHmYmG84a533vLAGZ2qM4Av21Cj2GtwQ8SK/t4iD0Oi9/dsE6sfAETw7DVxAkKBjw8Ayl0hZ310j2mXpsSbAGi+DzbgbXO66yrTi/g00Di8XA2SHkCCmPF2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bbYxbLiXgJqkgAhAh8yy4uWbhSMPk4j+w1w9ZM3ycw0=;
 b=odub6p9SFf042lFnHlDglLxCFhDAegPTjeQiQSNpzogjvL5VLiVsbiViO5FE6u2UwyD+1nNX+mOQvQWVgf8CrKcompYtfIcgFbcdKsIljNDlpAdN4kBw4iUYPPV/lwu318TDPGKRBN2TOAq++QWMp1U1mNezpjHdpZJPxk8FX9gZgbEvXcMsITc42WjYh0FqauoCwXCkKwfbXiT0nsgxVocAzUZnvCjkAYx/rrDkq6L9EuLzmlougVC5EwNMT91qUENzZRTTn24Bl8mHtlaCsgq5HwlPizvox2VGth4JQ0p7TKkWOJiE2bxab/iBn3p3UjOMqzu2EgIpkAfqGa9ZGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA0PR11MB7212.namprd11.prod.outlook.com (2603:10b6:208:43e::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Mon, 24 Mar
 2025 20:02:10 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8534.040; Mon, 24 Mar 2025
 20:02:09 +0000
Date: Mon, 24 Mar 2025 13:02:07 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Vivek Kasireddy" <vivek.kasireddy@intel.com>, <stable@vger.kernel.org>
Subject: Re: [PATCH v2] drm/i915/xe2hpd: Identify the memory type for SKUs
 with GDDR + ECC
Message-ID: <20250324200207.GN3175483@mdroper-desk1.amr.corp.intel.com>
References: <20250324-tip-v2-1-38397de319f8@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250324-tip-v2-1-38397de319f8@intel.com>
X-ClientProxiedBy: BY3PR03CA0009.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::14) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA0PR11MB7212:EE_
X-MS-Office365-Filtering-Correlation-Id: c9fc06d8-7c6f-4a39-6115-08dd6b0ec2b8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Y/ET5sXmEdKx0k62fyf2zqcN3fFiGHSBuT7V7nUA4gROHZIrdyWcGio4F+dQ?=
 =?us-ascii?Q?tVx4di797jFoKSDorLzq2hvDygI+jsiApZxli/PO8Es/ZTQ9nv/UbYTWSkSb?=
 =?us-ascii?Q?gvDcPkyjON7/iRYhmjSuCDcyRfnZfmQ9OZb9Xc2dwQ/IeEb/IToSugXCnuVX?=
 =?us-ascii?Q?/BOKP6dmvhmbKpN5p3LXfXTkZMgg3vlYC8fRdA0LZUpCvL979EG5k3sz6CaK?=
 =?us-ascii?Q?aebTvbzPtIgrGxUupQPiJXLjFPGWRLcjlPAkEEhBjVgaw8dNBon50HC70nzD?=
 =?us-ascii?Q?E9hmKNGQTMAYe8J08ShYnsmelSwN2HNj2qTf037furpXYVBPUQITj7Tz2lnU?=
 =?us-ascii?Q?ZW70ZrTZ1P2iw0QCMXU6PPkz0j/COswIl1METhYTS8SuBRQSeZCDgbnrYbPT?=
 =?us-ascii?Q?ZypWZEhGBWkGY8PORQcww+iscOTusi3BOFsjUY4bDJky+2zSEm4oAtCYPlBQ?=
 =?us-ascii?Q?BojvTKP55/0gWXE2PUiWvXSarxhqHTU8KjMWNomEqV4igIwJUr+5E5WOO9R2?=
 =?us-ascii?Q?nIuBhVarb4t9qSTa9sk/467/rAO6EkrTLi0ZhrH/MQX6RhyinvFshPcLRK2O?=
 =?us-ascii?Q?I6X6XFydfeNlo5QGDDZ5Nm3rwneB4I1nxg9vwQBWZndND2pgakt8zJ+JHgtA?=
 =?us-ascii?Q?rMGXH28pIw+yjMZGWKAzacg9Xx+kkqpIIxJ278yevFE93iDJ26Sjvp+1NzQn?=
 =?us-ascii?Q?eh2C1x5cQ0vCLEVshyg9X/J4P/OapYYy28bA3PhAYqDRUldfrjqb4rZv8xqt?=
 =?us-ascii?Q?lCvEP/9n5G1xzGlIujXb9qyGZBSFFMb4pQBGgeI7n8Ir5A3u4YIPergLtyoi?=
 =?us-ascii?Q?wZQw7XzxdvSVSL+V4aPBfQsVbTkKpPetvmN70IWgDixLdtpJDnXDbAlWDx9f?=
 =?us-ascii?Q?6RCcZQkCDceQC2nrvkwc7GJ2jWIkFHVTU56P//Oi8i8KBAiJeZyKhNm1Y5Or?=
 =?us-ascii?Q?0Fh5TnVL8OEFNo2JjSYQ53FckQY9v00aSYyYO6VEzkSbMic84Oxuyx7p+1w4?=
 =?us-ascii?Q?yyQ1lY3ytEWcrdMrkdF4m3mrNWi3XDaHC7gxvYsqIc4bh7Cc1mtPSeN2yfO3?=
 =?us-ascii?Q?tYmqZhIpHIAeBgmuZflDp+DS/tWtPSYJkBF49yOrQW2KKOvtzlKJiaYrreox?=
 =?us-ascii?Q?VHO0ZAZYcipGY8sknZfIX4WUgqG83f9el2bdS/e+0cTt91byj5kC26m6GGH9?=
 =?us-ascii?Q?wM5pWuKu+El3vfgKzPycADxa2xHZ+R1n53qO1tELXKgUR+ETWdRwrmrKwCzs?=
 =?us-ascii?Q?7s70D4PxX7WGUwLqSNehUs1aLDrpAF6KOWbRf85TcaTNOZCcMTsSUFOia74+?=
 =?us-ascii?Q?EryGMtK4qRZrDQVPOFr0uMS8p/yzB49tKWpNiCnf4gtmCHAUJCIay6yhaK4P?=
 =?us-ascii?Q?q5vrWFfZig5h+iw3b8EPs2e8mYaC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?96qmSYUiFg9M9abOeRvSXIGQjhLXCab1qtg/dtsLaBWqpCJiEPdX395icdg1?=
 =?us-ascii?Q?/EGhzQbudPOZwxmG1DWv/LHaK1mtA58ztPoJ2E8D4i2QqnktpCAoYjbw4awo?=
 =?us-ascii?Q?m85fP+Bv+nG2cOS3/zG1vO4RoEESB5/eszxZ56fxEKnPsLkHHWuL7f1SgjUR?=
 =?us-ascii?Q?oq3FFmvbRNuD6RvicuC0dvXBSniR7mmJA3bqcoSDMo/+PsbJsI9RlK7xzSl1?=
 =?us-ascii?Q?mhbjrAdi47/JeoOT+V52Wmbg/IvXo2ZayVoc6JIsmRBg8EUj2wZtahXmkfGr?=
 =?us-ascii?Q?WFzT9eKvrWQsMt+pddy0p/P1JqmM3mNXx+puh9aF1UqrJvHgA+CocqZBQ9rq?=
 =?us-ascii?Q?NdsJyKEIOLHZkheUrOjGOK/QM0QZBiyx9yhyFc1MYKZzujq9Aa87RE9QAbMa?=
 =?us-ascii?Q?FD3iEHcXve38z1Wp1nbPKepU1aVrlc6rT36/+iwjHsXgSQrt0aQXJBrqrl/O?=
 =?us-ascii?Q?zV9L2edpP4Kq0YIdEbgap6KECd7NNwiePOpbMhc9R90EjAMxWryljDYwlzq/?=
 =?us-ascii?Q?l64tjGDgS+ymMPkF8hfxIRa3a1rDA+VtRqAOCCJFZ+/pDlF933c15/eg/mlr?=
 =?us-ascii?Q?0K32WBMc1YwrlBjrZbjQppDlE2yVT7ektrNhJ+7xHJEPQ/9Srhej5UJBj0eA?=
 =?us-ascii?Q?HarkqWalATp6iGUicuBWJuPr28ZCu/pBcMrd++oaU1dysNBzrVsmqpr9juql?=
 =?us-ascii?Q?IZjOcZUi+0cfytThvHfWFMIdHMtRpp3qU+D7yTyJ+qSOEz4hMb4RJaQshKXq?=
 =?us-ascii?Q?yFvb/Y6iRPJIEahMbLP1zqCDqnvLCpBDfi2LM8VP715op1Qz9wAjb03pfSp9?=
 =?us-ascii?Q?HYsNWs8IPs7fMn3bbbmbRHesgmwGuCp9SchUMjNqbsEnYknLwmjD5D54legZ?=
 =?us-ascii?Q?tuxAv68JCqlEJMJ2rLTGTuKRh/lBPX3ZRpEohwF2hJGAkat60RaeMHZGthJU?=
 =?us-ascii?Q?IV7sDtYIqZl/IqlYXn4X8JKXqHI3aQP7/sm1J/sciFQftyD+IzVRG+yyHHTP?=
 =?us-ascii?Q?yfpvuMyR0XNWJuaYZ+po8roJ3TQaiTJFHqSM43ywQ4NWlY7OlBDcXZoGpD1c?=
 =?us-ascii?Q?z5LqdSuvxVDYKq4hMRiMjGJ4arsFJjXALnBMkZmPm4I3izIQbez9xfyX+qMl?=
 =?us-ascii?Q?OZfXg7htB0M81NwMyVCANkN3nv4r6nG2WnXdt2UEF3rUh/PwEYW3CJQqnm1N?=
 =?us-ascii?Q?RyMPZ7cCECrog6mPxJSXLd2RqpVY8ytWSFyItdttX0DhkemhBQEpSgoyJCrx?=
 =?us-ascii?Q?y3/FPd8w7NnQExz1l10SS9wYcSE6wslx4uuhHbSptmM6M04KZqKaCIb2wT2P?=
 =?us-ascii?Q?C9DjaMJY103oMo0pODw+StWTS9I3o4mhL0B6f8CyUzzXu29Ltp26vzZ/8hEn?=
 =?us-ascii?Q?j7tje5bXOWjnnpRx8NbLTHxjWfmiBHb8MSG99C4bCZl9YMYyIHqkK/3+Qy8f?=
 =?us-ascii?Q?NoGVhdCRIBJP+LFjzJ8nGIvta2qRn1o+jcQXTYXm5pUuca70G9RStYySis5z?=
 =?us-ascii?Q?HbByIXOxB8FMU+sRk+BItIwkwCKnEh6DwN2CD0/MWMLKjBHdvFoGXpcCoYE5?=
 =?us-ascii?Q?vaBXo96VBCrcea/poEmiSNWxGmAPTgta+GxiTkwdcOKMTJegQJRSDv2smm3h?=
 =?us-ascii?Q?7w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c9fc06d8-7c6f-4a39-6115-08dd6b0ec2b8
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2025 20:02:09.8545 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K/8uB16E391f3VTqUn17ITCJ+tKfGcy4nAZTPO0oOxuUKzHP0sbac8nNf4fWk4ZyLS4LowCAxUvvf4dEGwqNI7Wi8oCTJ87d85nthEGmX30=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7212
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

On Mon, Mar 24, 2025 at 10:22:33AM -0700, Lucas De Marchi wrote:
> From: Vivek Kasireddy <vivek.kasireddy@intel.com>
> 
> Some SKUs of Xe2_HPD platforms (such as BMG) have GDDR memory type
> with ECC enabled. We need to identify this scenario and add a new
> case in xelpdp_get_dram_info() to handle it. In addition, the
> derating value needs to be adjusted accordingly to compensate for
> the limited bandwidth.
> 
> Bspec: 64602
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Fixes: 3adcf970dc7e ("drm/xe/bmg: Drop force_probe requirement")
> Cc: stable@vger.kernel.org
> Signed-off-by: Vivek Kasireddy <vivek.kasireddy@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
> Changes in v2:
> - Add a separate sa_info for the ecc case (Lucas)
> - Link to v1: https://lore.kernel.org/r/20250214215944.187407-1-vivek.kasireddy@intel.com
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 12 ++++++++++++
>  drivers/gpu/drm/i915/i915_drv.h         |  1 +
>  drivers/gpu/drm/i915/soc/intel_dram.c   |  4 ++++
>  drivers/gpu/drm/xe/xe_device_types.h    |  1 +
>  4 files changed, 18 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index dc7612658a9da..bb81efec08a01 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -250,6 +250,7 @@ static int icl_get_qgv_points(struct intel_display *display,
>  			qi->deinterleave = 4;
>  			break;
>  		case INTEL_DRAM_GDDR:
> +		case INTEL_DRAM_GDDR_ECC:
>  			qi->channel_width = 32;
>  			break;
>  		default:
> @@ -404,6 +405,12 @@ static const struct intel_sa_info xe2_hpd_sa_info = {
>  	/* Other values not used by simplified algorithm */
>  };
>  
> +static const struct intel_sa_info xe2_hpd_ecc_sa_info = {
> +	.derating = 45,
> +	.deprogbwlimit = 53,
> +	/* Other values not used by simplified algorithm */
> +};
> +
>  static const struct intel_sa_info xe3lpd_sa_info = {
>  	.deburst = 32,
>  	.deprogbwlimit = 65, /* GB/s */
> @@ -756,11 +763,16 @@ static unsigned int icl_qgv_bw(struct intel_display *display,
>  
>  void intel_bw_init_hw(struct intel_display *display)
>  {
> +	const struct dram_info *dram_info = &to_i915(display->drm)->dram_info;
> +
>  	if (!HAS_DISPLAY(display))
>  		return;
>  
>  	if (DISPLAY_VER(display) >= 30)
>  		tgl_get_bw_info(display, &xe3lpd_sa_info);
> +	else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx &&
> +		 dram_info->type == INTEL_DRAM_GDDR_ECC)
> +		xe2_hpd_get_bw_info(display, &xe2_hpd_ecc_sa_info);
>  	else if (DISPLAY_VERx100(display) >= 1401 && display->platform.dgfx)
>  		xe2_hpd_get_bw_info(display, &xe2_hpd_sa_info);
>  	else if (DISPLAY_VER(display) >= 14)
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index ffc346379cc2c..54538b6f85df5 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -305,6 +305,7 @@ struct drm_i915_private {
>  			INTEL_DRAM_DDR5,
>  			INTEL_DRAM_LPDDR5,
>  			INTEL_DRAM_GDDR,
> +			INTEL_DRAM_GDDR_ECC,
>  		} type;
>  		u8 num_qgv_points;
>  		u8 num_psf_gv_points;
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> index 9e310f4099f42..f60eedb0e92cf 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -687,6 +687,10 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915)
>  		drm_WARN_ON(&i915->drm, !IS_DGFX(i915));
>  		dram_info->type = INTEL_DRAM_GDDR;
>  		break;
> +	case 9:
> +		drm_WARN_ON(&i915->drm, !IS_DGFX(i915));
> +		dram_info->type = INTEL_DRAM_GDDR_ECC;
> +		break;
>  	default:
>  		MISSING_CASE(val);
>  		return -EINVAL;
> diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
> index 1334174388afe..20239d6a2e985 100644
> --- a/drivers/gpu/drm/xe/xe_device_types.h
> +++ b/drivers/gpu/drm/xe/xe_device_types.h
> @@ -587,6 +587,7 @@ struct xe_device {
>  			INTEL_DRAM_DDR5,
>  			INTEL_DRAM_LPDDR5,
>  			INTEL_DRAM_GDDR,
> +			INTEL_DRAM_GDDR_ECC,
>  		} type;
>  		u8 num_qgv_points;
>  		u8 num_psf_gv_points;
> 
> ---
> base-commit: 74f632d1bd3b90ed79883361ca25f1225c0aee58
> change-id: 20250321-tip-23d2af2e3291
> 
> Best regards,
> -- 
> Lucas De Marchi <lucas.demarchi@intel.com>
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
