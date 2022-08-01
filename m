Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C736358736C
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Aug 2022 23:34:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4CD52A3B7;
	Mon,  1 Aug 2022 21:34:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ED7318BE9A
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Aug 2022 21:34:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659389644; x=1690925644;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=k68VvLwvVYQ6VV0s/87/ypxOtaOlWjnP+5AgzRBOeoA=;
 b=RKZDi5GNTfS08IfIDBhWEA3zStUS7QOydjLzN5gA/HiVYv2P8ITqnp83
 xMs1uKkMOZur1h2wEhIa9TrLmLtZv/bQg+a1T2u14LNmkQdIYBTrU5LC3
 TgV3iw2EqDQifbx/VDn8dCTvIBfG8KKq1B5oEuDjI0/8LHnairVo5oJwI
 q614K/Wr5uG1A8Icljhxl00fSvRxuCuVenjMb64+VvlG9mRvqZxjH1XfL
 P9bFm3JGOP2QcnPMvkgb6n47jKLGLWquJt5I29m6w6d3SmCpklZV5Qkgb
 h+VySJJCE4Vy7DJ/CfGmqVIw0zeA78yoT8jZrx9YCkSOjtLNOnkQKFJm4 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="290030770"
X-IronPort-AV: E=Sophos;i="5.93,209,1654585200"; d="scan'208";a="290030770"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2022 14:34:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,209,1654585200"; d="scan'208";a="602187043"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 01 Aug 2022 14:34:03 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 1 Aug 2022 14:34:03 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 1 Aug 2022 14:34:03 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 1 Aug 2022 14:34:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JBmpx1USKYRpjSIz0qkiJmNOsgEyfddBFfb+x+QX4ieg0I5bysuLG7yJGoVNcikvRyRfiYKpVEGBnvaNSEHe5WLirvoTY3iynty1GvvvhoTqa1LeKh6AbOhrNCUdmv7Zuv/ObFH4MuAtPOFs82RYO6SVQVtoqzgULi1vpHeVxrchKytXCZS+osg56kgHZeiv8eOPOGQyrEBT/h7+7yFpJMbVreVF/rsWzQIjTsDjDHiZmDtLLLIJPMFkP1fTxtm3AokrN6/BS+qGNW1OUh3ZSmp+AWCFLXkN4cwOcTf4Zszo6uPXCpXAcFR8plGWN5N+qo5YC82WFQB445ohj/qb/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ESLJsJwoXJz5K2/BJSCJHDolYjFZtiv5shmrCz9ckA=;
 b=Gu8bcAD8VWfvfWKW0e1sfsaJABnLY+hrAqPUhi29wvvf5fZSI5uHZCDZV0RbgZCSvnPzWSv7KnlrjaIQlyJMQ4/T8K3pxNcEdzampMxdvcr/6w5k0uE87mFd4dYzb+4GlSmj81SI5QQi9fdro1Z6BI0EOTlhqDCnjC718vTTZw9o65KmzKHEFqC3t0kZbRbSsVLsBsKCJ7Y5Bgwxp7oKiu4O6bpRcZCqwV3YvDk5kY5N2lqZS4Hrtzn9ILDkP3ImOfZJksvKfOy6gjukzt93lb75DnSCMSzRGatqfUWk20AM+PMwRo1JYH04e/s2z+Bnn58WNMITsIIse5PO796mOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by SJ0PR11MB5021.namprd11.prod.outlook.com (2603:10b6:a03:2dc::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Mon, 1 Aug
 2022 21:34:02 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68%10]) with mapi id 15.20.5482.012; Mon, 1 Aug 2022
 21:34:01 +0000
Date: Mon, 1 Aug 2022 14:33:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <YuhGxyVYrT7AwdLF@mdroper-desk1.amr.corp.intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
 <20220728013420.3750388-8-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220728013420.3750388-8-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0PR13CA0042.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::17) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 350d499e-fe2c-42cc-c6b7-08da74058d0f
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5021:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0WDDg6lcT4CSd3KqwoqS4NBWsHnBkYld+e0dN3b2ukInuzNYggxB4q0TY5AXYzW0DLiJCS2+b7iINJbW+UEkfIyt5IN1pwSgBLbU87U8Nbt48GZlUJoMrThr7mAN0fQQdPR4NGt4UheY8DvjeXzF6xwyvMFMNIM9717HauF9B7bojDzjzGSEov/C2iGrHMVARN1j2CV0xVxe32WGBtQUvPiHBGLRnoftxIIs4gOnIyjmVtaYxYWbZxYUhCaG0OFN9qobMhUNby9ajP+wPaMNNWggzeDVvnKCEQxpD1cyHXxDkFks2bb6G8EuRCaTub2a/n5XlI8v6rtp0geqNV6CwOuz8NNHmk7SEYa3qbNxu7s2B/uGfQStRbXgo1/b/KMY671QCnST4bBsR3+c0wj4hfKuYiRSGc2JWYLDIbOG3/0wOIgdu+cEJUmXG+KxH8lmmaLw9gCs6s/SrF18419GskXbNH3H8CAqXdWUIXfPdqfqKFKSjJi4iRpcHaVGqwnp3bJ1SaxSnXSoY+CfPE7NzuJEZt1MadHPacZJNT2KlWxA3ruRtlqGR+srN6J9BPrmJBx7Op2jO6w9l4qSJEFTrD4/wnc8pQeAyb+xdyhXwTkexBk+9fOqj7UEUiHLUR0DIYQf6llnloL2yAWNs6xk0WRYK5pg06oCf/WOwOyDBRkOxiiZfYLEgcCCr3KS+6uSd0S3l9bM6QsIrH6V2JW4D7/x3rrBp48Hjpld8e4Mj2cMTzjiYhyalhOOCmoEdooz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(39860400002)(376002)(396003)(366004)(346002)(6636002)(316002)(41300700001)(6506007)(6512007)(26005)(86362001)(66556008)(66476007)(66946007)(4326008)(8676002)(2906002)(38100700002)(186003)(478600001)(6486002)(5660300002)(6862004)(82960400001)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GxmaveakO+2fKkFbyx2JZQFoDfvxV/SO8rBhq6gty6+8QBtOSwvwxiJpfmXG?=
 =?us-ascii?Q?JIc3oWwhUBuemztaxKXABIPpJUdC0KB17y0KdHxVRDYbLyjiTVc+QfjjU+Yk?=
 =?us-ascii?Q?zqUX964vJhpqKihWdLoZASOk5nS+YL0N/1SBzfuROErBV1WiGnjgQ6cfESFV?=
 =?us-ascii?Q?VBdBIgrgvRDv9ByScwiQxtx9stvZz0oQyTwbgdV64m+JMi06pPpkPYgpDV8K?=
 =?us-ascii?Q?hNp4txoAWpMotauTiJ106wiaECnDkDQkLRYyJuAvIKuAPgShkil5vmVyI6Dc?=
 =?us-ascii?Q?P6Fq7dYPj5O1qRu6sZ8HRZXukrN7YVgCg8DRo03tr50tK1zSF1O4pkm9w23m?=
 =?us-ascii?Q?IrLWGpuR3HQx30No4wwraOGMgsjT2fxWjDsBsSj6V2EmLok+vfkMsmW0pExH?=
 =?us-ascii?Q?cTqbWOzZxhXq/BGgDtCHx9dweHj5ugLiVCDZcFexGm0CwS3QWeowTM1dCLjL?=
 =?us-ascii?Q?Whz+VqmmE0lCxglm+Ox/cs22qsR2A7qtDrL8HSpKvC/GYKS7n7wu6YXRf+jc?=
 =?us-ascii?Q?3FTe1nZl9gJktXQ5wBWdopuO40h9oqX0vQ3yK14gE9PuaBycMSjkKWN+uuz0?=
 =?us-ascii?Q?DriJ8rkxYy678666j3FcCrIWzQnPQ+oEkXmP4Z+gkN76zDa8YJ01kM9cvoyU?=
 =?us-ascii?Q?+V0OejeQ4nycjjwBmgBGR35OmTr1GQY/KuHj7Aq6E0ProjJzWsbH1c075Mw9?=
 =?us-ascii?Q?8jcQscdic6hah/ZZjL0Sa+sXryNSoQPFFcjH0Y8W8aQn4ptNeB905RSCnUb0?=
 =?us-ascii?Q?CybwtWkOHGTkPNwTkOgzK7InhK3GFVIodXMUota2BMPlXLAh9O1A5NPGi73y?=
 =?us-ascii?Q?Nld4/aUfMTYsmp1w5bdTQHG/mhTwjt+c57a6NXeeYE+CHx9D0wsVzAE1AbB5?=
 =?us-ascii?Q?Gnc8eZMqbteJthKbs5NJIFOyXLqgbADxy5pRsf5YVoQ9FzAyKRn1bVUZv/1H?=
 =?us-ascii?Q?vcFV6voYfysPC7GNg4f7hmyXpPNaq4eY4+LQX17iszwJkCo+uEOZO/fBkPvi?=
 =?us-ascii?Q?rqG1j4/+mPeFJ6cukevQLd6sK5WP6Jlr4LKT/0fikruofLZiWDt+5AIPpzGg?=
 =?us-ascii?Q?jgroy3r+0I0bGrWwcmCoxabqGtUDkBF56NKm6C5IjPKZnhZeoc1/oTEXNpbR?=
 =?us-ascii?Q?PHd8jH3AALGu/JSOQFN3n/AO3cWzTVru5MeFw3S0Pt4VP0TRcUmvObjR01s5?=
 =?us-ascii?Q?taF5XhCHYKemRvi2m2sUhTToHqznS+rOaXHTG6n8lhf90Dg3wcB3dTNF4oCx?=
 =?us-ascii?Q?VQPcdlq7rQRuaERJOhohNWt3tP515Vh2fdmvgEXfZGu9qOopKhDIu9YH1Zy2?=
 =?us-ascii?Q?0+ffC7EgnEfUCelte9isv8dI1nB+ugAe1aP9TMBNW/CId/TLOjfwPVeP6vuo?=
 =?us-ascii?Q?hV5NAkJUMnDRV6ZiCFfwijMIMyUadgIWACMZPx7CIqInfYG7dxp/rnRCAJux?=
 =?us-ascii?Q?q5MZO7bODX6PXDSHt6Wn3iOVGpttHsVSO2YAzsS1LSOaLxh/r4Mq41KBnlHi?=
 =?us-ascii?Q?ybLM74hBtvtjjHFdyyuoHtk5Rxct5vv4m5roCiciA/+gvqyOJAL6/K2vofz3?=
 =?us-ascii?Q?9CClKuzDdOaDqFuIjNMPTdECQbK5embASDHx5k3wOreJK71QfRXQUP4sX4CD?=
 =?us-ascii?Q?6g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 350d499e-fe2c-42cc-c6b7-08da74058d0f
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2022 21:34:01.8501 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RWX4nrDILKo+wiZ0hf/bmRmyIoAbsUPelPfZge0BmLxOtmCCkGTEO07lypa0P1VmRlFReJ/JKSJRkRN0jNu315ln665h1Ucd0yQUTFpF1Wg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5021
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 07/23] drm/i915/mtl: Add gmbus and gpio
 support
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

On Wed, Jul 27, 2022 at 06:34:04PM -0700, Radhakrishna Sripada wrote:
> Add tables to map the GMBUS pin pairs to GPIO registers and port to DDC.
> From spec we have registers GPIO_CTL[1-5] mapped to combo phys and

This description is misleading since MTL doesn't have "combo phys."

I think the key point to note here is that compared to ICP/TGP/ADP, we
now have two additional GPIO pins (4 and 5).


Matt

> GPIO_CTL[9-14] are mapped to TC ports.
> 
> BSpec: 49306
> 
> Original Author: Brian J Lovin
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_gmbus.c | 17 +++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_gmbus.h |  1 +
>  2 files changed, 18 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
> index a6ba7fb72339..542b8b2654be 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -116,6 +116,20 @@ static const struct gmbus_pin gmbus_pins_dg2[] = {
>  	[GMBUS_PIN_9_TC1_ICP] = { "tc1", GPIOJ },
>  };
>  
> +static const struct gmbus_pin gmbus_pins_mtp[] = {
> +	[GMBUS_PIN_1_BXT] = { "dpa", GPIOB },
> +	[GMBUS_PIN_2_BXT] = { "dpb", GPIOC },
> +	[GMBUS_PIN_3_BXT] = { "dpc", GPIOD },
> +	[GMBUS_PIN_4_CNP] = { "dpd", GPIOE },
> +	[GMBUS_PIN_5_MTP] = { "dpe", GPIOF },
> +	[GMBUS_PIN_9_TC1_ICP] = { "tc1", GPIOJ },
> +	[GMBUS_PIN_10_TC2_ICP] = { "tc2", GPIOK },
> +	[GMBUS_PIN_11_TC3_ICP] = { "tc3", GPIOL },
> +	[GMBUS_PIN_12_TC4_ICP] = { "tc4", GPIOM },
> +	[GMBUS_PIN_13_TC5_TGP] = { "tc5", GPION },
> +	[GMBUS_PIN_14_TC6_TGP] = { "tc6", GPIOO },
> +};
> +
>  static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
>  					     unsigned int pin)
>  {
> @@ -128,6 +142,9 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
>  	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
>  		pins = gmbus_pins_dg1;
>  		size = ARRAY_SIZE(gmbus_pins_dg1);
> +	} else if (INTEL_PCH_TYPE(i915) >= PCH_MTP) {
> +		pins = gmbus_pins_mtp;
> +		size = ARRAY_SIZE(gmbus_pins_mtp);
>  	} else if (INTEL_PCH_TYPE(i915) >= PCH_ICP) {
>  		pins = gmbus_pins_icp;
>  		size = ARRAY_SIZE(gmbus_pins_icp);
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.h b/drivers/gpu/drm/i915/display/intel_gmbus.h
> index 8edc2e99cf53..20f704bd4e70 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.h
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.h
> @@ -24,6 +24,7 @@ struct i2c_adapter;
>  #define GMBUS_PIN_2_BXT		2
>  #define GMBUS_PIN_3_BXT		3
>  #define GMBUS_PIN_4_CNP		4
> +#define GMBUS_PIN_5_MTP		5
>  #define GMBUS_PIN_9_TC1_ICP	9
>  #define GMBUS_PIN_10_TC2_ICP	10
>  #define GMBUS_PIN_11_TC3_ICP	11
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
