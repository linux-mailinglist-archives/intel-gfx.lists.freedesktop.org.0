Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 331637861A8
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 22:37:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0049510E0DF;
	Wed, 23 Aug 2023 20:37:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05D0910E0DF;
 Wed, 23 Aug 2023 20:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692823074; x=1724359074;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=UYcLfBfiRhBzRi43Nj+pL83BzDXYKLQJF0cBDgv3UX8=;
 b=km0CJjvOJZ/cMksEd2wrlzwp19T4NnVz9pGZHcG/icC8lOYizi0AGzpp
 t+m8F4lyJkurVs9TpE5SNybiAsGVMI6ylSr/AeQQMqcjNd86zeMUsVkpm
 OtdpVYBIM2lZSg7WHaDovh0tRor64SYtyrGEBtRVu4j832sCNneggW/im
 y6+En7/9T5UXB+YUSylggqVtmR19iGsrf1C6AuDBytswe3pmV03mr9S5q
 C2tklATtvOukzjBWE9+7wJ3+Yb6yyjyWjgYUz7vU8blqYlKZysqUjNG+1
 zHcIqlQvx7C+AetbX1A/CeQ1FI6iyYiV7wQ6Pm19HCCF79WLyV5ZTOsi5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="378019277"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="378019277"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 13:37:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="766275437"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="766275437"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 23 Aug 2023 13:37:53 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 13:37:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 13:37:52 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 13:37:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QJ9cMag5w2JJtia3/VzPfTEqhuoSSf0ZyRNBTLVKEolXGyXmJqwTAJbR4+087j7luOW0uGBsd/VYQx0ByU8jxCLH5K0MMWVJ8exPx0NeL3JB23iGz7RvEUcKuutooVkSB3r0w16DbYWRUkrkZK9RW95Pr0UEyUsxfFFUsE0YfTQ2ohnjPUx2SUjC/UqsvaymWY1knf93AGq9dvJjqYyRO/XbGQm64Rk/PfAOuNidRiZpJEw1CXthnrUW3bpipWY4Ztn2n6nE0FpJO12q7F/MVAHudLG4kc8GPBg1hl8k1EBow/jORBm5INFIpMPY6NAXen20fYaq89ALJABxT0Fl4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ThroNN79zuAWx7OvddsyIQ7euBg+W5LEcRRWwdmwvB4=;
 b=IguM3QXSF89y84qLx3ofqmIysBRmDwF93rv9eF0dyVX+YczH14bUmyuv8t6YKP7GohaWQMkd41CP351vFG0uMdULxmWjBa8ioE7xA0Sb+Zff25YDQsduMR3vnDnIK0AA7TOL3XQKC7Etscm6jTPiKN/WRCitsHqcv9lTERD5YWWw2dc9GCkVwoDoUh+HnPS7OdQnyRjGAElXKhW83ln8pRq121DoIYPwzH8QJhq4/X+aHMOC3TLv5802e7w3Xq5/kp/9KFjHaw/TRndkO0rKrIZUkkS5+8jCL32du6GnJkFIr98/BbNT1vKuNoguqPyNyhLGI1n9DXgoDNbqaM7viA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH7PR11MB6451.namprd11.prod.outlook.com (2603:10b6:510:1f4::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.26; Wed, 23 Aug
 2023 20:37:50 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.025; Wed, 23 Aug 2023
 20:37:50 +0000
Date: Wed, 23 Aug 2023 13:37:47 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230823203747.GJ1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-30-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-30-lucas.demarchi@intel.com>
X-ClientProxiedBy: BY5PR04CA0030.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::40) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH7PR11MB6451:EE_
X-MS-Office365-Filtering-Correlation-Id: 45efe954-9eb9-4232-fcd4-08dba418d12c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Kddmhi+XMvbiVYKzgFAywQfJtwFb0hvyzPuPjVJmhUu/nglNOA1txPDYvG2pyBl1gMYtCfN7pTkhT9uLhpA1kiZXVwXKSL1Hp9SGucnkxnUU+fEDTpWg1zOwTWzhIUDLI+C63XsKfR7pNGjIt7+sJVjXfv61RbTz4STbt5kjERtQKeYKSysyLwRkAa5T+aCkJgsVWHIT/l29AEziPSAGSx8fEu0RodL+CYOUkBBzkY6FPGy/8y+jMIcHlsN8Bqe6vjfaNRO8ITG/IJ8oInkDMMuKtERfDde6g4P2pivseuD10kYV++g5MuaqtsXvCtZ70F/RhSU+3gWCiB/BrK+QzrsNfHw20wRkmUSu+9Vuqzp3o/z2iz6aRJzpYjkDC9CU+gGCLUTLysk8yjs5E/OzYHw7Gt5Jhu4YOu3Bibt4LVKoSTLTS1ipX7jeVuzye0ioNfpJwyNEvBGYb7xJ70ygNwutg631+jnZPpzZJYvy2g7ABL326Yji8W0Et4WuZns/8F9vQzOgH8p6VoWS0QRdNnnbqFM6ZkkSiT8vntQ1I0Hl4o+u5pzMtzVjAAI3hgDl
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(376002)(366004)(136003)(39860400002)(186009)(451199024)(1800799009)(6506007)(6486002)(316002)(6636002)(450100002)(6862004)(8936002)(8676002)(4326008)(66556008)(66946007)(66476007)(6512007)(41300700001)(26005)(1076003)(5660300002)(6666004)(478600001)(83380400001)(86362001)(82960400001)(2906002)(33656002)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uJ6KD7moF2R43NTJX1lp7wGLshErz8wV7jM1D5wH41z/2LyP0jiRlIQeo8VE?=
 =?us-ascii?Q?5xKxIeTxZ9eOpt3MnDcV4dwGoo9vC/wBi91b/5aK9htkCfYmqeNZFVpCZAAv?=
 =?us-ascii?Q?auo3msPpJfcxiE9zTKjbRt25EPYv/hmBt2/jJ1CDhAa0Tx4Hi0n6QrC71SxZ?=
 =?us-ascii?Q?lfEtv8pRgrBMV1oSDJa/rXNQjfPjoysziiq3Et1/3NN5aiV0l1ih+FwEQZ5n?=
 =?us-ascii?Q?H2eQCepyzIU9EwXQsT9f/KpB/4x8f8Ahr7dRULsxh0gcE/GfQfqdem/KzEcG?=
 =?us-ascii?Q?GDQwveleB65opDGNcEpZN9b4HiRBQUbHNIf5Rz+tJO5BCNzZQeRW/3+ehZ7n?=
 =?us-ascii?Q?vnGRh0QuRE7c93FVXhP8zvKeTYqAk1oRk3//uCF3SVSr8hN9MZpLYGb6XOWk?=
 =?us-ascii?Q?CXPWmeMbvuF+/FGP+Stfxrchx/hUiCiUUhewB7IxFxZRknNJWAE5kNZoY6Nb?=
 =?us-ascii?Q?/9tGdlPGxhNyvqPObzTVbzlUgIgeRdP3Hqpzr12JXlgY7M2HTn72nVPt0VA4?=
 =?us-ascii?Q?XiuW8vdA0TE1GeAHbfOMz99kKvDakV/8Whw3NdmvlMEoZOowTqXFUEliUoBT?=
 =?us-ascii?Q?WyORzIJ3Vcf5417VbKVerOZAW+TkT2au3lFeDXgi5ulBCpQYhopWnvuFbpRV?=
 =?us-ascii?Q?vEIX8O+Nq5k3MtPGbx3HLTqSCPhsnqCi4DJbvvUWwkdB+SFuq4QHxsHrLdJv?=
 =?us-ascii?Q?Kf8keArLoLF7rVTnpzE4R1y7yh3F4MghCAu9Sa0okP0vaUvJKdAWLB5FlWTh?=
 =?us-ascii?Q?tmZ0SmmpNL8LV/jSpwsfV5Os5OMA8ZvOv9d3f9Mk/KSnY+WEderA/x++a9U7?=
 =?us-ascii?Q?KX2nLVkHz/aMd+wD5FSvI1SEFv6urGfwjfX9fkM6xlkuxy7NDftFlEludqdF?=
 =?us-ascii?Q?kLOR8wj33N0I+ejbepYEyHmvBV8wlBEVmM7JHjm0DbWNtWXlFQuLKbAnzSgt?=
 =?us-ascii?Q?hTEt714bWxBfTgioupn98jXcQPT5Yn9eUQcrn9d1mkXDjio1mHpUuoZ0Guvr?=
 =?us-ascii?Q?iXutDisQvYa1lgO8tG/EU/gTVEzO+7p/O89HOv3w7Z/eDP3JiBxi77MwZtA1?=
 =?us-ascii?Q?PPhjhixRQNBGYQWhSa/dlgM3uUD5nGW27DCctOYVdiOUkpgj4Gj/MIKTqtCR?=
 =?us-ascii?Q?p06Rce7B/TGc7Wq27gbK8EBu2883WL3AkfdlypPme8Yng4bPR5fW7Wwieh3O?=
 =?us-ascii?Q?fTPjhBGbufvFgYkTjp73c0BYjaEAVQ7Oe+CaMzW7JShaG2EOK5jn8hsMdkb+?=
 =?us-ascii?Q?wcxo/fquIUVihFxYWhcve9S8YCkXov7oMvf58Tad3PMgVFVqIIxUlwtkRLRU?=
 =?us-ascii?Q?5Bf8n0J3ZW+KiQCmUsdofDXbGO4c0TmqLHw+ZbQserTuf5Y6JP+5nSPyBBQI?=
 =?us-ascii?Q?kSNDr5OJsb7XU7uZILzPyGF8WBT6t8wHpCVjcuoVYY9dKXzJoZ8yq3HxFzLK?=
 =?us-ascii?Q?qt3E29qbnXmFXhbO6T6v/BgSuMD2TxAAkkMVvunJWeiwSUnQ7OGTCnb9q5AX?=
 =?us-ascii?Q?dTk0I9nrxoXP65myQ+O9MBVK7OogKuSvMFXuOHu9Mo8q0Ws1OKdMNCpjJvKh?=
 =?us-ascii?Q?C63IkT9xal6+H0ED0T53Jg6r68R1IMEQZZKIgGoDNZDNKt1SvSxdDL6keyVR?=
 =?us-ascii?Q?Eg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 45efe954-9eb9-4232-fcd4-08dba418d12c
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 20:37:50.0928 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OpsamzJ2MGBsI+QuOuIY4/zf6rHJC1hNflrDwNyxxp+tDPhkVld6YLts1lcJE2/3mvbiQ+RF03tMNc7/ajQwlIcPOB5LyxX29Ef9FnTlGao=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6451
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 29/42] drm/i915/xe2lpd: Add
 support for HPD
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

On Wed, Aug 23, 2023 at 10:07:27AM -0700, Lucas De Marchi wrote:
> From: Gustavo Sousa <gustavo.sousa@intel.com>
> 
> Hotplug setup for Xe2_LPD differs from Xe_LPD+ by the fact that the
> extra programming for hotplug inversion and DDI HPD filter duration is
> not necessary anymore. As mtp_hpd_irq_setup() is reasonably small,
> prefer to fork it into a new function for Xe2_LPD instead of adding a
> platform check.
> 
> BSpec: 68970

It might be worth adding 69940 to the list here, since that's useful for
confirming the hpd pin => bit mapping.

> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_hotplug_irq.c  | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> index f76b9deb64b4..74aea0d8d9ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -163,7 +163,9 @@ static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
>  	    (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv)))
>  		return;
>  
> -	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
> +	if (INTEL_PCH_TYPE(dev_priv) >= PCH_LNL)
> +		hpd->pch_hpd = hpd_mtp;
> +	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
>  		hpd->pch_hpd = hpd_sde_dg1;
>  	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
>  		hpd->pch_hpd = hpd_mtp;
> @@ -1061,6 +1063,19 @@ static void mtp_hpd_irq_setup(struct drm_i915_private *i915)
>  	mtp_tc_hpd_detection_setup(i915);
>  }
>  
> +static void xe2lpd_sde_hpd_irq_setup(struct drm_i915_private *i915)
> +{
> +	u32 hotplug_irqs, enabled_irqs;
> +
> +	enabled_irqs = intel_hpd_enabled_irqs(i915, i915->display.hotplug.pch_hpd);
> +	hotplug_irqs = intel_hpd_hotplug_irqs(i915, i915->display.hotplug.pch_hpd);
> +
> +	ibx_display_interrupt_update(i915, hotplug_irqs, enabled_irqs);
> +
> +	mtp_ddi_hpd_detection_setup(i915);
> +	mtp_tc_hpd_detection_setup(i915);
> +}
> +
>  static bool is_xelpdp_pica_hpd_pin(enum hpd_pin hpd_pin)
>  {
>  	return hpd_pin >= HPD_PORT_TC1 && hpd_pin <= HPD_PORT_TC4;
> @@ -1120,6 +1135,8 @@ static void xelpdp_hpd_irq_setup(struct drm_i915_private *i915)
>  
>  	xelpdp_pica_hpd_detection_setup(i915);
>  
> +	if (INTEL_PCH_TYPE(i915) >= PCH_LNL)
> +		xe2lpd_sde_hpd_irq_setup(i915);
>  	if (INTEL_PCH_TYPE(i915) >= PCH_MTP)

I think we want an 'else if' here.


Matt

>  		mtp_hpd_irq_setup(i915);
>  }
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
