Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 915677DFBAE
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 21:48:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E49D810E2D7;
	Thu,  2 Nov 2023 20:48:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63EFD10E2D7
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 20:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698958135; x=1730494135;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=nC2ZFaSpoe2D1egd4cEVjOa/zP3TG4aKLOow1/Ehjas=;
 b=K47yPexslY3JhWCahkGsNPgHF/9BQ7mwdH9hQZpQMyOtL3jFCT+WLaQW
 z7PE2T5GUrMElM4d4uW2M+rqqvap4WWozLefZweHYTOtjW3r739A0Uzb1
 vI1PcL5uC66PvbEFn7XlpMUr5oosgHGr9+RRkf1lRLm9I/qVav6LxXMXZ
 0/ArnlC9f7AQeUEqXOKrArlK0+hk7REU3qxwPiGim8PWW1RxTpuVK0zyb
 NWXQhlE5zw2fRM7K/y80N0mjQlDncmfrZU4XIQ+Hn62oKpMCnF105tfkC
 fW1QHtzLUbNAaYxQqSQxkeABhSMtcL2S56lCV9Hk7lR/kPcOG8i3H97Bd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="369017555"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="369017555"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 13:48:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="796385081"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="796385081"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Nov 2023 13:48:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 2 Nov 2023 13:48:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 2 Nov 2023 13:48:52 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 2 Nov 2023 13:48:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kc92A6nqqsV4mPoKOvWBA9UEgAGsxtWosuPW/ZsEnURjWOoSLtci12GT76S7hfVmvGCzx3zfBtnTohKI0iLBndz+n3ESZykuP0GbUKBJMWsTgTkoxQaYYFRvtOkmnPZKIKAkP3KoEgfLchjtp7Ch0RejbHEjwR6lRpxqZkK1VwkF0lmmNnCSrPszq6nh+SebZQWSOraQzt5Y6y90HUUkdir79FntShomaoOv4DyFMQ3A8Tiq0GOPihf7+30iMGelLonak8HJ2u1X3/Gf/zDMSVRnayO7k/h3h/7QtckXFL8gdufT5XwsICDxggLecJSXm9brdIgLvsYeXh63lgvWsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HgCB0mC/AtAuNdmozbxx1Pbnu0jv1Td5pZ5SPs+8cJc=;
 b=Q4wNEzjYaKyGwi0t4RcVlke/0O5Xi/Dj/DExIiszLfX7MvIrt9jxojxzCB3ZIM6vTfd0x4al0nIkp1VG1NCm33J1zl9MtahCIUxOj6CQmc5xYSPEAkKwuYcAcUODWFNEimmCHrWfXXyNSyT6/FlacPYOz5YMMNb2opF+Fo+dLEQetApkyjSfe2GQpaSMdDb3jxvyf/WqUSyFqw8eKDf98u6tkNwmxA+rtOMW/DG8CZucURm6kqhf+ZqdqI8LtdS43jPcGwHyUmiVy2285zPAwlsas5sUyrfEp4dgsCBXbGkAyZuQlFdHOK4YZrjJbPiMWhemR/v4uQyxrQDLLo800A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ0PR11MB5054.namprd11.prod.outlook.com (2603:10b6:a03:2d3::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.19; Thu, 2 Nov
 2023 20:48:50 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f723:f4d9:c12a:5b62]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f723:f4d9:c12a:5b62%4]) with mapi id 15.20.6954.021; Thu, 2 Nov 2023
 20:48:50 +0000
Date: Thu, 2 Nov 2023 13:48:46 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20231102204846.GE5757@mdroper-desk1.amr.corp.intel.com>
References: <20231102155223.2298316-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231102155223.2298316-1-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR08CA0040.namprd08.prod.outlook.com
 (2603:10b6:a03:117::17) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ0PR11MB5054:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b67856f-a8ad-4d31-000f-08dbdbe51d34
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IdTjQ4s1dNPDNMjl3ODRQKoz//LWVmzC8sSzVfiVKAT4zw/Tc+uKdbMJ1ZjLP2RLPnZKKT7m/6bkNTTb02+y3WDMEtgNhixnveCfMWsW7xADFhvdxdeARTdtD6jlRB779nLud8mwXAnoMnKQq+G+bLASU7qzTehwdXbA1F6XiWfCKLf78eHId+HoXT/VPB694+sLUUlHL+0oV7dRE6yj/D+sNd8a/COeQL6ncFkq9TVW0c+bDZnj5gdQryZaOSvpgenK8ytDnNgeAhDOWxMqDePQVaMoX5LHSg5xFPagT7ugGy31sz5MpmXewYlnMH7KCaLVLA7zPqbMwvMg/FTXlLJNiR6ZOh7LjRJ7FVSDC+P6HPDOp9NFKfW9l82IGk+kRMAe8w4vH2X2yadp8CVXh9931Zp1OwKNgkKbIM355dcMXhokWqDLU8ic9KYREk92ePzyC1ulbdostHmBH7usiFBjTR06FfizS5gVa6EAWQjWAPjbucaJXYjgqLhsgSy/wbEHeTvPj217cNa49SzSdzlInPKe/fSORuTKou4H/5dzPNTZu8b3kBfw9L191m7n
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(346002)(136003)(366004)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(478600001)(26005)(6512007)(1076003)(38100700002)(82960400001)(33656002)(86362001)(2906002)(83380400001)(5660300002)(6506007)(8676002)(6666004)(6636002)(316002)(6862004)(8936002)(6486002)(4326008)(66946007)(41300700001)(66476007)(66556008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NphlmTMyfoEzwg4qhO6f+em6C41onuGsfb1yK9JHRsQWYmxqyFDJ2az9yywu?=
 =?us-ascii?Q?jcPEoxlyp8imLaCcUTJxoaBlxU/FlwHV0QzNU376d/ixtptQKkfI2oUTvpF9?=
 =?us-ascii?Q?cxRvvVMJjSpuWkjPZysH9hIqknL8ZLcnQrSJCdmj5VIjU4CiPUlkHdz2wnO/?=
 =?us-ascii?Q?Va10rDzVuXeK0pruwgaLpDc1Sy2UvdiYPu/22rv2ADArCIwSGD9q0oqVhYp6?=
 =?us-ascii?Q?GMiVfFgCobd70Ey4Q+MjULQc8RFxJSGRHM0ua+m261l/LQS/sDhcL47ICDrV?=
 =?us-ascii?Q?qb+2uvUbJg6566cxdjFmjI76FnJlOs1mG58gCci+HeeaO/SPPbI8pPkzCjFX?=
 =?us-ascii?Q?uT5wUeevzazqnCC9jj7kBIf6KGYeJDHn6HEEb1G2+d13JLQK8EFWfU7D3SSf?=
 =?us-ascii?Q?QZYdA8z1VxFF/351p4q6S72KlT4IR42qvPeB4LFp9lwVcJiYbSkYIhLsoLbb?=
 =?us-ascii?Q?FBZzQLt8j1etUKmYtb/UTsljFO/M0O0g6UNDLddumc8QR1rRRb7/jFNdk6Md?=
 =?us-ascii?Q?mCGXDcfgs8GRu0BCanPzJTFaRCz7qf8Hy6gNrFk9XjHorWk4dwln7agFs6S4?=
 =?us-ascii?Q?W6zYFssh2DjWAj2uMYnRxNJEs1BcrtryvsNe3XjwU7syieRrbWb/FfX8q4Xj?=
 =?us-ascii?Q?f0KiifZDS0ebW2SsxOcgjZWqODDTI30TqvMgPnmCEEMXftELzut2heGZKBOD?=
 =?us-ascii?Q?ZoFWCVuBa8vuaDsZQZDWf9pMF3KjoeiWqemMMPInnABidg4cqiSDHwwnzrxV?=
 =?us-ascii?Q?XBnIdp/eULdyH7KVN3nP4j376w3jro/AuVp8wh8bpCiXL7rRWZzAshRvA019?=
 =?us-ascii?Q?Uhs1FBJ35TQj0n0dPM5sssXpLJQMydhIgdXsRL6Wod9pzXTOVuAfMQUXsefB?=
 =?us-ascii?Q?mnBbydlICUhpDYKQJyDvm3joD2bEGwymxEdOpOcpwzAc5pFACaiwOtzgKxsw?=
 =?us-ascii?Q?Te2quR9Zg9GtW4s1wSW+mQ4CZEpaLrzXxJ5DNsCU1NmIVui0WO9uYSHO7ngf?=
 =?us-ascii?Q?ZS0ZR/yM8LrOXEBpLzPMEiiLjE3jWIGmLG70zflw77DnNF4wFT1W9YUNlnRQ?=
 =?us-ascii?Q?vkMuQL8Jx5/U/Oo5/EYz/LybsRlWflPbGAiPyChnuQ2o65Zl8xB1GeFyYpWr?=
 =?us-ascii?Q?V1Bma6UAj2+GP293mtDWEYXzuZ6qhEocPszsWjeiYo6LhogOZra+FB4Kr4iy?=
 =?us-ascii?Q?91F4/Aa0JQim2U8E864b7d0GSQo7GiBneK8CNzHZLnF+M1jrrMwTwg40uxLx?=
 =?us-ascii?Q?nqw53/DB4WDsFRHUmpnvh3Qt8lwByvc5yEFJlpYMtfeBTgeOVmLBDWz8OeyX?=
 =?us-ascii?Q?ZtpbhiS0Fhv+bNrNrDtZmMwUHbgE1BufNfQMdh2mnfXOuPNSkXmPnDPfI9OF?=
 =?us-ascii?Q?GICfkz2/6xmx9ddB1oPItDK4UpoZwul0SJgBaRq51UfS7oC2UCCRxIqFXVaV?=
 =?us-ascii?Q?O98xRK+3Xzf9zjWT5xTLuaNAIPSvnTPjPTkEoGudILBC/15VUKqxECdi9ulA?=
 =?us-ascii?Q?GM/K65OFCDIklFVtz3kKE8z1XnoES0y1MKR3k1fXtXvL8TFxZdYFY1mROolc?=
 =?us-ascii?Q?i+dU6tWQsM7TWk6SBZd8ojqll+8pNzevCLMW3OUhNSr+EMRWB2Q3CXNQYARY?=
 =?us-ascii?Q?CA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b67856f-a8ad-4d31-000f-08dbdbe51d34
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2023 20:48:50.1104 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NUIQ7MtNTPklds2SaOEJZN7VxOeS6lmRymyFDjhPgGWXH5vaiaeVE4zWQ8R+ihO+XMAbAzEIJrnZKRUK8JxmBuKKNN1roCGkTbPE8jlp1UY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5054
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: move display mutex inits to
 display code
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

On Thu, Nov 02, 2023 at 05:52:22PM +0200, Jani Nikula wrote:
> The core code has no business accessing i915->display directly. These
> could be further spread to respective files, but this is a start.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_driver.c | 6 ++++++
>  drivers/gpu/drm/i915/i915_driver.c                  | 6 ------
>  2 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 44b59ac301e6..0a5b922f2ad6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -181,6 +181,12 @@ void intel_display_driver_early_probe(struct drm_i915_private *i915)
>  	if (!HAS_DISPLAY(i915))
>  		return;
>  
> +	mutex_init(&i915->display.backlight.lock);
> +	mutex_init(&i915->display.audio.mutex);
> +	mutex_init(&i915->display.wm.wm_mutex);
> +	mutex_init(&i915->display.pps.mutex);
> +	mutex_init(&i915->display.hdcp.hdcp_mutex);
> +
>  	intel_display_irq_init(i915);
>  	intel_dkl_phy_init(i915);
>  	intel_color_init_hooks(i915);
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 80e85cadb9a2..01fd25b622d1 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -231,16 +231,10 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
>  
>  	spin_lock_init(&dev_priv->irq_lock);
>  	spin_lock_init(&dev_priv->gpu_error.lock);
> -	mutex_init(&dev_priv->display.backlight.lock);
>  
>  	mutex_init(&dev_priv->sb_lock);
>  	cpu_latency_qos_add_request(&dev_priv->sb_qos, PM_QOS_DEFAULT_VALUE);
>  
> -	mutex_init(&dev_priv->display.audio.mutex);
> -	mutex_init(&dev_priv->display.wm.wm_mutex);
> -	mutex_init(&dev_priv->display.pps.mutex);
> -	mutex_init(&dev_priv->display.hdcp.hdcp_mutex);
> -
>  	i915_memcpy_init_early(dev_priv);
>  	intel_runtime_pm_init_early(&dev_priv->runtime_pm);
>  
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
