Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A76178BBCD
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 02:02:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57B6410E374;
	Tue, 29 Aug 2023 00:02:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4918810E086;
 Tue, 29 Aug 2023 00:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693267325; x=1724803325;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=uAb7iXjnUmlex9MEi9OZheDbr+/VFDVpaawoOGM794o=;
 b=jY3vMMoZxG9PADG79nZybsWvrXvHrRWdvQ54L8KNBLwmo8A0c6O2stR+
 rPp0Iu45LuIb+4cIGP2WxpfUCNbxlHvxn/IJLlgKSTHnS6oFrZw/i1HDK
 X2LqTQQYi/vIyrIKkvBi2Wn++pL0aV4WcVn9llO0obUCq2M4aZVmL+RCC
 sST9CF1L+7qT45z9JF8cmtNcq5DjnGDM8qx+584Wuga0ddbT4KKup7fOI
 R867UXpdcMK7iCtF3QkizCfxfx+dVEtz3AA2G0OOEOFutBrLiGc+9ADNg
 +fTGGvryZ7/UFgtNGDm/VZyqGPCH84ieG+TMJ/G5CBoM/eqcUQMtOMAR4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="406234009"
X-IronPort-AV: E=Sophos;i="6.02,208,1688454000"; d="scan'208";a="406234009"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 17:01:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="688293618"
X-IronPort-AV: E=Sophos;i="6.02,208,1688454000"; d="scan'208";a="688293618"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 28 Aug 2023 17:01:23 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 28 Aug 2023 17:01:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 28 Aug 2023 17:01:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 28 Aug 2023 17:01:21 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 28 Aug 2023 17:01:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SBci104M8zKa0tWH9x1OpZKoRs65XhEmE+y/taMgKZsPqJmk8RMHb/mvNT3OGxR4U3oJtPdYyz41Y0DKmSUnJBwiY5xdLFJRMSNYeEz3lsfcjoyiW9xH5PiCZzJurHUWmRmL/VPuyWK4tgTbo4uYQtoZElg9/gDgBhWqjrtXMvqwIOt/MjhTpp8OimzKMgjAztEJx2tkYlSx2jCGP4+IY4NLMj3/F2zhxPCW2lkXd9Y2OTP+I36B6raedwuhA4LcIzWfB94+fKqKsz9K1g+hQUTFHpnFfrzJMmeza0AEaIW7CWjC07zQbsq+xMcefgGVqjoozuswcAj7VnHzt86/RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9rt1kuBl+jfPvuLwcku4/epeBHpTnH01MdfZuf6y29A=;
 b=ZPNy011xe6o3regvmbuP+lPpE6AykGRGHX8uJ4UWocWXs1Bnwu3wRUzZWLTXPUYd9U7kwVb5n7rEcGjEWQZPdqaLhKhCoJBKU2qVHD1TJZfXu58ieYqBhbSE8TvUUO/l0IEIRvosDnjTfzxqfShY35q73ZKhlXmmrJ/NmhGA47L7QYFcoZHUZv0stwZdlHvbCUPl/PCsFwoIe4QwgyiCk9qWGCFa5Lz4/5bbl4TEm7eUjyJaYhY0qYe0GhzrX9vvfEpMb8DzxTvuVvudQxhXT1tym7XH8dd3t6QwK21xMv61/oSKfalNSu4Ks1o9AVOYCZX5g996Xf1Fe5rSDrk5Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS7PR11MB7907.namprd11.prod.outlook.com (2603:10b6:8:db::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.34; Tue, 29 Aug 2023 00:01:18 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.034; Tue, 29 Aug 2023
 00:01:17 +0000
Date: Mon, 28 Aug 2023 17:01:14 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <20230829000114.GP6080@mdroper-desk1.amr.corp.intel.com>
References: <20230828062035.6906-1-vinod.govindapillai@intel.com>
 <20230828062035.6906-3-vinod.govindapillai@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230828062035.6906-3-vinod.govindapillai@intel.com>
X-ClientProxiedBy: BYAPR04CA0024.namprd04.prod.outlook.com
 (2603:10b6:a03:40::37) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS7PR11MB7907:EE_
X-MS-Office365-Filtering-Correlation-Id: 9873a99d-df57-47b2-60ae-08dba8231160
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4HEHSWk89fbQt0REzf2LMUXpw4sLuKoDV2cAeyMwdyMGbUvBV4+PrgFvkGHyWPlbGSdqcHHehFdJLLkO/vHvHsErdPo16Hdfc89obP8OOjtasMZOM6NbUKvL7jDG5oxBn/Vdc3wYklE9vYO4/j7vBXQA5tI2Y4LHKTQMPn5eaMJPZUbmzdwY6yHKqA+74uYQuOHIEnuoTdY0RYy5GJFxLjAUmMNpOkQzgW30Iu5UOngz3ReoSbUQwvY2DcmPvbEPLLtqbSYPs+gVy2o7qUpphJrFN14xLeMZkoD83zlpXPLqKN1SsHieIwNO45erjeataQUCl8u14TMxot5Eak5MBMM2FfMDwraq9y4t/SluJF0ALOEgCc3LjSJcxSoX+bWKMyKvRaT5D7ZFfZRrMWR7wglTptTA8V5SU8DafwXRk1uBekEpu81Yd/OtThpioeqqPvv8Qv1u7R253QjOSQGnaXLwpTHoHNN3uM9nKXL5LWnAa+Tx95+JAIzOOmzC5saMwXscZCeTM0TSWlwWuvsPpIvPs1S9SBXlQ5AYjy0IHdaONW8+0w32KgcPwOZ/PPAO
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(396003)(136003)(39860400002)(346002)(186009)(1800799009)(451199024)(41300700001)(15650500001)(26005)(107886003)(38100700002)(6666004)(86362001)(478600001)(83380400001)(82960400001)(1076003)(6512007)(6506007)(6486002)(6636002)(2906002)(316002)(66476007)(33656002)(66556008)(66946007)(5660300002)(450100002)(8676002)(6862004)(4326008)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hzoIcEtAD2SrYq8mj3eC+9oTFeyOLcqXmFIkPTDXy3vC7sSEofps8ryHCWfu?=
 =?us-ascii?Q?ffXH8qGRnO6Cbo3MUj7C8A7C4qfP10oXlCSf+lYhowchX9R3bl5svh3C8YI3?=
 =?us-ascii?Q?Y1J6gakIaITAaFK0jmEmmxgg3cwkSp2gZPMGAJax8vYtrbz3BREDmXqcb0/L?=
 =?us-ascii?Q?NUZLboxJ7G1aTbVnDXXlSTX5KPsnkldV++0lLp+S8z7h1ojmOqGvWgTLlzmT?=
 =?us-ascii?Q?5ExRga2diUKg77emXEp3qiHkVZo7T28iyZbNgANsqkFZRnoZHtjYquwMN93p?=
 =?us-ascii?Q?2eP3LclyZ+BF2YaZ/v1EUsOwpXUEIL79oQ7fQ5BhCI+A7p77/g1IZ9o1E3sQ?=
 =?us-ascii?Q?L0GognGrqm9A3jPoq9NlpwXyKfOWBRRimQaT5eXeCPvCp3S5cTS6gn2a/6X0?=
 =?us-ascii?Q?wo8q4BR27wCEYvooCb4Dhrt1DDbDAdY1XfbuMJN8thyo/CyC/QQSTSTNeXNH?=
 =?us-ascii?Q?NNQeetVSCE/2qBFWnuggz5MN4RbfB8zEzIDPMrMR7zcFQbYe1KYrW8n0s0a+?=
 =?us-ascii?Q?7HcUlkYEdgjr0wLVsypAu7nuF3TgSXGOT02BvPZwGbsAVT0+2C2FUCAaDX79?=
 =?us-ascii?Q?GPZZOf+g/kjSdOHKVUWp9eD4Yw4q0KVGBa4su48VTIMvN7tH4dh13npK69iT?=
 =?us-ascii?Q?iTvALEV9xvzMvNZQgjG8N1pec5TNMKYJbKBmgjypJVtzRVUf5PVQSSvYWulw?=
 =?us-ascii?Q?TsGeJHlz9cazCnm4EGncMJEQdpfDuAsd8SOOwjI45K0XRuca7jC+TEkmTI/r?=
 =?us-ascii?Q?zatwqxZs/rYlvenoYyO5Y5xihwgyNHhzAWzdN6CqE+Z2LklSQIiTFeI+eGa5?=
 =?us-ascii?Q?7E6JjxHnyhNyP13k50W+YEVvsGh0ulcJOIz6DGImjt6UUQWcPl1/4IligLYv?=
 =?us-ascii?Q?5fxtXtCfFMkrX9a93cIQrWqvQlw0L0vwkj68tWE5nKwt3yexNU7TaWOqkd7G?=
 =?us-ascii?Q?C+D0y4NbOseWEDqzSCCEDdHYa0dzecznGfhLxBDhHVWxf8roeDytF9ud2RTM?=
 =?us-ascii?Q?TIGJoZZfRL1BmyDiB+MXiCFJ1vtOV7M4THsbZEi9vpldsy7/vOmjomXKpCvQ?=
 =?us-ascii?Q?FEXmCWN7Ty1XKOlSEwfV/7LimU87Cl2XiWluDNcCDp6I4Koa28SDKV1Oh1GA?=
 =?us-ascii?Q?8la51jo7EdtfrInKaA+VrKsYdYH5IEs6nsj+O/rhekZSXiHWn/trtScLFUIb?=
 =?us-ascii?Q?zqVT3uvpDHa0HKE1bKcmOiDPLz5Ay8kJzkbF17UK3Os6PLvDfVSHm51Z7xqa?=
 =?us-ascii?Q?vFqcpEsq1VbLKP8IeI7Lv4pZh2nQ8Fewl1v6z7ZM3Z+9Rfrq4EIr9xBhxZmL?=
 =?us-ascii?Q?zamp2FsAhCuUcvhGaQ+qn37loFZS8B+v4dVhvPGSlzWWUUqXtIFHs4BJVaQS?=
 =?us-ascii?Q?NiRGqSAcZxPeS2tylSDE3Dux51r5oolzOO9ApJOKOf6b4sjnSPmLzDFDLvq3?=
 =?us-ascii?Q?7hTxyfJ5fJOYpNJ0rhOwT+15OAIu2JFHNaZinhjC2em0pXtoMIK5JlR+i98/?=
 =?us-ascii?Q?W6hDV392u7iJOb9av0ZckjhBr74bITLBycpaS8ZkawpAMWLOl9zewS/Ilxfd?=
 =?us-ascii?Q?Cmv+tR5BEfAwLXJ3lDCbcMSm50AgQO45xVPCEmRz6fDJKwQuk4ndLduIeyBg?=
 =?us-ascii?Q?Lw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9873a99d-df57-47b2-60ae-08dba8231160
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2023 00:01:17.3891 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 99YP62Esj+I565ANQwjgKbMKJY91Nmhp/uaZkxQuoEHWAYTbz6gnr5wFmHfK3GMc8ntijpk6jUat2O7naecYuOa+HnzO5bvvkU1laBKF/tE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7907
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 2/4] drm/i915/lnl: update FBC
 debugfs to include plane information
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 28, 2023 at 09:20:33AM +0300, Vinod Govindapillai wrote:
> In future platforms, FBC can be supported on planes other than

"future platforms" on a patch labelled "drm/i915/lnl" makes it sound
like this is something that shows up beyond LNL, which isn't really the
case.  The "future" is already here, so I'd drop the "lnl" part of the
subject and just say "With Xe2_LPD and beyond..."

> the primary plane. So update the debugfs entry for FBC status
> to have the plane ID included.
> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index d36499d7e0be..45e205a0f740 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1837,7 +1837,9 @@ static int intel_fbc_debugfs_status_show(struct seq_file *m, void *unused)
>  	mutex_lock(&fbc->lock);
>  
>  	if (fbc->active) {
> -		seq_puts(m, "FBC enabled\n");
> +		seq_printf(m, "FBC enabled: [PLANE:%d:%s]\n",
> +			   fbc->state.plane->base.base.id,
> +			   fbc->state.plane->base.name);
>  		seq_printf(m, "Compressing: %s\n",
>  			   str_yes_no(intel_fbc_is_compressing(fbc)));
>  	} else {
> @@ -1910,10 +1912,16 @@ static void intel_fbc_debugfs_add(struct intel_fbc *fbc,
>  
>  void intel_fbc_crtc_debugfs_add(struct intel_crtc *crtc)
>  {
> -	struct intel_plane *plane = to_intel_plane(crtc->base.primary);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	struct intel_plane *plane;
> +
> +	for_each_intel_plane(&i915->drm, plane) {

You can use for_each_intel_plane_on_crtc here to avoid the pipe check
below.


Matt

> +		if (!plane->fbc || plane->pipe != crtc->pipe)
> +			continue;
>  
> -	if (plane->fbc)
>  		intel_fbc_debugfs_add(plane->fbc, crtc->base.debugfs_entry);
> +		break;
> +	}
>  }
>  
>  /* FIXME: remove this once igt is on board with per-crtc stuff */
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
