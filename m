Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43EDD96E089
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 18:56:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBF6510E913;
	Thu,  5 Sep 2024 16:56:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S8W1QdOA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E97E10E913;
 Thu,  5 Sep 2024 16:56:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725555408; x=1757091408;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=jZMaaZo3GJSmRQFYdj3qGYsDbWhu/UNk9AzX7K+fJV4=;
 b=S8W1QdOAWxljINm6GSi/Mv0mlVf/kM08DtCsVk9Ex8YaD+k/I1b7iytA
 /qv6XWuryX25DRSqBE5V+Yw0pw53Khz2lu0Pc1bk/DQd14aioGBnGskFY
 3AkhHJAve1Bxr/TYMA+iMXavyzUKw3R/YeVDJbJvqO/0th51TkLQeZiqb
 UEqe/zFf7XDttRzAzg+/ax9On96LHNDgcGV22Fv+20qv9ulEVJqogGz3d
 PcGRq5AJ+op2u0/Mw7uFGDguiNOubrQFnGk8cB6KvJtxcfQ8lThrYi9BZ
 7FM4O9jlAN6m61HNF6ULW7kVri7tREsfe5wucqaHX6tkNNLEuPM8ohYnT g==;
X-CSE-ConnectionGUID: 5hwaaXoRQdiZ+qHts6+0+w==
X-CSE-MsgGUID: oPWRwvNqQ4Kaj991wpjWNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="41766690"
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="41766690"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 09:56:48 -0700
X-CSE-ConnectionGUID: CiH60ZkaSJmDpmZ9dwEnlw==
X-CSE-MsgGUID: QR6wQQElQ1eguvriJSpaWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="70487406"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Sep 2024 09:56:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 09:56:48 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 09:56:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 5 Sep 2024 09:56:47 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 5 Sep 2024 09:56:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E0LA2fXrS7FTzc0yeNpx6tiRGQ+6RB+jPnOQtfYzFMxbfI7UwBkkrUfhFWbtjwwP5oN0zJCISk0VCrMVcsakSYQDiMVLv0b36UvTLDa9GMIBtEfOaig6TB6zS4sR/lfPyaSB/a64op1awNmFsqPlOJFZRXMvn/MbkoOaTsnvE17/BtoASIie2iWrUVv+jgfYXY5gbGGkF58lbxO7aRXEr4Fu30srWYVr52gGEY5SnS3N1iFiciFKXdqoxR85TUukoZIiNfnSRPR59yqtu4fwsyPhHXEovh7XA71MczMdBiIef7EAZIyvFy09/qW+9U0t7aKzEESa+DwVlQ/VjbIsIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wTouKqz5/5R9SF6W/7v6Ta8ugmnaMs2rSMdmuuo8T8s=;
 b=CwWF1Lv8Qu2gvKtPTiiHDjswZ0YzoCRadCw/jSApr840MIsimgGbVRwrRb9p1IkuhBxpUxEe/zlCRu+XHqZoj8nv7RER7rVnVVgO482ZNxVC5L3/KwQNuYZLz/g28QMQV56OLxeIgWbBftk4Ck1PW2V9Ynejs3vJ42B9cH1otvlkvF8TWJZpjJrfZk6IHVjRnHaHxjuh1I1q4qaFtFWTeGYae/o31JPYP22CmpkvRKZa465WOgEVN/79lC464D+rEGrqHFYz9T/JKJHm+6FMqxVQ/rqa9yQnXp4F+DLNzuQdU0GJr4H6wvxXL1pMLt4QukJQrdKD3bDgB5bNQIDjZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CH3PR11MB8315.namprd11.prod.outlook.com (2603:10b6:610:17e::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.26; Thu, 5 Sep
 2024 16:56:45 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Thu, 5 Sep 2024
 16:56:44 +0000
Date: Thu, 5 Sep 2024 12:56:41 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 3/4] drm/i915/display: move device info and params
 handling to snapshot
Message-ID: <ZtniyTAP9bFiv--W@intel.com>
References: <cover.1725372032.git.jani.nikula@intel.com>
 <1450de944e897ebe0c7c0cb9a859483df14208bf.1725372032.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <1450de944e897ebe0c7c0cb9a859483df14208bf.1725372032.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0216.namprd03.prod.outlook.com
 (2603:10b6:303:b9::11) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CH3PR11MB8315:EE_
X-MS-Office365-Filtering-Correlation-Id: b1b2f593-6cc2-44a3-860c-08dccdcbb910
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Oe4s/xUzJfu3d7tjD4zs/HKVfgc7kFZE6IRStcK2yD0RJ2pKOyELHo2yYHGf?=
 =?us-ascii?Q?P2nn51V/7R+xN1Pp3zDCpy3dEieshmIlt4T0+vAyXek1bxW2kkKkjI6XGnUl?=
 =?us-ascii?Q?Y75+wSeOaNm6gSlP151+pRiFnSkEEUXUtTKkP/zoUawZD20zd8WeQZSDT6jf?=
 =?us-ascii?Q?cDrK8jPdXSESQujpnyz1Zg1uHrlGXYrtod51Wxid+RiafRpYebFkD05mVu8H?=
 =?us-ascii?Q?wcJR9kGspwcgKY4yI7UV/4GX7JgYNYApUt+znHu0zh774F/y9m671Akct4PF?=
 =?us-ascii?Q?avnygIVbj9DvZY1PpKdGc5wNdd1irj0h/yLOmkdefp6AJn7eanPe5HUDQETM?=
 =?us-ascii?Q?KGDDeh7lNVcdDTFdJYohb/rn04AIW1xuJbDNjVk11+hjxJqCBxUzuOtuBdP6?=
 =?us-ascii?Q?la8Yu169GzfIk+GJThQfVSimbi+7sdEtrpgVq/cC8p/ePaTFVNP89t0BUBGp?=
 =?us-ascii?Q?YUgN2X8MA1YaGyXcP6PPsl47Ptbmi5le1tT5unbgcoiFxysEVSfNYhzizCpL?=
 =?us-ascii?Q?kHdBySUj43C7g2pgD/P0K4E5FfsKQyYjI9ZFW9z+/Ez3+/iykBWVUPCdIQys?=
 =?us-ascii?Q?2FKly3Jkviti/a7oIX411+nRNaC7if94LktXlzE50FRDiLRof8k+28huANRO?=
 =?us-ascii?Q?EbwaR12p5k9V4jX2M5QIsrZVyJMljD/6wiE1rw7C/IrrciZxneDTxAJF0vMp?=
 =?us-ascii?Q?iXMm4TjWd5hDAbU08XQuN4fbKns9Ek1Z93ID0VJ9eW8/y4eYBJSv3srdl6S0?=
 =?us-ascii?Q?8gGS89+RHWWOv4ABriTMR00x66neT7ZcrZplO2Xqf+Or6z4+x8lHO7Poo0j2?=
 =?us-ascii?Q?aZBzcL9yvYkGzHtHxNlEKVIIcEbjtYuTjursOEwQXGpWsnh9vomxJUNW91W0?=
 =?us-ascii?Q?fyYr+I7FVUxsyhwwfh0yD+DaTwKThxtJrcppuui0YRRDDX87V0ePXiwVjuBD?=
 =?us-ascii?Q?y2wkdzBp2BT8Kn0NC4Y1OOZIij9SVoBhBLeX9Sofa3pNT+PnKHBjiYI2MytS?=
 =?us-ascii?Q?jmlCWs8KkaJZ5Bfufhhr5OKD/elzLWXHaJ4fwTthGD37v5Hw97lbCXi0zqb5?=
 =?us-ascii?Q?opsjFZMcunnu9LwPkSmdGL/TI6dVA1Z+8xjWHCK4IHKRE4MMRcw/jkhiVa6t?=
 =?us-ascii?Q?bk8JOYjGEZbU2yC5odZ+BBxImdhgx4aTXVoRTyEWjmCIxPG0JPOiFEWR67f2?=
 =?us-ascii?Q?Ls/ZdouPiF4pC2G3jeV2zsl3Bs0F51MuUTkB2zliri7dGTw2HUImx+m/uoNz?=
 =?us-ascii?Q?9051dv32U3YqACyEFP9IEex03/DdGMRGGNH4FXdru3dKKaeGGYEoxhLNv4gh?=
 =?us-ascii?Q?56DbGWtyQBtuPSrTv2BToAPDjOnC/HbS/BWhCW6NUMGMmw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qEAoLY3devv8ZOOKEOMhYTuademF1JSKsum8Zy028k8piztCuyvyEe8hwtrz?=
 =?us-ascii?Q?SSTnQ27Kbi4UrwAcfzjajvCeVdB45SinCLwXkaIIqzPcsvIgI4nVmEjq+c8S?=
 =?us-ascii?Q?axqCbxUXvYf9x89ULmZWh2rvvTZbn3pKvtEWZa53xgjZAzZpgipLs9IzykSm?=
 =?us-ascii?Q?1w6nZzpwLEiiZEhMlI7pcijzJV1v87Rv0SDKOJFK+sXwtb8nlX3XDAnwGg3e?=
 =?us-ascii?Q?0N0vU9cbYguFeYIBdX6R0vD4Pp09xP2AXRWlr4/apXtpoUqnhgWG1pDYJcbJ?=
 =?us-ascii?Q?g6EUKRxSORNJBbp9UzlzPCzqsO92qRyKRBWqgFQlH1IkZJudTQBIDQjIPbM/?=
 =?us-ascii?Q?GYfaoTyGfJa3NfRyd3tLUU5uRrs767h9l+g3ywaEYYA3AylNorXv/H4HKBKu?=
 =?us-ascii?Q?3Wmkpc0ctMmgrCNE7iPsMwWdHYlyeOf5ze+Mc5c7vUZuZ5Bm47DSksFA2KIb?=
 =?us-ascii?Q?gimbJUTOvxvSFTNtkQEqokrCljEuGlQCy22z/X0nbzh/oeFBr3aaqbNQNNrN?=
 =?us-ascii?Q?2dIUHD8G5qmNeOS9elJgqWrrVtfw2UhH54bJw2eKUXZinSq4L5NebDMInP/w?=
 =?us-ascii?Q?iV4hDUfLufGtdh5E/Et7ztt5P7dJNezFliCTgeK6vhb+Bs0KlZmf/s+xgYKi?=
 =?us-ascii?Q?Ug4Zjz4MDyq/Z/CL0ztwLT48meXfoXcoTr2TtONtJJXrMMlNvIz/FPEWwdxA?=
 =?us-ascii?Q?iatq15ZdfCEA72WMMZ+NQfZfubIcgKfa1sfc+hNW6uNnrjiImH2X0ZNb0BDG?=
 =?us-ascii?Q?UaafQ/tXIS+9r10jEOEIK0xmnomJ45EnpKfX8oeEqZ0REJxHHbJy7uoOWG7z?=
 =?us-ascii?Q?sLgHMZ0rv1mr2qhpmTpZGhxtYwD5JHsxLVUBUN1EEUBPWdXkhkJQysRuGIFs?=
 =?us-ascii?Q?4uNaMboAIwwuGoS3FW97Qkr4gvD3gf3N3aC2tJAEqqYAzGgnKnbnxFQ8Z9vD?=
 =?us-ascii?Q?/y/U7FUQ9EO9Nl8tMOZXLZxYbPfTF3XAagqGFkYOQjRB7q6lw01/yr/rORrz?=
 =?us-ascii?Q?Wz0+itxZD4Ouv61VgOI7yXmC239obK36D2Ee9PDU2H1PXEsp/50O4jk/R62B?=
 =?us-ascii?Q?lCgW+0rvJ15dP9WIe6lPe2nJGXhaVF9uCurzxOUaH3JQWyioHjHZfgGfOtbb?=
 =?us-ascii?Q?LY8lrtTnnNmUrU3g8/bdfCVB6qvw4+jJrlmkwOefZVhZn6qNi6YLIRsqcHKA?=
 =?us-ascii?Q?GYIn+Dyj6/DtUR0BBantGCvn08lL6LA+qXqw2Wo4aaQMIn61ZLRPl/OKoImH?=
 =?us-ascii?Q?Xyve65nVeNXo/ipw7gZMwIfukYPZgN+sExLR/MT65Vb4zWawo7SMdn/7gbpk?=
 =?us-ascii?Q?lrFRC/y3HnHiIeA2J9fgBeSFL7DpYhNlpbHWcAZRLdowTktLxt7LJLhajYeO?=
 =?us-ascii?Q?cwR2/y8+l90dXzz+DoJooOTbiLaWlvCrE0+vJNO5ZelP+VowOIILiQeGvyqp?=
 =?us-ascii?Q?75o4jPGmA4tMcRpS7KNHto2wC6F2LbEtUkRSMxb4J5VHB/F2vjQnlkX01aHP?=
 =?us-ascii?Q?rizvX+RFozNKSWvzv28CS2pK7IEmGXRedEQs5Xg4IgVxEGHDOeFay1wTEwGC?=
 =?us-ascii?Q?Rs7OZnyfvkdF/5PIJVu/mFzJLs0UH9zpQjfLXNWBAP7lVkPPCGC6PvOdFa3X?=
 =?us-ascii?Q?ew=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b1b2f593-6cc2-44a3-860c-08dccdcbb910
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2024 16:56:44.8745 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QQyaL9WKNfr5KjT1dsTW6zc/1Oi+DPIAUcEWoc7RiZN9OzAX4dY00TmMz7gOAnQnWAEdgcO/nZS0Avta+KEalw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8315
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

On Tue, Sep 03, 2024 at 05:02:59PM +0300, Jani Nikula wrote:
> Snapshot display device and runtime info as well as display parameters
> in display snapshot.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  .../drm/i915/display/intel_display_snapshot.c | 25 +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_gpu_error.c         | 10 --------
>  drivers/gpu/drm/i915/i915_gpu_error.h         |  5 ----
>  3 files changed, 25 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_snapshot.c b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
> index 78b019dcd41d..a61ff0f81397 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_snapshot.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_snapshot.c
> @@ -3,10 +3,18 @@
>  
>  #include <linux/slab.h>
>  
> +#include "i915_drv.h"
> +#include "intel_display_device.h"
> +#include "intel_display_params.h"
>  #include "intel_display_snapshot.h"
>  #include "intel_overlay.h"
>  
>  struct intel_display_snapshot {
> +	struct intel_display *display;
> +
> +	struct intel_display_device_info info;
> +	struct intel_display_runtime_info runtime_info;
> +	struct intel_display_params params;
>  	struct intel_overlay_snapshot *overlay;
>  };
>  
> @@ -18,6 +26,14 @@ struct intel_display_snapshot *intel_display_snapshot_capture(struct intel_displ
>  	if (!snapshot)
>  		return NULL;
>  
> +	snapshot->display = display;
> +
> +	memcpy(&snapshot->info, DISPLAY_INFO(display), sizeof(snapshot->info));
> +	memcpy(&snapshot->runtime_info, DISPLAY_RUNTIME_INFO(display),
> +	       sizeof(snapshot->runtime_info));
> +
> +	intel_display_params_copy(&snapshot->params);
> +
>  	snapshot->overlay = intel_overlay_snapshot_capture(display);
>  
>  	return snapshot;
> @@ -26,9 +42,16 @@ struct intel_display_snapshot *intel_display_snapshot_capture(struct intel_displ
>  void intel_display_snapshot_print(const struct intel_display_snapshot *snapshot,
>  				  struct drm_printer *p)
>  {
> +	struct intel_display *display;
> +
>  	if (!snapshot)
>  		return;
>  
> +	display = snapshot->display;
> +
> +	intel_display_device_info_print(&snapshot->info, &snapshot->runtime_info, p);
> +	intel_display_params_dump(&snapshot->params, display->drm->driver->name, p);
> +
>  	intel_overlay_snapshot_print(snapshot->overlay, p);
>  }
>  
> @@ -37,6 +60,8 @@ void intel_display_snapshot_free(struct intel_display_snapshot *snapshot)
>  	if (!snapshot)
>  		return;
>  
> +	intel_display_params_free(&snapshot->params);
> +
>  	kfree(snapshot->overlay);
>  	kfree(snapshot);
>  }
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index b047b24a90d5..15d57206b281 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -651,8 +651,6 @@ static void err_print_capabilities(struct drm_i915_error_state_buf *m,
>  	struct drm_printer p = i915_error_printer(m);
>  
>  	intel_device_info_print(&error->device_info, &error->runtime_info, &p);
> -	intel_display_device_info_print(&error->display_device_info,
> -					&error->display_runtime_info, &p);
>  	intel_driver_caps_print(&error->driver_caps, &p);
>  }
>  
> @@ -660,10 +658,8 @@ static void err_print_params(struct drm_i915_error_state_buf *m,
>  			     const struct i915_params *params)
>  {
>  	struct drm_printer p = i915_error_printer(m);
> -	struct intel_display *display = &m->i915->display;
>  
>  	i915_params_dump(params, &p);
> -	intel_display_params_dump(&display->params, display->drm->driver->name, &p);
>  }
>  
>  static void err_print_pciid(struct drm_i915_error_state_buf *m,
> @@ -1031,7 +1027,6 @@ static void i915_vma_coredump_free(struct i915_vma_coredump *vma)
>  static void cleanup_params(struct i915_gpu_coredump *error)
>  {
>  	i915_params_free(&error->params);
> -	intel_display_params_free(&error->display_params);
>  }
>  
>  static void cleanup_uc(struct intel_uc_coredump *uc)
> @@ -1992,17 +1987,12 @@ static void capture_gen(struct i915_gpu_coredump *error)
>  	error->suspend_count = i915->suspend_count;
>  
>  	i915_params_copy(&error->params, &i915->params);
> -	intel_display_params_copy(&error->display_params);
>  	memcpy(&error->device_info,
>  	       INTEL_INFO(i915),
>  	       sizeof(error->device_info));
>  	memcpy(&error->runtime_info,
>  	       RUNTIME_INFO(i915),
>  	       sizeof(error->runtime_info));
> -	memcpy(&error->display_device_info, DISPLAY_INFO(i915),
> -	       sizeof(error->display_device_info));
> -	memcpy(&error->display_runtime_info, DISPLAY_RUNTIME_INFO(i915),
> -	       sizeof(error->display_runtime_info));
>  	error->driver_caps = i915->caps;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
> index 1a11942d7800..78a8928562a9 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.h
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.h
> @@ -14,8 +14,6 @@
>  
>  #include <drm/drm_mm.h>
>  
> -#include "display/intel_display_device.h"
> -#include "display/intel_display_params.h"
>  #include "gt/intel_engine.h"
>  #include "gt/intel_engine_types.h"
>  #include "gt/intel_gt_types.h"
> @@ -212,11 +210,8 @@ struct i915_gpu_coredump {
>  
>  	struct intel_device_info device_info;
>  	struct intel_runtime_info runtime_info;
> -	struct intel_display_device_info display_device_info;
> -	struct intel_display_runtime_info display_runtime_info;
>  	struct intel_driver_caps driver_caps;
>  	struct i915_params params;
> -	struct intel_display_params display_params;
>  
>  	struct scatterlist *sgl, *fit;
>  
> -- 
> 2.39.2
> 
