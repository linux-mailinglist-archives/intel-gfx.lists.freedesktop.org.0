Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 264856D4E9E
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 19:04:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 806D210E53A;
	Mon,  3 Apr 2023 17:04:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A788110E53D;
 Mon,  3 Apr 2023 17:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680541482; x=1712077482;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=B2ddO7joG83XJyg8YL5gzYqMcpH8COsCnUN16ESCk9I=;
 b=iTXFJjEhchzNweFcb+29NYjIyfpqW053CvsiWtTckPH6jdBo/4Evlyj6
 ps+0IuZQpx0773kNrF95Pg6RsP/JOfUeU4mQPNMcyVRbsAWo8EY0c4IDA
 wWM/g2aTYdFYLUXV7N+iXyV+diAMHoLeV9mjRG+rsV3MEoVvfZfoUvbAI
 fxPLqQcC/v1wCm4LpO4FN4bmq6cl7zou9FwgfiCy7MlvFV7ptv+9bMXnC
 yF1FiTu0j1wahe7qEJflBoVzDV5Tar+nGODNH5+qKjqFwrMGZmBTkGU4d
 N7uQcHa6QqiK3LNh1yqOm6mpksKYpXKprl6o5EcR5hGILN8M6aezA7yPZ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="343649387"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="343649387"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 10:03:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="686047929"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="686047929"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 03 Apr 2023 10:03:35 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 10:03:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 3 Apr 2023 10:03:34 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 3 Apr 2023 10:03:34 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 3 Apr 2023 10:03:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FMEK1nsDkxpXX8YnVgZ5GyVNtFRMgm2dajc6+dkoLi0wJQx1xM2+YMpzeh4qUaRFr/MToqTZn+HR2z1tEsXwK2PBKrqCwC+oQr5vqcRO/YALEvhw0JtVQ7ShyXXg10j9q11ERVgVH7L3aSjX+jDpFRlOeOOOS84Dfyo/QTn4ldqs5LCZgrt4WCSERe2vdnJDfRTnPudU8BdOvysHfwaoWNiqkSl+o3KCpdjHLu6QAxf+31G9SBKULopfXaRgw0zoeOZ1HLYpRIwzEtMD5DMbfllS4aUZc4hnlodDagbQ5P9V7wPXOlOuJ2cDZwUkpHHX9k90s81FOFwqw4R+T6lJDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m2FYen2bSiisEm0BWQSgSc6B045RviScMWJfNBXDBAE=;
 b=DWrvnkmpBqJG+lB2jQDEp6axvN4YEOdaXF2fmcB9n1R7frl0l0EqRNq37kRE/PpRQdW+tUde7//t4xUij8PVG8P79gAMv1ypCcEcMQPdfwhrnQk2Le2BHjFlYcbRcnl4UrDsa56I2hiwfle+Sl1aOUVZBUFnmJ/LDD+fLGNRP75d0gOGvCdpcSaxAXFAyGO6wvbaXr58zMnQNk9s+j23UpQCoJc4LlP8XOhDT54UEN3ursBoLn8a7b9GyJMKfR+juBwuIMMf1CF2SNpF+kyOBhcOzCe4o7hhwgbBtIkM0Ej26ufTSsTfasgBq3kQENvRD9FhHnijXH3aBh22cpPjCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB6043.namprd11.prod.outlook.com (2603:10b6:8:62::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6254.33; Mon, 3 Apr 2023 17:03:32 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18%9]) with mapi id 15.20.6254.033; Mon, 3 Apr 2023
 17:03:32 +0000
Date: Mon, 3 Apr 2023 13:03:27 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>, "Jani
 Nikula" <jani.nikula@intel.com>
Message-ID: <ZCsG32XI7XLljXGP@intel.com>
References: <20230403164615.131633-1-jose.souza@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230403164615.131633-1-jose.souza@intel.com>
X-ClientProxiedBy: SJ0PR13CA0032.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::7) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB6043:EE_
X-MS-Office365-Filtering-Correlation-Id: b284833b-f84e-4430-7b25-08db34655a40
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: K0v5K78VMdMWxXaIabgaZFgdaRDIYpFaaKw2IJ51f4yWrCTbc8ges+g2E3cbnsBeCmmmzuQbR1q3zSv521a+f+fRC0qbOyIT3J9ZQVwgzNqbIXorvG/m3Lxr1Qgu15Uf0jpkABaxYgL/z5u1h3MN3XUV+4FRLwSH9HUhlaBUuUEzpja/8OzesaRMi/5sJiYgGoZdno/X3qcM7ISj7IIer939oO7RtKoB20T6iqWDuv9Stc5An7L5uNbMbdwTw2MpNrFtz0CUUq+P6NUE3Qh+7DdR96OGHoMVjBihYgCZ7PTHe3rduC91IXYFmhkW8naPAK9Zx87/GrwjWMaRbvoMz5ESo9A0YDYhlGngYuUs+NOjQCh1TLo7MjV7Sh1+jTCHUUXdpgKIZ2L6C1V6RiDbQsGkE6mwoSFhIjde/Cr9ZJMDzCZUO5zUxAv5AluP4vIqTuHjvELtaxxjujdwaEViNSQQUeOp0kYkjxZ1WbLwu3SSq0LTcinD5auLlVzG7TRS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(346002)(136003)(366004)(39860400002)(451199021)(38100700002)(5660300002)(44832011)(6636002)(2616005)(83380400001)(110136005)(316002)(6486002)(966005)(478600001)(186003)(86362001)(6512007)(6506007)(26005)(6666004)(82960400001)(66476007)(41300700001)(450100002)(36756003)(4326008)(8676002)(66946007)(66556008)(8936002)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?qbfX5F0B3mc3yUy3zIpvhBkw1JkaRETDFW1msh6NCZymEzmqSZFb8d+3aC?=
 =?iso-8859-1?Q?5DTyAr7JS8Pr7Z6q0x6lxPs6s64A5vpHnbs22XwP3m2qYQv7RoENxYQ8eE?=
 =?iso-8859-1?Q?ce1K18bwSTH/l59Ma3zPDWnoYD2MSCSKeOn8aVzgbIBKUk+S6QFJ29Abcd?=
 =?iso-8859-1?Q?k8qMIXSP1yE0hQGGfJTDIRIsa0HwDckORUKR3mocH0fvuxTTTtYNVKap7g?=
 =?iso-8859-1?Q?JZPu8941K1fh0C6pp5qlpWkZX2lJKwxkODsRwxeBtjZzITcj4xFKjpFlDh?=
 =?iso-8859-1?Q?My3DWzPFewiJ9Yi0m0WrWEaG3JdIFyOsmqJ2tQR/jV+1jVO7kgr8ufthHk?=
 =?iso-8859-1?Q?LvXPTkV9O37jJy74uuY5wpW9SIYA8WCzzhH3hiqEBzZp/7gGJNKFFFWO47?=
 =?iso-8859-1?Q?fdpRPshM5+FOrcFzdyD8PZoepkXSo2nGppCKYetVI4y0IeD42tr/KIiNmg?=
 =?iso-8859-1?Q?LSuEoHdraNGJmPR70Om18kZ0kAE5IZGb308B6qJT/Bt9ZVHdJZBbTWvcm0?=
 =?iso-8859-1?Q?wSVuEDDZl3SgDomVDbbYIC/poVKaFqKwoZaCiYzJ7iJVmS7pD8KSfzs62c?=
 =?iso-8859-1?Q?VsKJVYN2YHLQKUOYufbGucbGEU72Fs4bFDW8u6/F6yRMiVbuJXJtcROyPw?=
 =?iso-8859-1?Q?QUR4xlNmrS29i6lEakqJ1vlBdrp0L7wtKmZoGizbdpGK4oqyXQPkJPI+eP?=
 =?iso-8859-1?Q?wl1NDjSF+zUT3TNNfVFFfP6dWfeY/aM+mqgeXkRLvVTcv8RId0spAfWG4v?=
 =?iso-8859-1?Q?0gUgNjWbPy/x351OoaKAW+1fs8wBNdyZP5JR1I/upGDoodgMTSSAD1cNXI?=
 =?iso-8859-1?Q?lNMHmWzE3ssx+vpe9fwtmASCQexCopTd9Wb+OGYzTee+aAFADEuZwMD61c?=
 =?iso-8859-1?Q?CfYklGzeuDZWVoGFHelJLnm5ySX6FmABZrRWKfmZ7NnYOHqihD7BJaAtcD?=
 =?iso-8859-1?Q?wwp/IG5jSC70Dc8WdTb9w7vzVfIhhKWl516mYP0EWv+IzNy7r2U1+JE9lq?=
 =?iso-8859-1?Q?w82jNlbHG1KTyiZFvbM1ZbnIq5VSfAlFyb1ZPUdXeF/LNErRdmVPk0BoW4?=
 =?iso-8859-1?Q?Zcx1GBz+BbWvAkNgLjntgTyVAENwFjhKQdi21IIrRXrt5tjDhCtTzzBvdx?=
 =?iso-8859-1?Q?OH5IQowp5srp+aDMXv2FFCXKDgLUICNP1MGK8fikDrYbmDpo9p55Mbi7au?=
 =?iso-8859-1?Q?mcuo3xTwpAdQEa3GSDgOMTHZ9Cve6TgPglre6McJ/FaJoEgrdNGPJqpW37?=
 =?iso-8859-1?Q?dp72b5+gbmTPU0puNxOAa1I0rkGiCkhjtqi65Zaqe7mmIiKuy4TTKkPC6b?=
 =?iso-8859-1?Q?90mftlf6RQRZ5lotw57JC4MXS9hg1/qKMm/r3aIqEw3D8Xp6+Ix02tgwas?=
 =?iso-8859-1?Q?B5g9/yuVYm1YeqFwlSFr2tDlA0X9amadBNjI+VjONRbeL5B7y2mll0DjBd?=
 =?iso-8859-1?Q?Jw9TFLJ6AHf3q1xizS3qUzPyld9Vaj0va2OsfRnffrLg8j7ZgfBqnHxzGx?=
 =?iso-8859-1?Q?kMYdnVna5fXawRRIGEGJIESygcH+JUnVWEHkl9JyRDRZgVVw0M8F/W1Rap?=
 =?iso-8859-1?Q?fS6TS0ZhgpFqEMEhmKvH2y/aYCbxyDrQApvAA7YJvpv21ZeSi6Yn8gJ4wC?=
 =?iso-8859-1?Q?cXpRmj4EDltNN9wzTvPN3pFCsdcAhJdZij?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b284833b-f84e-4430-7b25-08db34655a40
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2023 17:03:32.5051 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5Dvj91UuIDBMN/s3NUBMonARbbe/DPAR/asDaETeeWvST0Ui8XK5YPeTrSY25/8YZ/efd2Xd7PDB9j9ih2daLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6043
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 1/5] drm/i915: Split display
 locks init from i915_driver_early_probe()
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

On Mon, Apr 03, 2023 at 09:46:11AM -0700, José Roberto de Souza wrote:
> No behavior changes here, just adding a function to make clear
> what locks initialized here are display related or not.
> 
> Cc: intel-gfx@lists.freedesktop.org
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 23 +++++++++++++++--------
>  1 file changed, 15 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 066d79c2069c4..224cb4cb43335 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -188,6 +188,20 @@ static void sanitize_gpu(struct drm_i915_private *i915)
>  	}
>  }
>  
> +static void
> +i915_driver_display_early_probe(struct drm_i915_private *dev_priv)
> +{
> +	spin_lock_init(&dev_priv->display.fb_tracking.lock);
> +	spin_lock_init(&dev_priv->display.wm.dsparb_lock);
> +	mutex_init(&dev_priv->display.backlight.lock);
> +
> +	mutex_init(&dev_priv->display.audio.mutex);
> +	mutex_init(&dev_priv->display.wm.wm_mutex);
> +	mutex_init(&dev_priv->display.pps.mutex);
> +	mutex_init(&dev_priv->display.hdcp.comp_mutex);
> +	spin_lock_init(&dev_priv->display.dkl.phy_lock);
> +}
> +

hmmm... I like that, however Jani had indicated in another series [1]
that he would prefer the wm mutex inside the wm code for instance...

So, should we move all of these to their own components instead of this
move?

[1] https://patchwork.freedesktop.org/series/115675/

I checked and for a few components it is simple to move them to their
own init functions. However for a few we would need to create new init
functions and call them here.

Jani, more thoughts?

>  /**
>   * i915_driver_early_probe - setup state not requiring device access
>   * @dev_priv: device private
> @@ -213,18 +227,11 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
>  
>  	spin_lock_init(&dev_priv->irq_lock);
>  	spin_lock_init(&dev_priv->gpu_error.lock);
> -	spin_lock_init(&dev_priv->display.fb_tracking.lock);
> -	spin_lock_init(&dev_priv->display.wm.dsparb_lock);
> -	mutex_init(&dev_priv->display.backlight.lock);
>  
>  	mutex_init(&dev_priv->sb_lock);
>  	cpu_latency_qos_add_request(&dev_priv->sb_qos, PM_QOS_DEFAULT_VALUE);
>  
> -	mutex_init(&dev_priv->display.audio.mutex);
> -	mutex_init(&dev_priv->display.wm.wm_mutex);
> -	mutex_init(&dev_priv->display.pps.mutex);
> -	mutex_init(&dev_priv->display.hdcp.comp_mutex);
> -	spin_lock_init(&dev_priv->display.dkl.phy_lock);
> +	i915_driver_display_early_probe(dev_priv);
>  
>  	i915_memcpy_init_early(dev_priv);
>  	intel_runtime_pm_init_early(&dev_priv->runtime_pm);
> -- 
> 2.40.0
> 
