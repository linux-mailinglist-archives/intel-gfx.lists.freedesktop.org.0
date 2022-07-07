Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0DC56AA41
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 20:09:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ACF710ED28;
	Thu,  7 Jul 2022 18:09:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E73DE10EAF3
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jul 2022 18:09:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657217383; x=1688753383;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BPULWEPaF5ToAuA+GrxGk6KyDa1I28m1bdBCFKWr16Q=;
 b=Wf78XiDAjpdQhjze+s3eZOCitqSEFakca0saKry7OD9uztnC5nl/9UxA
 ZEwu7rrwsMwCURGKMXQXKvV4g6cfJUyrvZb6IG4IIT2Hc+elHsC9cPjGV
 but0yAQs+VicfF+waeh/rnwDqI+awFFpk2xzzLP6JVyQIkLmQJFAop+Ip
 r5x15W/Wcrfz1SN4vi75TXTs9WiY7iUv13OC0beMk0ZISTACAUF3FZq43
 E000VFE7eyS3fOUNgrOPLUatFKtw/+NJ/Lfb5S3LfKHB47ul7yB4GYhF8
 bmm8g4hLu1VNC4Wqvk3756JUWmxJYWUUPK8rqA+D2E+26V/loLgm6VYoP Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="284831312"
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="284831312"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 11:09:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="651234136"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga008.fm.intel.com with ESMTP; 07 Jul 2022 11:09:42 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 7 Jul 2022 11:09:41 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 7 Jul 2022 11:09:41 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 7 Jul 2022 11:09:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=moPQUgdYNpxorDnp18zVZSSkv7vlFEkry/c9zAcq04HZ+ZHXxA4Y5FOh3Yz1oW7ukdOUUmc1Wcvd82SRxxTJa/SOuPC9uiKuu7Mn1YiQnST2SQAuVSD5sFp2pvoEfMNnFC5wLY4+ljL9WOy4emmA35Mf5k2Md6v5tQdhunRx+a5qDZ7pZ8TQNKVHk9mmSYiXXHJJn1EvYNza20bxqYhDLnj9mdzE11U/DakIdfxz5v/sGg3q/0JtasQ2kQdN9YhpSdR/oiV9q98iTqGISZsBG9Kq42hGCk+bFHd7wu6ASzgKWY3QiFZzyxOE6MH3MkN7fimdvYgwSHlMpRdv1vTQpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h0bUcIQRPMlQjNb2SoQD05Tq3yrOVJyk9Gg1a9uS8Xc=;
 b=BNL9ORj71oFr7jf6UzgH1dUbJZQuFaarkgJsNAzTcGA22JHTVmu/pohVkRgzySZc2KP16KNgyNFHuW095X3wAZtk0+Vl+MClxRTD6YjiHjPm/1ABWOhqmhNvF3VztZ946V2pEVqjAQiqhuvdDkNuXXmjSNCn81n8etrJ5BuE1LqbXraws5V215pIYQSNr1TYyx18iDWKpPkXXwYSQcZ4TE+OQKyXGyxmTcIFfc5y3AiHIcpntq+WsW6Ua9QljkJsd158EUhlPI30114mM1v3hhM4ZA8aEAFDYoNccF9hnu96gY/O/rB5U7hVZJ5+2Qnu8R4KnW7jCG1FiQS3RMVevg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CO6PR11MB5665.namprd11.prod.outlook.com (2603:10b6:5:354::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.16; Thu, 7 Jul
 2022 18:09:40 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::8053:3c59:9f5d:b615%9]) with mapi id 15.20.5395.021; Thu, 7 Jul 2022
 18:09:39 +0000
Date: Thu, 7 Jul 2022 14:09:36 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Karolina Drobnik <karolina.drobnik@intel.com>
Message-ID: <YschYEY9BDf/Mlqm@intel.com>
References: <cover.1656911806.git.karolina.drobnik@intel.com>
 <5c77a2a12b4159415e5e448a563ab70a13a8d8cb.1656911806.git.karolina.drobnik@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <5c77a2a12b4159415e5e448a563ab70a13a8d8cb.1656911806.git.karolina.drobnik@intel.com>
X-ClientProxiedBy: BY3PR04CA0001.namprd04.prod.outlook.com
 (2603:10b6:a03:217::6) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 87aa4ce9-dc20-42c2-cfb1-08da6043dbe7
X-MS-TrafficTypeDiagnostic: CO6PR11MB5665:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: y77fmZ4Yc/YIhVEGrWs2A4S6r7VEXd5ZpSVp7Xt0CDwxKvlZ3NWgqOC7TLNYf7zAbHHm7kB9NhGzM4dF0HElzHf1bVL9sQB2MeN5oS0AQeSmL+0/baaMRUHzuE7fc30a4Y6NWN+yQTzfkcnkXx64qsUdcT8sdJn+Ep5XxD9clPZQ7x7v8Jaxu4hMdO1qBkLtuXTIK4O2tZ0/eDWlOtTE4b+raKl/cNJ1/rQ3xg9KwtUU7MDigMJKTGSOH0tz+n/Hb6nggwsOBrZH8u0ub4B0YBgubNokJkVls4Nfxd2Lyb7v9WT1co6mIb+8Ncu+BzbO+pVRt452o0NQsUcZrL/xYMPQ6j+3d6lGAjS+2kRISYxtxY1zIAr6ARANwg4EsJMeFa2OcJv5QyLBTufVO2eZBc7cj25ibXtEHZf75fEg/49VLw65Ng06hC3rYQKRUHdRvMvd/VuxlDAL0WJ9W5vydcylGveQhn0lbQ3Hj+/RpM7Aw9W3URdyD5ym9ecyG5J0nQSANYadHiFRG0Nv8lIJLVXoTExIYnAJXJuKVR/seBn84HNkJoB3jpsX3KL7xIoSdUiXwohQWUycSTtpos02A9aC5qnKuEsDl2dY7D9xyDVbIoxUHznCQ5ZjJ2sBiMGd9uWhf0LDCr2KRXDziGwjHDKSQBMKMeuvr7FQRmNc/VinA08TBu7XZ0Zp7QicNRdHgiY464ue3wmtCgz4fuCkMA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(136003)(396003)(376002)(346002)(39860400002)(316002)(6666004)(82960400001)(83380400001)(38100700002)(37006003)(44832011)(6636002)(8936002)(86362001)(66946007)(6512007)(8676002)(5660300002)(6862004)(2616005)(66476007)(66556008)(26005)(6506007)(6486002)(966005)(4326008)(36756003)(478600001)(186003)(2906002)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ajG20W9A2KHSO+wtCYfGXTNBONmBGNYs3zyevgVCOrYItlZ1cFM3IXgRibXl?=
 =?us-ascii?Q?nT+Yh8s92ocY+36J3RX2UsZP84N2st20eixCGCpux6Vs2tuFMHfDR82aEOL8?=
 =?us-ascii?Q?yxwvVMPCKIZEstTh0iiXKgpdkt9F88SdiyYiMLIFt4qhrC6sneUM7RGfv2Nc?=
 =?us-ascii?Q?ah4hc0z22fvdWJaarU2Yzxq1RGbVQTHrOsAcF24wnms4Ax3ngD6kHDeaIKFm?=
 =?us-ascii?Q?V4eA3z1LTo4rzqvDNNzOAyds8hlxx6Q1F+n36Ibze/g87tCJzewc2CIaHtsd?=
 =?us-ascii?Q?HSIyn+VPlZjj3UmQFYghu7E/0yY4rEownERxEeCvBr0+bzho5m+sBwNzaAcF?=
 =?us-ascii?Q?17CqyS4qMTDV/QwC5c8WQI7HOmSvKEaaE4KP5Ndit6ijhFEuXwN1VXZfMRSH?=
 =?us-ascii?Q?StgVh0i8sdazeVqzMo+WoErEIgb/gmnS6zQ4WflcfH2y8tpGk9hRsPM/MNWS?=
 =?us-ascii?Q?QTah7NUb60j7UKnOOay4ufh7w8/JPCp1wwu5zBpsBp+X7fFCSDmR+nbZMvhT?=
 =?us-ascii?Q?CwwSny/y4fAvfEDRjaCfHCytqjhw1OcEDQkUyMtVkMnHeAljBlYhBPZfnesS?=
 =?us-ascii?Q?riWdFKbV4jlXaeKZXuE/YxKrl/MyFQp728yeXBESQGkNV2ONwr626g/orjQ2?=
 =?us-ascii?Q?Uav+xJidl5LuFXPIcRmPhUeJ8xOYWmOTfItuPvhtMzq7fF2Nccl9DgkgoxB4?=
 =?us-ascii?Q?poWH1FthBHtSrVrUwiZsDC1QuXTVrdnPqXJPti/52GFZvi0tMHakV3l02/8Z?=
 =?us-ascii?Q?GQfG0Cw/EFqcL8iO39g7y13m+XNYjD4rbDgcgB9GRW771k9hpJJkQjC/Kqjj?=
 =?us-ascii?Q?q/u88z8IZFPmUhgLRPGaeh+v4OOxED2G58LfpQpeTFSSnS21RmU7D+uKA4qg?=
 =?us-ascii?Q?7NJXwEJeEno08FMKeXA8o2p543UGL4cfdt2nUtjwx/dQstqxw2JqEKrsqcSj?=
 =?us-ascii?Q?SNtKxUiP7CwNN0hpeVX1dHrcuq/LJLlhdWZMfoIUP47gmc6hYiN9VBKyw+li?=
 =?us-ascii?Q?8GyaZ1M3FJYC03sArmxnXrJh8G96JddLLjKYb2Q+376WabA2Y7g8qgMFNiHm?=
 =?us-ascii?Q?56AIB8fETH1kI4+v+Tf2pFRTs+VqlxYgqlMv9uV3pKtzHY95dTCrvUwV/Ltf?=
 =?us-ascii?Q?mURcVvqmuSoaqcWsAL9fAz6K55IgyVe60WpmQegetdE3GP+itC9DhDc1mTH3?=
 =?us-ascii?Q?TdgQPj7D3vC2DFrY/hcwg6wfKEW2X8Vsn86x+WdxDEKRNtOZDsg5oSQGYgxG?=
 =?us-ascii?Q?ca0bu/ASLRvHrJeZets8vrVIJfku3VyfYNBKq3jI58ESuNeQ3jSLx+TKhc7B?=
 =?us-ascii?Q?fM/oDB5r5gNLs8XckapD+6sWmtZIxllnPdnpK3R+YCCOo3KF1hv6VOb2o5KV?=
 =?us-ascii?Q?5A+TLGJjsxxFS8KoKAOdPxjnXaYQhxxgsGGHjxVZSYbQ0qEcGaz9jgE/8am7?=
 =?us-ascii?Q?Mp05lDCLETZGEcH4Z1ZREmcQuv4xGTqto4nByhAs5o9jQNoqAuzAUH5iO/r+?=
 =?us-ascii?Q?Hzckr6PQb+DQGr196/GtHLxoD0ZuyPD++xj2oRr7fu9JJtF8h+6ivvkxerv1?=
 =?us-ascii?Q?YvmO1D98BAtzKMN2fPQ6PKY9ZzrX+7PSWRA6RdcDId59fFRRYLhMaHd6ooiM?=
 =?us-ascii?Q?lA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 87aa4ce9-dc20-42c2-cfb1-08da6043dbe7
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2022 18:09:39.7649 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q7JZcY+gpnpm8/camnhLzVrcNNvlVnXx5sgsXPnkiLvAqI+fiVhZlG0JMv2nPasOcgjGC31lQOoiZ/68ooNWhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5665
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Bump GT idling delay to 2
 jiffies
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 05, 2022 at 12:57:18PM +0200, Karolina Drobnik wrote:
> From: Chris Wilson <chris@chris-wilson.co.uk>
> 
> In monitoring a transcode pipeline that is latency sensitive (it waits
> between submitting frames, and each frame requires work on rcs/vcs/vecs
> engines), it is found that it took longer than a single jiffy for it to
> sustain its workload. Allowing an extra jiffy headroom for the userspace
> prevents us from prematurely parking and having to exit powersaving
> immediately.
> 
> Link: https://gitlab.freedesktop.org/drm/intel/-/issues/6284
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Karolina Drobnik <karolina.drobnik@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_active.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> index ee2b3a375362..7412abf166a8 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -974,7 +974,7 @@ void i915_active_acquire_barrier(struct i915_active *ref)
>  
>  		GEM_BUG_ON(!intel_engine_pm_is_awake(engine));
>  		llist_add(barrier_to_ll(node), &engine->barrier_tasks);
> -		intel_engine_pm_put_delay(engine, 1);
> +		intel_engine_pm_put_delay(engine, 2);

I believe we should make more use of the runtime_idle to check for some
pending activity like this... but in the current structure this patch seems
the best and easiest option.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  	}
>  }
>  
> -- 
> 2.25.1
> 
