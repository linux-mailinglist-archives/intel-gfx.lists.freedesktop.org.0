Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9366DCBF87C
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 20:24:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEC5A10E187;
	Mon, 15 Dec 2025 19:24:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mDl82/u/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FA3810E503;
 Mon, 15 Dec 2025 19:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765826663; x=1797362663;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=iAACtS0e0kZjSemM+EEfgzM0tEi995gTrv4Ct4u+NAQ=;
 b=mDl82/u/tNeDtW/b91CFykwVPXSqkhMWOmnBuUQcvsseVeyIN8RE2ww/
 Fmx0sRCNqc2x60QT+HGM5sjv35IbNAxYHTiXKO5y6RYs6iV9Q5ZACfupT
 29f04d0VxcJXrgpHFdVyWsK81VTXjCDUHmDqTj2FfGgBBwdnL/uJ3WUiA
 KJUiXHjdstWim2FMGlJMMtOQTg9ROCjsucSYAsYBtWAtbOTsWiqkgWK89
 Uzq03z4ePlSGuMIT8as1wpTElS7hCoKOR0ob+7conrM/qdpLy3fq7oBxI
 GZm6CS8MYqYUzPZEL+ILmphXTn1P2D95cJf+ilKbzaRy+qVgZMlRUr1Zo g==;
X-CSE-ConnectionGUID: 2CugTsiqTiq4CMWmj+RLQQ==
X-CSE-MsgGUID: LSijPDQPQ7quz4kePWe3GA==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="71370900"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="71370900"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:22 -0800
X-CSE-ConnectionGUID: 3ots7liiT9eI6LAUvcSFcw==
X-CSE-MsgGUID: s3TGwJnuQbWouDUStxBRVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="228459902"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:23 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:21 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 15 Dec 2025 11:24:21 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.54) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nB2BRBNptq47jgM7ELEWGokweTZDMH9HLGwe/lAi7QXv4XHO+MuWq0KXEUvuJx9N2rs9SFFCJ7YIdAlJlWWfPEjoFvyazfNXngfu6nje/LeXDo2g8NADDS0Zl2qs78OnldWSlgCLRDuCSZEMjoQteF90WUgR7cmh5d+IgBizAObVae15KnGYCtVaP/CJ0glytq/wK5n6H5ix4NXRIQ0s+k6Qwj3ky2SE1JhNAwjDFyYJhr2F85HpEchsKaDGPH+Pc2fIECeH/ytRZmpEAPQhck4q4u1NvajlSxMUB5E/ApP2lVFD+ZYkahT8EC/085dFaIXgKCcrMLrsao36qzkLuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lxobyjW83BXBssLvwZ1WzYG7PzH8+iWrxoYKSu8Dt5Q=;
 b=KpzPO3RK2KlkQQJKnOPk5J+fOUmCTuwm/+hOJzbY918uNsgFEtasEQ7aAp7rM9weT1gEk/XYtSq8EfljebQ109TfQpLxRnVN1pXv8Yz4k46UyE5Fufx0J8Tvu1vNyTQrp6Uy/xkSkFKsMOklgEPgGaFgOsjmCueq3C3IxFFcRzDvSb/077azSSuP6U3wUGfLwFlRIQ0MMkLETxKbFfPbCHTUXXGRLPitAZX3vaBPDUZUMdPgIqZNxGc6VwvXlLLCj7u54nQrqxRYGguYiiMUUjwn5qcrfUWeHbUxwwRWBUTZW7cBo/rLLiKF8e+Np1R+aAkQbWqjr1dNYJVgSLEwCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB5112.namprd11.prod.outlook.com (2603:10b6:510:3b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 19:24:17 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 19:24:17 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH 10/16] drm/i915/dp: Account with MST,
 SSC BW overhead for uncompressed DP-MST stream BW
Date: Mon, 15 Dec 2025 21:23:50 +0200
Message-ID: <20251215192357.172201-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251215192357.172201-1-imre.deak@intel.com>
References: <20251215192357.172201-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0093.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2bc::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB5112:EE_
X-MS-Office365-Filtering-Correlation-Id: 26532a84-45ab-429e-9e6e-08de3c0f89fc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?C3kQFowAR5nN+RndoGv4TOcQdxLsLg1qA0eU3Cdy5D4mNspE3r4Z0C/Ba1KO?=
 =?us-ascii?Q?/Gpv1ffkNQ9pKHCDEa5JiNxBsmdwYAEVkR2Y+M2scQVDJJ8YC2giNcPOGDbT?=
 =?us-ascii?Q?POjsymySFYN97hnmaGSbdDZG4H2+0/amSdyLmQBYf/9OzfZrcZWcBycNq2Mg?=
 =?us-ascii?Q?3GOBeBZpNxffmiZ2ZgLq0J7yDulFkw92vp5XH12GtWlo41ID7G/rb0tITgNv?=
 =?us-ascii?Q?xBTo2vUT4WMMEp97QvXl5bHcGnUhlFXMbLp2dameXUi9N0/1wazs8fzdb+Cy?=
 =?us-ascii?Q?Jrc62lYa0+Dd1frDcllPrNk68mIkxz73bYM4XnQyRchEaM/zmVHXol7rDCiU?=
 =?us-ascii?Q?MvieGBOAojxqiW2E69XwiE5MbO81Bw5S12KD+CLmcPPqpCTXXpG9geaRuSyb?=
 =?us-ascii?Q?qf1GRKfGrsKY4Kls5dEMCj2ysROEw+kAp2nJ6gRcYtoJX5swZllvtMoAAiVm?=
 =?us-ascii?Q?NG95kAcMdgCCgjt0XHGRsPuzaI8O7qZmpSHfDz70G+K0/UooHa5Vh4FHZ9iS?=
 =?us-ascii?Q?oXDMKlOjTJ4s49K90efFSLV79TURGm9LBpyds7EqLIxDqp+5G9UmruUgmFmk?=
 =?us-ascii?Q?CnpXjivYEEXLSR8AtYWJs2coV78SG0HROWwkTl7U4QkcqgHMSUhyXE7DeqWh?=
 =?us-ascii?Q?h+iK2bdO2xweddiqHAWSaHB7CMN0gN3nv/f6ucVAj5HaKQaid+6CWvW2Oors?=
 =?us-ascii?Q?+RxsdprPgG7Uv9awaY0IVCRN1LRXCHZ/uiRmeKl8Mz8mWrq84GpTy7KhmYsZ?=
 =?us-ascii?Q?5ZuEmTHIM37A9necgIp5d/YAZ8gGcIBY3oG5kTesYoDcvEU1DSwTnt5r24lY?=
 =?us-ascii?Q?ZWScxJo29qpOQJIrzf2Rg78jS6O6GER6UJLAqDx9nSUWGU5AYO1GAfhvkex7?=
 =?us-ascii?Q?2RFAXM5bFH/LdhNeJ5t9FR1ZukDezGgGB83rSW9mnNDznLx5QKbnZh3VdYqF?=
 =?us-ascii?Q?SdUGP0f2fw9V+rmBj+s7gy+vo8YrW8S1/e7ZqAGSCnLyUyCqd6kVc62pW3h8?=
 =?us-ascii?Q?fH4YSdYyYcpv5/cL11ZaYYhPppuGf6x7PDmRPbx/aAg8nNNw0v5g2NMVTWxg?=
 =?us-ascii?Q?up9SopmZbHgfp8FBf1mkg5OHFRtDUYu3QV/v+yUUsb5K87QvvLXjkSqBKTUv?=
 =?us-ascii?Q?PrGFlcQJpvQMF89vyoPUhbvObhxWA5+yi+l1yoHkdbaSTFOmViOz2ioV0eRv?=
 =?us-ascii?Q?HqSdwSACglo5/U9NZCsEuMqJQM7E9qCEczv9N3gmtoXwfgt6fZ9o33k3i8Db?=
 =?us-ascii?Q?61YpWGDhMWnxWfzskhyidTzMa60WH3x5KpUBXl5qaZMtXKuqhtRqEew8Gn9/?=
 =?us-ascii?Q?2iJ3RvOOwtou5KaTnheSkEMw2Abw6yd9OJeZcSQhFl3J4MKjI+jz9GcjYeng?=
 =?us-ascii?Q?6BXQ+Te9P2SCgHGIxlclJZ/nrRyF0xvMeF5YvSkSNyEljixZIqAElu5o7dKu?=
 =?us-ascii?Q?2NRcrNKqRMy6OcmHpY1hgn68fLl1tqDO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lv/rMOb9E4jUqgLaZfwnVtJz4XiDWXsMMxkYpUjhEfxM2v7wagv7vLp/ETwb?=
 =?us-ascii?Q?VpuZjH0draeCx+exvq9SCijr55BYdPTcqW+qiG95XFrFO/RyAOl1zVjxKC5i?=
 =?us-ascii?Q?YUBSQSyKF73cUa+kN5kizR5KWk8id5nUWbmMi6xopOd2xuUwV6B+CVmGECda?=
 =?us-ascii?Q?rk27LxDFU0XDoA1NH8p69udt4Wl0nrz+ZSxjCkZGlJW+GmsbvgW/n+YLdmMi?=
 =?us-ascii?Q?gwR8d6ryFiQfD9j9JX6kes0TnVS97qqvArYRSmYWa/o/cIHeeeYQw51Pvi6r?=
 =?us-ascii?Q?L6MOu1f8UWWASXKrwTZ3fykUKyWzyjdFH+vm92KPRrhdfhv6xU6q6qYOESsM?=
 =?us-ascii?Q?J5qVfgRVW1CmcCoB/lkgTPA+F2C+IsDf+zYfasX7MlmkhFiMmDSfGS72AR6y?=
 =?us-ascii?Q?lHOFsFeI+vRklchxtDBSMm8eT9N79l+NthuZuGKCG6kLwkw3WQBjwA2flTtv?=
 =?us-ascii?Q?+0TwIPOgE26keTRkobl85W0Tp/7K1wwuX9laQntd9Acmfg1a5Y568cDIjdld?=
 =?us-ascii?Q?/tQ5l1gfnlB74qcAx/oMLkW8aNPAktooGCND6/Xm6nWyupCkTqQCxrINCSgv?=
 =?us-ascii?Q?UwRy0jD8LqA2Q8ce1+KO6W1kV4SeqvHe8FxASNUmETLzT1zyibd9PZxrKMS6?=
 =?us-ascii?Q?4q1oQ246e9KzqU8xBZ0KkT/4bJLeNFAyZWoKYiv0YiduCG60W9VybrV4D1tk?=
 =?us-ascii?Q?toKWmf26We5kTzaxnxmSH6EmJDs8ierzIS3R9SobMkg0bjXaiYp4i0IWPpeR?=
 =?us-ascii?Q?Ri39gjfXCn1uldHKzGZqOFmCjdFqnyadEdBXtD5jhiUT2Hip0f/yrZJ9khjW?=
 =?us-ascii?Q?HRRnZ3yR7Ztj5t9XRPnqcE2m5+MSs0JOgLAf/6czWPgDbJ9/KV4weXH5UzzE?=
 =?us-ascii?Q?HinQioOTRFc68ZuV9WTiD2+D3Q6KV5yDLo0FMhLolFsUTyQkeN4pQQ9CI9x3?=
 =?us-ascii?Q?zRnGVywCLFC5nNJZ+zDCYD9EwBITeizJTJyEozGHfdDcsvP/d9351qSGcO8P?=
 =?us-ascii?Q?dbq8SzeWuSX/zFAMyO1lmTk4GnVZEOxD8edIYdirctHKRXfc/+e1YiXy2POY?=
 =?us-ascii?Q?S5FMr1PCPs4vkxOjBY2Ef6DjhOql+BcAJJT330S5rOEGiOxWw6oHMlS8XlOd?=
 =?us-ascii?Q?vUD5wyDi+2CeT5L+uClCav9HaXVcnSCbGJt5kXBiOq8ANcIYgVSs59clZ8mk?=
 =?us-ascii?Q?belUgLaY5T3Npxox0/SUpKYPuR5fdoaNvwFPuuvd3HEqAa0/9MoKTR/1Ps1q?=
 =?us-ascii?Q?5Lwxc3uXEtjPRKhemupaDkmFxHDy/P+6OVGb1Jxl5R1gUATaL+V6x2jprOn8?=
 =?us-ascii?Q?OcCJh0LOI7r/H7laayCyIvyLx6rRluMJXcKZ8nUayxgg0afBO7TN+gImpEqU?=
 =?us-ascii?Q?wvMr/IG4EtnmoMoBFE9TAs1XrR6JjIZPbfbdNvU05MYnzyuLLowcwXFEdy3f?=
 =?us-ascii?Q?a/Bh6b3oogzmOOgfJLXLkGAHfwA7nxRI4iAQlkXnLeHgfphXWxmOVKC3Kd7w?=
 =?us-ascii?Q?UkcEmkxXBFZ7icREJtl9EMn9rP7Zk/sIS2wrCbB6mE55Ni8JPa+ZHiZDS/gu?=
 =?us-ascii?Q?c14GMkDKzX8/bxGXvo1znO7r7I/fMrtQ12chTJweuAa3WzdnAoIh+u9e8bEx?=
 =?us-ascii?Q?vo7hr2FFRUNeby+/KjQGJU9sRqUeG7PLcwoP1sTmQ3LE?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 26532a84-45ab-429e-9e6e-08de3c0f89fc
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2025 19:24:17.3278 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kkqeXi5++uqXcsb+Jo4UsLfycVKB7H4Iwfb0a8O8+7tghydLDAREE4mIUQ5PzL5uWd95esYvmLLoAjd1XMMA6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5112
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

On MST links the symbol alignment and SSC have a BW overhead, which
should be accounted for when calculating the required stream BW, do so
during mode validation for an uncompressed stream.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index e4dd6b4ca0512..0db6ed2d9664c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1458,6 +1458,8 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 	const int min_bpp = 18;
 	int max_dotclk = display->cdclk.max_dotclk_freq;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
+	unsigned long bw_overhead_flags =
+		DRM_DP_BW_OVERHEAD_MST | DRM_DP_BW_OVERHEAD_SSC_REF_CLK;
 	int ret;
 	bool dsc = false;
 	u16 dsc_max_compressed_bpp = 0;
@@ -1491,7 +1493,8 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 					       max_link_clock, max_lanes);
 	mode_rate = intel_dp_link_required(max_link_clock, max_lanes,
 					   mode->clock, mode->hdisplay,
-					   fxp_q4_from_int(min_bpp), 0);
+					   fxp_q4_from_int(min_bpp),
+					   bw_overhead_flags);
 
 	/*
 	 * TODO:
-- 
2.49.1

