Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 466786A8859
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 19:11:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE08710E533;
	Thu,  2 Mar 2023 18:11:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC5DF88E26
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 18:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677780686; x=1709316686;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=xzuFJnzfmEX8A9W8LHOGtcUVYZuJvu+AqC1dExh28tg=;
 b=Daaa2/XEaK5YNxZPUcbtDmbZziVQVRMb0Tw76ZXKkBcFDT7BzrSK8lwz
 qN6Mh2IyQAmMRYbWzVBVWHS6+cAraMda89zHLneogHAWyUHkt7YiFoiaf
 1ZIr5laFfHgzP4CuMn3KLwnSd3lOIxzMaT5vG4RoVgfRfQ7q/pUzN02sw
 41vbBZ32Qn1kQy+x2koyN2AkD2jl7mccyPo/i63XM3F9odKCcpVal010a
 yD5mD5CNQul3bU+wZ9MIh4OD7WdtQ4vKJVyrchc81Rk6yUDyql3aT6++5
 XAjVxCvQ85WYROZWDGBMfWKkkqULb5lRY2j8xwbEJxCSbck5GYmd7SLe1 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="399609188"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="399609188"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 10:11:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="798928027"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="798928027"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 02 Mar 2023 10:11:24 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 2 Mar 2023 10:11:23 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 2 Mar 2023 10:11:23 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 2 Mar 2023 10:11:23 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Mar 2023 10:11:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OCKajG+vroYwpy7t+ZTjpVYGbs9KwIUC4QChRkfYd5DycHnx0gzMTTpEkW9rPbF7AtBKw8FBuTp+ZU1XCrcVVTVzWHf99/XTK4RGe4BYDdlYXBp2Bn4oBHO56YpL2kNKhVpR5WrEpehlJk7e+3FiKGvyNCFhxzj1Mjw4TBrjitHZyETvznfKzK/cTy00xDXOFeTaT5yul5ipy8hkoyJO6bzsJBRCq+XjdEaU4RNpZTL67NH+1O0OTh8fsl+0BRp9mBC2Rp7+tdkulpZAourmb94nhyicdsHKw9EfdQa1EHXm8dkvuzUiaKywXMKmHh7nCyD8skGByAM6ofySwwQcYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AUopCceMzv5snCPXRj6OKMA45BXOXnRC7+T/DPIH4+M=;
 b=RqYC+P6T0iQzoJcN9CXrGgI5qUAC9ECdIyIAHqrrSQuvIjhIFOA0+a2Q7Z+kmtuL/I9xsDmCn5JzT8VWHh0gy3iyizNE1hclRpJD+vgDcinVqO22ppdZuu3P3j4Q5//e5fhObUAoMGcomo3UXJvDtF9EeBMyiQQcMBvtIY/FKSjIUyPHUsEg9uhpwcoJghAbiUnoc52yvnMIpkBr5H+7vpWcSiUhmq6cTg3D3Pv5OHUqYVMOb8mfPoUYIV9i3Ivw/2TbcAmHs0qCpVo89Tz2QIhjqU8TU5zoRxTfl4PU8lnVo2uF72gSucCVky1gq751dhto+rk8tA0xptb7mVe5DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY5PR11MB6186.namprd11.prod.outlook.com (2603:10b6:930:26::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.17; Thu, 2 Mar
 2023 18:11:15 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%8]) with mapi id 15.20.6156.019; Thu, 2 Mar 2023
 18:11:15 +0000
Date: Thu, 2 Mar 2023 13:11:10 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZADmvoJYXEMhlyBe@intel.com>
References: <cover.1677678803.git.jani.nikula@intel.com>
 <b01f9bf0afa9abaece5d0f76aecde69e2679f662.1677678803.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <b01f9bf0afa9abaece5d0f76aecde69e2679f662.1677678803.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0090.namprd03.prod.outlook.com
 (2603:10b6:a03:331::35) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CY5PR11MB6186:EE_
X-MS-Office365-Filtering-Correlation-Id: c955c0cf-c25b-4dd2-eb57-08db1b4982b2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: S3289Yv7VYnrnz0Vit+azg6+9R8NhC91m1nFCOGPFsuGTADFdA5lS42SZu40J9lvEeuQNcWXDNS2cKwiS9UVDnMrP4k9mPmIfQMhNJuqKqbZLZiQmSWIRQemq/vuB+oCxabNMKBDIqtvE1G8sjb+MjArJWJb2R4eWV2ASmiEFZuxJv9bt1XOkO2yIqR2pIxGCWj8y31UvkiSJh47BRO52bacP2kF8wTSHcyBAAQ8F0Kpf2at/+tv6pWLiR+LA+lmkEJ4jhQf/ooPEchis4CVBIjw+4AMM2xjPEE07nSXMchUNR8D12Y+XomF15iUcRO3O+EQjf6EbhIQOfhU3CulDJ+Vk6qSQUrlXtZc/oRNBp1duEKWkTCNpRMUC5f6u2spPb6thbZlTTFv8UtJkNaXqIUHuYFlARxG2YV1DG7b5Y79vY9PTL0k01V0hfEPDLrpBvZ5/rYTU2u9VK458ba85KfgVt9acJh3G5jcBvjj9WLbqB6iAQJWGYwQ/pbZBILhjzoG9vYr1nsATaW+7sy2xxqUnkORIvi8ZD5Y+pXdTsphRpyHj8km/7wvPFVS9dNbH3j6dK+LRkS7aAauKFT552nsrsiriVtTToNaRBk7gmfTyRasnwmxL6TJA2qzrj/1M/VUmEBht80QlTjs3L6EmA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(396003)(346002)(366004)(376002)(39860400002)(451199018)(6636002)(36756003)(478600001)(186003)(5660300002)(38100700002)(6862004)(37006003)(6506007)(83380400001)(6512007)(6486002)(8936002)(26005)(2906002)(44832011)(86362001)(41300700001)(316002)(2616005)(66556008)(66476007)(82960400001)(4326008)(8676002)(66946007)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bZl2FHnNVEIm4jDk4GYQpNgPSqHujgOZLysc98MvJC1Vidu6QCDKRP155j4S?=
 =?us-ascii?Q?Dap7am9wr6KlX5hapcRDcFl3EUKBe/735M2U4sUeG30ZakpUfI3zAif2JIOH?=
 =?us-ascii?Q?pVI5Z3nnCw19f/xxWgCvmgaZJzJVMxXybO28gKln6uBN6cGarq7dyi+oR6KX?=
 =?us-ascii?Q?TGm4mQDxfgdMzQ9xKs3adAT/vWgUstFit9e3MKQZVaVCwOTmVQx47+HapdS8?=
 =?us-ascii?Q?Bnpq2JNL9ud0svYmxfOJJwMTSnwy/AaCGN2oKcenMDNC8E5nUhrBq6M3No10?=
 =?us-ascii?Q?5IvsbQUJP3082DfCK4hGHFAddWX1vYiJo8KdW3pDDozUtT0WU5bPg8iwdwQJ?=
 =?us-ascii?Q?Hl5e7CjK1vP5udtYa3sFjNGlbPWhiyEq8wh88Td/qTq2ClnLexMJC5y+bCKK?=
 =?us-ascii?Q?xHGOMOT4jIFmla+kCgUkurFWvGw71TwEYzWxTZ3PUzWuvBfDE04i8ZFQHZam?=
 =?us-ascii?Q?zUlcpYKHmJ06pP5faAhXEILh7cNAywazSTOVzh4i659UEKQzmyztZoXMYewe?=
 =?us-ascii?Q?xxOwheWZ+xFcoAEzMPPJuYtDA8QT/xhrwVg/ndw7WcUWKFLjtt9Wp6+Cg5V1?=
 =?us-ascii?Q?ckd8HTS4/5R3Kw8DQQtPhelUSStqU1pF36H9E8Y1uUQEZmNrIKHBT2EG6epo?=
 =?us-ascii?Q?kM4z63n09lUTz4EWa+EC+x0q5lipDGYaYlhbmGnPOdPYXkEU9nbXCQ/PXM+c?=
 =?us-ascii?Q?I9sfdZnTakOf178WAz9AdaUX95ZxsdzR54qbrAF1QItJeWKa42Wriek5enc9?=
 =?us-ascii?Q?dhWOGRcILk3TXiEUuKu0DDtT1TXZk3jQtp0RrQDhQjCRoPaQAmhFkWUghbA4?=
 =?us-ascii?Q?t0fOe6Dlrgt19IH5uf7XeZp9kcNrdb2cmpfXZ7e5YMluWJh0a7jV8fGOiZDM?=
 =?us-ascii?Q?dKyI6Q9bWFlp3Uf4jhAE2+vWUhghgEarCPnNDehqzV3qC6fjIDK19jxw3qR7?=
 =?us-ascii?Q?NPEXG+gkr17BqfvVXnKWlr4ZQoZX1eoXFUIIfkRV7s5b9aZHRI125hA3Qrjr?=
 =?us-ascii?Q?jFu0C4YuE6ao/qOoPMlqL1kENTSIXMV4W7vK0P1T7zKs6dEgQ4jfAF3YEQ1E?=
 =?us-ascii?Q?bsXn4ng7XOsDoBe/aV6eFmHJYLsb2AA6CHtdW4zYGNnR7nNtZXT1256ivFNI?=
 =?us-ascii?Q?rYlaM8uticViLPdM8OvuDbnVjTiYXLcB8FahQ9PQio32Cz06kwvn+UINReCs?=
 =?us-ascii?Q?xT5MStkzkUEuIHqVPF5LIYTtb16uP7Wfz4NbGJe8Gc1TI2LkIOCI1eV4zgd3?=
 =?us-ascii?Q?Y1Ap36gYQwrSqAdMf0XXKaD61rv3j8k+eOS7MgYm2kcgxRywGu3ohuwuCUbI?=
 =?us-ascii?Q?aQDjLWtpSKEmrvRda5nREwpTTv7ABtPi8q1tWt3I2Caszioxfm5ZYKWN8pby?=
 =?us-ascii?Q?aSujxMxWKEOVZ0IGyJnBpgCpD5VfhbJ8V/IidnzvfoQhbDacdSk5rc5O6hIJ?=
 =?us-ascii?Q?g/LTC0MRSGHFhw7g1xxbZs1NYLMwcn/GqPCIHSRCb6/XpsRuxelavbNB7iZ6?=
 =?us-ascii?Q?iP6FmYSOIcaThtfyUQBQ0zgdyN7du/QQfsJDRviH9jKpaTuPZm6V8+/N+QCj?=
 =?us-ascii?Q?WKhraEjTuOqjiol71gbS2BcI4XKe+r1/Avjd4XxYeWTto2Qxyh/DrwpYM4sT?=
 =?us-ascii?Q?Ng=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c955c0cf-c25b-4dd2-eb57-08db1b4982b2
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2023 18:11:15.1288 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LQME+Nj4B392Hcy5fIOItj848BIN5LeQU89UF/J69aILBexNN5ACqB12nl7jp+NAjr8FJIbPah1Y/ZYYwF1k+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6186
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/pm: drop intel_pm_setup()
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

On Wed, Mar 01, 2023 at 03:54:16PM +0200, Jani Nikula wrote:
> All the init in intel_pm_setup() is related to runtime pm. Move them to
> intel_runtime_pm_init_early(), and remove intel_pm_setup().
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_driver.c      | 1 -
>  drivers/gpu/drm/i915/intel_pm.c         | 6 ------
>  drivers/gpu/drm/i915/intel_pm.h         | 1 -
>  drivers/gpu/drm/i915/intel_runtime_pm.c | 2 ++
>  4 files changed, 2 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 8bc76dede332..171ff4edabd6 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -250,7 +250,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
>  	/* This must be called before any calls to HAS_PCH_* */
>  	intel_detect_pch(dev_priv);
>  
> -	intel_pm_setup(dev_priv);
>  	intel_irq_init(dev_priv);
>  	intel_init_display_hooks(dev_priv);
>  	intel_init_clock_gating_hooks(dev_priv);
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index ddf004e5bb4b..8b02af531e82 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -899,9 +899,3 @@ void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
>  		dev_priv->clock_gating_funcs = &nop_clock_gating_funcs;
>  	}
>  }
> -
> -void intel_pm_setup(struct drm_i915_private *dev_priv)
> -{
> -	dev_priv->runtime_pm.suspended = false;
> -	atomic_set(&dev_priv->runtime_pm.wakeref_count, 0);
> -}
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
> index eab60df0c6bb..1dd464d2d186 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -15,6 +15,5 @@ struct intel_plane_state;
>  void intel_init_clock_gating(struct drm_i915_private *dev_priv);
>  void intel_suspend_hw(struct drm_i915_private *dev_priv);
>  void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv);
> -void intel_pm_setup(struct drm_i915_private *dev_priv);
>  
>  #endif /* __INTEL_PM_H__ */
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
> index 129746713d07..cf5122299b6b 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -652,6 +652,8 @@ void intel_runtime_pm_init_early(struct intel_runtime_pm *rpm)
>  
>  	rpm->kdev = kdev;
>  	rpm->available = HAS_RUNTIME_PM(i915);
> +	rpm->suspended = false;
> +	atomic_set(&rpm->wakeref_count, 0);
>  
>  	init_intel_runtime_pm_wakeref(rpm);
>  	INIT_LIST_HEAD(&rpm->lmem_userfault_list);
> -- 
> 2.39.1
> 
