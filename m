Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEA0F701243
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 00:47:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C19110E6DF;
	Fri, 12 May 2023 22:47:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0CCD10E6D9
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 22:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683931662; x=1715467662;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0fzxEh3yQta8m3D2H+XazZgqq0nywsz9FZm69juzRLo=;
 b=Az9my2k22hBD7vnIDKIGvODh9yL48zfv3bMdVJEQaNBx1K1c3FYT702l
 pWBbhYrlX8j2tDyQ/lvHxNPOCL0hbHnR4mGpt1fMYu3fcZDJ//Oo6sN2K
 nvfplG8Yq2pZGkpfwhINz5IFB952hzyvj7Gj4Rj1JQoo6QAFLJmSseMQj
 UWLsknuMNFH7bNVFr28jdYEAGOzKblc2kbKc4UnFskADVtYK25dQIRR2h
 tOdgeeEbsywSkpGRxoy068hGF8jSTcotX6RbzLvWR72KRjp95hp0pg42e
 T4WoCg+3BmAcwFjwKd+IwmKtA/RaIsfzQyo6VrCfTCXXokM6yhshWnfTR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="379039187"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="379039187"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 15:47:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="769956514"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="769956514"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 12 May 2023 15:47:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 12 May 2023 15:47:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 12 May 2023 15:47:41 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 12 May 2023 15:47:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h1UWT3u1oPNuaCs3emAwA3gg/WSVmUtH+iP8HWPvwhty50GM1G3qt9/ZR18wLzHAovX1VHZprzfcmN2KZVztC5rhEjvUUTio9kzpAPBBXhfjfqo1etcUAXHpVphEntciPnt5jSckcKcMJPbc9xwyCrtrO/qX5pMkhPFgkB0A/wR4eOjYVwxcvCMhbsB+QV0Ec7PkccFp/LoEQ3NzQ+OtFvXbIcG+0qsuJo+rTnyHq+KZpf/qV+KIOE4clN9iD3yqsNicfzjir15bGqEXJe898qKG/FSR+fD2d6CQXXfjVwqgY1HjHIw32V1jEScXClNBXt+LHPNiNyApyKOyO8OiuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+2AKRVjgNZvm2qxN/ooMJeVplnbJnBljR4kf2qCd5r8=;
 b=EMrDfUP5M6tzGmlQqtorHsddWAoSVP3Y4xpFQuaBLVmLP6NeMaMVIolDE9tHuC2CkcIU7dYWBuCQGV36Nk+EVNYVran0dTYj12x3BvrXQ0LrzJTKettLByVmU7NnWLcNjEu24RfJqQ2DCOQuSWwXlLP140aY5bzIHlaCX2sTXXCJz4ce06HVP9DS9npxzMGwao/n7YpP8Kp9e0XTAs2Q/COtuH/CkD7DE4Eya23Q/mzF8vPiPxazuEoClthG5+Kn++Y/34ddPok1ThQqkDb2gvjJ4y3+jKoA/ltR5qgskhR0LPNgOIwD6btTZ+PW0D07Q35x9Jwp4spiPg7FyShXng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH0PR11MB4966.namprd11.prod.outlook.com (2603:10b6:510:42::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6387.20; Fri, 12 May 2023 22:47:39 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%7]) with mapi id 15.20.6387.020; Fri, 12 May 2023
 22:47:39 +0000
Date: Fri, 12 May 2023 15:47:35 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <20230512224735.GI10045@mdroper-desk1.amr.corp.intel.com>
References: <20230510215811.650160-1-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230510215811.650160-1-matthew.s.atwood@intel.com>
X-ClientProxiedBy: SJ0PR03CA0348.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::23) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH0PR11MB4966:EE_
X-MS-Office365-Filtering-Correlation-Id: d474daac-84d6-4364-a4a8-08db533ae2fc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ua4glQ1XrLT55Nn8ZJoPU1K99OD79NJTMmKpN2zUg+0NYCMy2YO6yea5QpqCiRkFa8mT9hlqIr76IW8H1RiHmN7IedafDQePlhnW1LgC9oBpPfsWEXlTWDD9xl9wV4aWG7NlC1AC/sy+jJfYLhsI0KeSBwlHOQ8AjweIKbvaC9EVMCmSqJdTYkOgMoHZWQptnT4osJooYdIBplVJbIkYuGMNoVUjzx0uGwQiZCuKR0XhmXRm33VwREhykRYf+hkp2rnTy0MvxC9AuQBBt/cqI/Y0R2bepKhRRwf+x0Umcy6IPcm9VH5FV98NTSyQfJaCOI9bxcY8l6NUvRTScRe4+8KVE4TI2u7LLugzXdBqianE+ksB8OZ00tibsYkjWfJiEGLF24+0aKz+89feYpIRCr5XK4DE6w1HcEeBtEdUiVM96jUrqKolyJcVuRSOzO0cPPz2y/teEBSDS+eX1udHk9aMkRJ9KeNoJ89inWEJXQbDije0IMIJvQCiNfCiQn+EXCDK1/QZqdtNJPT8T2Vc6K2Xl96zEey3JsKNNo44jEanw1ECOmF7qxpI3IWnpoGU
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(376002)(39860400002)(396003)(136003)(451199021)(1076003)(6506007)(26005)(33656002)(38100700002)(6512007)(86362001)(2906002)(186003)(83380400001)(82960400001)(6636002)(478600001)(6862004)(8676002)(41300700001)(8936002)(6666004)(4326008)(66556008)(66946007)(316002)(66476007)(6486002)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?g4FA33GJzlLe1lz7Xe6hXqwivYuS20b4HEFhYQal9FNqjd+Y1Bme5hJcp+aJ?=
 =?us-ascii?Q?W3xTcfV+JlEq9uqGMA2Dx9jmJS2ol4wJtOkj/5crxk1N3TV6xl6GD43dBvdO?=
 =?us-ascii?Q?f6P8Fd3XCf5wQcnT/e/PhZBCdg4/0oTtLWVsLcEpVcPAH8ZdLKWse95iHk5R?=
 =?us-ascii?Q?cbavrqRN643l6KMdRlwg3AhNYVxT0FgXDm7agE/uP56VXd8Pz90gVt7jpBlb?=
 =?us-ascii?Q?6IUfB0GgVNmP52NS7MgEc7ZOk3EOKfMAx88vHHBN1kLhmenTp4VnhdN8C4lc?=
 =?us-ascii?Q?blUpHCwqEs7rxWwDmK7koppDz4ntDROO7CD9DxBGVSiD3ec9DsKuxM9Xa7FW?=
 =?us-ascii?Q?VwAuSJ33cznTBjBCrethVNnHY8PgnWg5jtskpNg+YKUWOjuQVzM9RSGFmszs?=
 =?us-ascii?Q?FpwlOKfxW70LSW5guZB4OVXwCRIiHHeDNY0Fcg2/o0xovd+x2cd1AfWAiEt4?=
 =?us-ascii?Q?sQGsX8vGmhuf8lyUSzvhgKuhOOMPuQVEHMyfH0Rb39ywb0q8muvnhLK8L6Jt?=
 =?us-ascii?Q?oUHRzgTQyqKeCsEb0BYQ7W9HvvP9fgbhBN6HITJF2gWE26qttTe5qXUeqDex?=
 =?us-ascii?Q?FaVFWq14Vb/2yLwU4DhWBRDIuBDk+0t8aTpY4peBzsiwcTAYPHfeGU9lqhGG?=
 =?us-ascii?Q?qBduxBOtTi08u1aSSqznccqrEiO+zF8an1k/qjKNZ0Da1AhmDj5sRX0cY9VX?=
 =?us-ascii?Q?dRgkYeHUS0tG7Rat596iKR3UFzCxEnsigBdeP4EkqE6mqWI9SG5Cc9m51Byn?=
 =?us-ascii?Q?YRoSKn3iHQDdMwaV3zq3IRyNDFx20NSnPLlUGdx3FlMoKoB69FiA5mHkk03v?=
 =?us-ascii?Q?O0t+7TX9zmjKolQToEJmZuY0f5MM7/18X6e6AFkNVsqzLPnG5Z3yK6/yeCq8?=
 =?us-ascii?Q?UYiUcIA56ZSVySCZ8tZHohaxqmdarvaNFxMOKvwfb390otrDMSvM6YR0+oxC?=
 =?us-ascii?Q?G0fiv9aOOUQ+HnN1y3emAQMGH/juGzFKMSuOWa9D5EID5MvMhEcjPmixgI2g?=
 =?us-ascii?Q?EALqmac8CVzlwaqVoDCxrXyNhJPmXOamrrTwGZ0X1WMSBis1JUbQEJpEj+s4?=
 =?us-ascii?Q?9CpcogzW8GoWs1shnIbZXfkmGe98QuF0V/aGZxfS23KFVSLeRN700icj13F0?=
 =?us-ascii?Q?u6GZXfeLSKSWaTyxuWQCYpSYBadZXbFRbnzFJMDAxYhztN8JtcaymKAPUfHw?=
 =?us-ascii?Q?E14IuGnzalPKTGG1OF18lKjiif8BabjEfs3ZWBizniXNWrTx21/qFqMtrqpM?=
 =?us-ascii?Q?7WmKLtegerFXJN4GlX2HzUHoxV0GhJFKO6n1Gz96oFnOO+XXq1ww6xhb76f/?=
 =?us-ascii?Q?mzeBpmWxRxjrlsUhGZfePdcssLn7rWnUwi18iEt8LF4IS9dpcpylZ2IyrKCn?=
 =?us-ascii?Q?vD/+oBMtbhc1i4KCgYWA+8k5E460PcTxneDGqY3I987oWGxVgAw6g3rzhJYq?=
 =?us-ascii?Q?G2xMhkr8iqEsAJFbPf6AdvxchMpDS8i2UCtQqvm2mIea0Htqn00VhfipcSwv?=
 =?us-ascii?Q?k8APKH22CmfUhNpP9Q26TgCEBgLu9kLbzLZsEgl3emL19R6M6qnq5VII0C49?=
 =?us-ascii?Q?Z7cWlKWoOEsfI8+mO9TA3pHfSvNX8mlInYhN/B+Y9+eYyZRl1LfePdtpR43w?=
 =?us-ascii?Q?7g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d474daac-84d6-4364-a4a8-08db533ae2fc
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2023 22:47:38.8263 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p7e3Hzu1AVJuJE4GgEQ9VsnPnchKLrytvbMgQ+w7zi6AuX0INPxlWnbOXJYsj4ZrCAcb71DkJWlnSGQ10sTwOyAMbfb/PGtSTHvtIT8a7/8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4966
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: RFC: Introduce Wa_14011282866
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

On Wed, May 10, 2023 at 02:58:11PM -0700, Matt Atwood wrote:
> From: Tilak Tangudu <tilak.tangudu@intel.com>
> 
> Wa_14011282866 applies to RKL, ADL-S, ADL-P and TGL.

Wa_14011282866 isn't a valid workaround number.

> 
> Allocate buffer pinned to GGTT and add WA to restore sampler power
> context.
> 
> Bspec: 46247
> 
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>

These lines are backward if Tilak is the original author as shown above.
From Documentation/process/submitting-patches.rst:

        "Any further SoBs (Signed-off-by:'s) following the author's SoB
        are from people handling and transporting the patch, but were
        not involved in its development. SoB chains should reflect the
        **real** route a patch took as it was propagated to the
        maintainers and ultimately to Linus, with the first SoB entry
        signalling primary authorship of a single author."

> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h   |  5 ++
>  drivers/gpu/drm/i915/gt/intel_rc6.c       | 88 +++++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_rc6_types.h |  3 +
>  3 files changed, 96 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index b8a39c219b60..91cbdd24572f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -48,6 +48,11 @@
>  /* RCP unit config (Gen8+) */
>  #define RCP_CONFIG				_MMIO(0xd08)
>  
> +#define CTX_WA_PTR				_MMIO(0x2058)
> +#define CTX_WA_PTR_ADDR_MASK			REG_GENMASK(31, 12)
> +#define CTX_WA_TYPE_MASK			REG_GENMASK(4, 3)
> +#define CTX_WA_VALID				REG_BIT(0)

This register isn't at the right place.  Also the bit definitions are
missing a couple spaces before the bitfield names.

> +
>  #define RC6_LOCATION				_MMIO(0xd40)
>  #define   RC6_CTX_IN_DRAM			(1 << 0)
>  #define RC6_CTX_BASE				_MMIO(0xd48)
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index 908a3d0f2343..9589af2e8ca3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -12,6 +12,7 @@
>  #include "i915_vgpu.h"
>  #include "intel_engine_regs.h"
>  #include "intel_gt.h"
> +#include "intel_gpu_commands.h"
>  #include "intel_gt_pm.h"
>  #include "intel_gt_regs.h"
>  #include "intel_pcode.h"
> @@ -38,6 +39,7 @@
>   * require higher latency to switch to and wake up.
>   */
>  
> +#define RC6_CTX_WA_BB_SIZE (PAGE_SIZE)

Do we really need this?  It's unlikely that we'll wind up needing more
than a page (and we're not even trying to check in the code below either).

>  static struct intel_gt *rc6_to_gt(struct intel_rc6 *rc6)
>  {
>  	return container_of(rc6, struct intel_gt, rc6);
> @@ -53,8 +55,86 @@ static struct drm_i915_private *rc6_to_i915(struct intel_rc6 *rc)
>  	return rc6_to_gt(rc)->i915;
>  }
>  
> +static int rc6_wa_bb_ctx_init(struct intel_rc6 *rc6)
> +{
> +	struct drm_i915_private *i915 = rc6_to_i915(rc6);
> +	struct intel_gt *gt = rc6_to_gt(rc6);
> +	struct drm_i915_gem_object *obj;
> +	struct i915_vma *vma;
> +	void *batch;
> +	struct i915_gem_ww_ctx ww;
> +	int err;
> +
> +	obj = i915_gem_object_create_shmem(i915, RC6_CTX_WA_BB_SIZE);
> +	if (IS_ERR(obj))
> +		return PTR_ERR(obj);
> +
> +	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
> +	if (IS_ERR(vma)) {
> +		err = PTR_ERR(vma);
> +		goto err;
> +	}
> +	rc6->vma = vma;
> +	i915_gem_ww_ctx_init(&ww, true);
> +retry:
> +	err = i915_gem_object_lock(rc6->vma->obj, &ww);

Nitpick:  Can't we just use the shorter local variable 'obj' here and in
the pin_map?

> +	if (!err)
> +		err = i915_ggtt_pin(rc6->vma, &ww, 0, PIN_HIGH);
> +	if (err)
> +		goto err_ww_fini;
> +
> +	batch = i915_gem_object_pin_map(rc6->vma->obj, I915_MAP_WB);
> +	if (IS_ERR(batch)) {
> +		err = PTR_ERR(batch);
> +		goto err_unpin;
> +	}
> +	rc6->rc6_wa_bb = batch;
> +	return 0;
> +err_unpin:
> +	if (err)
> +		i915_vma_unpin(rc6->vma);
> +err_ww_fini:
> +	if (err == -EDEADLK) {
> +		err = i915_gem_ww_ctx_backoff(&ww);
> +		if (!err)
> +			goto retry;
> +	}
> +	i915_gem_ww_ctx_fini(&ww);
> +
> +	if (err)
> +		i915_vma_put(rc6->vma);
> +err:
> +	i915_gem_object_put(obj);
> +	return err;
> +}

Where do we clean up all the stuff done in this function?

> +
> +static void rc6_wa_bb_restore_sampler_power_ctx(struct intel_rc6 *rc6)
> +{
> +	struct intel_uncore *uncore = rc6_to_uncore(rc6);
> +	u32 *rc6_wa_bb;
> +
> +	if (!rc6->vma->obj)
> +		return;
> +
> +	rc6_wa_bb = rc6->rc6_wa_bb;
> +	*rc6_wa_bb++ = MI_NOOP;
> +	*rc6_wa_bb++ = MI_LOAD_REGISTER_IMM(1) | MI_LRI_FORCE_POSTED;
> +	*rc6_wa_bb++ = i915_mmio_reg_offset(GEN10_SAMPLER_MODE);
> +	*rc6_wa_bb++ = _MASKED_BIT_ENABLE(ENABLE_SMALLPL);

This isn't the only register/bit that we're attempting to program
(unsuccessfully) today; we need to handle all of the programming that
targets the affected TDL registers such as Wa_1406941453.

Rather than including specific register values here (with no explanation
of why we're even programming these), it would be better if we could
just place these in the usual locations where workarounds and tuning
settings are applied.  Then have the code here walk the workaround list
looking for any entries that write to a broken register; if any are
found, add them to the power context batchbuffer here to restore them
manually.  That way the registers/values are clear because they're
implemented in the same place they are for every other platform, and the
code here is future-proof to catch any other uses of these registers in
the future.  You may need to adjust where this batch buffer gets built
to do that (since I think the GT PM init happens before the WAL init).


> +	*rc6_wa_bb++ = MI_NOOP;
> +	*rc6_wa_bb++ = MI_BATCH_BUFFER_END;
> +
> +	i915_gem_object_flush_map(rc6->vma->obj);
> +
> +	intel_uncore_write(uncore, CTX_WA_PTR,
> +			   REG_FIELD_PREP(CTX_WA_PTR_ADDR_MASK,
> +					  i915_vma_offset(rc6->vma) & GENMASK(19, 0)) |

This isn't what we want here; note the "Format:" label on the register
bitfield...the value that you pack into bits 31:12 of the register is
supposed to be bits 31:12 of the address.  I.e., the entire register
should effectively be the address, with the valid bit OR'd into bit 0 at
the end.

> +			   CTX_WA_VALID);
> +}
> +
>  static void gen11_rc6_enable(struct intel_rc6 *rc6)
>  {
> +	struct drm_i915_private *i915 = rc6_to_i915(rc6);
>  	struct intel_gt *gt = rc6_to_gt(rc6);
>  	struct intel_uncore *uncore = gt->uncore;
>  	struct intel_engine_cs *engine;
> @@ -103,6 +183,11 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>  	intel_uncore_write_fw(uncore, GEN9_MEDIA_PG_IDLE_HYSTERESIS, 60);
>  	intel_uncore_write_fw(uncore, GEN9_RENDER_PG_IDLE_HYSTERESIS, 60);
>  
> +	/* Wa_14011282866 Restore sampler power context */

We're inserting this into the middle of a numbered sequence.  I'm not
sure where that sequence comes from, but putting it here makes it look
as if this was part of step "2c: Program Coarse Power Gating Policies."

> +	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915) ||
> +	    IS_ALDERLAKE_S(i915) || IS_ALDERLAKE_P(i915))

If we're using a long platform list like this in multiple places to
implement a single workaround, it's generally best to make a dedicated
function for it so that any future changes to the workaround bounds can
be adjusted in just one place.


Matt

> +		rc6_wa_bb_restore_sampler_power_ctx(rc6);
> +
>  	/* 3a: Enable RC6
>  	 *
>  	 * With GuCRC, we do not enable bit 31 of RC_CTL,
> @@ -610,6 +695,9 @@ void intel_rc6_init(struct intel_rc6 *rc6)
>  		err = chv_rc6_init(rc6);
>  	else if (IS_VALLEYVIEW(i915))
>  		err = vlv_rc6_init(rc6);
> +	else if (IS_DG1(i915) || IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915) ||
> +		 IS_ALDERLAKE_S(i915) || IS_ALDERLAKE_P(i915))
> +		err = rc6_wa_bb_ctx_init(rc6);
>  	else
>  		err = 0;
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6_types.h b/drivers/gpu/drm/i915/gt/intel_rc6_types.h
> index cd4587098162..643fd4e839ad 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6_types.h
> @@ -33,6 +33,9 @@ struct intel_rc6 {
>  
>  	struct drm_i915_gem_object *pctx;
>  
> +	u32 *rc6_wa_bb;
> +	struct i915_vma *vma;
> +
>  	bool supported : 1;
>  	bool enabled : 1;
>  	bool manual : 1;
> -- 
> 2.40.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
