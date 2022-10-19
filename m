Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1BE604CD8
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 18:12:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C27610E08E;
	Wed, 19 Oct 2022 16:12:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BB5310E08E
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 16:12:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666195950; x=1697731950;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=KKbKlXYyI0J5VmNUBcHI+Jxn9VT7J78TqLbLqQk/Krw=;
 b=EHfg+w1e7Rqr7976Nci3tHoz4ucSx1I/4pOR2ReLjRs10Sx+X+GPDU5m
 yWjLiKvO9jYAefHKYknUJayPl1HsonjhOT/MyrSbBckhSmJupYTYGoTbp
 FpAGEHMdihDbIKH405KVJgy/pFgwLCe4qU7IL9pGEtlMXlMBiNGzW+9Nm
 osXvOzNLZo8HnspGfrGLnH53bELz1qO08wCnsyyRaRD2iUi3lPPi5o6y3
 oLhMkurUCSFnBjFTyBc+JVqblgWJhPoZMEbTEWSFqM503xK3TGXxwpnX1
 5M9EOKjcBl4lpIDIjb9hx3/1xmN04aWu+PWpuD00PWNTnUb9EFpCmeg11 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="333019780"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="333019780"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 09:08:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="718555178"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="718555178"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Oct 2022 09:08:43 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 19 Oct 2022 09:08:43 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 19 Oct 2022 09:08:43 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 19 Oct 2022 09:08:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mAbQgXK0Efjk4wauq+/+3lZZVMUVy5xBOiU3LQCBuJ4ysHGcKOPvrYT2sYHjSp+6V5OKv+fh0HQRVNBhYpff6GwBj76Vq77PoTLi14LKQwaqFfah7Btn4KPOEu9q0gLL/VG0PAOmYftWtBGdGaBjD/tTLtvZWc/6ZUUeHA2wrN2aBVrv8H3avOnteEwbAyRFbS/WCm/5y3yU8PFFrOeKeUGvL4AL3K4841Y4SMyGFI1sUcsAPnRS1Qfg4+Wz6WlDFn3kQIyVEhXdDrDlKU+hKR4mLm+U2/yXrYBBvbZlqCHPViHfzk1bMRz2mQsFVPYieOxPJ3qxbWhbfb8+0j31hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aYi45QhsvDHQMWFc/vuKEyG57FPUaPlUzG6WtHDrQ3A=;
 b=IV3OJFHeHRm1D+ClkbE4K4ugwMcbKWVF0rYd4tx3pXnvKg5se2sUjx5K25xZiny83Fa2nzuOq1J3TvMeXQS4ZRdP6z/yjwQzzKyiK3k99zOazjVSrN5zeGKQ80jwpqbXaavh/8y2G9naEwLvj5+jmuYzaccnIn8MUVl2VXPOgL8/KvxfZFRT1JOEKAAuKD7AJCV2DOYwMk4DzmyI0DILfS0MDAcaxzBGmP+gGdGxUz20V5aobu2Ast8HV5gIsKEoWNNStSh5XfdVbc8VEFDEekrkOayHBRKOQ/78Nhw8/8PJQhJJc84ISes4qv+uIJCsMaAuUOXBz1wzTaVOm69Aig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by BN9PR11MB5403.namprd11.prod.outlook.com (2603:10b6:408:11c::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.30; Wed, 19 Oct
 2022 16:08:40 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::5d7f:1253:b0a0:d641]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::5d7f:1253:b0a0:d641%7]) with mapi id 15.20.5723.033; Wed, 19 Oct 2022
 16:08:40 +0000
Date: Wed, 19 Oct 2022 13:09:38 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20221019160938.7yit2bkv47f5fqoa@gjsousa-mobl2>
References: <20221019142145.111024-1-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221019142145.111024-1-gustavo.sousa@intel.com>
X-ClientProxiedBy: SJ0PR13CA0074.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::19) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|BN9PR11MB5403:EE_
X-MS-Office365-Filtering-Correlation-Id: 91449768-9675-400a-04bd-08dab1ec2fb1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +8lBMmfQLFgARqgGymoKuK/YFU0eYeXNOftZ2sp7zsxKO5Ih6aEEER1wLrEMJws5LuvNJ9aIbI892079ZxJzybUn2yZyRqyYvQL0R670FHUdOs4DdhjX5Y+ht3yxfMTy6PYwpeWQS7GaeH5fhkxPTkyWzR1HdY5rC6QPWF+BpTFOg8HBKZ5c7BcDe6cQv64bypHs/V1mGPJU1vZbhUOZRenJpLFbXW9b02y67a27dJQ1cZDhA7MlZ9ak/iLXvYBdMKJr5Bf91wMto5IK437BXpnhi3kGEN6/kdfj38B+SGKpmaknynixuycfQX6nxSoBYn54HZyFgOuawN8LeU2wSYo8PWr81tGFsmtWlQ+B2+QuOjSvXS0548mmcnmd65+slDM6+eczsp4QD+ikznYNfgvNUfAKQ2+M5z2rs40FgNLj6uaB4fiuEpgKhTGEiJrLgP+6trk9DEIV9c8DSgxIkW31k0u24Bz4VUvdRegrpqZw5Dp59fhoRY3mZ1kkW7LbdSvDTDUNWlI9XAGDn0EFMXvqFzmogmAG7nOykZuYAGEx027TSKjJDEuYSDo9H0JASfrLcOc6n6BFh7WYWXmeSW6xc6WFc67dsKv6bJS0Yhc5AVqSslKn7I1uO91gNEl7rff5XxMKCOkBZKmSEKFAhIF7U5zoK4M5V0wU3QGQsMuiPUfRWFnV8J7hBQbU4W15FrOafAnQvt1YBiKUyBi4xQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(396003)(136003)(376002)(39860400002)(346002)(366004)(451199015)(82960400001)(83380400001)(33716001)(86362001)(38100700002)(66946007)(66556008)(316002)(8676002)(44832011)(5660300002)(6916009)(6486002)(186003)(2906002)(66476007)(8936002)(1076003)(478600001)(9686003)(6512007)(6506007)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wJYD+0PNJK92ayy6wsilrzE0rwl0Odhjjx5KZ5U6yUIVcjMwWSLz7ruF/99D?=
 =?us-ascii?Q?7hly9/1bosFkNQydN7AXzxjQYlRX4cO9zpjkAvefO8ZEBcrhhh4kERhm6C4h?=
 =?us-ascii?Q?/hzxx1rkQ9w5LqQOh3HvLygwNFgQQbaupGQmYPd2cFM5oDcbvB6+ckJFtM2o?=
 =?us-ascii?Q?we4qbPR7M0f4UnUYaLN3chDBFwbEWIZuZvOYzJRGi2Hfp3gi4P/KOVBJeunH?=
 =?us-ascii?Q?pM0ygrD8dbZUgdGD0nx1u175+M2Q5p7VR6BiG6ZCJCvnIfBXMgR9AZLEUonW?=
 =?us-ascii?Q?Eo2SBEoILyRviKpW3CKmo8dBeJwN+gpG3MiZxmOFB/eyiqS0EsSlbNVmKvuF?=
 =?us-ascii?Q?UMyPMdsWVjgy9FsRUHZrLAa6nhnQ9OhA07P8JH5XrkJcni3p+DUCBsjLsFE0?=
 =?us-ascii?Q?raDrGWDIgxCRjPCEFC926xzvliZZ+K7m7CVMODPqFfRt5zFSdN16UisH1HdT?=
 =?us-ascii?Q?M84PjkFPBS1LHv0jAVZJQDjkDI9SgBLW3eGpWHe5f1g7jMKR39XYMTxwwz5k?=
 =?us-ascii?Q?JZjkRW+HNW6Jc43SqsgkDsWvDTPxx9XSUDyjVF2gPNfIZXaxC1/ENW74XDGz?=
 =?us-ascii?Q?DULlFWuBL5Jsuhjheeja89DsyVd4GjArD70bsDOgrX7wQ3/Dp69mxYIXNmbT?=
 =?us-ascii?Q?YqawBzL+vCZD8G7FQz+mqAaJ+Xi9ort9j+V/w99KA+FtBD3wEWo4O30iuNEY?=
 =?us-ascii?Q?j3VCGRJzjPf8EG2vsanDdWxWEE370YyIpTGO0CeZPROnrG+zSubJZVjS9dfE?=
 =?us-ascii?Q?s1KK8FxTtEdXmiFkvxiXF/vT0fH2uqehlw50hd3ckfHs3jv0bJdTwNYDlOWY?=
 =?us-ascii?Q?p4yQqCxv3vLgBc/l9F7ayfmxK2nXdQRmzMWTnnfC+VAyHV0uw11Qd4Mxgp/8?=
 =?us-ascii?Q?kYIGZSfe2Sasqf2Qg/Z8nCd3ypVXsVUljFEn9NxRCLFXXJcTFBrdR8EcRBYO?=
 =?us-ascii?Q?b8oWaAjED8UlPMKumHgeB3J5k112iWpJU1JxNspHLLd6ViZX1G/RVlJNcWYL?=
 =?us-ascii?Q?0WxDRZsVdBUemiG3fI2dWuit9ycfa4L/opJ8tkjBZTDs2HUWoHx55QXeQDAV?=
 =?us-ascii?Q?8KRco0CekUg94e6gU+0X3TA10hIsJw8RIpdEmU+KFyhoL0Pc7HpsarOpcevV?=
 =?us-ascii?Q?mNxWzdWNkHdUAAfzxyk2A0WajPG0Ei4N5jXWgBvGpQxyKtyRQgGPvVIYwnE4?=
 =?us-ascii?Q?WmPX98UrbMGUAVENlh4sD3I4GRoHQzkMYOx+y4GvcRjDsIjgSVtbdg0NBNjD?=
 =?us-ascii?Q?Z7ZvOnbw/CIwO48WaMqlGWyey3g54HYM3xjHcgivy9s4oEcwJfEcaND6qEI9?=
 =?us-ascii?Q?g4FPMfLDkz79+Atq2TEkyo95DeSYu/1o42XZgf1JslCHY/+j5kF0sv4GupV5?=
 =?us-ascii?Q?+fBaFrXKkWSGKLFaq475ACUp9yrw8s4mWLBjWELg5aq8LD98h0rMUsakmO0m?=
 =?us-ascii?Q?N6on7zM4ZS9bn4ESl4+tAsJZGTWTKk9VtkZstv/dVy+zw5HZCCfVDXHBtYk8?=
 =?us-ascii?Q?mjy76bVLAI0n9wFDXs+xKgcecEh53uRhd7uw5/6owUmeGgkOevnu3R6l38S3?=
 =?us-ascii?Q?fwPKveM/mC/UfypR5lBJXyL+AwFWz25RkS0U/kSwTlYF74ZxI4vGLvbo+IRK?=
 =?us-ascii?Q?IC/qge4f0aSopkOCgZLG8Mg2BTUNztu6+B7Los4ESw3ONmnWwy+f6W9LIaCj?=
 =?us-ascii?Q?WEaFCA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 91449768-9675-400a-04bd-08dab1ec2fb1
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2022 16:08:40.1093 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sVyqLtFNEZYAkz2oHWdt7t03ffiezAI7plmWLhB8yvcd/29NsPbrrqxjxBWRwGyEQwK2oPrPQhsJMV5kAALmIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5403
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/xelp: Add Wa_1806527549
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

On Wed, Oct 19, 2022 at 11:21:45AM -0300, Gustavo Sousa wrote:
> Workaround to be applied to platforms using XE_LP graphics.
> 
> BSpec: 52890
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 +++++++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 36d95b79022c..23844ba7e824 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -443,6 +443,7 @@
>  #define HIZ_CHICKEN				_MMIO(0x7018)
>  #define   CHV_HZ_8X8_MODE_IN_1X			REG_BIT(15)
>  #define   DG1_HZ_READ_SUPPRESSION_OPTIMIZATION_DISABLE	REG_BIT(14)
> +#define   HZ_DEPTH_TEST_LE_GE_OPT_DISABLE	REG_BIT(13)
>  #define   BDW_HIZ_POWER_COMPILER_CLOCK_GATING_DISABLE	REG_BIT(3)
>  
>  #define GEN8_L3CNTLREG				_MMIO(0x7034)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 63e1e6becf34..5cdec699ae04 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -660,6 +660,8 @@ static void gen12_ctx_gt_tuning_init(struct intel_engine_cs *engine,
>  static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
>  				       struct i915_wa_list *wal)
>  {
> +	struct drm_i915_private *i915 = engine->i915;
> +
>  	gen12_ctx_gt_tuning_init(engine, wal);
>  
>  	/*
> @@ -693,6 +695,11 @@ static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
>  	       FF_MODE2_GS_TIMER_MASK,
>  	       FF_MODE2_GS_TIMER_224,
>  	       0, false);
> +
> +	if (!IS_DG1(i915))
> +		/* Wa_1806527549 */
> +		wa_masked_en(wal, HIZ_CHICKEN, HZ_DEPTH_TEST_LE_GE_OPT_DISABLE);
> +

Just realized this extra blank line... I will sent a v2 without it.

>  }
>  
>  static void dg1_ctx_workarounds_init(struct intel_engine_cs *engine,
> -- 
> 2.38.0
> 
