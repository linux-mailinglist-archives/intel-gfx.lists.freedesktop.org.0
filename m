Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF8E696757
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 15:51:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BEC010E8E8;
	Tue, 14 Feb 2023 14:51:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 108A410E1DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 14:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676386305; x=1707922305;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rAr7VxB2PYcRzyqVIvBdEA+neGbvvw+IMxRh/5OrIQA=;
 b=BjKFGNqqd/3Z6eRH8M4w8zVDlenmGilfYEB5gVNwp8eRf5FlnNFgufyZ
 /onu1xlZlLMIahz0xOyOt4A3DN0OX0YpIFCgXAi6jWJ2dZWoZTYRul+MY
 dvFjG4iUEK3lJlokh4mHb5GN94oWVsepY4Ct+gxJDUj++1cvgAtWYqs5q
 Nv/72oSlFM5UsMcQi9rYPUM48Uf51TE/cS1ls1w8T2yhM6t8rluB2WM6h
 UBlqNhU3mHA49srilfm9IvnVW6QlkwL1wHcERABX9llfM3em7FUTcE3kB
 /uoBvhCBeWhurbbGovGXwC0ZBmfFH5/270VEc0H2LTIwABpWEgf5IjNOD g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="332485024"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="332485024"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 06:51:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="646789650"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="646789650"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 14 Feb 2023 06:51:44 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 14 Feb 2023 06:51:44 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 14 Feb 2023 06:51:43 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 14 Feb 2023 06:51:43 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 14 Feb 2023 06:51:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VO9hA+EWXAHwcRX4AWk39ltojwREg6x7T9CfSdGOsa0TGlfwiFtnEtoFrrmpB8VTdB+H+VFy7rgG4TT3gGbSyBFNuC5V2mOri/sSbHHzr9U0TW0NGMdrsmY8hjxEFpGt76xyhMLc3iyIUuJnKMhtMnWpbGRAC9X5bjGl5DnlyB6lxu8wuLje3Yx675VazjDqIHTg6b6qqLVD7vpRDOA0rDaqlu793X6+XdG+wpVUXdqMwtZpYuPYo6eNcnotZAEpk0Omf4WBcYc8WSqp0j7gNwWsyExwoe0kglGM4IT9zFRyEAa6Q6gRi+6slVgZYDyOJhYgMg/d7nZc7nWa9GNemQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TdUpU0Cj1wZSSDpU/HyWHZQalqtReSWT68aIySBqJRk=;
 b=DlVkbICeoRvpPQH4oCHWTN8LXGcH2ohHVTACpMRn6lnZxmwpe7TMEwX1KQC9srhEu3qg1A8DKHF1dsM+YHMGQcTgQkYbiWTc/Jgkulf5OfMvnbY+VVDpU89ZJ/JK0oeP+7sd/cHO7giTLgzR1VwnnTr0ga3novECsu1vx5KK4QHoLFUpT6xzj0YknWtBZDwtjMkrksgj+O2HdpBT03G5dTO5AP02Ts5S1IKwVriztJQe5k/ZM72iAVJxJpicTBvtfg4CI2tEo1D7EF94x5aBljKPHe9dIlwQmzOZrWcHeMPd8it5HVmTR1EF2r034VeL+PEe2FIdpSRGdpvUw2kSOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB5311.namprd11.prod.outlook.com (2603:10b6:5:392::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.26; Tue, 14 Feb
 2023 14:51:41 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6086.024; Tue, 14 Feb 2023
 14:51:41 +0000
Date: Tue, 14 Feb 2023 09:51:37 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <Y+uf+f5opx8+g59V@intel.com>
References: <20230213210049.1900681-1-ashutosh.dixit@intel.com>
 <20230213210049.1900681-3-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230213210049.1900681-3-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BY3PR05CA0027.namprd05.prod.outlook.com
 (2603:10b6:a03:254::32) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB5311:EE_
X-MS-Office365-Filtering-Correlation-Id: 3210f3e4-addc-4be4-1f93-08db0e9afb6c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TqX3QX+ITADCwcjpQb53a6LVxAYuLCX65Y/NXobc+AJVoHNxTjtTrlKlocKaGbA2a6tUWj1ePPnF9NV/HmS82nHVdzrIiotDRRh5cVpNBC6XGcxlx3zB1DaBOQ9DFNHR+ec8fDE/cGlUYrZzrtfVOCUI1G7n+OdLwLVFa2ZrZ9eK0CGBh0iShEmTobV3R6+tOWdLO0zDaAMezBuyKz11E473x9JJdNSKpFuAXT/nxAf+yU9xJI7fWk/X6/TQ0foZYFl+v/QJ1i1eB0Q6Tdj1BpY0HWu07hHwB+tem8kDq5cEQbjZnx2ojw9faqwch8E/Cbu5OVQs1YlGLqDTeZWOXaG+JqGc8Tk2AmcMWA5Z9Gz66Os0p9A9nSbBAycueLPozPf3wwds0NjfApAs56RjC89iOj65wtNjtf7QgjRfjqZk8E+QOzo3YO5nAdUHvgRXRy/livd8aFZ3V9l47DTUOd2zGls3mh4srxHGicLbf2SU46lo6xekoy1huuE2tRj5jooAidh1jJSyDLoem9btraQfg14vGE7xPlHzWXZAtxMwatxptv9US/RSVGAdM/lKYTTpeDzWWteP5+OOWOAW9PFgrJJIChx41Ua4aw2ePhN7WHRnGCvXF283NqfC3F3Rc2V3dMqsL6iv22NRDfADSA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(136003)(39860400002)(396003)(366004)(376002)(451199018)(478600001)(6666004)(2906002)(26005)(6512007)(6506007)(186003)(82960400001)(2616005)(38100700002)(36756003)(44832011)(6486002)(6862004)(8936002)(86362001)(37006003)(316002)(5660300002)(6636002)(66476007)(66556008)(41300700001)(83380400001)(4326008)(8676002)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kK42mj3JQPXpa1UST+IZAFDlzUWVSnIner5SbEAqH9SO0Bt0Q1AzXrFKo9W+?=
 =?us-ascii?Q?g+U1RLHbb33Fu6/47SG9ZQkPUPFGBOPzUVUit4wAjBRveDFq6Gkaw5cRZpLi?=
 =?us-ascii?Q?+ucTA1gObwnExXECWQceEX3xkL6uNtJ+KziNQA+y9gCDW2BzZYdPUfGEAy+0?=
 =?us-ascii?Q?pb+Dy2OSP/Qwz8naVkLQOEnciIa0w9ui8cKW+tk/WgR5Bg7j71IBNY93TzIx?=
 =?us-ascii?Q?C9DWefTJPAO0Zndl6yt8jShgWNoyNs2rkNbJQB9o8UnpyCFKYoMt6cjg76I7?=
 =?us-ascii?Q?Lz99qbg7eXVk+UaINI03HGt4a8pfXmvsFj5Pe46N3Zbslmn6jaPcGqpT+23Y?=
 =?us-ascii?Q?FEbRYV375YIQjWWRjXnplYu93qrNybERVBBzqEV1CEFIWFwgbsOOsCW3hS7a?=
 =?us-ascii?Q?S06rGYxyg9V9Wu+oxNSkbgQQfYGVcc0LmymcJnb948HEkNiKwD4aJEZUXYwT?=
 =?us-ascii?Q?C6mmXTkqcggH5JQH07yW7xJRMyCgkSO5PSS1CvKkz+O4goOc5CKAUJsA7eBx?=
 =?us-ascii?Q?azcM8tEAS1EMxd77NTWs4G9dwuNgqpS4xZ+JuoFhY7/MRVlvuM2RgiU6j/TF?=
 =?us-ascii?Q?d1HPY/wW3vfvZ/vNhWtjXN5MywrB4krms1l8MeD1X4h/DVhlN2cNLWlNUe7H?=
 =?us-ascii?Q?oJq3xj6L3y/JpYsGnK/G8DjgsVAQpz4Bsa+4dBtLuPIFsVoKM9WywOCZoVVr?=
 =?us-ascii?Q?JsUmeIG+8AwMLhg6ElPlGnNP/ovjlWGDc313JsgEYWa9Zb3k1P+k6DU3BIT/?=
 =?us-ascii?Q?Ex8dc0gC32fYVfxVsjtJ+bIaTDvJzBBcFy+Yh7fnzNvoo+tsemoGkTnI21DP?=
 =?us-ascii?Q?xIjCbZIagu5ws5cEJ+0UyJCTBe+aKWigvCdUGebqgMDxuH5SirLnvtXV2WSU?=
 =?us-ascii?Q?COF9yylAuSAdrR66ZlAyyIBQkEc8kqJUcqyVh30VOACHISD6mvPGfjTWGh8n?=
 =?us-ascii?Q?iLunSn8HCDfcZVNzgYgDM9EO249ZwpUGjclSyq0N10+QAEhrzlQFNY0eKqd1?=
 =?us-ascii?Q?AhhryN3M17tiDY2C2q9wpwFVKFKDYmKdJgTc1uwx4u0yzzZtppDsCDHeQBn6?=
 =?us-ascii?Q?qTJ2aCfN8cUctR4IqVzsvmr0CTDn/gklVeeMLal6muLIF64Jw7LhH0KafzRz?=
 =?us-ascii?Q?Yl1AaN8d5QyCwFLyuY4aWpj+rtlUFSXKW+Tyc1fkDgTDpMmV5ErAcWTQwvrB?=
 =?us-ascii?Q?XrAu0zuwHO+BUkh+vQvwgHdsEcbTRVqjUqp1mJqDBWNvmFBcY5mVuMjGoXoO?=
 =?us-ascii?Q?ax7iWTsndhoEUi+SrdrosuQI1aeJmERisHzxOktlLATZTJQufMZKlfsZLPTP?=
 =?us-ascii?Q?pTmtVHXqxP8s7Julw1XTyqjE9wyq8DZ11yF/MzvtwVkuBRyvPxgS2WwSsZHh?=
 =?us-ascii?Q?MiuMip1N8R0uhn+2nv/XBwl7alsTDeGoYTi9GtfIQ6d51NYlRhbr9N4PHgMX?=
 =?us-ascii?Q?MBKSfoAsOw8NgpH+WS1CyZA+ClvklNUkYIQXZRmYJmMWHdmku2A3L33lPHqr?=
 =?us-ascii?Q?CrKNM/qIhuxNWB+uoDk3w4o8XbIpcPixaZg/sXm9JAgjE+GPDeeEvEWPRr+v?=
 =?us-ascii?Q?8RQl5av49zBeaN0C7lnnLaQ+Sf98Bd34RRtBW2YO19ycGlvyOw/y5BdilCyi?=
 =?us-ascii?Q?Zg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3210f3e4-addc-4be4-1f93-08db0e9afb6c
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2023 14:51:41.1788 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Nqw8B96ryZPulRWcta9q/tVnY7TCl5U1271eqNTjgINBKOkMqhIHXCvSZcCroAx5ISCuJPM+D319FuMK4fowBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5311
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/hwmon: Enable PL1 limit when
 writing limit value to HW
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 13, 2023 at 01:00:48PM -0800, Ashutosh Dixit wrote:
> Previous documentation suggested that the PL1 power limit is always enabled
> in HW. However we now find this not to be the case on some platforms (such
> as ATSM). Therefore enable the PL1 power limit (by setting the enable bit)
> when writing the PL1 limit value to HW.
> 
> Bspec: 51864
> 
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_hwmon.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> index 85195d61f89c7..7c20a6f47b92e 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -385,10 +385,11 @@ hwm_power_max_write(struct hwm_drvdata *ddat, long val)
>  
>  	/* Computation in 64-bits to avoid overflow. Round to nearest. */
>  	nval = DIV_ROUND_CLOSEST_ULL((u64)val << hwmon->scl_shift_power, SF_POWER);
> +	nval = PKG_PWR_LIM_1_EN | REG_FIELD_PREP(PKG_PWR_LIM_1, nval);
>  
>  	hwm_locked_with_pm_intel_uncore_rmw(ddat, hwmon->rg.pkg_rapl_limit,
> -					    PKG_PWR_LIM_1,
> -					    REG_FIELD_PREP(PKG_PWR_LIM_1, nval));
> +					    PKG_PWR_LIM_1_EN | PKG_PWR_LIM_1,
> +					    nval);

This patch looks right to me. But could you please open up on what exactly
failed on that reverted patch? Why do we need to set the bits together?

>  	return 0;
>  }
>  
> -- 
> 2.38.0
> 
