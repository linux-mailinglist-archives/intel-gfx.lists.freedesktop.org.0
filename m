Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FBC9A4A67
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Oct 2024 02:08:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07C8610E9E1;
	Sat, 19 Oct 2024 00:08:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EOUSfGBf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98FDB10E9E1
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Oct 2024 00:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729296532; x=1760832532;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=z/DkxP8HO5+mhdIS0WOMujYbMisbj2wlxlMX2AIacbw=;
 b=EOUSfGBfHZSpfa6/JSbYejFHcDtzF7RMmoOxSkPaeLYA4P1KhvWWhEsN
 NHlMchDoYStSEioNIOlH+teHus75MsQXFmzBvf0zsES78Furegdx/PMOk
 5vtIcQN8eCXDUzNQ1EEM7QX6HpX1F2ppfMMInR5JlPdydEpaYpoVKErl6
 a8fWqNqOn8W8TWXV/i7s6ThCgnnSGZQXCmeJ7L8KFZ5Q1TRBjxlJp62CR
 Ju4Ssjn6vdsNGq3EEZDgxwBf0iKB35syKjq0VyZYatMZIp/vlLxYi8gah
 Vk8N4eT33Z4F7ibaz5x8aoY90EPX9TCshfCbWEr4PvreCfvP/lBtKujkI w==;
X-CSE-ConnectionGUID: mkfjbgjLSGKJIWFrFMDs8g==
X-CSE-MsgGUID: VDp91bOBRM+xkmFDoVss0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="46341141"
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="46341141"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 17:08:52 -0700
X-CSE-ConnectionGUID: tvzbNOp0T7+6s+DpLterpg==
X-CSE-MsgGUID: ZOUDTinWSomYQLyEqPjlqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,214,1725346800"; d="scan'208";a="79420517"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2024 17:08:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 17:08:51 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 17:08:51 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 18 Oct 2024 17:08:51 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 18 Oct 2024 17:08:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fQUPzxk7ax2HKOfStQMxvNQ5ci4FfASDI32/ao0mDzobzatZgAazDLxkqy9DRTEa2eeHdExgModXdFuWSbFQ2HEAOKQB+JuFeVlpyc2wci2V9Kdx4Zu4sG4yiUAAnjHqmkiXfXwIqxTXRoza7MqRqqiuK/pnbQcbQZ1f6UkzAatGyuGsDV9GHQK4Fjy2shIFdVnf+EKXSSix0JoHVxxmXBSVCfbsQgxqbw4vQiclZeXWwWm6TMws0FmtkyVxHEL8wLvhhKLvaYRIaPH1HYzQVSNhcr2vYnPDixfo/wM6V/0i29ZyCK647anUHFnJxD79KcvZr42STuIUJb0sLJYXlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TvgoZsozPxWetLQPgZPavWtkukgrCGXACJB2lhYXk/I=;
 b=LRJ0DS1dSYewjRGWG214pOEs4vQBi+jqT0hayapF1M17J6xytNnMVGTmI/m7ypG3aiMrC8jtX/QT1RTSyudr9ERVqxQszz+fHycaC5SaY5uVUOBF2XkSpLIc3sRwFlfLRbn7gPekNydB4dsfgRnFPamBnTgpk5f5+RSG6FdQWmV7kKCnS+jDPimhQ/zApEqUMsGHUrfY0nk7Gs2XwGU5Zf8VdcuYigYcIVhJnCcvrzk74zq/yy3BmrfDd6sBbc8uUxxq/vLrPZX9L1y5oinu+nZ/DIESNgVPJAwYXLEXVih7UGOJEJV/JoWkZ1gY02PHDv/ui/pMRFrLaM9h8iBKhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB6454.namprd11.prod.outlook.com (2603:10b6:8:b8::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8069.19; Sat, 19 Oct 2024 00:08:48 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8069.024; Sat, 19 Oct 2024
 00:08:48 +0000
Date: Fri, 18 Oct 2024 17:08:46 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Tvrtko Ursulin
 <tvrtko.ursulin@igalia.com>, Umesh Nerlige Ramappa
 <umesh.nerlige.ramappa@intel.com>
Subject: Re: [PATCH 4/8] drm/i915/pmu: Rename cpuhp_slot to cpuhp_state
Message-ID: <20241019000846.GL4891@mdroper-desk1.amr.corp.intel.com>
References: <20241011225430.1219345-1-lucas.demarchi@intel.com>
 <20241011225430.1219345-5-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241011225430.1219345-5-lucas.demarchi@intel.com>
X-ClientProxiedBy: BY5PR13CA0016.namprd13.prod.outlook.com
 (2603:10b6:a03:180::29) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB6454:EE_
X-MS-Office365-Filtering-Correlation-Id: d0edc95b-e834-4e18-3706-08dcefd23491
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Ka4GkEYvUZ2B9SbcO6rI28DlJ9W5ye3ZypGkriS4P87Yc278ZINTYvRB0VlT?=
 =?us-ascii?Q?KaCTEaYGY6Qq94221qXTssgOd/Pb5AGMSR1Qv4ojWwqusfuy+YAPmz0ENCqi?=
 =?us-ascii?Q?JNz3ejvdD46bYOMR0tGnLe0b7MO2xakDLt0wJWzGzVLvv7EE4R3JNmi/um0d?=
 =?us-ascii?Q?wE1LC7P1pez/m5pSNOSSzonvDXof9qKkxPXajEvvLga45tV5xizUQp8Pf6Vb?=
 =?us-ascii?Q?zj6DYGMzTAr+JWqwbmZS8jGZspFuYaEN8F0tIJLisKoIgnmSPnEZzCjmJrne?=
 =?us-ascii?Q?V7BZ+WAUJmawc5dlMKi8MKuynvfEHAVRTJiaPVdIFKbL6gHll2GO8iMBulqm?=
 =?us-ascii?Q?Tu0SC1Qhv4kRYAQs+ZyPUfdMkn/9Bpb3uL6HHlRxuCYGlSOAQ6PhrhsrgHAk?=
 =?us-ascii?Q?K9+cxUWs+5Uu21HOhaAnDB6oonXucvS90cHDyYhPLaRw9ddZXzoeFudfYLy+?=
 =?us-ascii?Q?mDRCUysDjgCZ48wYuOw2W4cMym4v87eBwDq/hFICBxXnCmEFXTfc0r4yeGSr?=
 =?us-ascii?Q?9nGK0Nz+ufDZEx/S9kT5F7R+PwH6pKsZ3XpPOQZhJ6isqloUMtfdA49/9Rgh?=
 =?us-ascii?Q?EkHhlIGwRkVkUKUZe8WBl4zsaL+WSZ0rhFnDPjTcqzOEL8/qcFWbRJx3d1Bt?=
 =?us-ascii?Q?BQSXLY0dczP8iwCT3V7sVey0aBeDG8+250CqaiJS2XILVsGIpG+EUNmGZKPZ?=
 =?us-ascii?Q?XvgR4lsWe67oMZNZmNvy6ATE9HaVPlf5mqgbZUDU/1S0suGAk4yvzFSoII4K?=
 =?us-ascii?Q?r+SM8wVg84xgRjiSwpNjL5gbADWWB+5I4jTWydl+eruf9yU4CepSzHTBAtzD?=
 =?us-ascii?Q?C+fuIjAcWegEuWl6kAY/++AXCuYWtP1CLtovylQ3tp07CtJnjmiV6VtMzDT7?=
 =?us-ascii?Q?t3o6YepKemv+EmDlSU3WlAGQDe0p5CshZi3o73Dta6T6A31NHOpo58AVY/aE?=
 =?us-ascii?Q?4SemJi2ZBTgMC+aTGmoQ7Egwc9HpkcC61gU7kfdnM6C/psJPw7bMYrW0lB+n?=
 =?us-ascii?Q?S7C7/DR5d0VY2o+WbJK2gKFBKHsXrMqTaUL+zEvezOmFuMCNbPzCf2c+xE7d?=
 =?us-ascii?Q?+yuMYPoTA1ffesFUtIHovPak8IOTKENu50ey2US6WFZFCveJ7fNFNfWYHAf4?=
 =?us-ascii?Q?a3rJkDvNstfOOO6Ej+YCRkBgYwtDwz+LSCBowAtVHZOzgqI+3wRPc9aUtrZv?=
 =?us-ascii?Q?vCbsbitPb6OD3BNHaID3G7bXtHV3ZbznZHWaRt5oIdwg1vjRxysX4BnWPyTU?=
 =?us-ascii?Q?drZC/00bfep8ChnSnX1GlfLhAqlfzC7/ydYwss7YZfhwqhHN54c2nJAiberD?=
 =?us-ascii?Q?ZhdMFncFE8C4S2qvjcbz9jGh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SZGKT7Anq7Webw6mFPPX0qsUlLs3K+ab7hzdPaMJw6WL5beIeFQdKfjJ9O/c?=
 =?us-ascii?Q?nK9KlPlSW2P48Hx1mff5QhSKRTgprYZm96IiWfCJCKGghKUJQeDLJOHFUKfZ?=
 =?us-ascii?Q?tC/rRB0MvaNsdlpSBK554aQ+RsucwiqIAMkZNNmjE1uiJU0YEb+pRg2MfTS6?=
 =?us-ascii?Q?QYh2Q/F5C/2W95kTglCoWp0eDJfRXoRccv00jrfUBggfQ9sa/eYAm4M/M2qK?=
 =?us-ascii?Q?YmuR7uHX9RHpi0WQoi8Lu/+MKPi72QuBpDOTeduwCgTs4fCnoCBoxBGTO+S/?=
 =?us-ascii?Q?XZ8qBiRgXnJNAk93/FwcMfwo1yIP9g7yMYybb6gtCU4Kamx6WFyqmkIO817o?=
 =?us-ascii?Q?5GB+7hj1aNDLFx96bCBJ62erdec0rUo6s6RByS1GX6zf2l9A9iqKVbiZ6BzQ?=
 =?us-ascii?Q?psAgHwEPLZZSugr6E/F8/xdRP20LyZaXt0GCHbEWlz4tHZ/jBsR8gUlT1sbI?=
 =?us-ascii?Q?+erX3HVfVoM1bii38yPXFUsEYOMikgqlJ1KISoIWMR2eFk/hc9RxTFK1zBMP?=
 =?us-ascii?Q?DMPlDPKC6BT1Jhaykhg3mK3dLALzInvtl5M68or3BGgU8cZCf16EnBc1ZR52?=
 =?us-ascii?Q?qFWj8uO+BlpTzUWBuL2jGhlUonXXbkM8KJXpRoEWZTU3XkQKCbeHK/d6b1Ko?=
 =?us-ascii?Q?SD3wlwSR/S0wOmTSqsJd3RvwaJI0LymVFmQN/AjFUwz0cvbgBtM21AINW335?=
 =?us-ascii?Q?URLsEA0E9XfjaKyDnYkEmQYM/iWYy/EaofxJqxD4dbIZu4dslS3grEKLn5lR?=
 =?us-ascii?Q?+tYogP17b+8IHLVJJfzthg0PNwEon6rgrTy3yc38/MMdtI0XL3WAc+48bKe1?=
 =?us-ascii?Q?hj6yzZ90Ks0UwWRMVs9sdMeVOoGrssU8H1ZOaowtgo/jA0jBam5NbrHfVAR0?=
 =?us-ascii?Q?OaTQuuGIlnsPH8+Thqgw0bJOaML6GS/9oyK76oNCwpX5l6mI66UkXwCNXLqy?=
 =?us-ascii?Q?w5TJlM19Zd3HtrIoqTlLvyM9+yY4RlxdlzJ/zPAqHWiwXInVlNetamOrc4lT?=
 =?us-ascii?Q?He1mM4mZx22Eg0qbnbH7D+LpVwDDZLH1/AHEmspyHx1Hk7HmMKpgwZT5HZtF?=
 =?us-ascii?Q?BkK7mqOYz+2TKOqUTWTbBup9SVAiq6WVMZ/o314X/2cnSEfuoip9/8C3DDFE?=
 =?us-ascii?Q?MLYo3UtgzlflbgE5CFfCFGgJiA1QYnHPobL60Bu7oYdFS8zdFlQgRASHY+yM?=
 =?us-ascii?Q?QTIbhwaDltZDG94ybDjI9gyQTW1PLNdzfaWJ9AP2fxHyroyKcPMFH6YNiK0/?=
 =?us-ascii?Q?LgfALoZJSZWuqXvn3o0tuU3605xSlwZu2aok87QJek5i6JQ5NhJB9kqtc51H?=
 =?us-ascii?Q?MfPciT8H47Oa6ImbZDdlLIIlbJ+y16PJSn7sKUMZ/S028lonrvRrhMzS95uV?=
 =?us-ascii?Q?lDiM2nqUgVhHbdSHPjb6Y5By1dxSSwYMPPTbHmPv8inW4OJdvZqagXvZjAxo?=
 =?us-ascii?Q?Diq03c8mm/6vDY2/GjoqGCWomIAbLYGaJZiLS8W0kxCmWj/oV+gqgFCMy003?=
 =?us-ascii?Q?L9p8lJgk9Kxzm/m3zjWEoe1PtUYtx24b/qlZfwZW5/CkqCm8Dx1JDO5n76mf?=
 =?us-ascii?Q?ELNzTj5T2NZ85g7t1EEL+ThhA7f7XsFDbVWH7KAEX4aWcKgMaz+mlixWXDOG?=
 =?us-ascii?Q?GQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d0edc95b-e834-4e18-3706-08dcefd23491
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2024 00:08:48.5514 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cLaqcr01W4JNyvAk4Mt2yFRgB/5axMR4uipk28BhMpo88FNm9JOdsRK6g491PPbitbvOx8i90N9ztwZrrzeclixjyG9zDhiLwwKQBhfA3pk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6454
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

On Fri, Oct 11, 2024 at 03:54:26PM -0700, Lucas De Marchi wrote:
> Both the documentation and most of other users call the return of
> cpuhp_setup_state_multi() as "state". Follow that.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_pmu.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index dc9f753369170..2e435f51867db 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -1211,7 +1211,7 @@ static int i915_pmu_cpu_offline(unsigned int cpu, struct hlist_node *node)
>  	return 0;
>  }
>  
> -static enum cpuhp_state cpuhp_slot = CPUHP_INVALID;
> +static enum cpuhp_state cpuhp_state = CPUHP_INVALID;
>  
>  int i915_pmu_init(void)
>  {
> @@ -1225,28 +1225,28 @@ int i915_pmu_init(void)
>  		pr_notice("Failed to setup cpuhp state for i915 PMU! (%d)\n",
>  			  ret);
>  	else
> -		cpuhp_slot = ret;
> +		cpuhp_state = ret;
>  
>  	return 0;
>  }
>  
>  void i915_pmu_exit(void)
>  {
> -	if (cpuhp_slot != CPUHP_INVALID)
> -		cpuhp_remove_multi_state(cpuhp_slot);
> +	if (cpuhp_state != CPUHP_INVALID)
> +		cpuhp_remove_multi_state(cpuhp_state);
>  }
>  
>  static int i915_pmu_register_cpuhp_state(struct i915_pmu *pmu)
>  {
> -	if (cpuhp_slot == CPUHP_INVALID)
> +	if (cpuhp_state == CPUHP_INVALID)
>  		return -EINVAL;
>  
> -	return cpuhp_state_add_instance(cpuhp_slot, &pmu->cpuhp.node);
> +	return cpuhp_state_add_instance(cpuhp_state, &pmu->cpuhp.node);
>  }
>  
>  static void i915_pmu_unregister_cpuhp_state(struct i915_pmu *pmu)
>  {
> -	cpuhp_state_remove_instance(cpuhp_slot, &pmu->cpuhp.node);
> +	cpuhp_state_remove_instance(cpuhp_state, &pmu->cpuhp.node);
>  }
>  
>  void i915_pmu_register(struct drm_i915_private *i915)
> -- 
> 2.47.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
