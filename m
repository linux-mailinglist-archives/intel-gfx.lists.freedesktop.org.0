Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56202636659
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 17:59:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B421C10E5BD;
	Wed, 23 Nov 2022 16:59:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69B0610E5BD
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 16:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669222755; x=1700758755;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=l+yxq5yK7zTGP2mOJjI0DWHwac3TyTf4cVp1BAp4lA0=;
 b=b0YipLkeYZArRfjrjDN1TeZ32CbH6rnHKlFGO5AZ8rmjS+QZc0iYtL1R
 9YeAP8PgYYevKmFhz1PdIL4mg7fGkJr4TRIg8YQ5nUa+CDzJdtj/J9Nzl
 fqhKjKMymVzUrz+rgYBDTLkBAXpQ3u9lEIJCEXSIDWQ85bG/D4iIzPIQQ
 BtnoNs1AcMNu6os/R1gfZoU0F6UdLtRVvrxvQA/grs5L18cBh6nL/JG8l
 Zy+GlzdlHHphiK0XGt+Gc8bf9fLvrOIH9fH7rwHxAJ4j31ZbPdZFC6Xzd
 mWzK2FR6/0C3/TfPqotE6ufMMrmclqT/DvkwAdXG2swvO2q3r51UWA3RY Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="293818420"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="293818420"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 08:59:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="705426597"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="705426597"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 23 Nov 2022 08:59:14 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 08:59:14 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 23 Nov 2022 08:59:14 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 23 Nov 2022 08:59:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MQJgbjVhvQVIDwPB6P6ordchJd6CeC+07sHka32bE7GDEUptCgc7Cf++jzMJ6o4cq0Y+oUQi017ZuEf2y4+POf3QTxQ5hXjwOUjmayl15t4ENfxvKxAFDGiXsvE9/M7emC0gxUTWYLZ3YZn47ynduEG/xUj9V86DmmnSm07XFYMmge7Dat0SLWuiI1FvhozTYPaA+xRWwqVhb4CrAiPLvdzqZ0GKzmogr4Q2Qhu9LxU0lGpa8tcBDjNASeaz1MDwUG/gfO8CyrLS7bCC+Ij0LhLeH82P3MBYVdX4qi6Bas8FenAEbgnqQw2JhPyz7ygltzMz17rc72aItor3Xh0AZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2glgpM+kUf2/flxMDX/GGFgdlfuVvk+/kiJcxh8SnXU=;
 b=QsoCFko9lhtFqnnSKvQ57qYn+Y4qNt3Mq5lBlRj/b0bHC6CYcQJ6Z5R/VxuChV7L7Dq4QMkVMAotBcJSPnStFNp02jPojMEDwr4G2rvsJnPn68rDh/f89RkFGi/h7TnBN1GbW2NWRujo1cX2c7/YsRozv4/G196cxGjIoaIneVR+jXrAL5i912WxQZgP4koIgoQrNT6W0erOhr/sH+iVojzRVCPIQ2Ye1r+8z1OlYoBhjx17roQ9/Bsj4p43Zv/8rlaH46/Qj60LjTjhxiTQvDwLRg9uHqtoObKZMp4iNq00nrtGrKZikFmSpTmcvzJcxsz7yrbzuvIo7k+YBAspyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH0PR11MB4965.namprd11.prod.outlook.com (2603:10b6:510:34::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Wed, 23 Nov
 2022 16:59:11 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f4b9:901c:6882:c286%4]) with mapi id 15.20.5834.009; Wed, 23 Nov 2022
 16:59:11 +0000
Date: Wed, 23 Nov 2022 11:59:07 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y35RW72vp0IoTg3x@intel.com>
References: <20221123164916.4128733-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221123164916.4128733-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0161.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::16) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH0PR11MB4965:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d7f8416-3066-4570-1778-08dacd740b30
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IsQ9266DG46sA5oJoWtgBmDObWKisBf/fWquYndHgHW1QwmVZ+VUhsPg0z+VoM08WXgEEHHK0bPloikhMPrIEdlZ+TobPvCDXFQiC94SfZAFn7yCtiVVVGVTV421LRGdwK7ZlX7wvR8DiIJg4HKKhtfrkWD4qAxI8/68px12WTz31KKh5DUdUN7R3NUCMFt9GQHrLrno2EJQ0TwQ1fm996tlXG+7dlXyhzvOSd+obyJu2rVHJ7w3N651PCMt8xU4KRMe08qrqxOUlNOstm2d/l3XoHLjaPjzKlZfEz1dkpwuyrauAFp5aeew+qF7K9rR4DIsL0JrQ/uxK7tin96xIfTdTeN/MGZw9jEHpKAD9wimZkEgZHNkujCbON1pwkZWCe7ph+Z2ftU2l52MYpa7/E9KOKMzhd3FNDobRm+r4LdtR8ApviGfPzCNOqh0EZuc0pNr0w7LAquEUsFYRilEZh5Ojkq358pil72UUPfDXScW2DEh5Sm7psgyPkxN/nu1fSqgDV8NWKtdKx8eoeEUYbvj64afBMv5d6rwmkp6AdvJPiKuaTD5RAkAoiQqVUcWGUHi4/ONnNG/rMXyZB4HlNe63LGnh0r+Eyo4DVQ550WkBJ8f2155Eaa0nQ9v77V84xuPkxdGdcBEwlYB2Hozu9MH/ko/T1EJ2YrPK+DW2o11VBeqMUA2KCEGe3xrbVy/
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(39860400002)(346002)(396003)(136003)(451199015)(66556008)(8676002)(6512007)(316002)(66476007)(66946007)(4326008)(26005)(37006003)(41300700001)(36756003)(2616005)(6506007)(6666004)(6636002)(2906002)(6486002)(44832011)(38100700002)(82960400001)(83380400001)(8936002)(478600001)(186003)(6862004)(5660300002)(86362001)(21314003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xsiyrWCG/2cwGUrhVqCSTD4PpBJ5064FH+R5MvYGXue09CUWCe9C0XqAG14N?=
 =?us-ascii?Q?kuxLvBNxZVQbiyf9P64Q36nV25JWtyDkz3FaaoIs2Eit86/8IAza1vJSHQzX?=
 =?us-ascii?Q?qQ7fQXCCUshLnV+/gJJ4JPad7kG/fg32gCxKbKMo3JL84lQrB0+vVxLRAc8X?=
 =?us-ascii?Q?ZnElIMSJUDUI8HV23/fqaCQVRQNN2QoLW6862f9mmwIOwR6jCcgjN4osktrH?=
 =?us-ascii?Q?qpmETjh5BmdBcGd6mbH7ggN9r6ykWdfbTDxsF4cnghYmtW+DZTJYttN+XheV?=
 =?us-ascii?Q?eWP9DzH9vB337ykggbOhGtR8X/DCRtKBtjgjFr4Ea7XHhDugKiWPOiaFS8rQ?=
 =?us-ascii?Q?BAiv4q8HH4vwzPxKELESPDDISco7P0EgdX5PvGKM8giPLPORdhlsL5U7LNUz?=
 =?us-ascii?Q?6RAKFfPGcJPgPDeAftHq0vyolkGF6RyCbZsiNgIgWqLAC+nJC4fTcgisF4uI?=
 =?us-ascii?Q?ZuZO7mkWLAKWZeaSVKYhtLDAd1O7VmhdGsPnSf2tx31TjxlVeGQtWFqeuXjQ?=
 =?us-ascii?Q?i94G9ALSYpl9V5uJfLx5O7EQvJY8ZTkTwT5IaSPzrY6C+sXZgcV3ircn89jn?=
 =?us-ascii?Q?b8qG2Qhocr0Wr3p3KWzPB6CJJX4wXk8p4P39hbjUU4syUi52wZxLvp3AcQZy?=
 =?us-ascii?Q?IFSCRm1aQk3onroEWDHqggxmtwkhp5aq6YPSDxoDLM2LD/hZEJOK/rTy36vF?=
 =?us-ascii?Q?Hlyvy60iwh3lVbfADZwf3FhQ3W4pPHtCMQg0PqkSmSfsgTMtCut6cZ6ALgsD?=
 =?us-ascii?Q?cAOoVh8qSZuFrk/JxNrYg+xNAvwP9eCKjEBzxry9ArtDMWuGhAJjPQhtmAlh?=
 =?us-ascii?Q?j0QGpsigG3gLvA8HADhruV+p3uWDcuXQjXcgQ/3VjnNrQEbmgfeae90YAOSa?=
 =?us-ascii?Q?qPhvDIc6GZotg/PyTI5wXYxkiQVJNWlMx36/wkq10+rgh8aaDhiBi9Bx55Ge?=
 =?us-ascii?Q?YjM6a9OjQGLN47jBZ6ebYUjhD6P71ESTCWsnQpHhnBdUTp7JOfUlYo5g5t8b?=
 =?us-ascii?Q?V68DyZkMN/cMJpXnYBTJUJ1Dc2jy8sUWQ0Qq2EF3Jiv/V0SguyC8OOsbt22h?=
 =?us-ascii?Q?l9CMU6SdLvc3Epr2EYOmZz9tx/Ht2ny/9drQzIgWR7uSY1MxDetzf1QGVKOU?=
 =?us-ascii?Q?nz8kzKNyL78rctrBz82AxsG3aJ6Vm0+85AJc7VInwZoWmobIS/ewcD8Ob0Hk?=
 =?us-ascii?Q?THO4WzEnA3s0MYCSZXqEL1G4JtaNVG1jBNqmGCLY1TZe5Jl8k+yoGDBywg7R?=
 =?us-ascii?Q?U94NjRrlvNqDfT0IZwnuZliCd7jOcbeFCDX7ssYtQmvvk1EZ3x2nkPUnOdK3?=
 =?us-ascii?Q?kjZRaTj9yMNnseUut2E2+glzCTYc2DzMeK0hS7nYjoeqR88G9N+qoN0Cal9Q?=
 =?us-ascii?Q?do8aDKmnXhcqw3lITlfZPHt3ykHW5qjMuCInlar1X53hz5VXHNIjDS1YlQDh?=
 =?us-ascii?Q?EUS3bJFs80FbhXFS8nyYzUQJYwrt58iLTk2hCeGfc1x2EWWnKCCiDjJHqPvQ?=
 =?us-ascii?Q?8nVWb0lCRqyE+yeLv1y6A8jshwp/sIegv7q7Qej5/7oJZ1xyaoWK0M3N4GhV?=
 =?us-ascii?Q?XGomSqtkIcO05w9YicgD7fzK8VOOYq6J73IIpkIFTdYNljgFz1S0BtvZqf3l?=
 =?us-ascii?Q?TQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d7f8416-3066-4570-1778-08dacd740b30
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2022 16:59:11.7072 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dscG9NtvivxucIFilFgkU+UOhOJ8ytlR3MeCIPofswkwY6RKc0dtkl8QmdO9HZ/KOKKe5sQ0gH36FE99lLarSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4965
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: remove some limited use
 register access wrappers
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

On Wed, Nov 23, 2022 at 06:49:16PM +0200, Jani Nikula wrote:
> Remove rmw_set(), rmw_clear(), clear_register(), rmw_set_fw(), and
> rmw_clear_fw(). They're just one too many levels of abstraction for
> register access, for very specific purposes.
> 
> clear_register() seems like a micro-optimization bypassing the write
> when the register is already clear, but that trick has ceased to work
> since commit 06b975d58fd6 ("drm/i915: make intel_uncore_rmw() write
> unconditionally"). Just clear the register in the most obvious way.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt.c    | 29 +++++++--------------------
>  drivers/gpu/drm/i915/gt/intel_reset.c | 18 ++++-------------
>  2 files changed, 11 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index b5ad9caa5537..efd9d722d77f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -210,21 +210,6 @@ int intel_gt_init_hw(struct intel_gt *gt)
>  	return ret;
>  }
>  
> -static void rmw_set(struct intel_uncore *uncore, i915_reg_t reg, u32 set)
> -{
> -	intel_uncore_rmw(uncore, reg, 0, set);
> -}
> -
> -static void rmw_clear(struct intel_uncore *uncore, i915_reg_t reg, u32 clr)
> -{
> -	intel_uncore_rmw(uncore, reg, clr, 0);
> -}
> -
> -static void clear_register(struct intel_uncore *uncore, i915_reg_t reg)
> -{
> -	intel_uncore_rmw(uncore, reg, 0, 0);
> -}
> -
>  static void gen6_clear_engine_error_register(struct intel_engine_cs *engine)
>  {
>  	GEN6_RING_FAULT_REG_RMW(engine, RING_FAULT_VALID, 0);
> @@ -250,14 +235,14 @@ intel_gt_clear_error_registers(struct intel_gt *gt,
>  	u32 eir;
>  
>  	if (GRAPHICS_VER(i915) != 2)
> -		clear_register(uncore, PGTBL_ER);
> +		intel_uncore_write(uncore, PGTBL_ER, 0);
>  
>  	if (GRAPHICS_VER(i915) < 4)
> -		clear_register(uncore, IPEIR(RENDER_RING_BASE));
> +		intel_uncore_write(uncore, IPEIR(RENDER_RING_BASE), 0);
>  	else
> -		clear_register(uncore, IPEIR_I965);
> +		intel_uncore_write(uncore, IPEIR_I965, 0);
>  
> -	clear_register(uncore, EIR);
> +	intel_uncore_write(uncore, EIR, 0);
>  	eir = intel_uncore_read(uncore, EIR);
>  	if (eir) {
>  		/*
> @@ -265,7 +250,7 @@ intel_gt_clear_error_registers(struct intel_gt *gt,
>  		 * mask them.
>  		 */
>  		drm_dbg(&gt->i915->drm, "EIR stuck: 0x%08x, masking\n", eir);
> -		rmw_set(uncore, EMR, eir);
> +		intel_uncore_rmw(uncore, EMR, 0, eir);
>  		intel_uncore_write(uncore, GEN2_IIR,
>  				   I915_MASTER_ERROR_INTERRUPT);
>  	}
> @@ -275,10 +260,10 @@ intel_gt_clear_error_registers(struct intel_gt *gt,
>  					   RING_FAULT_VALID, 0);
>  		intel_gt_mcr_read_any(gt, XEHP_RING_FAULT_REG);
>  	} else if (GRAPHICS_VER(i915) >= 12) {
> -		rmw_clear(uncore, GEN12_RING_FAULT_REG, RING_FAULT_VALID);
> +		intel_uncore_rmw(uncore, GEN12_RING_FAULT_REG, RING_FAULT_VALID, 0);
>  		intel_uncore_posting_read(uncore, GEN12_RING_FAULT_REG);
>  	} else if (GRAPHICS_VER(i915) >= 8) {
> -		rmw_clear(uncore, GEN8_RING_FAULT_REG, RING_FAULT_VALID);
> +		intel_uncore_rmw(uncore, GEN8_RING_FAULT_REG, RING_FAULT_VALID, 0);
>  		intel_uncore_posting_read(uncore, GEN8_RING_FAULT_REG);
>  	} else if (GRAPHICS_VER(i915) >= 6) {
>  		struct intel_engine_cs *engine;
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 24736ebee17c..ffde89c5835a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -35,16 +35,6 @@
>  /* XXX How to handle concurrent GGTT updates using tiling registers? */
>  #define RESET_UNDER_STOP_MACHINE 0
>  
> -static void rmw_set_fw(struct intel_uncore *uncore, i915_reg_t reg, u32 set)
> -{
> -	intel_uncore_rmw_fw(uncore, reg, 0, set);
> -}
> -
> -static void rmw_clear_fw(struct intel_uncore *uncore, i915_reg_t reg, u32 clr)
> -{
> -	intel_uncore_rmw_fw(uncore, reg, clr, 0);
> -}
> -
>  static void client_mark_guilty(struct i915_gem_context *ctx, bool banned)
>  {
>  	struct drm_i915_file_private *file_priv = ctx->file_priv;
> @@ -212,7 +202,7 @@ static int g4x_do_reset(struct intel_gt *gt,
>  	int ret;
>  
>  	/* WaVcpClkGateDisableForMediaReset:ctg,elk */
> -	rmw_set_fw(uncore, VDECCLK_GATE_D, VCP_UNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_rmw_fw(uncore, VDECCLK_GATE_D, 0, VCP_UNIT_CLOCK_GATE_DISABLE);
>  	intel_uncore_posting_read_fw(uncore, VDECCLK_GATE_D);
>  
>  	pci_write_config_byte(pdev, I915_GDRST,
> @@ -234,7 +224,7 @@ static int g4x_do_reset(struct intel_gt *gt,
>  out:
>  	pci_write_config_byte(pdev, I915_GDRST, 0);
>  
> -	rmw_clear_fw(uncore, VDECCLK_GATE_D, VCP_UNIT_CLOCK_GATE_DISABLE);
> +	intel_uncore_rmw_fw(uncore, VDECCLK_GATE_D, VCP_UNIT_CLOCK_GATE_DISABLE, 0);
>  	intel_uncore_posting_read_fw(uncore, VDECCLK_GATE_D);
>  
>  	return ret;
> @@ -448,7 +438,7 @@ static int gen11_lock_sfc(struct intel_engine_cs *engine,
>  	 * to reset it as well (we will unlock it once the reset sequence is
>  	 * completed).
>  	 */
> -	rmw_set_fw(uncore, sfc_lock.lock_reg, sfc_lock.lock_bit);
> +	intel_uncore_rmw_fw(uncore, sfc_lock.lock_reg, 0, sfc_lock.lock_bit);
>  
>  	ret = __intel_wait_for_register_fw(uncore,
>  					   sfc_lock.ack_reg,
> @@ -498,7 +488,7 @@ static void gen11_unlock_sfc(struct intel_engine_cs *engine)
>  
>  	get_sfc_forced_lock_data(engine, &sfc_lock);
>  
> -	rmw_clear_fw(uncore, sfc_lock.lock_reg, sfc_lock.lock_bit);
> +	intel_uncore_rmw_fw(uncore, sfc_lock.lock_reg, sfc_lock.lock_bit, 0);
>  }
>  
>  static int __gen11_reset_engines(struct intel_gt *gt,
> -- 
> 2.34.1
> 
