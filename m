Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C84B12052
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Jul 2025 16:44:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B92F410E0E2;
	Fri, 25 Jul 2025 14:44:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bwyvEvHH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70C7510E0E2
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Jul 2025 14:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753454695; x=1784990695;
 h=date:from:to:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=Fyi7/w2ILn4kW0UfL1ilIqND0u7rbs9nQDZuYNalENI=;
 b=bwyvEvHHWKl7m4T5CnsWX3mdmzjUx0jaj2pw5Rwt57Wyw+102sqzEknf
 9mTOZKhw3eceW1iWCgDZEIq499BoLZ0mquR7Qd4NQ0iwxR0omsvIpH3fg
 GiY69vXo01KfmVDHLNCK4mWNBoQk5Mz2ZFV5Ia1YfgNNIhmb4Q3+/rkUP
 ZqRedkdsCEz8q9PdL7APrsMY1AEBrAwkVbsDAyV1szLF79SkYNyIOTA/6
 zYY+6vUgNt/0++DEnP66/C2P6grot+r/hh4OFneKman65Gs320HhhTlbg
 ZKEWsTS7TemE0y3uDiNc79NwJLC1FN5MqqzSLKJSxzo7AW60NlFl0B3SP g==;
X-CSE-ConnectionGUID: FyBXUJ3LQhm372mDURGVQA==
X-CSE-MsgGUID: DNdZ3Z1yTvKqSl3IaWfK/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11503"; a="55875324"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="55875324"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2025 07:44:55 -0700
X-CSE-ConnectionGUID: jlw8PY8mRpGvW6QnI/o8FQ==
X-CSE-MsgGUID: eTj4ThvTR1+KlneJkMz2Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="184611807"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2025 07:44:54 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 25 Jul 2025 07:44:54 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 25 Jul 2025 07:44:54 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.67)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 25 Jul 2025 07:44:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kJgSZ4OQiUIBUeomn6BMToMjWFSO1ZCQJiNFZiCRs7ifdeMmO/d2vWxgMlngF1fg9TT+pXBPIQUPoSeXvI8AlcJeQz+v+mzV6Lx7uOKS0Ge7zH35he+HgwKqUMSdUSQZTE0+4YUc3iGQYH2lSPhM4d1vt2ifid8WofR+05dlwIQOpywjWCWEo0JKUH+qTQjwsQckIZPFtTSgxtqF2MUmgtsx0xJs/pwaEup6iKG7dfRcCix+zdA6ncDIYgs4skp3cgC8Hen/sA5hOGZqfH4+crmb/1+TKAHjART6YjAEytBBqCxz7QiEJAtkK1dJIhldLiiwAGjbEi2i0Ub7zJHWWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oD/epxrDyQPZPOJw9WHindhuCXEIq+1C9ygK15BrjC0=;
 b=IAk55IFoHKrLqlWtrKczhTfaq0+jAk5HVb9EIGj0OG4SZnloagDAAriR8VJwi8uBWoZptslAd/btn2Uf/Avwrq2LIIYExgNlYEt4DW4vDwXtYJ1W6zHL5oJRmQ9rSW9J0PhGSwjtBvGjnnH/sKYeM+fnab0TTIxqxxkK7LC9ZJJsil3BhXcsFJBupZh0dXFx9oDEjLajzDDSLB8mNFc5lfahyGWcCnhtJq4FGz0rrNEHkPDjrdwNUNwjsqy0DQrRiFr4YN9XFUCU9ovyMpJ1DUsvyn+Qfy/9+mDXjEgpRqGb0MBMP2JmcPH2UOGWK7+8QfKQjmfZ5xx69ISsN5it0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by BL1PR11MB5254.namprd11.prod.outlook.com (2603:10b6:208:313::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.21; Fri, 25 Jul
 2025 14:44:33 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%7]) with mapi id 15.20.8964.019; Fri, 25 Jul 2025
 14:44:33 +0000
Date: Fri, 25 Jul 2025 17:44:28 +0300
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?=
 =?utf-8?Q?lure_for_drm=2Fi915=2Fdp?= =?utf-8?Q?=3A?= Fix disabling training
 pattern at end of UHBR link training
Message-ID: <aIOYTLgovEIChOp-@ideak-desk>
References: <20250724182900.160891-1-imre.deak@intel.com>
 <175339676068.188022.1552622501320176896@1538d3639d33>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <175339676068.188022.1552622501320176896@1538d3639d33>
X-ClientProxiedBy: LO4P123CA0133.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:193::12) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|BL1PR11MB5254:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b8fac86-6b8e-4463-3201-08ddcb89c4ba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|366016|10070799003|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?aTEEvX43l6W+Mqq+0Za+vVzGSDYoe2TisyegmcKMSuHAj6HeCztV5K+n4LQo?=
 =?us-ascii?Q?T08N9TqkAnMbZAmacRqV6nzrMfD9WtdHzGj0azpk8jlBfMezQPwCjTcr3Em6?=
 =?us-ascii?Q?mVjyCQWg+hXT5aHJskxjVYu4IirZhidMaGZMyt6jA31rih8PIF1XoL/oJ1fJ?=
 =?us-ascii?Q?s+FMj8XoIq6R8cJBn/SQ4JtAQGW2WCUGe8qtv7fjLzKcJDtW7njdIHyvr55x?=
 =?us-ascii?Q?eM5Y48sb0+n/IiOBGcZqLmN61Un7JXIAurywV8nCMOlDenJWew0sH2YNrRU8?=
 =?us-ascii?Q?AbUZK4zbv/+BqnktihXdqkkuCcRT+xW3ZLvxQaaLuMalEVwuzVDIu3PkjHeZ?=
 =?us-ascii?Q?728QKiQ4Jkka332lTH8T8czsy+gj+DjmFMCQcGXzoE6lU5MsRXCU9GjP5jx0?=
 =?us-ascii?Q?qaQoNk3aDSuq6Ovl52fPRNEYuSn3GsIf3gvXnp7uFKwULa6Mh0722W9QZB9r?=
 =?us-ascii?Q?5GhQNjFzKLtNOKo1oUVsftYbe4OUnbvnR7w4Jj9rkd44dDwKzvCnUivsrKr8?=
 =?us-ascii?Q?kZc9g3X7ezjy0ABzKRZcy447pwh4p2FyYuiZE7rTfz69IKyu3gbtPHJMAb+t?=
 =?us-ascii?Q?slaXvHlWriXNvjvN6K8WK87YS6SOznM3ZDEudpxhvE1ckHfzbiO3z19+gYq8?=
 =?us-ascii?Q?BxV8r29xiiU3JqvS95Tnhx87jsX9z1J9njbUy8viREaESU28TwSGAS2yHU/L?=
 =?us-ascii?Q?LKjlkDLdN8uKYT1ekvERRX9rDmkiqg9ZgZrB9BZ/j96yAW8UF56BjWT84eva?=
 =?us-ascii?Q?k8EZuAdfOlcyTxD4THp3yCIYi/fkK18thzMw1wQlzp8MbXHo8y6Mz2YQ96+G?=
 =?us-ascii?Q?God1jYnXK/7KFKVCsQUnVyZtAoVnUZo5SPuiodgYEaiLP9wvFgEaM679+PLU?=
 =?us-ascii?Q?Tk4K3aDtv8lASfMbOve0uwubF/saL2L4lofmb88pJ8wktLrCyZN1+aPUrxqc?=
 =?us-ascii?Q?bDM3CVkU/lrTRDA9sWHf9i3Itarbl+qMUwovV6nBqafZCGkr0ThyygcK5xhj?=
 =?us-ascii?Q?MtV0np+mSDuUq5W+WJrKeI0QEVgZfE00tn4vRm10HPKMDvzh0P9wtoUNcElP?=
 =?us-ascii?Q?AnYFC5nT4xejTkZxvCpmMkLHXMgeaKCyprKBdu46B/Ftl5EhgS1g9bsG89hx?=
 =?us-ascii?Q?/JZW/MwIt41lXTWDjMhv/3/mqQAyKxj3qT1d+zc5MxvgCfcKYsLQMflKIFEl?=
 =?us-ascii?Q?dYmlHaJNYVnVki2xkDpy6RXPofrf5rjicJ9n/IpUsgvJRE0+cwz3b6XoHThi?=
 =?us-ascii?Q?V83gW03rrgKsWqk/axuTI89gTBtRCKdOYYnZnahPl5Kx1Lzhzt6Db052bBhN?=
 =?us-ascii?Q?q6RkKhNLp1gJ+8wtcb42Xw8nI5mnJiPO5C6IeSDBMkK9qq03A+uhLSQ6JOWv?=
 =?us-ascii?Q?hqYLOXY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(10070799003)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tYM9YDahy3TOn9kNkLi/+/VGEc472/tMb82/ZmoNc30gOgKWNCLxixcN3VEJ?=
 =?us-ascii?Q?HBoG2jGSNpB9/i2vDyqqT+ge/r1hCQpWBBd2GqxLgADwL/ihBcrvLUNf1Whp?=
 =?us-ascii?Q?n2+FaXEeGJjRNPMKnZZU1lYzd37LQ1AmgcfjpCOZRLi/cm9IIjAcWq8A28kl?=
 =?us-ascii?Q?FKrULjTkhJW1wQh5YDMt71ClqqR9QravTQ/F4diDJ+uwgQMPvSggWllaUVbC?=
 =?us-ascii?Q?LXQDfdFb0xQ84ftFrKmGrKG3vhbTHG9uO9CbUK/Zh8L2XxibF+4UC9fn4c6G?=
 =?us-ascii?Q?bYxktlDfd0EqLgSb5Ul/YGdYe+dZ989KEfjYomuj0Yb2QZ0DuMtjhhOGRwn2?=
 =?us-ascii?Q?WB5npwZ0Nno0Y3FIPvRrlAn/zwr8pe0dP+6ZNelpGSoD7t7ZVkB+xCsPLXUi?=
 =?us-ascii?Q?OzOd/jH5eXZ97wblEmp6eIC0CNuiUCJXI97Ez2r1FvuuFtE7RIMio6Dyt/Zx?=
 =?us-ascii?Q?/nNmRfxFnP1xA3XjHca8+rBpCWOmg75Qf9OGcPNvQK0OBN2PjMJ0xVMiZPAT?=
 =?us-ascii?Q?kuV6i1jSyhN76qIG7btAO7krOiKGHuscPKkHXPDuD9XF8Ay0e+RGpCLziggF?=
 =?us-ascii?Q?qtNP62P7Z7Sqwx/RVP5SfwzUN75/s/BMoQlyeBmOPOspxzkIx9YDP8gzCAIL?=
 =?us-ascii?Q?vUsp8le1XyEoejF//GuoK3ga1lI1F/tPrAh2kN8J+3k9f0NcnU7ooEYtHI8p?=
 =?us-ascii?Q?o6eOx0dHHXieNiBqkEWHNHMMDn1sUij0lwrJ4PQZ7kDlhYEm7PyFpBzAQUFb?=
 =?us-ascii?Q?gkntTaflPCYf0C91fReHp4qEhA4fxnjCB3w1EYBc+FzDqUMZt5UlAGp9SWEn?=
 =?us-ascii?Q?4PmNI/gZgHz0olloI1Unp2mo8ZUgIB4P7MlaPrSQFx9v8lNzITdQQCG84eIF?=
 =?us-ascii?Q?E3+bjnb1m/nZLvMs1OPqpgmjBcosd9gqS2yS0hX6/E+INax03eg3JCbnJ0gD?=
 =?us-ascii?Q?CwoGGMWZz4C/ML5Yz45vnWpton1z7eQBr/v3v4b7kpAKfdlSxnZow23oH+qH?=
 =?us-ascii?Q?CoKC5vjV7+DonrxlTZxoj0UDy8KOhlT5K7/SWrGqrHyHXw+Ssdkq8NOLUsRP?=
 =?us-ascii?Q?MTeF82MFILfqFUZLff2UEfFekKarXVRV6qRivfaJ5iCG22IZGiMgmaBKVghw?=
 =?us-ascii?Q?tKQUq5JEm0h2XYbO3OuLcXe9ZoA6o0Fdr6yy1Mt9lbsGsZV7nN/FbMvZe6h3?=
 =?us-ascii?Q?FttH4Eos6fBWsWfv+bWVhuk7ZJhUIY+FQWnDyKQZx8mDEqe9YfJwrw3wJ4E3?=
 =?us-ascii?Q?qMEO6+Mc/Se3l2Kwu5xhoof6uetnRTcO9dePhYfdpXKPdzkrbjRWW2Vy4BE+?=
 =?us-ascii?Q?GfZswIwxNkp+RvbEq83f/TMDQflMAj54122L6yUrIXKzKsdL6cUB9QOsi0W0?=
 =?us-ascii?Q?402COQJDTMCpvppckEfeyDrYqPX56zdK7WmRhq994esWmB4nBKeRycVjCSZz?=
 =?us-ascii?Q?nGFjFlZJdL/sxhtd9E/Jl0PvdAXSADy8QxNtbmuAXqjX5LMHMtBSBDkotE6i?=
 =?us-ascii?Q?PXfZfA+L6b8hR/NyEEnTUVVbr8o0VoAUdgOH/0ztfQqIImZ3Lo2mRmZz/cHQ?=
 =?us-ascii?Q?tAF4gBJndc/Veb40vP5noy5N17fXcj85F4ndShKzIoaWbNslIXn7an4QVO3T?=
 =?us-ascii?Q?yTw1B1Kx1L5NjByyysTW58ThqibRkDANhkUv1VESGGml?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b8fac86-6b8e-4463-3201-08ddcb89c4ba
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2025 14:44:33.4070 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8vC8XLpoeVkLDFuCbxzZSe/lDjT6o8RUTwn3XaLgeIavUteI+unf4pkVHvSWpUyomDWJGE0FOA6+EdKdq1LaDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5254
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

On Thu, Jul 24, 2025 at 10:39:20PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp: Fix disabling training pattern at end of UHBR link training
> URL   : https://patchwork.freedesktop.org/series/152088/
> State : failure

Patch is pushed to drm-intel-next, thanks for the review.

The failure is unrelated as there is no DP UHBR sink on the given host.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16922_full -> Patchwork_152088v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_152088v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_152088v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (12 -> 12)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_152088v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@perf:
>     - shard-mtlp:         [PASS][1] -> [INCOMPLETE][2] +1 other test incomplete
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-mtlp-7/igt@i915_selftest@perf.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-6/igt@i915_selftest@perf.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_152088v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][3] ([i915#8411])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-6/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@api_intel_bb@crc32:
>     - shard-rkl:          NOTRUN -> [SKIP][4] ([i915#6230])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@api_intel_bb@crc32.html
> 
>   * igt@api_intel_bb@object-reloc-purge-cache:
>     - shard-mtlp:         NOTRUN -> [SKIP][5] ([i915#8411])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@api_intel_bb@object-reloc-purge-cache.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][6] ([i915#8411]) +1 other test skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@api_intel_bb@object-reloc-purge-cache.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-tglu-1:       NOTRUN -> [SKIP][7] ([i915#11078])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@device_reset@cold-reset-bound.html
>     - shard-dg2:          NOTRUN -> [SKIP][8] ([i915#11078])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@device_reset@cold-reset-bound.html
> 
>   * igt@gem_bad_reloc@negative-reloc-bltcopy:
>     - shard-dg2-9:        NOTRUN -> [SKIP][9] ([i915#3281]) +4 other tests skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@gem_bad_reloc@negative-reloc-bltcopy.html
> 
>   * igt@gem_busy@semaphore:
>     - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#3936])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-6/igt@gem_busy@semaphore.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-mtlp:         NOTRUN -> [SKIP][11] ([i915#3555] / [i915#9323])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-tglu:         NOTRUN -> [SKIP][12] ([i915#9323])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-10/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          [PASS][13] -> [INCOMPLETE][14] ([i915#13356])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#7697])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@gem_close_race@multigpu-basic-process.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][16] ([i915#7697])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#6335])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-dg2-9:        NOTRUN -> [SKIP][18] ([i915#8562])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#8555])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@gem_ctx_persistence@heartbeat-hang.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#280])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-rkl:          [PASS][21] -> [DMESG-WARN][22] ([i915#12964]) +13 other tests dmesg-warn
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-8/igt@gem_eio@in-flight-suspend.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-4/igt@gem_eio@in-flight-suspend.html
>     - shard-glk:          NOTRUN -> [INCOMPLETE][23] ([i915#13390])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-glk1/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_balancer@bonded-dual:
>     - shard-dg2-9:        NOTRUN -> [SKIP][24] ([i915#4771])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@gem_exec_balancer@bonded-dual.html
> 
>   * igt@gem_exec_balancer@bonded-pair:
>     - shard-dg2:          NOTRUN -> [SKIP][25] ([i915#4771])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@gem_exec_balancer@bonded-pair.html
> 
>   * igt@gem_exec_balancer@invalid-bonds:
>     - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#4036])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-6/igt@gem_exec_balancer@invalid-bonds.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-tglu:         NOTRUN -> [SKIP][27] ([i915#4525]) +1 other test skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-10/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#4525])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_capture@capture@vecs0-lmem0:
>     - shard-dg2-9:        NOTRUN -> [FAIL][29] ([i915#11965]) +4 other tests fail
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@gem_exec_capture@capture@vecs0-lmem0.html
> 
>   * igt@gem_exec_fence@submit67:
>     - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#4812])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@gem_exec_fence@submit67.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#3539] / [i915#4852]) +1 other test skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_exec_flush@basic-wb-prw-default:
>     - shard-dg2-9:        NOTRUN -> [SKIP][32] ([i915#3539] / [i915#4852])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@gem_exec_flush@basic-wb-prw-default.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#3281]) +5 other tests skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@gem_exec_reloc@basic-gtt-read.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc:
>     - shard-mtlp:         NOTRUN -> [SKIP][34] ([i915#3281]) +2 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@gem_exec_reloc@basic-gtt-wc.html
> 
>   * igt@gem_exec_reloc@basic-write-read-active:
>     - shard-rkl:          NOTRUN -> [SKIP][35] ([i915#3281]) +6 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@gem_exec_reloc@basic-write-read-active.html
> 
>   * igt@gem_exec_schedule@preempt-queue:
>     - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#4537] / [i915#4812])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-6/igt@gem_exec_schedule@preempt-queue.html
> 
>   * igt@gem_fence_thrash@bo-copy:
>     - shard-mtlp:         NOTRUN -> [SKIP][37] ([i915#4860])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@gem_fence_thrash@bo-copy.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-y:
>     - shard-dg2-9:        NOTRUN -> [SKIP][38] ([i915#4860]) +2 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@gem_fence_thrash@bo-write-verify-y.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
>     - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#4860])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-rkl:          NOTRUN -> [SKIP][40] ([i915#4613] / [i915#7582])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@gem_lmem_evict@dontneed-evict-race.html
>     - shard-tglu:         NOTRUN -> [SKIP][41] ([i915#4613] / [i915#7582])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-9/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-tglu-1:       NOTRUN -> [SKIP][42] ([i915#4613]) +1 other test skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@massive:
>     - shard-mtlp:         NOTRUN -> [SKIP][43] ([i915#4613])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@gem_lmem_swapping@massive.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][44] ([i915#4613]) +1 other test skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-glk:          NOTRUN -> [SKIP][45] ([i915#4613]) +4 other tests skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-glk6/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][46] ([i915#4613]) +1 other test skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-10/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_mmap_gtt@coherency:
>     - shard-glk11:        NOTRUN -> [SKIP][47] +233 other tests skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-glk11/igt@gem_mmap_gtt@coherency.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-odd:
>     - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#4077]) +11 other tests skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
> 
>   * igt@gem_mmap_gtt@hang:
>     - shard-dg2-9:        NOTRUN -> [SKIP][49] ([i915#4077]) +8 other tests skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@gem_mmap_gtt@hang.html
> 
>   * igt@gem_mmap_gtt@hang-busy:
>     - shard-mtlp:         NOTRUN -> [SKIP][50] ([i915#4077]) +4 other tests skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@gem_mmap_gtt@hang-busy.html
> 
>   * igt@gem_mmap_wc@write-read:
>     - shard-mtlp:         NOTRUN -> [SKIP][51] ([i915#4083])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@gem_mmap_wc@write-read.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][52] ([i915#4083]) +3 other tests skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@gem_mmap_wc@write-read.html
> 
>   * igt@gem_mmap_wc@write-wc-read-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#4083]) +3 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@gem_mmap_wc@write-wc-read-gtt.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-display:
>     - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#3282]) +5 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-6/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-glk10:        NOTRUN -> [WARN][55] ([i915#2658])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-glk10/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pread@snoop:
>     - shard-mtlp:         NOTRUN -> [SKIP][56] ([i915#3282]) +1 other test skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@gem_pread@snoop.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][57] ([i915#3282]) +2 other tests skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@gem_pread@snoop.html
> 
>   * igt@gem_pxp@create-regular-context-1:
>     - shard-rkl:          [PASS][58] -> [TIMEOUT][59] ([i915#12917] / [i915#12964])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-8/igt@gem_pxp@create-regular-context-1.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-4/igt@gem_pxp@create-regular-context-1.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-rkl:          [PASS][60] -> [TIMEOUT][61] ([i915#12964]) +2 other tests timeout
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-8/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@gem_pxp@protected-raw-src-copy-not-readible:
>     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#4270]) +2 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-6/igt@gem_pxp@protected-raw-src-copy-not-readible.html
> 
>   * igt@gem_pxp@verify-pxp-stale-ctx-execution:
>     - shard-dg2-9:        NOTRUN -> [SKIP][63] ([i915#4270])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-x-tiled:
>     - shard-dg2-9:        NOTRUN -> [SKIP][64] ([i915#5190] / [i915#8428]) +3 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@gem_render_copy@y-tiled-ccs-to-x-tiled.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-linear:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#5190] / [i915#8428]) +4 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-6/igt@gem_render_copy@y-tiled-to-vebox-linear.html
> 
>   * igt@gem_render_copy@yf-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][66] ([i915#8428])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@gem_render_copy@yf-tiled.html
> 
>   * igt@gem_set_tiling_vs_gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#4079])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@gem_set_tiling_vs_gtt.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][68] ([i915#4079])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@gem_set_tiling_vs_gtt.html
> 
>   * igt@gem_softpin@evict-snoop:
>     - shard-rkl:          NOTRUN -> [SKIP][69] +10 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@gem_softpin@evict-snoop.html
> 
>   * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
>     - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#3282]) +3 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_tiled_pread_pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#4079]) +1 other test skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@gem_tiled_pread_pwrite.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#3297]) +3 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-6/igt@gem_userptr_blits@coherency-unsync.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][73] ([i915#3297]) +1 other test skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-tglu-1:       NOTRUN -> [SKIP][74] ([i915#3297] / [i915#3323])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
>     - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#3297] / [i915#4880])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html
> 
>   * igt@gem_userptr_blits@sd-probe:
>     - shard-dg2-9:        NOTRUN -> [SKIP][76] ([i915#3297] / [i915#4958])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@gem_userptr_blits@sd-probe.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-tglu:         NOTRUN -> [SKIP][77] ([i915#3297])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-9/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gen3_mixed_blits:
>     - shard-dg2-9:        NOTRUN -> [SKIP][78] +5 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@gen3_mixed_blits.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-glk:          [PASS][79] -> [ABORT][80] ([i915#5566])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-glk8/igt@gen9_exec_parse@allowed-all.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-glk3/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@basic-rejected:
>     - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#2856])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@gen9_exec_parse@basic-rejected.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][82] ([i915#2527] / [i915#2856])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@gen9_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - shard-mtlp:         NOTRUN -> [SKIP][83] ([i915#2856]) +1 other test skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@gen9_exec_parse@basic-rejected-ctx-param.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][84] ([i915#2856]) +4 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@gen9_exec_parse@basic-rejected-ctx-param.html
> 
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#2527]) +2 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@gen9_exec_parse@bb-start-param.html
>     - shard-tglu:         NOTRUN -> [SKIP][86] ([i915#2527] / [i915#2856]) +2 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-9/igt@gen9_exec_parse@bb-start-param.html
> 
>   * igt@i915_drm_fdinfo@all-busy-check-all:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#14123])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@i915_drm_fdinfo@all-busy-check-all.html
> 
>   * igt@i915_drm_fdinfo@isolation@rcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#14073]) +15 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-6/igt@i915_drm_fdinfo@isolation@rcs0.html
> 
>   * igt@i915_drm_fdinfo@most-busy-check-all@bcs0:
>     - shard-dg2-9:        NOTRUN -> [SKIP][89] ([i915#14073]) +7 other tests skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@i915_drm_fdinfo@most-busy-check-all@bcs0.html
> 
>   * igt@i915_drm_fdinfo@virtual-busy-all:
>     - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#14118])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@i915_drm_fdinfo@virtual-busy-all.html
> 
>   * igt@i915_drm_fdinfo@virtual-busy-hang-all:
>     - shard-dg2-9:        NOTRUN -> [SKIP][91] ([i915#14118])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@i915_drm_fdinfo@virtual-busy-hang-all.html
> 
>   * igt@i915_pm_freq_api@freq-reset-multiple:
>     - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#8399])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@i915_pm_freq_api@freq-reset-multiple.html
> 
>   * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
>     - shard-glk:          NOTRUN -> [SKIP][93] +203 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-glk8/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
> 
>   * igt@i915_pm_rps@min-max-config-idle:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#11681] / [i915#6621])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@i915_pm_rps@min-max-config-idle.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-mtlp:         NOTRUN -> [FAIL][95] ([i915#8346])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@i915_pm_rps@reset.html
> 
>   * igt@i915_pm_rps@thresholds-park:
>     - shard-dg2:          NOTRUN -> [SKIP][96] ([i915#11681])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@i915_pm_rps@thresholds-park.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-dg2-9:        NOTRUN -> [SKIP][97] ([i915#4387])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#6245])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-9/igt@i915_query@hwconfig_table.html
> 
>   * igt@i915_query@query-topology-coherent-slice-mask:
>     - shard-dg2-9:        NOTRUN -> [SKIP][99] ([i915#6188])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@i915_query@query-topology-coherent-slice-mask.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][100] ([i915#4817])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-glk1/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
>     - shard-dg2-9:        NOTRUN -> [SKIP][101] ([i915#4212])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#5190]) +1 other test skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
> 
>   * igt@kms_addfb_basic@basic-x-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#4212])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@kms_addfb_basic@basic-x-tiled-legacy.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][104] ([i915#10991] / [i915#13335]) +1 other test fail
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-glk6/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_async_flips@invalid-async-flip-atomic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][105] ([i915#12967])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_async_flips@invalid-async-flip-atomic.html
> 
>   * igt@kms_async_flips@test-cursor:
>     - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#10333])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@kms_async_flips@test-cursor.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#9531])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>     - shard-tglu:         NOTRUN -> [SKIP][108] ([i915#9531])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-9/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-glk:          NOTRUN -> [SKIP][109] ([i915#1769])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-glk8/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
>     - shard-tglu:         NOTRUN -> [SKIP][110] ([i915#1769] / [i915#3555])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-9/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-180:
>     - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#5286]) +1 other test skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][112] ([i915#5286]) +2 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-9/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-tglu-1:       NOTRUN -> [SKIP][113] ([i915#5286]) +2 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#3638]) +2 other tests skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#4538] / [i915#5190]) +6 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-180:
>     - shard-dg2-9:        NOTRUN -> [SKIP][116] ([i915#4538] / [i915#5190]) +6 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_big_fb@yf-tiled-8bpp-rotate-180.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#6095]) +55 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][118] ([i915#6095]) +54 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-9/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#10307] / [i915#6095]) +158 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-11/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-dp-3.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][120] ([i915#6095]) +34 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][121] ([i915#12805])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
>     - shard-mtlp:         NOTRUN -> [SKIP][122] ([i915#12805])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][123] ([i915#6095]) +9 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][124] ([i915#12796]) +1 other test incomplete
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-glk8/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#6095]) +7 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-b-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][126] ([i915#10307] / [i915#6095]) +19 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#12313]) +1 other test skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][128] ([i915#12313])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][129] ([i915#12313])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][130] ([i915#12313]) +1 other test skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
>     - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#12313])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][132] ([i915#6095]) +135 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg1-13/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#14098] / [i915#6095]) +53 other tests skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-a-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][134] ([i915#13781]) +4 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_cdclk@mode-transition@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-c-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#13783]) +3 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-c-dp-3.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-read:
>     - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@kms_chamelium_edid@hdmi-edid-read.html
>     - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#11151] / [i915#7828]) +1 other test skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@kms_chamelium_edid@hdmi-edid-read.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k:
>     - shard-tglu:         NOTRUN -> [SKIP][138] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-10/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-4k.html
> 
>   * igt@kms_chamelium_frames@dp-frame-dump:
>     - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#11151] / [i915#7828]) +7 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@kms_chamelium_frames@dp-frame-dump.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
>     - shard-dg2-9:        NOTRUN -> [SKIP][140] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-fast:
>     - shard-tglu-1:       NOTRUN -> [SKIP][141] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-fast.html
> 
>   * igt@kms_color@deep-color:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#12655] / [i915#3555])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@kms_color@deep-color.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][143] ([i915#3555] / [i915#9979])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@kms_color@deep-color.html
> 
>   * igt@kms_color@legacy-gamma-reset:
>     - shard-rkl:          [PASS][144] -> [SKIP][145] ([i915#12655] / [i915#14544]) +1 other test skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-7/igt@kms_color@legacy-gamma-reset.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_color@legacy-gamma-reset.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-dg2-9:        NOTRUN -> [SKIP][146] ([i915#9424])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#7118] / [i915#9424])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@kms_content_protection@legacy.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][148] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#9424])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#9424])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-6/igt@kms_content_protection@lic-type-1.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][151] ([i915#6944] / [i915#9424])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-tglu:         NOTRUN -> [SKIP][152] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424]) +1 other test skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-10/igt@kms_content_protection@type1.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#7118] / [i915#9424])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-random-64x21@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][154] ([i915#13566])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_cursor_crc@cursor-random-64x21@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
>     - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#3555]) +3 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>     - shard-tglu:         NOTRUN -> [SKIP][156] ([i915#13049])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-10/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1:
>     - shard-tglu:         [PASS][157] -> [FAIL][158] ([i915#13566]) +1 other test fail
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-tglu-9/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-5/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x32:
>     - shard-mtlp:         NOTRUN -> [SKIP][159] ([i915#3555] / [i915#8814])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-sliding-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [FAIL][160] ([i915#13566]) +3 other tests fail
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [DMESG-WARN][161] ([i915#4423])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg1-18/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-dg2-9:        NOTRUN -> [SKIP][162] ([i915#13046] / [i915#5354]) +3 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-tglu:         NOTRUN -> [SKIP][163] ([i915#4103]) +1 other test skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-dg2-9:        NOTRUN -> [SKIP][164] ([i915#4103] / [i915#4213])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
>     - shard-glk10:        NOTRUN -> [SKIP][165] ([i915#11190]) +1 other test skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-glk10/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#13046] / [i915#5354]) +1 other test skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-glk:          NOTRUN -> [FAIL][167] ([i915#2346])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>     - shard-rkl:          [PASS][168] -> [FAIL][169] ([i915#2346])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-8/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#3555] / [i915#3804])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
>     - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#1769] / [i915#3555] / [i915#3804])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-9/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#3804])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
>     - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#3804])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-9/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#3555]) +2 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-6/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-dg2-9:        NOTRUN -> [SKIP][175] ([i915#13707])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#8812])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#3555] / [i915#3840])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#3555] / [i915#3840])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-tglu:         NOTRUN -> [SKIP][179] ([i915#3840] / [i915#9053])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-10/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-dg2-9:        NOTRUN -> [SKIP][180] ([i915#1839])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#1839])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@kms_feature_discovery@display-3x.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][182] ([i915#1839])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-on-nop:
>     - shard-mtlp:         NOTRUN -> [SKIP][183] ([i915#9934])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@kms_flip@2x-flip-vs-dpms-on-nop.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank:
>     - shard-mtlp:         NOTRUN -> [SKIP][184] ([i915#3637] / [i915#9934]) +1 other test skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@kms_flip@2x-flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-panning:
>     - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#9934]) +4 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_flip@2x-flip-vs-panning.html
>     - shard-tglu:         NOTRUN -> [SKIP][186] ([i915#3637] / [i915#9934]) +2 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-9/igt@kms_flip@2x-flip-vs-panning.html
> 
>   * igt@kms_flip@2x-flip-vs-wf_vblank:
>     - shard-dg2-9:        NOTRUN -> [SKIP][187] ([i915#9934]) +5 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_flip@2x-flip-vs-wf_vblank.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#9934]) +4 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-6/igt@kms_flip@2x-modeset-vs-vblank-race.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][189] ([i915#3637] / [i915#9934]) +2 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip@flip-vs-dpms-on-nop:
>     - shard-rkl:          [PASS][190] -> [SKIP][191] ([i915#14544] / [i915#14553])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-5/igt@kms_flip@flip-vs-dpms-on-nop.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_flip@flip-vs-dpms-on-nop.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible:
>     - shard-rkl:          [PASS][192] -> [SKIP][193] ([i915#14544] / [i915#3637]) +7 other tests skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-5/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-rkl:          [PASS][194] -> [INCOMPLETE][195] ([i915#6113])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-7/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-3/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][196] ([i915#6113])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-3/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html
> 
>   * igt@kms_flip@modeset-vs-vblank-race:
>     - shard-dg1:          [PASS][197] -> [DMESG-WARN][198] ([i915#4423]) +1 other test dmesg-warn
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-dg1-13/igt@kms_flip@modeset-vs-vblank-race.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg1-19/igt@kms_flip@modeset-vs-vblank-race.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][199] ([i915#2672] / [i915#3555])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#2672] / [i915#3555]) +1 other test skip
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][201] ([i915#2672] / [i915#3555])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#2672] / [i915#3555] / [i915#5190])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#2672]) +1 other test skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][204] ([i915#2587] / [i915#2672] / [i915#3555])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][205] ([i915#2587] / [i915#2672]) +1 other test skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][206] ([i915#2587] / [i915#2672]) +1 other test skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:
>     - shard-rkl:          [PASS][207] -> [SKIP][208] ([i915#14544] / [i915#3555]) +4 other tests skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#2672] / [i915#3555])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][210] ([i915#2672] / [i915#3555]) +1 other test skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#2672]) +7 other tests skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][212] ([i915#2672] / [i915#3555] / [i915#5190]) +2 other tests skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][213] ([i915#2672] / [i915#3555] / [i915#8813]) +3 other tests skip
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-valid-mode:
>     - shard-dg2-9:        NOTRUN -> [SKIP][214] ([i915#2672]) +3 other tests skip
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-rkl:          [PASS][215] -> [SKIP][216] ([i915#14544] / [i915#1849] / [i915#5354]) +11 other tests skip
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#5354]) +17 other tests skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][218] ([i915#8708]) +12 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc:
>     - shard-mtlp:         NOTRUN -> [SKIP][219] ([i915#1825]) +5 other tests skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
>     - shard-tglu-1:       NOTRUN -> [SKIP][220] +34 other tests skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][221] ([i915#1825]) +21 other tests skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][222] ([i915#10056])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-glk3/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#3023]) +14 other tests skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
>     - shard-dg2-9:        NOTRUN -> [SKIP][224] ([i915#3458]) +7 other tests skip
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#3458]) +10 other tests skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite:
>     - shard-dg1:          NOTRUN -> [SKIP][226] ([i915#3458])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][227] ([i915#8708]) +3 other tests skip
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-wc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][228] ([i915#8708]) +11 other tests skip
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-dg2-9:        NOTRUN -> [SKIP][229] ([i915#5354]) +17 other tests skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render:
>     - shard-tglu:         NOTRUN -> [SKIP][230] +60 other tests skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#3555] / [i915#8228])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#12713])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@kms_hdr@brightness-with-hdr.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][233] ([i915#12713])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-dg2-9:        NOTRUN -> [SKIP][234] ([i915#3555] / [i915#8228]) +1 other test skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2:          [PASS][235] -> [SKIP][236] ([i915#3555] / [i915#8228]) +1 other test skip
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-dg2-11/igt@kms_hdr@static-toggle-suspend.html
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-4/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_invalid_mode@bad-htotal:
>     - shard-rkl:          [PASS][237] -> [SKIP][238] ([i915#14544] / [i915#3555] / [i915#8826]) +2 other tests skip
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-7/igt@kms_invalid_mode@bad-htotal.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_invalid_mode@bad-htotal.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-dg2-9:        NOTRUN -> [SKIP][239] ([i915#12388])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_joiner@basic-force-big-joiner.html
>     - shard-rkl:          NOTRUN -> [SKIP][240] ([i915#12388])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][241] ([i915#12394])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-9/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_joiner@basic-max-non-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][242] ([i915#13688])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-10/igt@kms_joiner@basic-max-non-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-big-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#12388])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@kms_joiner@invalid-modeset-force-big-joiner.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][244] ([i915#12388])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-ultra-joiner:
>     - shard-dg2-9:        NOTRUN -> [SKIP][245] ([i915#12339])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_joiner@invalid-modeset-ultra-joiner.html
> 
>   * igt@kms_lease@lease-invalid-plane:
>     - shard-rkl:          [PASS][246] -> [SKIP][247] ([i915#14544]) +53 other tests skip
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-8/igt@kms_lease@lease-invalid-plane.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_lease@lease-invalid-plane.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          NOTRUN -> [SKIP][248] ([i915#4816])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>     - shard-tglu:         NOTRUN -> [SKIP][249] ([i915#1839])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-9/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_panel_fitting@atomic-fastset:
>     - shard-rkl:          NOTRUN -> [SKIP][250] ([i915#6301])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@kms_panel_fitting@atomic-fastset.html
> 
>   * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
>     - shard-dg2:          NOTRUN -> [SKIP][251] +7 other tests skip
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12:
>     - shard-rkl:          [PASS][252] -> [SKIP][253] ([i915#11190] / [i915#14544]) +1 other test skip
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc:
>     - shard-glk11:        NOTRUN -> [SKIP][254] ([i915#11190]) +1 other test skip
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-glk11/igt@kms_pipe_crc_basic@nonblocking-crc.html
> 
>   * igt@kms_plane@planar-pixel-format-settings:
>     - shard-rkl:          [PASS][255] -> [SKIP][256] ([i915#14544] / [i915#9581])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-8/igt@kms_plane@planar-pixel-format-settings.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_plane@planar-pixel-format-settings.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][257] ([i915#13026])
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-glk9/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [FAIL][258] ([i915#7862]) +1 other test fail
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-glk8/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-min:
>     - shard-rkl:          [PASS][259] -> [SKIP][260] ([i915#14544] / [i915#7294])
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-7/igt@kms_plane_alpha_blend@constant-alpha-min.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_plane_alpha_blend@constant-alpha-min.html
> 
>   * igt@kms_plane_lowres@tiling-none@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][261] ([i915#10226] / [i915#11614] / [i915#3582]) +2 other tests skip
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@kms_plane_lowres@tiling-none@pipe-b-edp-1.html
> 
>   * igt@kms_plane_lowres@tiling-none@pipe-d-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][262] ([i915#11614] / [i915#3582]) +1 other test skip
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@kms_plane_lowres@tiling-none@pipe-d-edp-1.html
> 
>   * igt@kms_plane_multiple@2x-tiling-4:
>     - shard-dg2:          NOTRUN -> [SKIP][263] ([i915#13958])
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-6/igt@kms_plane_multiple@2x-tiling-4.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][264] ([i915#13958])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-4.html
> 
>   * igt@kms_plane_multiple@2x-tiling-x:
>     - shard-rkl:          NOTRUN -> [SKIP][265] ([i915#13958])
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-x.html
> 
>   * igt@kms_plane_multiple@2x-tiling-y:
>     - shard-glk:          [PASS][266] -> [SKIP][267]
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-glk3/igt@kms_plane_multiple@2x-tiling-y.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-glk8/igt@kms_plane_multiple@2x-tiling-y.html
>     - shard-tglu:         NOTRUN -> [SKIP][268] ([i915#13958]) +1 other test skip
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-9/igt@kms_plane_multiple@2x-tiling-y.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-dg2-9:        NOTRUN -> [SKIP][269] ([i915#14259]) +1 other test skip
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@2x-scaler-multi-pipe:
>     - shard-mtlp:         NOTRUN -> [SKIP][270] ([i915#9809]) +1 other test skip
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][271] ([i915#13046] / [i915#5354] / [i915#9423])
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-dg2:          NOTRUN -> [SKIP][272] ([i915#6953] / [i915#9423])
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@kms_plane_scaling@intel-max-src-size.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][273] ([i915#6953])
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats:
>     - shard-rkl:          [PASS][274] -> [SKIP][275] ([i915#14544] / [i915#3555] / [i915#8152])
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
>     - shard-rkl:          NOTRUN -> [SKIP][276] ([i915#12247]) +4 other tests skip
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format:
>     - shard-rkl:          [PASS][277] -> [SKIP][278] ([i915#14544] / [i915#8152])
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5:
>     - shard-rkl:          [PASS][279] -> [SKIP][280] ([i915#12247] / [i915#14544] / [i915#6953] / [i915#8152])
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-5.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a:
>     - shard-rkl:          [PASS][281] -> [SKIP][282] ([i915#12247] / [i915#14544]) +5 other tests skip
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:
>     - shard-rkl:          [PASS][283] -> [SKIP][284] ([i915#14544] / [i915#6953] / [i915#8152])
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b:
>     - shard-rkl:          [PASS][285] -> [SKIP][286] ([i915#12247] / [i915#14544] / [i915#8152]) +7 other tests skip
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-b.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-tglu:         NOTRUN -> [SKIP][287] ([i915#9685])
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-9/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc5-dpms-negative:
>     - shard-rkl:          [PASS][288] -> [SKIP][289] ([i915#13441] / [i915#14544])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-2/igt@kms_pm_dc@dc5-dpms-negative.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_pm_dc@dc5-dpms-negative.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-rkl:          NOTRUN -> [SKIP][290] ([i915#9685])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-tglu:         NOTRUN -> [FAIL][291] ([i915#9295])
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-10/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-dg2:          [PASS][292] -> [SKIP][293] ([i915#9340])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-dg2-4/igt@kms_pm_lpsp@kms-lpsp.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-3/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-dg2:          NOTRUN -> [SKIP][294] ([i915#8430])
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-6/igt@kms_pm_lpsp@screens-disabled.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][295] ([i915#8430])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-rkl:          [PASS][296] -> [SKIP][297] ([i915#9519])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-2/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][298] ([i915#9519])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
>     - shard-tglu:         NOTRUN -> [SKIP][299] ([i915#9519])
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-9/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@fences-dpms:
>     - shard-rkl:          [PASS][300] -> [SKIP][301] ([i915#14544] / [i915#1849])
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-8/igt@kms_pm_rpm@fences-dpms.html
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_pm_rpm@fences-dpms.html
> 
>   * igt@kms_pm_rpm@i2c:
>     - shard-dg2:          [PASS][302] -> [FAIL][303] ([i915#8717])
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-dg2-6/igt@kms_pm_rpm@i2c.html
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-2/igt@kms_pm_rpm@i2c.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][304] ([i915#9519])
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-rkl:          [PASS][305] -> [SKIP][306] ([i915#14544] / [i915#9519]) +1 other test skip
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-dg2:          [PASS][307] -> [SKIP][308] ([i915#9519])
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][309] ([i915#6524])
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-dg2:          NOTRUN -> [SKIP][310] ([i915#6524] / [i915#6805]) +1 other test skip
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@kms_prime@basic-modeset-hybrid.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][311] ([i915#6524])
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-mtlp:         NOTRUN -> [SKIP][312] ([i915#12316]) +2 other tests skip
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:
>     - shard-glk:          NOTRUN -> [SKIP][313] ([i915#11520]) +7 other tests skip
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-glk3/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-glk10:        NOTRUN -> [SKIP][314] ([i915#11520]) +6 other tests skip
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-glk10/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
>     - shard-dg2:          NOTRUN -> [SKIP][315] ([i915#11520]) +6 other tests skip
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][316] ([i915#11520]) +4 other tests skip
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:
>     - shard-tglu:         NOTRUN -> [SKIP][317] ([i915#11520]) +4 other tests skip
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-9/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-cursor-plane-update-sf:
>     - shard-glk11:        NOTRUN -> [SKIP][318] ([i915#11520]) +4 other tests skip
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-glk11/igt@kms_psr2_sf@psr2-cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][319] ([i915#11520]) +3 other tests skip
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-plane-move-sf-dmg-area:
>     - shard-dg2-9:        NOTRUN -> [SKIP][320] ([i915#11520]) +4 other tests skip
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_psr2_sf@psr2-plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-tglu:         NOTRUN -> [SKIP][321] ([i915#9683])
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-10/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@fbc-psr2-cursor-plane-onoff:
>     - shard-mtlp:         NOTRUN -> [SKIP][322] ([i915#9688]) +5 other tests skip
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@kms_psr@fbc-psr2-cursor-plane-onoff.html
> 
>   * igt@kms_psr@pr-cursor-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][323] ([i915#1072] / [i915#9732]) +15 other tests skip
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-6/igt@kms_psr@pr-cursor-mmap-cpu.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][324] ([i915#9732]) +10 other tests skip
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@kms_psr@pr-cursor-mmap-cpu.html
> 
>   * igt@kms_psr@psr-primary-mmap-gtt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][325] ([i915#1072] / [i915#9732]) +12 other tests skip
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_psr@psr-primary-mmap-gtt.html
> 
>   * igt@kms_psr@psr-primary-mmap-gtt@edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][326] ([i915#4077] / [i915#9688]) +1 other test skip
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html
> 
>   * igt@kms_psr@psr-sprite-blt:
>     - shard-tglu:         NOTRUN -> [SKIP][327] ([i915#9732]) +15 other tests skip
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-10/igt@kms_psr@psr-sprite-blt.html
> 
>   * igt@kms_psr@psr2-sprite-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][328] ([i915#1072] / [i915#9732]) +11 other tests skip
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@kms_psr@psr2-sprite-mmap-cpu.html
> 
>   * igt@kms_rotation_crc@bad-tiling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][329] ([i915#12755])
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_rotation_crc@bad-tiling.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-tglu-1:       NOTRUN -> [SKIP][330] ([i915#5289])
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-tglu:         NOTRUN -> [SKIP][331] ([i915#5289])
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-9/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-270:
>     - shard-dg2:          NOTRUN -> [SKIP][332] ([i915#12755])
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@kms_rotation_crc@sprite-rotation-270.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none:
>     - shard-tglu:         NOTRUN -> [SKIP][333] ([i915#3555]) +1 other test skip
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-9/igt@kms_scaling_modes@scaling-mode-none.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-dg2-9:        NOTRUN -> [ABORT][334] ([i915#13179]) +1 other test abort
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-tglu:         NOTRUN -> [SKIP][335] ([i915#8623])
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-9/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_vblank@ts-continuation-dpms-rpm@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][336] ([i915#12964]) +5 other tests dmesg-warn
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_vblank@ts-continuation-dpms-rpm@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_vblank@ts-continuation-idle-hang:
>     - shard-glk10:        NOTRUN -> [SKIP][337] +218 other tests skip
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-glk10/igt@kms_vblank@ts-continuation-idle-hang.html
> 
>   * igt@kms_vrr@flipline:
>     - shard-mtlp:         NOTRUN -> [SKIP][338] ([i915#3555] / [i915#8808])
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@kms_vrr@flipline.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][339] ([i915#3555]) +3 other tests skip
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_vrr@flipline.html
> 
>   * igt@kms_vrr@lobf:
>     - shard-rkl:          NOTRUN -> [SKIP][340] ([i915#11920])
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_vrr@lobf.html
>     - shard-tglu:         NOTRUN -> [SKIP][341] ([i915#11920])
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-9/igt@kms_vrr@lobf.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][342] ([i915#9906])
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-dg2:          NOTRUN -> [SKIP][343] ([i915#9906])
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@kms_vrr@seamless-rr-switch-vrr.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][344] ([i915#9906])
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-glk:          NOTRUN -> [SKIP][345] ([i915#2437]) +1 other test skip
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-glk8/igt@kms_writeback@writeback-fb-id.html
>     - shard-tglu:         NOTRUN -> [SKIP][346] ([i915#2437])
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-9/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-dg2-9:        NOTRUN -> [SKIP][347] ([i915#2437] / [i915#9412])
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@perf@gen12-group-concurrent-oa-buffer-read:
>     - shard-rkl:          [PASS][348] -> [FAIL][349] ([i915#10538])
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-7/igt@perf@gen12-group-concurrent-oa-buffer-read.html
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-3/igt@perf@gen12-group-concurrent-oa-buffer-read.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-mtlp:         NOTRUN -> [SKIP][350] +4 other tests skip
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@perf@gen8-unprivileged-single-ctx-counters.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][351] ([i915#2436])
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf@unprivileged-single-ctx-counters:
>     - shard-rkl:          NOTRUN -> [SKIP][352] ([i915#2433])
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@perf@unprivileged-single-ctx-counters.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2:          [PASS][353] -> [FAIL][354] ([i915#4349]) +4 other tests fail
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-2/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   * igt@perf_pmu@frequency:
>     - shard-dg2:          NOTRUN -> [FAIL][355] ([i915#12549] / [i915#6806]) +1 other test fail
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-6/igt@perf_pmu@frequency.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-dg2:          NOTRUN -> [FAIL][356] ([i915#14433])
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@perf_pmu@module-unload.html
>     - shard-tglu-1:       NOTRUN -> [FAIL][357] ([i915#14433])
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@perf_pmu@module-unload.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][358] ([i915#8516])
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-6/igt@perf_pmu@rc6@other-idle-gt0.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][359] ([i915#8516])
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-1/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@prime_busy@hang:
>     - shard-rkl:          [PASS][360] -> [DMESG-WARN][361] ([i915#12917] / [i915#12964]) +1 other test dmesg-warn
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-2/igt@prime_busy@hang.html
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@prime_busy@hang.html
> 
>   * igt@prime_mmap@test_aperture_limit:
>     - shard-dg2:          NOTRUN -> [SKIP][362] ([i915#14121]) +1 other test skip
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-6/igt@prime_mmap@test_aperture_limit.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][363] ([i915#3708])
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@prime_vgem@coherency-gtt.html
>     - shard-mtlp:         NOTRUN -> [SKIP][364] ([i915#3708] / [i915#4077])
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-7/igt@prime_vgem@coherency-gtt.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][365] ([i915#3708] / [i915#4077])
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-9/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][366] ([i915#3708])
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-7/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
>     - shard-tglu:         NOTRUN -> [FAIL][367] ([i915#12910])
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-tglu-9/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@info:
>     - shard-rkl:          [SKIP][368] ([i915#14544] / [i915#1849] / [i915#2582]) -> [PASS][369]
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@fbdev@info.html
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@fbdev@info.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-3:
>     - shard-rkl:          [TIMEOUT][370] ([i915#12917] / [i915#12964]) -> [PASS][371] +1 other test pass
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-4/igt@gem_pxp@reject-modify-context-protection-off-3.html
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-off-3.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-rkl:          [INCOMPLETE][372] ([i915#13356]) -> [PASS][373]
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-3/igt@gem_workarounds@suspend-resume.html
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@i915_module_load@reload-no-display:
>     - shard-snb:          [DMESG-WARN][374] ([i915#14545]) -> [PASS][375]
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-snb6/igt@i915_module_load@reload-no-display.html
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-snb1/igt@i915_module_load@reload-no-display.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-dg2:          [DMESG-WARN][376] ([i915#14545]) -> [PASS][377]
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-dg2-7/igt@i915_module_load@resize-bar.html
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-8/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_rpm@gem-mmap-type:
>     - shard-rkl:          [SKIP][378] ([i915#13328]) -> [PASS][379]
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-4/igt@i915_pm_rpm@gem-mmap-type.html
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@i915_pm_rpm@gem-mmap-type.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-mtlp:         [DMESG-FAIL][380] ([i915#12061]) -> [PASS][381] +1 other test pass
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-mtlp-4/igt@i915_selftest@live@workarounds.html
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-1/igt@i915_selftest@live@workarounds.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-rkl:          [INCOMPLETE][382] ([i915#4817]) -> [PASS][383]
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-3/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_addfb_basic@too-wide:
>     - shard-dg1:          [DMESG-WARN][384] ([i915#4423]) -> [PASS][385] +4 other tests pass
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-dg1-18/igt@kms_addfb_basic@too-wide.html
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg1-16/igt@kms_addfb_basic@too-wide.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-dg2:          [FAIL][386] ([i915#10991] / [i915#12766]) -> [PASS][387]
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-dg2-4/igt@kms_async_flips@alternate-sync-async-flip.html
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-3/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
>     - shard-mtlp:         [FAIL][388] ([i915#12469] / [i915#5138]) -> [PASS][389]
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_color@gamma:
>     - shard-rkl:          [SKIP][390] ([i915#12655] / [i915#14544]) -> [PASS][391] +2 other tests pass
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_color@gamma.html
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_color@gamma.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-256x256:
>     - shard-rkl:          [SKIP][392] ([i915#14544]) -> [PASS][393] +48 other tests pass
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-256x256.html
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-256x256.html
> 
>   * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
>     - shard-rkl:          [SKIP][394] ([i915#11190] / [i915#14544]) -> [PASS][395] +1 other test pass
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
> 
>   * igt@kms_flip@modeset-vs-vblank-race-interruptible:
>     - shard-rkl:          [SKIP][396] ([i915#14544] / [i915#3637]) -> [PASS][397] +6 other tests pass
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_flip@modeset-vs-vblank-race-interruptible.html
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_flip@modeset-vs-vblank-race-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling:
>     - shard-rkl:          [SKIP][398] ([i915#14544] / [i915#3555]) -> [PASS][399] +1 other test pass
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu:
>     - shard-rkl:          [SKIP][400] ([i915#14544] / [i915#1849] / [i915#5354]) -> [PASS][401] +11 other tests pass
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_invalid_mode@int-max-clock:
>     - shard-rkl:          [SKIP][402] ([i915#14544] / [i915#3555] / [i915#8826]) -> [PASS][403] +2 other tests pass
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_invalid_mode@int-max-clock.html
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_invalid_mode@int-max-clock.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc:
>     - shard-rkl:          [INCOMPLETE][404] ([i915#13476]) -> [PASS][405]
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-2/igt@kms_pipe_crc_basic@suspend-read-crc.html
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@kms_pipe_crc_basic@suspend-read-crc.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:
>     - shard-glk:          [INCOMPLETE][406] ([i915#13026]) -> [PASS][407]
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-glk9/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-glk9/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
> 
>   * igt@kms_plane@plane-position-hole-dpms:
>     - shard-rkl:          [SKIP][408] ([i915#14544] / [i915#8825]) -> [PASS][409]
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_plane@plane-position-hole-dpms.html
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_plane@plane-position-hole-dpms.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format:
>     - shard-rkl:          [SKIP][410] ([i915#14544] / [i915#8152]) -> [PASS][411]
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b:
>     - shard-rkl:          [DMESG-WARN][412] ([i915#12964]) -> [PASS][413] +3 other tests pass
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25:
>     - shard-rkl:          [SKIP][414] ([i915#14544] / [i915#6953] / [i915#8152]) -> [PASS][415]
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a:
>     - shard-rkl:          [SKIP][416] ([i915#12247] / [i915#14544]) -> [PASS][417] +4 other tests pass
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a.html
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:
>     - shard-rkl:          [SKIP][418] ([i915#12247] / [i915#14544] / [i915#6953] / [i915#8152]) -> [PASS][419]
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b:
>     - shard-rkl:          [SKIP][420] ([i915#12247] / [i915#14544] / [i915#8152]) -> [PASS][421] +4 other tests pass
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b.html
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-b.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25:
>     - shard-rkl:          [SKIP][422] ([i915#14544] / [i915#3555] / [i915#6953] / [i915#8152]) -> [PASS][423] +1 other test pass
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
> 
>   * igt@kms_pm_rpm@cursor-dpms:
>     - shard-rkl:          [SKIP][424] ([i915#14544] / [i915#1849]) -> [PASS][425]
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_pm_rpm@cursor-dpms.html
>    [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_pm_rpm@cursor-dpms.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [SKIP][426] ([i915#9519]) -> [PASS][427] +2 other tests pass
>    [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_properties@plane-properties-atomic:
>     - shard-rkl:          [SKIP][428] ([i915#11521] / [i915#14544]) -> [PASS][429]
>    [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_properties@plane-properties-atomic.html
>    [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-3/igt@kms_properties@plane-properties-atomic.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak:
>     - shard-mtlp:         [FAIL][430] ([i915#9196]) -> [PASS][431] +1 other test pass
>    [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak.html
>    [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak.html
> 
>   * igt@perf_pmu@interrupts-sync:
>     - shard-rkl:          [FAIL][432] ([i915#14470]) -> [PASS][433]
>    [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-3/igt@perf_pmu@interrupts-sync.html
>    [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-8/igt@perf_pmu@interrupts-sync.html
> 
>   * igt@perf_pmu@render-node-busy-idle@vcs1:
>     - shard-dg2:          [FAIL][434] ([i915#4349]) -> [PASS][435] +5 other tests pass
>    [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-dg2-11/igt@perf_pmu@render-node-busy-idle@vcs1.html
>    [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-4/igt@perf_pmu@render-node-busy-idle@vcs1.html
> 
>   
> #### Warnings ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-rkl:          [SKIP][436] ([i915#8411]) -> [SKIP][437] ([i915#14544] / [i915#8411])
>    [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-2/igt@api_intel_bb@blit-reloc-keep-cache.html
>    [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-rkl:          [SKIP][438] ([i915#11078]) -> [SKIP][439] ([i915#11078] / [i915#14544])
>    [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-7/igt@device_reset@unbind-cold-reset-rebind.html
>    [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@gem_ccs@ctrl-surf-copy-new-ctx:
>     - shard-rkl:          [SKIP][440] ([i915#14544] / [i915#9323]) -> [SKIP][441] ([i915#9323])
>    [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
>    [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-rkl:          [SKIP][442] ([i915#14544] / [i915#7697]) -> [SKIP][443] ([i915#7697])
>    [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@gem_close_race@multigpu-basic-threads.html
>    [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-3/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-rkl:          [SKIP][444] ([i915#14544] / [i915#280]) -> [SKIP][445] ([i915#280])
>    [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@gem_ctx_sseu@mmap-args.html
>    [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-3/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-rkl:          [SKIP][446] ([i915#14544] / [i915#4525]) -> [SKIP][447] ([i915#4525]) +1 other test skip
>    [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@gem_exec_balancer@parallel.html
>    [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-rkl:          [SKIP][448] ([i915#4525]) -> [SKIP][449] ([i915#14544] / [i915#4525])
>    [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-5/igt@gem_exec_balancer@parallel-ordering.html
>    [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-rkl:          [SKIP][450] ([i915#14544] / [i915#6334]) -> [SKIP][451] ([i915#6334]) +1 other test skip
>    [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@gem_exec_capture@capture-invisible@smem0.html
>    [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
>     - shard-rkl:          [SKIP][452] ([i915#3281]) -> [SKIP][453] ([i915#14544] / [i915#3281]) +8 other tests skip
>    [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
>    [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-read-noreloc:
>     - shard-rkl:          [SKIP][454] ([i915#14544] / [i915#3281]) -> [SKIP][455] ([i915#3281]) +7 other tests skip
>    [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@gem_exec_reloc@basic-write-read-noreloc.html
>    [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@gem_exec_reloc@basic-write-read-noreloc.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-rkl:          [SKIP][456] ([i915#14544] / [i915#7276]) -> [SKIP][457] ([i915#7276])
>    [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html
>    [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-rkl:          [SKIP][458] ([i915#2190]) -> [SKIP][459] ([i915#14544] / [i915#2190])
>    [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-8/igt@gem_huc_copy@huc-copy.html
>    [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@massive-random:
>     - shard-rkl:          [SKIP][460] ([i915#4613]) -> [SKIP][461] ([i915#14544] / [i915#4613]) +3 other tests skip
>    [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-8/igt@gem_lmem_swapping@massive-random.html
>    [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@gem_lmem_swapping@massive-random.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-rkl:          [SKIP][462] ([i915#14544] / [i915#4613]) -> [SKIP][463] ([i915#4613]) +1 other test skip
>    [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@gem_lmem_swapping@random.html
>    [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_media_vme:
>     - shard-rkl:          [SKIP][464] ([i915#14544] / [i915#284]) -> [SKIP][465] ([i915#284])
>    [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@gem_media_vme.html
>    [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-3/igt@gem_media_vme.html
> 
>   * igt@gem_partial_pwrite_pread@reads-uncached:
>     - shard-rkl:          [SKIP][466] ([i915#14544] / [i915#3282]) -> [SKIP][467] ([i915#3282]) +4 other tests skip
>    [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@gem_partial_pwrite_pread@reads-uncached.html
>    [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@gem_partial_pwrite_pread@reads-uncached.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-display:
>     - shard-rkl:          [SKIP][468] ([i915#3282]) -> [SKIP][469] ([i915#14544] / [i915#3282]) +4 other tests skip
>    [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
>    [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
> 
>   * igt@gem_pxp@verify-pxp-stale-ctx-execution:
>     - shard-rkl:          [SKIP][470] ([i915#14544] / [i915#4270]) -> [TIMEOUT][471] ([i915#12917] / [i915#12964])
>    [470]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
>    [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-rkl:          [SKIP][472] ([i915#14544] / [i915#8411]) -> [SKIP][473] ([i915#8411]) +1 other test skip
>    [472]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
>    [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-rkl:          [SKIP][474] ([i915#14544] / [i915#3297]) -> [SKIP][475] ([i915#3297])
>    [474]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@gem_userptr_blits@coherency-sync.html
>    [475]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-3/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-rkl:          [SKIP][476] ([i915#3297]) -> [SKIP][477] ([i915#14544] / [i915#3297]) +4 other tests skip
>    [476]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-2/igt@gem_userptr_blits@coherency-unsync.html
>    [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-rkl:          [SKIP][478] ([i915#14544] / [i915#3282] / [i915#3297]) -> [SKIP][479] ([i915#3282] / [i915#3297])
>    [478]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@gem_userptr_blits@forbidden-operations.html
>    [479]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gen9_exec_parse@batch-zero-length:
>     - shard-rkl:          [SKIP][480] ([i915#2527]) -> [SKIP][481] ([i915#14544] / [i915#2527])
>    [480]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-5/igt@gen9_exec_parse@batch-zero-length.html
>    [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@gen9_exec_parse@batch-zero-length.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-rkl:          [SKIP][482] ([i915#14544] / [i915#2527]) -> [SKIP][483] ([i915#2527]) +1 other test skip
>    [482]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html
>    [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-rkl:          [SKIP][484] ([i915#14544] / [i915#8399]) -> [SKIP][485] ([i915#8399])
>    [484]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@i915_pm_freq_api@freq-suspend.html
>    [485]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@i915_pm_freq_mult@media-freq@gt0:
>     - shard-rkl:          [SKIP][486] ([i915#6590]) -> [SKIP][487] ([i915#14544] / [i915#6590]) +1 other test skip
>    [486]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-5/igt@i915_pm_freq_mult@media-freq@gt0.html
>    [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-rkl:          [SKIP][488] ([i915#14544] / [i915#4387]) -> [SKIP][489] ([i915#4387])
>    [488]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@i915_pm_sseu@full-enable.html
>    [489]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@intel_hwmon@hwmon-read:
>     - shard-rkl:          [SKIP][490] ([i915#7707]) -> [SKIP][491] ([i915#14544] / [i915#7707])
>    [490]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-5/igt@intel_hwmon@hwmon-read.html
>    [491]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@intel_hwmon@hwmon-read.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-tiled:
>     - shard-rkl:          [SKIP][492] ([i915#14544]) -> [DMESG-WARN][493] ([i915#12964])
>    [492]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_async_flips@async-flip-with-page-flip-events-tiled.html
>    [493]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_async_flips@async-flip-with-page-flip-events-tiled.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-rkl:          [SKIP][494] ([i915#5286]) -> [SKIP][495] ([i915#14544]) +6 other tests skip
>    [494]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-8/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
>    [495]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-rkl:          [SKIP][496] ([i915#14544]) -> [SKIP][497] ([i915#5286]) +4 other tests skip
>    [496]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [497]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
>     - shard-rkl:          [SKIP][498] ([i915#3638]) -> [SKIP][499] ([i915#14544]) +1 other test skip
>    [498]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
>    [499]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
>     - shard-rkl:          [SKIP][500] ([i915#14544]) -> [SKIP][501] ([i915#3638])
>    [500]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
>    [501]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-rkl:          [SKIP][502] -> [SKIP][503] ([i915#14544]) +18 other tests skip
>    [502]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-7/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
>    [503]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_busy@extended-modeset-hang-newfb:
>     - shard-rkl:          [DMESG-WARN][504] ([i915#12964]) -> [SKIP][505] ([i915#14544])
>    [504]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-2/igt@kms_busy@extended-modeset-hang-newfb.html
>    [505]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_busy@extended-modeset-hang-newfb.html
> 
>   * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs:
>     - shard-rkl:          [SKIP][506] ([i915#14544]) -> [SKIP][507] ([i915#14098] / [i915#6095]) +9 other tests skip
>    [506]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html
>    [507]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-3/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
>     - shard-rkl:          [SKIP][508] ([i915#14544]) -> [SKIP][509] ([i915#12313])
>    [508]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
>    [509]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs:
>     - shard-rkl:          [SKIP][510] ([i915#14098] / [i915#6095]) -> [SKIP][511] ([i915#14544]) +13 other tests skip
>    [510]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs.html
>    [511]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
>     - shard-rkl:          [SKIP][512] ([i915#12313]) -> [SKIP][513] ([i915#14544]) +1 other test skip
>    [512]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
>    [513]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-rkl:          [SKIP][514] ([i915#14544] / [i915#3742]) -> [SKIP][515] ([i915#3742]) +1 other test skip
>    [514]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_cdclk@mode-transition.html
>    [515]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_chamelium_frames@hdmi-frame-dump:
>     - shard-rkl:          [SKIP][516] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][517] ([i915#11151] / [i915#7828]) +8 other tests skip
>    [516]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_chamelium_frames@hdmi-frame-dump.html
>    [517]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_chamelium_frames@hdmi-frame-dump.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-fast:
>     - shard-rkl:          [SKIP][518] ([i915#11151] / [i915#7828]) -> [SKIP][519] ([i915#11151] / [i915#14544] / [i915#7828]) +8 other tests skip
>    [518]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-fast.html
>    [519]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-fast.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-rkl:          [SKIP][520] ([i915#14544]) -> [SKIP][521] ([i915#7118] / [i915#9424])
>    [520]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_content_protection@atomic-dpms.html
>    [521]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-3/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-rkl:          [SKIP][522] ([i915#9424]) -> [SKIP][523] ([i915#14544])
>    [522]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-2/igt@kms_content_protection@lic-type-1.html
>    [523]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          [SKIP][524] ([i915#9424]) -> [SKIP][525] ([i915#9433])
>    [524]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-dg1-15/igt@kms_content_protection@mei-interface.html
>    [525]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg1-12/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-256x85:
>     - shard-rkl:          [FAIL][526] ([i915#13566]) -> [SKIP][527] ([i915#14544])
>    [526]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-256x85.html
>    [527]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-256x85.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x10:
>     - shard-rkl:          [SKIP][528] ([i915#3555]) -> [SKIP][529] ([i915#14544]) +2 other tests skip
>    [528]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-8/igt@kms_cursor_crc@cursor-random-32x10.html
>    [529]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_cursor_crc@cursor-random-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-dg1:          [SKIP][530] ([i915#13049]) -> [SKIP][531] ([i915#13049] / [i915#4423])
>    [530]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-dg1-16/igt@kms_cursor_crc@cursor-random-512x170.html
>    [531]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg1-16/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-rkl:          [SKIP][532] ([i915#14544]) -> [SKIP][533] ([i915#3555]) +4 other tests skip
>    [532]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
>    [533]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-rkl:          [SKIP][534] ([i915#13049]) -> [SKIP][535] ([i915#14544])
>    [534]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-512x170.html
>    [535]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-64x21:
>     - shard-rkl:          [DMESG-FAIL][536] ([i915#12964]) -> [SKIP][537] ([i915#14544])
>    [536]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-64x21.html
>    [537]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-64x21.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-rkl:          [SKIP][538] ([i915#11190] / [i915#14544]) -> [SKIP][539] ([i915#4103])
>    [538]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>    [539]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-rkl:          [SKIP][540] ([i915#14544]) -> [SKIP][541] ([i915#4103])
>    [540]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
>    [541]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
>     - shard-rkl:          [SKIP][542] ([i915#14544]) -> [SKIP][543] +15 other tests skip
>    [542]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
>    [543]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-rkl:          [SKIP][544] ([i915#4103]) -> [SKIP][545] ([i915#14544])
>    [544]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
>    [545]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-rkl:          [SKIP][546] ([i915#14544]) -> [SKIP][547] ([i915#9723]) +1 other test skip
>    [546]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
>    [547]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-rkl:          [SKIP][548] ([i915#13691]) -> [SKIP][549] ([i915#14544])
>    [548]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-7/igt@kms_display_modes@extended-mode-basic.html
>    [549]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_dp_linktrain_fallback@dsc-fallback:
>     - shard-rkl:          [SKIP][550] ([i915#14544]) -> [SKIP][551] ([i915#13707])
>    [550]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html
>    [551]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_dp_linktrain_fallback@dsc-fallback.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-rkl:          [SKIP][552] ([i915#3555] / [i915#3840]) -> [SKIP][553] ([i915#14544])
>    [552]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-8/igt@kms_dsc@dsc-with-bpc-formats.html
>    [553]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          [SKIP][554] ([i915#3955]) -> [SKIP][555] ([i915#14544] / [i915#3955])
>    [554]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-7/igt@kms_fbcon_fbt@psr.html
>    [555]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-rkl:          [SKIP][556] ([i915#14544] / [i915#1839]) -> [SKIP][557] ([i915#1839])
>    [556]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_feature_discovery@display-2x.html
>    [557]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-rkl:          [SKIP][558] ([i915#14544] / [i915#658]) -> [SKIP][559] ([i915#658])
>    [558]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_feature_discovery@psr1.html
>    [559]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-3/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-rkl:          [SKIP][560] ([i915#658]) -> [SKIP][561] ([i915#14544] / [i915#658])
>    [560]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-7/igt@kms_feature_discovery@psr2.html
>    [561]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_flip@2x-flip-vs-modeset:
>     - shard-rkl:          [SKIP][562] ([i915#14544] / [i915#9934]) -> [SKIP][563] ([i915#9934]) +5 other tests skip
>    [562]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_flip@2x-flip-vs-modeset.html
>    [563]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-3/igt@kms_flip@2x-flip-vs-modeset.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible:
>     - shard-glk:          [INCOMPLETE][564] ([i915#12745] / [i915#4839]) -> [SKIP][565]
>    [564]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-glk3/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
>    [565]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-glk8/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-rkl:          [SKIP][566] ([i915#9934]) -> [SKIP][567] ([i915#14544] / [i915#9934]) +3 other tests skip
>    [566]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-2/igt@kms_flip@2x-modeset-vs-vblank-race.html
>    [567]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip@blocking-wf_vblank:
>     - shard-rkl:          [DMESG-WARN][568] ([i915#12964]) -> [SKIP][569] ([i915#14544] / [i915#3637])
>    [568]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-5/igt@kms_flip@blocking-wf_vblank.html
>    [569]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_flip@blocking-wf_vblank.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-rkl:          [SKIP][570] ([i915#2672] / [i915#3555]) -> [SKIP][571] ([i915#14544] / [i915#3555]) +1 other test skip
>    [570]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
>    [571]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-rkl:          [SKIP][572] ([i915#14544] / [i915#3555]) -> [SKIP][573] ([i915#2672] / [i915#3555]) +5 other tests skip
>    [572]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
>    [573]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
>     - shard-rkl:          [SKIP][574] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][575] ([i915#3023]) +21 other tests skip
>    [574]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
>    [575]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
>     - shard-rkl:          [SKIP][576] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][577] +1 other test skip
>    [576]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
>    [577]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
>     - shard-rkl:          [SKIP][578] ([i915#14544] / [i915#1849] / [i915#5354]) -> [SKIP][579] ([i915#1825]) +27 other tests skip
>    [578]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html
>    [579]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
>     - shard-dg2:          [SKIP][580] ([i915#10433] / [i915#3458]) -> [SKIP][581] ([i915#3458]) +2 other tests skip
>    [580]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
>    [581]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>     - shard-dg2:          [SKIP][582] ([i915#3458]) -> [SKIP][583] ([i915#10433] / [i915#3458]) +3 other tests skip
>    [582]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
>    [583]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:
>     - shard-rkl:          [SKIP][584] ([i915#1825]) -> [SKIP][585] ([i915#14544] / [i915#1849] / [i915#5354]) +34 other tests skip
>    [584]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html
>    [585]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-rkl:          [SKIP][586] ([i915#3023]) -> [SKIP][587] ([i915#14544] / [i915#1849] / [i915#5354]) +22 other tests skip
>    [586]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-suspend.html
>    [587]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-rkl:          [SKIP][588] ([i915#1187] / [i915#12713]) -> [SKIP][589] ([i915#12713])
>    [588]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-3/igt@kms_hdr@brightness-with-hdr.html
>    [589]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-rkl:          [SKIP][590] ([i915#3555] / [i915#8228]) -> [SKIP][591] ([i915#14544]) +1 other test skip
>    [590]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-5/igt@kms_hdr@invalid-metadata-sizes.html
>    [591]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-rkl:          [SKIP][592] ([i915#12394] / [i915#14544]) -> [SKIP][593] ([i915#12394])
>    [592]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
>    [593]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-3/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-ultra-joiner:
>     - shard-rkl:          [SKIP][594] ([i915#12339] / [i915#14544]) -> [SKIP][595] ([i915#12339])
>    [594]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_joiner@invalid-modeset-ultra-joiner.html
>    [595]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_joiner@invalid-modeset-ultra-joiner.html
> 
>   * igt@kms_plane_multiple@2x-tiling-4:
>     - shard-rkl:          [SKIP][596] ([i915#13958]) -> [SKIP][597] ([i915#14544])
>    [596]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-4.html
>    [597]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-4.html
> 
>   * igt@kms_plane_multiple@2x-tiling-none:
>     - shard-rkl:          [SKIP][598] ([i915#14544]) -> [SKIP][599] ([i915#13958])
>    [598]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.html
>    [599]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-none.html
> 
>   * igt@kms_plane_multiple@tiling-4:
>     - shard-rkl:          [SKIP][600] ([i915#14259]) -> [SKIP][601] ([i915#14544])
>    [600]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-7/igt@kms_plane_multiple@tiling-4.html
>    [601]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_plane_multiple@tiling-4.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-rkl:          [SKIP][602] ([i915#14544]) -> [SKIP][603] ([i915#14259])
>    [602]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html
>    [603]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation:
>     - shard-rkl:          [SKIP][604] ([i915#12247] / [i915#14544] / [i915#8152]) -> [SKIP][605] ([i915#12247]) +1 other test skip
>    [604]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html
>    [605]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-a:
>     - shard-rkl:          [SKIP][606] ([i915#12247] / [i915#14544]) -> [SKIP][607] ([i915#12247])
>    [606]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-a.html
>    [607]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-a.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-rkl:          [SKIP][608] ([i915#5354]) -> [SKIP][609] ([i915#14544] / [i915#5354])
>    [608]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-7/igt@kms_pm_backlight@fade-with-dpms.html
>    [609]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-rkl:          [SKIP][610] ([i915#3361]) -> [FAIL][611] ([i915#9295])
>    [610]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-8/igt@kms_pm_dc@dc6-dpms.html
>    [611]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-4/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          [SKIP][612] ([i915#14544] / [i915#9340]) -> [SKIP][613] ([i915#9340])
>    [612]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html
>    [613]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-3/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-rkl:          [SKIP][614] ([i915#8430]) -> [SKIP][615] ([i915#14544] / [i915#8430])
>    [614]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-2/igt@kms_pm_lpsp@screens-disabled.html
>    [615]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg2:          [SKIP][616] ([i915#12916]) -> [SKIP][617] ([i915#9519])
>    [616]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-dg2-6/igt@kms_pm_rpm@dpms-lpsp.html
>    [617]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg2-2/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-rkl:          [SKIP][618] ([i915#6524]) -> [SKIP][619] ([i915#14544] / [i915#6524])
>    [618]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-8/igt@kms_prime@d3hot.html
>    [619]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
>     - shard-rkl:          [SKIP][620] ([i915#11520] / [i915#14544]) -> [SKIP][621] ([i915#11520]) +5 other tests skip
>    [620]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
>    [621]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
>     - shard-rkl:          [SKIP][622] ([i915#11520]) -> [SKIP][623] ([i915#11520] / [i915#14544]) +8 other tests skip
>    [622]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-7/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html
>    [623]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-rkl:          [SKIP][624] ([i915#9683]) -> [SKIP][625] ([i915#14544] / [i915#9683])
>    [624]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-7/igt@kms_psr2_su@page_flip-xrgb8888.html
>    [625]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-psr-primary-render:
>     - shard-dg1:          [SKIP][626] ([i915#1072] / [i915#9732]) -> [SKIP][627] ([i915#1072] / [i915#4423] / [i915#9732])
>    [626]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-dg1-14/igt@kms_psr@fbc-psr-primary-render.html
>    [627]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-dg1-14/igt@kms_psr@fbc-psr-primary-render.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-render:
>     - shard-rkl:          [SKIP][628] ([i915#1072] / [i915#9732]) -> [SKIP][629] ([i915#1072] / [i915#14544] / [i915#9732]) +19 other tests skip
>    [628]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-5/igt@kms_psr@fbc-psr2-sprite-render.html
>    [629]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html
> 
>   * igt@kms_psr@psr-cursor-mmap-cpu:
>     - shard-rkl:          [SKIP][630] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][631] ([i915#1072] / [i915#9732]) +17 other tests skip
>    [630]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_psr@psr-cursor-mmap-cpu.html
>    [631]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-3/igt@kms_psr@psr-cursor-mmap-cpu.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-rkl:          [SKIP][632] ([i915#5289]) -> [SKIP][633] ([i915#14544]) +1 other test skip
>    [632]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
>    [633]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-rkl:          [SKIP][634] ([i915#14544]) -> [SKIP][635] ([i915#5289]) +1 other test skip
>    [634]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
>    [635]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - shard-rkl:          [SKIP][636] ([i915#14544] / [i915#3555]) -> [SKIP][637] ([i915#3555])
>    [636]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_setmode@basic-clone-single-crtc.html
>    [637]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-rkl:          [SKIP][638] ([i915#14544]) -> [SKIP][639] ([i915#8623])
>    [638]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
>    [639]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-7/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_vrr@flip-basic-fastset:
>     - shard-rkl:          [SKIP][640] ([i915#9906]) -> [SKIP][641] ([i915#14544])
>    [640]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-7/igt@kms_vrr@flip-basic-fastset.html
>    [641]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@kms_vrr@flip-basic-fastset.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-rkl:          [SKIP][642] ([i915#14544] / [i915#2437] / [i915#9412]) -> [SKIP][643] ([i915#2437] / [i915#9412])
>    [642]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
>    [643]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-rkl:          [SKIP][644] ([i915#3291] / [i915#3708]) -> [SKIP][645] ([i915#14544] / [i915#3291] / [i915#3708])
>    [644]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-5/igt@prime_vgem@basic-write.html
>    [645]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@prime_vgem@basic-write.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-rkl:          [SKIP][646] ([i915#14544] / [i915#3708]) -> [SKIP][647] ([i915#3708])
>    [646]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-6/igt@prime_vgem@fence-read-hang.html
>    [647]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-2/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-rkl:          [SKIP][648] ([i915#3708]) -> [SKIP][649] ([i915#14544] / [i915#3708])
>    [648]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-8/igt@prime_vgem@fence-write-hang.html
>    [649]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-rkl:          [SKIP][650] ([i915#9917]) -> [SKIP][651] ([i915#14544] / [i915#9917])
>    [650]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16922/shard-rkl-7/igt@sriov_basic@enable-vfs-bind-unbind-each.html
>    [651]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056
>   [i915#10226]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10226
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10333]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10333
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10991
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11521]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11521
>   [i915#11614]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11614
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
>   [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
>   [i915#11965]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11965
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
>   [i915#12339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339
>   [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
>   [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
>   [i915#12469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12469
>   [i915#12549]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12549
>   [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12766
>   [i915#12796]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12796
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#12916]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#12967]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12967
>   [i915#13026]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13328]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13328
>   [i915#13335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13335
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13390]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
>   [i915#13441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13441
>   [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
>   [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
>   [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
>   [i915#14121]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14121
>   [i915#14123]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14123
>   [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
>   [i915#14433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14433
>   [i915#14470]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14470
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
>   [i915#14553]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14553
>   [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
>   [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346
>   [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
>   [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
>   [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3582
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3936]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3936
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4036]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4036
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#4958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958
>   [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6188]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188
>   [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
>   [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#6806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6806
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
>   [i915#7294]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294
>   [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7862]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7862
>   [i915#8152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8346
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8717
>   [i915#8808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8808
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
>   [i915#8826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8826
>   [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9581]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9581
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
>   [i915#9979]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9979
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16922 -> Patchwork_152088v1
> 
>   CI-20190529: 20190529
>   CI_DRM_16922: 2fe30dbc18cd98a593fa26398fe0147381ca716a @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8475: 1ddc997191d8aa008b49b5a4c47cf295c9a3c4f4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_152088v1: 2fe30dbc18cd98a593fa26398fe0147381ca716a @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152088v1/index.html
