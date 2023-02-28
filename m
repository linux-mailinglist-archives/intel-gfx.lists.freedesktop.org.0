Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB416A5FE2
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Feb 2023 20:44:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15D0D10E06C;
	Tue, 28 Feb 2023 19:44:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 819CC10E06C
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Feb 2023 19:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677613458; x=1709149458;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=o7T7SxWqknxx22BRve1VMrO+9jjTjG/YTEmLRYmJJCc=;
 b=RhSpMS6l6+Y1lD9gTfhRTBk8MzSeclkXpFJimeMVNWduNKnuAN00Qokj
 pIbplHh855tV/pc0XaQyeRS6O+xy15Cwc7BwVnGWO2Pgdy1B+VpkclVfl
 qEBdO845ZzHhDFbEngtJQ/262IA6bHvWIocZl1qfuWDygKXnanZP9WW3J
 lABRDf4yBwn6bnEI7UM9RczN7H2H2LN9nwBPlUMRlWB0Vcc2hwVTfyPVk
 Cljor/WWGDy+gC0czyNltAM8Rw5qfRjzMiIwh7qKiERyHW+PepzY5iNkM
 gLqF26Yb3kH6/feTMTu9Y2UZ25sUr6YDPMo44xaXEkB512Z6ICjrT56P1 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="322489410"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="322489410"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 11:44:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="763292624"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="763292624"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Feb 2023 11:44:08 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 28 Feb 2023 11:44:07 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 28 Feb 2023 11:44:07 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 28 Feb 2023 11:44:07 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 28 Feb 2023 11:44:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ELGmbrmC16AlpY/q2p9ZVjdHTnwSyJe/EQJe7cjv+whab01aegDq6otqnudvZ7UvA0BlRGlW/eFQzf9QbM2A99IBF3x5FvKfTDBMlTmufEdOiofyFmoRFGVFebLH0QAbNJMKRtqve+tjcBI1zPpboFKvPzVpiGMXkL8kR57chRjxC27ySDUB41gLIiiSPmmyKR0h3AEXnp6WjpP08lRb3F8i95yMN6gpojfpt+PtQXoOQWNPGDq1Dnxg3HnGyaG1Zw0lOkMzVnshkYFgaC5cCbCKX5+RCZCBcxaDnggeR0ol+fcIz907X6HFsa21LzRCuJc0yIJ+OjYUsDfnu+rOnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=igc49x/4sL0n8ps7vu5wzEnmYrBeGaOseNtKjZuvhC0=;
 b=VEjgwSSHhiF9I7YEa7GdmQrriDTfymCN5x9T3ukwE6ptsghqq9hjVGs+F1J1dZNeCHNmzO2wrH06U9jxAvKai5/ebccTtM1ZSI7HGfawUxB3GdhHpPS8TTMTo+MxvJFT+OQklkyR7BwZfDd6bpP1KQEHz3dN+fSVouz9Gv52+LQ5Q3oaELSUVfGqHHm89ad2VnkS76PHuWAa+B2D9kxiB6E3h96jxu04HDbsi5UQ0BDaEcaJowDtoxG/aN+YwHFb1jnTp5DZvgfn10Sq2w1exCtn89CsmzFu/QFBMfNb1pidn4VWaMcA9NF368ImhV6onxpaqb2xVcMYHXHU+DbHdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH0PR11MB5577.namprd11.prod.outlook.com (2603:10b6:510:eb::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.30; Tue, 28 Feb
 2023 19:44:00 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::8808:cbc4:63f2:eb7e]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::8808:cbc4:63f2:eb7e%4]) with mapi id 15.20.6134.030; Tue, 28 Feb 2023
 19:44:00 +0000
Date: Tue, 28 Feb 2023 16:43:52 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <20230228194352.paoyo3qnk6ql7q7d@gjsousa-mobl2>
References: <20230224002300.3578985-1-matthew.d.roper@intel.com>
 <20230224002300.3578985-2-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230224002300.3578985-2-matthew.d.roper@intel.com>
X-ClientProxiedBy: SJ0PR05CA0205.namprd05.prod.outlook.com
 (2603:10b6:a03:330::30) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH0PR11MB5577:EE_
X-MS-Office365-Filtering-Correlation-Id: 58b1b905-e8a6-4af3-8ea1-08db19c4232e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I99gjeF5eZQdoK7BBQyZr6wUgXJJoZ3HijVky3TWuCEuPrHdz4Rym96s5/iAYcYtGsOtiTbxEgzPZZU2VoR2sUTe7EvmnEBh8Pr0qv5W22AObgqfwsDgS4na6i6KFuYW/zN4OVNRNiYr3tr6osy544YNMOsJTzdxZF16NJszr9CH0Me2xRL+AYiflcf2L1o/DMsFDpt/0Djge+ViyrKO6yP7n2yib7r8JfNLR8eT4hfC7R4iPx/qnCQ02vDf08MWhXMLhPydrTRgZLrWruT3exvHYFAcbMJMyKAxeMHAxTO9UKVcaAI9H+OzfBP7VN17ScTZiTPtQTmwAHAx7X+DjbdjzK9W3OtB0vUJOOHLQH/BBRNvcY5bswIcJ9L4kyeeu/IMqG6PFX/qkxFmXa6itJnQz8tI4PX04xM34COXsrzY+sytVhkYEPjR05FqYlloTMQD979EoNvY3xF8PYTfdD+GxqfEMknXkMrFD5AxShXB1QMq7I1V1FTYUhAjmlwIjxWXQVC+U9AIjV0+sifhSmJ4J9McftP87ppuD7Odku4LesZ0erCaUD1Ihi0NQvUnbw3gA3pXoIUm0CAKUu77aeYv9hE3tL6NxGT7RC66JzJjD+oryXV47ytyU9X9i7aikyW+cI2kFd5ddepPVlRyFw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(396003)(376002)(136003)(346002)(366004)(39860400002)(451199018)(86362001)(41300700001)(66946007)(66556008)(66476007)(8676002)(5660300002)(8936002)(2906002)(44832011)(38100700002)(82960400001)(6666004)(6486002)(478600001)(316002)(33716001)(83380400001)(9686003)(6512007)(186003)(26005)(6506007)(1076003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TIKKuZdJF5Kk7OlycffXNix8K++0oYoiix5GN/f963xyS28WAP0kjdFXy6LE?=
 =?us-ascii?Q?aFJ76gXT9US9o7E1zY475InpAlzCT7nTp5Pp7U/9NnToD40+sKGyvjfh6qd9?=
 =?us-ascii?Q?M/ctpZAIqtxVNBiBlTK8V5V+bdCLcjNOQzK6gbE6U1Pg1gJwP2yIkFx0anbD?=
 =?us-ascii?Q?DDvPXOSZbg9MSscTKwWHOwti3g+YmN1lu03hm41hzvoeTnTsIoJ6LlPhNgnv?=
 =?us-ascii?Q?tAEQP8C6O4RzFZonndydUh/LBZlp+I7YqnCMfA5Xv1/Dtx3S8RVqtuRqE5uT?=
 =?us-ascii?Q?JQJYYQR4c1MlNPjCW95EHSHETyQCbFrqtuhVm4Bch5TuzYhXEPoK3V5uji3B?=
 =?us-ascii?Q?MEo8Y6hYmXj+TmSPbRK3jdFUSozxuHcTrR4d6J0JuWaVdNlAw0JdnyZCly6I?=
 =?us-ascii?Q?QvPDhbLRoIbGy+0HrEcbV1XZerTYDXVHqhDbCK3RiZKguXZIOvZ1QJ1uma/v?=
 =?us-ascii?Q?MAGMKDMXpLIzbZpoVg/NyVc42mb4U8nAEvPJHk5METLpwKMiuBQUCxD3XwDz?=
 =?us-ascii?Q?HKmH3ZbmnCKm80rRcwS4OsPtEEFJh7lKrS2jm9qtC71XmZgueb1PTauOBg3+?=
 =?us-ascii?Q?xwZ+8AVgJlwH4V/vkYO8lwiP4HEgSV6CYgLwp9z06B9pqY+9uUTj78hedjjL?=
 =?us-ascii?Q?6DtsypRoMrGsGDxjIbrgcOjIoqxCvk+IzVOSYpVV+A2W4sdzxJ9A4fg8KjCW?=
 =?us-ascii?Q?S9DC+VwZ4psvcwc2sbCeC0PlceoTVmEWR/9uwK3z2pjZFLQu9EtAGoLTkOIL?=
 =?us-ascii?Q?9H9rAG/aV6jSbM2Gtyzb2unbVQxEfbvC6fah3/TcA7qqrSV6NL8Fx48RavuT?=
 =?us-ascii?Q?2GVOLvARZ5dj7I6kMfHGYH8+XzLtP+adK1EWrmflYEuNlnWnbrINDfOkXNOR?=
 =?us-ascii?Q?Xxy6yOmteKHeyo9fNqBy9EVoTnz5fh7pk1wDUfCN+0wT0rwMnHpPaAr290rn?=
 =?us-ascii?Q?zSiMSjYBhSpcIEWGJNTvKVlHhZtJ3JOuOZoEePf3Zwa28uNUQcYo5qpgWnwV?=
 =?us-ascii?Q?iBRTz3DqfwY+XKCFZBkNY5UFlxd7+MdZu+QCivNcCK4Pd6N68bxKqmJM7AbW?=
 =?us-ascii?Q?nZCghcQMhLUcLDFSFgiLWW74G4TxvpWQqN/Spe/bf68xsfp/62xjF1Io+iWf?=
 =?us-ascii?Q?BTjgnGiVWrsip8QmmZdZK96p4LRfqkfeQtIjLRW/T9NXScjkTriqVvdbBUCz?=
 =?us-ascii?Q?i72Ubv+o31u7aTflhYbz6Dr6j3DQC+Ub3AmXUG2Aw5ksYjjACHYSDIaCR4Db?=
 =?us-ascii?Q?vOn/UGOQbdmdlSaKYtsqjqj2kqv4FVQNeZ75MrhGKYTC1bV9yod4TGjmngGT?=
 =?us-ascii?Q?PSdY2AylGS3DnS2kgHEQPSZzuEQoPswbJQJYad7yTN1PGRcmcnd6LxCcA176?=
 =?us-ascii?Q?wcvko4ZKPRtfGZpVFarrjQe00AChWWs7NNWPrPpiEjmKUjMxArKyzqR/VLwd?=
 =?us-ascii?Q?RTD6sQiQu96pg4lcJO6lDhjfS7BziZC0jDv69a9Xj/uCJMiYNG0GCYSVtc1/?=
 =?us-ascii?Q?8P9aHG0fE8JRcJOErnSkc/Nw4VP9MW+a/VPV0PZ93tnik3HwceeV0EX1S1Iu?=
 =?us-ascii?Q?/qfhZspybzecOAHeSSO+sZCT791/fLaj6CH5duurriuZxiBApRyVzKF2FVXl?=
 =?us-ascii?Q?sA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 58b1b905-e8a6-4af3-8ea1-08db19c4232e
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2023 19:43:59.9001 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TDbsTmB/e1d3ZBrZoZHBSjId9seW1R8halcBNr9KvRF26PtCyxzc2nTiwxUqussBIysStMaMdAG+VPKCSMgaFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5577
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Stop whitelisting
 CS_CTX_TIMESTAMP on Xe_HP platforms
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

On Thu, Feb 23, 2023 at 04:23:00PM -0800, Matt Roper wrote:
> Xe_HP architecture already makes the CS_CTX_TIMESTAMP readable by
> userspace on all engines; there's no longer a need to add it to the
> software-managed whitelist for the non-RCS engines.
> 
> Bspec: 45545
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Acked-by: Gustavo Sousa <gustavo.sousa@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 11 +----------
>  1 file changed, 1 insertion(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 0444c715998a..ee0649851a4c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2204,17 +2204,10 @@ static void tgl_whitelist_build(struct intel_engine_cs *engine)
>  	}
>  }
>  
> -static void xehpsdv_whitelist_build(struct intel_engine_cs *engine)
> -{
> -	allow_read_ctx_timestamp(engine);
> -}
> -
>  static void dg2_whitelist_build(struct intel_engine_cs *engine)
>  {
>  	struct i915_wa_list *w = &engine->whitelist;
>  
> -	allow_read_ctx_timestamp(engine);
> -
>  	switch (engine->class) {
>  	case RENDER_CLASS:
>  		/*
> @@ -2265,8 +2258,6 @@ static void blacklist_trtt(struct intel_engine_cs *engine)
>  
>  static void pvc_whitelist_build(struct intel_engine_cs *engine)
>  {
> -	allow_read_ctx_timestamp(engine);
> -
>  	/* Wa_16014440446:pvc */
>  	blacklist_trtt(engine);
>  }
> @@ -2301,7 +2292,7 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
>  	else if (IS_DG2(i915))
>  		dg2_whitelist_build(engine);
>  	else if (IS_XEHPSDV(i915))
> -		xehpsdv_whitelist_build(engine);
> +		; /* none needed */
>  	else if (GRAPHICS_VER(i915) == 12)
>  		tgl_whitelist_build(engine);
>  	else if (GRAPHICS_VER(i915) == 11)
> -- 
> 2.39.1
> 
