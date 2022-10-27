Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB59960FF4C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 19:28:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82BF510E150;
	Thu, 27 Oct 2022 17:28:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F118B10E150
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 17:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666891682; x=1698427682;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=B+ZekbzkKlG9ZN+dgYsYavFJHjZTQca3aO5WMAllCcc=;
 b=IznbsWvmLILUxxBDf16ksuQZXJs7tumGPkcHYWTjKRbDqAV4Pb4NP95j
 KP0vtYZHt5dtI45g2uaI4sOMv4a5+2J+4avdhaYaIYVs7DsI5qCj6CGry
 YqXj0ZI+mH1UBK480BFZ0Fk+HwMOFnMze4+RT3lUq+IXBOypWMwSS7UgY
 3tjPt5L96isR1EqMydqHUlPjQKVPoX3jEG4wA5BKFQepIjBhl5eLR22dk
 rhRLpAVwX4nuZlNlwGGW4sfJGO2wck03OCXozYDacmxcVwE+iyF8561OM
 lhPc/wJ05+fA2FCB81NSo5Xt8qXv20UiPWRVfoPssu7GGmfKFGkMB3RDN Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="309378993"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="309378993"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 10:28:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="961706721"
X-IronPort-AV: E=Sophos;i="5.95,218,1661842800"; d="scan'208";a="961706721"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 27 Oct 2022 10:28:01 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 27 Oct 2022 10:28:00 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 27 Oct 2022 10:28:00 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 27 Oct 2022 10:28:00 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 27 Oct 2022 10:28:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WEI386J/YaED1RyjE4y5YnTqly1YnSUpNpxOtyunmyymoINtn97Joiyik+rJU04iZ0jX1o7obGRBapUkfvN0Y8GPfrQKnPBUWfPozhuOayMQtj8AXmU67m0O/8s7GhlEMZUBIFJrDx7Wst0lOuJ22nEuVQeeNhyEmzvS5Nemi43/eZg0R2TytGucooktk9KRh3qrDIqzw6d3dlOLHkp7/iPbLhLr+2HYBDy/ZTeughhej3rskGLdzDu9lhdJt14ZI4E+wX2MtQPZ17q3zELDcj2Ajgmr0m71d3wuDHRIU8VPcfskrUhbqHqfNq6iOh4vYTLX/Qih4KFRrgG8wy6FjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QsFCqLjXMGtgzrnraorhu+iitq09ZFlR//xEaBiqg2g=;
 b=a8+NAmXTYJnLATnHTzVXHqQk9HXBXEy7x5Aw557HWurWlSc9aFBVMY+QQej4f+/XXO116d/FCexBY/0yOY6YgMtl/dWSilL2vx7TqmRrm7FUnPKgMmnqqeKNLgsMVRM/j4xSkdlPXDNw3aLfU9BhbbUsSWsKgqjhUgoMXuqYOzZoDyATnIm7MpvpUc7T/2bMJ+yvgUVFLxtHfQ2d5LxViaH/umA0g3PQwC+8lVxPvIEMg2geJvrdtiQ3zq7TPUIi7Q58Vbc6JjqupDjxG6TusujDgx3DjsElFl/s3tYMpTdbjMTZXW59wsnuPVImfvXrRf6Qpn1F0zc0eNQ8k0AN0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by MN0PR11MB5987.namprd11.prod.outlook.com (2603:10b6:208:372::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.21; Thu, 27 Oct
 2022 17:27:53 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d456:b3ee:cd32:4aed]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d456:b3ee:cd32:4aed%5]) with mapi id 15.20.5746.023; Thu, 27 Oct 2022
 17:27:53 +0000
Date: Thu, 27 Oct 2022 14:28:53 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <20221027172853.yz3t2ny6anxshvoz@gjsousa-mobl2>
References: <20221025180335.1723742-1-matthew.s.atwood@intel.com>
 <20221025180335.1723742-2-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221025180335.1723742-2-matthew.s.atwood@intel.com>
X-ClientProxiedBy: SJ0PR03CA0089.namprd03.prod.outlook.com
 (2603:10b6:a03:331::34) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|MN0PR11MB5987:EE_
X-MS-Office365-Filtering-Correlation-Id: fe0d92a4-c3e2-4559-75c3-08dab84093fa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TrFjFMWPGiBJofe6u7PaN9xmf1KHGEA8otC4d1huaYzaTBAtc8nKgBuFnxd9X1X31x+9znUT2L+35eqzXfvRkTQ5gcEmUIRanFqtyNUhrXNr8j2ZFVhdmaflDL4Wy56SGPs6h2n2o1Ft3SP0v/yfkCaSjHl7d9kf6r4WtvGDap0jBd//D2u/57sr/D2WGrpe+1shEyoaCD41PRTHKMQR6/Z6TYWyFyZp/Doj4jzhR58Uk9nq/v+f18DFTiFoiOhvNEyuAeTLTSrDTUevMdTkHCVgSydwvdtW4hgnNrGaxaaL1SKEWRd17RZDNnrY0Yk8VsOENKKIyJ7psrCqZ0fJpQ66tXNb4AvRuByrnvxuCuUvCcwiS4aAVMw/s4GJXwwbVcZO5aKAjCO4k9/B4DN8x8QE4NYQoUZ6VNEy2CFROo4atv1XIfAoWlrE4CjVk0ZXgLvCA4h1lY81ibGkSGhKVwI6kybya8SdeVHg86hYWS/RR7aKJ2a5pXh5Zgj1yLJcUCxtDckNnFtYTMS7etGo0/+UGtIaMxtlwAliEjobI9oprhrkMyPQyKSx7u6AZ/EeCxmlYJ+Dql089Nr9hiom59+S5lJiNVtqnXjqroig6K7YcA0m4RXn/sR8+NYYQMTM6I0lUyYDBHBpMtG+0EER1sDsP3o79ah3RWpwcCDzMKj8MQueRhAl8g1ZC1iFu5UTHiahigRo/9fG+F7chprUbg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(376002)(396003)(136003)(366004)(346002)(39860400002)(451199015)(6506007)(41300700001)(66476007)(8936002)(6512007)(66556008)(9686003)(66946007)(2906002)(8676002)(38100700002)(186003)(1076003)(316002)(44832011)(6486002)(83380400001)(5660300002)(82960400001)(478600001)(33716001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SaliYP18c5424Db9irLvnLToX2oWjgIta24G365wxDASPhHfvLUtI6+c10gv?=
 =?us-ascii?Q?2fpC8KffLi/B40Uc/YaIj0EMjp3iye2Vj7/Nw1agh935emGGZnmk6LsXiATR?=
 =?us-ascii?Q?FZ8t2IQP8vFzJmc33r4I/2gZoe+fBnqOiFubKU86J0M22acheyo6pwze9t2i?=
 =?us-ascii?Q?RJlJntQM4+IwmEWPfxmNJ2NgD7x+uVlu+5aOsvqgbsNrNGaYUyltK+cSv+TV?=
 =?us-ascii?Q?3lz2q9VVlVgZeOPS1U6Dnz4IXIlJy/IiNAlklMbYokZKCPu7PuOTNYGiUkCo?=
 =?us-ascii?Q?BcB/5lmU0Ah+0P3gotWiaYtXtmM7SenC4qsIMxKFm21tZVNISYU/Mesoko0v?=
 =?us-ascii?Q?o2zy238RBwZI/x+fe6Ol2Ma/Vt+06O5K5hd9WvGicIlAfjbhgjCyahAeibV5?=
 =?us-ascii?Q?MQd9E/6kpOsi4Lq0kX2Z48+y7F6EIvApchz5wODBAoYE0uH5iiSoxEIDPBlR?=
 =?us-ascii?Q?bW2YHljg92DwDaN4mv4GRrXhln7E3FH1uYrn4C7hng+/J3DtrPM8jfdf+C4m?=
 =?us-ascii?Q?yL/9sicO/v2H7tSwuvR4o/bF82OgZ6AIrw4BPlqkqVwnEaHbYbx47ZUx+CxC?=
 =?us-ascii?Q?NPuErlTmL4GSA0uuyS9Nxg3VawdYFAX5zxbnbFxU5U4YRxteXct7PDEpJqFv?=
 =?us-ascii?Q?YuBiyPYOOJU0Xr7aJb44oBUrAZCkHpXiTPTVqcTQMWpqJjXgD8Ce2twf/6cK?=
 =?us-ascii?Q?gC3inhwZnlZJOk++qCAN64My4aHgraQrsKPfFP53nZcAzxPDfgUkKWLLOotM?=
 =?us-ascii?Q?IDkjAdyVaczdPrzeJAFHFnnOJNmBIz7KF3s55qzlI3vZOim9sZDpLIYYvdAY?=
 =?us-ascii?Q?8uQhrRiJTUpMahlTqUCIyAU1DoVi1pIQclzfD9/y5qx1qZSq3m/LMmcKJZyI?=
 =?us-ascii?Q?L7h2B4w7cbw68wHOsJrM9aWqnL7bTsu716s3VonuyNOo8pjnzos+gZJNl65H?=
 =?us-ascii?Q?fcuTVKmmWrJ7r2ChSaLH0/06QMFYe87Oq9AutFKBCg56GCdMBU0sUwZDCHj/?=
 =?us-ascii?Q?1HpsLR+GbT/1viP1i0Zq5xFniMvYiuhhtKfpD3lU8xwt7zMh0Kid2hkE2Qsv?=
 =?us-ascii?Q?ZHx93EDLudMs6Ta2n1FuKBCllCD4M3CxDZmFiBv226CGDjjUaJQW/uKzWnM+?=
 =?us-ascii?Q?0+yRGGtfjAleBygiB0/MZ8pklUNbHRYwiE9e4uvjXzx8EqC0G0kvoDleISYG?=
 =?us-ascii?Q?JBnxWIs5eNxV3DG69husBUXGsNmxL7vjCxcilzvS0zz546Owmi3hwplTCqSV?=
 =?us-ascii?Q?nnfyyMrOKvm+8dMj7tPkF5niQAAbVnG7XgHAGRTwuHzgHfeXSrnz2Bpr11ag?=
 =?us-ascii?Q?xdUwljs13TibWrjMJv/Jn36MBZzO7Jw1LG3GdGO3PfBvgaDzJccpmcCJndXD?=
 =?us-ascii?Q?NrJXqoa8/x0aPB0iC8LaHPBpjigka+nN4Oo7cH/kuMJNB7Zr7DLvNcsG8GfN?=
 =?us-ascii?Q?HQpV9Q8stdrAKRZ0QFJqcvOtUhVxPJTxBGdivqna+9QiJU2d0xT9yBASrBys?=
 =?us-ascii?Q?NXqrIaVxxHBipmYuN+xXdDKwsGaIbmgve6XQkVDOojMG4FK2oPEx/M/W/BYa?=
 =?us-ascii?Q?9nppc6YNzYmJAKhPj+wQyad74bXiGoYSx/0I9E7pNmc0Ua+ZwpAntWG0vCGb?=
 =?us-ascii?Q?wVqSrRrGb6QCniCAUuv8GgWBmwjY4nc6i9hEIR26ieJI3M1OZ5o/3rbWR/fo?=
 =?us-ascii?Q?6D41YQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fe0d92a4-c3e2-4559-75c3-08dab84093fa
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2022 17:27:53.0647 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hv58hn1VhfEm7J02J4w/nAG7pRpoM4eCQEUbHMdPtLnbVhWmvwmzVGpDqRmdRg66K3bl31SEenxVRvXXx/et4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB5987
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dg2: Introduce Wa_18019271663
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

On Tue, Oct 25, 2022 at 11:03:35AM -0700, Matt Atwood wrote:
> Wa_18019271663 applies to all DG2 steppings and skus.
> 
> Bspec:45809

Could we also add the reference to the BSpec containing the WA description?

> 
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 7 ++++---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>  2 files changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index e8372d4cd548..46035503068c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -421,9 +421,10 @@
>  #define   RC_OP_FLUSH_ENABLE			(1 << 0)
>  #define   HIZ_RAW_STALL_OPT_DISABLE		(1 << 2)
>  #define CACHE_MODE_1				_MMIO(0x7004) /* IVB+ */
> -#define   PIXEL_SUBSPAN_COLLECT_OPT_DISABLE	(1 << 6)
> -#define   GEN8_4x4_STC_OPTIMIZATION_DISABLE	(1 << 6)
> -#define   GEN9_PARTIAL_RESOLVE_IN_VC_DISABLE	(1 << 1)
> +#define   MSAA_OPTIMIZATION_REDUC_DISABLE	REG_BIT(11)
> +#define   PIXEL_SUBSPAN_COLLECT_OPT_DISABLE	REG_BIT(6)
> +#define   GEN8_4x4_STC_OPTIMIZATION_DISABLE	REG_BIT(6)
> +#define   GEN9_PARTIAL_RESOLVE_IN_VC_DISABLE	REG_BIT(1)
>  
>  #define GEN7_GT_MODE				_MMIO(0x7008)
>  #define   GEN9_IZ_HASHING_MASK(slice)		(0x3 << ((slice) * 2))
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index ced3a26cf7e7..9f39b7758ff3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -750,6 +750,9 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
>  
>  	/* Wa_15010599737:dg2 */
>  	wa_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
> +
> +	/* Wa_18019271663:dg2 */
> +	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
>  }
>  
>  static void fakewa_disable_nestedbb_mode(struct intel_engine_cs *engine,
> -- 
> 2.37.3
> 
