Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C35567A1B3
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jan 2023 19:48:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C331410E08A;
	Tue, 24 Jan 2023 18:48:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77FA210E0E9
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Jan 2023 18:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674586121; x=1706122121;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=qqHurtpC9qWajVtlhNZ21Lo4ibwfzwJEH6Exn7XCsSs=;
 b=NsZzQ063BFQ85LfzkTUbQRuGI0o2kvHJ5jL+MyhCTa1c2OzMflaN7EPp
 hHBip/PW9oX9/+avAgDCv81gO41WfMtMgjHxQUr3oJbLZzt9KaYJtGRw/
 b+8bUF+96nPW21pXMBF0tmNg1TOqWe2TmNQaHJghJhRt/NEkq2wgTqdui
 jhbfB3S45NOuYBT64bwo5zbGtZa8pcjj6ve5q0uS0phCrqY78olY4Pz6I
 PS6XpdgJPUtFdXUF4qosBkf7fVNTk2OnrY7Y2mqAfQgAEWZ/W6Pspw8J6
 un7yw5ol7rDg8h9kQRTgfQwkc/7M/cW96901/iyZYk8r1YD8syEYTwUhR g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="309948505"
X-IronPort-AV: E=Sophos;i="5.97,243,1669104000"; d="scan'208";a="309948505"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 10:48:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="730788290"
X-IronPort-AV: E=Sophos;i="5.97,243,1669104000"; d="scan'208";a="730788290"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 24 Jan 2023 10:48:19 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 24 Jan 2023 10:48:18 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 24 Jan 2023 10:48:18 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 24 Jan 2023 10:48:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jSwxCIORpra6dhto15ciys3K5KSWj0hfBTk8wyWQ4odJ61na8xq4iN3+uRKjZv2javeQto12ByHMT5LsX0IpxRFFmXKl7VP2X/T3J7ldJlFDw2zTLTYZFcjneiKHcfGtAS7o0mx38IMaBBQnL/7Kd2uQIT3u4EvkOB/2l4n1wsG2qqQdZ4fOrXlQA5EESHk0EylDkzefMvjMLLV7zosK+5WeGPsXmNhPq4OZO6Dpm5ZLe5UrnSR2l3BhdGCp6gpsNz4QXJWrgPitb83ft96IibuyEWXlFm2yBFl6MoZIgNH2MPgr95Q14NJshT5ZyBzm8+yKA2C53mpS8bzOsLojVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G/KhL26db0ZC+CJE8dlNK7wfJGL1LlcvhGjGvCRnYJA=;
 b=QZ+fky81EtVp4bJ9B0gm2vPJINsXgKiv7utMGZu+IQkTzrTVVT0nVnryL7irMSOu9X9uaMOv3L2RtmvP+3YMm32LQD4tWDqUtgMHMpABCSWwmIwD69XilMb090BdCa1+HdZVfwlCYjAojCZ32tMDn2IwvhRCbusGwYpSNAOrPWWDcj6wdeJeD98UKaGv16ic+pgYAl+Ri+YE149zRUviys3kKwIqclAFMUvwMIuSJjVVeM7/sEUwWFj1KQnuQ17DWbGThy1MWIWsb/gbujP2L6sBZLUGk4o78soG8Byd7vGY6FfXleThhSBLAgnS72+ZIs509b/x2PvnS/ocBM2PGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB6795.namprd11.prod.outlook.com (2603:10b6:510:1b9::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Tue, 24 Jan
 2023 18:48:16 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6002.033; Tue, 24 Jan 2023
 18:48:16 +0000
Date: Tue, 24 Jan 2023 13:48:12 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <Y9An7AeKBIpZE4mi@intel.com>
References: <20230124102636.2567292-1-jouni.hogander@intel.com>
 <20230124102636.2567292-2-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230124102636.2567292-2-jouni.hogander@intel.com>
X-ClientProxiedBy: SJ0PR05CA0166.namprd05.prod.outlook.com
 (2603:10b6:a03:339::21) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB6795:EE_
X-MS-Office365-Filtering-Correlation-Id: 92178801-71ae-4097-0856-08dafe3b8db3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xqx86WuF4QCX8trP49wsck/FBYVLA9lqSdqCPsG8Hg+D/Ge5WJHzC6n0IwR305tyt3H29fVdbOhTJKA7uexLY8cjWLO0HMoKXz3iUCm3nGe4H8lf55HNAmxuQz5zCpawn9OOMAyGDuhpU2lvqgPeJgE5I/8mIhtfpwxxm0mEowQeeNNZCKDSTWzdxSRQCcPhok18NelLihhIrxJOxc95+vyL0CC+/Z0XfmmXvfAgPcz+DO6sedhaaGGFcQmFolxZQ8dXVLNIJu3P0+C3zP8oQ+kcvV5kt9YEXrwUtP3lP1WAbWLzgN0FY9irwamNzAkmBIAmi8O7K78WQbTKKbXAsM+FGVo5jcTqSZSP2IyAODNcV4fviyAsS7aR2wgx5ojKIwCCGXVmVweakBovlRqgIjkU5x5ArsgXf8KuHIGMqbTZcQcLZTTO9tS1ozDccQxIo+g7439L45zqj2lWwZILescpN7sj0d6qf6/larubTYe6K1Mf/klxJkrxsjmV5H052In/TPaXl6HIC66PFuUvqImDUaecActeR6IyL6/RNvhKod/cHkGWRU/Y79dYFHqA58sXw6TGX/Bv/p36v/CplLXUZvl1iVc4gLlkPBuX+Au8bz888aZCYjtm/4Y2ACRCThDZ/sMpzPlbshSGqrIrng==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230024)(346002)(376002)(366004)(136003)(396003)(39860400002)(451199017)(478600001)(2616005)(38100700002)(82960400001)(2906002)(41300700001)(6862004)(8936002)(44832011)(5660300002)(66574015)(86362001)(66946007)(4326008)(8676002)(6636002)(66556008)(83380400001)(66476007)(26005)(186003)(6666004)(6512007)(6486002)(6506007)(37006003)(36756003)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?APb8fRD9FRLUO3H48sOIhqv3ALU9fRNzzj7aSRhA8MMwmvfoZmiwKPZzO5?=
 =?iso-8859-1?Q?Lbb6TgqJLykr4Z4kzUEYkbI6i7dA5JmCgJVnEfYi5JS0kSljeWWZURyawz?=
 =?iso-8859-1?Q?gMDmXyUVLHylxVd2X6K5OMnd6npXOibTG4aufllxkrB5+bspEcapHeVRUv?=
 =?iso-8859-1?Q?MCLd9YH/Bekb63fwwcMmoQvdF22gpusEZVlqmrX8LswyahXqST14AHzPrh?=
 =?iso-8859-1?Q?jEqE8R78z/dR5y1tSE5yYq1vVJligFFpGOTSn56/RaEbXvTw0rOKaLg5O5?=
 =?iso-8859-1?Q?uajm5phB3KK6xF9GLdyInRqCiZbcs6nfMVIXdDfQ74RdhnYOY3orz84gD9?=
 =?iso-8859-1?Q?tILlqY0cmsZvHn6e3eSK/o8Yky3z5Z+pBnOfnhjCcxRd4HAWjhOqYS6Zhr?=
 =?iso-8859-1?Q?eebvwm+dCb7NfA2rKQmsT3ZJfHxB87+FJV13j2wnqAcTEXRh9yYr0W+SkB?=
 =?iso-8859-1?Q?EmvqQ4DffGaj1ZkwZjlx7Wie58CisgvotTY1Akah+QKJx4+/WagLwkCxcM?=
 =?iso-8859-1?Q?cbpwyhMDUibBxMGRBTt/aOUDBnZPcqKU7A9dVH26qIxyL8KYfJs/KrYDhW?=
 =?iso-8859-1?Q?uQLS3OvktSt1eB5utihN4bGFOfGzUA0w5w2a3LXeIOxrTtCzSkMw7fYLDi?=
 =?iso-8859-1?Q?FRMHWHKWMXjZ5ff29uju68YMngyRQCEpvgvIMCA+fiuvYBvoEkg8YVP6pX?=
 =?iso-8859-1?Q?QICvoUb5zBPDHM88GGgn0h9IhcMbO0ht6lWKN3FwQDBZaTMbgZeAg4XauS?=
 =?iso-8859-1?Q?66QEzj/uAo6jLpxlvCXLcU+gV1XltqqePrl0ePIVGIAlTuorHdzu1vJa+D?=
 =?iso-8859-1?Q?S5HXYEod0ehdmgy88oQLa1XjGdYzNJvmstp0g/CATb2kIaUg8kDmeGN7tp?=
 =?iso-8859-1?Q?y5Nr1hRZgjJG9MhJCIFC+c8qbx2JHuFT3FkmkEHRBR62DjbHjkMljF1a2N?=
 =?iso-8859-1?Q?5B0S/bxKhNj/aIyXV0Sc3rmq6BiPJEGQYlK170cZVYDXYlzMY38SLgAefC?=
 =?iso-8859-1?Q?NFXYGN3BPeX4AXsOylNq86JoWaWYewYPSIDBFQb1BAJtpywL8kNVS+P6Qm?=
 =?iso-8859-1?Q?/L3qFjLhCOAl/Rd7Apnj33t15zCrvrvCbZJulE+Inzc47R3B4cxdgW3m6m?=
 =?iso-8859-1?Q?2hNlWYAMG5ZV98MEE4VMsxzvbG/Dxr3ZkkhAtQRahdlcgN2YFuqoMX3MkF?=
 =?iso-8859-1?Q?HqBPxRC0+6BxlaAZ5Lf8GUVIUAJyWybZM+aJyd5fbIos0L1a7U0DmgfH+f?=
 =?iso-8859-1?Q?FBrgLOwanX/GzMyJmiC1Adb/MXqqLo1sWmXKpeIPipM6w54Fp3B4P4uy62?=
 =?iso-8859-1?Q?KD8Aj8+rAv85r0YW4IJLu2YnKeLhzyIZziQgipmvOcWelwX9AviAV5RJE3?=
 =?iso-8859-1?Q?y/mzHeCne8+d4CcNc69ABWWY2uIUUcGHpYUbuMnZUwR/uOivOIsDDjUQtb?=
 =?iso-8859-1?Q?py1w6z0T2J95QJwlL0D2TmUFqF706ZcaZlYN0NCt7Tw9Uds7A4fWlijrzZ?=
 =?iso-8859-1?Q?vkJXtgwEQc9x9FYvSfY4dGrGVK53GNlXeh1itQCaU8n7l5pYJx3wNY58r3?=
 =?iso-8859-1?Q?5KBKHq3cMFWTtKpO9yFvKALSvBBL/C9NsDYcyK8cvAAyKvwUnEJ1zbP4a/?=
 =?iso-8859-1?Q?Q00or5EU2IjWSouacwutwD8vdU6o9z+DZ9GZjrIyldHbJUuXk4+XGVqw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 92178801-71ae-4097-0856-08dafe3b8db3
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2023 18:48:16.3004 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: goWTl30TldOPUDlfM4CtPzYxZz2KFu9EB1jwWRbbIfURAkUbjnhq0m0JQRao0OWLFj2dZmdJuNDS8ksQepmI3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6795
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/psr: Implement
 Wa_14014971492
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

On Tue, Jan 24, 2023 at 12:26:35PM +0200, Jouni Högander wrote:
> Implement Wa_14014971492 and apply it for affected platforms.
> 
> Bspec: 52890, 54369, 55378, 66624
> 
> v2: Adjust platforms where applied

Thanks

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Mika Kahola <mika.kahola@intel.com>
> Cc: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 7d4a15a283a0..7a72e15e6836 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1842,6 +1842,12 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  	if (full_update)
>  		goto skip_sel_fetch_set_loop;
>  
> +	/* Wa_14014971492 */
> +	if ((IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> +	     IS_ALDERLAKE_P(dev_priv) || IS_TIGERLAKE(dev_priv)) &&
> +	    crtc_state->splitter.enable)
> +		pipe_clip.y1 = 0;
> +
>  	ret = drm_atomic_add_affected_planes(&state->base, &crtc->base);
>  	if (ret)
>  		return ret;
> -- 
> 2.34.1
> 
