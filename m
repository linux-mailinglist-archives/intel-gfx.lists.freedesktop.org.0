Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E6479D549
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 17:51:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D351410E431;
	Tue, 12 Sep 2023 15:50:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D38410E080;
 Tue, 12 Sep 2023 15:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694533855; x=1726069855;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=qlIOmWrdjsW7bMqknpDa0dIQX5xUWLKDBDHQQm9E9VM=;
 b=HJ3evtaDjGyDalI4NOEjNw/6zyPprcQLX2ddp+5sNEkK7cM6VerUXNOP
 xfYg93xWHr2LBQOa67albNQyynBBJxd/w9XRdRiyIyzjjy8nZ6X/oqmMZ
 XkoxuGMBITPBk7p+onNSXCPOk3mvZQChuBLnXthEgxYF+sVPF1xqRcjqt
 KJN5fy5hF70m7/SYDo56TIZMIwGlEZxWfyKSjIFWPsRg95fUw2i1vzKpz
 gAQAMDOYE6famkvS4Jnui8729QDZZSaOCSQaqvvHYDKOH1lRfJ158tB29
 e9ZTWmQ7QPWI1h07aGm7mOmQfcWqYXHLxbi9q6c2TP/u57v7gNa1IVfmI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="368678242"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="368678242"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 08:50:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="693535265"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="693535265"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 08:50:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 08:50:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 08:50:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 08:50:54 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 08:50:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XRuTiDs8tyPO+dzmS5jj1JdiZhOx4H0UvPtbO7dVEKAmiWhBAirwIAfa+BYb5SyKIsxHU9CcmCgbDs27YD9c36ISm5roXGf47EOypi2CvkwbtchnrOFfr8T3LrjUNIoxfZ1SmU+mboDwSJ7VZVfGqTKc/n9wLicHJyorymdLf1jmnsjT8NEHYAfy5vo4q6AL/jq9ZGxAHsOMMrTiQGddE1hWMSlnctGKlWNpzHYgZO74W8Wz6awxqPFDhvyyvDzEsSdw5Wnr+a5LZoiWekGk+JTDFJrA0XnGI2NkONLsawddvUAlrR8b09Xyo4lxiK45gbWJX/2WK5h/MzrvuhheYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W2SLZ/7AVXbGCXccsAHQYp0OySEhJIfqH8FA36FRzlA=;
 b=RxLz5HbIsFCyN/ztyvWTRE/8lp6WiORAeSNcpBwpO9oQQqLKZlWKS7g0COmhwdo5LvkaJs5nBbT6o+Kh+ckZuPGlurZKuaH/y8R/eiQ/2JyPqbuVk/mLJjtRxylXDOKFEodIHj7LEhdhDXIncMm7gw+V3DZ007zCA6t6tIY/Dw28QpI/MTVqollNMi2T8o0HI/LQh8kjiyLV3kOTCgr8YI5bMUtd/M6prwUxqhkvTi6icyAVjKL1TTvrggCo7L1o/fSot921aVjYsZ91/2aHArU3aGn+MJphFZITgIjoTnS9sQq37baqZKTHo0OWLmA6tKoHC5Dt5wW0CD5rvQMtdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH0PR11MB4998.namprd11.prod.outlook.com (2603:10b6:510:32::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.37; Tue, 12 Sep 2023 15:50:52 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 15:50:52 +0000
Date: Tue, 12 Sep 2023 08:50:49 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230912155049.GJ2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
 <20230912044837.1672060-15-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230912044837.1672060-15-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR03CA0018.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::23) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH0PR11MB4998:EE_
X-MS-Office365-Filtering-Correlation-Id: 20c40580-e8a7-4084-b061-08dbb3a80abd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UiHMOp3v9j/IrBdudFDgxK3/bMoRR2UX5YHdwSEts436bFNrfGeO/V1IjLlZM7U03VIbLAujgW5YpchOFOVg6gQZrvW/TVoC+p0CMRjsBqsydeVUSSczwxMfP2qy1YWe4Ui3rUA7LLBc1xRuOXtZlbjW6iWy/YXKGN51qFKGkmMjSmQj177uexhf2XT0ZTFrds3FC0PTNIAOQX9vrl0lZyhCHWVs5U4gYx/ERz2LmjpYlPHD5co2NiCUSpEmqA593KLC9sAhYkaPieFbWaxKXLxoQkC3PfUkTImBOOIhJZX9BPm1b1yc401nF7QNb/wZSWsNWSS8teDD+hKWALlmUWSuiFfCraDMTgE4GXWlKAwdE35Ck7orC1drzfPqw2Fa6WvCMi8MQWk5g6veYNexjdLbdt4hnjGJ8KmHQ+sY6Aj5xzdZJr7Mjfv4lX+uHR7+SpFGFCrBHLieYHwwHqC0EDsSPRVf3Db7tpKiGDj8hPtY8cImx5/aM5xD946AMDX6fkaa1ZNIgtb/xdX5y2+J9xWmlPLSzPOzromj45jiRKxX5EHXGJuCwU1U8wuDcssF
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(39860400002)(366004)(346002)(136003)(451199024)(1800799009)(186009)(6666004)(66946007)(66556008)(6636002)(66476007)(6506007)(6486002)(41300700001)(316002)(6512007)(478600001)(26005)(8936002)(8676002)(450100002)(1076003)(6862004)(4326008)(82960400001)(5660300002)(86362001)(2906002)(33656002)(38100700002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IVG/+A731cR1NHcNRrqGiD/IauhpF1PX9qMKE7eZvt0G7uBTX33PbLS6m3ub?=
 =?us-ascii?Q?H+TfqNFo9EYSyGQkAH/vl1VXIi0hs4NgIppM5O6GhdFLlgtmt70x/OetCxA/?=
 =?us-ascii?Q?gFNtfU9FmfFimwTcuBsJfHJ8Wa1N1MUi3yCCVYQHbRVlWf2KUywljGZhnHAW?=
 =?us-ascii?Q?3Tdc0P0fNycj7YTniRmQrVt+Jgq3LLyL3cja6/JsyyXFi+MI8OyfPFryRYuL?=
 =?us-ascii?Q?eVFPzr+a5lv1TEO8DEFnRh/wTVGV/qCpHBnM7AkuNZ62YDYhSRjyh9CO7mED?=
 =?us-ascii?Q?ncZAZy57HOIza22+mXl+lSzgYg3x+kF6GtKN3lvJq2RIq8eGYF9gMyMhr0sp?=
 =?us-ascii?Q?J21y8GzfSD2XJt6kwzqquGe/Qy8L2zBAWKgMW89B2TyB4pkv1f5oJRp7KKeI?=
 =?us-ascii?Q?ZhlAg/Su9WDb/ZCWfZd773KdnidKW9fTWHk23R2YHEk2saNPk9V6yvxP+c8+?=
 =?us-ascii?Q?imPB9qvkcF5SK3vyFvAj+RtDvpfugXl17+XTNhaDN2nL1dHUQLbSX6PTXpmU?=
 =?us-ascii?Q?GLic2/jNlQSBz4Rl09IL+OYGRqplliC8qJrSyZSWyCICDoyqmmnX+0BA9SLl?=
 =?us-ascii?Q?OGgUvEc0dttEcd9ZRj82yLIj89UKkPQ2CxxyE8nsLN6EDDnjOTNARHVm+6nI?=
 =?us-ascii?Q?AKH5RtjTBXbxzA8Um+94PZ6iLhiCCrY0PTpoMt+Wffzc2W+gjMcOCVxFGfPM?=
 =?us-ascii?Q?Tk8xBq1+wQgVeoSDkKHHQC/E3G/EzNL44nj0JmWBR5ONWa7QQFBRQPqztALk?=
 =?us-ascii?Q?jMdvtl7cpmiwbKVtHHc2eHBwZ7pAn4zbG+pmHsvRTy+iDt8OyvvrC1kk0c1l?=
 =?us-ascii?Q?JkVtUtQ1N15yOQvoFp4tlhbY3rPLqRYBnWTwW1E91r0rot+V5Bc0FgrgL9lK?=
 =?us-ascii?Q?OuEvf6T44VGEV9qntFIAuuLPhWt/cnT6Kqv4t9tWpWMbhMABjzmodVKn+1oY?=
 =?us-ascii?Q?/XlZar83VR1sSJJFy65SBf0RskafabZh0Jv5Y2K7J01Z2VW0haQanyDBoQSg?=
 =?us-ascii?Q?6xy6XifegpzwkmXCsbHbHV56PH9r/mdsdh9xemRghA9FI2C6URUbPj9IlYM7?=
 =?us-ascii?Q?jiuAnBdQETcAUK1FtAi58XIZAgULsia4EWoe3rznAksjASvLlcmQx8sZDELS?=
 =?us-ascii?Q?3D9G0+6iBSaMYZjLmdSQpnfJlhsbSi+dld6dBvfb8oAm6mMahsVmSu3XHcn9?=
 =?us-ascii?Q?iGr1yl8uzOYwallUmc2qpG7Esb/6XERK6QxoDvWZSy/N20bRkeujMGNn/xDG?=
 =?us-ascii?Q?kLNSj70uzsD1Sl4Gy04iRFCGL+rk0ZwmadFP5I4d4CDJItG+Jn9222rYoDB2?=
 =?us-ascii?Q?DoDnOnhCnwd3B+06AJcQMlRdTzNY2lvMYciNV3hTdD8syt8D6Lppzi/YPC6B?=
 =?us-ascii?Q?uYzwpeZh3NmHYhGTkVyZECHY+fd0gM0Dnx1Kt6myO5x6XuvWRgSWWbdfuUvo?=
 =?us-ascii?Q?cb4NRRE+Z9JzdyULzWkZDBfv874gWap8KqWW5zcxcibZcUdBiTBJW5Y7j+h8?=
 =?us-ascii?Q?Uo8S0FKChOjqsGzw8yODZrQDnOTzXS5lFneuQAItscSJYWSVKnrdNQ6CpeLA?=
 =?us-ascii?Q?PENueao0Vf0eGOh5xykflJOxOs9WoUKf0Og5DqFuKBfo715TSlDCxD3a/uI5?=
 =?us-ascii?Q?kQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 20c40580-e8a7-4084-b061-08dbb3a80abd
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 15:50:52.0782 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Pj550jibIhWPEtnKF2Z9JAz3Uaw7ZxsOmN7COTO29mp/2xD7/pNd+b+wgWigqg13egYXIbhBpPSqGHxytsSvAuSRSuxLCGxvq6O24AJALQ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4998
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 14/29] drm/i915/display: Use
 _PICK_EVEN_2RANGES() in DP AUX regs
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 11, 2023 at 09:48:22PM -0700, Lucas De Marchi wrote:
> XELPDP_DP_AUX_CH_CTL() and XELPDP_DP_AUX_CH_DATA() use 2 ranges. Prefer
> using _PICK_EVEN_2RANGES() over PICK().
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_dp_aux_regs.h  | 30 +++++++------------
>  1 file changed, 10 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> index 4503d94115d7..1e9e018a2a48 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> @@ -19,18 +19,13 @@
>  #define _DPB_AUX_CH_CTL			(DISPLAY_MMIO_BASE(dev_priv) + 0x64110)
>  #define _XELPDP_USBC1_AUX_CH_CTL	0x16f210
>  #define _XELPDP_USBC2_AUX_CH_CTL	0x16f410
> -#define _XELPDP_USBC3_AUX_CH_CTL	0x16f610
> -#define _XELPDP_USBC4_AUX_CH_CTL	0x16f810
>  #define DP_AUX_CH_CTL(aux_ch)		_MMIO_PORT(aux_ch, _DPA_AUX_CH_CTL,	\
>  						   _DPB_AUX_CH_CTL)
> -#define XELPDP_DP_AUX_CH_CTL(aux_ch)	_MMIO(_PICK(aux_ch, \
> -						    _DPA_AUX_CH_CTL, \
> -						    _DPB_AUX_CH_CTL, \
> -						    0, /* port/aux_ch C is non-existent */ \
> -						    _XELPDP_USBC1_AUX_CH_CTL, \
> -						    _XELPDP_USBC2_AUX_CH_CTL, \
> -						    _XELPDP_USBC3_AUX_CH_CTL, \
> -						    _XELPDP_USBC4_AUX_CH_CTL))
> +#define XELPDP_DP_AUX_CH_CTL(aux_ch)						\
> +		_MMIO(_PICK_EVEN_2RANGES(aux_ch, AUX_CH_USBC1,			\
> +					 _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL,	\
> +					 _XELPDP_USBC1_AUX_CH_CTL,		\
> +					 _XELPDP_USBC2_AUX_CH_CTL))
>  #define   DP_AUX_CH_CTL_SEND_BUSY		REG_BIT(31)
>  #define   DP_AUX_CH_CTL_DONE			REG_BIT(30)
>  #define   DP_AUX_CH_CTL_INTERRUPT		REG_BIT(29)
> @@ -68,17 +63,12 @@
>  #define _DPB_AUX_CH_DATA1		(DISPLAY_MMIO_BASE(dev_priv) + 0x64114)
>  #define _XELPDP_USBC1_AUX_CH_DATA1	0x16f214
>  #define _XELPDP_USBC2_AUX_CH_DATA1	0x16f414
> -#define _XELPDP_USBC3_AUX_CH_DATA1	0x16f614
> -#define _XELPDP_USBC4_AUX_CH_DATA1	0x16f814
>  #define DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT(aux_ch, _DPA_AUX_CH_DATA1,	\
>  						    _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
> -#define XELPDP_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PICK(aux_ch, \
> -							    _DPA_AUX_CH_DATA1, \
> -							    _DPB_AUX_CH_DATA1, \
> -							    0, /* port/aux_ch C is non-existent */ \
> -							    _XELPDP_USBC1_AUX_CH_DATA1, \
> -							    _XELPDP_USBC2_AUX_CH_DATA1, \
> -							    _XELPDP_USBC3_AUX_CH_DATA1, \
> -							    _XELPDP_USBC4_AUX_CH_DATA1) + (i) * 4)
> +#define XELPDP_DP_AUX_CH_DATA(aux_ch, i)					\
> +		_MMIO(_PICK_EVEN_2RANGES(aux_ch, AUX_CH_USBC1,			\
> +					 _DPA_AUX_CH_DATA1, _DPB_AUX_CH_DATA1,	\
> +					 _XELPDP_USBC1_AUX_CH_DATA1,		\
> +					 _XELPDP_USBC2_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
>  
>  #endif /* __INTEL_DP_AUX_REGS_H__ */
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
