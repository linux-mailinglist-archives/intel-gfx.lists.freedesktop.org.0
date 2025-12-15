Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D162ACBF88E
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 20:24:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31EB710E509;
	Mon, 15 Dec 2025 19:24:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ayuEmXEi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3A7810E502;
 Mon, 15 Dec 2025 19:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765826670; x=1797362670;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=ZjUPimWa/GQR6Rt58PQLtoSfy1/CFjcDlW58yqZ3q4g=;
 b=ayuEmXEirf1/ejcYMZ0cWAG+GgXkGAOjw5PDw0bG2sf392hHSs2oklxm
 MB5g2aj9Yo9YlvwFC4IXimXK1fLoCPYrlvCKub+PZXIkjshjn1VZOAFga
 ytxKjs6oJRX6aUz91Id7u4ntx8Ou98b1s3xzsToljPyPY2b9cbG1H5WkS
 zLV0jEuUk/Cpr0uXiXSltkqSpYT/lny+rjCPquYXjdOqzQ5lZX3B3uwwS
 v2mmufZXYTGjpyDOHHR99UxW3M5bYccELFs12V7HfaqNBRUn34RRMlwUc
 VoZSpNPnZ/5Z/XSwLhVzbXeEjf7Fe8V57YEkkOeILcXSvKW9kxu3OtPP1 g==;
X-CSE-ConnectionGUID: UBO7Lg2rTRqCeJefVXbP5g==
X-CSE-MsgGUID: amHZaKX8RLizGtYB0PnbMg==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="66726667"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="66726667"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:26 -0800
X-CSE-ConnectionGUID: 6AR4AbNjS7ua5o/MCd3XHg==
X-CSE-MsgGUID: Vo3RoiJPRIOqqVsATRLjRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="202919580"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:26 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:25 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 15 Dec 2025 11:24:25 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.54) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bOLXdwFYhxkhvTKSn4v3rWdFIL0pbj3dqyFUFTipCSZX/1UEFYO3eNdU9TpztfbGIa8sm/ySAnyMooX0+n4Kav+1Bz45mmad8fVfoP3IbrFp70kgp3p2p8F97whZIPgbuS6lAo8s+T2a2acJrA35iwSFEtGV+iNa0o2U6xAkQ9wfQDolI0t4OElefsXdyl4Xb4Zg1xSWCD9popS9KsPO6WgCirdq1EZxvVNedYrK8550FOKtPw4+aQNKeu30WL95oXV1Dc1EvtjSKeoxJq4+QXjvdfzUNZDLPn7n/1nbBZ8kYXhYR0sr7+RvtGIK8R72168D4zzcIAtscEdkW88qrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7I7b/SxGxIhUHHC5llCLrT2cFqqtfub3xnvttYKhImo=;
 b=xiR9Hifu9DCTCKYh8VbDnlD2MWsd7uBnsqZy17y7aK5wU0DAe65kESnjCq8R3bLqM54y+CPmIObd2HteFUv/wSmnu1ReagDI3EVVDl1nldB4GHTsfkNdmBiYHHhC0S8NVSgcEysFUIY2QCG3jUxi4xS9J7IHTO8NYqhnRkUdChmN/3so0HNZCnK+Kv1Ze5207zCQw2xEY/mgzESi10oIkDqLL2BB4w6hH3a0DhtGO8swxOI52Ic1/0nHsmq+AiW0OejndScFwPV3WYCMEAE+IRBNPiFe5Q2T6lRA+a/zcwLtG0+75am7DCodF798bOlBSXH33koBdKZYPr6VhcqVCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB5112.namprd11.prod.outlook.com (2603:10b6:510:3b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 19:24:23 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 19:24:23 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vinod Govindapillai <vinod.govindapillai@intel.com>, Luca Coelho
 <luciano.coelho@intel.com>
Subject: [PATCH 14/16] drm/i915/dp: Fail state computation for invalid max
 throughput BPP value
Date: Mon, 15 Dec 2025 21:23:54 +0200
Message-ID: <20251215192357.172201-15-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: a4681ee5-0c5e-4e50-9bb6-08de3c0f8d8b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?bmkqmdSy8vK5tM7P9ug87BBSyJvA6L89pN6yoqVmfPfdh7XySnG5Xt564f4x?=
 =?us-ascii?Q?saLPE67LynHjGM8C12kZFpkIlgSMkbGQOHuqOttjK4ThcrUzbR0BRQl6OlP2?=
 =?us-ascii?Q?wjR/0vyKZ+h7MwoF+cdfHJ5aY4n3z+nI2gL/4MRooTKviSoqPXdSk9aOdOqM?=
 =?us-ascii?Q?5xQcR+MpKD9904A/eEGGNivk62GKVLBU35UZl8Yi/hJVGcRIYaR/JuAs5hIE?=
 =?us-ascii?Q?nuNzp74Y+ph1k6JqRmXhADqWf78PuAf8UBrhczuM3w2Xp2E7hmLvyKk7Nlzu?=
 =?us-ascii?Q?Vf+uu3p8CLUKh6c8TEjopyM/KnYYOBROA+8kzLEn23Sx1yJXugpLEM1qVoBo?=
 =?us-ascii?Q?3vLR70zV23tGTmD8/ls+Ctv2d5cwAvuYeN/WzTyZeG8n2HvGw28UAtEaRU1t?=
 =?us-ascii?Q?dpF+vANIkWiVpmBOyj6zXszl3h1ncJqikynx+KR6Wida0txdTgPucaEaWkhD?=
 =?us-ascii?Q?NVMeCopwV20rgUH1IHN8yJsGOxRbml+WQYNHpdnDv6YObCLAlUbYOewGSPm2?=
 =?us-ascii?Q?Siu4cgEt0Ke7K6s1yjKKm3lg9WbC3Cr5DYO5GTTOmhC6uO1InOqJf3M6OWju?=
 =?us-ascii?Q?hxKCUBI7M8Mc1QYZiAvfFrxFG353Hiw9cyPY0D4M6eaEgFKiKikvGmp7sMVd?=
 =?us-ascii?Q?qh12wddr+X1OpirgpsK+3KM346f2EUzAq3HzNDdB+dwgj0zJEyyVwRxeyH3h?=
 =?us-ascii?Q?qqb5KR8LowCyo18NW1cRBErXiOIH1iU4jtADnOB+XjJshwFApdWSVdM/b9Fz?=
 =?us-ascii?Q?XmJF+ys9+t1H7WmEO4Vs6ddfcl82LYoo1+PruQFMSVYnvyTSw24SIGFLK2AY?=
 =?us-ascii?Q?Wi3mnX5X61/NnQy6kZTDapkU3ibDUrNCjAwVrd2UpZU0Rl5/WO8zHdNMRtKE?=
 =?us-ascii?Q?ryKOllH7HNEnkNlBWyweQUr8LScMZgYws9mNOFS84N63+FY6gMK4st9MB23O?=
 =?us-ascii?Q?sml1DsPsg1kYmKh/oQelWAvstKosjhSd2CGgITpXgc4oaXjsjKEKsa6BC6KE?=
 =?us-ascii?Q?GT6EMeUMxtMdSzLqUyvWtWBWR2qBTBDZSerj7ko1HWTNn6Ni5Sp5cK9hZd5w?=
 =?us-ascii?Q?XFaCsWUbYdSKgV3eyM4CGy3sf8UIEy8+Ql6om0tPCgXwVtvJuRRpcVYIeiIw?=
 =?us-ascii?Q?KPS2osiIg/UVtkHGrdnituEgy8tGrDk1eypoSlKIOUINyNdTuH5XiiR73uoN?=
 =?us-ascii?Q?4VOeMflzthWklpV2yAH/GJKlAy4N2ZsXplOQk0uLx1knJeU6LG0D+kf1wAAK?=
 =?us-ascii?Q?CXWvyBPZVerw53sAg5c40yM1VCbmUsLj5zGb5tC3Lk12AALPjWEq1Y3Y4qnF?=
 =?us-ascii?Q?1iYTB2FS6qRuBusMU56NCfxpsgOdiA9af92yaiiDr5fpnE1daST7+qc4SWAO?=
 =?us-ascii?Q?I3hbruDP//9RGqeFgLlyJiIUU2xKAkKMIIjRAvJFmLqwzkSarl6WuPRCNOX3?=
 =?us-ascii?Q?SFmS3EtQbJYmiacQCre8ETaoAbi+4d9g?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9YyDp+I83SqWkMjyg9xoMtE3/l8wDW3Ph0hG0fxBuUuehDX6EgehreAq75hG?=
 =?us-ascii?Q?HK9rePQpxcb+FL3GUfQdGu9fzM7AoHT8/2tVMbpCEB8xUj2hKjhosfS76/wk?=
 =?us-ascii?Q?WanZ36jai3P+xKAgcbczB6Bd/aKy27KU2qW4ff8AtdhVj0iqT2HsRA7/fsAU?=
 =?us-ascii?Q?RoQ96KEEIGQdQkXrwA+GBKNK6ClUwjB2ml85IgDbGjta8Kcs37Cxmy/fd0DR?=
 =?us-ascii?Q?Sl8QpgSVJqd/7ors9G6ULsNXY1DpTDtXZKYI6UDK3C/+ECFQ1zk1mW28igKE?=
 =?us-ascii?Q?8B0qAiQg8GgUZEO+ogbbj14eelV2oZc9L0CT31CP8i7w4skOgnYPjmRf3gnQ?=
 =?us-ascii?Q?4wAPMX/EFOG5gtiWzwyzhOgYXJXYz+z8T1wINXcGwMuCOI/z6CS1xwkx1MLL?=
 =?us-ascii?Q?bydErWja0kddOqCaq8gWkKUcw9QWhkpgnRTGz4pNE4ypE4ysGoXx7dmXM5oe?=
 =?us-ascii?Q?z1FJ5/uhZ1UTrcDEiQmEprZ/XXfAiwN3DXIkaw8vOrC4UxRhGLtbApgGQZZY?=
 =?us-ascii?Q?1xONXpPUmgFjvoCK7jQhbdztb1LahFC9BT+hhLExrDk8f3gk8XWE809zwbDD?=
 =?us-ascii?Q?CU49y2QpUo/DLVLeRhB/4BlLrhZDDb5+HHIAQI9VG06uI2hdrI7C31mAZala?=
 =?us-ascii?Q?9AIsZjSKQHARv/AoJRT0V+ubt6TiBpEs5lwvqhT0FqWUCMpMS/JJnaQZLAPD?=
 =?us-ascii?Q?LSUvWwBaPKFIiEFHIyrC37wUQ5nxnqVNftomggpxCoVrBqTwgBaQ7vU7tPQ9?=
 =?us-ascii?Q?leP7MBcBrECcueMIGnUMoGsqvjpisgQEgHolfKPA5eoQuo1EwN9TQ8U1Mxm+?=
 =?us-ascii?Q?zksQ5FzA3Q8+JcEQCVHPB9v4ihwXlQ3uzoe3oLJr1XaGsWE9FZtZFwrUI6QI?=
 =?us-ascii?Q?HcQvSBr7XrKhDSHWNVBwIYq4H1lSkTHIGEnVYqSPpAa2BcaoCsqpE1iNPWDY?=
 =?us-ascii?Q?83y0T1avmeSXHTQaNx6RQzsBNLM56qMBtoumlQ/bWoELhW8DKXvp31pppX0g?=
 =?us-ascii?Q?QL5BTvqeYBpYSwQMNIE3v2iISXvv9Tqp2YYEC+DAwG8dQOS2KNKMVzHmXx47?=
 =?us-ascii?Q?ZvGgO0bJ45t0VwboszI/r3/EnuD9tgnHzTFZsXBp5dFl7fAPfAlFkHOfW1t5?=
 =?us-ascii?Q?eTnyAO6x3JU61YZoTDCjqI9LvWLZPiXMIQkvW4iVSWXZtmo4Ch0J/C7lc3vD?=
 =?us-ascii?Q?mZeNsg5LN8ZIK/v7hKy/yywKQWcvJ6vcqapEMNL9R0gtDlEDRfL/TZ76YF6l?=
 =?us-ascii?Q?EdA6Wme6kOcs+2OrHYEf+17Uw25xjqUa4mcZxblEZc5TlMb00XYwk5xp/NGt?=
 =?us-ascii?Q?i8P6z0D+J4qHdR3UkCmjQWAcDFQTcNfTd+fiQ6gfiKyWv95YU5d8RfXiu+YS?=
 =?us-ascii?Q?fjroeMvodtxm0bRezY+uDzEr9E1yW3rJ+JR3b+TbZkuKl3kzAppZFyyeaUyT?=
 =?us-ascii?Q?1Y3vRra9vB8wWSOmjABrWMfgipgeqQSyynBeDmSV0oHfWaDwv5CYEbl2sDV8?=
 =?us-ascii?Q?wypAN/CqFYs25j41X4ToHfKEUiHnFm7osd7fyDjfRL6g76EQOiKHR3kLEz0p?=
 =?us-ascii?Q?tm50ZI7iyH5IoXDMQLLq22sLtu+6rC85D30dyzINTUVCchbllBpNfqT6nL9X?=
 =?us-ascii?Q?snEzoPdLxhA3VHdC63Qzy8/acwklLdu9ewY5LsYcZkrL?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a4681ee5-0c5e-4e50-9bb6-08de3c0f8d8b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2025 19:24:23.2834 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RGtUiFTWTFhcpuB+46VK6mVXmFugKKmbsIvObD25lbIQXoFEj+G5ypqVXpeu+92DNoqJ1yyNAQVopDJodHvbLA==
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

There is no reason to accept a minimum/maximum link BPP value above the
maximum throughput BPP value, fail the state computation in this case.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 165a6704922a1..dc2486aa12010 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2629,8 +2629,6 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 		max_link_bpp_x16 = min(max_link_bpp_x16, fxp_q4_from_int(dsc_max_bpp));
 
 		throughput_max_bpp_x16 = dsc_throughput_quirk_max_bpp_x16(connector, crtc_state);
-		throughput_max_bpp_x16 = clamp(throughput_max_bpp_x16,
-					       limits->link.min_bpp_x16, max_link_bpp_x16);
 		if (throughput_max_bpp_x16 < max_link_bpp_x16) {
 			max_link_bpp_x16 = throughput_max_bpp_x16;
 
-- 
2.49.1

