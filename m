Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2AA6132DA
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 10:35:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 668F510E164;
	Mon, 31 Oct 2022 09:35:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 763F010E168
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 09:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667208942; x=1698744942;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=J0xDXoqnd0bKxfemiSRMDT0TDRTPMSNgToW/PAoUjX0=;
 b=msPD2TxaMrqiFtDwUgA4wrDpCFijUzaDU7sie7UxtdLHezoswPdyrG4k
 OZoMWlhYlZ6R4K73iQ22oGGID/KiJPOLZ2EaJckS921bvK6kLVJV+NLb4
 u9TWxIe5PSOP1BagKhmvhz17V1qaYXJJYThPVPTE3cD7ruzbqyoywRy66
 gVHMBbfjPwIaHME/GCLm9+KsPxG1lXiSyHJLiURH6TSGLqyd91Nu77E9t
 mZ8tjZDcStyhtJH14UGRLIN8xuWZNBdqhIsE9LSZ0sPzO4RhvFxgCKZJg
 ixn+wP3TPXhfZDKhXcb0GrKc6sHwtoSglLxTmzkfrbMSm8sbWIM4oj8SG Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="308855324"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="308855324"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 02:35:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="962717297"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="962717297"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 31 Oct 2022 02:35:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 31 Oct 2022 02:35:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 31 Oct 2022 02:35:41 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 31 Oct 2022 02:35:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CjRDQs/aYyOVycLxVUotempYFHQObCQ8QxLF7wUr1peMYNYt8v1fIa215xLAxSc96W07pusmdb0GcLxY9zxVmpAijBOflE6YNIfNTOtw0LRSuvyHn14J9GgrTLsHrU5d6kRPYaYpXLzMUHSktbxtP9pNGYT22hbSsH62FKoIYS0FghEAwkrXlnWLlCthzthsae2RFyC6QQ7wnqB2yZNpqjRTjGbIYIyIwlM8qjgYVQ12LjP6IzEcqjnrXn3bT90gOoIsierbNSl0xOJNmIuh7uVKM4FkHp8srdSsy0A3bC/ejMnr76QHv0AfHklrxnBez+eH4mCwzVy1Jp+GaMMMXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NarMDHW/KCgYSM2JEn6Vm8A9v6R4d0gafzWQ8yV04fk=;
 b=Yi4bYlQipskaOty+LCCQQsEtP6MakR75y0LOEXx+oX8quT2DRe1cWbiYezTgrZEgBLs/Y5p/FDHNmJPh9PPZgBibmEEXmQZOSkUarsthD5+72fkI5zevvzBlLMFJbEamPvcQJHU6mGz1hFo9FjQ0wQGsQGStT9iTON19cnAf0o0lMFMBGhzv+gJlh7FfB3ZE0UeBUpsgrpgSlo86EO3pwjgd/Sstr01cgjX0NXaTbVnysucG+DQoM0lvFC2utSGktEJfa9CucElKohethu41l1Dcnk+yiZVDm7Gpr/5HFrOalNai80BcZCeThW7fITYF9i77fSxsZLhq9OLErhR0Dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA3PR11MB7463.namprd11.prod.outlook.com (2603:10b6:806:304::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.19; Mon, 31 Oct
 2022 09:35:39 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::29e1:56c3:823b:45d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::29e1:56c3:823b:45d%4]) with mapi id 15.20.5769.015; Mon, 31 Oct 2022
 09:35:39 +0000
Date: Mon, 31 Oct 2022 05:35:34 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Alexander Usyskin <alexander.usyskin@intel.com>
Message-ID: <Y1+W5ipudusyL0NB@intel.com>
References: <20221031055117.1043830-1-alexander.usyskin@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221031055117.1043830-1-alexander.usyskin@intel.com>
X-ClientProxiedBy: SJ0PR13CA0235.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::30) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA3PR11MB7463:EE_
X-MS-Office365-Filtering-Correlation-Id: 985d96e9-9ec3-4196-3b0d-08dabb234580
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: md6Iu4CcyKj94nmJfoZRSuhgOqIk75lyjIWyJycGr4soQxZmX7n9y5Ogkr3BPp0qxuUj4VRr15ORs5YQkRe70akVWSJYp8aBLYUAgBIcinhxn37h5h10u6I5zW8IbwRg4nTHjnlooBX0sG5Sr3KXILDriNn/VYTf8JJ3FNolFG9AuDqo/gEgT0trRa7EBKks3sMiuirpxck2WXaF7tvNFv9DYCyTL3MNUO9u0miu6bZ29ignpLWrCWpj/leHLAPRRPWZwziaBufnly5luXJtkI/1PzuVQzoo3gyjTMT3WbBCd/wGXFYBzjvpkeVtPSo61BU3Ogpf81ZUy3tHKHECDwc5gONLqp8d4A4ZV4Lv8dVVka0gSXiC8VAS4nnLNXx/cY39e4nWvbjoELycNlCj5/XW7uaUjhSYzvZaOw4/9L44JeMihDJBV1SGtRAdZAViAjSwbXoSz5h4Fj8glsAY+Lv053v2jj1y0oDNAh2M5PjL8M5bEpV1vcU5JNghsYYXPfPvnE35MHT1IgRLuJ2x+VvGrqNSlDAculhor1m0EidYmpl3pvdSh/z+cAMWU2O/KUOjAY5rU8LoWGUD84xjw6SF+FLU/H+RgQK/15KetcwoQdOL5tw50u9wvcRDVWHjsiv5o2pAGiYjKJE6NMvv7eyNfLkwpayhiOepxOTUlce+JbSXeNIcH7lO2lTz9oy90Qh73gWQKp96sFxmKNqhzVDCx+byV9JgB1Focaf+5WTfNCmf2tWexrc+OHa8MIqV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(39860400002)(376002)(396003)(346002)(451199015)(6512007)(5660300002)(8936002)(6862004)(2906002)(186003)(6506007)(2616005)(6666004)(44832011)(26005)(83380400001)(36756003)(8676002)(4326008)(66946007)(66556008)(66476007)(38100700002)(86362001)(37006003)(6636002)(54906003)(82960400001)(316002)(41300700001)(478600001)(6486002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?L5FOf6OB8FXD542MLK4wC4pzyUn9L61WUiEU0QD0csHe0Z4739MWYGfK4D?=
 =?iso-8859-1?Q?ZlP1FXh/pO2z49ODwH90nrJ1g8gAqDcfOmx5FKkrciqGJZKV4DDPL0GbBL?=
 =?iso-8859-1?Q?Yy/ApFrIfr0G6/oVoNFIDcb39o7AJyDKlLT7f/tdytXjzAa3wMidET8gZH?=
 =?iso-8859-1?Q?VlxBO4ll3T5PdJuZbrSgUYVbT2l0RAkU2CcuelIpPdBivr9irvEiYn7pcR?=
 =?iso-8859-1?Q?qDorjjRoz6C5QtIsPg4hXGq6xxlJ63w746tJ/YwiSqIqDk3VPnoEPZTeFP?=
 =?iso-8859-1?Q?efTqQUEXSYRO7M7eAqi4dFdNg38qwfbHLioC+rIT+3h3JGu6TpU+c+Ymc/?=
 =?iso-8859-1?Q?kMlAQ729WxuJpCJsPlRQ3mSyyuSdkdgvrkJi3YYd/C+K1irmCNAR8VFCrj?=
 =?iso-8859-1?Q?zB6lV1frSBYRPmSuh6iLZIFsI6Q+2Im0/oHHqiZersTUWiicxUBjEFckgS?=
 =?iso-8859-1?Q?VRYQ9M8OTTx/+C8nNGAngMUbjQ3gklIZFcFmU9cb+2C2xatcqNcPmcmYAQ?=
 =?iso-8859-1?Q?FCuo5HP7kAR7anLcxri6iKz6lJ4gzVB0SSjFw+/LdTka/AoOje8WfaeRfe?=
 =?iso-8859-1?Q?80VEJCvx7YYSCv8Cj0xiM1epc5mJaF3uSZ8t1UrefYq0MKyUamqxgKjvTH?=
 =?iso-8859-1?Q?U8/FOEBL/wAnjKDd5uFqgBg4Cgq48s1ec8XvHCJ2G7MaVwFGDn4Sc6zNEO?=
 =?iso-8859-1?Q?XCFTIzEBnRhMvvH+u+wSEGj/bRdIqXb6hyGv57UA88k0DZ3qTNL3AUukIV?=
 =?iso-8859-1?Q?HkmGwJNBaCoVTtjnzGRq7obRt9+rDnzaBACHzcEOQAylBZKob2+Cy1N2t6?=
 =?iso-8859-1?Q?PEXUaoH/FbMz7TXPpEImRUk8bsmn8GAj/tTz8IdCEUbI7gXDXVU26XAQi6?=
 =?iso-8859-1?Q?NdoxmHAvDPWbL8OGIyzFXZlBIPT03507Z3R1cjKzjNkAi6s4D583QHrXyc?=
 =?iso-8859-1?Q?POI78SfCHj1xt4XR3EfW7VSU7T2hFZZcYYJ1c7tzRWZcBbLkNMoqMWoBYF?=
 =?iso-8859-1?Q?+Fd2fE2+yzgDpze8Nl7zoLPvzyy37l48RYeNWS/e17f3ViKloNyhB49k2l?=
 =?iso-8859-1?Q?NKeUIMfY2d+kApeWlsOq9pMzURJj+LgoFvBNTyneTBX64ZeP9m6CKCzAPS?=
 =?iso-8859-1?Q?vMQgnlXqPOfdb7X5OtSciX9lTEzFLL/FYmm46vxFtUY4XCEjyNZWMFKDej?=
 =?iso-8859-1?Q?A4d5cyAlIpphKqgJTuGZY8H02XNz0a4DSEA9YoDLCAf5WMQnAepz1kkaWE?=
 =?iso-8859-1?Q?khCVyZRjod+PhnSIsX+jkS8n8b3vCjNnnqY5eMEm7KngsAIRiwj1B6bYAU?=
 =?iso-8859-1?Q?83h1ifDED5CXmnPC2Wbdhwiw54+ajysGR7JYM+bK8cSevYTBc6T/bHoKfi?=
 =?iso-8859-1?Q?hr3cZDPOrIB9MEqDJ7AsidHvaLIyg/fH7LqVuLhgu+mq9l3jYrJDtkdjTa?=
 =?iso-8859-1?Q?419tamQe2/Td7oGw5UY8f1qhXjz9ivCqpkPedTY13qxrv75dYEbRZRnSCn?=
 =?iso-8859-1?Q?0/UkjDAFS7tAc3VHHuCU1Xt0JgZ9GAgSOf+OQxQ60hFgXI10vB8dRxbPNH?=
 =?iso-8859-1?Q?VqVHq4S+gEHrzba81Fz4PMIcWipVj8tyzQeA0xignmBB+CsmGgM3Jtnxju?=
 =?iso-8859-1?Q?hXQUZr/KlXbzcLPFd54D4jBdU779YGcB3w8c3lka5pAIDJUN8hSpkSJg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 985d96e9-9ec3-4196-3b0d-08dabb234580
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2022 09:35:39.3595 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pwoWM8n+Fhwcwb6qh1LhEMNL0C4LbXDoUm4JgTBBYWtHYqDkwzsxGOaDeUuP3EWUnqC+ovwk9ALzLAG5OFoyhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7463
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gsc: Only initialize GSC in tile 0
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org, Daniel
 Vetter <daniel@ffwll.ch>, Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 31, 2022 at 07:51:17AM +0200, Alexander Usyskin wrote:
> From: José Roberto de Souza <jose.souza@intel.com>
> 
> For multi-tile setups the GSC operational only on the tile 0.
> Skip GSC auxiliary device creation for all other tiles.
> 
> Cc: Tomas Winkler <tomas.winkler@intel.com>
> Cc: Vitaly Lubart <vitaly.lubart@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 2e796ffad911..92ad8cd45ddb 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -456,7 +456,10 @@ void intel_gt_chipset_flush(struct intel_gt *gt)
>  
>  void intel_gt_driver_register(struct intel_gt *gt)
>  {
> -	intel_gsc_init(&gt->gsc, gt->i915);
> +	if (gt->info.id == 0)
> +		intel_gsc_init(&gt->gsc, gt->i915);
> +	else
> +		drm_dbg(&gt->i915->drm, "Not initializing gsc for remote tiles\n");

It looks to me that we need to move the gsc out of the intel_gt
instead of workaround the initialization.

>  
>  	intel_rps_driver_register(&gt->rps);
>  
> @@ -787,7 +790,8 @@ void intel_gt_driver_unregister(struct intel_gt *gt)
>  
>  	intel_gt_sysfs_unregister(gt);
>  	intel_rps_driver_unregister(&gt->rps);
> -	intel_gsc_fini(&gt->gsc);
> +	if (gt->info.id == 0)
> +		intel_gsc_fini(&gt->gsc);
>  
>  	intel_pxp_fini(&gt->pxp);
>  
> -- 
> 2.34.1
> 
