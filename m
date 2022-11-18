Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F0762F742
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 15:26:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7BF910E757;
	Fri, 18 Nov 2022 14:26:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A2E710E757
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 14:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668781598; x=1700317598;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=Rd5emfcsUOGKPga3KQajdYpkTmFc6ykIUvyx/CVb7n0=;
 b=LdOgfygOcx7r8mGdDoefpKmKJDKEUr9I7VozdH8NcFlbA/RAUixNEJtM
 kqEnkBE8HHEa9c4kMhMly6VqbsvivTWrCQvcZ4FHqNwmaREOq6i1azbUt
 K+TteAISaM8Q1iKGM9Q0bd1cWkEIZC3uE94tUm8PlsONGcRw6a9cS52PM
 sEMfNzmYiXBHGmKvkRI8VxeWkKC9pAd+KkOtQpcAnwMVhDeHZsdjO+h/G
 sPZjeB6BEuuTRywXaJi94tEBk3/5inII0QHRTDXE+AWSN6+R8mBA93t9+
 1u4uDc2Qx/Yv6R0wi4I76EL7xJT3aQa7KrWXaCqG5LGMW/13coFpxGa3/ g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="375275889"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="375275889"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 06:26:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="642525938"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="642525938"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 18 Nov 2022 06:26:37 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 06:26:36 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 18 Nov 2022 06:26:36 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 18 Nov 2022 06:26:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gSV7YG1fE7DSsW3IOen63aTLinz2nq6oz671tUa6dRRJpe606xOY0BBMjYn9lYPRvukPVcILIeSpP07VF/IzJFBIo7Vdv9nTJjefAxK4j5xkbEMOiqF03TGweioS0zQdQZyBlZsYLAwt1SlWeyCftHwVasd/BtUufNrxoTAo9VsKudzrKs1jF+gvPd18u0gCeNEFpeAjlJVUokdLAD2hWhKc3VtAYotjD+M0rQpRscUIAjmAzHk1os7f14IViW8SHdEH3XGTrrVL7r0bMAv8ezjr12g5rWzCqxU+KCfXfLbLDpYT7/5y3R8M1J9XZYMhgHQ1MVUsAeklst1eCybxPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7qXVLbwjLDtzolKOsbJB5IYWyvSHTwAC5HzcHTRJre4=;
 b=mGbr/Pi2Z9U7GiPQXye4eUe3M3cbBxnQM3mq9NtqXJBWQgc+4mG8IiiUxoQ/TmXJRTp1F8ZtzPNi6CM+yptbb9i5FIQliuqOvD1PUrBnueHwbQtmAEnf+OmTH1/5+AcZIEtpCClKfKAzpwsdtKzbUj5e/muAD9Z4pEYcf1eB+HKZlCICWcN0RWgPgZAKaQtcAdWzP5IqGT6yz0wAYG4fv0EFf7AwBSnakVJQCw65iIAgjSCnV2WcgBqjeACNSAg30YMHjYdn3ZuqG876/e98e5W7OLxFl23Fn6lehw16WAYT1XysfMeEN4S3tMnzu7J6gYTsDMwgFSnUWpLP0+ZdRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SJ2PR11MB7474.namprd11.prod.outlook.com (2603:10b6:a03:4ca::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.20; Fri, 18 Nov
 2022 14:26:30 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::b0bd:6014:14d9:bd01]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::b0bd:6014:14d9:bd01%4]) with mapi id 15.20.5834.009; Fri, 18 Nov 2022
 14:26:30 +0000
Date: Fri, 18 Nov 2022 11:26:23 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <20221118142623.bifsk6scd7wgm3ld@gjsousa-mobl2>
References: <20221117222447.193245-1-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221117222447.193245-1-matthew.s.atwood@intel.com>
X-ClientProxiedBy: SJ0PR13CA0041.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::16) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SJ2PR11MB7474:EE_
X-MS-Office365-Filtering-Correlation-Id: 575d5df3-0545-4ed5-95de-08dac970e246
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: U4nnbx2QR0iLYBOTy1fZCePL97yaZJeFZVhyKJ2TeocP43oUDCJxIEKrl3q54wcdGNBNDCUfVyKmFlvQpjiDM+reEBdIYQbdzOBjdB9ndayOKAt5gbdkUaIN6Dzqf29s+PSxI0LQWKAb2a8nZGvogbc6e3XupD8mvx+pmHPXJXbyWPngKCoyO8mLeUFOi8D3v/bkw88+Bv1s89d5W+dzM5Wc+lBXxd+ppCP/fz/LRkLz7sWj66tNsg5dSdYS1SyLxcssodM4vuBnqvv2uOe4/jgoRnyuIp7yMObY6jwvLrQKpWtINF25IjDOH0jKjTQ6++K9oQ/xoXzqJdo5r5f4w97zDq/t95kaZUAomuI8598UBoT3HKJapDWdc65pb2PM7Wk51z7fOd7+gAba5Xd1I1l6QnVBkM9nAEt2qAE5o5+/kPOnSYCZCeWty+5iAy6vvBNy5KXwE7T3mxbRybzd4n9zeH2pX8uiOpWo7Bvrm+1WB8GYdDTA8QZShRT+gIlhA3DYOKljwgSwGqiYO9U+JkXz316vK1fOSxk6l30OxSFXHrmE0W6Fb2nbrxNoLXFtCckIfeCm+/np2Kbtdh8O9iVOUXAAzv/cOq7iD7mh/UohIpYMVr7z6Oo2w8w6zkku0hVsozlAN9K8BKrQTpwA7g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(39860400002)(346002)(136003)(366004)(396003)(376002)(451199015)(8936002)(86362001)(41300700001)(66946007)(44832011)(1076003)(8676002)(5660300002)(66556008)(478600001)(6666004)(6486002)(316002)(9686003)(186003)(33716001)(38100700002)(26005)(6506007)(82960400001)(6512007)(66476007)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QDXdIGSkqxYVRd1IUxo1KOdKVuEaDEcsEHQUTFeb85Jq9iQjIMMvJu484TA+?=
 =?us-ascii?Q?dLfFLYhxCLx97xWuBBWLCBtcr7PSJEJW0pzuH/uZybZQR4WihWTV+j0SsZqm?=
 =?us-ascii?Q?kAhyx9eSgJ0NPuN3fB8Qk0uhMEDuN2s81kEN47XpxpkwWe51sFBRzxPsrfQW?=
 =?us-ascii?Q?/QR6Rv7cB7id+7v/0EgO4nugtTsyPu5vy2EaaHZ5LBtU5HICQTV+bb8EQdNJ?=
 =?us-ascii?Q?6VbgRjSPFpk1qm1Ib62ZqU2GVQpkZ6UcAN3/1dPXNNGxW0vLoA/n15Ew2/fH?=
 =?us-ascii?Q?Far2Fvmpjwqhsu1h8x0tlK2hPj/MGKG0bezNFZ97LPv12bczWmVOmtk3fGS7?=
 =?us-ascii?Q?farktdALgAmoPkE5dUr3liskp4HlF4vx6bxGTN+zG+Xbben7XsPkmVaDFAet?=
 =?us-ascii?Q?Iuf3mxCT3pDCdkEZZHEHIf/HYk/mDZ9j+v2H9D/iY61TakdhSixFRvvQxk9G?=
 =?us-ascii?Q?YAPhcuHai/pLUlnrZ3RvB32CFuUc385er2yYAk1VPf3VuB4CwTS5JJQ/2lsd?=
 =?us-ascii?Q?EY92V7VkYMXMBrKah9DlxubRi0r7dS3R5HLSoSfgsvk2QzkDCf5wb8nz4xDJ?=
 =?us-ascii?Q?4zd5pPnA8BEhj1EyKQ+pUbmytAwHdzp5ue0J5J+cM/m37SribdIj8BF4705U?=
 =?us-ascii?Q?cLbqSfGRw12wT8VCD9XLH5Y6GYzfkZsWolSu81FXV/zQXd1Dd24Oi0aUv1gS?=
 =?us-ascii?Q?wz5RkJjm7ir31flfznKzlgfAS1gowmuLhDg/Ys5nOAKi5TwBiF8b7WkF/Y8i?=
 =?us-ascii?Q?YVSMv1xdtEMlaSgrhLqhW2F1zullA2LRhXYBTamxhmrqtT50/nCTKSMho6ik?=
 =?us-ascii?Q?M652VbxH98hWtALBhBCHgQuOYlSLKAUMbs0+T5Gdy8qmYgcOmRT48NWCJPPt?=
 =?us-ascii?Q?VLAYFJLUOwBF6haSoqr7qA9GiqD4FWUF1JJIXYfwWDTtUyWzZntJNIjdeQej?=
 =?us-ascii?Q?+adnA2sngldoQv7k+gG2b7JfPKpM64JdAiqSQ2E04CvM9X9FgKdmQW3Idkz0?=
 =?us-ascii?Q?cxaMOADoeH+chdJCAYpCfbbmmT2+TbO6+a9Slxr2qQKdjnyp1oilk2S9dUaa?=
 =?us-ascii?Q?DI9x9zjDci9kGsguY5vnSwv4IhYXI+XPly+1Zi8yVdWgjxym+BBLfTfcbsce?=
 =?us-ascii?Q?V2ry1HoUascCTO7/eP13ahcV+0UN69PpJCP8B5SuyRfZI/lgYFTMV8NHPHHM?=
 =?us-ascii?Q?UTDMOV+kKnC4+SdoWt3sEKFcgSLHyfKrFQVRmpsS6o0I0N+H7TyPcsfDVBbz?=
 =?us-ascii?Q?YpiH5EvTVhSGv6RAu989yf9sDMmvWWQvYZVk1ANv1RQytHnajAhowvgbQErS?=
 =?us-ascii?Q?fn50TBWH88lX88/tJmcaVSfiTJ5O3iDDmPXP9m/Uxl8vT+pnCmyzoTFtO5wA?=
 =?us-ascii?Q?5J5s0jifFby04tH/GuhWkdvl4qRKcnq0yGi4qfZdZRT2V6QfHdYB76jwRdpQ?=
 =?us-ascii?Q?Ygf4Ulrg9wNikWmMvvk/aSZaySnbQhsf8lxdjs8wtiv2w73GEnbHO4Iam9XB?=
 =?us-ascii?Q?Toz0iGTjRLna+cZB6PcHljAsLi0ea24jW3fB+AHQzotLvJZJPG4tlaHhTCut?=
 =?us-ascii?Q?+MUASo1lnoAmd8l05L4xI65RMo1S5CDaqoqZVXzefxqlQ/lHR1uJWaO5/Hke?=
 =?us-ascii?Q?LQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 575d5df3-0545-4ed5-95de-08dac970e246
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2022 14:26:30.1611 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iielF6iTvI77FTfdr8JlwiqjY2UWCpvRpGYL7LAftA28OVZIjVa41ejl+ZGuRVmoLpjOeOjRVJD4MbHbLnn6Gw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7474
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/dg2: Introduce
 Wa_18018764978
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

On Thu, Nov 17, 2022 at 02:24:46PM -0800, Matt Atwood wrote:
> Wa_18018764978 applies to specific steppings of DG2 (G10 C0+,
> G11 and G12 A0+).
> 
> Bspec: 66622
> 
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index c3cd926917957..1711dbf9dd462 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -457,6 +457,9 @@
>  #define GEN8_L3CNTLREG				_MMIO(0x7034)
>  #define   GEN8_ERRDETBCTRL			(1 << 9)
>  
> +#define PSS_MODE2				_MMIO(0x703c)
> +#define   SCOREBOARD_STALL_FLUSH_CONTROL	REG_BIT(5)
> +
>  #define GEN7_SC_INSTDONE			_MMIO(0x7100)
>  #define GEN12_SC_INSTDONE_EXTRA			_MMIO(0x7104)
>  #define GEN12_SC_INSTDONE_EXTRA2		_MMIO(0x7108)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 1bd8d63ad4f3f..483fd2a83ca19 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -774,6 +774,11 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
>  		IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
>  		wa_masked_field_set(wal, VF_PREEMPTION, PREEMPTION_VERTEX_COUNT, 0x4000);
>  
> +	/* Wa_18018764978:dg2 */
> +	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_C0, STEP_FOREVER) ||
> +		IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))

With the fix to align this line match the open parenthesis,

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

> +		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
> +
>  	/* Wa_15010599737:dg2 */
>  	wa_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
>  }
> -- 
> 2.38.1
> 
