Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 596487A0EC9
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 22:09:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7595C10E0D7;
	Thu, 14 Sep 2023 20:09:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B6D410E0D7
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 20:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694722190; x=1726258190;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=tjn7JcQE50LjdmxtEcDRBLz4GFE0e/3oPbqYDaVBylc=;
 b=TAzTifp9+Z1ToBTEhkcj/BgkKlX/xa8K1FBwCIMWtLaz4esCtc1deN0F
 603JvyYcCLq9vHG7iIooH5h5380sO2r7Jdy/KTYM1+Rw+Wn1ttphYEzja
 D6U9VMPk4roD3q7Jklwh+f1dZ59ZinkITU6iyQJegCwocljGhaTI7vtqp
 Bw+tgNjnZUSsZ98iwFa30NxCuMZcHuFMOayKWcufQUDEwmP0lqMZ5OgX3
 6132IYz47IEn2kCDUeVNw9+N4Dqqt0YVKil3W9e38Nl3CLBwXI8A2kzNf
 SfVPJxTrLYDV/pqGxRrI9jSnEpmlsNPVsnBqBy+a8w8OzeV2gC0pYeBT2 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="358478019"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="358478019"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 13:09:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="747887821"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="747887821"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Sep 2023 13:09:47 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 14 Sep 2023 13:09:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 14 Sep 2023 13:09:46 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 14 Sep 2023 13:09:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BViRGaVPCF1pPiUaVtaFybcoNZh+SYcggGn7Xjx/UGyR4mHQyPp5KtoGbsnZ5H2L7qkhhf0YMX35ViuWL3UDtr2stjKnIBY9KncIWvMxuqDOVJA/MXPV/Bv6t80JIo1UdyTTVNKFja3TvQeXRp4C2u7/qIIzErEaeSrREaSP59iyDx8SktN7ZhLMKhzTffAtz5zUoMiEVHs0f2P9hItvGZazfNojY2ScchBJdCMbsCjA9D5MxROG5POWmaU03xunatRp6iXhbyp0oKcjrcXJjiXvRnwW0A66QGIB89QTlncBHEQIgva7Y0/9Iodgcjln68+LqULKtKeY0cpn6aBF3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d+IubE6xn4XLkiEfyCHBArKhtlpbt1ybQNhEHeN5r9Q=;
 b=RkJ4OxQY6NcD1BJlyeqiN3Zi6zCS8GTtgWswGZC/ac1sYqGEMaJlcoO4ZWza5NiMuGWf883s4prNlJUY3mDYVltjXx3WTaId3cWN7sVnsFs/v6DDf76cSR+PRb02rlGJfIILhBMiikqy7jjf5G7lzY3pspOVYldPz6O+V4tXicsEH6wQuZqCgUM+UPWm4gMq6d9VJVxkCmVHjj2XIvsJgXZcZZLdoG1I5tebJxcmRlMpJvDwUgO3q7AxkkIGvgaQgEovKwmK+0QKlDUyvhXiu250scgbT5DRP5YpoB0ZCrwYtBphijqo1t2g/hm00FX41D+udK0J5dqbY/MuQvoERw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH8PR11MB6926.namprd11.prod.outlook.com (2603:10b6:510:226::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.19; Thu, 14 Sep
 2023 20:09:43 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6768.029; Thu, 14 Sep 2023
 20:09:43 +0000
Date: Thu, 14 Sep 2023 13:09:40 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Message-ID: <20230914200940.GV2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230914194032.1066442-1-dnyaneshwar.bhadane@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230914194032.1066442-1-dnyaneshwar.bhadane@intel.com>
X-ClientProxiedBy: BYAPR05CA0031.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::44) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH8PR11MB6926:EE_
X-MS-Office365-Filtering-Correlation-Id: 2cb968e4-efca-4d6f-5c2e-08dbb55e891a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sTLSPOl0cfpTRZkaQDFGY0sjzlXfb3uZ+AnFCU3UHgWFNisUOEwtjHGSoaQBAa4F7FrwfUja2zNw3wJX9G0r06tonBTUMhO1nv9GB29cjgcPrf3ZAatJBMC9Yb1Ya6+uQpD/e06WZeEWMIoza20PB1Aq3E9IXgb9e7NnMHJwKfeyplwBwH+qa1Ep2KqULkeKrGXe9Lc6wfDXWLyuXghM1fqxO93FjxFZSlTLIxZr2yEhs5JIcXqlTMPzEVxNWhBm9aiQBtNa9f5tAoNawB3BEc60aRPXFJgPQ9hVc1/uzOE6YcjL9tlLR3GjCuwBoGJJ+n+Dmtl0GX/oGIvK+GbdiQWJpzv4tNNsEDmFuU8rI/hK2AokCoFGatk8Q20AiaU7tzkXwsqALmULME6mQo/3ddCh1WwwAECjqSUJ0gLl2pAxq5o5dg6zIo/xyWUUbmLJm0Rfktsi2Ab2k797GnBENqAOpQWhi3o9JJ9CrjkfzoJJWFMtHBMi441eFDAFCFU36WOn//n3wFZn3fE+Qs/7vrvQ4+5CWRZCKtyBsaoFf9g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(396003)(136003)(376002)(346002)(451199024)(1800799009)(186009)(66556008)(66946007)(4326008)(966005)(6862004)(8676002)(478600001)(8936002)(41300700001)(316002)(6636002)(2906002)(6486002)(6512007)(6506007)(107886003)(66476007)(1076003)(26005)(83380400001)(5660300002)(38100700002)(86362001)(33656002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DKC7AbgBwWP6Er6GMkb3drQ7RmA1Lpxd3guNxZdLe8Zh7OAqyIrAIrWUNr10?=
 =?us-ascii?Q?lZb11v+sSHFeJMRPYs8lT6Vr15xr9loa5qo1JxZEuNPoiUdsP+6rvmLgLF6/?=
 =?us-ascii?Q?6aEO9HYrswZVvFr6ZtoIKP3z6dFNxH2rxxHRa/9NqEKvsH1n1eew6dzetU99?=
 =?us-ascii?Q?BavJU3jmEAMNYA66rJ/sQ56ti7jcnLm5IDXPrUqO5R6L69hjvni/PrQ4/i/L?=
 =?us-ascii?Q?g05mqQvkfsgS/RMqlF+uTzBIfPfX8xQvsg5Iu/jfsUf0aQPXTRIdMBUlEYTs?=
 =?us-ascii?Q?50MsCio9e3SixG1jDvJ2q49rNau5QCsGk0M190ItoemjI6rDjOrmTc0bqkR2?=
 =?us-ascii?Q?8Mf6klUbe3DCaw3GkJdTy0mCpO3K9yhfgHRI8r9cBT0Sc8Z1kGPvK8qpQTYo?=
 =?us-ascii?Q?eog5pfTjhj6FfvS9CQXAn3z78khAbVJcXALGmkxPQCTTwXHvEQ+SV9rGGSwn?=
 =?us-ascii?Q?5MtclUANcSdfvuDFB7gh23na4Fib56CTd4JNH4nuHZPyjowdHjyumSJKTxvW?=
 =?us-ascii?Q?UIfhit2K35D09KovCILKDZaZmFYwuNpSD+Btm96wN5Vr5X8bZvnojMEn/0OW?=
 =?us-ascii?Q?XsXAzWdeHv25aaMmwNy3uyrWmCReCFClt40v5aqsrg7OWLyFQJKhjajL49W6?=
 =?us-ascii?Q?x083J5C4afNUDcHy7/kTvjk97ItmlZ3NYJ8M2M6PltEv5fSV2DmfmkcovScY?=
 =?us-ascii?Q?QLal/bQ4zQ2Bjr23Ec2o9878488LO5lFtX94wkQApXY3hO1RfTzRplbSNpz+?=
 =?us-ascii?Q?XB8xhTfkVpNq0NoLgzNU9Rr6sDJb37Tr5bgA4z7uA9sTAtyx8CBbFhAdU1fD?=
 =?us-ascii?Q?YrDnrIymcRcpMc5w68USUoTr5bwIpWX6Hsy58NXNadUqFi/Bccj0Zqhcvw0D?=
 =?us-ascii?Q?J2IG1DpaCrYuaeDK1qORpHzCGtSKyQagnx4Q536ZguN84WvhB5GK5lXVB8gm?=
 =?us-ascii?Q?1vYqQ61hZKXIy6jxyMG2dJpQlVmdDzpKnevO0Bich6tIpwxnQJaq8Vl703FM?=
 =?us-ascii?Q?aV7KWAZEZSZbS2eM3+5JFi3GN1Q40mKecJ06Z8l5D6wm9aRTquWRNe+mrs0y?=
 =?us-ascii?Q?LoEdGn4zBArpHVWJXY7CP7pmGu5hJwy9Ocb8gYzbDWp4+oCPaOpmMFbWxfAd?=
 =?us-ascii?Q?MagE+O7ADJO8UBGpigKg6Ty1imszKy8raONRpjhnqP8vAyVej+Luvtc1CpGT?=
 =?us-ascii?Q?pIGxjjdbeEErn40oJWDGH0JcYDQl4o61lQwaVO8cNBGr8TIH/2fttlFASTR7?=
 =?us-ascii?Q?y5orD+dRf1SiaeFEbnGb7k0UuFe0+K4aixztkm/sTR2xDh68md564aJ6wc2F?=
 =?us-ascii?Q?izajpcA+0GiffPx8Gt0jVun64a3Fdj9Vascsrk8qbxft8s5ggADoGKEnxL4n?=
 =?us-ascii?Q?YO0kCaIpnBgHhOKK8HeM5gUxVwtM58w7DhSb6OhOs1ICi4pdriHAjOacYjzM?=
 =?us-ascii?Q?g8GhZq2m4/I3KJH6BoMuhQKXiIwNqqrE6iaKRnvzuqpNl2Ylw39UhxnnJrEh?=
 =?us-ascii?Q?FgKJCApU+glVJ7/ulDYtHp/Je7sB7Pd2YWrPO902ZfHAAwD0iE+/IMdy/iaJ?=
 =?us-ascii?Q?h0zi02+KwNYMrxTaslRbsXAGaYpkNbdpLP3VSJFFFSCt534EbwumJ6PkemWo?=
 =?us-ascii?Q?lw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cb968e4-efca-4d6f-5c2e-08dbb55e891a
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2023 20:09:43.6316 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5K09DnL36ri4oXYOOXecn28ne140swsbDZSdIalyF1QbljIanFG50/RU19z4ADzvv/rvAELzKavBzjjaDTDi/1focwD5+18OSqQLGn67P4s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6926
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6] drm/i915: Add Wa_18022495364
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
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 15, 2023 at 01:10:32AM +0530, Dnyaneshwar Bhadane wrote:
> Invalidate instruction and State cache bit using INDIRECT_CTX on
> every gpu context switch for gen12.
> The goal of this workaround is to actually perform an explicit
> invalidation of that cache (by re-writing the register) during every GPU
> context switch, which is accomplished via a "workaround batchbuffer"
> that's attached to the context via INDIRECT_CTX. (Matt Ropper)
> BSpec: 11354
> 
> Please refer [1] for more reviews and comment on the same patch
> 
> [1] https://patchwork.freedesktop.org/patch/556154/
> 
> v2:
> - Remove extra parentheses from the condition (Lucas)
> - Align spacing and new line (Lucas)
> 
> v3:
> - Fix commit message.
> 
> v4:
> - Only GEN12 changes are kept  (Matt Ropper)
> - Fix the commit message for r-b (Matt Ropper)
> - Rename the register bit in define
> 
> v5:
> - Move out this workaround from golden context init (Matt Roper)
> - Use INDIRECT_CTX to set bit on each GPU context switch (Matt Roper)
> 
> v6:
> - Change IP Version base condition for Gen12 (Matt Ropper)
> - Made imperative form of commit version messages (Suraj)
> - s/Added/Add in patch header (Suraj)
> 
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> 
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h |  2 ++
>  drivers/gpu/drm/i915/gt/intel_lrc.c     | 13 +++++++++++++
>  2 files changed, 15 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index a00ff51c681d..0d5260d126d8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -164,6 +164,8 @@
>  #define GEN9_CSFE_CHICKEN1_RCS			_MMIO(0x20d4)
>  #define   GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE	(1 << 2)
>  #define   GEN11_ENABLE_32_PLANE_MODE		(1 << 7)
> +#define GEN12_CS_DEBUG_MODE2			_MMIO(0x20d8)
> +#define   INSTRUCTION_STATE_CACHE_INVALIDATE	REG_BIT(6)
>  
>  #define GEN7_FF_SLICE_CS_CHICKEN1		_MMIO(0x20e0)
>  #define   GEN9_FFSC_PERCTX_PREEMPT_CTRL		(1 << 14)
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index b99efa348ad1..56c916730e9b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1333,6 +1333,15 @@ dg2_emit_draw_watermark_setting(u32 *cs)
>  	return cs;
>  }
>  
> +static u32 *
> +gen12_invalidate_state_cache(u32 *cs)
> +{
> +	*cs++ = MI_LOAD_REGISTER_IMM(1);
> +	*cs++ = i915_mmio_reg_offset(GEN12_CS_DEBUG_MODE2);
> +	*cs++ = _MASKED_BIT_ENABLE(INSTRUCTION_STATE_CACHE_INVALIDATE);
> +	return cs;
> +}
> +
>  static u32 *
>  gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
>  {
> @@ -1346,6 +1355,10 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
>  
>  	cs = gen12_emit_aux_table_inv(ce->engine, cs);
>  
> +	/* Wa_18022495364 */
> +	if (IS_GFX_GT_IP_RANGE(ce->engine->gt, IP_VER(12, 0), IP_VER(12, 10)))
> +		cs = gen12_invalidate_state_cache(cs);
> +
>  	/* Wa_16014892111 */
>  	if (IS_GFX_GT_IP_STEP(ce->engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>  	    IS_GFX_GT_IP_STEP(ce->engine->gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
