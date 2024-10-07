Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C984993666
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 20:41:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D29D10E400;
	Mon,  7 Oct 2024 18:41:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XsbzWKfS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11D1B10E21B;
 Mon,  7 Oct 2024 18:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728326459; x=1759862459;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Hmi5cAuC85loc7hf3Fe5gUht7cXojtnid2KEwgEEmR8=;
 b=XsbzWKfSsEVBjsudA1TLipFkYnWHDoc0cnM9vPQOwBsJ2oUUjG41kbVs
 FfW2pJNA2uG3eoJEhF2UiwF6scTInjUsUNYVowt4aYitdNkP/0zt5or//
 hmztNzVI/TjckzpKZaCJOOEKAIoIBXZ/u/AdQPZ8U/SoJpZc4aP2kMCyW
 t8KfZRQUY56sBsYuWFCpMLPu42kvInMUYXXUmxo3pa7zAnWvmKKgla0FV
 fxYyoBgTfgi6taB/CRJb6WAZc0g/QL2LhxGg/k+Rwj17/kSyH3iBqRlWs
 Wcm9pO2kwLGh+yOMfVOC4ezlp695ObWcj9fgD9bG8sQHUnWZdAvZt/oVc g==;
X-CSE-ConnectionGUID: 9V2p/hftQ2KlwqnKQTYJ9g==
X-CSE-MsgGUID: A9q7vjcbQE2lzndVHU5WLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="26951404"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="26951404"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 11:40:58 -0700
X-CSE-ConnectionGUID: C5m6i8jZTsKUeSb/oN02gw==
X-CSE-MsgGUID: E4pdv42ISjmVDPCzg2ugrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="76000749"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 11:40:58 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 11:40:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 11:40:57 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 11:40:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vjbgC8eUxMZfCezAPo2AtWMhm+2v8a+xSeoonKhM8TX7194IEMbimui+qZuRCQ3flm4Kidua0J7fNPJGNG/IENvAiFPf0Xy3VUlBcdqG8VsNdyv6XQYbWv1lAUD2ONqfXArtYBBNzdoo66Xl9HA5hVCMDMdpkztRrZ2AETqo9HC7tGLCCtaO5E5svPaW3iJ45m2SkmzzQuv3ge/bHoF1IJtk5uU7VVZSqo/gKa61PghmQTa+d+puEzfhL3r5t/M6KmuxL6ujM1EJ0LqNLzK1iJs+J7B/AmxS25iPkCtWVd9yrFyFryZbSZLHo9xVGaUsga1uEXZIfT6pL5jLAIjIRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fXPO+VNYqO4fmBdj4mGskZQ4HbX4LipUhD6tR87UgV0=;
 b=QeVwZCwCTp+GyRZx6Azn8hPdbpab2os4BSGOhX++SlqxBghB4dIRjmGV+rJCQN0cU2upBEAUGVdIf2R0TKrnGnhn2+u55YMcbEUMN64s+YWvjX3JX1QQdTIn3Wb/YRJglMNbZ/lT9X1ZHG5P9z2X+kOBx/sTuzsIHeiGfj06sBGVOAPQmy3vfCNwLOxdbzh5B+q3053h+DzLI9tXnFEOjyX4iWJp10Xn0ptLJxqTE0CqQq0G+g8RJvCQsEMCe9NAx0Bj84x0lcZwVxB2wC75TdaFNzAaVANiSCcnXFwr/9xX5rKEsmQceNJemvyk7eSELWW1YvmUSmsjnlB+bd/04Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CY5PR11MB6113.namprd11.prod.outlook.com (2603:10b6:930:2e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Mon, 7 Oct
 2024 18:40:55 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 18:40:55 +0000
Date: Mon, 7 Oct 2024 13:40:51 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 10/12] drm/xe: Make xe_ggtt_pt_ops private
Message-ID: <bswyoqefoduwovd57pv3f6u5a4faamdcz5j6euisnhojie3akv@fviryu5eih2w>
References: <20241003154421.33805-1-maarten.lankhorst@linux.intel.com>
 <20241003154421.33805-11-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20241003154421.33805-11-maarten.lankhorst@linux.intel.com>
X-ClientProxiedBy: MW4PR04CA0040.namprd04.prod.outlook.com
 (2603:10b6:303:6a::15) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CY5PR11MB6113:EE_
X-MS-Office365-Filtering-Correlation-Id: 9335594f-ccce-47d7-8589-08dce6ff92f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?rirW7Hx3ip7gL6wRqUBYj04vFyM9r7ZZHWxJKxz9n2+mQkgg80r4tDOpNsXa?=
 =?us-ascii?Q?IYvCT1lpZCEe9VdaBFnXn8+6VaNggx7RTa93xyt5BpzVhX9xaMwtQoq6EbeO?=
 =?us-ascii?Q?eOCkZ9KvHWbo8b46XVIo8OdU+aofCSh2DL+Nz8fL+2y/w7jY+rPomzsfYnsp?=
 =?us-ascii?Q?zpCXcjcyfJYifLIUb/CFXFKyjKedFyQknOn67p41drTWXP9mhno04ixpddBt?=
 =?us-ascii?Q?jtrJJpcNEdqxzsVUlz8K1zG6wbgwAXH8KjGZV9JGbGOTUIkUwd/XwOgB8t0T?=
 =?us-ascii?Q?yeFxFG1giFKxDNnHuXd0i4jV0HOuAtZnlswqNL+b53Tv4LN3j9IVCkOVdu6R?=
 =?us-ascii?Q?LfQRaz9VPGx9ZfclC9369Odh9O2v89/AkC2lIBvx2eNPwiLzMUgGX+7kajd/?=
 =?us-ascii?Q?lIYKhpWQtZSif+jr5XRzEY4cViXPB1FIi2kAMconZQRv1aDCz0u88G8NYkdD?=
 =?us-ascii?Q?ZPx3fIT0e9qs0mv2E4LN67OdhshsVEwIAq01VXLVlQN79WbCcjUx08RoeCYG?=
 =?us-ascii?Q?zOolYy/GMGoKTZqczN8G5rZRWWvv9XM2uCqYcbsZod2nPQm8T3obg3DdYSWo?=
 =?us-ascii?Q?Q/Y6jiRkI9E9zxV+kpt7CTcSNZ9dWtqp6idkF7LvNBimDGzAiYGJ6u8IHAco?=
 =?us-ascii?Q?uSuMpHUqf7N0VJkzL1uuoY2RVgMeskJeZruL8zReSaymRagXamw7k0e2As0n?=
 =?us-ascii?Q?w9BSD+chXfhYlUvTxv81s7cXdyAVv800sQdOTwDF9rc7xut85WgCjGQ4CHYj?=
 =?us-ascii?Q?1cVW3bbtFcjuWAi2nkK0EWyd81kCmK3hG3avA1AXFHkQ2qYroXaA+b+m+9WP?=
 =?us-ascii?Q?aaFoIV4n28QnH4T8xPffFLG29MH5wW0cFe83tH7UCwlM+tEqyUn7JlWyaILF?=
 =?us-ascii?Q?tgc0nXNnrb8VXqdzBRBCKijqiYH4fV5rwieEVUxTHsW4cwrVdTruNSVpwdF9?=
 =?us-ascii?Q?y70I+bdk0Ym+qbXYYyhQaw7a/Q45bI+llRb8+PGNs7NLa9iXCBU/qfFdf+ka?=
 =?us-ascii?Q?xQB8zewnN3ZNVyKvu01/O9RJb5BJUQUUmvow1OWbddRVVaePhwfBZELq3qHG?=
 =?us-ascii?Q?7YrTvaTsQe+cjGin1buKSxe7sAA5PdZ1NgrrwjRuN7SFSpDZcyBYuGM0wbf4?=
 =?us-ascii?Q?MwrBnQpZXboFRFXMbQ/0OOH9Bad5LhzyRotozEm+uCsWnqVJwzssgsuq3Gnl?=
 =?us-ascii?Q?Za5ZW3E6j6TOoNBl4rLwtxsB1HNzOGVT5KaSlt1HGYt4EFCU+KW935Sq/76E?=
 =?us-ascii?Q?oCnCWz0LCQygDTAR8pmamn8IqcXcmvidFL799b/z0Q=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UYwk6Ac+GoodMqVAm6SOZFrz/rPUGDx6scDToYS3rKCx9GTbZ11BC8YG9tWu?=
 =?us-ascii?Q?eXEkWFBEYY2vaKb+CBwJqcc5TkCDsX3Bxm7w3w05bj8k9dGy1ebMuw5/kEWI?=
 =?us-ascii?Q?Gqs6xX+QnAN/g3d7NjlyR7OWB4C8O9WPKcFDeMiH1ZzQJtZ+r/oWzybW1yI0?=
 =?us-ascii?Q?yVcY4f2HfZqnWbj3W3nmWXUZgujRpN04DSxzIH/YMf2z8tuFm1uY5vTYGCxQ?=
 =?us-ascii?Q?8zD2cLOVsm7nNwzy4L6L8ugyO25CxziW5fzFiPj/0dP02LCb1+C8hwQdxLge?=
 =?us-ascii?Q?oFN8EVVpcDfEq6SEg+facioA7CngC0P7Y5cXjiGnMub20iG/eaJiHHtViydm?=
 =?us-ascii?Q?PG8GICEM6HnuvhxJcoTB9+6PGylOBuyQjTEGGXUyxc8LI4be+EKAWZ+KjXCg?=
 =?us-ascii?Q?vh9bv820jkvlCMJXCDalFJc7OEXCx0ec2jUS1KVtg2Dh/KOH8pCsqsdE3Qlb?=
 =?us-ascii?Q?jud39RDuIi8G7PsEOb78BisKybXmhosgwL23nNv3qeUL5H1XLIOqn7CK0xaY?=
 =?us-ascii?Q?HQJei76jzZb0tBwsruoaXA7HEa+GDiW+W08vi3KoPD/hfOKjKenGjDkr6TsS?=
 =?us-ascii?Q?X64aA/8lywH1c6Tc/Ie7PPGSryphVMI2lhG5QHo1zoxO7HDRtExG+jdNEsER?=
 =?us-ascii?Q?jIzrt/zyaCevrG5jdUhCHr4QniUTsS9Y07KTQseT4W+/Ffxvoswl0nxu+52C?=
 =?us-ascii?Q?V+AcKIQudB29omzXp9V3QnkLaJy3wG6+VzPB/An5m8+07ScF0/O6MFnQMB7C?=
 =?us-ascii?Q?oDdjspWAQ+GEqDVgbbCJ/2WD0rGWg9+awDHjm9N1WPWifiehXxOzvd0StRJr?=
 =?us-ascii?Q?ZHBTq8R13qekp4o5Te1/Mrx/RvKaKThaWrEzWyA8Tee5/BTH3whJO6jJ5koj?=
 =?us-ascii?Q?mGIBR3ixseuR3GqlY7ymDDS3AvtEXsF3EOMhlwfm6NeWbcCtsbO1GFjPjor2?=
 =?us-ascii?Q?K+MWX7KoIZy5+zT7zjkEIBflgSZTwGRyYxZGCBJYh6MaAMVxOfM+WM4tSo4z?=
 =?us-ascii?Q?iPMc0zGnkkgPquYkGRo+PPZnenB/yJrB3HdXO5Z3ZeDPMVbiatMD052Z1g9/?=
 =?us-ascii?Q?SJCpzVjwl81Fsh9MN2fRQyBg3pmq51rShfQST8eiBq6Nmw2zy6woUPL97ZcC?=
 =?us-ascii?Q?gaG7rVK5Dw2gXC2dQLXMK+YJcb62TljiPNM+BHNIXdaZdGyKmVFcGzAiHFWk?=
 =?us-ascii?Q?DaZc++LM1WNKWfD3hiMWAvJ0cjFvX/u1JX0cJQMIUOnQk/SAHrCTKNQthQ1I?=
 =?us-ascii?Q?0GPr+9gS01jxVwXuBSfSO5qwH0NSkiKkaycY77Q4WcDOml6tUza7CW/8Di+X?=
 =?us-ascii?Q?Ih/4s17jgU5xmB3RBOCL7pG+po5aw4j0DyGiicAT/yTFLwhhYNpYBwUqn4L/?=
 =?us-ascii?Q?1oD1GUVpFZU63GznZz6NXImTSTAay1YbrmGimEFRL7Yl5i1AmczG3TagwmY4?=
 =?us-ascii?Q?gjhseJ5cyBrj0FkiLLloVcnnZNrzsBDjJCyxVMHqnnseNZMWD5fWueSMAeeO?=
 =?us-ascii?Q?AGs+4Xn+6W/biMNAD15GhnMkYZHPsue9fZYvzKjKHtHHriIRAR55t/gZMcTw?=
 =?us-ascii?Q?Y0FCxXsg3qRHUW9SxOUstTiRquumrAz+FiNTe698WN4oOLButwe8OrE19Ix2?=
 =?us-ascii?Q?qQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9335594f-ccce-47d7-8589-08dce6ff92f8
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2024 18:40:55.4665 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I5cxS75+I1rB/yL5TnnKVAAYGb+QcHTvILys+0Cre3Yl1KCYIDfMgQorlUpa5XnhuS6+4MksuN1obb24AkLdhW1v3LmcaxZFgTA/4Zn++GE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6113
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

On Thu, Oct 03, 2024 at 05:44:19PM +0200, Maarten Lankhorst wrote:
>The only user outside xe_ggtt.c is fb pinning, which makes sense as
>all the operations it performs can be considered part of GGTT.
>
>We could move this to xe_ggtt.c, but lets keep it inside display for
>now.
>
>Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>---
> drivers/gpu/drm/xe/display/xe_fb_pin.c | 22 ++++++++++++----------
> drivers/gpu/drm/xe/xe_ggtt.c           | 24 ++++++++++++++++++++++++
> drivers/gpu/drm/xe/xe_ggtt.h           |  2 ++
> drivers/gpu/drm/xe/xe_ggtt_types.h     | 13 ++-----------
> 4 files changed, 40 insertions(+), 21 deletions(-)
>
>diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
>index bddd526b33297..0ae5d917f20fe 100644
>--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
>+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
>@@ -20,6 +20,7 @@ write_dpt_rotated(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs, u32 bo_
> {
> 	struct xe_device *xe = xe_bo_device(bo);
> 	struct xe_ggtt *ggtt = xe_device_get_root_tile(xe)->mem.ggtt;
>+	xe_ggtt_pte_encode_bo_fn pte_encode_bo = xe_ggtt_get_encode_pte_bo_fn(ggtt);


ugh... that's awful. It's not private at all. You are just trading the
direct access ggtt->pt_ops->pte_encode_bo with a function that returns a
function pointer and you all it later.


Lucas De Marchi

> 	u32 column, row;
>
> 	/* TODO: Maybe rewrite so we can traverse the bo addresses sequentially,
>@@ -30,8 +31,8 @@ write_dpt_rotated(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs, u32 bo_
> 		u32 src_idx = src_stride * (height - 1) + column + bo_ofs;
>
> 		for (row = 0; row < height; row++) {
>-			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
>-							      xe->pat.idx[XE_CACHE_NONE]);
>+			u64 pte = pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
>+						xe->pat.idx[XE_CACHE_NONE]);
>
> 			iosys_map_wr(map, *dpt_ofs, u64, pte);
> 			*dpt_ofs += 8;
>@@ -53,8 +54,7 @@ write_dpt_remapped(struct xe_bo *bo, struct iosys_map *map, u32 *dpt_ofs,
> {
> 	struct xe_device *xe = xe_bo_device(bo);
> 	struct xe_ggtt *ggtt = xe_device_get_root_tile(xe)->mem.ggtt;
>-	u64 (*pte_encode_bo)(struct xe_bo *bo, u64 bo_offset, u16 pat_index)
>-		= ggtt->pt_ops->pte_encode_bo;
>+	xe_ggtt_pte_encode_bo_fn pte_encode_bo = xe_ggtt_get_encode_pte_bo_fn(ggtt);
> 	u32 column, row;
>
> 	for (row = 0; row < height; row++) {
>@@ -120,11 +120,12 @@ static int __xe_pin_fb_vma_dpt(const struct intel_framebuffer *fb,
> 		return PTR_ERR(dpt);
>
> 	if (view->type == I915_GTT_VIEW_NORMAL) {
>+		xe_ggtt_pte_encode_bo_fn pte_encode_bo = xe_ggtt_get_encode_pte_bo_fn(ggtt);
> 		u32 x;
>
> 		for (x = 0; x < size / XE_PAGE_SIZE; x++) {
>-			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, x * XE_PAGE_SIZE,
>-							      xe->pat.idx[XE_CACHE_NONE]);
>+			u64 pte = pte_encode_bo(bo, x * XE_PAGE_SIZE,
>+						xe->pat.idx[XE_CACHE_NONE]);
>
> 			iosys_map_wr(&dpt->vmap, x * 8, u64, pte);
> 		}
>@@ -163,14 +164,15 @@ write_ggtt_rotated(struct xe_bo *bo, struct xe_ggtt *ggtt, u32 *ggtt_ofs, u32 bo
> 		   u32 width, u32 height, u32 src_stride, u32 dst_stride)
> {
> 	struct xe_device *xe = xe_bo_device(bo);
>+	xe_ggtt_pte_encode_bo_fn pte_encode_bo = xe_ggtt_get_encode_pte_bo_fn(ggtt);
> 	u32 column, row;
>
> 	for (column = 0; column < width; column++) {
> 		u32 src_idx = src_stride * (height - 1) + column + bo_ofs;
>
> 		for (row = 0; row < height; row++) {
>-			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
>-							      xe->pat.idx[XE_CACHE_NONE]);
>+			u64 pte = pte_encode_bo(bo, src_idx * XE_PAGE_SIZE,
>+						xe->pat.idx[XE_CACHE_NONE]);
>
> 			xe_ggtt_write_pte(ggtt, *ggtt_ofs, pte);
> 			*ggtt_ofs += XE_PAGE_SIZE;
>@@ -209,6 +211,7 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
> 		vma->node = bo->ggtt_node;
> 	} else if (view->type == I915_GTT_VIEW_NORMAL) {
> 		u32 x, size = bo->ttm.base.size;
>+		xe_ggtt_pte_encode_bo_fn pte_encode_bo = xe_ggtt_get_encode_pte_bo_fn(ggtt);
>
> 		vma->node = xe_ggtt_node_init(ggtt);
> 		if (IS_ERR(vma->node)) {
>@@ -223,8 +226,7 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
> 		}
>
> 		for (x = 0; x < size; x += XE_PAGE_SIZE) {
>-			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, x,
>-							      xe->pat.idx[XE_CACHE_NONE]);
>+			u64 pte = pte_encode_bo(bo, x, xe->pat.idx[XE_CACHE_NONE]);
>
> 			xe_ggtt_write_pte(ggtt, vma->node->base.start + x, pte);
> 		}
>diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
>index 6945fbfc555ce..db6a761398064 100644
>--- a/drivers/gpu/drm/xe/xe_ggtt.c
>+++ b/drivers/gpu/drm/xe/xe_ggtt.c
>@@ -63,6 +63,18 @@
>  * give us the correct placement for free.
>  */
>
>+/**
>+ * struct xe_ggtt_pt_ops - GGTT Page table operations
>+ * Which can vary from platform to platform.
>+ */
>+struct xe_ggtt_pt_ops {
>+	/** @pte_encode_bo: Encode PTE address for a given BO */
>+	xe_ggtt_pte_encode_bo_fn pte_encode_bo;
>+	/** @ggtt_set_pte: Directly write into GGTT's PTE */
>+	void (*ggtt_set_pte)(struct xe_ggtt *ggtt, u64 addr, u64 pte);
>+};
>+
>+
> static u64 xelp_ggtt_pte_encode_bo(struct xe_bo *bo, u64 bo_offset,
> 				   u16 pat_index)
> {
>@@ -880,3 +892,15 @@ void xe_ggtt_write_pte(struct xe_ggtt *ggtt, u64 offset, u64 pte)
> {
> 	return ggtt->pt_ops->ggtt_set_pte(ggtt, offset, pte);
> }
>+
>+/**
>+ * xe_ggtt_write_pte - Write a PTE to the GGTT


copy & pasta

I don't think we should have this partial transition. If we want to hide
the pointer indirection we should provide functions like
xe_ggtt_pte_encode_bo() and xe_ggtt_set_pte() instead of adding a getter
to return the function pointer.

Lucas De Marchi

>+ * @ggtt: &xe_ggtt
>+ * @offset: the offset for which the mapping should be written.
>+ *
>+ * Used by display for DPT and GGTT paths to enccode BO's.
>+ */
>+xe_ggtt_pte_encode_bo_fn xe_ggtt_get_encode_pte_bo_fn(struct xe_ggtt *ggtt)
>+{
>+	return ggtt->pt_ops->pte_encode_bo;
>+}
>diff --git a/drivers/gpu/drm/xe/xe_ggtt.h b/drivers/gpu/drm/xe/xe_ggtt.h
>index f83e5af0400e9..0c63cfa083c03 100644
>--- a/drivers/gpu/drm/xe/xe_ggtt.h
>+++ b/drivers/gpu/drm/xe/xe_ggtt.h
>@@ -48,6 +48,8 @@ void xe_ggtt_might_lock(struct xe_ggtt *ggtt);
> #endif
>
> u64 xe_ggtt_read_pte(struct xe_ggtt *ggtt, u64 offset);
>+
>+xe_ggtt_pte_encode_bo_fn xe_ggtt_get_encode_pte_bo_fn(struct xe_ggtt *ggtt);
> void xe_ggtt_write_pte(struct xe_ggtt *ggtt, u64 offset, u64 pte);
>
> #endif
>diff --git a/drivers/gpu/drm/xe/xe_ggtt_types.h b/drivers/gpu/drm/xe/xe_ggtt_types.h
>index cb02b7994a9ac..c142ff59c4504 100644
>--- a/drivers/gpu/drm/xe/xe_ggtt_types.h
>+++ b/drivers/gpu/drm/xe/xe_ggtt_types.h
>@@ -13,6 +13,8 @@
> struct xe_bo;
> struct xe_gt;
>
>+typedef u64 (*xe_ggtt_pte_encode_bo_fn)(struct xe_bo *bo, u64 bo_offset, u16 pat_index);
>+
> /**
>  * struct xe_ggtt - Main GGTT struct
>  *
>@@ -69,15 +71,4 @@ struct xe_ggtt_node {
> 	bool invalidate_on_remove;
> };
>
>-/**
>- * struct xe_ggtt_pt_ops - GGTT Page table operations
>- * Which can vary from platform to platform.
>- */
>-struct xe_ggtt_pt_ops {
>-	/** @pte_encode_bo: Encode PTE address for a given BO */
>-	u64 (*pte_encode_bo)(struct xe_bo *bo, u64 bo_offset, u16 pat_index);
>-	/** @ggtt_set_pte: Directly write into GGTT's PTE */
>-	void (*ggtt_set_pte)(struct xe_ggtt *ggtt, u64 addr, u64 pte);
>-};
>-
> #endif
>-- 
>2.45.2
>
