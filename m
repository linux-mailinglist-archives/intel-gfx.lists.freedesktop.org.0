Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCB88235AF
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jan 2024 20:38:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F12D510E35E;
	Wed,  3 Jan 2024 19:38:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BA7C10E375
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jan 2024 19:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704310707; x=1735846707;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=qIyIjZsyZRglEIxVQFxcTuRW4n50YbkyW2a7iLGUIYU=;
 b=IBi56MVzpdapkETu+mxoM0wMQlyRMEJCf7fKDYBwBTL+a14CrFLLL95g
 zLaE6768i5UuhOqFcqByTOWam4L/8AFz8bzS7ekZ6MnJEv2lToT6jprG6
 v73ZQVuRG8gAyJYE+W2a1QgJW5JZXI5V114uo9JwIhCew/JSCQPgbFe3i
 LTs+4F/yibhZNAewSvvHHFgoTJ4sJ+bHWTCEEMXkHTZVGmTxsLk4cnbUQ
 8d8LkG5AQlZT9D+PlSB0Ixa94mnzvQA7s+grr3EneBjcjKHaR5slbC9Hd
 rXACyBcBaRhqFKl6J+U+qDEDweGAcjKwY7Xws9aHuBPDKWyj2zBq5Edp/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="399834909"
X-IronPort-AV: E=Sophos;i="6.04,328,1695711600"; d="scan'208";a="399834909"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 11:38:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="903534230"
X-IronPort-AV: E=Sophos;i="6.04,328,1695711600"; d="scan'208";a="903534230"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2024 11:38:04 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Jan 2024 11:38:04 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Jan 2024 11:38:03 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Jan 2024 11:38:03 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Jan 2024 11:38:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VeyIR7CAgqTpRvXxJuTrUNbUYrg8hGvSZIlMJOKR0QHJxUtKMjvU88iuWy4J0otyXFkC5+OwN++xQZ8YlVTt+KCFPOcxgwzJq6XBR7DDkEGn++4tK14ftIek97LUj3vGUyOkECKLNubii/tiNmmBi8a6YM5LHds94Di8H1tMFKUxnoJsIM501zzAE+RX8C8GRWc6d5G42HEvbliwyFYRQkb/HGJTqNWQlpomjI+GBaWcLz4ggy/iEJ36mm3J59CTuVk4l44oD+mGzaLLNN73WMzDgx6T4Blayk9JTqEds8mEC9BtCylYnkpMI/OHT+JuUxlRRs4rUZN4vq/VAd6pAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yo+iOprXlULxTcTJGh1mwm9wZQCoqZUDQnVCtdQhAyE=;
 b=gGTnM4D6xqQi00ZvRRi5yKMMSb5Jvl+w1fOqSqM/rj5RW7HOkmYgFSgGzAQXD7CyaVqU9FOzvAsxI47RmjnxBNkvV4NCG12cb/sMi3W1oDTCW4wWU3OWf8N/gSgAKgXZhUVoR4etth9utx9ZRM4P+f6YQBQL4biOOQzxmhHbOOThv93l5D8nrNa+PmoCcfiklLsKvMPk3yh+O7td0eTxEU/1635jEw/8JfrJFelLBoPuK4BByxX+3gFARJOgXnrbRAxtc1ThZ+CnvD0B4oHcbNDqutc/8mXHH8WdpCDFtzU5cojQo6DXXKUf8UjMcuT4DeliKefRWgu+Z5BNBXvaag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CY5PR11MB6439.namprd11.prod.outlook.com (2603:10b6:930:34::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.13; Wed, 3 Jan
 2024 19:38:00 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3%4]) with mapi id 15.20.7135.023; Wed, 3 Jan 2024
 19:38:00 +0000
Date: Wed, 3 Jan 2024 11:37:57 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Subject: Re: [V2] drm/i915: Add workaround 14019877138
Message-ID: <20240103193757.GV1327160@mdroper-desk1.amr.corp.intel.com>
References: <20240103053111.763172-1-tejas.upadhyay@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240103053111.763172-1-tejas.upadhyay@intel.com>
X-ClientProxiedBy: BY5PR20CA0001.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::14) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CY5PR11MB6439:EE_
X-MS-Office365-Filtering-Correlation-Id: d3951d52-5750-48b3-7df1-08dc0c937e63
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UlWzdpVMV5BlZKddMEVCCHqEiGxov7bGUq1oV9fFXB7Ya0ddsDeXr9Rk8tQEt+po92IDis50+AYbttfIA89Yrn1vi8LhTZMuEaC6yCBkzgcCfV9Yir5qmoMNEeD4uzGlVgu9fQeVwU/RWr5DKUk4MDNRQaqrO+JLpiMkVMCGmGdetol7WUHa5k3kfK4+/G4lCYhd+l1UBGVfNfVpJsBj5HjBB4on2J/ASrJje2XU2LGYSRFXkbMcW4GuZMI58JWfEhTzUk9YOPArt5GOXUHkSfjPpuTvbd0O9+RDezewlRKiir5dx4IMHDlS+TGbUYm8LCwSl7BeT/AUnDaeBnmXeUZjSY4286x/ec0onc9hVsqxQNAo/Dor/8/X+TBZz/ixRDE/ACTt9csxC7EbTA8s6IC4Poilxs/jx8sio2AaizGraLLkdBDCHFyAsvohwulegwrnrVLbLr+XwjBZ4k+FCxitpVWsQr12vBF7C5o3kqKCZUhjRw6IxxJcGCTC0asHROx5QVCiszLudgga72xHcBaVDgwOLoCbFQHZhoudUS14n0QtsmQF5pITQrnT4voM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(136003)(366004)(39860400002)(376002)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(1076003)(26005)(41300700001)(2906002)(82960400001)(38100700002)(8676002)(6666004)(5660300002)(316002)(8936002)(4326008)(6862004)(6636002)(66946007)(478600001)(66556008)(6506007)(66476007)(6486002)(6512007)(86362001)(33656002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nxtJzwCqpLVnUYLbLpbFe3QtXs2kM/+LLMzHYcvLUWn43O0yskp3SuFLY41F?=
 =?us-ascii?Q?2KC/WmmTU4xGyMWR+Ll/KgnFU+hDoL6GHhInd8dGduOGnG8MzyiVhLrGxBH0?=
 =?us-ascii?Q?aA8KO9XjR1Du2p3czarGxylzBF9FOgIZR4I5J4iVKwAJlZWWS8DLQHxR9QXC?=
 =?us-ascii?Q?VjpjjwfU6Pc5WICF7nAWXm/3l+9NKO8QlxLIL+oLaYThFOzn/lt7co5VEv6K?=
 =?us-ascii?Q?ytVUqN/Yg4yp6UVb9DD0HMZwKthz3T9Ohp0o+rqlq07LXrTCOeaRParpZc+A?=
 =?us-ascii?Q?J989SPy3df/3KnRMSBWcpK1COp3ExcAU2dlAka+lPghzZ9UjteGJ26SBzqTt?=
 =?us-ascii?Q?JY81wb9Ffh9NQ1VxVD6+x8VqS4jVhzRCz3WPVsZRZ6yezOkAn+11WGgx9WIX?=
 =?us-ascii?Q?MI9IPsb+28y7LiZ3RK8feN7Jbwwdh/xxWypHLPwv/Rfs7Z94dchnYHk4j831?=
 =?us-ascii?Q?9N0LTFvW+RJ0PU/Vboxdr0X5AxAPx6v/c3mTL7XhOMjVH0SegXepyvDGKShg?=
 =?us-ascii?Q?nexb5zV9/gOJYUDlV4mBh+bnu1P/SPh8KCeH8OflyRZoGDCoUqBjjJ7lN66n?=
 =?us-ascii?Q?oSQvhD/5l2yfFwxgAEDh5kFG6KXjZKNT0HCvd5MvCaR2r1ZEHa5HRIyqydXG?=
 =?us-ascii?Q?b5miS1VluBNMRvGL4f7/+E2dqR7cXyMiyoU4VyZi/TobAnby2dExdruItKFq?=
 =?us-ascii?Q?cnu/nd1TJxC/U1To0iEdEx3y2X27JyP+XOe5fwjmSMS7LH3xdZvX6XE0Kc60?=
 =?us-ascii?Q?7g8UyRSUJ3kJIXQ0NdUFkApIpiQ3gX8/G+WHPECf8z3UjGLA/56qUBFJa1xc?=
 =?us-ascii?Q?1DDILO9kGAawdFUu1AymWMJ54qvzIEG8Ln0x+DrU9zjuZTUtv5s9Q+pLRuYT?=
 =?us-ascii?Q?MAXGLUmG3AhgP9/X5qOpem9VstL19LELXwQviWUuemnx5/JD5RTn6jHw9UF/?=
 =?us-ascii?Q?HRE16k8AhWEjZQ6uPlgLRQrBDxJvaPcf6dYwpPHm+oFpy8OlTVBDT5fL+g7W?=
 =?us-ascii?Q?YNiR8ZrKZzBqWSG1R0pSREqBn6tWqOBqwykBc32qVTgFxCyWHKMqKTHiVTLJ?=
 =?us-ascii?Q?ulUkQ9oErAR+4c7JVhLxxkGF5sgAaPn0vZrowYJq0lN5nje+K3m6ADnm6998?=
 =?us-ascii?Q?bKc2EBlUb2kZI6NNOI42BfJe5SRqGDvc9nNg+XwhO7E4O0gBJuJN1Fln5BAk?=
 =?us-ascii?Q?EubjtHZA2CfDh3S/vJPshqyO6mZ5ELacsHdH/GFMsPsOVBMjROm58AzeJYQi?=
 =?us-ascii?Q?FoFKozqr1yTiBFcsows2M36j/usgEhUS9TnqHejfvYifTRs9KrwMFINiZzGB?=
 =?us-ascii?Q?dEZvRqUnsMUqcLe5tEA6Vq08yXBlzIypqw1/vXoOYOhTezh9WyLiz/XHgG6B?=
 =?us-ascii?Q?5ldo8+tUjm9swmhZfj1jHD7tFFb0oHOWlRApkEg28t9H0fpGVtpSmNjBuJga?=
 =?us-ascii?Q?1v3SOlD1z1dk1tq9STb/TUb2Rel6bst9jiJV/PJ9n06qkJRXS5xn2mu6xmeK?=
 =?us-ascii?Q?DcGpPr4XNBLhDCmleW5rFzR6DoQ9rsBf8NhUSJJhDoR5gm63p/HNrahxxtcv?=
 =?us-ascii?Q?GoTKyozyNDiMxqFpxXDfX5JQ+ErSWmhrbOXt9Oyzg7deIDccITicOYTqKPi1?=
 =?us-ascii?Q?ag=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d3951d52-5750-48b3-7df1-08dc0c937e63
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2024 19:38:00.2835 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8S5Narr0xnKL+LtD7AOq0AKxRx7GeBDLXTNGcoesbuyJ+bnTOOiLb4yyqxOcO/mLxD+qVTZAeAShqJuorLnmy1tfPbKec3AIm8TqYqIwQP8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6439
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 03, 2024 at 11:01:11AM +0530, Tejas Upadhyay wrote:
> WA 14019877138 needed for Graphics 12.70/71 both

Also needed for 12.74 (which is on the mailing list but hasn't landed
yet).  But this change will automatically cover that too once it lands.

You might want to make the prefix "drm/i915/xelpg:" since that's the
specific IP that we're adding this for (we already have this workaround
for DG2).  But otherwise,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> 
> V2(Jani):
>   - Use drm/i915
> 
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 3eacbc50caf8..270b56fc85e2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -820,6 +820,9 @@ static void xelpg_ctx_workarounds_init(struct intel_engine_cs *engine,
>  
>  	/* Wa_18019271663 */
>  	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
> +
> +	/* Wa_14019877138 */
> +	wa_mcr_masked_en(wal, XEHP_PSS_CHICKEN, FD_END_COLLECT);
>  }
>  
>  static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
