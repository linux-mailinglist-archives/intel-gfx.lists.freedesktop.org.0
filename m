Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B34719ACE20
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 17:08:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 414B710E811;
	Wed, 23 Oct 2024 15:08:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IlxGPD2P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CCCF10E809;
 Wed, 23 Oct 2024 15:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729696104; x=1761232104;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=h2agBdS0HcphH5pLIDAhY3V/dBZG2XdrqArNTnbfeJk=;
 b=IlxGPD2PL/19pgUsuNJYY8EQX1rYaKgq+rfkTL6w2TnEjC4NxF8y0DVn
 VSpy1BDG2paA5VO9kh5ji4DwLw/fCXCiFoEs9Fvb7JcRw0Kn5sJ344glX
 PONwWxszuHJDqOmxYgWsZn6sCZGLXQO+I+FPvfEgjwBj3AEf+MEtuGVm0
 OaMWUv5iZwYpvsDurgYgzdmQp3+nPrLFOzXbJBTBHP0lZWD2xvsGW3Mo2
 +bGJKa3yFcWA9xoXO5yEgxshPJXZawm9+RBsfs8DcqshrY4lXrtHMpfVC
 eemZpQ3Riz2DngAkG25Pyq2wTBQUk3AsTlfPHMjO9FxNeeFKj7GUq+Rpb Q==;
X-CSE-ConnectionGUID: O6KFPbWuSCmas9cgAe+KQA==
X-CSE-MsgGUID: Ekd9aEEVQSGaZIQ8Aj836Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46755473"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46755473"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 08:08:23 -0700
X-CSE-ConnectionGUID: 4a9kVDzFT5SUzKKVPjp6YA==
X-CSE-MsgGUID: QO1xC9xcRmuCTRTjharKWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="103536120"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 08:08:23 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 08:08:22 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 08:08:22 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 08:08:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fi/Hojffn3mB63f0ROiDEdvMjtRVCjuoMIu7MNmHvAyxJ8wbMO6rd63USGWe2Qx++zxkZz4CtoJ6x38/lh4tVOAswtXPFEr4ZbJK8+mWGUXN50sM7VzOB2IRoZ0VmQDxSRXYf70NlWm01oj6XjRiu059ugLTF/epGsGW6Qx0ECSbUVSI3SCrc4N8NJ3+x04QfcDLF45P4cCse+prdpc8JOe4neXyTIuDUEbWsSVFtwjksu0cWfdsAuLdLfQrrkZIfDnI92nmqWCVQzwrfB0qsCfIOkj3l65oYBDCTdCMrm2Y5aJL8GuSlRz2wYrOEfFShfgaFl/Ltb8wakgkcsX6dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QSSb9DVI9VIRZX59DRfB9D0RHqUBQozsnMkGANoKaDA=;
 b=jsKmqSa9T8DvL8ZYC2ase7qnwkAiz7Pe9i0d9nspmCjw00xj/i3aMpbIKA/y7AQZQWe2QLCA8cf8EvCqsiLeO9rN4YI6dDHqg+ykyxzIWWlcZG67uaZUs8GsgkIcj6lTSGTQWBPb9dTQpBmRHt+M+s8ZBJp3Zx0OiKRGxBDM31/EWyFIIwwumigc5INMmTqcvfn5SUTip7fi37fQVojakBiYqu50J7FINyJEuKO6s3P/vcW2Gr3EhJuNb039NBT1GrZ5blwZBV0uOw7oG1p2NqOjZXwg37A/yspm0tnNQYkDgZjENqh/1TFh8CGUGVWu+ZOy7pZsCQJp2k8PcQQKBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH0PR11MB5207.namprd11.prod.outlook.com (2603:10b6:510:32::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.17; Wed, 23 Oct
 2024 15:08:17 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8069.020; Wed, 23 Oct 2024
 15:08:17 +0000
Date: Wed, 23 Oct 2024 11:08:13 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH v4 10/15] drm/i915/display: add subplatform group for
 HSW/BDW ULT
Message-ID: <ZxkRXbReAErE1KjB@intel.com>
References: <cover.1729518793.git.jani.nikula@intel.com>
 <22e5c42f8b8580fa5c6b40a6e1ef9760ba3c99a8.1729518793.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <22e5c42f8b8580fa5c6b40a6e1ef9760ba3c99a8.1729518793.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0063.namprd03.prod.outlook.com
 (2603:10b6:303:b6::8) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH0PR11MB5207:EE_
X-MS-Office365-Filtering-Correlation-Id: b3c1afb3-ab3b-400f-e45f-08dcf3748641
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?IlmH31DO7KZf2keBC0ObHErVdOq3J43NNJ+kB4Ipjj09yLslDo6OeJUiYeVz?=
 =?us-ascii?Q?gArMRyEmEIVPXLfRRt0NtMQprwW03HeOeQd8WH6wVTNcM5xuOg5tXuWOyCFp?=
 =?us-ascii?Q?m/BobHMUfwqvsdYXyavLqQgde6DuC9gYEOXPRjs7YBlba9C4bpixzYITM8GQ?=
 =?us-ascii?Q?LaVLOcKNlM16QejhzzjiiSPtfFZVzEQUubQWjAdeARxtHcX9N7ixwjFHHcAU?=
 =?us-ascii?Q?u4aySsWXdcrMRL1lQ2yidapHiKf6YCa725QN/U0Z8xALuENOxQ3/XS6dfU47?=
 =?us-ascii?Q?loL85Dt9VCtL6PFrjbC1qHxtTPF09rOxGvaitdKdcfsrV2WfOdtWAXNFfcH4?=
 =?us-ascii?Q?8dJACm23MCY21iBFhwG1HZ8Ah6st0q3uRCwVwgAf9rDpXgLJ9yvEojPJzq0h?=
 =?us-ascii?Q?1O/TAufxHmdqK5xOa7Oq1rMfA0qqcG6A/zc/M/CGOxD/VavDWVTZGMx8la8Y?=
 =?us-ascii?Q?nw7i4eUcriWnVGaMHa04vr/nGeelTbC6J2cTZt708peZE5HOyCEtiztP+z3D?=
 =?us-ascii?Q?oAMVaInglGl5LOmm8GZRvpShJmEf+mbaN/hQjYMpzrPxw5db79a3YEhQcAUa?=
 =?us-ascii?Q?QxPeb+DZW3s+epozpILGPp8Jl0pPw7B26S35+YfPSmJk91GG5cOK6F9p6S7b?=
 =?us-ascii?Q?5qaL9f+Xo+qL1+FjLoo9cbg+fc9r0LL5DPx4NDw2m+B1jhLnoUzKOuOVtFWD?=
 =?us-ascii?Q?6HcptZFW1sHiNyinhiJG7M7iCa2HhgJb5z/T2eycTJIs2vhO/kWxGr/60qF2?=
 =?us-ascii?Q?Cel6EuPVAmh8D1t1OSHqOzAzr/BXIdq0rglCOeHYnynrglqQkVn/7ik0oIFW?=
 =?us-ascii?Q?jeYjTTvOxfppI6fUfkpn1KiJ8UKvppOOwBGQxU2X0JCTdrp2cNTp4znvR3Xb?=
 =?us-ascii?Q?oF/2QcVVbXn1qVA7s19qVGjJRbf6jJBURqD/kXeTm96yiAYPyw3hjM36HWhi?=
 =?us-ascii?Q?NtZ3nwIKJBwsdIgg2bZ8thQxgzXF+GQ6VyXANk57jqCAJvUBEKPeL2EfaGO3?=
 =?us-ascii?Q?IxP2Vvc6yaGh3I5LB95Vg1rFZSE1uuVBNSVmeU2gFleySJomSCGGnNfNKhN/?=
 =?us-ascii?Q?sWFg4L/aAG9xRugWPtYylc2IDIMPbeMsad7O6ABHvoa+B67XGrWSmCEvTLNt?=
 =?us-ascii?Q?9LTPEsOkqhBePfpkIlrVcSbT1WD6NmZO4GMHRfcjE+SbfDFueQvwzLucwtte?=
 =?us-ascii?Q?pjJZa2MnZEYN9UiY+ISkU46FdVCoUlK+EfBCzyzuLsHLJUB9olEeWndq1cvy?=
 =?us-ascii?Q?EnUsh2DRmXdSkj9l+tTUVHPWk38DUddgcrYgh+ka19UTHpOPQT8E5aKKltl/?=
 =?us-ascii?Q?lOaUZrDBd1VTo0sW0XuTDT/2?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vJVg7w3c/uFi5tyufVfoQ0tW2Z/zgilvkC49PWdCvkv1nGc7Uo/rVL5ri85/?=
 =?us-ascii?Q?WozOSkl8f1YHHD67O0r5dBAcQ/Mf5sMvoeNZAxhRqxiJDteIlUKd/GaucWLu?=
 =?us-ascii?Q?+Xw3ayEYHP9nCMY/mOs45CLW72+KVlqTJ2ghMV8MWT2pjktMci+9sF3sE3G5?=
 =?us-ascii?Q?de8iD6w2BazInXV4uiuNlKIttd5MixgBjN3L7LyDQz8noBUJZgkAlgeS07pC?=
 =?us-ascii?Q?Hmne41QOmLIS4nFJGzj5QoKaszU5TbfTcUpzYxkt3sL4QjM0j5FaVJdiuZHy?=
 =?us-ascii?Q?7No0ymkXD205iWZWk2iYgABchDb36fnredtq0M/F/5ejuRR7sQCAOcCGthVJ?=
 =?us-ascii?Q?3R+hUN+ZRzxLBbmRXXD2rAQu9Bt/9ZC6k+/9S9PRukzFRsy9LEbgmw/RJbpq?=
 =?us-ascii?Q?thxxPPntfUzsoIQC+jEyqtxL9GLXnxIEYjJcZ30R0g91jaYRrEzMA+dGXHlt?=
 =?us-ascii?Q?oxj2S6GW+vpqYViYbtdVGALwuRwBFijjJBvQ7gqxlHQSIOJUM2Osb/2CmeMp?=
 =?us-ascii?Q?tq83ScT3EyMhthV95cIGGao0+xpow9agUJyuWcrmt6RMzOOecnYWm1xBZ+6a?=
 =?us-ascii?Q?ng6BnIk1x9kEgUhgCf8yHyMFoAD6cq3qBQDEdWonUPz6bMul/Qr1OOWIf3Gn?=
 =?us-ascii?Q?Osjm3G7oky6px8FqELgVGXwzxgBRIC9uY9VWX35eVCU2a94k6F/IzVvCAgCh?=
 =?us-ascii?Q?a6swA6d/f160AMBHzqGMLPY2r2xQmVWH39m3HHf1f+i9E5MAQdhkyZDC2ukL?=
 =?us-ascii?Q?di5E9HU1j5zHGu70AdLKwIrilcPeJIKn2Tf7k41ZIj4PBbGTtZ46yDg2n+0A?=
 =?us-ascii?Q?SnWytcJipWcOExpJf5ajShLJiIu4HkahdQRijoY09m7GpKN7WwxZQ5z8kxAl?=
 =?us-ascii?Q?ZPAQYc2TEaHX95HsoNDIQi0zcV91Ny+NJsX92KS2/xKa13ZfaMPsx2OgeHQk?=
 =?us-ascii?Q?dcM0JrC2/N6HaH/Ae8ad48f+BwytP029cpIPXi5f9sxfo8v93C/Tnwp4x0dp?=
 =?us-ascii?Q?dOe91LSfJhi8ao9TwNRZeoF4M84g8HVTbCwwUYuGc7VyN1PtP8PyNcqe+8L1?=
 =?us-ascii?Q?RIjlAfrg9/mDanRL42x0dMT4DC5LbW5EIXFEwiW8zVSpIghQ0WJltlTcFclg?=
 =?us-ascii?Q?r2BqLDqTIAMVECs56wSBq34hFO2zv1FzEckQRB/iMXeqy7CnA23Dodo5rx5k?=
 =?us-ascii?Q?QR/iC9Ww0SIbzeMjJrMz+cmrbsEipe6TrgL3tx1DXpe8r5TvgqvGZffkiLkJ?=
 =?us-ascii?Q?85lmUHFpwqkgB5PeMgCAktJJtXaHJJO0oQeF+ihGp+M/IWHC0zpJxejA/bhU?=
 =?us-ascii?Q?IfQgOGBvnsZr6KFLG2TpRHkAVZu7veskrutzfk+WOYqwKYZxn3MvmNFSau1/?=
 =?us-ascii?Q?jOJc4i1E+NnSuhoLZcmpnHwjVzFxnYyeEpndrvEYLyObU1I6c8Mx0K6cxUID?=
 =?us-ascii?Q?csbMXUJ4BRnPfbRsyhHWpXWIx1FXH+xQ9pDoZXUhX/rebFdsAkNeZzerVO6q?=
 =?us-ascii?Q?jJXhLXi5buWr3SxUpjSdgBQBnLPj2gOZ2F0+Hq/Fb2uHTUcc0OhpryL77Zc8?=
 =?us-ascii?Q?OTONuMvyhwIjTCsFpqJsV+AFvFa0meAdRSjNquxiTZvd3ZXHjUO8vE1BwuTr?=
 =?us-ascii?Q?yw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b3c1afb3-ab3b-400f-e45f-08dcf3748641
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 15:08:17.6404 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 474mNqndML6PSD7jz5ewq6RcBRf119zFwsWepYIbTZkiFUbgTvey37DW2hrtL6+VVA5gZs+bf6CQUbYS8rd/pQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5207
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

On Mon, Oct 21, 2024 at 04:54:11PM +0300, Jani Nikula wrote:
> Add support for defining aliases for subplatform groups, such as HSW/BDW
> ULT that covers both ULT and ULX.
> 
> ULT is a special case, because we slightly abuse the ULT subplatform
> both as a subplatform and group, but with the way this is defined, it
> should be fairly clear.
> 
> This follows i915 core and IS_HASWELL_ULT()/IS_BROADWELL_ULT()
> conventions, i.e. "is ULT" also matches ULX platforms.
> 
> Note: Pedantically, this should have been done earlier, but it's only
> feasible now that we no longer have a subplatform enum and can actually
> initialize multiple subplatforms.
> 
> v2: Use the subplatform group idea
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 50ffb31662b1..35abb4eaa0ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -41,6 +41,13 @@ struct subplatform_desc {
>  	.platforms._platform##_##_subplatform = 1,			\
>  	.name = #_subplatform
>  
> +/*
> + * Group subplatform alias that matches multiple subplatforms. For making ult
> + * cover both ult and ulx on HSW/BDW.
> + */
> +#define SUBPLATFORM_GROUP(_platform, _subplatform)			\
> +	.platforms._platform##_##_subplatform = 1
> +
>  struct platform_desc {
>  	struct intel_display_platforms platforms;
>  	const char *name;
> @@ -510,12 +517,15 @@ static const u16 hsw_ulx_ids[] = {
>  static const struct platform_desc hsw_desc = {
>  	PLATFORM(haswell),
>  	.subplatforms = (const struct subplatform_desc[]) {
> +		/* Special case: Use ult both as group and subplatform. */
>  		{
>  			SUBPLATFORM(haswell, ult),
> +			SUBPLATFORM_GROUP(haswell, ult),
>  			.pciidlist = hsw_ult_ids,
>  		},
>  		{
>  			SUBPLATFORM(haswell, ulx),
> +			SUBPLATFORM_GROUP(haswell, ult),
>  			.pciidlist = hsw_ulx_ids,
>  		},
>  		{},
> @@ -560,12 +570,15 @@ static const u16 bdw_ulx_ids[] = {
>  static const struct platform_desc bdw_desc = {
>  	PLATFORM(broadwell),
>  	.subplatforms = (const struct subplatform_desc[]) {
> +		/* Special case: Use ult both as group and subplatform. */
>  		{
>  			SUBPLATFORM(broadwell, ult),
> +			SUBPLATFORM_GROUP(broadwell, ult),
>  			.pciidlist = bdw_ult_ids,
>  		},
>  		{
>  			SUBPLATFORM(broadwell, ulx),
> +			SUBPLATFORM_GROUP(broadwell, ult),
>  			.pciidlist = bdw_ulx_ids,
>  		},
>  		{},
> -- 
> 2.39.5
> 
