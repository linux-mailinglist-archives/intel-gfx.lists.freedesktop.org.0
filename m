Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE70675294
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 11:34:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A9D510E0EA;
	Fri, 20 Jan 2023 10:34:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D428810E0EA
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 10:34:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674210869; x=1705746869;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bZn1JoZiagbrvC6Z1gXbkuDFq4aF673QrijoaK872Ok=;
 b=nphP2R4bPtEd31+MTN5YCAInYZxjChXWUULkBbBYB/J8KFKDcrRPFv1/
 kT7E+4vytyCmvZ651RnVQmHWogEXKclVbm0XQy42wp8yxlqDPpgq1O9E1
 Q5/4TjS2o6INCniXT2cGsFkK5cs5NYpCJbhPai9SrML5Rzkcarh/y3Fhf
 QKzGcEMQqDyFnwnJD97xkeuJXpf1JhIfYZiEm5R5m02GGIEh7CSq70SIz
 QY8nZ9tOka4i4bNlYXSR6Ev2pM1tPFOFhmjEjc6DZ07ZRHF27PgQjcF22
 Jvqs8BbTaVMXedq1Rl7Ii/qRLfb0j7kx9p435uQlU3yZMHOj+1e3Ieh+Q w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="323241132"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="323241132"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 02:34:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="660545932"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="660545932"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 20 Jan 2023 02:34:29 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 02:34:28 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 20 Jan 2023 02:34:28 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 20 Jan 2023 02:34:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rd3uCREC1mSgcnXKcy11L8SCwLgHLLVW7UQRZS8hEJJJwq/kxuuux0lb7Yry1nqp9H5LCoxjKRYVDeeWt5dKegw+fhbqE6AU+8OFLmZSQKQ+T8XzsMIZW+VvBH0FeLFMIywR0w29YmSiL9xcNx/D6SkkRWkigqSWBvByhBBmTSQ7B9OJkzYGMPlakbp8rUz3PhoSShjLSVg3jMnm2/Wp2u7obLghkfvAmwULUZpCQxNajbh+5rU/7xtKZjhpMz60vgHCv4AiWezukkDF2tD3PHffiHOSnurznPj9W5EHTdrecPBlPj52Zp4S41YqR3jDdeViKH2lAfhjltX9cum+5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tbBO5oQoLY+0DAum+scve94u6aUmUc582XJKHbWmDIk=;
 b=MsyXYhwYwhtH8ECY1WkOtb5xF9jZRMT1B9jwmolQwnji5VPXSK1s2lkfQGMUCLIX/GlOq51hwmTWXzBmKu3vuTYr8TeiFrIZFJxh81VixB0OSCkAdJ78hIGtK9IiVJjoFmwoWNPoOPFPDZozkSsRvufwGausW/voWjUx16o96eevyFL3kZAo05R6HsVI9mtwzhzajjZzrST/zbBmwE2rvRJ13jsPpEz28EkRGPDVUewIqEkfCp3C8Q+PxJLIJz3Ej2iNsWBhhbAx8D6waoDCqDPrCvsnxdEynBlfS4qrFxnxMZlfD53Cz3GOOJjK+8/GIRS2Iebz2GRg4XIJsIu5rA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BN9PR11MB5531.namprd11.prod.outlook.com (2603:10b6:408:104::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.27; Fri, 20 Jan
 2023 10:34:26 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6002.025; Fri, 20 Jan 2023
 10:34:26 +0000
Date: Fri, 20 Jan 2023 05:34:22 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y8puLgefj+ZWKeAk@intel.com>
References: <20230118131538.3558599-1-jani.nikula@intel.com>
 <20230118131538.3558599-3-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230118131538.3558599-3-jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR20CA0031.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::44) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BN9PR11MB5531:EE_
X-MS-Office365-Filtering-Correlation-Id: f0b8b361-1b0f-4f19-81bc-08dafad1e751
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aUy6D2pTEsg/gbpmws5gegrcFoc85NGUfcLOq/BEKaA7fJ40ZsNUS20V6eJt2SFvsTRz3lXx3gWPFTvD6km5EgntQBqE7c++eKZxqjSCkhtdmfn2iqCu7ylgL177eDoj2WBNsMnWawc9WaVmbSkaraJKtb44bQOzFR7Aoneoh3j5//zvEvzN+HRbdfgpzQZM2/SGWqX0OWubK0lZVZwlS1slFXboyGFnvY2XBArkbekq1BO96XMs6VM+5EsH+7/VDb2vgJpcIPBAy0ahph0cDPb8QRWxZviPYzmU33ZTloynezuAAHswUu3Y9NsT6aIe98w7xZVwmqiP6qOVDgFZX92HlMH7vZ18NujaELPqEuchaW9FrNuxcpDyn/BAjMoTlU/mi7rREc4kOhy6WJ/I7cJB0nZcPTsZhzN+EOE9CwsVCVzNWlwx2Mt+ZczZUijR8tWtZHUK7RJjoyyC3ONQj3bHSajP4uKSZ6oNR37lM+nCpu05cRmUkddmugxdEETzgt0a0pumPm5o1J3nmPxCaIh+qrRre7im9+pvwhmiXzkVJW+s9htmjTvMqcWoM+DhfiKcCaTcxgw+sbKzuT0TsPEHbckaqJPQe0+ZQ3v3ElKuAhNmYdL9cPusU12haKF62wFDXKWJtnTIKxy/ycZoPSyC3uAEkkBlXONrMrGB4YLRLefnEdsM2dR8AbKNKDyP
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(376002)(366004)(136003)(346002)(451199015)(186003)(6512007)(26005)(2906002)(6506007)(37006003)(316002)(6636002)(2616005)(6486002)(478600001)(36756003)(6666004)(38100700002)(86362001)(82960400001)(83380400001)(41300700001)(4326008)(4744005)(6862004)(44832011)(5660300002)(8936002)(66946007)(66556008)(66476007)(8676002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2rcgfuGtkz8CY+uosetp5r1u5MRxvBJglXuU6nC1OCwxMaFthteeB8aJETpv?=
 =?us-ascii?Q?gxiVtimyP6F84BLZfOVEoc979lrf1W5quVjhmONNOGNi7631VbzIHOQq+8H9?=
 =?us-ascii?Q?1w5oJojZznzrxyx7iydna4Y+Ed8wMxmxOuhgd2XjjLzNukpYbBYa0WtRxw3k?=
 =?us-ascii?Q?y2vpYZnsdM5HQhaZBUGpNr9NIfsVmGQEQpL9VnxQbzpgCEvcXY5q2kaixeER?=
 =?us-ascii?Q?vPZ4Tzzdjbzh/PjSTyeM8ceCZE/PRMRtihfhpH4SML/T3jr+BCjPXaTjnlwu?=
 =?us-ascii?Q?O/j2/NDd/Kqy+uElE0u3UhDwutA9k/Tvch096WQnrGWpjHodlN8ARhLeExvk?=
 =?us-ascii?Q?7p3XeP7WnyGb4L052637F9bwNJTd2rguvHTM98dOSh5zD2bAeKO6dzq/7LRw?=
 =?us-ascii?Q?R9ZjcaxvG6fdKSyDgIPd8DWpfcQYLhNvDQZFRPYW5ihL27rllqDCAL78dRvU?=
 =?us-ascii?Q?WUsRlreEO2yuCy+ekI060mZX8mwrE2w43A+iRSg9z6memg9Sg7kxCeJkJ+t4?=
 =?us-ascii?Q?+H9i3icu8MkD0q7feIgLTpz1wsaRugBcZhqptvwCpVvdwoq03xKgr8rTkf9s?=
 =?us-ascii?Q?1RwHSNvwnaRT4J7OGdCdC2L3Bsl6aLLxp4kJPOdAuUN7r3I7p4YE75fHc5NJ?=
 =?us-ascii?Q?sVHe4RvGyIpCJdgMYJFKwFWfRm4ReUuJPVZ9piYNH/+5uXQAbh7piXUGCEv2?=
 =?us-ascii?Q?7NOwK6VHDV5XP8EWaizkXjVBKz8h2LTNR05gGNxJ3LlJaxV7rN6yaHjddZsK?=
 =?us-ascii?Q?ZfYKV9haCVaLQu1HTKZ5aBxuE68aUe+CYPWaiI28ZadVrn/ObIzKZCpYv5LN?=
 =?us-ascii?Q?bttnFP85sAhzcDI06rnpoHAgdjz8s9bYo3Ez3zZixPJTflMe9E0g1+iVt8uF?=
 =?us-ascii?Q?Ud8sS9e4/Z0v+3+zsZcuI3/Xe4XeSrxtkJykN0fIO0aC3+iIeAvcVySUIF04?=
 =?us-ascii?Q?mo3iSVj+9/rV6U+eAknLBgWsK3Jyv8tjFoA90DlXpoyDxiYVGyQL96JK8CjX?=
 =?us-ascii?Q?uw/mW9hQPvJFwmmmwg6LsLiPYkJgb7ek6TmpADNP35AGytx8ad0Sb/qr8e/7?=
 =?us-ascii?Q?mMejO0wt7hKX6iPp8M6Fz2WabM8w9/EiVFSXmzmwOUnejnMSIkk24v60f3l2?=
 =?us-ascii?Q?hKze6nKDFgbon3RoeaVhNNvF5dMDM7rCS+sRtQAzZ3P3b1+299SefjtdbnZl?=
 =?us-ascii?Q?LNd9S1DUse528K30Y6W3cB33OIxCkd1jE2VTWtiY+ZfABKuSPC7KmB6dY4/z?=
 =?us-ascii?Q?o62lfP3K4am2GEdS1VvONUP/ZoqfwVu62aRq0Nt2ojxCRQuciJXWxm5seHYO?=
 =?us-ascii?Q?+qfeFe9BMaC+IwhdiD2Nt02RBe9CUK9ZgbBfMBTsfH7PqBpxoQsQZrSAY0fp?=
 =?us-ascii?Q?6fG6QAHRlMSHxDXjnKkc+35NGOwSTSfAQrG/jEJKz7HSXjtmDA7SGXxBY2B1?=
 =?us-ascii?Q?TEmJh1/0oAc3/OE/xNYbbOUCmXY38dqGCBL1sHNUs3Gy83jsZuzYUdg1BvOh?=
 =?us-ascii?Q?mHqzXEmCEnS2Nr7vOAgn36ZoZgE6rm/WVxrCU4tAblAsbpGad3VzX3MnFkqG?=
 =?us-ascii?Q?1PsoyGDQRB7dn+JGRurE5XGy6kYQGvpTrqRROQJwwAL4P8J/TwA7K/yNI0Om?=
 =?us-ascii?Q?qg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f0b8b361-1b0f-4f19-81bc-08dafad1e751
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2023 10:34:26.5145 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XKEiAEXkko6AVZFoGM/tiq4ubm4sxAGrAT4vdnps78XkXBhpCgIqFxDCs/2F8lr/YQg11Y8Jin6me8u5rHpY4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5531
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: drop a number of unnecessary
 forward declarations
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

On Wed, Jan 18, 2023 at 03:15:34PM +0200, Jani Nikula wrote:
> Remove leftovers from earlier cleanups.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

no one better then the compiler to 'review' this, but

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.h | 7 -------
>  1 file changed, 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 343e3e568774..ad0c5fd0cc92 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -65,13 +65,6 @@
>  #include "intel_uncore.h"
>  
>  struct drm_i915_clock_gating_funcs;
> -struct drm_i915_gem_object;
> -struct drm_i915_private;
> -struct intel_connector;
> -struct intel_dp;
> -struct intel_encoder;
> -struct intel_limit;
> -struct intel_overlay_error_state;
>  struct vlv_s0ix_state;
>  struct intel_pxp;
>  
> -- 
> 2.34.1
> 
