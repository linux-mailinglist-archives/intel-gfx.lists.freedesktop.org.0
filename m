Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E16F67529CA
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jul 2023 19:25:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE54310E737;
	Thu, 13 Jul 2023 17:25:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A4CE10E0AC
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jul 2023 17:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689269130; x=1720805130;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=tlaIGD0AyX5pTTvXCTGyRKg8fr4HuvCROCFM/tLH6j8=;
 b=nqPZIsQOVBEJty56cHiGC654HSEodpGk4ahJs8djaSGVTvonuOVz2awf
 gOznBnWbZK+GiUpH5gTThKB+R55A/rTOMeH2wzk4RamjzKMaP2nz+irvR
 oDXu8WJc41t6RbkbFcUZ7FlWM9TUM94Gu+RH9a0hWROAjgyac5hds2aOm
 cAi+CSr+XJTmhjvlTF3jGYXup7Zq1kpyt4nVrWHfzDS4QbwxpH9UhqwZP
 Fg4plXWo9I5JLTH2cfZahmBDZqmzbShAaZyp0kNlBudeDQNOuKBYFehiF
 mjemU5eszRKqGerhsN4SD+6dXXuIf80irdvPBYJhiDOeNv6x1w8RXTxeE Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="396070404"
X-IronPort-AV: E=Sophos;i="6.01,203,1684825200"; d="scan'208";a="396070404"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2023 10:25:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10770"; a="835681391"
X-IronPort-AV: E=Sophos;i="6.01,203,1684825200"; d="scan'208";a="835681391"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 13 Jul 2023 10:25:29 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 13 Jul 2023 10:25:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 13 Jul 2023 10:25:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 13 Jul 2023 10:25:28 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 13 Jul 2023 10:25:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O+8mEcHkGFU/s4OYGYbyVy2+H1+XMohorXaz6yeftTupCauqWaObqTVgJsrrKejwY7A96vkLb8Wwqjvp+oIpiH8Dpwli3FGhdFcSOcS5514QJZp8pyh+Lqqa1ROUb6x62BDV+BvWtxAQ23B9lj9oZ8y12b4P7uX1LJGVbaElg+mOGBuGBSrnUBPsNn+Y16Xt7vm8i6jAjURSfUl42iy6eb+Z1vapLjIvj415RlHvZ7Cc+pZixS1wHea7lhdbaZmrTc0F/P8MyyEPmXUExTy33T8RrvNyuNNTtQo8XeOdKiaCazzzCjcP4E4bnDH3xdFaT4SiGs5gkkWQVW9k477dRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GVDkqa8Q8Fbw3tYtGEbBV7C7ufCOA9dO659mYe7UDYY=;
 b=PtVXXaG9cDgHdaPeJvxRWR90rmSCV8cJLhIrPLeQbkhk3wr9u8cPD2VgBmxsiVLmf55l6OmVYikQDWhw7M8Vpgid0flRkVIgbzcY/65MFuL6fr+yNrk5jf5HFYI07BuGzZ2N8iAsuSxL5irQoxU/8Gs9OpAIRjE6hxrJAVLVoJTXsiz4h8ahZSWNVkFdjx7lV4O0bkBm1l50uSpd2pufCHsCDFBT538DNYjS6KCS2OaCQpCzXOOd/XQ50kM4O2dAW6rqPNlRe90Da+1otDb+SH/vb/18V9iDuF/gwheNZr/G5XVU2ucArrPKTbvrxgLDHjprhzlWXlEsxz2b/4+B2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 BL3PR11MB6386.namprd11.prod.outlook.com (2603:10b6:208:3b6::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.22; Thu, 13 Jul
 2023 17:25:26 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::e666:2e79:d3e6:67c8]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::e666:2e79:d3e6:67c8%7]) with mapi id 15.20.6565.016; Thu, 13 Jul 2023
 17:25:25 +0000
Date: Thu, 13 Jul 2023 10:25:22 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <20230713172508.GE4889@mdroper-desk1.amr.corp.intel.com>
References: <20230712233415.49012-1-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230712233415.49012-1-matthew.s.atwood@intel.com>
X-ClientProxiedBy: SJ0PR05CA0019.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::24) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|BL3PR11MB6386:EE_
X-MS-Office365-Filtering-Correlation-Id: 03ec8092-e650-4800-d82d-08db83c62543
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4r8RXzLp60CN75pxlJvJOifz13Xih/0n9iyulu6Xz7PPw0yucbK/c0cWUcu9dhjhCTx5S8Zp1vDXm/MwrokxsUy+PEoSag1iKf8HIqMgIwDuVF8Dwz0K0zukLcU40Y9J8zNAoSfPJqZ9xMEpCqZM5tjP15Wg6w2LylydPzRNplrkzAoMDEvRPhqcKkYmXzAmm0EyEY2u1zbiEYbv7pk+WQlaMCK+d7QbSRT/E8vMZnBknAMkI3ELRyDMy2tnMACevtsVPbR3NjoGStkUfbcnCI8TrTohhLtF9+XqPArpMnXs7SlzriMsLHQJvgrund0kL7Tl8UR0BnWDO3SNF8tox357n1KTMJKXQC5xcOpcz+lChYE0E3yHjBBdLvt0Lt9aDvGe51qVQ0iPHfjbOqwdFgkMd+xoQcUvH6sV3FHi1uUo2B4uKnH1x32PYGV3xCusWAcnoufm4F0RGfURM3IjQyMMT7zw6ttyIZP97h7oO3Lyhehr4Fawc6taLysSSE6WRjCFOTmp8NkgcIpoWIv1NuYuYO2JAVk2FZL6LeqnV9Rt4u7QGMu4EVqFhSqfvmQJ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(376002)(396003)(39860400002)(346002)(451199021)(478600001)(6666004)(6486002)(6506007)(186003)(26005)(1076003)(33656002)(6512007)(2906002)(66476007)(66946007)(41300700001)(8936002)(316002)(5660300002)(4326008)(6636002)(6862004)(66556008)(38100700002)(8676002)(82960400001)(86362001)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sLFy9XEHVizP7ewEtvMEo+sQol8TCIwUBvmaTQLdCvxrT/q5N0BnOdYIGao3?=
 =?us-ascii?Q?n+2rpFOn334mMwq02ruoqGgYNLKGXv9C+ozr4vDlj/sOrE8jKrdSfxMK1PCP?=
 =?us-ascii?Q?c+AshUAIQ/2f9ZFB+ioriggxqrFqUtH55sL7A2CVALQS1/TQr00A+GekJyU3?=
 =?us-ascii?Q?jpBSByQvTzfm3dxf1gNe/CquGEdYfvr2ElX5J3U8Fb4mf9JCpb4c0kVb3z9/?=
 =?us-ascii?Q?FqTZeL3BTv3N4FsKJnFFVUMgqcXMSdIT6MhLoPlYRFjEYmA6Z2Eic1IKYxuK?=
 =?us-ascii?Q?+AKvn8M4dsc9vnrQ+1X6YIhPQeIBgZhwhrFv5EXfEQXVvjyIRxwGgrsefV1g?=
 =?us-ascii?Q?4YG6IryxGxJYbRnJs8Yj49C0lrz7yr07mdZF6HTNbfReqk02BCcc18q/v1tQ?=
 =?us-ascii?Q?5WiNPmGXUB2l19n+c/hFrVz29m87nW0INiS7YGBui1KfSXnP2YAzfO17irI3?=
 =?us-ascii?Q?yYoqHM54cM98SImpqFnhWZZvhZklBHs+Y4oK+O0nCi8/sb2n46ypFCWP/c+k?=
 =?us-ascii?Q?3wk0dGY4ciSbfrejNTOtkaug97mX2QXhifojbeHh8CCFEC6H67/j1/IqEaL4?=
 =?us-ascii?Q?lV2Iy2Fyebu+JyLg5E3mJ00osOh1Qq+URDl4D8/SVDoWSGhoBNVxWxblHVX6?=
 =?us-ascii?Q?hylsxU9RsJPT9CIqsSy5WOowt1johVb9g1GFbgM/6w9zfXeSvS2vPRC1zS/u?=
 =?us-ascii?Q?4OLeJlvp1vYN8UFnb46cH5OKnbJwuNHo636snpVLK0/Bn0GNO7ZH2yVT/5bS?=
 =?us-ascii?Q?ijSC9LzWM/SfSeD3zFO4yJMvBkCbfiMHS7hOrAhZfbstGVvxR3wf/mYGwoCg?=
 =?us-ascii?Q?u6VKqwUMQb/sDeC+TfT/N3xANL1eM0INX3r/2Zz/U5/bk+X6aRB263rQkfmF?=
 =?us-ascii?Q?zGZ4vELzhVr38E5uJFfu6vrjDcPRFTb0GNWcDY1rZN+i4Sg6wEyrbIHk2sM3?=
 =?us-ascii?Q?f61cQQYu2gLJ1l7xTOYozyih0wf367eFaBC/8rgCQt7hQXxGO1YGyQwuxrRu?=
 =?us-ascii?Q?sC6Dh3nm4zJbJoa/ERjerGjJd6tgliAbb5ZjdScb/Q4dBuYp8GUK7TofHgSk?=
 =?us-ascii?Q?PQe3kiJfs201Pgx6/uLwHH+RYnzmeBkXnShucGVgvZry2dd0F1wiY2AkeHdJ?=
 =?us-ascii?Q?8IhRgHlphbXhWrlzcpjNEFCWKCeK4wa/w8nruW24GzJ89moCUP+Py+GJa+WQ?=
 =?us-ascii?Q?hIwrYpdYfbmcA2O96sHVdvwmpMb5jQw1NBX2RQ95NZaGv6cuEh2FKpo3gmRj?=
 =?us-ascii?Q?2UNrK771fq8nYjqb4MLI8uhxmkV/nr4wNAZ2DieMvZGmKooWFX8ILlvrsTJK?=
 =?us-ascii?Q?tB8QcIAVZsONE6tCa++JTs0Hj5hWk42aaIdAW49rQR6id+kunB3qRVyJFI7o?=
 =?us-ascii?Q?A5KuD5YJyWUk4kNWBI1QjnVkhX0Q2clbfS6WdE0iVHz2wkX1CA5GrFZ0tYtF?=
 =?us-ascii?Q?1Sm+qF6WyVcYZCXHJaOw9Uc7KfbkbAgTlxV7kgG4oz7TpCTLjs4cC33UgK95?=
 =?us-ascii?Q?zrxybfFlBzuBacsq2D/71d18v1jOsH12exPZVhZw42MGtvovY2yG1xsmELR1?=
 =?us-ascii?Q?jb0H1f2WhjzjoylktIiAKgc8lj4j92wguO9LuOvC/s3DCApE1BzI2xDU5Xk8?=
 =?us-ascii?Q?ug=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 03ec8092-e650-4800-d82d-08db83c62543
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2023 17:25:25.7179 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Cz/qW8IDv5ngR11b0XlUe+MjvpdQA5HWNAT/XN07v2beZa8xBA+aOhbIXpLvYkTxqHAffCOs3eL2cKOHck2/YKlLe9TaJTqzLnopGyO8mHs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6386
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Introduce Wa_14011274333
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

On Wed, Jul 12, 2023 at 04:34:15PM -0700, Matt Atwood wrote:
> Wa_14011274333 applies to RKL, ADL-S, ADL-P and TGL. ALlocate buffer
> pinned to GGTT and add WA to restore impacted registers.

You should explain the approach you're taking to implement this
workaround since someone reading the workaround description isn't really
going to understand how your code here addresses it.

> 
> v2: use correct lineage number, more generically apply workarounds for
> all registers impacted, move workaround to gt/intel_workarounds.c
> (MattR)
> 
> Based off patch by Tilak Tangudu.
> 
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     |  5 ++
>  drivers/gpu/drm/i915/gt/intel_rc6.c         | 63 +++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_rc6_types.h   |  3 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 40 +++++++++++++
>  4 files changed, 111 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 718cb2c80f79e..eaee35ecbc8d3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -83,6 +83,11 @@
>  #define   MTL_MCR_GROUPID			REG_GENMASK(11, 8)
>  #define   MTL_MCR_INSTANCEID			REG_GENMASK(3, 0)
>  
> +#define CTX_WA_PTR				_MMIO(0x2058)

CTX_WA_PTR is a register that exists for every engine, not just the RCS
engine.  This should be a parameterized definition in the engine reg
file, not here.

> +#define  CTX_WA_PTR_ADDR_MASK			REG_GENMASK(31,12)
> +#define  CTX_WA_TYPE_MASK			REG_GENMASK(4,3)
> +#define  CTX_WA_VALID				REG_BIT(0)
> +
>  #define IPEIR_I965				_MMIO(0x2064)
>  #define IPEHR_I965				_MMIO(0x2068)
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index 58bb1c55294c9..6baa341814da7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -14,6 +14,7 @@
>  #include "intel_gt.h"
>  #include "intel_gt_pm.h"
>  #include "intel_gt_regs.h"
> +#include "intel_gpu_commands.h"
>  #include "intel_pcode.h"
>  #include "intel_rc6.h"
>  
> @@ -53,6 +54,65 @@ static struct drm_i915_private *rc6_to_i915(struct intel_rc6 *rc)
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
> +	obj = i915_gem_object_create_shmem(i915, PAGE_SIZE);

Should we be using i915_gem_object_create_internal() here?  This is
something that's permanently pinned and we don't really need a swappable
storage, right?

> +	if (IS_ERR(obj))
> +		return PTR_ERR(obj);
> +
> +	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
> +	if (IS_ERR(vma)){
> +		err = PTR_ERR(vma);
> +		goto err;
> +	}
> +	rc6->vma=vma;

Coding style isn't correct on this line.

> +	i915_gem_ww_ctx_init(&ww, true);
> +retry:
> +	err = i915_gem_object_lock(obj, &ww);
> +	if (!err)
> +		err = i915_ggtt_pin(rc6->vma, &ww, 0, PIN_HIGH);
> +	if (err)
> +		goto err_ww_fini;
> +
> +	batch = i915_gem_object_pin_map(obj, I915_MAP_WB);
> +	if (IS_ERR(batch)) {
> +		err = PTR_ERR(batch);
> +		goto err_unpin;
> +	}
> +	rc6->rc6_wa_bb = batch;
> +	return 0;
> +err_unpin:
> +	if (err)

Isn't this redundant?

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

And isn't this redundant too?

> +		i915_vma_put(rc6->vma);
> +err:
> +	i915_gem_object_put(obj);
> +	return err;
> +}
> +
> +void rc6_wa_bb_ctx_wa_fini(struct intel_rc6 *rc6)
> +{
> +	i915_vma_unpin(rc6->vma);
> +	i915_vma_put(rc6->vma);

Don't we need to put the object here too?  Actually, can we use
i915_vma_unpin_and_release here?

Also, is this function ever called anywhere?

> +}
> +
>  static void gen11_rc6_enable(struct intel_rc6 *rc6)
>  {
>  	struct intel_gt *gt = rc6_to_gt(rc6);
> @@ -616,6 +676,9 @@ void intel_rc6_init(struct intel_rc6 *rc6)
>  		err = chv_rc6_init(rc6);
>  	else if (IS_VALLEYVIEW(i915))
>  		err = vlv_rc6_init(rc6);
> +	else if ((GRAPHICS_VER_FULL(i915) >= IP_VER(12, 0)) &&
> +		 (GRAPHICS_VER_FULL(i915) <= IP_VER(12, 70)))

This doesn't match the platforms that the commit message said it should
apply to.

Also, if we have complicated version checks for a workaround that's
spread throughout the code, they should be pulled out to a helper
function/macro so that we can change the condition in just one place if
the bounds change in the future.

> +		err = rc6_wa_bb_ctx_init(rc6);
>  	else
>  		err = 0;
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6_types.h b/drivers/gpu/drm/i915/gt/intel_rc6_types.h
> index cd4587098162a..643fd4e839ad4 100644
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
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 4d2dece960115..d20afb318d857 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -14,6 +14,7 @@
>  #include "intel_gt_regs.h"
>  #include "intel_ring.h"
>  #include "intel_workarounds.h"
> +#include "intel_rc6.h"
>  
>  /**
>   * DOC: Hardware workarounds
> @@ -3132,6 +3133,41 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  			   true);
>  }
>  
> +static void
> +populate_wa_bb_ctx(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> +{
> +	struct intel_rc6 *rc6 = &engine->gt->rc6;
> +	struct intel_uncore *uncore = engine->gt->uncore;
> +	const struct i915_wa *wa;
> +	int i;
> +	u32 *rc6_wa_bb;
> +
> +	if (!rc6->vma->obj) return;
> +
> +	rc6_wa_bb = rc6->rc6_wa_bb;
> +	for (i = 0, wa = wal->list; i < wal->count; i++, wa++) {
> +		if (i915_mmio_reg_offset(wa->mcr_reg) ==
> +		    i915_mmio_reg_offset(GEN8_HALF_SLICE_CHICKEN1) ||
> +		    ((i915_mmio_reg_offset(wa->mcr_reg) >=
> +		      i915_mmio_reg_offset(HALF_SLICE_CHICKEN2)) &&
> +		     (i915_mmio_reg_offset(wa->mcr_reg) <=
> +		      i915_mmio_reg_offset(GEN9_HALF_SLICE_CHICKEN7)))) {

I think it's more confusing to use symbolic names for things that are
really supposed to be the bounds of register offset ranges.  I think
it's fine to use numeric offsets as long as it's clear what those
offsets actually represent (in this case the TDL power context): If you
pull reg_in_range_table() out of the perf code and make it available
elsewhere in the driver, then something like this would work:

        static const struct i915_range tdl_pwr_ctx[] = {
                { .start = 0xE100, .end = 0xE100 },
                { .start = 0xE180, .end = 0xE194 },
                {}
        };

        offset = i915_mmio_reg_offset(wa->mcr_reg);
        if (i915_reg_in_range_table(offset, tdl_pwr_ctx)) {
                ...

If this workaround winds up getting extended to other platforms that
have different TDL contexts, then it's also more straightforward to just
provide an additional table for the new platforms.

> +			*rc6_wa_bb++ = MI_NOOP;
> +			*rc6_wa_bb++ = MI_LOAD_REGISTER_IMM(1);
> +			*rc6_wa_bb++ = i915_mmio_reg_offset(wa->mcr_reg);
> +			*rc6_wa_bb++ = wa->set;
> +			*rc6_wa_bb++ = MI_NOOP;

You could potentially use a single MI_LRI to load all of the registers
in one instruction.  But if you want to do them one by one, then you
need to make sure you're handling qword alignment properly.  Depending
on how many registers you find in the list, you might end up with an odd
or even number of dwords.  That means you probably don't want one of
these MI_NOOPs inside the loop.

> +                }
> +	}
> +	*rc6_wa_bb++ = MI_BATCH_BUFFER_END;
> +
> +	i915_gem_object_flush_map(rc6->vma->obj);
> +	intel_uncore_write(uncore, CTX_WA_PTR,
> +			   REG_FIELD_PREP(CTX_WA_PTR_ADDR_MASK,
> +					  i915_vma_offset(rc6->vma) & GENMASK(19, 0)) |

These are the wrong bits.  You want the high bits now the low ones.  The
bottom 12 are guaranteed to be 0's (due to page alignment), so the
hardware doesn't need to know about them.

Also CTX_WA_PTR is a context register, but you're only programming it a
single time per engine in engine_init_workarounds.  You need this to be
part of the golden context instead so that it applies to all clients.


Matt

> +			   CTX_WA_VALID);
> +}
> +
>  static void
>  engine_init_workarounds(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  {
> @@ -3154,6 +3190,10 @@ engine_init_workarounds(struct intel_engine_cs *engine, struct i915_wa_list *wal
>  		rcs_engine_wa_init(engine, wal);
>  	else
>  		xcs_engine_wa_init(engine, wal);
> +
> +	if ((GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 0)) &&
> +	    (GRAPHICS_VER_FULL(engine->i915) <= IP_VER(12, 70)))
> +		populate_wa_bb_ctx(engine, wal);
>  }
>  
>  void intel_engine_init_workarounds(struct intel_engine_cs *engine)
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
