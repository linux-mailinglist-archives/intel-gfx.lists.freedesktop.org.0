Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C22BD987A25
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 22:40:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5076110EBD0;
	Thu, 26 Sep 2024 20:40:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bf87nXSA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77C7910EBD0;
 Thu, 26 Sep 2024 20:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727383241; x=1758919241;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=DkVjtq+vy+glIGCfpah5tRXbZB8+1/YSHC7soJZLIeg=;
 b=Bf87nXSAEgHvqpT05OZvNVaOOgM8itJgwmtx/syAkDLuM6yvjCns26WZ
 9ARFI7pyAQJdoDwMvXHORrI/uIhkbWBR2YyT71192TTbPOx553kFXImZR
 CuSTlUOE2Le96Mht/45IHTYnJMtjcKzd/++k+Mmx/e3kruidSuUZBOE8L
 u9SM8oNPsNA24l0xc8B1k0R5KqL3YZ6xXQvaGEtPa7C+Uc6k4+nqFJMEP
 hKvqKCA4aVHwyXfsvtMzc1FPvF34DApYbhtCmkZLlojvA/a/XOx8rfjGf
 laBy4i0+FBz89tof86OpyI7717ZhlT8R3TkB9O9E/LHk5D0SJtfhS78oQ Q==;
X-CSE-ConnectionGUID: fmBLYPX7TF2sYWWVrkXveg==
X-CSE-MsgGUID: bk3o/rGASU6A9s2TibmLIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="37095077"
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="37095077"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 13:40:40 -0700
X-CSE-ConnectionGUID: i8WvUfm5Rkm1yxMKgnp8bg==
X-CSE-MsgGUID: vdNj46oXRXedTW4M0+6Xcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="103102469"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2024 13:40:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 13:40:39 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 26 Sep 2024 13:40:39 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 26 Sep 2024 13:40:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b7Ct9gxtJumR0hBIhajfl1Ki5q3zRCuyziXfADKEyhFYUCRoP4WZuQ3LfexSG9qguNH9VF04HYf/A86PzHL23+pJmd2kv0m8Nay9DGyZAUdiRfpToRM7hwJm4YwzVSuIGzF09yTYnREr0xRswHYJmu7adTPH5WMtkcl5p7YSVxKBzKDhLqv5KjVBPOKFHYs9Qvc8ZJDEtbbiMkYr/StgbUdxwVVer782IIOSjIKVF/wOK+5dJWZgyuan4fkSbKDO04Q4Wk4AYJWvtuhC86NAwr18VwWJ4ngLSeQxnelnqVJZKrXKGo3kwP6uACuYGYgVr68w8GqyzwGJFpdML6xG/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cfxUql+OK9w6fI8x4U12umryFH0ldCM+Nw5ftBcMpB4=;
 b=CAQk4Vpde3A5cCWUf1rdBb9UOy2+0bhKqc/I+2lDdoE54+AakGk3n/jEGAydjV/fexUnE+jLUyVKbzYTNy0zBULxt8z+82+kUaOFqCYJuAxA96Lk21xSGgAvH6AQgYsf0RCW9AsKQuLhgPXw0dcghO9/Mt8JkDHh/N3r9Y7ifj3e0e6zzy0KIdga40cRu8ClaSmKKvEy82VjF3j2CLOK7/8bKj4tWucpc86EF5Cuj1GlAyO/5+xOgAx9HZG03S0wVuO/NRuADadZQ3ejmNi5x/+1pL4IMVvnjkOXOIzDaYm4baMDY2+3iP720UzPWJ9MWD4UY0c4zBHIUo1TAyizDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by LV3PR11MB8531.namprd11.prod.outlook.com (2603:10b6:408:1b6::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.26; Thu, 26 Sep
 2024 20:40:36 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Thu, 26 Sep 2024
 20:40:36 +0000
Date: Thu, 26 Sep 2024 16:40:32 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>, Anshuman Gupta
 <anshuman.gupta@intel.com>, Andi Shyti <andi.shyti@linux.intel.com>, "Nathan
 Chancellor" <nathan@kernel.org>, <stable@vger.kernel.org>
Subject: Re: [PATCH v2 1/6] drm/i915/gem: fix bitwise and logical AND mixup
Message-ID: <ZvXGwFBbOa7-035L@intel.com>
References: <cover.1726680898.git.jani.nikula@intel.com>
 <643cc0a4d12f47fd8403d42581e83b1e9c4543c7.1726680898.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <643cc0a4d12f47fd8403d42581e83b1e9c4543c7.1726680898.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0027.namprd03.prod.outlook.com
 (2603:10b6:303:8f::32) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|LV3PR11MB8531:EE_
X-MS-Office365-Filtering-Correlation-Id: 712049f4-a62d-4c0f-e944-08dcde6b79b3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?hZa3hbL+XyI5RXeG1qUaQb7vAmw3YwQopKlkKLnI1OCTab32qO6e68Ok2rrG?=
 =?us-ascii?Q?WueT/rL7fpwCugAODYiBVK9EFer52g/0Z5yU8UTp996vMF5cn9p66DxHrPJo?=
 =?us-ascii?Q?gmOGPq6VvLjdxFcvqLrj/tboZrZ5pqupqx9KjmG8Sd8NGO4Xrcl+W6/K1viq?=
 =?us-ascii?Q?XihalrP7gmsvWmH8/h1fq2VaGZJkdU8//emT3r5FYHdDPWLumYvJtYF39PwW?=
 =?us-ascii?Q?/2S6/YoLC1L4f4Vd0OM25Hu0gY3JxR+gnbvWy+ey5gD24i0AWxNFEr920yRf?=
 =?us-ascii?Q?DTg1a8R2JlZ8xgHvCsKu89pUgzAWIxs5KQ5XM0ou0sM12B4qN/nxQGiTFJFb?=
 =?us-ascii?Q?GwqQJbv9U1pNjd9GLlkd5aLaQw6ZKDIxYFWIMo6A0i1OImkS3OjgeQW/LTc5?=
 =?us-ascii?Q?GC7ahzBc5UW0f+KxOJOmltbN6zlOtOdibVCf6zJSgeOdoXwApa4vBgh4hgPw?=
 =?us-ascii?Q?qDgYqFftFk9ehIJ5OUxInXQexF9h+IH3U3tmGXZk17i8crpj9+p3r1BYoi9j?=
 =?us-ascii?Q?tEHNkXKvZpecMdoBad210RDlN01HLrpH4peXqqYwumUM/VzL4NUGz1EznC2P?=
 =?us-ascii?Q?hNC8poqlG6EMnDYSQD/oCHBUyH9w+JEDCI/zaF1HrCnzPHoi3WI2P8zoOGev?=
 =?us-ascii?Q?I4/AXviGHqC1o5v+cDw2yKGoT8Pv87ej07tbJYbIFg+SLKe3O0CF1Sz2kRDE?=
 =?us-ascii?Q?1nZD+BJaFmY+lv5BkFf3H7nn4L13nN8dvPSdA7Nac9wjjlohE1yu7j62PQYX?=
 =?us-ascii?Q?ZbyzVmKEZrsUCB3KpQH4r09bvGJSHcyRiD0fw8Latj5AByzft8m9d/+8VzTp?=
 =?us-ascii?Q?iRb+Gj7QU0h3b42o81w7lQfKMRp4zLj0URx7mURXBtMxbz1nfsrACduUv/OR?=
 =?us-ascii?Q?7e5O/XHwafOWO3Z+v0EHO/vQd6P85v0G6zCLlXuKi2/9CWRtMEyPC768MYds?=
 =?us-ascii?Q?wGsj1E18MUCG7B5melVwHXjJDpQHhj5r18ijSxoBDC6E2IezDy+b5oSd/WGV?=
 =?us-ascii?Q?OQIj/xzEgCvOJG5oLFrl4cee/Xz2jR9JOvKzR4ZLkddtctEOzgDUnmycH6uJ?=
 =?us-ascii?Q?YEI0Bm1XcT40X4vVth9GqgIZ+3dO9Sy/uvXjCwyus71P9Tl2rHga2AAPWEqu?=
 =?us-ascii?Q?y7PKPd1kxdmbCAlSgCd51MEqAZbHVCrYMluHZXthRBzePnGEXpopEWhMQ3At?=
 =?us-ascii?Q?9xKwbaJ8xTk5gBOSNPaubUB9poOJ29mSQJRFuGZpKz3JOlrEG083wVE2iQiu?=
 =?us-ascii?Q?Ws5Y0F2U7tNyzXm6ScoHfL92fPbd3d7qSdmGNjPZvA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OMvfgLhtTqBNVHuFadQqFnJyM61GXuQZ65xdoRxahkVb/GQwzWcQNBYDMPqq?=
 =?us-ascii?Q?fWFaQIudFz7icjX42eoJO6OK80Qi8GVRGmKp4kvUouE13qaL39XQV+jG7zun?=
 =?us-ascii?Q?GdSb9FusA0a3alGQpbBzOy5/0VjPfIcBSEFqhMJBSFq6MHBevVPPaVxGMe1r?=
 =?us-ascii?Q?/khXZq7WzvK/zKHOm8JbyjYORZ9Ho7tbakeFBxlVY1ovKQfjh8ZTBPsDafUx?=
 =?us-ascii?Q?CpUqjVbJCF/izZL2dTt+4cqsLqaASSVUTF6CVUTaNwEDRKH7WOHV60634LRu?=
 =?us-ascii?Q?SpKkC4VtXClef5NmAknYY1UDaT/ULQvup6DQU4xn1vS0iTnCZO1TKtII/KzC?=
 =?us-ascii?Q?w3bNy2c18YStElDcSz7xlWi6YG8piqsuoyKa1pQ1fimIftnis9g3ax7HQK/w?=
 =?us-ascii?Q?FoMYTZEz1fYPk8pHv0ROnhR0rWIteX74799CAKvcDUozCRRHEbeOYcmLAsZn?=
 =?us-ascii?Q?CHxBBtK2z9DFPdtWlzGIAE37tPujnnsUEVyc00g/IjJqtxslmF+tdjUNB331?=
 =?us-ascii?Q?DgXrpof5eT/6tau/peswcpjoUaRQKTKGBkxaFb57wFpKGthMCNy04UMJepFd?=
 =?us-ascii?Q?J6iy2ssnIRR4DXD9KgoF8Fb1NtEAq3df0PsaeKlR+AFVr9Kft3FhntgpWyth?=
 =?us-ascii?Q?2C5MNe5DhzOr7fMIkn0fH6Zh4NFuMkK+IpWY1k1bc4xCpO6fNz59Uvw/cbNJ?=
 =?us-ascii?Q?7mvrwzsN2WCLlSdoVdESWV9fmEtMSM9gE/p415sb0u2pbVM+zCr/KbvX8JuV?=
 =?us-ascii?Q?0AwoywV3X0um980BpUZG4RIarne830vY5Kwqs//SomHaiUHuobh5wMsxM/6e?=
 =?us-ascii?Q?okn9TJqloFZRDTZIwA5IlaKtQD1q3cWwciemLf6M3kjz8cNpTAabk5exELCu?=
 =?us-ascii?Q?m6660/+jeF3eNIHD16QObwsl/xtJptooOZcYotKzB8hhjzGRVjQleM9C75rE?=
 =?us-ascii?Q?sMXrZGWUsqBecxig+DbLzXjKwgA4kV8lYWypgtj0ubpOibj2Wa5A6/NODtH8?=
 =?us-ascii?Q?6KctebcjOHCb9ExN9hzj3cyQ5qtVCgnKLRYjqeSgaAYUoLif7PSpM8HxcPOV?=
 =?us-ascii?Q?fFO53jZ/BNtIfGploODnQr0m9H9tmFi5bwmhgLTPdHnvMZoSl3lhUJznyrvX?=
 =?us-ascii?Q?0dsNTMUH6UMS1Swu645KH3b54MgZvn/3+qvwnJ7NxrlJDGF3AEHXSqEQT2tj?=
 =?us-ascii?Q?H0c/KYFa73lHJVY774c3uxHRJ42ohvZRlz3icAJZPRRhEEGoJLzyKCwFTE9M?=
 =?us-ascii?Q?C1/c1LU8nOnf2PFV39MUqduEnChgeMIWd7X9+sr3Vq+qnzymfNmkXWJvfNTz?=
 =?us-ascii?Q?hQTaRRokkbNuambS+ZDA0/17236xcUKXc7gmW1b2IbFxooumbGamqIjhm7vB?=
 =?us-ascii?Q?CkiAxXQnaREwVj3djFBVEKSW6CXC9ByKc6Am6nykFfMRCzkdrY5Crzd9K18F?=
 =?us-ascii?Q?vb+hT6VApr3p8iQLx8PdwUN4gdplPzECbTJRCLQSqCFDlUwlgQItpdthjEsp?=
 =?us-ascii?Q?qvOGSK6VgUoEsCN9ua6GpW44Yrl9ioMG1rN7JOwd4T84fAITK9O8fTQwcMZ5?=
 =?us-ascii?Q?ICxZr+Av1fmFBnQ4YnbfO1YuXQaKddxO078eFSUGn6d25PStmTv6OKcJTn5X?=
 =?us-ascii?Q?NA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 712049f4-a62d-4c0f-e944-08dcde6b79b3
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2024 20:40:36.7955 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: To39QvY76OYgmMy/q40gPJjCGdNalgzFAVrKzDqiftDGZqKgRczrFpQ30zLtGhL+a1W9rOkwY0tAAEpNSlz76A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8531
X-OriginatorOrg: intel.com
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 18, 2024 at 08:35:43PM +0300, Jani Nikula wrote:
> CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND is an int, defaulting to 250. When
> the wakeref is non-zero, it's either -1 or a dynamically allocated
> pointer, depending on CONFIG_DRM_I915_DEBUG_RUNTIME_PM. It's likely that
> the code works by coincidence with the bitwise AND, but with
> CONFIG_DRM_I915_DEBUG_RUNTIME_PM=y, there's the off chance that the
> condition evaluates to false, and intel_wakeref_auto() doesn't get
> called. Switch to the intended logical AND.
> 
> v2: Use != to avoid clang -Wconstant-logical-operand (Nathan)

oh, this is ugly!

Wouldn't it be better then to use IS_ENABLED() macro?

> 
> Fixes: ad74457a6b5a ("drm/i915/dgfx: Release mmap on rpm suspend")
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Nathan Chancellor <nathan@kernel.org>
> Cc: <stable@vger.kernel.org> # v6.1+
> Reviewed-by: Matthew Auld <matthew.auld@intel.com> # v1
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> # v1
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index 5c72462d1f57..b22e2019768f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -1131,7 +1131,7 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
>  		GEM_WARN_ON(!i915_ttm_cpu_maps_iomem(bo->resource));
>  	}
>  
> -	if (wakeref & CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND)
> +	if (wakeref && CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND != 0)
>  		intel_wakeref_auto(&to_i915(obj->base.dev)->runtime_pm.userfault_wakeref,
>  				   msecs_to_jiffies_timeout(CONFIG_DRM_I915_USERFAULT_AUTOSUSPEND));
>  
> -- 
> 2.39.2
> 
