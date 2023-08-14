Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79BCC77BDA4
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 18:10:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB9FD10E21A;
	Mon, 14 Aug 2023 16:10:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C07E510E21A
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 16:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692029422; x=1723565422;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=RPPT9u8CYiRrBFTBLfUnVpacw5NGDEhjr2D3RzA/o7Q=;
 b=XnzKq/5y416nGqEUEfEc6i7ntQROMtFVDXsII1SkVvRFy3BwD1p7kJpg
 S5dF9tCsI6H6LlNKn+7/XlGQ4GQSw0hp44NzAfSlXdNL9N4RKmc8hm+6L
 fJmw8d6FXlGFReNMyxdEW7+TNbjs63FujVBINQ0uUT5aT9CXNsYyF4Z18
 4gk7qz38rZmqdnURq3OIVEPFYWS0Tj3IBJIwlERPgzJXL+MMfMS87ggb4
 NrWP3b4TB5i+msqscAMzmotf3j9Qxo30yBO/ZAjjHT4Z+3ZW7WEOGafIN
 Uwha8NEo5TfNiQl4NtvAY7yvQwqMS2qxp+A+EifAPH3taQbJymoboewSj A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="369544348"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="369544348"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 09:03:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10802"; a="823498235"
X-IronPort-AV: E=Sophos;i="6.01,173,1684825200"; d="scan'208";a="823498235"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Aug 2023 09:03:31 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 14 Aug 2023 09:03:30 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 14 Aug 2023 09:03:30 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 14 Aug 2023 09:03:30 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 14 Aug 2023 09:03:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qqc/4Svy/FWGS6AisnXmN4ViHRd62PGWf2UfxAB3+k8oBy7h/80bVUW64+GlJYW6Dx+2tQIX/nrO8jE68ryWAzTyLQWknbZeaHHjA71+tfOpyy4cZP0u4p3GUceCtLcl9ORMjXs7pPbLctZQ7y0TZ+qXrrAZ1mNTUFnxmYliBTvkyudkN2FppGS1og7xhi6MlZ+rYV5cKJRLjEYbG1yltkVzlha1skudHpgivjX7MzDJ6EjNAiVgxhdqskyTp2ZgwhZNIe2b/2BTnFgCXMEyzFOYozs5J2z/oi+Pk3o1GoryE5s7AsJPJsYz1fgFnza6cECTc9R6mKT7qotRhh3ydA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fXv18p1g1PkzFec/XfvncU4qSQox5b6N/TD/l7Kv4Uk=;
 b=aFS71hoWcKNAHFXAfda2K+qEQ8DFvvGPEohkb3OIPRqh43c6lMjptCCTEXdPOPxnkiOkjERtR73j148kcYxqEInYGSZVHTPewjrifst3K5Vq4VKgd8TgJeff/eavKn6fHHcAzED1pyb1sH6TxggamKST3GdEuezc2Zs3t9L9X2Up7g8R2bIO2oyl00OyrhMCmR9weanbrHOX/EBQmMV9EY/bL1XvFUhokcPQLT6J8fw5wu8o9FGeNqhawtse3J8pXcUmtJC0DoGtPeOAnvV9aIqjvTf8lt9xSDh6jxTzMr0+sO3kqgZSKXszg1wxecXfPbfJKE+ebwlu6pLzoC+f+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB5504.namprd11.prod.outlook.com (2603:10b6:5:39d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.24; Mon, 14 Aug
 2023 16:03:27 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6678.022; Mon, 14 Aug 2023
 16:03:27 +0000
Date: Mon, 14 Aug 2023 12:03:23 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <ZNpQS0kVEslsVNg2@intel.com>
References: <20230814110418.1557979-1-anshuman.gupta@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230814110418.1557979-1-anshuman.gupta@intel.com>
X-ClientProxiedBy: SJ0PR13CA0174.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::29) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB5504:EE_
X-MS-Office365-Filtering-Correlation-Id: eaae4034-8721-4c88-7d41-08db9cdffed5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: h1oNLrLHulOiMLWK49OSgCVlthuvKsU7JjG7Kyv33TSwsitrtV4IjO3A8+WZtw3P+rGoNPhkwIccRqgkNU4rc9xBP6KYtqGJP29vMXmdGqP7YnNCFjs85LjrQOgRwCXvo25baVA8F2CjSGaOCltFE5c/uWKXeg2xZMI3MyGKAkeQiLLAhdSKUFCNE9AJ3dSX3emL4lrgWzS3ihTzHf9Q43QKCeRD7ISRcuUshSGtaLDd0pjTHLlF5SpnW2HJzZTLPdxgL85y1xpDepiqqiWd1gNxjsn0GnJpFSlggSUI3AJEvV82bAKHLhNOuEAvvXdntJqlO6/66m7AQCmNsREnniXpCNRiwls/6Brl2jsU6G2ss2BXaKY5GfMjEgPXtcr8WkKukUA0TGRYCjo+2dPEQVGzibCXZXCSi/jt3nWUEKgm/MOX+XxN6uJ6zA/LZ9NBU7CVBFHxUc3ynPNz7zPbpqIEGA7pR/QZqIq7xfKRiR9PZglRu/owHQhpiRHV3XaRZbCSjAsc85FIZg9uCbvZRx5cahzpTU8K+FY6uM0xPTx3CMIiCDsITjeMzsYbS9hDWV7Qp2LhvRjc6Vr3g5RhKfUdLsngLf8S2FzO2Bpbv8k67VUrPZflDEdP0mm6j5qI
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(346002)(39860400002)(396003)(376002)(136003)(451199021)(1800799006)(186006)(6666004)(966005)(6486002)(6506007)(478600001)(82960400001)(36756003)(86362001)(83380400001)(6512007)(26005)(107886003)(66946007)(2616005)(2906002)(38100700002)(6862004)(316002)(4326008)(37006003)(66556008)(66476007)(8676002)(44832011)(5660300002)(8936002)(6636002)(41300700001)(42413004)(32563001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Emx8iOQOmxUhP8sYaABTkfW62OWPBy51NTAXh7OcYKGt6cfgCZ6fPnYqaMrv?=
 =?us-ascii?Q?rpQo4lROayZ8Gaq3TMYE5/YzXjpv6kvKynjWkuyYc/rWit6XqmxN4veD6Zt4?=
 =?us-ascii?Q?r3KgSwmng4YuwBQ9OdhdAZk+ly7X4wQrN9qo6Y7SMaNVUFXDqJFYaDURkO2I?=
 =?us-ascii?Q?+SQmwT0towAnqpW7u69TwKUe68tOxaUwe1Nlp9s1xEF7790Ot6aHNEyEvL4n?=
 =?us-ascii?Q?ZMELIbPrzONq89szJEujbGYriOEgWEWmelTS2CcyrEtXFa3aYPnK8N0yCwDn?=
 =?us-ascii?Q?4Jy1V9OuGgc9z1TY2Wy0yGnMdY6xCWmG7Dir5IF9ExcJj9AJ+YbTwsTFX7kf?=
 =?us-ascii?Q?Yt9UGEpp2yLO4TLqiUGU4sF/6ImCDBx5KXPg4cVXQBxjWBhJjiHdbz3+utKD?=
 =?us-ascii?Q?X1W95LPC3TQdgscJyZjC+LmItAO9Q1gTSLx4SMnW/fjCB4XMlQKL+Lkw1sVh?=
 =?us-ascii?Q?zm/p4HdRynJa0+kuZ4F9Ez0D/DQptBxu6Zlpvb/qFQoChQiK5533djucrMgi?=
 =?us-ascii?Q?xBM4BBrLqwz+3XK8XLRtYMYn0bQIbydvf51ClOOxivIvj4IIMZ3HMBnLn7zf?=
 =?us-ascii?Q?L6XlMEeN1Owkz+tCI5xqd7m1j0It5cOoJL7QytJJJQvN0f7gU4BTceTD9AEg?=
 =?us-ascii?Q?12B5mEH8aZPky9GLhcAXVmoG5H2AHzjRn9SwDRjmSg9uTS2GyHU/74BLAyvF?=
 =?us-ascii?Q?UnizhFYVdZirHR0RamumTu6tgiF28xFkNmCke2XXI43X7UzA5ZdEidjYgTd9?=
 =?us-ascii?Q?zaLgrLa9otO5Q769L0F6epp74A//6kVml7p6B8YFbRGIzKvwfTM5PbrS+Tdu?=
 =?us-ascii?Q?B8SjKRQE2gWQ7PClh3CltWdq27PpSg4PKmHMPAaFa5U9ean7ElQSyaTRSjaU?=
 =?us-ascii?Q?X+gbAQ/lyRYfxv/2Wx5qLMftsAekyUaXuT6D5mtHN8EWE4FrL9eCcvLEGSiw?=
 =?us-ascii?Q?a2U7ntGjCGdO8AUiBPEPvgcZDaBXPtoBUDFfGJb++AHAfoqvKvcD3/+Eomgz?=
 =?us-ascii?Q?gGi7RLT18/r1AT0iZE9F5Dfjz8um1XmC+JKpu11tefRgig0Z6/PU7BLfHluL?=
 =?us-ascii?Q?qbDBs/fjL7iT+dZJ5VSOcBbnKQaVQocFYspMQZS5NS2qLQ1KAi07y1bqKOP9?=
 =?us-ascii?Q?n7OfTObPKsquV/04AaAN2WN0xe8CyczyWSd61cgbf2OkZ2M6MQguZusQ0Pbr?=
 =?us-ascii?Q?KDESOdALa0YXPsYT1ktP2YiPGOooxzhZlYfvnOGdlT8AINflWFJ+T3NWUB98?=
 =?us-ascii?Q?GhWgdA2Lxu3RmUfjMjeY2qPOtMKCK45PHGLCUumYKqedn5kHMjHGPaVUKaF+?=
 =?us-ascii?Q?zdeWrpw/j4n+JkeOeU40P0o98TsC6nY65bt9DsF0mCdOscP4G9yT6f2kQ4J3?=
 =?us-ascii?Q?ZfSf1d1yv2pD/xucDCltI/LIJD3dwNbTjKfoFaqdrgJIqR6ITfMIFpBZnkWR?=
 =?us-ascii?Q?8pYiJQhDzjskZtJfRP61N7EKuom+sA5tRr38BQCDW0gaEsdEOQUl9MMv2oXq?=
 =?us-ascii?Q?VEDo1g8RUgjQyhqKkyFzrD9UrP6nMZg1ZFhc2tmCBAEW3pGvPyrhKA6EjL9P?=
 =?us-ascii?Q?wJzc1ZlFHIFVSbgORyB9uwxMCQTCCQEKVrHskzpA?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eaae4034-8721-4c88-7d41-08db9cdffed5
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2023 16:03:27.2944 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CPIU5Bf62sPrzoeF+vp41BbUrlcw9DJ+8HykRo/k5pSXrQ3nizBwgOvMn8T0iFkhAoDC2h3pFnj2hTFyq9YFgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5504
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dgfx: Enable d3cold at s2idle
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

On Mon, Aug 14, 2023 at 04:34:18PM +0530, Anshuman Gupta wrote:
> System wide suspend already has support for lmem save/restore during
> suspend therefore enabling d3cold for s2idle and keepng it disable for
> runtime PM.(Refer below commit for d3cold runtime PM disable justification)
> 'commit 66eb93e71a7a ("drm/i915/dgfx: Keep PCI autosuspend control
> 'on' by default on all dGPU")'
> 
> It will reduce the DG2 Card power consumption to ~0 Watt
> for s2idle power KPI.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8755
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_driver.c | 33 ++++++++++++++++--------------
>  1 file changed, 18 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index b870c0df081a..ec4d26b3c17c 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -443,7 +443,6 @@ static int i915_pcode_init(struct drm_i915_private *i915)
>  static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>  {
>  	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
> -	struct pci_dev *root_pdev;
>  	int ret;
>  
>  	if (i915_inject_probe_failure(dev_priv))
> @@ -557,15 +556,6 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>  
>  	intel_bw_init_hw(dev_priv);
>  
> -	/*
> -	 * FIXME: Temporary hammer to avoid freezing the machine on our DGFX
> -	 * This should be totally removed when we handle the pci states properly
> -	 * on runtime PM and on s2idle cases.
> -	 */
> -	root_pdev = pcie_find_root_port(pdev);
> -	if (root_pdev)
> -		pci_d3cold_disable(root_pdev);
> -
>  	return 0;
>  
>  err_opregion:
> @@ -591,7 +581,6 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>  static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
>  {
>  	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
> -	struct pci_dev *root_pdev;
>  
>  	i915_perf_fini(dev_priv);
>  
> @@ -599,10 +588,6 @@ static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
>  
>  	if (pdev->msi_enabled)
>  		pci_disable_msi(pdev);
> -
> -	root_pdev = pcie_find_root_port(pdev);
> -	if (root_pdev)
> -		pci_d3cold_enable(root_pdev);
>  }
>  
>  /**
> @@ -1519,6 +1504,8 @@ static int intel_runtime_suspend(struct device *kdev)
>  {
>  	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
>  	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
> +	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
> +	struct pci_dev *root_pdev;
>  	struct intel_gt *gt;
>  	int ret, i;
>  
> @@ -1570,6 +1557,15 @@ static int intel_runtime_suspend(struct device *kdev)
>  		drm_err(&dev_priv->drm,
>  			"Unclaimed access detected prior to suspending\n");
>  
> +	/*
> +	 * FIXME: Temporary hammer to avoid freezing the machine on our DGFX
> +	 * This should be totally removed when we handle the pci states properly
> +	 * on runtime PM.
> +	 */
> +	root_pdev = pcie_find_root_port(pdev);
> +	if (root_pdev)
> +		pci_d3cold_disable(root_pdev);
> +
>  	rpm->suspended = true;
>  
>  	/*
> @@ -1608,6 +1604,8 @@ static int intel_runtime_resume(struct device *kdev)
>  {
>  	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
>  	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
> +	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
> +	struct pci_dev *root_pdev;
>  	struct intel_gt *gt;
>  	int ret, i;
>  
> @@ -1621,6 +1619,11 @@ static int intel_runtime_resume(struct device *kdev)
>  
>  	intel_opregion_notify_adapter(dev_priv, PCI_D0);
>  	rpm->suspended = false;
> +
> +	root_pdev = pcie_find_root_port(pdev);
> +	if (root_pdev)
> +		pci_d3cold_enable(root_pdev);
> +
>  	if (intel_uncore_unclaimed_mmio(&dev_priv->uncore))
>  		drm_dbg(&dev_priv->drm,
>  			"Unclaimed access during suspend, bios?\n");
> -- 
> 2.25.1
> 
