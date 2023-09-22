Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 640C47AB58B
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 18:07:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC07610E6A6;
	Fri, 22 Sep 2023 16:07:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48B7B10E6A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Sep 2023 16:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695398849; x=1726934849;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BqJC/RWSokQVzLVTd5A6f0x0cbegwEvJp6T13GtZdFs=;
 b=CBaBg6S7iP3W8ipcBnIJjLfCklBl6V3dzPPrD+Y+2L7YF/DOc2m2cTqH
 JOsHO8QCLpxwZsG6dWN7x/Us2lRX0FZmqt5SswdMksfy3AjZqf0riPCK9
 7baM390BIhc/vFB8xMDYDEZLS8MseLC0lTrWeSRWEvaSAo4vUo116tNWz
 LptGdshbpMybA+3DlS20Qoir1/8oLrmiu6CABBW6luOebdOEBykckHojE
 O+YazxQOCvXOikzpLGpO14P2pMqvPRx9HqTHUPxiCByktd4syjstxExdp
 Q2xytGP7B6lGFpnOzFOVgOT3IfX7WWPBH6LHDFL2lNqoYvk6AL/uuBlwO Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="383614021"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="383614021"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 09:05:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="994606041"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="994606041"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Sep 2023 09:05:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 22 Sep 2023 09:05:30 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 22 Sep 2023 09:05:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 22 Sep 2023 09:05:30 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 22 Sep 2023 09:05:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QJ+mian2C6mm5uWEEiM8aHRDvjIpuY6BfoLmhnY8e4qB4XewaCE8sDCNdMdI9iH+2AgyOCHMpEM31ua9k3Q6I7QFEajUvsl+wtmfn6LBN/yFmVGEvHFdQpG0IuZHH+O1M44/t7cJS//u8f1pwho0ruslTsYSktGO29EvhsBwTs1h+NfNLxSUOYJ3CWZyHxG0Qhxo5cUOclmnVBkVxrPD54ypuBp0j7ABilm0QqViK4vFRLANL1pS1g83oYQthxz1zNwVTebLZvSiKby3ySC5zq+Bq4O2msCIN7tL4JU4KTLFnQ9xNYXjdr5h5EuLXgNn0U/uL8eBqATVPh5PSWhD8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NdqZEjTp4c9XLLfcq6U/QYhPucVklyH+9PmFA68eoy4=;
 b=I8FVfQSIGt9dU6fKEXUEY+nDlOXgF9YQGBPoTsNne50T8xa/3nD/4x2zOvLYXOhOHWrhfR79xuK1zc8FSPDEGRkRTrbAjXXBQjrj4HTn6WWtikNn3vkgPjOP+4JZF29YMsTkg7QULH4QAMbXuU/Kr9zMqpnTH4s/gYojFylUXiaZ3ydec4FJ2/Y7sml6V10Tw3Zl/ebHNHqKiZdYyD/hZdK6K8cc7U6hOH09/jmsQB2uYTRNa9xaqJ5NTZygqLnKTG7szaqCdjnZ7ytH22QBsy4mFOmObvtLWy1f0MqlS9pWOGB0sYPtXnfGY9vr7EtOQIAoVuU9vbb6Lvyh0NaSNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DM4PR11MB7351.namprd11.prod.outlook.com (2603:10b6:8:104::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6813.19; Fri, 22 Sep 2023 16:05:28 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6768.029; Fri, 22 Sep 2023
 16:05:28 +0000
Date: Fri, 22 Sep 2023 09:05:25 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Shekhar Chauhan <shekhar.chauhan@intel.com>
Message-ID: <20230922160525.GU2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230922155356.583595-1-shekhar.chauhan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230922155356.583595-1-shekhar.chauhan@intel.com>
X-ClientProxiedBy: BYAPR04CA0008.namprd04.prod.outlook.com
 (2603:10b6:a03:40::21) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DM4PR11MB7351:EE_
X-MS-Office365-Filtering-Correlation-Id: e70ee040-4d0b-4ffa-1e85-08dbbb85bd53
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tK+iVVZHOzYpQwqoVXpqzt32lKnP59ZacprkQPOLEIN7KWmA1iRUXjV6rS7S2QoyahydgEVFjsYPm5mHj320yc2IRkyNxuxOih7q7MjmtnJizei+U2gypi+zMeSvNOABTsNDXKhBF7B0NHg3oxoaSfSPZyFDhMCBzb5TlTZO7Xv1ttue227dH1mud3AKD3CvEdwbOCHzG/O4YH+RyXqABq5gOaq5EvdvsfwnLqV5WwQD5DUu/raRxudQXTvIbciT9ghvvMDlkDyNaN2h6QccyF35KkHrZUxsPCRon7vsbG5JgN6KGrmfNqxWmFkNgJsfMHibW6rRaL6y/qba7RMyPUSxaAJrJTRFe4M53AI9uWD/CI15pZqoNkEIr3xlf0EeHhLptDa3OzwKbznN3l5W4rMVuPABm6KEmE5lBFCHh/WV8k2kMcvEtxXr+gloUiEuds38SPM2xygPrU2556h9mNeaK6eYZywsjv4S0MyfpN7hP5PBIkNzvVZUJmpkab1vpvdup/LFz/PnKccf3ivZhSuBdxhf+0uqZwuNVI5mvOn5fPoWP6xYgGEqVnWDp+83
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(346002)(396003)(376002)(39860400002)(1800799009)(186009)(451199024)(478600001)(6506007)(6486002)(6666004)(83380400001)(86362001)(38100700002)(82960400001)(33656002)(2906002)(26005)(8936002)(6862004)(6512007)(41300700001)(4326008)(5660300002)(8676002)(1076003)(316002)(107886003)(66556008)(6636002)(66476007)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?++xGiPU3f5CAQVnvCqc+jbONuDy7DnaZu9WeODEvD3ZOAyXMZdwfhYuhHXlX?=
 =?us-ascii?Q?YEeZ/K8sMee/G+qR2cuLtOop/DjfHVfTelZNWfV6d/6hzxyNWjn1bexrAJfQ?=
 =?us-ascii?Q?hyzv2sZyH2BylUO6Hv8fDBfowK58Jen1kBSG8kQrHNJGCmKPjBnYMrMHPh65?=
 =?us-ascii?Q?zPYHfrogJmTZ4vgHdyEbSYUcGg+/PDjgEJ7/qMnme2+qeJpUkOBQWfSsiKFh?=
 =?us-ascii?Q?P+FXxovt+qrc8FSIeEjEnOOdwMTEEclH35ccr8rswdAWMxVezsyDnJPgHyxF?=
 =?us-ascii?Q?37G/1zhDwShK7iNfVZqE8erScL/zF/vyiRCH79HHS/zWR2AoBRHNQuIQcnb7?=
 =?us-ascii?Q?2CDqyB3SgNmV2YWSrEVeawEsNPr+SS6DPvffV5KsURqQQILccIdMBkfRo3Ie?=
 =?us-ascii?Q?m5vr6RIdQGcLcHMEp3PfpDNzc/WTpnCapLe1i2f75aXyKvtDmsZmc9NcW0f6?=
 =?us-ascii?Q?fjKRyoHZeSBWoe/jA+AY8jWIYngOOaNCF0Gs2RcMLhYwII1WP468BS6PKp6V?=
 =?us-ascii?Q?P0aaZopW6iCP7FEa6JBhArlBktfqmbFOedzWt/d6DUkBK/Hy9dduOITiHsZl?=
 =?us-ascii?Q?SJHH1l5vW8AJGiC+/D9LCUwJkiRiiUsh/LzjjZ4MNX6q63FLsZsSvN31A45i?=
 =?us-ascii?Q?Du2x/FPN3pfCAldU7vSMzGkDyuYbp1cuOYH1dKXdbIva25oQ7qteulPrk+ES?=
 =?us-ascii?Q?pHW/5WUmRkZdi27BGyo3Xs8La67uEhzYHYWuKJrjTMOUTgQtiyFetJxnF6EL?=
 =?us-ascii?Q?8YttBR96sv0yDUJEzNg99VhQlwlHV0uxV8AvxD3vL7pFnKaxIIYNygDoqgQU?=
 =?us-ascii?Q?+QwxW4cm5dONuA1opMM+bIvvBQ5aFKyvtN3tCO9UigU5vZpx5uCY/ESUWUch?=
 =?us-ascii?Q?EB+i4SreeMemQINbZuY5n8LKE9CPKgaKYvG/ubFh37O9M07j6T4g48gnSivz?=
 =?us-ascii?Q?21kv1njbAo0ymdrlFms89oajb3+PVawXx+5F3AEiah4A2X2X8wvi3IGXmzIG?=
 =?us-ascii?Q?jut+s2sVDdga24qRGXPWD5bPmPVCAfFk1Lvtlz/xCDdT6z1TsWnkXsSAsHdO?=
 =?us-ascii?Q?lFvfcr3RD3McmhXoNmyWzvlt1UsubI34kjuZZgSpy1DC8Bn9c8b69g2yCZgc?=
 =?us-ascii?Q?/uJugC3hNerlsy86olL0iJcUnwARIIt4Z63tNi2C0gAbhEkQWKPavCpi/cZz?=
 =?us-ascii?Q?oPNKbIyRhuUBJo3PaSFrq94ji6E4l4BaggDkrrYHjP00PSse0UPcQmMs1J62?=
 =?us-ascii?Q?1GRFz0/3OMdRKi+pvQ4wMqVZUOGQE46od0nW78+1m86oljxi+7ptzyBvNpZj?=
 =?us-ascii?Q?0eimX1wErA7QPICQjndGqj6NAILDFOwUEIy2pFGEVHoRQGVqUEJgU9pj1tX7?=
 =?us-ascii?Q?QuGIgpEMYpaM0owRluCYKMrtFpIRkfKu017FYB/lcetQtyLSMzutj00ceBIu?=
 =?us-ascii?Q?dKOYGp9vFsW4bp6UALpOatJzrBZHbcwAWmwo3iKLqr1+Z9vxI22CTvP+7FQJ?=
 =?us-ascii?Q?vfdZ9THLveTHel+ZczSuiHrAs3d1r1D5yfptHxO5xjIRWqdWC4k0pLLAjhuV?=
 =?us-ascii?Q?gKA3m3d2/XxR8elCPems7vIVW8r4W4YIuiSX34OA5sRocpslUqr/qFA3oXTF?=
 =?us-ascii?Q?qA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e70ee040-4d0b-4ffa-1e85-08dbbb85bd53
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2023 16:05:28.5629 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LkGCQg0JDW4JlWfnEWxthiMWuPyZEzNZPsdaqulcmProToSmODcjCy0XVc1BJTtJyLEICBS+N21Vwsk9REzTC3J33Zbkr+XbZAKtDFk2K8Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7351
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915: Add Wa_18028616096
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

On Fri, Sep 22, 2023 at 09:23:56PM +0530, Shekhar Chauhan wrote:
> Drop UGM per set fragment threshold to 3
> 
> BSpec: 54833
> Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 5 +++++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index a00ff51c681d..431c575c532b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1230,6 +1230,7 @@
>  #define   DISABLE_D8_D16_COASLESCE		REG_BIT(30)
>  #define   FORCE_1_SUB_MESSAGE_PER_FRAGMENT	REG_BIT(15)
>  #define LSC_CHICKEN_BIT_0_UDW			MCR_REG(0xe7c8 + 4)
> +#define   UGM_FRAGMENT_THRESHOLD_TO_3		REG_BIT(58 - 32)
>  #define   DIS_CHAIN_2XSIMD8			REG_BIT(55 - 32)
>  #define   FORCE_SLM_FENCE_SCOPE_TO_TILE		REG_BIT(42 - 32)
>  #define   FORCE_UGM_FENCE_SCOPE_TO_TILE		REG_BIT(41 - 32)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 660d4f358eab..df0fba2850b6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2957,6 +2957,11 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  		wa_mcr_masked_en(wal, GEN8_HALF_SLICE_CHICKEN1,
>  				 GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE);
>  	}
> +
> +	if (IS_DG2_G10(i915) || IS_DG2_G12(i915)) {
> +		/* Wa_18028616096 */
> +		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, UGM_FRAGMENT_THRESHOLD_TO_3);
> +	}

It might be best to move this block above the xehpsdv block (to keep the
function roughly ordered by "newest platforms first").  But we can do
that while applying the patch; no need to send another version.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

>  }
>  
>  static void
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
