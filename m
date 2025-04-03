Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE5DA7A9B6
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 20:50:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEA4410E2D4;
	Thu,  3 Apr 2025 18:50:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T9Cup+sb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9942710E2D4;
 Thu,  3 Apr 2025 18:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743706209; x=1775242209;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=tuf7HjkYHCeo25zWbdXHQ2vfOEDV8oCBU0sqgzg7Zyo=;
 b=T9Cup+sbZuD1fH/uwMJ9C9kRlmvAsxqL5VHe8bTeYVsAiW3hEHXParXS
 Crn83lnM1EgBqajhoe6/7mktCWrSfFH+iGbKbbPWKyG/wJ4Auqac7vg3P
 SC15Q3YRFJyBzz8bfgVqm9xVxCA0uSa3gZ89aOMllnarcdOVJ1COB8tvy
 EwDP/7msO148HDoIeKyDIk60PhA4FFH6SmC1osKlcIJ2tXbGHFoon0WYn
 1hts0Svotx1OAuW5CwdIaPHj5xpGxH8Pea+2nQYXzCH812M9rw4lDui5c
 C0DqFawRy0GvDsQ8z/p0GezA3XTgwK5fVayTl43s0Jj5zoORyJBjrA1+w w==;
X-CSE-ConnectionGUID: R8FxtMQ7QYudAi27NuocLA==
X-CSE-MsgGUID: Xt8wIHMASkiHPOCnu96rCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11393"; a="55328442"
X-IronPort-AV: E=Sophos;i="6.15,186,1739865600"; d="scan'208";a="55328442"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 11:50:08 -0700
X-CSE-ConnectionGUID: gQQJcPBDRrCjC6Z8nYVt/Q==
X-CSE-MsgGUID: 5rXobyH5RAeM6f/c9NMnXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,186,1739865600"; d="scan'208";a="150292399"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 11:50:08 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 3 Apr 2025 11:50:07 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 3 Apr 2025 11:50:07 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 3 Apr 2025 11:50:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=py5LphIDYzh4OY+6EV12B7wv2EcO56nsd6xWf5HG2yH3vlLhKOHshMTsoObMaU/rtnqQRPABtZCLPMhuCF3DNaAfsMNAN/gjtbU29DaBASCqWU3BGQvut6Ovy5jBnWipKT0Zxzb7RBIDbUEhZCVT6TQ6qDaORtA5hNjKS65yKMQXTN8E+0DnWQveG1RGYxMjeBiOcuvBb3ev9+vaZN2LLbtMuVnRV8sVwlSPL/AcOobHwUIzmIYLtL8IqcUjLtgRSUtgrOFKCe6FxUKAB0tQ52TUqhwGmhcmVWBbACVMbcrB/x4MsAIxPE6URMfFX/L3DFZQIZXjEidGDArSC7wjhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wGXNGyraDu5Jd6oSazCTo2A8QPf3so9qRQOdp2fZZzo=;
 b=IcUH9kV2mVDihr6Ac1+PxrLYfaez8yyUBE1cyVbDtBobv4krKFO9ov+eENzfJnWBBXTLCI16jiFvacDV8ExIpISlkJtdCSKxAyvh8u4UiOADKZ6ixpCtVIU7qJYcSfCBm2DB7A8u97uwcXGkytzs6UVgnVKyXpNplPPwjC5FYEj45x/TBOMJqI1nCGfqaA9CI/g3P7u1NDqFMHBBspkdQ4FcN6KoPSNxaXXa3ayXCJxqI+u0/83DYkMSGr9sf2nrs47Dus/VATwHOw8zC3Gq+beu5TvI9aHG/wZgdaXDsR/qDoSDo35M+s0Th3u0ATSepApA4yzix06c9bY2VPv9WQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB6958.namprd11.prod.outlook.com (2603:10b6:303:229::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.50; Thu, 3 Apr
 2025 18:49:57 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8534.048; Thu, 3 Apr 2025
 18:49:57 +0000
Date: Thu, 3 Apr 2025 21:49:58 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, Lyude Paul <lyude@redhat.com>,
 <I915-ci-infra@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?=
 =?utf-8?Q?lure_for_series_starting_with_=5B1=2F2=5D_drm=2Fdp=5Fmst?=
 =?utf-8?Q?=3A?= Fix GUID DPCD write to non-root MST branch devices
Message-ID: <Z-7YVsyNJ3K0iQfv@ideak-desk.fi.intel.com>
References: <20250401103846.686408-1-imre.deak@intel.com>
 <174352245979.23500.8906480323892574349@e6b6f09ec485>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <174352245979.23500.8906480323892574349@e6b6f09ec485>
X-ClientProxiedBy: DUZPR01CA0211.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b4::24) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB6958:EE_
X-MS-Office365-Filtering-Correlation-Id: cc97e3cb-db42-43c4-ac3b-08dd72e0547c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?+s94v39ioksbYkYzbp3xl3HRxnE14MvrnkL0C/Bkr4TnLhVZap9rzV/2GXw7?=
 =?us-ascii?Q?Cxo4/XQHpP7AOtJ3+19WBA1BIrDLat/ZSAM4h22WWZsWJdPgZpaq3s0bC86M?=
 =?us-ascii?Q?qm+ctj7y+Oj50OtKwbSk1v1SReMroYeuA/rJ0PFUJxVXL1MI61jNi6GoYJOM?=
 =?us-ascii?Q?4LF6iuDrRjvKaVcLGcrXdT4bpPdNMbqiiduE0KCqAXaNtpbFzENWEbGyEZ4g?=
 =?us-ascii?Q?E64XreCqodelJj9Be0ROJbqBZhTeh2RAuhv64/gbnuINfri79ZqEGXvsXo/3?=
 =?us-ascii?Q?d4qhEexXFxl2U5dpXxid3avfemmQnoX1ozrO2IkIrYqfumI5V6dx/wD9Fi7s?=
 =?us-ascii?Q?dz5kaGOhCiS3RIm8Ko23TsrnvbalXDrnZ3/ew5amlMDlUzrR5q1/7iGiLCxf?=
 =?us-ascii?Q?2KT/SOJ8mCeqS1b08hsrEKozqlHvJbMprLSt8a8pXiomchHRBItZhAs0QL0d?=
 =?us-ascii?Q?o4D87VscLPCv6hCKvxPfy8q4/UfPwLIfQI3LnkooUyKFj/7UIhocJ/+t+Kbf?=
 =?us-ascii?Q?sNztqAWoCUKsn1Ve4wxTjs4dYgwgrtuRDKt+Ap/24J/f8pg8meRGdt3iDOO4?=
 =?us-ascii?Q?fyz/Wh4jr6h/5HSV+4OM2O8EeLXb6PpLisMFNtMeGN9XcwPBj4lFKjv52VX2?=
 =?us-ascii?Q?3kzwj7HSKJfYVXnml7zevJdDeeL0KfkW9vxssoc0clcsgRclDULmxRNixfTs?=
 =?us-ascii?Q?Xr6rO9UjUG6nxwiKjfQVLcN/tMM+erLiSBjwVLkW7Bsph/5G7WXGfb+xKeaq?=
 =?us-ascii?Q?+VdMw5N5SJC7EuAtws7AxtQzkMWs1cpZKLlwV3L3Yfcl5MOUtqXQ4RNrA7D9?=
 =?us-ascii?Q?VGy6jXWsf81qH0AGZTxExLJuKOZogvl5tszbPih/qvLmwWpC/kvVOHbkbteM?=
 =?us-ascii?Q?trE9F2C5mgzfe5qynpfLW2CTFWxRKnu6i6374YPSY+ScGrh1WPbv1p51quNj?=
 =?us-ascii?Q?QwgdkSsUl1Dz98AR6iCtF0Com9e/sOQ9ZCRJNZ5RC3CXlHE9+RY3+zo/gVRo?=
 =?us-ascii?Q?pbMgbT0vOh5jE1aKuBsotRzWZPQr1cJ4+n93NNPQQZxrQ8wmZvPj0rlsJ5Hw?=
 =?us-ascii?Q?5WZlyeU4lzJUDJmm1dNJN/VhtoBska8TT6GkCvAvV4xQdXWUDCiwq0Na7NzD?=
 =?us-ascii?Q?U3i4Y3XK+zAG+Qm4nfNB2PEcV+eOKNWA34gUNM4Laf0Ojne9ZiwLAaLvueXy?=
 =?us-ascii?Q?7iJmoU7SBQ58+DPKznQn/QUlbNhgGQHbvNL30vW79x7KstCVK2MzPB9B7+P1?=
 =?us-ascii?Q?4jEX77PyrGJY6TrpCaHRcntT/YPXJ2TfTk9aXGx+TQW8S9Qaewzj5e+WsoGG?=
 =?us-ascii?Q?MkFOQm6ddS7Tbh/tI71MKTRQs/cNdUyNhlAJgSpojPumAw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Uum2eD9tfMgBw4hVvWUXwgdQSc/sxwz4YBT+E8KWq96AEODZSjKVD+OmYN45?=
 =?us-ascii?Q?9LBiQTwruXr5p1SXEeWgqhbzxuwZXHuueaXuuBiUhNV3VR1PEkqmas7SSl3E?=
 =?us-ascii?Q?pacsk+kjJuCxs7cAa/CAt7hgNeWIgq+4fxGu3wKo1VvjmTbmakWX6po5IiGp?=
 =?us-ascii?Q?Ppi3YiekWmrQ02+4dGUrLLoPjXXbfMFyhWHRhOr6NhZQ6plVB/UN6619FkIr?=
 =?us-ascii?Q?TanQ009PuySbbO58Le6SuWEzsMCs/mxpWOuEbWeOp7kX32zKeg3biqMooJqg?=
 =?us-ascii?Q?rgYsj338mexMWcR0GLcNrE+gbEtqtmyc81h5OFq7asPq6CFtLP+NotchHL9d?=
 =?us-ascii?Q?9VhXGG/VHImeFHDGx/k3KoVJae4YExCWPsrQTNTZ49lHdKqhbewZ9Jauf/7B?=
 =?us-ascii?Q?2QwWOTgYCuQF3avFeLkrpeyUmFE5xGAcC0q2eYdkSnUP0mSRIGDFVwXTgwvC?=
 =?us-ascii?Q?7bU4qO1+o0RVV04H1wFouXL6ktolltlH508QaUAtbsU9QTiKYoLTfu3Ozd++?=
 =?us-ascii?Q?78dcr/oWJsO9LfVLS0Yh3UvIQS7JLIqzJmbQkBsl9mR7KWMkvo4xkuDIr15v?=
 =?us-ascii?Q?a1F+SyNwyuMtgbohTBjXnHlEQazHx+s2ngghnNVjthkp+d6/i3sX+YbG93Ov?=
 =?us-ascii?Q?WLktL83+oYIDLMmsrasqIHTNBgq/aD2aJv13LICvcXApoWryGQOpK8ibvto6?=
 =?us-ascii?Q?/xOngqfgLb8GB4CcyvVsWeNubpTxjCzjQ+X+PuKcCUVVPmGifVa9rVB/Pfp9?=
 =?us-ascii?Q?VWje2dK3x9Ro+h3kbSeF95GH+a9kE9P7dapRFWZlu5aSACz55/YMvFlJArBe?=
 =?us-ascii?Q?AfCh6XBhbVHfm1J+JyFZYh9ZKEbiOG/9rJ/Vw3mQh243Tph1OfWv7lTdK90G?=
 =?us-ascii?Q?n3wynAagByv7cUKcQFyRJCVT6uVUm5cfMUIaVNnp04Tl5H4Lvc09qi5PBe2y?=
 =?us-ascii?Q?8pFyuqv8ZtLDmw75BSVM0Mb4IvjGb3lz9ODqBN3391IQeqctett4NG2qcFTz?=
 =?us-ascii?Q?OaD0IDHRzaYqtOPL17NNVM6cdMjmM1Qyv0mxJuKE7CqrXLli1H5t+e4aGgKR?=
 =?us-ascii?Q?LHvfJj1+IX1BCNQPvIZOPJxqktz++dmZXB5bKi2Kd9LxhTGCJ6t+wU6ilK0r?=
 =?us-ascii?Q?3irGm12jG8mR+jd4zGOarYj7rKh1HIUvqw4lugWdYDMWTrz0nV3S++vm/jIm?=
 =?us-ascii?Q?5+Cl6Y3J48O/CH4F7YHl9KMC868RPpLOJ6W37UHgDX5T42zZYKBAA312sX2I?=
 =?us-ascii?Q?DnR6okAoB1j/5ZxKOTfZaOXuMxEdlyHhXuhx6sK+XKoHTLwmlig/qxBS71vC?=
 =?us-ascii?Q?ErWASiFZbeEl8JyKLszPNaMUhRtdgS8xX6vJ+Ai7RvOB81IBvDkSC+Dko3tz?=
 =?us-ascii?Q?aq9tP8siwTQaiu+G0U+fVc7BQ0H9oNUNKqS012iVdVDw4op6dFUW5jCmNwAz?=
 =?us-ascii?Q?izjVkiWy5vNj6S4bi26NaP/kgw8TUz4gpFSvZzTAtxiiOAs+YqErFYCTnWUP?=
 =?us-ascii?Q?SrJK87FXEGwpkQDgK2hVhcqUZOW3ooxPsX0DsyJeD/3g2oFslwKoJCaTAiYi?=
 =?us-ascii?Q?asVMfpDiJXdQHRx9zSs2i471q4OSCiUY9h/mBM8a?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cc97e3cb-db42-43c4-ac3b-08dd72e0547c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2025 18:49:57.7700 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yPlfpgOHYuLdZ9wNj5Wv3NXp9KH+ScMWNt4Dvtlnbw0q+e2Fbpu8ISyDZZs9DdRA9nBlrHcV6jqFIc37LI/ZXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6958
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 01, 2025 at 03:47:39PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/2] drm/dp_mst: Fix GUID DPCD write to non-root MST branch devices
> URL   : https://patchwork.freedesktop.org/series/147054/
> State : failure

Thanks for the reviews, patchset is pushed to drm-misc-next.

Jani noticed that after this change things could be simplified further:
https://github.com/ideak/linux/commit/f1b015836aabae8

The failure below is unrelated as shard-tglu doesn't have any DP sink
connected to it.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16355_full -> Patchwork_147054v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_147054v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_147054v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_147054v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_big@single:
>     - shard-tglu:         NOTRUN -> [ABORT][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-6/igt@gem_exec_big@single.html
> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@intel_sysfs_debugfs@xe-base}:
>     - shard-dg2-9:        NOTRUN -> [SKIP][2]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@intel_sysfs_debugfs@xe-base.html
> 
>   * {igt@intel_sysfs_debugfs@xe-gt}:
>     - shard-dg2:          NOTRUN -> [SKIP][3] +1 other test skip
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-10/igt@intel_sysfs_debugfs@xe-gt.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_147054v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@core_setmaster@master-drop-set-shared-fd:
>     - shard-tglu:         [PASS][4] -> [ABORT][5] ([i915#13908])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-tglu-4/igt@core_setmaster@master-drop-set-shared-fd.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-5/igt@core_setmaster@master-drop-set-shared-fd.html
> 
>   * igt@device_reset@unbind-reset-rebind:
>     - shard-dg2:          [PASS][6] -> [ABORT][7] ([i915#5507])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-dg2-5/igt@device_reset@unbind-reset-rebind.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-11/igt@device_reset@unbind-reset-rebind.html
> 
>   * igt@drm_fdinfo@isolation:
>     - shard-dg2-9:        NOTRUN -> [SKIP][8] ([i915#8414]) +7 other tests skip
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@drm_fdinfo@isolation.html
> 
>   * igt@drm_fdinfo@isolation@vecs0:
>     - shard-dg1:          NOTRUN -> [SKIP][9] ([i915#8414]) +5 other tests skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@drm_fdinfo@isolation@vecs0.html
> 
>   * igt@drm_fdinfo@most-busy-check-all@bcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#8414]) +8 other tests skip
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-1/igt@drm_fdinfo@most-busy-check-all@bcs0.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-rkl:          NOTRUN -> [SKIP][11] ([i915#3555] / [i915#9323])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_ccs@ctrl-surf-copy-new-ctx:
>     - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#9323])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
>     - shard-tglu:         NOTRUN -> [SKIP][13] ([i915#9323])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-dg2:          NOTRUN -> [SKIP][14] ([i915#7697])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-10/igt@gem_close_race@multigpu-basic-process.html
>     - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#7697])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-dg2-9:        NOTRUN -> [SKIP][16] ([i915#7697])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@gem_close_race@multigpu-basic-threads.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][17] ([i915#7697]) +1 other test skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@gem_close_race@multigpu-basic-threads.html
>     - shard-dg1:          NOTRUN -> [SKIP][18] ([i915#7697])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#280])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-11/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-rkl:          [PASS][20] -> [ABORT][21] ([i915#7975] / [i915#8213])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-rkl-8/igt@gem_eio@hibernate.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-1/igt@gem_eio@hibernate.html
> 
>   * igt@gem_eio@in-flight-contexts-immediate:
>     - shard-mtlp:         [PASS][22] -> [ABORT][23] ([i915#13193]) +3 other tests abort
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-mtlp-1/igt@gem_eio@in-flight-contexts-immediate.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-mtlp-7/igt@gem_eio@in-flight-contexts-immediate.html
> 
>   * igt@gem_eio@kms:
>     - shard-dg1:          NOTRUN -> [FAIL][24] ([i915#5784])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_balancer@noheartbeat:
>     - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#8555])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-11/igt@gem_exec_balancer@noheartbeat.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-rkl:          NOTRUN -> [SKIP][26] ([i915#4525])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-6/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
>     - shard-tglu:         NOTRUN -> [SKIP][27] ([i915#4525])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-5/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-tglu-1:       NOTRUN -> [SKIP][28] ([i915#4525])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_balancer@sliced:
>     - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#4812])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-10/igt@gem_exec_balancer@sliced.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-dg2-9:        NOTRUN -> [SKIP][30] ([i915#3539] / [i915#4852]) +1 other test skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
>     - shard-dg1:          NOTRUN -> [SKIP][31] ([i915#3539] / [i915#4852])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_exec_flush@basic-uc-ro-default:
>     - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#3539] / [i915#4852]) +2 other tests skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-11/igt@gem_exec_flush@basic-uc-ro-default.html
> 
>   * igt@gem_exec_params@rsvd2-dirt:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#5107])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-11/igt@gem_exec_params@rsvd2-dirt.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu-active:
>     - shard-dg2-9:        NOTRUN -> [SKIP][34] ([i915#3281]) +5 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@gem_exec_reloc@basic-gtt-cpu-active.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read:
>     - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#3281]) +4 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-1/igt@gem_exec_reloc@basic-gtt-read.html
> 
>   * igt@gem_exec_reloc@basic-wc-active:
>     - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#3281]) +6 other tests skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-6/igt@gem_exec_reloc@basic-wc-active.html
> 
>   * igt@gem_exec_reloc@basic-wc-cpu-noreloc:
>     - shard-dg1:          NOTRUN -> [SKIP][37] ([i915#3281]) +4 other tests skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@gem_exec_reloc@basic-wc-cpu-noreloc.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-dg2:          [PASS][38] -> [INCOMPLETE][39] ([i915#11441] / [i915#13304])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-dg2-8/igt@gem_exec_suspend@basic-s0.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-7/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_exec_suspend@basic-s0@lmem0:
>     - shard-dg2:          [PASS][40] -> [INCOMPLETE][41] ([i915#11441])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-dg2-8/igt@gem_exec_suspend@basic-s0@lmem0.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-7/igt@gem_exec_suspend@basic-s0@lmem0.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices:
>     - shard-rkl:          NOTRUN -> [ABORT][42] ([i915#7975] / [i915#8213]) +1 other test abort
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-5/igt@gem_exec_suspend@basic-s4-devices.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@lmem0:
>     - shard-dg1:          [PASS][43] -> [ABORT][44] ([i915#7975] / [i915#8213]) +1 other test abort
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-dg1-17/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-y:
>     - shard-dg2-9:        NOTRUN -> [SKIP][45] ([i915#4860]) +1 other test skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@gem_fence_thrash@bo-write-verify-y.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglu:         NOTRUN -> [SKIP][46] ([i915#2190])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-tglu:         NOTRUN -> [SKIP][47] ([i915#4613])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-5/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-tglu-1:       NOTRUN -> [SKIP][48] ([i915#4613]) +2 other tests skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-rkl:          NOTRUN -> [SKIP][49] ([i915#4613])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-glk:          NOTRUN -> [SKIP][50] ([i915#4613])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-glk5/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg1:          NOTRUN -> [TIMEOUT][51] ([i915#5493]) +1 other test timeout
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_mmap_gtt@basic-read:
>     - shard-dg2-9:        NOTRUN -> [SKIP][52] ([i915#4077]) +5 other tests skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@gem_mmap_gtt@basic-read.html
>     - shard-dg1:          NOTRUN -> [SKIP][53] ([i915#4077]) +1 other test skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@gem_mmap_gtt@basic-read.html
> 
>   * igt@gem_mmap_gtt@basic-small-bo:
>     - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#4077]) +5 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-11/igt@gem_mmap_gtt@basic-small-bo.html
> 
>   * igt@gem_mmap_offset@close-race:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][55] ([i915#12964]) +10 other tests dmesg-warn
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-6/igt@gem_mmap_offset@close-race.html
> 
>   * igt@gem_mmap_wc@fault-concurrent:
>     - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#4083]) +3 other tests skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-11/igt@gem_mmap_wc@fault-concurrent.html
> 
>   * igt@gem_mmap_wc@read-write-distinct:
>     - shard-dg2-9:        NOTRUN -> [SKIP][57] ([i915#4083]) +1 other test skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@gem_mmap_wc@read-write-distinct.html
>     - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#4083])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@gem_mmap_wc@read-write-distinct.html
> 
>   * igt@gem_partial_pwrite_pread@write-display:
>     - shard-dg2-9:        NOTRUN -> [SKIP][59] ([i915#3282]) +2 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@gem_partial_pwrite_pread@write-display.html
> 
>   * igt@gem_pread@display:
>     - shard-dg1:          NOTRUN -> [SKIP][60] ([i915#3282])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@gem_pread@display.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-glk:          NOTRUN -> [WARN][61] ([i915#2658])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-glk5/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pread@snoop:
>     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#3282])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-10/igt@gem_pread@snoop.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#3282])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@gem_pwrite@basic-exhaustion.html
>     - shard-tglu:         NOTRUN -> [WARN][64] ([i915#2658])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-6/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@protected-raw-src-copy-not-readible:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#4270]) +1 other test skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-10/igt@gem_pxp@protected-raw-src-copy-not-readible.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-2:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][66] ([i915#12917] / [i915#12964])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-off-2.html
> 
>   * igt@gem_pxp@verify-pxp-stale-ctx-execution:
>     - shard-dg2-9:        NOTRUN -> [SKIP][67] ([i915#4270])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
> 
>   * igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][68] ([i915#5190] / [i915#8428])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs.html
> 
>   * igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#5190] / [i915#8428]) +2 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-10/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html
> 
>   * igt@gem_render_tiled_blits@basic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][70] ([i915#4079])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@gem_render_tiled_blits@basic.html
> 
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#4885])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-10/igt@gem_softpin@evict-snoop-interruptible.html
> 
>   * igt@gem_tiled_swapping@non-threaded:
>     - shard-tglu:         [PASS][72] -> [FAIL][73] ([i915#12941])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-tglu-8/igt@gem_tiled_swapping@non-threaded.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-4/igt@gem_tiled_swapping@non-threaded.html
> 
>   * igt@gem_unfence_active_buffers:
>     - shard-dg2-9:        NOTRUN -> [SKIP][74] ([i915#4879])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@gem_unfence_active_buffers.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#3281] / [i915#3297])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-11/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#3297])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-10/igt@gem_userptr_blits@unsync-unmap.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][77] ([i915#3297])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#3297]) +2 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@gem_userptr_blits@unsync-unmap-after-close.html
>     - shard-tglu:         NOTRUN -> [SKIP][79] ([i915#3297])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-6/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gem_vm_create@invalid-create:
>     - shard-snb:          NOTRUN -> [SKIP][80] +31 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-snb7/igt@gem_vm_create@invalid-create.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#2527])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-tglu-1:       NOTRUN -> [SKIP][82] ([i915#2527] / [i915#2856]) +2 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#2527]) +1 other test skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@gen9_exec_parse@bb-secure:
>     - shard-tglu:         NOTRUN -> [SKIP][84] ([i915#2527] / [i915#2856]) +1 other test skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-5/igt@gen9_exec_parse@bb-secure.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-dg2-9:        NOTRUN -> [SKIP][85] ([i915#2856]) +1 other test skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#2856]) +1 other test skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-11/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@i915_fb_tiling@basic-x-tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#13786])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-1/igt@i915_fb_tiling@basic-x-tiling.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg1:          [PASS][88] -> [ABORT][89] ([i915#13592])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-dg1-12/igt@i915_module_load@reload-with-fault-injection.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-12/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_freq_api@freq-reset-multiple:
>     - shard-glk:          NOTRUN -> [SKIP][90] +21 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-glk5/igt@i915_pm_freq_api@freq-reset-multiple.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#8399])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@i915_pm_freq_api@freq-suspend.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][92] ([i915#8399])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@i915_pm_freq_api@freq-suspend@gt0:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][93] ([i915#12455] / [i915#13820]) +1 other test incomplete
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][94] ([i915#6590]) +1 other test skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@i915_pm_freq_mult@media-freq@gt0.html
>     - shard-dg1:          NOTRUN -> [SKIP][95] ([i915#6590]) +1 other test skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
>     - shard-dg1:          [PASS][96] -> [FAIL][97] ([i915#3591])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
> 
>   * igt@i915_pm_rps@min-max-config-idle:
>     - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#11681] / [i915#6621])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-1/igt@i915_pm_rps@min-max-config-idle.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#5723])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@i915_query@test-query-geometry-subslices.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][100] ([i915#5723])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@i915_selftest@mock:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][101] ([i915#9311]) +1 other test dmesg-warn
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-snb7/igt@i915_selftest@mock.html
> 
>   * igt@i915_suspend@basic-s2idle-without-i915:
>     - shard-dg1:          [PASS][102] -> [DMESG-WARN][103] ([i915#4391] / [i915#4423])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-dg1-16/igt@i915_suspend@basic-s2idle-without-i915.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-15/igt@i915_suspend@basic-s2idle-without-i915.html
> 
>   * igt@intel_hwmon@hwmon-read:
>     - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#7707])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-5/igt@intel_hwmon@hwmon-read.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#4215])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@kms_addfb_basic@basic-y-tiled-legacy.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][106] ([i915#4215] / [i915#5190])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#8709]) +15 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html
> 
>   * igt@kms_async_flips@invalid-async-flip-atomic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][108] ([i915#12967])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_async_flips@invalid-async-flip-atomic.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition:
>     - shard-dg1:          [PASS][109] -> [FAIL][110] ([i915#5956])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-dg1-17/igt@kms_atomic_transition@plane-all-modeset-transition.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-13/igt@kms_atomic_transition@plane-all-modeset-transition.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [FAIL][111] ([i915#5956])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-13/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#5286]) +4 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-6/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][113] ([i915#5286]) +2 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#4538] / [i915#5286])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
>     - shard-tglu:         NOTRUN -> [SKIP][115] ([i915#5286]) +3 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][116] ([i915#3638])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][117] +8 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-10/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][118] ([i915#3638]) +3 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#4538] / [i915#5190]) +8 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-180:
>     - shard-dg2-9:        NOTRUN -> [SKIP][120] ([i915#4538] / [i915#5190]) +3 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_big_fb@yf-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb:
>     - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#5190])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-10/igt@kms_big_fb@yf-tiled-addfb.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
>     - shard-dg2-9:        NOTRUN -> [SKIP][122] ([i915#5190]) +1 other test skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][123] ([i915#4538]) +1 other test skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][124] ([i915#12313])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#6095]) +86 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-8/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#10307] / [i915#6095]) +141 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-11/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][128] ([i915#12313])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#6095]) +29 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#12805])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][131] ([i915#12805])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-5/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][132] ([i915#6095]) +9 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#6095]) +16 other tests skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#6095]) +83 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][135] ([i915#6095]) +49 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#12313])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][137] ([i915#10307] / [i915#6095]) +24 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#13783]) +4 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-1/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
>     - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-single:
>     - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#11151] / [i915#7828]) +6 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-single.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-after-suspend:
>     - shard-tglu-1:       NOTRUN -> [SKIP][141] ([i915#11151] / [i915#7828]) +6 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-storm:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#11151] / [i915#7828]) +6 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-11/igt@kms_chamelium_hpd@dp-hpd-storm.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd:
>     - shard-dg2-9:        NOTRUN -> [SKIP][143] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_chamelium_hpd@vga-hpd.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-5/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#7118] / [i915#9424])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-6/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#9424])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-10/igt@kms_content_protection@content-type-change.html
>     - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#9424])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@kms_content_protection@content-type-change.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][148] ([i915#6944] / [i915#9424])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-dg2-9:        NOTRUN -> [SKIP][149] ([i915#3299])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#3116])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@kms_content_protection@dp-mst-type-0.html
>     - shard-tglu:         NOTRUN -> [SKIP][151] ([i915#3116] / [i915#3299])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-6/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-tglu-1:       NOTRUN -> [SKIP][152] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x32:
>     - shard-tglu-1:       NOTRUN -> [SKIP][153] ([i915#3555]) +2 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-32x32.html
>     - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#3555]) +1 other test skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@kms_cursor_crc@cursor-random-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-tglu-1:       NOTRUN -> [SKIP][155] ([i915#13049])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][156] ([i915#13566]) +3 other tests fail
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#3555])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-6/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-tglu:         NOTRUN -> [SKIP][158] ([i915#13049]) +1 other test skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-5/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
>     - shard-snb:          [PASS][159] -> [SKIP][160]
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-snb6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-snb2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>     - shard-glk:          [PASS][161] -> [FAIL][162] ([i915#13028])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-glk3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#4103])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
>     - shard-dg2-9:        NOTRUN -> [SKIP][164] ([i915#13046] / [i915#5354]) +1 other test skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][165] +16 other tests skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
>     - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#13046] / [i915#5354]) +1 other test skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#9067])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-10/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][168] ([i915#9067])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#4103]) +2 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-dg2:          NOTRUN -> [SKIP][170] ([i915#4103] / [i915#4213]) +1 other test skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#3555] / [i915#3804])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
>     - shard-tglu:         NOTRUN -> [SKIP][172] ([i915#1769] / [i915#3555] / [i915#3804])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#3804])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#3804])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][175] ([i915#3555]) +2 other tests skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#8812])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#3840])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-1/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-out-visible-area:
>     - shard-dg2-9:        NOTRUN -> [SKIP][178] ([i915#13798])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_fbc_dirty_rect@fbc-dirty-rectangle-out-visible-area.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#1839])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-5/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-tglu-1:       NOTRUN -> [SKIP][180] ([i915#9337])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-tglu-1:       NOTRUN -> [SKIP][181] ([i915#658])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_feature_discovery@psr2.html
>     - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#658])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-10/igt@kms_feature_discovery@psr2.html
>     - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#658])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_flip@2x-blocking-absolute-wf_vblank:
>     - shard-tglu:         NOTRUN -> [SKIP][184] ([i915#3637]) +7 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-6/igt@kms_flip@2x-blocking-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-busy-flip:
>     - shard-dg2-9:        NOTRUN -> [SKIP][185] ([i915#9934]) +4 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_flip@2x-busy-flip.html
>     - shard-dg1:          NOTRUN -> [SKIP][186] ([i915#9934]) +2 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@kms_flip@2x-busy-flip.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
>     - shard-tglu-1:       NOTRUN -> [SKIP][187] ([i915#3637]) +6 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>     - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#9934]) +7 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-6/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-fences-interruptible:
>     - shard-dg2-9:        NOTRUN -> [SKIP][189] ([i915#8381])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_flip@2x-flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check:
>     - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#9934]) +4 other tests skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-1/igt@kms_flip@2x-wf_vblank-ts-check.html
> 
>   * igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1:
>     - shard-mtlp:         [PASS][191] -> [FAIL][192] ([i915#13734]) +1 other test fail
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-mtlp-2/igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-mtlp-5/igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][193] ([i915#2587] / [i915#2672]) +2 other tests skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][194] ([i915#2587] / [i915#2672]) +3 other tests skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#2672] / [i915#3555])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html
>     - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#2672] / [i915#3555])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#2672])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][198] ([i915#2672] / [i915#3555])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-dg2-9:        NOTRUN -> [SKIP][199] ([i915#2672]) +1 other test skip
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#2672]) +3 other tests skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][201] ([i915#2672] / [i915#3555] / [i915#5190])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#2672] / [i915#3555] / [i915#5190]) +2 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
>     - shard-dg1:          NOTRUN -> [SKIP][203] ([i915#2672] / [i915#3555])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][204] ([i915#2587] / [i915#2672])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][205] ([i915#2672] / [i915#3555]) +2 other tests skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][206] ([i915#2672] / [i915#3555]) +3 other tests skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
>     - shard-dg2:          NOTRUN -> [FAIL][207] ([i915#6880])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
>     - shard-dg2-9:        NOTRUN -> [FAIL][208] ([i915#6880])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:
>     - shard-dg1:          NOTRUN -> [SKIP][209] +9 other tests skip
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render:
>     - shard-tglu:         NOTRUN -> [SKIP][210] +51 other tests skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#5354]) +18 other tests skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][212] ([i915#8708]) +10 other tests skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html
>     - shard-dg1:          NOTRUN -> [SKIP][213] ([i915#8708]) +3 other tests skip
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
>     - shard-dg2:          [PASS][214] -> [FAIL][215] ([i915#6880]) +2 other tests fail
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#5439])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#10055])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite:
>     - shard-dg2-9:        NOTRUN -> [SKIP][218] ([i915#3458]) +9 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#3458]) +9 other tests skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:
>     - shard-tglu-1:       NOTRUN -> [SKIP][220] +68 other tests skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][221] ([i915#1825]) +19 other tests skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#8708]) +15 other tests skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu:
>     - shard-dg2-9:        NOTRUN -> [SKIP][223] ([i915#5354]) +13 other tests skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][224] ([i915#3458]) +4 other tests skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
>     - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#3023]) +18 other tests skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html
> 
>   * igt@kms_getfb@getfb-reject-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][226] ([i915#6118])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-10/igt@kms_getfb@getfb-reject-ccs.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-tglu:         NOTRUN -> [SKIP][227] ([i915#12713])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-6/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-tglu:         NOTRUN -> [SKIP][228] ([i915#3555] / [i915#8228])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-6/igt@kms_hdr@static-swap.html
>     - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#3555] / [i915#8228])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-dg2-9:        NOTRUN -> [SKIP][230] ([i915#3555] / [i915#8228])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_hdr@static-toggle-dpms.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][231] ([i915#3555] / [i915#8228]) +1 other test skip
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_hdr@static-toggle-dpms.html
>     - shard-dg1:          NOTRUN -> [SKIP][232] ([i915#3555] / [i915#8228])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#10656])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-6/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-dg2-9:        NOTRUN -> [SKIP][234] ([i915#12388])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_joiner@basic-force-big-joiner.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][235] ([i915#12388])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_joiner@basic-force-big-joiner.html
>     - shard-dg1:          NOTRUN -> [SKIP][236] ([i915#12388])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-big-joiner:
>     - shard-tglu-1:       NOTRUN -> [SKIP][237] ([i915#10656])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_joiner@invalid-modeset-big-joiner.html
>     - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#10656])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-10/igt@kms_joiner@invalid-modeset-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][239] ([i915#12388])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-1/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-ultra-joiner:
>     - shard-tglu-1:       NOTRUN -> [SKIP][240] ([i915#12339])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_joiner@invalid-modeset-ultra-joiner.html
> 
>   * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
>     - shard-dg2-9:        NOTRUN -> [SKIP][241] +3 other tests skip
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html
> 
>   * igt@kms_pipe_stress@stress-xrgb8888-ytiled:
>     - shard-dg2-9:        NOTRUN -> [SKIP][242] ([i915#13705])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_pipe_stress@stress-xrgb8888-ytiled.html
> 
>   * igt@kms_plane_lowres@tiling-y:
>     - shard-dg2-9:        NOTRUN -> [SKIP][243] ([i915#8821])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_plane_lowres@tiling-y.html
> 
>   * igt@kms_plane_multiple@2x-tiling-y:
>     - shard-tglu:         NOTRUN -> [SKIP][244] ([i915#13958])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-6/igt@kms_plane_multiple@2x-tiling-y.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d:
>     - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#12247]) +7 other tests skip
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-d.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>     - shard-rkl:          NOTRUN -> [SKIP][246] ([i915#3555]) +3 other tests skip
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
>     - shard-rkl:          NOTRUN -> [SKIP][247] ([i915#12247]) +6 other tests skip
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][248] ([i915#12247]) +3 other tests skip
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20:
>     - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#12247] / [i915#9423]) +1 other test skip
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
>     - shard-tglu:         NOTRUN -> [SKIP][250] ([i915#12247] / [i915#6953])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d:
>     - shard-tglu:         NOTRUN -> [SKIP][251] ([i915#12247]) +3 other tests skip
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-tglu-1:       NOTRUN -> [SKIP][252] ([i915#9812])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_pm_backlight@bad-brightness.html
>     - shard-dg1:          NOTRUN -> [SKIP][253] ([i915#5354])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#5354])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-6/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-tglu-1:       NOTRUN -> [SKIP][255] ([i915#9685])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-tglu:         NOTRUN -> [SKIP][256] ([i915#3828])
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-5/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-rkl:          NOTRUN -> [SKIP][257] ([i915#8430])
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@kms_pm_lpsp@screens-disabled.html
>     - shard-tglu:         NOTRUN -> [SKIP][258] ([i915#8430])
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-6/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg2:          [PASS][259] -> [SKIP][260] ([i915#9519])
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-6/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-dg2:          NOTRUN -> [SKIP][261] ([i915#9519])
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [PASS][262] -> [SKIP][263] ([i915#9519]) +1 other test skip
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-tglu-1:       NOTRUN -> [SKIP][264] ([i915#6524])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-dg1:          NOTRUN -> [SKIP][265] ([i915#11520]) +2 other tests skip
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:
>     - shard-snb:          NOTRUN -> [SKIP][266] ([i915#11520]) +1 other test skip
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-snb7/igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][267] ([i915#11520]) +4 other tests skip
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][268] ([i915#11520]) +4 other tests skip
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-6/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][269] ([i915#11520]) +4 other tests skip
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-11/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:
>     - shard-dg2-9:        NOTRUN -> [SKIP][270] ([i915#11520]) +4 other tests skip
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:
>     - shard-glk:          NOTRUN -> [SKIP][271] ([i915#11520])
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-glk5/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][272] ([i915#11520]) +6 other tests skip
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-dg2-9:        NOTRUN -> [SKIP][273] ([i915#9683])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@fbc-psr-cursor-plane-move:
>     - shard-dg2:          NOTRUN -> [SKIP][274] ([i915#1072] / [i915#9732]) +15 other tests skip
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-1/igt@kms_psr@fbc-psr-cursor-plane-move.html
> 
>   * igt@kms_psr@fbc-psr-primary-render:
>     - shard-tglu-1:       NOTRUN -> [SKIP][275] ([i915#9732]) +14 other tests skip
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_psr@fbc-psr-primary-render.html
>     - shard-dg1:          NOTRUN -> [SKIP][276] ([i915#1072] / [i915#9732]) +4 other tests skip
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@kms_psr@fbc-psr-primary-render.html
> 
>   * igt@kms_psr@fbc-psr2-suspend:
>     - shard-dg2-9:        NOTRUN -> [SKIP][277] ([i915#1072] / [i915#9732]) +9 other tests skip
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_psr@fbc-psr2-suspend.html
> 
>   * igt@kms_psr@psr-primary-render:
>     - shard-tglu:         NOTRUN -> [SKIP][278] ([i915#9732]) +13 other tests skip
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-5/igt@kms_psr@psr-primary-render.html
> 
>   * igt@kms_psr@psr2-sprite-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][279] ([i915#1072] / [i915#9732]) +12 other tests skip
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@kms_psr@psr2-sprite-mmap-cpu.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-rkl:          NOTRUN -> [SKIP][280] ([i915#9685])
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>     - shard-tglu:         NOTRUN -> [SKIP][281] ([i915#9685])
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@primary-rotation-270:
>     - shard-dg2:          NOTRUN -> [SKIP][282] ([i915#12755])
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-1/igt@kms_rotation_crc@primary-rotation-270.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-rkl:          NOTRUN -> [SKIP][283] ([i915#5289])
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
>     - shard-tglu:         NOTRUN -> [SKIP][284] ([i915#5289]) +1 other test skip
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_sequence@get-forked-busy:
>     - shard-rkl:          [PASS][285] -> [DMESG-WARN][286] ([i915#12964]) +2 other tests dmesg-warn
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-rkl-7/igt@kms_sequence@get-forked-busy.html
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-3/igt@kms_sequence@get-forked-busy.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - shard-dg2:          NOTRUN -> [SKIP][287] ([i915#3555]) +2 other tests skip
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-10/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-dg2:          NOTRUN -> [SKIP][288] ([i915#8623])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-1/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-dg2-9:        NOTRUN -> [SKIP][289] ([i915#8623])
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-tglu-1:       NOTRUN -> [SKIP][290] ([i915#9906])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_vrr@max-min.html
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-rkl:          NOTRUN -> [SKIP][291] ([i915#9906])
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-virtual.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-tglu:         NOTRUN -> [SKIP][292] ([i915#2437])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-6/igt@kms_writeback@writeback-fb-id.html
>     - shard-rkl:          NOTRUN -> [SKIP][293] ([i915#2437]) +1 other test skip
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-tglu-1:       NOTRUN -> [SKIP][294] ([i915#2437])
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@kms_writeback@writeback-invalid-parameters.html
>     - shard-dg2:          NOTRUN -> [SKIP][295] ([i915#2437])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-10/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-tglu:         NOTRUN -> [SKIP][296] ([i915#2437] / [i915#9412])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-5/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf_pmu@frequency@gt0:
>     - shard-dg2:          NOTRUN -> [FAIL][297] ([i915#12549] / [i915#6806]) +1 other test fail
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-1/igt@perf_pmu@frequency@gt0.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-rkl:          [PASS][298] -> [INCOMPLETE][299] ([i915#13520])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-rkl-1/igt@perf_pmu@rc6-suspend.html
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-3/igt@perf_pmu@rc6-suspend.html
> 
>   * igt@prime_mmap@test_aperture_limit:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][300] ([i915#5493]) +1 other test incomplete
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-1/igt@prime_mmap@test_aperture_limit.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - shard-rkl:          NOTRUN -> [SKIP][301] ([i915#3291] / [i915#3708])
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-dg2:          NOTRUN -> [SKIP][302] ([i915#3291] / [i915#3708]) +1 other test skip
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-1/igt@prime_vgem@basic-write.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][303] ([i915#3708])
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-1/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-dg2:          NOTRUN -> [SKIP][304] ([i915#9917])
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-10/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@sriov_basic@bind-unbind-vf@vf-1:
>     - shard-tglu-1:       NOTRUN -> [FAIL][305] ([i915#12910]) +19 other tests fail
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-1/igt@sriov_basic@bind-unbind-vf@vf-1.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-rkl:          NOTRUN -> [SKIP][306] ([i915#9917])
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6:
>     - shard-tglu:         NOTRUN -> [FAIL][307] ([i915#12910]) +9 other tests fail
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-tglu-6/igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-dg2-9:        NOTRUN -> [SKIP][308] ([i915#9917])
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@sriov_basic@enable-vfs-bind-unbind-each.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-dg1:          NOTRUN -> [SKIP][309] ([i915#4818])
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-14/igt@tools_test@sysfs_l3_parity.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][310] ([i915#4818])
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@tools_test@sysfs_l3_parity.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-dg2:          [INCOMPLETE][311] ([i915#13356]) -> [PASS][312]
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-dg2-6/igt@gem_ccs@suspend-resume.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-11/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          [INCOMPLETE][313] ([i915#12392] / [i915#13356]) -> [PASS][314]
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-dg2-6/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-11/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-rkl:          [SKIP][315] ([i915#4270]) -> [PASS][316]
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-rkl-6/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-on:
>     - shard-rkl:          [TIMEOUT][317] ([i915#12917] / [i915#12964]) -> [PASS][318]
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-on.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-on.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-glk:          [ABORT][319] ([i915#5566]) -> [PASS][320]
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-glk4/igt@gen9_exec_parse@allowed-all.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-glk5/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
>     - shard-dg1:          [FAIL][321] ([i915#3591]) -> [PASS][322]
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
> 
>   * igt@i915_pm_rpm@system-suspend:
>     - shard-rkl:          [INCOMPLETE][323] -> [PASS][324]
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-rkl-5/igt@i915_pm_rpm@system-suspend.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@i915_pm_rpm@system-suspend.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-mtlp:         [DMESG-FAIL][325] ([i915#12061]) -> [PASS][326] +1 other test pass
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-mtlp-4/igt@i915_selftest@live@workarounds.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-mtlp-2/igt@i915_selftest@live@workarounds.html
> 
>   * igt@kms_busy@extended-modeset-hang-newfb@pipe-a:
>     - shard-rkl:          [DMESG-WARN][327] ([i915#12964]) -> [PASS][328] +3 other tests pass
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-rkl-6/igt@kms_busy@extended-modeset-hang-newfb@pipe-a.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-8/igt@kms_busy@extended-modeset-hang-newfb@pipe-a.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-c-hdmi-a-1:
>     - shard-glk:          [DMESG-FAIL][329] ([i915#118]) -> [PASS][330] +1 other test pass
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-glk8/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-c-hdmi-a-1.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-glk9/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>     - shard-glk:          [FAIL][331] ([i915#13028]) -> [PASS][332]
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-glk9/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-glk2/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:
>     - shard-glk:          [FAIL][333] ([i915#2346]) -> [PASS][334]
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-glk8/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-glk3/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1:
>     - shard-snb:          [FAIL][335] ([i915#11832] / [i915#13734]) -> [PASS][336] +1 other test pass
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-snb6/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-snb2/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate:
>     - shard-snb:          [FAIL][337] ([i915#13734]) -> [PASS][338] +1 other test pass
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-snb6/igt@kms_flip@2x-plain-flip-fb-recreate.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-snb2/igt@kms_flip@2x-plain-flip-fb-recreate.html
> 
>   * igt@kms_flip@absolute-wf_vblank@c-hdmi-a1:
>     - shard-glk:          [DMESG-WARN][339] ([i915#118]) -> [PASS][340] +1 other test pass
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-glk8/igt@kms_flip@absolute-wf_vblank@c-hdmi-a1.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-glk9/igt@kms_flip@absolute-wf_vblank@c-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank:
>     - shard-snb:          [INCOMPLETE][341] ([i915#12314]) -> [PASS][342] +1 other test pass
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-snb5/igt@kms_flip@flip-vs-blocking-wf-vblank.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-snb7/igt@kms_flip@flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@flip-vs-suspend@d-hdmi-a4:
>     - shard-dg1:          [DMESG-WARN][343] ([i915#4423]) -> [PASS][344] +1 other test pass
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-dg1-15/igt@kms_flip@flip-vs-suspend@d-hdmi-a4.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-19/igt@kms_flip@flip-vs-suspend@d-hdmi-a4.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-dg2-9:        [FAIL][345] ([i915#6880]) -> [PASS][346]
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-dg2:          [SKIP][347] ([i915#3555] / [i915#8228]) -> [PASS][348]
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-dg2-1/igt@kms_hdr@static-toggle.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-11/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-dg2:          [SKIP][349] ([i915#9340]) -> [PASS][350]
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-dg2-7/igt@kms_pm_lpsp@kms-lpsp.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-4/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [SKIP][351] ([i915#9519]) -> [PASS][352]
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   
> #### Warnings ####
> 
>   * igt@device_reset@unbind-reset-rebind:
>     - shard-dg1:          [ABORT][353] ([i915#11814] / [i915#11815] / [i915#9413]) -> [INCOMPLETE][354] ([i915#11814])
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-dg1-16/igt@device_reset@unbind-reset-rebind.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-15/igt@device_reset@unbind-reset-rebind.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-dg1:          [SKIP][355] ([i915#4423] / [i915#8708]) -> [SKIP][356] ([i915#8708])
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt:
>     - shard-dg2:          [SKIP][357] ([i915#3458]) -> [SKIP][358] ([i915#10433] / [i915#3458])
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
>     - shard-dg2:          [SKIP][359] ([i915#10433] / [i915#3458]) -> [SKIP][360] ([i915#3458]) +2 other tests skip
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          [SKIP][361] ([i915#9340]) -> [SKIP][362] ([i915#3828])
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16355/shard-rkl-3/igt@kms_pm_lpsp@kms-lpsp.html
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118
>   [i915#11814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11814
>   [i915#11815]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11815
>   [i915#11832]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11832
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
>   [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
>   [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
>   [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
>   [i915#12455]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12455
>   [i915#12549]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12549
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12941]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12941
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#12967]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12967
>   [i915#13028]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13028
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193
>   [i915#13304]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13304
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13592]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13592
>   [i915#13705]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13705
>   [i915#13734]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13734
>   [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
>   [i915#13786]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13786
>   [i915#13798]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13798
>   [i915#13820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820
>   [i915#13908]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13908
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4879]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4879
>   [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
>   [i915#5107]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5107
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>   [i915#5507]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5507
>   [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6118
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#6806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6806
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
>   [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16355 -> Patchwork_147054v1
> 
>   CI-20190529: 20190529
>   CI_DRM_16355: 9368766ece6c78cc0001f9b53037563fe521f887 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8297: 0a27244ed1972af84c78d68523d5791e596349e7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_147054v1: 9368766ece6c78cc0001f9b53037563fe521f887 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147054v1/index.html
