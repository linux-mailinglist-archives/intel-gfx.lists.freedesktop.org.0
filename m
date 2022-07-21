Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 680F257D51A
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jul 2022 22:49:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1C138E663;
	Thu, 21 Jul 2022 20:49:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CF028E6C7
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jul 2022 20:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658436591; x=1689972591;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=F6J6MJ2kcfXTzUKfWFYlb0i+SQVNFlPTiPW70r4FUok=;
 b=TsjMsQDjtZg7qN0vhd3NQv2MDPZkZ9OePaMDKwvPS2eTzm7Uf1zuvhFf
 PYwW7oslnrPvw9p1/adiDwjQr+v9mohcMGt0j5lznlwnLanjKIOwa6waR
 hkAgdMdpQJSztMlIMzMQH/KSMi19m4FEB9/J0w0ISQrBSScq/JZbM5IzO
 fJj/WCEg/YaYbK0AirZXNi+yHT3d0tUmUh0Q/OKi7IL+5T6EsVuoiA86J
 /b4hQthMErqE8WDgN9T0LlnVBNv5yGVE4PAOVVm/EsQuD1SUGdLeywhsU
 5jCXErZybg2VGeT8Tltbjy81TYLGzUConDjBZHXwuY9z4ZELUfUkfSiPo Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10415"; a="312888003"
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="312888003"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 13:49:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,183,1654585200"; d="scan'208";a="598614785"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 21 Jul 2022 13:49:50 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 21 Jul 2022 13:49:50 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 21 Jul 2022 13:49:49 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 21 Jul 2022 13:49:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 21 Jul 2022 13:49:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YwIXBC/NN92EuDZmwCKtJNuUMfwWTAnXxy6xm9N9OUrhkuurmiu02Sy8BVoPtiGc7+qVhChpubSZ/ebqghWzk/PyHf0AaZkXSEPmwMtv9E2GFBjh1jsMFOWJezaKz7dFPOxK/Bqg0viKx63zZ98lQqOO1dbgUGOMb8pwQampA4TM5evioGiV5FzfAczcVpvprKy5v1i2aX8SrEHCZDNm6Z/lHCyvvUzpqiP3d+9dFkwXEYjz/fgmuPw3fVCMeNt0NtGGEdh5B/7QTSs0AneHs8GNP403eVfqakoMeBSdDVJofH/imIPqUYubvXzOahFTP/DGobof5KnLGS/vmkQAAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8Z092qKvYRcgcQg5Jy2swtl57smxMBo2eHtHuyCVazo=;
 b=BKa5N7Gtoe31xKC9cPJrGpmw2BLedt/w5dXE6Xpp0veZyvjs7oLew/E52BvNe9lD3Zu/SxQTdgc+t4g4JHlPBA3Bo7+tjRK/1/177GcEsQuIPCm5uHdKYl57xhS6ht3O+xI1h3Yo2lcJTI1Rqs0CQ26w2DY5KMx2hVLTjOV2nEryjv4IchM9J7SLt3HdwOxFXGjFFsBJpF9FRsawh5zl/sOKONTFPYVcieczODdBW76yuhUbsz/JsB516EGWQZu/rwukaHtaLEIJo+F+CGI8sJE7XVzFOoEouh9h7hjeAT62GdBu6eWHWiWxiAWk3EzbNewPH2W3S5yv7NSffYmqxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by BN8PR11MB3732.namprd11.prod.outlook.com (2603:10b6:408:83::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Thu, 21 Jul
 2022 20:49:46 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::e0d3:7148:17c7:86d0]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::e0d3:7148:17c7:86d0%6]) with mapi id 15.20.5438.023; Thu, 21 Jul 2022
 20:49:46 +0000
Date: Thu, 21 Jul 2022 13:49:43 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <Ytm750lt72OSCuKt@mdroper-desk1.amr.corp.intel.com>
References: <20220721201754.534870-1-anusha.srivatsa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220721201754.534870-1-anusha.srivatsa@intel.com>
X-ClientProxiedBy: SJ0PR13CA0015.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::20) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 43fdd25e-2040-4315-3218-08da6b5a8bb3
X-MS-TrafficTypeDiagnostic: BN8PR11MB3732:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6wYFakhJc0zI7LIW8bYHBBtGluwrMujfsf+zI8RyXpuC8cX6JnuNcxW3zjh4OKLk50gc6uSFHnqOv6XHgx63gdjHlaWq4U+hcRiTIjXE5MWHlgzTGAF1LcWXEw+OFfOP+Ivcii6tHwAtp7967IhuyxXV92UDkUFhJzgbBcrOZlrVqSo3dEkEH77+FfaFKOXk3x+LjoqaX3RTJZhA4inGIK8TfsP9AbCexSksDAqtJouVy0sMgvdy0VWP4W1Nl8h+MJ7qgFHnD6uHzBfoLGoseMqiXuMuDP8ErpSdWEyW1MxotCnb+O0YNwZyr1JDbGkMZCFH+FPdnjxUqKzthTLdjzK7hByclSlTQZWnQNofwyaibnALHXeao7FQSTO9VwOChzDqlNNI/eRZTu34BaHjL3qc6Ds0TSPgTQ1GsTfLEeWZfAOr+bImXPrg3Qda84Lu/QHyLIB02bNldySxwh1pzusDwrmylWeySEdSt6Hcu1s6uIc547pesIiq4IB8/KPqrFMO7XxcJ32XvQ9cz+vvgFZnmPrNb6WlBoudxQMrbzPn0XI0O3sxN1+KltIM2APIzp5NYr+/YWOM4OOASC0ns/2C/fD1mL6p3TNrMS+wE5eBd/EhW7iwtZFGg97dTRLM5dVvZxH4Z+alNigGiX/QIl4MIdK2gZTXRIKCY1/eoud+nHrwkcwC8/aIIWNwrwOzA1ylTEkOz/xehsgALkautJJf8Ka/zlFsNcwQQOzcCP4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(136003)(39860400002)(376002)(366004)(346002)(86362001)(82960400001)(26005)(8936002)(6862004)(107886003)(186003)(83380400001)(38100700002)(6512007)(6666004)(6486002)(6636002)(478600001)(41300700001)(6506007)(66476007)(66556008)(66946007)(5660300002)(4326008)(8676002)(2906002)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0KlH5tJZ4HfXa8HqiiU8OsLZCAB+nyJGB5lPfufmERFLIn8ga6ZppfQG997n?=
 =?us-ascii?Q?4PiP/vqR1jx8XKOStM8UYSAaOL12RbB9H7h+nWZBJWXqzoWjjK265dVu47OQ?=
 =?us-ascii?Q?P6dFU3Q+mR8Bp+T52kFj8KHiyNoRDRy/QCS/xCOtRmTYssCSnXzxpy3qe1fe?=
 =?us-ascii?Q?rJlBcKcA3mlj6emLK7dBZDPvlN+RYzYzs3t5/nVBwXI1petXc803rQMh7xjR?=
 =?us-ascii?Q?9OtmLEcqizRxYLVM/OGrm3/5NGS/2OCIW+wgcl6jQfsu7HUHCpu64yc3oFDi?=
 =?us-ascii?Q?olz28JOV6G2DbE4r8aCdmk7juOxUWEkbVodkRci3Nr85FbNmFjRvPA4yMK1M?=
 =?us-ascii?Q?z2B6F/4aYgGyqqyZituuXZ6HlFU7jKNGAb08wQ6MLfwE59EPO4q1k3Vb7YQ0?=
 =?us-ascii?Q?Zj9iDfkmLlyY7hw3r5nceM9tCuDvl5uYgEkhV0uxiqK/hEVDz7TgUrjYL2ky?=
 =?us-ascii?Q?KdcwU1vWNYLdOnbaWjmpPZc5tEmOu+cLkt1FhkbcP5cSDXbTQk3S+cAevngF?=
 =?us-ascii?Q?+bXS/uaLG947d7jxGW89UAQVLS89sJyN2kakfr0NsKCmMdNi5aKPeR5a7EVJ?=
 =?us-ascii?Q?J1A37FrqpTTeIyFObG4UJGGkZCCrjjldctv/sqr8FGV31Dii3c27/QrcjmAc?=
 =?us-ascii?Q?tHMoH+Krhwm3BTTSxtlXsL1EfI3BKxzINBvO/dtA3ANvTIbJYDXgopUwinkB?=
 =?us-ascii?Q?/AYCebFnNOqDGUdd9GOr63gGPMKkkbHzMwGP2s42H3k18UEWwmw7gzlQNLdp?=
 =?us-ascii?Q?8eTld+xdOXLvZwKzF6LwJJMZsSFAIsq/JQPG34L6E4TxjmbGwaPFiypy1vPO?=
 =?us-ascii?Q?gxKy6LPTZ3h5EWYS1/HJAiKJMaBuVFdOb9TLNO3OogMvgbxwv2I7obTQiVpE?=
 =?us-ascii?Q?WVOz2Qh229CWbtoU0TQpukcmI2NuIjZOVNYzJpQMvPzaqJSi31NOI/PCBT/S?=
 =?us-ascii?Q?ecr1ExEqoDSFZthq5FR3qwXoUwp3mXGowwE4jnEVDLzNNkKXWwebeW3gvST1?=
 =?us-ascii?Q?HLlxwC6wKTsppu78AAqgKPKIUwdDcevOkAVf3IsSV+dKz63f09sug+5CWJyh?=
 =?us-ascii?Q?J3P7L2/Zu4Hov1Etca6raWwpxbw/CVpXrh+z3dfmV8EYWVDuN8ttZ0p/A+Wm?=
 =?us-ascii?Q?lAFlnuTFx9MmMZUMXUEs3wjH1K1a1DPQpfyMZlrTSdnjlG5p9ZFnAQu3fzsR?=
 =?us-ascii?Q?5LiHmfNObIOr/6nLgRecIieaT5LHIeJK3klYQKUNq7ff/DPLVWuOAvB9NhS7?=
 =?us-ascii?Q?UsboVW0qFZ0q0ReGiI1gfW52A+jc6wBoHylyxFkLxwo5FcglRJ2wgP0gdcyD?=
 =?us-ascii?Q?UzyAVtdHLQ67MN/i3D0IOB86cQRUgR4bQ67MTYf6AQv7Z15hQsGpqlJp7sUJ?=
 =?us-ascii?Q?mnHYmIKAWdz9mxMfJRKhXILWt2ySNj2NPvmhC2+FEO/YbTxlJ5fLomftbmrz?=
 =?us-ascii?Q?cw6Qkt2ca+3qQc1ImM3pMrSCvl7+o571lcayDWOUCoQHkwGwyAErZc1nka8V?=
 =?us-ascii?Q?AgY/a2ydMfyF0AfHKwkUie+iolaNf3JTBif27WeruVpOm9eoc6lgzL4qvHAj?=
 =?us-ascii?Q?z1JRQgnwfvGFeCGJM7wd76kH2iJnC1pGtgoXALytaRpPN9eDoxM334rSJz8Y?=
 =?us-ascii?Q?qQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 43fdd25e-2040-4315-3218-08da6b5a8bb3
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2022 20:49:46.3070 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I84UOKXULHZejwsSOCApZdE9EWolwE1qqZGSMKnq/CXWveGRx8DNELDXZ+iwCipwxsCrL+QmHA6vGaWdkN9Z42FfwqCtQ/o/9YhR+Lid2VY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3732
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Cleanup
 intel_phy_is_combo()
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

On Thu, Jul 21, 2022 at 01:17:54PM -0700, Anusha Srivatsa wrote:
> No functional change. Cleanup the intel_phy_is_combo

But there actually is a functional change here --- display version 14
will now (properly) fall through to the 'else' branch instead of being
picked up by the 11/12/adl branch.  I believe that was your original
motivation for this patch, so you may want to mention that in the commit
message (and drop the "no functional change" statement).

The code change itself looks fine to me since it seems like the
traditional combo PHYs may be a thing of the past and we don't want to
keep assuming future platforms will have any.


Matt

> to accommodate for cases where combo phy is not available.
> 
> v2: retain comment that explains DG2 returning false from
> intel_phy_is_combo() (Arun)
> 
> Cc: Arun R Murthy <arun.r.murthy@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a0f84cbe974f..b9d0be7753a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2082,22 +2082,20 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
>  {
>  	if (phy == PHY_NONE)
>  		return false;
> -	else if (IS_DG2(dev_priv))
> -		/*
> -		 * DG2 outputs labelled as "combo PHY" in the bspec use
> -		 * SNPS PHYs with completely different programming,
> -		 * hence we always return false here.
> -		 */
> -		return false;
>  	else if (IS_ALDERLAKE_S(dev_priv))
>  		return phy <= PHY_E;
>  	else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
>  		return phy <= PHY_D;
>  	else if (IS_JSL_EHL(dev_priv))
>  		return phy <= PHY_C;
> -	else if (DISPLAY_VER(dev_priv) >= 11)
> +	else if (IS_ALDERLAKE_P(dev_priv) || IS_DISPLAY_VER(dev_priv, 11, 12))
>  		return phy <= PHY_B;
>  	else
> +		/*
> +		 * DG2 outputs labelled as "combo PHY" in the bspec use
> +		 * SNPS PHYs with completely different programming,
> +		 * hence we always return false here.
> +		 */
>  		return false;
>  }
>  
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
