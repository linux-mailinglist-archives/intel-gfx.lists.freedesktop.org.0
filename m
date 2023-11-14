Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B64A7EB4E9
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 17:33:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02EA110E475;
	Tue, 14 Nov 2023 16:33:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABE0710E475
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 16:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699979605; x=1731515605;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NwVsXHUo7c/llXrIBNa57QbNef9B+fGpVzD2g2xtjtQ=;
 b=QCuQYzAv+L/cTif/yQ6MuALTGOdWvotluHI4rhVnkiMjxW+HvesJqP6A
 Tykwl9emHpI3i91WHU/nN9CGPR4SeEp4UFyngWCHKsuynNLZdGAxNXpQl
 Vh+psFgRLMs8dwcKApD8uch0blZUlZ20hzJ86zKWyf0sh1/f9iZLFkaP+
 XA8xXUmPCW0TjcY5UeHgayGcMuuHRsDi0LAv/VxR4sRrF7QTcGQexjE2S
 KOIH7fKE5HYku62qJFw/F5hnx/NHsLaNz8WtxVkohupA8X5C3ofaW/tF1
 nMKjxCoayYJpVubqOKuVCsuXNfBZSfMijxkxxkssJBDXtsEXAfJFQcg46 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="390489500"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; d="scan'208";a="390489500"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 08:33:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="835080168"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; d="scan'208";a="835080168"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2023 08:32:52 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 14 Nov 2023 08:32:50 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 14 Nov 2023 08:32:49 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 14 Nov 2023 08:32:49 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 14 Nov 2023 08:32:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q/iNLc595U0QMqrpWBKYrWYXeLD0GPXWSX/WsEHbap3WmWq6V0A8Tafco0Pm/6/EpKfikvSQH4o++Fv9SwAxtxrSFXMrcXgwKsezcZ9ucRwYpFdkxhZETJ54ZvT+Gw5J9cr+LF/hSR0L9dn5d9pzwhDud6CVOQQgsB5YiuXQTg28m11DMIs4vHIM0m+Qicbq4CfH0Jp7syQRFOcOJcdGUYQdAy2wZ8wl1gTKhjpOEIDj7ZKyxJ1i2ZNt5vsl10IaJcPUBViWLIOyWbS9NDv1SIxKlY90eE67USqM0UuMcnvPzg6sDaylEjCWSYRuNUchpcZks+csQey2Kik9yWeYQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nb9g35CDLYwez81H9vZoBphhuLsrRvmFAdSEOGYqz+I=;
 b=bIEqnnqUGHSSSlCBdQ7rIKWOg3jkradZImdK2/Ct9/6VciGURBphbWqByx/h3o68MXUlmv/eQWQFqedWTttqfL/dfmAxicTNA5uymPVN/EeIQXk9Db2EAeRzc9HwItG+4nW+NBWS4YEwcH1HWIQVH4F2vH7tvikZJLyCQkKh1/Qej9iNSV9p/Uyp5avNCM6oWM//oX27sA2OFeXfp2Ib0A99cX1n6VHNNyajivpmUVKiIDZyQ9QSIomF8++DeZIvO7m5av2OKtTLiRx7W7XkbuKp3SX36SLRQWunvsS1M3i96ALAqeu8xtbD1NI7Co+kpbsKk/3wNWyJbf8eGfRHmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CO1PR11MB4836.namprd11.prod.outlook.com (2603:10b6:303:9d::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.31; Tue, 14 Nov
 2023 16:32:43 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179%5]) with mapi id 15.20.7002.015; Tue, 14 Nov 2023
 16:32:43 +0000
Date: Tue, 14 Nov 2023 11:32:39 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZVOhJ1wv4pGOgsde@intel.com>
References: <20231114155528.96935-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231114155528.96935-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0172.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::27) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CO1PR11MB4836:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f5fee88-e008-4f9c-eefc-08dbe52f5358
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FSGvpzQUv9mqRBhbqm4NFBkbGGEl5Kd/IWDUTruEKT53/ZIqrAqVVdg/jODpcOz0PaeZenqjn2vQ25xTzA47MWXcVjNEkfajoTsOK7DxAxH8zDpML3561yh5BWn4ZphE8CgaBt/extFKgrlKe1TP4rjGfXvjQgMy/ikRTTJof+4sDDIYnIh/0h0J5+uc4TMkgQen04z4i/Ia+AjSjUbhVIYuKbhvAOhfzEBP4KBHeScaqcgkV92H3WbLNR77/qHq9w6+ktaNxyzIwGvRniQGx3qwiXeuvoUAivY3VUL/IrIQkAtyTm4lKfh6f2DlygtrzWJjpx4bM1RCFtA4cBcgIW5iIWZ5h0AGkZA/Q3eohMp9prrYYXlFidV9upvIchqD6nt/4tCBT45o273waMv+aH0460ra21MWPHtoA1kRiMxLcVFM+IPxLKyVGBAjp+a2Nh+9zcoUPIcZ0ctvQifx/j5Dqe5eQatXly+fCV9SJp94wSue/m6w8KJjDGCdRFaw4ipErTLH6fXsv4AiWzVXCdyOT2eZqMEUCKotAUsUQxpvwEc8z/Sow/VrIGuwPxQq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(136003)(39860400002)(376002)(366004)(230922051799003)(186009)(64100799003)(451199024)(1800799009)(2616005)(6512007)(8676002)(82960400001)(8936002)(26005)(478600001)(6486002)(44832011)(36756003)(86362001)(4326008)(6862004)(5660300002)(41300700001)(2906002)(66556008)(66946007)(66476007)(37006003)(316002)(6636002)(6666004)(6506007)(38100700002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xNQBgJoZclR/69dzoLmEdo96153Lgs+S1w+D7cJ0H8xw5Y7hHKZZ8uQnmTR3?=
 =?us-ascii?Q?tdOvsRQxRLe3/P/h81vSDUF+GVQzykh1h4dxuUOFGGPvEdU6Ery8s0AAza7I?=
 =?us-ascii?Q?memmLbUcRUdM04ES++uRj34kLDdCs5zC+6qyj46WqKqoERolClpq3DVynWLJ?=
 =?us-ascii?Q?P3s0Ct/U/u9vLSN/Z2wM7QAIYC8Y9pt+lw8A/znxVhzomZ1E5TMA1CdRAWuP?=
 =?us-ascii?Q?y98X/UyzEu2XrBJ4us9lVwojc8XsssD0adTzy6PRyEmcOcSvmyNG0QUIF090?=
 =?us-ascii?Q?i19e4CA2HMGttyuMMMHzEL6y7sXOy6s56R39G1fNrjiv2ESQxHFi/h1mz+Xr?=
 =?us-ascii?Q?YOdvYrJ+u4FbSpUWkjnwjzxd5kju8PcmIn/pavpApnEZvYSG27t1nazLsddf?=
 =?us-ascii?Q?wT0qsd9R7J3RxfpCS+n6uVmqOL+GzGPly3zst2+P4nVbVS4H/GJtLhk+lFg4?=
 =?us-ascii?Q?Abd4UarjflAv1qIFUvZuJFKImP5AotzMAXZcza8XCbqjgQCH3beAs/HSIGTG?=
 =?us-ascii?Q?5UouG9JmNjGtXeSxIklHYUNNpnr+lxZLhHbSOsiSrsCKKezX2I4E5e0fFGlM?=
 =?us-ascii?Q?k6RHw4VvmVHWzvg5fdsMIYXu1rXRIYiuRMnhuxsliZ3qzlXbDQrN6BOYzoOr?=
 =?us-ascii?Q?nQU/4b1kwOSIBBcwBhSHvJl2/berQiclxBmF5uJKNgIo7Qsy1ssDPvMysL3I?=
 =?us-ascii?Q?AP6RHbZMsIKlMl2LEbO8tH8zHZm4WweNyAE5VzrWznHvv3oI4hTUlBZ8+ZPV?=
 =?us-ascii?Q?RfCQLJxyBydEDTKSIgSGZT6zGKep1JdNgytnWdDb12dKyT1d8MNY8YKxqtNk?=
 =?us-ascii?Q?IOG0OE9Q5neMdAH1pe5afjHgUeuGYPqIcCwY6M2hNYKdAEmK22m9IwDmD5Qy?=
 =?us-ascii?Q?9x42vMyKr35NPKPmGqxIbTF41M0peAFipCXjhLu8vVzGx7icUctT18sUHjG/?=
 =?us-ascii?Q?ipbSU9fbQkMAU1jXly2imNWTvOW1L1IjdGXaF1LGylrAoModKGqxMi8T3pUl?=
 =?us-ascii?Q?ufMQ699ea7VjO37SCFaOKfS5vaA0Kth6jrSkiW5Hdz6GcZw/NSvkzzu4KRo5?=
 =?us-ascii?Q?JVK1gFo6NAIDvKyDfNs74WGIlIezVtb1kiK9nHeHl7cpwMWWrvRkRgWs1B/J?=
 =?us-ascii?Q?0tFIxchvgdNQl/GElrs3YY6HvvsCbZcT2RwALbf4PvcOufRm5H7hORUz1AaM?=
 =?us-ascii?Q?2ljNPySpFlbQXlgRYqtft9bySm3+ZSPXZhv0vhztJuIcfDgay6hKi0VK+CTR?=
 =?us-ascii?Q?09wkfU69eDQbhOqAUBxkXpM8JOJq4NwBUBQmBgT99AE6hlkT/EvVayPoqUFX?=
 =?us-ascii?Q?tOMTqYwuinmTOo12ldVOhs8Bd6eYoWxUFae75/fzQ0zN1Jez/7X5Gj6GsPdF?=
 =?us-ascii?Q?P9IrrBRkNSIUqo93TyaRfKOMF3cgy2QnsPDR1ZVuvSyroxrBtVT7/YzgJNsz?=
 =?us-ascii?Q?B/6v0k2n3bJ0yMhmyPax5/GQ0r+RUryyTGhXcbfqJjyeirtm6EQ6+ZCe5qCO?=
 =?us-ascii?Q?PvDYmgV90B31jtHPbV9LPwBJvs6J+XdUF04wfnevzCqwFtz+FUNGQMSyhVuj?=
 =?us-ascii?Q?YR7BndDuGlSKmB/oYF6WrcPOJnWru/ZOIckmq+82nSPDWXUth7BkiTmsRo6+?=
 =?us-ascii?Q?qw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f5fee88-e008-4f9c-eefc-08dbe52f5358
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2023 16:32:43.1532 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mHPiFnI9L6YyUYg8ZuiI1SZ+cRMvE5cjDXS5uJlFDE5KAa4rSg81fnNbXzNgP97I00lJOeHOUcPMKvXTS/Y2bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4836
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: keep struct intel_display
 members sorted
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

On Tue, Nov 14, 2023 at 05:55:28PM +0200, Jani Nikula wrote:
> Like the comment says,
> 
> 	/* Grouping using anonymous structs. Keep sorted. */
> 
> Stick to it.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_display_core.h  | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index aa8be02c9e54..7e82b87e9cde 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -348,15 +348,6 @@ struct intel_display {
>  		struct intel_global_obj obj;
>  	} dbuf;
>  
> -	struct {
> -		wait_queue_head_t waitqueue;
> -
> -		/* mutex to protect pmdemand programming sequence */
> -		struct mutex lock;
> -
> -		struct intel_global_obj obj;
> -	} pmdemand;
> -
>  	struct {
>  		/*
>  		 * dkl.phy_lock protects against concurrent access of the
> @@ -444,6 +435,15 @@ struct intel_display {
>  		bool false_color;
>  	} ips;
>  
> +	struct {
> +		wait_queue_head_t waitqueue;
> +
> +		/* mutex to protect pmdemand programming sequence */
> +		struct mutex lock;
> +
> +		struct intel_global_obj obj;
> +	} pmdemand;
> +
>  	struct {
>  		struct i915_power_domains domains;
>  
> -- 
> 2.39.2
> 
