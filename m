Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFCB8A85F5
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 16:31:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABCBD1135AF;
	Wed, 17 Apr 2024 14:31:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bbAyEm/H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9429A1135AD;
 Wed, 17 Apr 2024 14:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713364301; x=1744900301;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=f3eKPM2ipzLSRIRZ2i4qYLvj40ohHt4fSxir2pnO7TY=;
 b=bbAyEm/HY6MQbcmL23HP2m/LDzpS02EczjGFw57FJKPoprur8RbmkqM+
 eaDF48LYhUgoLeweYTFOxt4Fx5XJzPxTH+9J/jHYSvXrySK4L1vdz2/xK
 YaBW+HKtbBTTuhBNBtM3GxRuqE4QU4MIP8vdhGs4Wd33f9bQjCjPxNBx9
 m1LzES7S99J0f1dQxSUl9+2bu6mbwlfoXe6E5yD4aWG/9X6VbKuJuMWHS
 55lIXESViZ/FUOmk0HDUUnTz7xjpcbIq/LHWr8SBBZUjQZGcrD+HSR3C8
 lptOmRJdHFD6lXjKcFgb6uHlIdbVox9OnDxHir1SWY1xrtqYmggshCTeT A==;
X-CSE-ConnectionGUID: D+jHWanZQ/CcY17GiFGwuw==
X-CSE-MsgGUID: Ljv6/h7dSLSqPEXybmOkIw==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="34254643"
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="34254643"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 07:31:38 -0700
X-CSE-ConnectionGUID: MiZ2ciGeS0+KzJB3m8FRRQ==
X-CSE-MsgGUID: 9UlQrezfT6KPpsPGilNThw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,209,1708416000"; d="scan'208";a="22712911"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Apr 2024 07:31:36 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Apr 2024 07:31:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Apr 2024 07:31:35 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 17 Apr 2024 07:31:35 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 17 Apr 2024 07:31:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cy/KxfnrR85gCs1B1R+EFRIeYErtXpwEl9MSUD3xCeS9ALDLVj4rnpa9EfvDH5t2RPkjLoVJ1RORNqY/5lYkTAh6LgjD8o7w0gLgKr0i+1swDaf36X/DzoolVDRiKDQlTVevLG+d8sYpTGl8AU+oOMhwzzmUWVzd3zV2ffm3hTPiUnrFeZOC+/kIk+ODzZxGYktalJnDDeLs2R2WMFxCxwZrpXrEZwuDKZnf6Yys8VU8AtXYHhB9S0F3Oejexh9I+Yj9pBHpl1uryHN7e8F4e7VmmReiicOpomiDDz8ONWfEEf4h9bk0v+m0pxm7Kpp+VDMdcXdwBzy/6KfQ+Np5Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w2aS9XuOn4zNA5XPNoX5DmvRhSMQ2bzIftX6JEqFT6k=;
 b=GHlTyLySf7zJVTBCo0K5ZGKbexudGZSsMWdLRC47CS/39st/W5qzjEcdFUa2jlj9kD4tH4J7ktONklDIB5urB0oaKhdvoYPuocurIn8BPamiSKG6XEJ4X9byGdsw0ztZ2dekjlSrMayqRyVxyyZciXMe4+KiBtZtPrmLAJYH+LkzsppaPC6UePyupaxx+UnmUysNTb011EhUHTFVOW1kQH3dtEvSrCFFBw5YLjnmDk1q7J7MCvflsdF13WWsbydRSjKg1xft7842y4JZJDMfqn80BRyXe6/X3RyaE/8sNf0x82UsYGlfkkXf0JwP1h1TkJCfiuZ5YmpaAdhE0Mu5Yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB6793.namprd11.prod.outlook.com (2603:10b6:510:1b7::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.39; Wed, 17 Apr
 2024 14:31:32 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7472.037; Wed, 17 Apr 2024
 14:31:32 +0000
Date: Wed, 17 Apr 2024 10:31:28 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Luca
 Coelho" <luciano.coelho@intel.com>
Subject: Re: [PATCH v4 7/9] drm/i915/dmc: convert dmc wakelock interface to
 struct intel_display
Message-ID: <Zh_dQKwAERyclZYy@intel.com>
References: <cover.1713358679.git.jani.nikula@intel.com>
 <3c260bbbce0af8714b07157dc032b038efa3bf1c.1713358679.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <3c260bbbce0af8714b07157dc032b038efa3bf1c.1713358679.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR04CA0018.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::28) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB6793:EE_
X-MS-Office365-Filtering-Correlation-Id: ff8f192f-2c2b-42db-16e6-08dc5eeb13c9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3nyWNstGOQt9a0QbI9nHF6/3gW9MvKc7dGv03KZ8ATYWsTVro2F3DFozGj2N3XEARbJbv3DIyKGKRP2Vk9nP0gvtKGGcUJlZDPZDKqefJFTD5UjztDcYjf7zkfFy3xUv5RmTZOX2VUN9TI+Y4ihgIDhIS0u06hoHmHn+w8rdOp8HCQkCtrTCynNzuhObKRs5jr9HQ6maY9TZZSsCtT3UoKrbuTGQh6Et8tqNLPqWsaCnmFpukhD8wxUnMbPK8ZEnrksUmY4dzLs7VvCsRuwso0HEVb8y9kP5AB5mpjkxU6KfLDVi6MQY8SRf0fKpBZfwsRJHXlPxnkOGZqGc8JPCm/owp8GDzZOv+IWnOEJOn2XRS13rwjTzaHUuk0T80WjubKx62C5n3kDnYW3ZeU8liQHDpjEU9o/eNf4dNSpqihzicMwfLaEEI6ZNF2UARI/OXwT3/3oZ/s0k0XvLDj43mXAnvrmBMCrfV3QQcRgedmcr18iMwL3s6zW+WabZdYRS1izIdkjDs98RWlA14TpQq+UYCUVvbwiYxlo+4sWOM8QBV/Rm8iP2HOhSQxDf8QrdZckoj711aEqptHsgy49DErwPI74Q0z3iut51rCAEnxwnd3/KsUebebvGDD9j9EUinIfXFr5COcnmeb4QtvChEEmpC7prJEUEddMdaGyFlmg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+fLjiq4ER+eVnDUznPZUHYzE5ODiU914yWsz38pmpedUBcyduNh+CmYp20Q1?=
 =?us-ascii?Q?IEj8AwXvhQChxYMFJ7Mhf3KkRrJyiYeHqSCrP0CIoUAqAkO5hIwp9aLNh6wm?=
 =?us-ascii?Q?08jj6oFuwPn3O+IxHJhBzZsd6xT33nmHNGzQ7lWCo9CojYjv1WVa6Avn4J0r?=
 =?us-ascii?Q?Xr0wPXW6q2NtzAtLxyLOq6OU/LYoeCeixHIqlTOh9XCnGHsgCS4MDyrBs35I?=
 =?us-ascii?Q?P726sGYlDKMzSp49unL0hXT4WmOOitPNdud8v9YPxcov6lgIgmfmRE9Uigif?=
 =?us-ascii?Q?bLaOrgdTYg3Qivemelvy8kzm+MEPye9lQ7MX4Xw9Nt8+Bs93CE7Yj2N5QkOa?=
 =?us-ascii?Q?9eizPR/JZHL3sLDG1Rwjw/Jr4I54pwRVFyIRwmgj9rM0fYuNZXU8CpxQHrjZ?=
 =?us-ascii?Q?QNzRiGVlewJvFNDCB8umuUUTpo0dTpCVAnohDvyVlB4Uef5allf0H2hUXJqU?=
 =?us-ascii?Q?aZJpfHazM8lbQHQR1vLDJpXf3dqIms8+kAGAkGY+5JF7JnWC7IFuZZFDVjxf?=
 =?us-ascii?Q?egeVCXPTSzrFNgoBi0zYLHd6ZQ6yUF2LxIJKf5pAbIKWbXuUPOrWKr6KqEve?=
 =?us-ascii?Q?4+tHzitFepOR/0SQuTc6rFRchlu4kTxwOa/ro6qN+YNIvTuPg7N8bw7RPc1v?=
 =?us-ascii?Q?HQ7wjZhBes25ysLJsPlxZKrj/oWRa3trzoyfwbdvqtEFhqA61QDja69B8bZK?=
 =?us-ascii?Q?g6qgSwQrnXMDd4z3YOwmsPYhs0Fde0egX3T4ZFk11/jQ9RCuejDY1LzsHVSm?=
 =?us-ascii?Q?RYLuDIZkIB+vZQUVAPpMkYHUL28HUkQYJD9ySnrKDD1JznSCeDvfbthcHU+3?=
 =?us-ascii?Q?lmm1qc9hNswP6TA49+/QItZa1nE2sJnqF06IbuV1q39Q+QRICEWcIal1vdD4?=
 =?us-ascii?Q?hfdCU1OwL61cv491o0MxCtyrNeCMV2yPJv4MZNJzPdP+/FS93zj77jNVQtnr?=
 =?us-ascii?Q?n7t0I3eG9QmiLkEaCqQdF5wBdzoDmVNV+rjx4SeQvMfmYxJmGlfq6Ej5htH5?=
 =?us-ascii?Q?mxoVjJn+/4crWHLbGgjfnkTC5NSGlN+iNIbFyWcYyF3zsgTPK2n4La+qTJz8?=
 =?us-ascii?Q?1ORrwclZaYEpFXb3TcVo0g5jit2nlpa0NLITd/9iEqZf62o44dMsQt25TK5m?=
 =?us-ascii?Q?Yt7msWNZV07YHrIgF92ztqWJeiX9SbleziXl3/50r0+EAneDu5P45Byo/MKJ?=
 =?us-ascii?Q?J/mASj5smPKFPT2Kms+C+XjMDq5jG+93iOo5SXYb7OfJidI4ruNjCerBRNEf?=
 =?us-ascii?Q?MWgiEWTdUJ6xCT8yQT8Ea/gS7bP2O7AlKQyJucn8RjH6IQt7uMvaiR4Dnffx?=
 =?us-ascii?Q?5O6ag1uX176IiDxj4vUrSiRrK2/C6B69OfYl7t8tMlaEoV8wPE6KcjQh9xmK?=
 =?us-ascii?Q?5DKw+Zi0vP7MSYxatM1n4UPVoUOHIYJoJ+NsEc3Rj5rbnQnEZ81EX3Dsy7x4?=
 =?us-ascii?Q?wDAUaLdgqVVYPYPgOYgvsi9dU5VsevTWA1lf5ooGBuohG7Nm2tmnnMyC/Z7F?=
 =?us-ascii?Q?hpK5R598VFYty3xOfxBEa6p544NfGVFVgtvfhbFeRCQ00FotnV/XDGf26s+4?=
 =?us-ascii?Q?3KXjXm+Mcam6NswH/+p2T3rDOpGi5Gn+XbHbe2wo9ErGTFRjpsmXDG4g2PIq?=
 =?us-ascii?Q?lQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ff8f192f-2c2b-42db-16e6-08dc5eeb13c9
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2024 14:31:32.4251 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xYbLTdhWJXq176dpP3EULRhE6MHz3kj2nuo4XLd4NDq1vRf/EwNecjGevP86A0iHFOqXtF7W0JfGSgKUOKf+EQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6793
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

On Wed, Apr 17, 2024 at 04:02:45PM +0300, Jani Nikula wrote:
> Convert the dmc wakelock interface to struct intel_display instead of
> struct drm_i915_private. We'll want to convert the intel_de interfaces,
> and there's a bit of coupling between the two, so start here.
> 
> Cc: Luca Coelho <luciano.coelho@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_de.h       | 40 ++++++++--------
>  .../drm/i915/display/intel_display_driver.c   |  2 +-
>  .../i915/display/intel_display_power_well.c   |  6 +--
>  drivers/gpu/drm/i915/display/intel_dmc.c      |  4 +-
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c   | 48 +++++++++++--------
>  drivers/gpu/drm/i915/display/intel_dmc_wl.h   | 12 ++---
>  6 files changed, 59 insertions(+), 53 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
> index 4b51388c6041..15440058ad2a 100644
> --- a/drivers/gpu/drm/i915/display/intel_de.h
> +++ b/drivers/gpu/drm/i915/display/intel_de.h
> @@ -15,11 +15,11 @@ intel_de_read(struct drm_i915_private *i915, i915_reg_t reg)
>  {
>  	u32 val;
>  
> -	intel_dmc_wl_get(i915, reg);
> +	intel_dmc_wl_get(&i915->display, reg);
>  
>  	val = intel_uncore_read(&i915->uncore, reg);
>  
> -	intel_dmc_wl_put(i915, reg);
> +	intel_dmc_wl_put(&i915->display, reg);
>  
>  	return val;
>  }
> @@ -29,11 +29,11 @@ intel_de_read8(struct drm_i915_private *i915, i915_reg_t reg)
>  {
>  	u8 val;
>  
> -	intel_dmc_wl_get(i915, reg);
> +	intel_dmc_wl_get(&i915->display, reg);
>  
>  	val = intel_uncore_read8(&i915->uncore, reg);
>  
> -	intel_dmc_wl_put(i915, reg);
> +	intel_dmc_wl_put(&i915->display, reg);
>  
>  	return val;
>  }
> @@ -44,13 +44,13 @@ intel_de_read64_2x32(struct drm_i915_private *i915,
>  {
>  	u64 val;
>  
> -	intel_dmc_wl_get(i915, lower_reg);
> -	intel_dmc_wl_get(i915, upper_reg);
> +	intel_dmc_wl_get(&i915->display, lower_reg);
> +	intel_dmc_wl_get(&i915->display, upper_reg);
>  
>  	val = intel_uncore_read64_2x32(&i915->uncore, lower_reg, upper_reg);
>  
> -	intel_dmc_wl_put(i915, upper_reg);
> -	intel_dmc_wl_put(i915, lower_reg);
> +	intel_dmc_wl_put(&i915->display, upper_reg);
> +	intel_dmc_wl_put(&i915->display, lower_reg);
>  
>  	return val;
>  }
> @@ -58,21 +58,21 @@ intel_de_read64_2x32(struct drm_i915_private *i915,
>  static inline void
>  intel_de_posting_read(struct drm_i915_private *i915, i915_reg_t reg)
>  {
> -	intel_dmc_wl_get(i915, reg);
> +	intel_dmc_wl_get(&i915->display, reg);
>  
>  	intel_uncore_posting_read(&i915->uncore, reg);
>  
> -	intel_dmc_wl_put(i915, reg);
> +	intel_dmc_wl_put(&i915->display, reg);
>  }
>  
>  static inline void
>  intel_de_write(struct drm_i915_private *i915, i915_reg_t reg, u32 val)
>  {
> -	intel_dmc_wl_get(i915, reg);
> +	intel_dmc_wl_get(&i915->display, reg);
>  
>  	intel_uncore_write(&i915->uncore, reg, val);
>  
> -	intel_dmc_wl_put(i915, reg);
> +	intel_dmc_wl_put(&i915->display, reg);
>  }
>  
>  static inline u32
> @@ -87,11 +87,11 @@ intel_de_rmw(struct drm_i915_private *i915, i915_reg_t reg, u32 clear, u32 set)
>  {
>  	u32 val;
>  
> -	intel_dmc_wl_get(i915, reg);
> +	intel_dmc_wl_get(&i915->display, reg);
>  
>  	val = __intel_de_rmw_nowl(i915, reg, clear, set);
>  
> -	intel_dmc_wl_put(i915, reg);
> +	intel_dmc_wl_put(&i915->display, reg);
>  
>  	return val;
>  }
> @@ -110,11 +110,11 @@ intel_de_wait(struct drm_i915_private *i915, i915_reg_t reg,
>  {
>  	int ret;
>  
> -	intel_dmc_wl_get(i915, reg);
> +	intel_dmc_wl_get(&i915->display, reg);
>  
>  	ret = __intel_de_wait_for_register_nowl(i915, reg, mask, value, timeout);
>  
> -	intel_dmc_wl_put(i915, reg);
> +	intel_dmc_wl_put(&i915->display, reg);
>  
>  	return ret;
>  }
> @@ -125,11 +125,11 @@ intel_de_wait_fw(struct drm_i915_private *i915, i915_reg_t reg,
>  {
>  	int ret;
>  
> -	intel_dmc_wl_get(i915, reg);
> +	intel_dmc_wl_get(&i915->display, reg);
>  
>  	ret = intel_wait_for_register_fw(&i915->uncore, reg, mask, value, timeout);
>  
> -	intel_dmc_wl_put(i915, reg);
> +	intel_dmc_wl_put(&i915->display, reg);
>  
>  	return ret;
>  }
> @@ -142,12 +142,12 @@ intel_de_wait_custom(struct drm_i915_private *i915, i915_reg_t reg,
>  {
>  	int ret;
>  
> -	intel_dmc_wl_get(i915, reg);
> +	intel_dmc_wl_get(&i915->display, reg);
>  
>  	ret = __intel_wait_for_register(&i915->uncore, reg, mask, value,
>  					fast_timeout_us, slow_timeout_ms, out_value);
>  
> -	intel_dmc_wl_put(i915, reg);
> +	intel_dmc_wl_put(&i915->display, reg);
>  
>  	return ret;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 4f112a69dea8..1b24339e4ab6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -198,7 +198,7 @@ void intel_display_driver_early_probe(struct drm_i915_private *i915)
>  	intel_dpll_init_clock_hook(i915);
>  	intel_init_display_hooks(i915);
>  	intel_fdi_init_hook(i915);
> -	intel_dmc_wl_init(i915);
> +	intel_dmc_wl_init(&i915->display);
>  }
>  
>  /* part #1: call before irq install */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 7f4b7602cf02..a28e61130b81 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -822,7 +822,7 @@ void gen9_enable_dc5(struct drm_i915_private *dev_priv)
>  		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
>  			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
>  
> -	intel_dmc_wl_enable(dev_priv);
> +	intel_dmc_wl_enable(&dev_priv->display);
>  
>  	gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC5);
>  }
> @@ -853,7 +853,7 @@ void skl_enable_dc6(struct drm_i915_private *dev_priv)
>  		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
>  			     0, SKL_SELECT_ALTERNATE_DC_EXIT);
>  
> -	intel_dmc_wl_enable(dev_priv);
> +	intel_dmc_wl_enable(&dev_priv->display);
>  
>  	gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
>  }
> @@ -975,7 +975,7 @@ void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
>  	if (!HAS_DISPLAY(dev_priv))
>  		return;
>  
> -	intel_dmc_wl_disable(dev_priv);
> +	intel_dmc_wl_disable(&dev_priv->display);
>  
>  	intel_cdclk_get_cdclk(dev_priv, &cdclk_config);
>  	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index a34ff3383fd3..3697a02b51b6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -553,7 +553,7 @@ void intel_dmc_disable_program(struct drm_i915_private *i915)
>  	disable_all_event_handlers(i915);
>  	pipedmc_clock_gating_wa(i915, false);
>  
> -	intel_dmc_wl_disable(i915);
> +	intel_dmc_wl_disable(&i915->display);
>  }
>  
>  void assert_dmc_loaded(struct drm_i915_private *i915)
> @@ -1083,7 +1083,7 @@ void intel_dmc_suspend(struct drm_i915_private *i915)
>  	if (dmc)
>  		flush_work(&dmc->work);
>  
> -	intel_dmc_wl_disable(i915);
> +	intel_dmc_wl_disable(&i915->display);
>  
>  	/* Drop the reference held in case DMC isn't loaded. */
>  	if (!intel_dmc_has_payload(i915))
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> index 162de0d20554..e79c45e36722 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -51,9 +51,10 @@ static struct intel_dmc_wl_range lnl_wl_range[] = {
>  	{ .start = 0x60000, .end = 0x7ffff },
>  };
>  
> -static void __intel_dmc_wl_release(struct drm_i915_private *i915)
> +static void __intel_dmc_wl_release(struct intel_display *display)
>  {
> -	struct intel_dmc_wl *wl = &i915->display.wl;
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +	struct intel_dmc_wl *wl = &display->wl;
>  
>  	WARN_ON(refcount_read(&wl->refcount));
>  
> @@ -106,23 +107,25 @@ static bool intel_dmc_wl_check_range(u32 address)
>  	return wl_needed;
>  }
>  
> -static bool __intel_dmc_wl_supported(struct drm_i915_private *i915)
> +static bool __intel_dmc_wl_supported(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
>  	if (DISPLAY_VER(i915) < 20 ||
>  	    !intel_dmc_has_payload(i915) ||
> -	    !i915->display.params.enable_dmc_wl)
> +	    !display->params.enable_dmc_wl)
>  		return false;
>  
>  	return true;
>  }
>  
> -void intel_dmc_wl_init(struct drm_i915_private *i915)
> +void intel_dmc_wl_init(struct intel_display *display)
>  {
> -	struct intel_dmc_wl *wl = &i915->display.wl;
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +	struct intel_dmc_wl *wl = &display->wl;
>  
>  	/* don't call __intel_dmc_wl_supported(), DMC is not loaded yet */
> -	if (DISPLAY_VER(i915) < 20 ||
> -	    !i915->display.params.enable_dmc_wl)
> +	if (DISPLAY_VER(i915) < 20 || !display->params.enable_dmc_wl)
>  		return;
>  
>  	INIT_DELAYED_WORK(&wl->work, intel_dmc_wl_work);
> @@ -130,12 +133,13 @@ void intel_dmc_wl_init(struct drm_i915_private *i915)
>  	refcount_set(&wl->refcount, 0);
>  }
>  
> -void intel_dmc_wl_enable(struct drm_i915_private *i915)
> +void intel_dmc_wl_enable(struct intel_display *display)
>  {
> -	struct intel_dmc_wl *wl = &i915->display.wl;
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +	struct intel_dmc_wl *wl = &display->wl;
>  	unsigned long flags;
>  
> -	if (!__intel_dmc_wl_supported(i915))
> +	if (!__intel_dmc_wl_supported(display))
>  		return;
>  
>  	spin_lock_irqsave(&wl->lock, flags);
> @@ -157,12 +161,13 @@ void intel_dmc_wl_enable(struct drm_i915_private *i915)
>  	spin_unlock_irqrestore(&wl->lock, flags);
>  }
>  
> -void intel_dmc_wl_disable(struct drm_i915_private *i915)
> +void intel_dmc_wl_disable(struct intel_display *display)
>  {
> -	struct intel_dmc_wl *wl = &i915->display.wl;
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +	struct intel_dmc_wl *wl = &display->wl;
>  	unsigned long flags;
>  
> -	if (!__intel_dmc_wl_supported(i915))
> +	if (!__intel_dmc_wl_supported(display))
>  		return;
>  
>  	flush_delayed_work(&wl->work);
> @@ -183,12 +188,13 @@ void intel_dmc_wl_disable(struct drm_i915_private *i915)
>  	spin_unlock_irqrestore(&wl->lock, flags);
>  }
>  
> -void intel_dmc_wl_get(struct drm_i915_private *i915, i915_reg_t reg)
> +void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
>  {
> -	struct intel_dmc_wl *wl = &i915->display.wl;
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +	struct intel_dmc_wl *wl = &display->wl;
>  	unsigned long flags;
>  
> -	if (!__intel_dmc_wl_supported(i915))
> +	if (!__intel_dmc_wl_supported(display))
>  		return;
>  
>  	if (!intel_dmc_wl_check_range(reg.reg))
> @@ -231,12 +237,12 @@ void intel_dmc_wl_get(struct drm_i915_private *i915, i915_reg_t reg)
>  	spin_unlock_irqrestore(&wl->lock, flags);
>  }
>  
> -void intel_dmc_wl_put(struct drm_i915_private *i915, i915_reg_t reg)
> +void intel_dmc_wl_put(struct intel_display *display, i915_reg_t reg)
>  {
> -	struct intel_dmc_wl *wl = &i915->display.wl;
> +	struct intel_dmc_wl *wl = &display->wl;
>  	unsigned long flags;
>  
> -	if (!__intel_dmc_wl_supported(i915))
> +	if (!__intel_dmc_wl_supported(display))
>  		return;
>  
>  	if (!intel_dmc_wl_check_range(reg.reg))
> @@ -252,7 +258,7 @@ void intel_dmc_wl_put(struct drm_i915_private *i915, i915_reg_t reg)
>  		goto out_unlock;
>  
>  	if (refcount_dec_and_test(&wl->refcount)) {
> -		__intel_dmc_wl_release(i915);
> +		__intel_dmc_wl_release(display);
>  
>  		goto out_unlock;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.h b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> index 6fb86b05b437..adab51208d0a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> @@ -12,7 +12,7 @@
>  
>  #include "i915_reg_defs.h"
>  
> -struct drm_i915_private;
> +struct intel_display;
>  
>  struct intel_dmc_wl {
>  	spinlock_t lock; /* protects enabled, taken  and refcount */
> @@ -22,10 +22,10 @@ struct intel_dmc_wl {
>  	struct delayed_work work;
>  };
>  
> -void intel_dmc_wl_init(struct drm_i915_private *i915);
> -void intel_dmc_wl_enable(struct drm_i915_private *i915);
> -void intel_dmc_wl_disable(struct drm_i915_private *i915);
> -void intel_dmc_wl_get(struct drm_i915_private *i915, i915_reg_t reg);
> -void intel_dmc_wl_put(struct drm_i915_private *i915, i915_reg_t reg);
> +void intel_dmc_wl_init(struct intel_display *display);
> +void intel_dmc_wl_enable(struct intel_display *display);
> +void intel_dmc_wl_disable(struct intel_display *display);
> +void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg);
> +void intel_dmc_wl_put(struct intel_display *display, i915_reg_t reg);
>  
>  #endif /* __INTEL_WAKELOCK_H__ */
> -- 
> 2.39.2
> 
