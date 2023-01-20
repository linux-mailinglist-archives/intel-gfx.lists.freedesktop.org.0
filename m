Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6756748A4
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 02:11:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A915510E9FB;
	Fri, 20 Jan 2023 01:11:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49FE610E9FA
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 01:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674177073; x=1705713073;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=QlUag7bhUMGFb/hvlJk0gkcgXo6zESGz68l8+GyoQcI=;
 b=X4nLXct/wtw2CJwAyoIZ8BHqydor5vRC7OcspwL90ORhaxf5F2rFi5gS
 cWcvsRoFU6Ge9V6d/tWWbx1nCJ3TM5yFqlUpz8/Ks3GGNyqhacRbBwb3L
 cUnWfd/GExw6lt4SRFqN0KQT60dMwfVg2PEchf61wGuAWCgF080oMgK1R
 YTwOdK5wybzDL3+t9M4ptcMisgV9gKkhguFa+ONyVjQgL70A7handQAKT
 AeYwhldQu3sdNxYlUkh0IAwxs9Wm3zCy2Ag8o9fOWFHo3iqqf5foT3A4N
 v8OAPhWuflulJ92cdoCiVFzFJYmilLhpJ2LAopVF/CyA5nFS5/OHxI8Hu g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="313370042"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="313370042"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 17:11:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="690877193"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="690877193"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 19 Jan 2023 17:11:12 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 17:11:12 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 19 Jan 2023 17:11:12 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 19 Jan 2023 17:11:12 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 19 Jan 2023 17:11:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bdtSJGKhkqeRyitMdj9I/+B/jevcSpWtoany0HMKkACTA5b6B2mPdX1ZD0516nVesNsbrvTjLOePtbe6o83tfcYhtgEtCSaCctGFRrnSeE2bxoLwzCS7iL575DfmsPven7i6pNYPu1OE/olL6cr9i+6MBz7e1PlSRIlyPGvVQvSPAPDmCCVr/RNdTrqqUZoRN0c4HZV7VUnjDihmSi7DLEnbqF9oiH1FBTYYO7nd9aSjNEUuNacuIejoRrNDaQ2SPldPXYoO0jxkZsBc4c/Us9d9xBuhN8gvjkqDFaiH4y9wdMuj9dPlFsTPZ8MtN8YfQHNUplaZxqhBmmygXHaVjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6eQ+7xDISfwU7Nl8OLrWofOIzhBAWhawYOB53dhqlE0=;
 b=SWsC1BmhCzl8N3O3yYEZzU3pnQjkoPV26mK1u4Jyxa/+enDt69kSmzxyOQT0xeEV23mi8E91N4jGuKZ1jY0rrjmc6ZHuL+uyxCw483R9ijsO10Wxzu4Qg9AMJge3HKqQuGDjXwJDmuA9J7fvtMcgwI2+PdsaNqB6YxtfS76dGpaW5eGOZjRRFKhbS6L8l1MLRCuB1kE1IrVgIkUSPU7YBpTOlvCTDhVnKSgUYWk31GVc4Mo9g0/rLh97PhxI3cCJ3BjyOfAgHic9kvNKYKOS7AX09L7H+CGPe7MlHN4fDPmo6D3iz/CgZB2m0LtZ+wVruQmPHerxKxePLw6eEIhVhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SN7PR11MB7043.namprd11.prod.outlook.com (2603:10b6:806:29a::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.23; Fri, 20 Jan 2023 01:11:10 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%9]) with mapi id 15.20.6002.024; Fri, 20 Jan 2023
 01:11:10 +0000
Date: Thu, 19 Jan 2023 17:11:06 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <Y8nqKih+JFLZmlar@mdroper-desk1.amr.corp.intel.com>
References: <20230111235531.3353815-1-radhakrishna.sripada@intel.com>
 <20230111235531.3353815-5-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230111235531.3353815-5-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0PR13CA0173.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::28) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SN7PR11MB7043:EE_
X-MS-Office365-Filtering-Correlation-Id: 6bea028d-db42-4e87-f163-08dafa8336d6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vQXQHl1UHekr7ApdqKahfX45VhjzuIZKWU1ZnqhJ4x2V8PwyYjfmbzU9n6eWJihN8gBpyPxuSakrhjDADmjO7B2adKij3eaNvlyk16mhLE47MbOl6Ll9W7HSjr9USpW9xGaVvVkaCil0nu36XgNS7GYgb9sHUI3+zKnZVYv7Oq+HDDhUjSbqW8tJl7Y35dtDbhU8qCePS9ozy8+nN3ettXqvS6Y1YEpnSEIReY6PEJzu+Mk7NcrI6yVFMQVJJrW30YCChQjCaIUIsQDNxBwSNwn1lQosc1YguGswNjm1GE9QrRq+hhkodKXn1d7rJ29y3GKs4eZcGCXx+xrpF8q3FxxCnoWLZB1wwom7zv+PGRYBL+ejGnO/vRIpuz4Bzqp5g30N7ZctkWPpsi/oS6BvvCkLxEuKuGRP/xLM3q4wjhghV90/XYz00kJM3vqQrNKqr38Mg+E/JwLJbhEqakxqn/Dy77o+o2orHAstSYNkmzPvDT0Uubp/KbwrhY1I3oFM7MoMnHrdTiox/BUTp/u2Lb32tuGpU5zfzY2L3ELtZtbej3XBDA9m8aDFpOryB9x6TPIKcb0+04r0nCY24hnWxTPECz7y5Yj37wg5p20uBW8VXtDtlIasxEEkdzoFQGNBUJF8Oc7bpD/VTLCnfSbxm9YI8xaCZQAjHopL44gROnF3w7DddYYNc/Rd29LxRzlB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(396003)(376002)(136003)(39860400002)(451199015)(38100700002)(82960400001)(186003)(6512007)(86362001)(26005)(6486002)(478600001)(2906002)(316002)(6636002)(41300700001)(8936002)(66946007)(5660300002)(6666004)(6506007)(66476007)(83380400001)(4326008)(8676002)(66556008)(6862004)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YBPqA36451vaGli2/tFM64dOTPXSWfoORd/sA92HM4bkPFpDyD3k2CCz6F0X?=
 =?us-ascii?Q?Wh0xbvdilHhopMCZId8WAfoPB2YSujBSaP5h2mjtgdUCUlaSifTAUqY1/GB5?=
 =?us-ascii?Q?U0qjTYdEoFOXzOji5DEs9HYWYY4dHezIxeMc5dlfI07jH0xWq7JNUxmVHLYl?=
 =?us-ascii?Q?/EBQOT02BW7vdI0GVkuwMkBP2BabQtGDa8CPz7jXsIxKsC/p+Bjx4flfmnX+?=
 =?us-ascii?Q?S5evN68M9ZqJ3Q2hKwr820y7U51KjljB6C4pZ1PYcQdtzqyoEbF9qZgi9JfC?=
 =?us-ascii?Q?gffP93acmAkEHGRVOl3X43hCrr3Al+8SHQQDpAGeurRQ5GLmWYe895KaGriA?=
 =?us-ascii?Q?WWklCY5vqkcVmS3TZjpa17NFEON6cq3HaQXf9Ed92KadxBXw2/Px2w8TL43R?=
 =?us-ascii?Q?qXuOWL18GHstYjugi5AQpo9/pbb/ds3+Vl/pX7D3PtKP3hEsDIRRSe8+r+DZ?=
 =?us-ascii?Q?urlYkhKj7iSDANUpPjY5w6dNaOJYCK9DxNMqsTQfy/HHtk+spg899lrEyPmW?=
 =?us-ascii?Q?RIFl2ADip+3W1djgMoKOmWKfOmHTGCHQKe0TFZkI6kMnkqGwJblfl6A4XTtv?=
 =?us-ascii?Q?TYnvfrFquU42I+Oq/kSJUE5rfDPpSHN/utVEbssbLJZ9qHnr0yGIhVfAxU5F?=
 =?us-ascii?Q?yuD1+hAbG/jGY5MOua6zAJF2RaHMgHOtMfh7Wb5/V1EV0wzxhfwD1UN4Xjc5?=
 =?us-ascii?Q?Ubcn7lh6NpMzJMsFokhIUxPRc6WDNP6nFL30OZD7JmUqFfoTx/TT5MQhKuWT?=
 =?us-ascii?Q?aI1x48k25YvalyBn6Q3GvsdMjr1nBX8Rif8kn7fJq0HF+dkb08KbhcxNlCzP?=
 =?us-ascii?Q?2oFp227B0WsRQXsyCjDSo6ytQPmD4OePC5Eb8lkA3qxiqnGFtYH9wWtUysEy?=
 =?us-ascii?Q?KpD0MkTUe81hwoemtmgzJZN1ziLppQ/CCJyZc7z4xAQC619hLHBu1xSwaazG?=
 =?us-ascii?Q?/37Wb2ygFgX/lYSoU6EBFZ8OMseNmDOV3Ds3TmAzL4F+y8gISwIwLcpVg3iV?=
 =?us-ascii?Q?42oqCXBWG1WcEgFvIr/ugxZIoaJ3gRzYjL70i3t+uzF11cbjVhi5RoX6pBku?=
 =?us-ascii?Q?gBubqnTf0e0N3IMjPugaogLvui9i0122TV6EiMNy6fjd2zy+BXVxlS8BuUIM?=
 =?us-ascii?Q?Gzl56fbf2mwjAX/y1JK4vjPXJm1g61QlnjM36FuFatVLtU+WTFa6rYFeUX9k?=
 =?us-ascii?Q?Mc28CBNb0KV/JB+yysLCcxSROq+FdQT83zrrAJ4IGqzLgWYSYwpDCXtRG2i/?=
 =?us-ascii?Q?XC909RQ5ckm1nH50FA+Q7gjGI5P0BTWZN2iWQBl4jxmlHCebptc80gixUb+m?=
 =?us-ascii?Q?4pQgfP/KDnEjemgb7eBKK5PAftf7mYnJr4lk2080WjPp9hO9PPP2GwSn9enU?=
 =?us-ascii?Q?Wiq3zkHE9NboFUx3LODKw3b/ANQ2Td4pnilxwyK/DjzxiUVVPCdR8lD0zZoU?=
 =?us-ascii?Q?F/dzXQAb63sJaHEqrZtktIqsXQt62mYpweaIwI+6Xfsi+wvjLq+9TrzDnVIL?=
 =?us-ascii?Q?u256w3AX1xG1sktWbI1nv01oX2bJbWn9GCZNgXA9TeLytodZF1lCBSwyHBBK?=
 =?us-ascii?Q?BXpfP4Ea5AqrjpIuDrzJbX6i+Jpoa/4KEpvHM3JRAB3eZft42D2KJchKvwMV?=
 =?us-ascii?Q?rw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bea028d-db42-4e87-f163-08dafa8336d6
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2023 01:11:09.5625 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hxlwfJ6J6ztdD5Xkpd8xkWvr3sqhk1BbyWeNQ2tb3/TK1JR0FQvrpbKJle+PcFKBoIiQiLANjco8yTlOpAiIS4cgYrv3S3gHLok3tV64rKE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7043
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH dii-client 4/9] drm/i915/mtl: make IRQ reset
 and postinstall multi-gt aware
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

On Wed, Jan 11, 2023 at 03:55:26PM -0800, Radhakrishna Sripada wrote:
> From: Paulo Zanoni <paulo.r.zanoni@intel.com>
> 
> Meteorlake has separate Media and render gt, it is necessary
> to process the interrupts for the gt separately. As part of it
> make sure IRQ reset and postinstall also work on Media gt.

This sounds like it was a patch intended for xehpsdv or pvc (i.e.,
platforms that have remote tiles), not mtl which has standalone media.
On MTL there's only a single interrupt flow shared by both GTs; the
interrupt registers are not in the GSI section and are not replicated
per-GT.

MTL interrupt support already landed in 51aec8bf1633 ("drm/i915/mtl:
Hook up interrupts for standalone media"); the commit message there
helps explain how things work.

If you apply this patch, it probably won't break anything since it's
basically just trying to process the same set of registers twice in a
row, but as far as I can see that doesn't provide any value and just
adds confusion.


Matt

> 
> Signed-off-by: Paulo Zanoni <paulo.r.zanoni@intel.com>
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 28 ++++++++++++++++++----------
>  1 file changed, 18 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 54ea28cf8a1a..26d176ec4a66 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -3170,14 +3170,19 @@ static void dg1_irq_reset(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_gt *gt = to_gt(dev_priv);
>  	struct intel_uncore *uncore = gt->uncore;
> +	unsigned int i;
>  
>  	dg1_master_intr_disable(dev_priv->uncore.regs);
>  
> -	gen11_gt_irq_reset(gt);
> -	gen11_display_irq_reset(dev_priv);
> +	for_each_gt(gt, dev_priv, i) {
> +		gen11_gt_irq_reset(gt);
>  
> -	GEN3_IRQ_RESET(uncore, GEN11_GU_MISC_);
> -	GEN3_IRQ_RESET(uncore, GEN8_PCU_);
> +		uncore = gt->uncore;
> +		GEN3_IRQ_RESET(uncore, GEN11_GU_MISC_);
> +		GEN3_IRQ_RESET(uncore, GEN8_PCU_);
> +	}
> +
> +	gen11_display_irq_reset(dev_priv);
>  }
>  
>  void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
> @@ -3837,13 +3842,16 @@ static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
>  
>  static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
>  {
> -	struct intel_gt *gt = to_gt(dev_priv);
> -	struct intel_uncore *uncore = gt->uncore;
>  	u32 gu_misc_masked = GEN11_GU_MISC_GSE;
> +	struct intel_gt *gt;
> +	unsigned int i;
>  
> -	gen11_gt_irq_postinstall(gt);
> +	for_each_gt(gt, dev_priv, i) {
> +		gen11_gt_irq_postinstall(gt);
>  
> -	GEN3_IRQ_INIT(uncore, GEN11_GU_MISC_, ~gu_misc_masked, gu_misc_masked);
> +		GEN3_IRQ_INIT(gt->uncore, GEN11_GU_MISC_, ~gu_misc_masked,
> +			      gu_misc_masked);
> +	}
>  
>  	if (HAS_DISPLAY(dev_priv)) {
>  		icp_irq_postinstall(dev_priv);
> @@ -3852,8 +3860,8 @@ static void dg1_irq_postinstall(struct drm_i915_private *dev_priv)
>  				   GEN11_DISPLAY_IRQ_ENABLE);
>  	}
>  
> -	dg1_master_intr_enable(uncore->regs);
> -	intel_uncore_posting_read(uncore, DG1_MSTR_TILE_INTR);
> +	dg1_master_intr_enable(to_gt(dev_priv)->uncore->regs);
> +	intel_uncore_posting_read(to_gt(dev_priv)->uncore, DG1_MSTR_TILE_INTR);
>  }
>  
>  static void cherryview_irq_postinstall(struct drm_i915_private *dev_priv)
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
