Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF887A878E
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 16:51:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B42E710E4FF;
	Wed, 20 Sep 2023 14:51:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7120A10E4FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 14:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695221467; x=1726757467;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=VHrJW/Oj4nXY4M67Xy06umUislR5NEJULuHVCn1C1NU=;
 b=iehbMA5rg276QX+2we2Gq/uM4OWB7V/KsfMgFvSXqDlqayIGGEixLvT/
 7wJY42yWrhdxjdbZhmpUDHO2j+LhTQXQWrPGYw5mMdkYyoLyQMj7VYR9K
 9dSB7Ng6OdZY3cRcmm3rMXIoRGKrCCwzQA7VKQ9OJIKSjIEQVKrdPivDz
 1FpnHZ4tMJcNylV9JD0UWFRgtHIQfnYfTkYcXQoa2skBZc3PUja32t2N8
 Urfbj6WzvROtgg/quw0/mZ0H3LI389HDM1H/tFYFwS+1wIWQzzYYeLsDI
 4g6BoFF9zaSw+e3k4O/AEcfN8DdeKtqTBHzSwTD2SdQpslrDGdQHpTwBW w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="384083932"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="384083932"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 07:51:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="870404410"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="870404410"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Sep 2023 07:51:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 07:51:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 20 Sep 2023 07:51:06 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 20 Sep 2023 07:50:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e9RWVLKzg8qvxhHRaCK11FcVgnWGDyObZwQIW6+dZkpDss4RZYYP7aYaz/i9Dqr/atv0cpTEFGldKbqdX5O8GWQiX5FaA2DHYkhYhKGopu/maRpwp3U71mxo1KxgDzSTAx+nWY1gxEoyG3Zz/HWHxQjo3kDlyYQ4UAm/0H788LsWMPKdOtQwwxo4NPoW19WeR4ZaDvzBqdvVB6rBJk3roGcwCWCzKbj2CtxcI1ZGLvIZjdcx9blBf514ec+DxobdZv77z880PEUXlOw5AHxPLc/ryMBSs7kYLJB4MiCB+CSNPAgHAfGEuLHEY6rx+zUb1pMRYNaKo8V2Z8gJ17Tk+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oOFT/xDaxUkV+kSM2erK231eywspqxrgx2JOclqPBjQ=;
 b=NYiTRTNQ9Gtj+rx1c9OF+2OJW4Vk9uq12ri7zzv3Ccbn5FOtSU04djM5AEU1JF5frZq44c72E1hKS8nbTxbZ0zu1GX/S8g7tPRQVy2e95yVzkOLfvwk77UuHCPbR9GDzfkQ91T5Jb85FNHjj/Z8caUw1/qOpDojpv7GgvK9J2paJlGiApF0EnKpYryL/NjLkmyUR7pe396t7AQXPBcw3tCsjsCpU+WFkrq6ds66gkXLr4YIKEzjNcuVq7br/JA3IPpXuyLg2aY9q+TuzX+4AyPnmiua8RRors7cN/SQJar5fT70N+P/Tnb0QfoMTww50b49FmhZ4HurJaayGngsB/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by LV3PR11MB8603.namprd11.prod.outlook.com (2603:10b6:408:1b6::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.20; Wed, 20 Sep
 2023 14:50:54 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593%6]) with mapi id 15.20.6792.022; Wed, 20 Sep 2023
 14:50:54 +0000
Date: Wed, 20 Sep 2023 10:50:48 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Message-ID: <ZQsGyDufT6Ohb9J+@intel.com>
References: <20230914183249.2505085-1-jonathan.cavitt@intel.com>
 <20230914183249.2505085-2-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230914183249.2505085-2-jonathan.cavitt@intel.com>
X-ClientProxiedBy: BYAPR07CA0099.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::40) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|LV3PR11MB8603:EE_
X-MS-Office365-Filtering-Correlation-Id: 02541b87-77a9-40c5-43f3-08dbb9e8fdce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tSgeqIqgs9k03DrV/rg62ptj/EnPxhvMtZC4bwq6Nrh6Th68JdxT6WIdgLsJ/ALJdK5fn/6jMpj5YAQHMCocpaz5qMMuvH7KqxtBlkEV62hA/1PmrSBwoKRJXTIPHatFOBCGOIKxwGjFW3xTcsBSMxkVu8cB+qRZHePayNG0w5Wrd4hlg426KEeS1afAWVzRkpSd3xAH7iwKEvDALAPbR+vFMLE5H0/15X5UgsyXA20r1vvlFCdI3dGN/FUUs4w70v8Mvqr3vRDyN9DTr7lxVXGniDxKOaidAXrzStQyQKRcYf5uD4JUa9RwE4pkRDcwvElS/cyuoNtRBs8pVPowHyn1uTQxLbqQ+fLLgSCyO04ILVRpXlVvqGw3VsJ8t1wag1afoh/rSxzyNiKFgLCAGePdYdVEJE/Iybk8wee8908znPP0h2Buk9fbJI52kfdGCymnMtgEcdFwC0BVyd/WtJ7Y8UkG/Ti7sqBEpTVdk79FvbwK/SpxT3TH/Y9EqOPxglvijM37d7Bmpcqk7GLrlGQYyRg7S+hSerT+NfIMAee2hXX5hzyfUYX0lzFQy55f
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(376002)(346002)(366004)(396003)(451199024)(186009)(1800799009)(6666004)(6486002)(6506007)(6512007)(478600001)(83380400001)(26005)(107886003)(2906002)(2616005)(15650500001)(316002)(41300700001)(37006003)(66946007)(6636002)(66476007)(66556008)(8676002)(44832011)(6862004)(5660300002)(4326008)(8936002)(38100700002)(36756003)(82960400001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NtTPgJXWSTFV179pKgv6qcijgxmgjPNQ4Ve9BfeU7a8/X3DYaOLnxrd0J+RD?=
 =?us-ascii?Q?MU3WKlmnnLU7Ft1P02PClSPUq7oS8oYHW4rJWbl4lQkgXiFEyA9obHaCsjYe?=
 =?us-ascii?Q?KVQZL59SBSUOmPcIpBkl3zuaz4wxMU6p+G5NvUd1AKv5SxSvbI0kOopFmdAW?=
 =?us-ascii?Q?+VsCKItQSooZJAU1q+fd5Sz+iEyYnLsEoRzdj7BZnl+lyL5EBT2GcqrUwXSp?=
 =?us-ascii?Q?qbUN/t5z9nwcD+wzJV096DVHMgPNtlmDZ7UmFd3F0S2RqjNW/d32HBt9wxHr?=
 =?us-ascii?Q?WMpua9TMFafqCXUyz5rbKM88Hb437TZ+m3lz43zAdNy94MuDRn9cMIaFDhpT?=
 =?us-ascii?Q?rYz66bdOYRzM+ApDYoSDFwft379LWrutM/P2KXpIjQjSPZIp0nkek+6KPhju?=
 =?us-ascii?Q?nhfA5oc5mErtzT3EbjkXebgIid3K8Tc/BoUseVZx0acA7FyKFaLyNxSyJVr/?=
 =?us-ascii?Q?nloh4W9OziJmuqOOmd9qAkJrJvq51eJi7z8VeBhngzAoSPyLzzZ4ViaLXin2?=
 =?us-ascii?Q?kdxJhYUfccvXX9orAg4TrqNkItfDf/dcGd+bcCefmV0CtZJH0k7ZM3yKcbn9?=
 =?us-ascii?Q?TVP9yhjtbLOkhuFvLPXfO/5N8l8e+5uTlrY7VXkPv1Pu4UCWrJ+7n8T79Cov?=
 =?us-ascii?Q?14j5zmGQWGtFJ2bezWqVee+tjINEofV5ChKPr8DKPHSib9jtTigZFnBRO8CH?=
 =?us-ascii?Q?KSJmPqSZ8g5jIn4Z7kKzVg5MvynzCP1MuxUSrXG3gROoxGtgdTqQysbZFG6L?=
 =?us-ascii?Q?z6BUmFuZTBmA0trShLNEbd/9xjwNNNiVtGGq1C73SlzGlXD/JqpboipksI9q?=
 =?us-ascii?Q?UOqW5YtPrBorseqQPdBHmqO9xp7nbgRyEsAQTCpOdVGHb+5qu4wdPhQrC3hs?=
 =?us-ascii?Q?8w3rB7N4GbOCoKV1NsqIFvcr8RiV9H0WDr61of6m1ph1YC+zSY9nhOL+U0Dc?=
 =?us-ascii?Q?jzRIcFmSwfKugZay6tgbpejliLNs1lsOr9sOvMv7SBFvixuY1vNovmtB5QY1?=
 =?us-ascii?Q?/JDBxIEIvx/6ChqJdnanvWZ950OG6vtJsGwYInqfFdFm5Skyjfsnyn3DCf2E?=
 =?us-ascii?Q?qvcVfOlLCuU523+TD33WmVaKebdxWSNHVE0s9B0GNjR7R1nrrqOxylRhQnwy?=
 =?us-ascii?Q?t0ndyCmuHYLb6vk336RusFxlzkc2A3dRE6roeWKvuqNubOObSE/WuV0dG+Js?=
 =?us-ascii?Q?FlVTWMqqykJTgkdBqdu2dsvynh2iIn0QF+b911RMf4AqBdtKDLEBBsEdy2fw?=
 =?us-ascii?Q?IInfnudXoBfa+U97+wqFeBQbY8j+BD5OdtDa1Y6/BE6H1cg/8aUlqskWxLf3?=
 =?us-ascii?Q?IPlfdTFfHSA8vG7i1S1yq30VtBZGmdx5WPjo6C8MlOBYBFdBR0uzKRU6iDv8?=
 =?us-ascii?Q?JyzYJYDg/WrKPYt5Gk4H0pda8GhvEWbO73OaquRWbnRButvvxfbJqlCoHLK3?=
 =?us-ascii?Q?dAD3+obkH8W6FwHDILctfYXA6UkNK8NDcZnvSDv+krjrmRexFK2Rmuze1Mqn?=
 =?us-ascii?Q?tyoQRSQlFcdCU1OY8acnRkdfOVw3oEzgQUEjL1rJP9OkxVavA6K3SZiQiwg2?=
 =?us-ascii?Q?jjkR75TogflB7WaErqI5tXbpoNwH3Z198gx4STTl?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 02541b87-77a9-40c5-43f3-08dbb9e8fdce
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2023 14:50:54.7824 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eHxh6XtMrIxsSTq/TedlpfGYbsElCftNfPxvFWuNp+kf/UY/mrmCY2jcn24aT6tKs93Tmt/lraPq4eUr9txt/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8603
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/uapi: Enable L3 Bank Count
 Querying
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
Cc: adam.cetnerowski@intel.com, intel-gfx@lists.freedesktop.org,
 michal.mrozek@intel.com, slawomir.milczarek@intel.com,
 james.c.wright@intel.com, bartosz.dunajski@intel.com,
 matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 14, 2023 at 11:32:49AM -0700, Jonathan Cavitt wrote:
> Extend the query ioctl to allow querying the count of the available L3
> Banks on a given engine.

Why do you need this? Who is using? Where's the pull request for the UMDs
and IGTs?

> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---

Please never send a cover letter with a stand-alone single patch.
Specially in this case where the cover letter is not bringing any
additional information. But even if you had enough information
it should be added here, below these '---', after the format-patch,
so it gets to the email without getting into the patch itself.

>  drivers/gpu/drm/i915/gt/intel_gt.c      | 26 +++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_gt.h      |  3 +++
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h |  1 +
>  drivers/gpu/drm/i915/i915_query.c       | 34 +++++++++++++++++++++++++
>  include/uapi/drm/i915_drm.h             | 15 ++++++++++-
>  5 files changed, 78 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 449f0b7fc8434..865854c76c375 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -884,6 +884,32 @@ static int intel_gt_tile_setup(struct intel_gt *gt, phys_addr_t phys_addr)
>  	return 0;
>  }
>  
> +int intel_count_l3_banks(struct drm_i915_private *i915,
> +			 struct intel_engine_cs *engine)
> +{
> +	struct intel_gt *gt = engine->gt;
> +	struct intel_uncore *uncore = gt->uncore;
> +	intel_wakeref_t wakeref;
> +	u32 count, store;
> +
> +	/* L3 Banks not supported prior to version 12 */
> +	if (GRAPHICS_VER(i915) < 12)
> +		return -ENODEV;

-ENODEV is the best choice?

> +
> +	if (IS_PONTEVECCHIO(i915)) {
> +		with_intel_runtime_pm(uncore->rpm, wakeref)
> +			store = intel_uncore_read(uncore, GEN10_MIRROR_FUSE3);
> +		count = hweight32(REG_FIELD_GET(GEN12_MEML3_EN_MASK, store)) * 4 *
> +			hweight32(REG_FIELD_GET(XEHPC_GT_L3_MODE_MASK, store));
> +	} else if (GRAPHICS_VER_FULL(i915) > IP_VER(12, 50)) {
> +		count = hweight32(gt->info.mslice_mask) * 8;
> +	} else {
> +		count = hweight32(gt->info.l3bank_mask);
> +	}
> +
> +	return count;
> +}
> +
>  int intel_gt_probe_all(struct drm_i915_private *i915)
>  {
>  	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
> index 239848bcb2a42..4a05443418efd 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -161,6 +161,9 @@ static inline bool intel_gt_is_wedged(const struct intel_gt *gt)
>  	return unlikely(test_bit(I915_WEDGED, &gt->reset.flags));
>  }
>  
> +int intel_count_l3_banks(struct drm_i915_private *i915,
> +			 struct intel_engine_cs *engine);
> +
>  int intel_gt_probe_all(struct drm_i915_private *i915);
>  int intel_gt_tiles_init(struct drm_i915_private *i915);
>  void intel_gt_release_all(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index a00ff51c681d5..f148bf3dfd4b3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -569,6 +569,7 @@
>  #define	GEN10_MIRROR_FUSE3			_MMIO(0x9118)
>  #define   GEN10_L3BANK_PAIR_COUNT		4

This seems to contradict what your comment above told about gen12+

>  #define   GEN10_L3BANK_MASK			0x0F
> +#define   XEHPC_GT_L3_MODE_MASK			REG_GENMASK(7, 4)
>  /* on Xe_HP the same fuses indicates mslices instead of L3 banks */
>  #define   GEN12_MAX_MSLICES			4
>  #define   GEN12_MEML3_EN_MASK			0x0F
> diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
> index 00871ef997920..bd3e68cf1bd10 100644
> --- a/drivers/gpu/drm/i915/i915_query.c
> +++ b/drivers/gpu/drm/i915/i915_query.c
> @@ -10,6 +10,7 @@
>  #include "i915_perf.h"
>  #include "i915_query.h"
>  #include "gt/intel_engine_user.h"
> +#include "gt/intel_gt.h"
>  #include <uapi/drm/i915_drm.h>
>  
>  static int copy_query_item(void *query_hdr, size_t query_sz,
> @@ -551,6 +552,38 @@ static int query_hwconfig_blob(struct drm_i915_private *i915,
>  	return hwconfig->size;
>  }
>  
> +static int
> +query_l3bank_count(struct drm_i915_private *i915,
> +		   struct drm_i915_query_item *query_item)
> +{
> +	struct drm_i915_query_memory_regions __user *query_ptr =
> +		u64_to_user_ptr(query_item->data_ptr);
> +	struct i915_engine_class_instance classinstance;
> +	struct intel_engine_cs *engine;
> +	int count;
> +
> +	if (query_item->length == 0)
> +		return sizeof(count);
> +
> +	classinstance = *((struct i915_engine_class_instance *)&query_item->flags);
> +
> +	engine = intel_engine_lookup_user(i915, (u8)classinstance.engine_class,
> +					  (u8)classinstance.engine_instance);
> +
> +	if (!engine)
> +		return -EINVAL;
> +
> +	count = intel_count_l3_banks(i915, engine);
> +
> +	if (count < 0)
> +		return count;
> +
> +	if (copy_to_user(query_ptr, &count, sizeof(count)))
> +		return -EFAULT;
> +
> +	return sizeof(count);
> +}
> +
>  static int (* const i915_query_funcs[])(struct drm_i915_private *dev_priv,
>  					struct drm_i915_query_item *query_item) = {
>  	query_topology_info,
> @@ -559,6 +592,7 @@ static int (* const i915_query_funcs[])(struct drm_i915_private *dev_priv,
>  	query_memregion_info,
>  	query_hwconfig_blob,
>  	query_geometry_subslices,
> +	query_l3bank_count,
>  };
>  
>  int i915_query_ioctl(struct drm_device *dev, void *data, struct drm_file *file)
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 7000e5910a1d7..746d427af8e4c 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -3013,6 +3013,7 @@ struct drm_i915_query_item {
>  	 *  - %DRM_I915_QUERY_MEMORY_REGIONS (see struct drm_i915_query_memory_regions)
>  	 *  - %DRM_I915_QUERY_HWCONFIG_BLOB (see `GuC HWCONFIG blob uAPI`)
>  	 *  - %DRM_I915_QUERY_GEOMETRY_SUBSLICES (see struct drm_i915_query_topology_info)
> +	 *  - %DRM_I915_QUERY_L3BANK_COUNT (see `L3 Bank Count Query uAPI`)
>  	 */
>  	__u64 query_id;
>  #define DRM_I915_QUERY_TOPOLOGY_INFO		1
> @@ -3021,6 +3022,7 @@ struct drm_i915_query_item {
>  #define DRM_I915_QUERY_MEMORY_REGIONS		4
>  #define DRM_I915_QUERY_HWCONFIG_BLOB		5
>  #define DRM_I915_QUERY_GEOMETRY_SUBSLICES	6
> +#define DRM_I915_QUERY_L3BANK_COUNT		7
>  /* Must be kept compact -- no holes and well documented */
>  
>  	/**
> @@ -3443,7 +3445,7 @@ struct drm_i915_memory_region_info {
>  	__u64 probed_size;
>  
>  	/**
> -	 * @unallocated_size: Estimate of memory remaining
> +.	 * @unallocated_size: Estimate of memory remaining

   ^ garbage

>  	 *
>  	 * Requires CAP_PERFMON or CAP_SYS_ADMIN to get reliable accounting.
>  	 * Without this (or if this is an older kernel) the value here will
> @@ -3690,6 +3692,17 @@ struct drm_i915_gem_create_ext {
>  	__u64 extensions;
>  };
>  
> +/**
> + * DOC: L3 Bank Count Query uAPI
> + *
> + * The L3 bank count query called through the query id
> + * DRM_I915_QUERY_L3BANK_COUNT and returns the count of
> + * the available L3 Banks on a given engine.
> + *
> + * The count itself is an integer, and since no additional
> + * data is returned, the count is returned as such.
> + */
> +
>  /**
>   * struct drm_i915_gem_create_ext_memory_regions - The
>   * I915_GEM_CREATE_EXT_MEMORY_REGIONS extension.
> -- 
> 2.25.1
> 
