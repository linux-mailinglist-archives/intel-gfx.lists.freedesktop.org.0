Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 305A26B2C1E
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 18:34:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B1D810E8C1;
	Thu,  9 Mar 2023 17:34:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4522D10E8C1
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 17:34:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678383259; x=1709919259;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=1vmUdWrtwc6a5BhlcOheUlqK1UsgDpqjGPIOe38AP0o=;
 b=Y1CD+EdwfpIHCw4/l5kxzRGKHp2td3nsaIQkBlPTqxvQQ0ekIOrWD5gC
 e11wnjRp6lDAClcz/nV2ua7oBf8N7Eho2Lv4gp9Mo1HoV4XJBhUNzOXHO
 0TfR+jm/1NgS8+U6NuJ9WAKvgb6V+f1Ww55lWRClhesDnP2V920YfqTs6
 HIt5AmyAlpGmLXCk61StYQXNDKCJ4NkMfU7ky+6VIi+b7UOVrgDtWBN9o
 YrM6qwFOa3yostBMM4o4ViWENC/fjKKSq+RslVrIrYFuBktGF+KvasG0M
 D5zHJ9x5ThlUObJc7gd257r2gEzUrfMgrmA1xFYFzF2Y4EywQi9swb3Vy Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="324850701"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="324850701"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 09:34:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="654846449"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="654846449"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 09 Mar 2023 09:34:12 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 09:34:04 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 9 Mar 2023 09:34:04 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 9 Mar 2023 09:34:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e0UVvg/aBio5tfa05a/yB0FIVkOFQ8jUu/yhBI9oL0/I9AaqFkoHxPpCpSswqTr1ji7ZfjQh5G3VWRVEEndgZJ1fHoJbAYKy8U4haDR4HaHjwrntl+wR31103UxA6aSVryFP93ggUxmpS9fbVrMrNefyjwSXZiThQ4b0nUWT7CXul0LhJ2ZLrhI39C83hZqLsBNNRyMk+S68Wqw9XogdApERvidhgEeB+yGhEiSZWIg8Pzl7WFvEB60hFeFramVL9umtyWtglavi9mACaiwdCAL/wUxJf66nGR1dqmEq9iRc/9JSYRmFicJ9yqJp6q6jlqG8JR49IekuwxQ0LNaovw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6kRdOysYfPp3GIne31V4nzAF2tsCuLIoNJ6GP65G3pg=;
 b=eyIbKmbrgUWaap8JLojGcJupKpd+33TE6fSiSXeJXtWMUJwrOju/nNRYmyVozGzU7EZsJfgl09cY9FKHukLC0pDgZR4ucPXkPQ+3LckizYxG2upYRizp6m3WHJ9K1jcP5IVRv532mYEEz36DH581H3cBWdm0ktWEKFxGuTcetWs6hIKOu237hw0P6HbE2yyhn6Cbdtf5WoC9gUds1vjsirMJmfF+z/UuNUIWHzS8M+2ItzaGontdF951mV+sL32JuDqBGqHVvsWHlyCYnWCb6hSqiuYDv1zngurwo1d3gbGFtR3JlYJ/hfFLSYuj1GMB6mL0l3TWFwGwtisixEjb/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DM4PR11MB7398.namprd11.prod.outlook.com (2603:10b6:8:102::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6178.18; Thu, 9 Mar 2023 17:33:57 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0%5]) with mapi id 15.20.6178.017; Thu, 9 Mar 2023
 17:33:57 +0000
Date: Thu, 9 Mar 2023 09:33:55 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <20230309173355.GT1543793@mdroper-desk1.amr.corp.intel.com>
References: <20230309165852.1251-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230309165852.1251-1-nirmoy.das@intel.com>
X-ClientProxiedBy: SJ0PR03CA0276.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::11) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DM4PR11MB7398:EE_
X-MS-Office365-Filtering-Correlation-Id: cfcb2205-8c9d-4263-5021-08db20c4764f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YIzs9XPvpnmLbd7jJj6g0FdVPBWpJcle3uFWGs0SDq+EJkizS/SXOptdJjONGClDEPOjubydmMuF9LKU+Vc96QLr34naV58aANbGUeXPobj/9N1L2qT8LmklrIHmbowsyyjex8YUgSKU69mq7FWvQ4vzIVtO3+9FsDbvFqd8lIdV4AylYN187sa1QUPO5oxyBZ5T218I5ekX5B4Fgh3fed/pXc3/iDPORIAErhfXthFBIwcTuaj+A6DFHkWtyd5qlXlEzT9z2ksWmxtCTmxSZywLtWYVmn3iV8u4k7zQp2qWsy3I2WBHz+cc9ZozSahF3czA1pqpx11YyhX5b5JfMD+SHReOrOlE6lFf8Kel7w35zjfCF4cmkdjHsyWfqF49mU6malltOAlQLxF6aJskWr5ii4NEcu0dZVhWdKjYbM3a8ptxE35VmoyuTx5P9wVn6ZYiLi39H9wXhRTrCKtv+lL7KKGJb65HqYgJKRs6Z/dAyNKYFcvnsoEQzUsHc+Uk72BaIjp2tsFUcj19tiLmVXHhVS1ePJf1cyZDbitNFTSPakRRCCJwb+7YuoF5glXLvjoH6CKeFaRvnO6A0P0FsOw+s9jeL4x5cGyRxne6eiUVoLXdmsAub2ScMeq5qpyzXTm739hhclg7oQaskW29VA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(39860400002)(366004)(346002)(396003)(136003)(451199018)(82960400001)(83380400001)(33656002)(6636002)(478600001)(38100700002)(316002)(6512007)(6506007)(1076003)(6486002)(26005)(186003)(5660300002)(41300700001)(15650500001)(6862004)(66556008)(8676002)(66476007)(8936002)(66946007)(86362001)(2906002)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GIGjNUtm9jRLfiWu6ok13mQ4yTaa4dYB8NO4T+kYES1kx26VxmwB2EAKt5VO?=
 =?us-ascii?Q?v0ld/cBlG4Ppm+URkBSW5aKY/pf3TyzVGqgNHIPpfgZEDb5VlB7srLND9Q6B?=
 =?us-ascii?Q?9m/YJctanimhgs0/3gBvjrE0qBzPSXqih/pqWbiI5z8+VllPoWxzZCosOLdB?=
 =?us-ascii?Q?j8wusQUCgZELlgbpKVdnLk7+94YJ/Rn9DWNr+IPy1RaYxwfcIoAI0cWeEDFt?=
 =?us-ascii?Q?MSYzu2tUWRZc92/7i/cGbwlHIfLgojSnUm2vhwvxK4ydTqbHkTYZSKy03gGA?=
 =?us-ascii?Q?Ctln7nyD/5sziSHtgqtntE0NaeyK17VJpDKYU24Qr+uzWpqaa6DHMmLiETA3?=
 =?us-ascii?Q?EPfBR8d3ocOvnADjJaV34jYgqiipQ25nf0oj0wa7TsTxZXaUC+oY6O1XROis?=
 =?us-ascii?Q?pKVM2Zo2UP/PTC1RwYzeHsSKnE8IPRk5FBP92Eb+k5X8ETbKd5rBy1vJQSsS?=
 =?us-ascii?Q?wgC22jgGUo6hrV8wTarl+HLNOc6tIgY+SPGtkTgBlAhBIaO02KSYSOMdSKZo?=
 =?us-ascii?Q?VhWUxgVBxkXW0N819gBOYQQn6l/eFtKDaTnQnBBo+x5AdwnXdzXpHx58EvWs?=
 =?us-ascii?Q?mnYVBzlUmb+ou4kn6Llw/D7W6bfiiuL2+3QpOZK/HOzjw4LKhxzaulbYddsp?=
 =?us-ascii?Q?mV0iwUPHOaQfK/a26fzYtVS1LyQFcevnT4wHQHXQGZSocxWVbpEyhgEvvjyO?=
 =?us-ascii?Q?ru5C3kpSOBpAxvyL1E/Tt0RhTAhaKncXbHPjfKONFRGOUgP0Dk8HQ0Ay/zdX?=
 =?us-ascii?Q?eVo2hhqdSI0rlNPj7/3A5JvR44MzkfEhtJeA8nAm4obBN/kDHcE42qycWVSg?=
 =?us-ascii?Q?x8KWV2nNMDwmyxGYd9GTJjVZCtiDUnGwCmtlR2DAksQ/jm6RtvyphzGJvj5g?=
 =?us-ascii?Q?pnwlbbPO15xQD5tjhkv55Ad4Q9xtA5V+5JlNlMfnK9E6if+KzNNOn0y4SCeR?=
 =?us-ascii?Q?0eNtamgBBMSNbo7efOVxVRwoMr1N//qC1YqzyUHsyzXZbqUqu2qRkKkRszeC?=
 =?us-ascii?Q?XS5j1dMJ2KqEoRIABt1jAoHF+xY86mp1Qadwgk+/6xcNFMi14k9+8/LBEte8?=
 =?us-ascii?Q?t3hsJHb8I1/LoeATmU0D/HV29gxY6hy0QNO8EmN0joevtQuR2qfbnMDdck4Z?=
 =?us-ascii?Q?mZFle+vl5ixx/q+VLk2qEBiUQkiRVBx2EFNdyOvm7mJ1yw6xUi5OUzwv+mSV?=
 =?us-ascii?Q?V3Knb2WhhrgqeXxcHvbCAPGpOIb2vyk6qanXpQh8Ov4EquV5AdfnvK9AWWsd?=
 =?us-ascii?Q?rv5sz2kbxmK54iu0C12e5YmORIkrWJRwwoAyYRvnv0j9mOt3MwVd/B5WGzCd?=
 =?us-ascii?Q?zBTGaf3PADa3C2RkYb3GgVA4+pMxtqM2EjUl8FGQFEQreClx25YRrnbXSKL5?=
 =?us-ascii?Q?kPHxS1HjPOlAzysDdKmgfMm2/gtyKUwUMw2+m/POYGH1H5dixn//9FGHFl9u?=
 =?us-ascii?Q?hDTsXw00kSeI4mwu7XQL/hyudDyrQrrbLUSG+xhwdMXB4A+bRhW1kN5LPPWj?=
 =?us-ascii?Q?C0Cj7YFr3YwgBS4vfzUL4PCVaKKz6t7SpAe7LKgZ/pW/du+YidmbpxRfbIKR?=
 =?us-ascii?Q?jM99uV0c7w2bXPKHJkr2KFIN1A+5wIyw3TbGjSqyjYed2Zp/UKziXwixVpS0?=
 =?us-ascii?Q?0g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cfcb2205-8c9d-4263-5021-08db20c4764f
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2023 17:33:57.6313 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NotRLAlAWLPYn21sdaN8LwAC1hnBA6yevIPE8UKiIHcWdKNxbDwLeoaJMN1KKT4s29W/3oW6vm10cAlp7zB2f82Ly3wLzp8pFnXmV40dQ3s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7398
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Update engine_init_common
 documentation
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

On Thu, Mar 09, 2023 at 05:58:52PM +0100, Nirmoy Das wrote:
> Change the function doc to reflect updated name.
> 
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index ad3413242100..83532630b639 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1429,7 +1429,7 @@ create_kernel_context(struct intel_engine_cs *engine)
>  }
>  
>  /**

Should we also un-kerneldoc this comment?  Generally we don't use
kerneldoc comments for static functions.


Matt

> - * intel_engines_init_common - initialize cengine state which might require hw access
> + * engines_init_common - initialize engine state which might require hw access
>   * @engine: Engine to initialize.
>   *
>   * Initializes @engine@ structure members shared between legacy and execlists
> -- 
> 2.39.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
