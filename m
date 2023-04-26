Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D57BF6EFD0F
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 00:08:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 849F510E55A;
	Wed, 26 Apr 2023 22:08:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCB1810E55A
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 22:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682546886; x=1714082886;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=SD5Aowmlna9Ct38l0IRRHyUBy/smAtCp9ib+Dhovrjw=;
 b=fGCHprGwLhB4o9TLeSIqkynTZV7lVzatQ5tUL6YF7oQl6flWR6Bb+8BS
 j0SsVQ3thy9oT9Plak5GEC/EONMz5yasXfv/Kc+NPe16qu0vHZVff1Lq3
 PizzkO+k6aRCTbT6UawKUDpPHL0PzgcbtLB0xb6Xd6PFdpSn+5an9yDp2
 rN2rsZA1UoLOD3s4GMHUJLxEmN1gskTuy44GmR60jWcMiDktHBUdDPOjz
 1IjbJbhjVUnHB5/B9xWfSG9IycnQzRE6gvP/guy+r7hpXBp0dUlfKfTKk
 5d1zFCXYNtYIl4NwWA31snvswQdvxXZseqE9x2ud0syt8aj+avKLQWbyj Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="375221615"
X-IronPort-AV: E=Sophos;i="5.99,229,1677571200"; d="scan'208";a="375221615"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 15:08:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="838114112"
X-IronPort-AV: E=Sophos;i="5.99,229,1677571200"; d="scan'208";a="838114112"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP; 26 Apr 2023 15:08:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 15:08:05 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 26 Apr 2023 15:08:05 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 26 Apr 2023 15:08:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g+z/sLyK+xFWqx96KWs4DUFdBEvuQvKi+HxSvyAzpPf/W6dEFFKyIrVhuVq3cGvUkLIXx7dAUKOj/Plkn3LXLS7J8qGk6AAMrXcQKFW8TTZ1FZKWoe5xsBhzq6Os/o71h9s1wRukY4rr6NEujuWHvbglGxFVGNjKAkgsMTSqbMmemoPTA9t5pqvqq028f6s4fOSHm/vQG7lX7RmeJACwwt9mJj4RJXzPQehHHPJ0zfsmHLIC0cSMTjmD7HpTiEpjzKbz2NmJx2OAduP7igmpg2asJs5Dt5HuZuHCBCHLbzHI+9JtcMBCWo5MASmD59ekOLwwf6PU5Gj4cvDyFwJppw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vdh6ylhsC+noGs1qV1wyaTSXoIDso8QEsXtMIRFI724=;
 b=i8gFe+1+k38hBWj57aObsJy5CG6WbUztTganVTSSX49hnHYV7CdEutnwXW0OOmWrrzCD0Un96/RVqtiOONfanos+d6M/GMYLKX7Ief669cU5dKAwj8i8wpfhHdNJLStZiToxTvZGjY19SE5GNXQyBbKS9U/SDcBARoYaV3Q1iwsnvWS++x8tUFwwXcKIDCcW3zBVZKDlpK2wNlH6/9ALyTD1CbpI+6+bliwPT/NHQIMCLxmUsmCSXwUNqX5tg6nEMNLkDsGjF7Ve7mE0qCFUG4k2VKAWWsHI16KTIMVJfM1LHqT8QUiYgWjR9WkLwuyts09+nws2lS+AQEuierIzTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN2PR11MB4239.namprd11.prod.outlook.com (2603:10b6:208:192::20)
 by MW4PR11MB5824.namprd11.prod.outlook.com (2603:10b6:303:187::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.21; Wed, 26 Apr
 2023 22:08:03 +0000
Received: from MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::4c7:f160:a73c:86d7]) by MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::4c7:f160:a73c:86d7%7]) with mapi id 15.20.6340.021; Wed, 26 Apr 2023
 22:08:03 +0000
Date: Wed, 26 Apr 2023 15:07:58 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <ZEmgvl42KQwyxM6f@msatwood-mobl>
References: <20230425183011.865085-1-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20230425183011.865085-1-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: BYAPR01CA0018.prod.exchangelabs.com (2603:10b6:a02:80::31)
 To MN2PR11MB4239.namprd11.prod.outlook.com
 (2603:10b6:208:192::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR11MB4239:EE_|MW4PR11MB5824:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a27248e-6cd5-47a9-bde1-08db46a2b40e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FYe2KBaOcZqPxVV1FyjLHZUX0o24sigMnHYuos993f7l2MgRF19U9y2sYwrxJCVhuAlv+Qdvib3JTO4C6Jnqd9W3XLT64W8UQ/lmYzgv8F8z98RUHWx1BEiAVKtM3JwavnFRKxwhrlRb7c7qc0+MixCIZhIgm8ylFKYa8EIk4/poiPGyM7YtdpQP/BvSJy/SNvyBQ1SpPG8ybQBahD/wWtYFNjqrvzbhUUTVz9HxlFAgtjr57WrMw8CUXV3KmgRHhUnfA8WNyjAIxISAKB/tDe9Nk4097gGhCJlM5uGBQzs7tve2CuGEGJdjmMzofVGa2gskw5D8kXSEzK+tf8q2+RXhyVCWnIWqpQxRAC0XW2YpFyBhJsfP8lDnu70MYzosfjftv2vvd8ti6hdgmhYq+olAszTugFMOkrNyRORAcY0Fk75m3XAkmldDjMQ/iT+VNjo4YWqDQYq9VmW2D4j2TrOwHbyjiBYUNV9sZvIGcofVkWEnnG1S6kqbbMPDzDgzawWpSIQ9n3GLmTqMJSbIX3k9oOumZ0s1+iwHlwHjt1MJdztnnkzB2XcMdwtm66DW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4239.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(366004)(396003)(346002)(136003)(39860400002)(376002)(451199021)(38100700002)(5660300002)(82960400001)(2906002)(9686003)(6512007)(6506007)(41300700001)(8676002)(83380400001)(8936002)(4326008)(316002)(66946007)(66476007)(66556008)(478600001)(86362001)(186003)(107886003)(33716001)(6486002)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MzRUbEx4MHBzKzVUTG5IUENXSTcwOGZDSHk5WUR5d2podEsyVmR4LzBuVWlI?=
 =?utf-8?B?d2VwTkcrYlpyQlpRRVpGaFR4T2dwMGlMMWtUQit3Mkkxd1lJNXpYSU00QTJJ?=
 =?utf-8?B?aWdxaDU0R0l4WmFSSjFxRUFHN2lFYVVLc25BbW5MTy9EM2NQWGlIQjNrc3dE?=
 =?utf-8?B?OVJXaHhJcmNabzBPZ1MrczZtYThLa1FaRUZOanFiNElFd08vVkU0TUFGSEdm?=
 =?utf-8?B?Y01uVWwxM3dkMWJzeW4wUk1qTlRPSWVLZDhMbmdWSjBuNzNmQkJ6eDlzcVJZ?=
 =?utf-8?B?QWMxZDlKc01PZVJHeUp3OGx2RDBYcmowNkVKR0VFRzVBYkduZGw1ZU5NdlhB?=
 =?utf-8?B?dEY2RzV3bmU3M3U4dCs4Wld0OXV6TG5SUG9EMHRaZWRHU3RPUkdlRzhHSzhP?=
 =?utf-8?B?ays2NXZxWlU0bTUvc3JUK2FydU9YRTM1aVB6U3YyVVVHMVlCNk5IMTYxbzF5?=
 =?utf-8?B?Y2JmKzRLeE1DbHUrNUQ0OFBSaEJrMDh5VUxQSG01MW0vWkhGZ3JZSW9BV0h1?=
 =?utf-8?B?YnVZcDhHcEpKUDF1VG1vb2swVTQyd00ydkRDWnN5UVpCV05pUWlOSWhBVW5m?=
 =?utf-8?B?bUNramJDaGJJZFVQWjRtM00wS2lqYVViayswRWhMNUphSW11eEdBUk9WUmxn?=
 =?utf-8?B?bk1WWDBoQ1BxRm5jRTNUdHUrTkczZHZVakVORUJNcURmQ0lOL1FmN0tiZWp1?=
 =?utf-8?B?alRwdnhOMUplOGZxYXQ4Y1poeklCMmhEdVNRVzNldXNnV2FnNWkzR1IxcTUx?=
 =?utf-8?B?ejV5RUR0RFN2OVozMnkvR2wvTXplQ3gwd3pkdGE3QnhwMXFxMEdrcTJMYkx3?=
 =?utf-8?B?ZkM1UFRnZXN2dDlSWElyUzRLbHk5REgwM2dJNGE5T2pvaDlqRWpDLzd3dDA4?=
 =?utf-8?B?bjlqbkhkRjlxdUxCQ2Z6cEY2VGFPNFdqMXNDazIrNHVwV1hqajBrTUNJMFdu?=
 =?utf-8?B?YThxV1ZFYjljK0Q5dHZGQzh0ZnRGZVNzQytZYi9ENWx1bUh3WjJya0IycGVB?=
 =?utf-8?B?UUN5bVFxZHB2NkZCcjVObWs3QmZiKzFRdWpwdi85aklOamVVd3hxeVVhYit0?=
 =?utf-8?B?UjJOUDF2dXNvemZXbHhhVHIxd1docjUrOFdIQUswVlhDQkJ2aVN2RXJHS1I5?=
 =?utf-8?B?SDZMc1RjbGhnV1JZNUJIY084NGJtYmZjd2FwMmhUTWliV0crUURGd0dkWEEy?=
 =?utf-8?B?SCtueElqamhYL1BZalZkTnU4R0U3S3liVXdXU1hnT1pyUC90RFJXczZlcXA0?=
 =?utf-8?B?eVo3ZWRlSUlsc3ZCQXBmMkhTVnVjN0xlbk1pVmNURnk1dTluMkUxL2EwckFj?=
 =?utf-8?B?eUdCT0VFTWk5UmVDcktNMW5qWVlWY09PRndZZjhDZU50VWY5T09rYVdBbm5m?=
 =?utf-8?B?aThxakZqREVkSjRLMVQ3NUlUY3dBNERleFY0UDNLQUNIeDk3aDYvQ1dJOGNB?=
 =?utf-8?B?MTFiWHJlU0tNek00QmVOa1B2RFkxdldWNVVtdm8vTnR4K0RUemZSejcySmlR?=
 =?utf-8?B?OER3cC9UM1h0ZDM5VzMrbmNoaXhDRmVWRURIbFdaNVlia2t6Rjd4WlV2MlNu?=
 =?utf-8?B?a3E3OUEyVytoemJWOU1kY1NtYUY5Q3hhMXIxRm9IREpWNFNOU0JYY2NsTFFq?=
 =?utf-8?B?SytQUkR5MkZZSEtEdlhjcXdBcTNSdlA1ZnZQZlRMck1GSUUwUCtiSXNtRzVt?=
 =?utf-8?B?N0NFRWFQTW5aRU9SZ2RNcHlOK002RXRXMDViUlVOU1ZFRk5RcDRlcGZIcFV0?=
 =?utf-8?B?RUdkYnZ2MFpjcGxjSVpZNSt0S0tOVmRyNEJuRXZRVWhyK1BPL2dId3hCaWNp?=
 =?utf-8?B?M0VUc1FDTmp2TGRVZ1NxaVVrR1JxRnRaMlZqYVlySjY3N3BJNEFGUUo5UUw3?=
 =?utf-8?B?OEVmdCtTT2tGMUVhdThkbEdYMHhBbnZHVk5Dc0dMRytWN252TWFRQmd1QzFv?=
 =?utf-8?B?Q1NoQnZyMjVvRnczOTRwd3M3L0VmVVY5cGxlaXRoSWRLYi9NaEI4c0NNd0ZX?=
 =?utf-8?B?U0I0Z0MreEZ6UDJCVVlKVVpmSXdZUlFPZ1graHZNK2FGNm5XTkh6blVUZVpl?=
 =?utf-8?B?OTVvQ21US3ZYcU1aOG1USVRjcnp6aXd3ZjJTbG1RSWFyR2dadlh3K3B6RVJk?=
 =?utf-8?B?cFZ0bUpNZUxQekd0Q003TFdjQlBpL3ZRZDdvVWRDdStOeVhham1oM2lrdEI0?=
 =?utf-8?Q?u8ZRZj2uKSW0IhE1i+Ddij0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a27248e-6cd5-47a9-bde1-08db46a2b40e
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4239.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2023 22:08:02.5013 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TTNUosFeHxtmlc/dOY9R7IsE/ycphZ6+BE/1oRIln5t9l0JKVaN+49kBaxsCV9r6ewP2Z/K/NXOnVKEKEGGMEh2/9UR1Ndf32+2Qx+gJqmo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5824
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v1.1] drm/i915/mtl: Implement Wa_14019141245
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 25, 2023 at 11:30:11AM -0700, Radhakrishna Sripada wrote:
> Enable strict RAR to prevent spurious GPU hangs.
> 
> v1.1: Rebase
> 
Bspec: 51762
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 5 +++++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++++
>  drivers/gpu/drm/i915/i915_perf_oa_regs.h    | 4 ----
>  3 files changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index e8c3b762a92a..af80d2fe739b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -529,6 +529,11 @@
>  
>  #define GEN8_RC6_CTX_INFO			_MMIO(0x8504)
>  
> +#define GEN12_SQCNT1				_MMIO(0x8718)
> +#define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
> +#define   GEN12_SQCNT1_OABPC			REG_BIT(29)
> +#define   GEN12_STRICT_RAR_ENABLE		REG_BIT(23)
> +
>  #define XEHP_SQCM				MCR_REG(0x8724)
>  #define   EN_32B_ACCESS				REG_BIT(30)
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index de4f8e2e8e8c..ad9e7f49a6fa 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1699,6 +1699,9 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
>  	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
>  
> +	/* Wa_14019141245 */
> +	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
> +
>  	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
>  	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
>  		/* Wa_14014830051 */
> @@ -1707,6 +1710,7 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  		/* Wa_14015795083 */
>  		wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
>  	}
> +
>  	/*
>  	 * Unlike older platforms, we no longer setup implicit steering here;
>  	 * all MCR accesses are explicitly steered.
> diff --git a/drivers/gpu/drm/i915/i915_perf_oa_regs.h b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
> index ba103875e19f..e5ac7a8b5cb6 100644
> --- a/drivers/gpu/drm/i915/i915_perf_oa_regs.h
> +++ b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
> @@ -134,10 +134,6 @@
>  #define GDT_CHICKEN_BITS    _MMIO(0x9840)
>  #define   GT_NOA_ENABLE	    0x00000080
>  
> -#define GEN12_SQCNT1				_MMIO(0x8718)
> -#define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
> -#define   GEN12_SQCNT1_OABPC			REG_BIT(29)
> -
>  /* Gen12 OAM unit */
>  #define GEN12_OAM_HEAD_POINTER_OFFSET   (0x1a0)
>  #define  GEN12_OAM_HEAD_POINTER_MASK    0xffffffc0
> -- 
> 2.34.1
> 
