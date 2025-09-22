Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE12B9181D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 15:48:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84A2310E4B2;
	Mon, 22 Sep 2025 13:48:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NA4ujeEQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D89A10E4AA;
 Mon, 22 Sep 2025 13:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758548897; x=1790084897;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=yNDHdWuM9+YfcXbsjSBZdMSlTqyiR9hK+NoK9BiMr5o=;
 b=NA4ujeEQofCDRBxA8C6b1Qe8JZTgkzF5bgGoprxQhSTjsUgTtdf9yg3q
 jLEwsyCBTxnDC6f6AAeYwHDfQxOpHQor7MDkiOcrcL5twgzf1AGurails
 CPnGakN0MRXX4Dxb382nnkIDxmvhdneCfY77GUWqayG568n8+qcw0ubfe
 vLWHqAi9WuT5AXst6vl0kAZyg+BvFYDSISPT3puB2BEaX7qakKqruS5gH
 dmuh4mmILkIQsXzI/R9HM8ULacgeKwVgzPBwsiWQB0HDueAxa2Gk6SC2C
 Xtyr4kGqqRrs3ZzOayGp2O1Mppxk6tKMtX/1I1ubVUlsQiHFsiBuqkHAu g==;
X-CSE-ConnectionGUID: mMFDl5fjQyaFsGaYbxBRtA==
X-CSE-MsgGUID: nco/L7ZuRlC6StXdU2wTqw==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="64633387"
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="64633387"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 06:48:17 -0700
X-CSE-ConnectionGUID: YbZFzsMmR5GjHF1h9ReNPA==
X-CSE-MsgGUID: TwvWenlHRSilvkMYhy6qEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="180882304"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 06:48:17 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 22 Sep 2025 06:48:16 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 22 Sep 2025 06:48:16 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.18) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 22 Sep 2025 06:48:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BCMZv42AZS+bCYt132mEl4n6AZi+pFW7who/4/LvyVIIC7/OwpFw6ahzWizp75YAwJ0Uw1+QgTCJjJNbkesnaqD1mDysFwx8Jsbdi100aAZp6dZyirBYLn6UcfMYvRzL6TUclxalM6+vR6Pnb+0mw9zzK3uwkEW6T3hV0TO0aceJttQn7BK0GrUWp0rcepo3W5ywra4LvpTzyc8/h3iw38OgyDghzjxS/j8R6iTNF5PVi54VgCLAULO1cZo7ruGjUoO8l8cO5+uQMnueY1udCuQ2jOfER37NYixCpVGVGu3IjK4F46108cHERYNhVQfP8UwYLGTntN3o3YXcmrXsxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l/Fx4KJ9NsaSIB+QBsiQOlI3yKpBe75U7OThC7tDaic=;
 b=F43oW3K8LAKCtCxSr/hESjSE7+qi6UwUNYBrpB8cSn7ru6jgZxUpBPdvbuQ8Kky/8v4ve7jlgb3n3RDhzrAdF7OPisvBuE/lCC6Udicr8rTRM/yY5ARnWGcNekwt3JeA7WAgZtlfEZcOtFOE1o5DK981X+H8S5K2XycHAUvdm03b2Sb14gRc0vI5M3mloNod82grXlOIvfqQPMDOxgUWtvI4nATmVwqP5Kf20zuk58wvMrLDYzUfb0XKtfvDt9MPSf9gm6zs3EhwZskf/FFuDruH276cAho6HKkudWmkhvp1aOrcmFeOumSGAZLOoczaaquA1FVV9FTQcIpktbTksg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ2PR11MB8516.namprd11.prod.outlook.com (2603:10b6:a03:56c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.19; Mon, 22 Sep
 2025 13:48:14 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9137.018; Mon, 22 Sep 2025
 13:48:14 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vidya Srinivas <vidya.srinivas@intel.com>, Swati Sharma
 <swati2.sharma@intel.com>
Subject: [PATCH v2 5/5] drm/i915/dp: Handle Synaptics DSC throughput link-bpp
 quirk
Date: Mon, 22 Sep 2025 16:46:37 +0300
Message-ID: <20250922134637.271999-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250918211223.209674-6-imre.deak@intel.com>
References: <20250918211223.209674-6-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0282.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37a::14) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ2PR11MB8516:EE_
X-MS-Office365-Filtering-Correlation-Id: f4e8f20a-93cf-41d3-7635-08ddf9dead8a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?t65cs67pVYvhgW2nlH5JVLULVDooHGqJA/ZXPuQ3Xe2CNvOf6O9NoM/uRIPs?=
 =?us-ascii?Q?fE3J3TbGaQHGcBTrck/dwHSzAmVfyRdVFEUT7zuTer/DD1n+jnAmmQhopy9j?=
 =?us-ascii?Q?fvPaXHaT4ZlwDeAnk+Jcd6rXLqHA4RDxF/4/IkCni2PXUtbGHeCVPcdOy4Qh?=
 =?us-ascii?Q?jcGUVrQnwtzQg3cGMqucJs9lj1Wm3SyzHx0dk6g4qVEs1wmFndnbkXU11A+h?=
 =?us-ascii?Q?VEJwQ10h4H0nbrIrhUDqpLsTkJiqFD9buyBr9vQEDx9VHkoY/0f6SOM7O9UI?=
 =?us-ascii?Q?sJBICinEnMUIC5vDIeQlYo4v/zhJ6jyAEaXEpAAIk5vzqXUDTQFjE1pCp+RJ?=
 =?us-ascii?Q?RKvdRBnQwPiLcPCcrQ4MVtm9RFROfJaChgsdliufUwKnqF1HBtVUAmTBEOHf?=
 =?us-ascii?Q?Tv4DWfEA3k8OmKn9oMk+fWQRV1fHe8c8ATwn4WQmT6fStkolYkCNJ6dPlvr6?=
 =?us-ascii?Q?i4bNPCTRM9dqisv22tBPGWlaj+O0fisZ47hC22vFbADcQuzOYSOoS1zpb8Q2?=
 =?us-ascii?Q?B/iW2V1r8JvAOvUxQvv742ubuVy08Wijb93Yh8BM6hyTO21m37ZjEXOwicku?=
 =?us-ascii?Q?cTSiREhczmLc7afya3n+Zqqgi1hcST71xkhpVprJzicS7PMKmXB6FuwFOm/d?=
 =?us-ascii?Q?7JgwcDBr+xluEaqFIXJFPFUeZwFxaH2w5qoNaJXx5xsCDnAvWRS6bYclb27f?=
 =?us-ascii?Q?jKHQzplV8IDCLPG1ZslEsylXp5RkB/OxH98Q4H+EUAfZOuIXRPfA3MMA4eQY?=
 =?us-ascii?Q?dP3LMfhZNOyZGiq1NTpdho0AMbR8allm1vftm8EcaCIlQqZnsZu1z1TgNo+2?=
 =?us-ascii?Q?s+PfzicqzW46fJe2hJTl6PqxZ3CBUHmUcN9vG5BuqyUsBAwrBkTiFRhqmwgM?=
 =?us-ascii?Q?wwwRc+sSkH/NbfwWvMcWb+Xy2aXdRnR5s8UFjF7xCy9sKsXohQ7MjjKVCu23?=
 =?us-ascii?Q?c7dFzeZifjcJhP+5KNeJqwYsXsHJnRXTfdNyqJ3cc+A0GKLinr1QJnOiZTSa?=
 =?us-ascii?Q?EZsBXnnMwjoBe+ePA4L88C3JZXAAcaArCnWSRRjxGyiSupg76boQqWFmfOph?=
 =?us-ascii?Q?tNQRpaDndEU1UBXVUY0dyBk+GRwQ+En0sFBvf3XpcYWXh/QU0KrRNXbaE11O?=
 =?us-ascii?Q?+M2v1FFA6+RUpI/+8tJzVALULyZMkeigL9XvUm/KraRszjfkJ2yQ/T0tYNyU?=
 =?us-ascii?Q?W4IhXIm4Akct8772mbedqKlSrxgKjodRkXmS0y/GC4TjUHdkdgvUU0hcAJVY?=
 =?us-ascii?Q?bKg52QN8S1Pkh6a4tWWEyoZp8fElKeJru1DVvIhFAlRdwr2SE0MNOeHmZ8f2?=
 =?us-ascii?Q?CU2Gr8yEn1yg0ZZQs/8OKV9t7/MlV0oSaZgIlS9FbXLUo+CQ6QtCh6f2eOkx?=
 =?us-ascii?Q?dXhNRJ1miCPxjwB4Xvd0nYqnyY5xZ9UYxfaU++rAS7C3n/1n8kAp7E/FkoPR?=
 =?us-ascii?Q?Vky9QhPh9LQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?og6amW3+hriB5hict8snUTxE0Cj5BL37NVb1wzFIhQ7dlXt/zAQ89lBW98Q1?=
 =?us-ascii?Q?pSmKJUpX1Kz00Y32C2ZsLOXh2a2j3vn9EWw6BqnGHcN6HAnrTv5rcw7Q/m7N?=
 =?us-ascii?Q?ArKa6L6kL9tqzT/Hs27EOVzK0KIZGLuqJGYEvOb3VnmCJxN0hrCJX0dYjnXy?=
 =?us-ascii?Q?bLMM9qYp3nnWtfGArZMseR+67UGi+0FAhh4VRcNmCDTwjJic2LdWHF3SxgDk?=
 =?us-ascii?Q?XuMdl0QXhC3y+sYpyzcmPrYs5hbFzX/hTi1TJhug2PttGyYeRx0kg+CitK2q?=
 =?us-ascii?Q?MTQzkzpZcX6Ll2dYwpc1HrQYNNbwNFf6smxOJR3yqjxHOI2iujP/T8P8xT3a?=
 =?us-ascii?Q?BjAk/wTfIRt6zgFs1nUPFPT+aegiK6gP7lCSg4YRNrMJgXkNKJmyFWKkaJrL?=
 =?us-ascii?Q?TuYOsa0Mc52lg8oKr478FN5jXo03po5zs4kocEfxEOgOKw7g6wLbnIyA0rmd?=
 =?us-ascii?Q?4WqaBDsE8exsdT2ofXjxTypxW/Hq9b0rhufEIY5KwOfqB5dlnFWWDLhuLINd?=
 =?us-ascii?Q?e98kPrpCew3hg7LDqLXkTMKK+j0iDSnIghgrXFFiaQAskkB3IlTsZ7eCrtLv?=
 =?us-ascii?Q?JA4VztD4w8i45yaaQpRqb3ddJlT9D/TqOVRMVEIUSfuGff6bwX4XqpfzrVgd?=
 =?us-ascii?Q?I16jOBrfq7ikWcyb/mfsjWq1MyEVVj47aif6OaL9DcGEThuHAcZsT1yCU6i0?=
 =?us-ascii?Q?9GxOUhf5nCkSuekUoJDi6atzKY/wKVh3+Qu9ah891AmB2QWo1E8RVawCBF3o?=
 =?us-ascii?Q?/pIwY2ZwXeeCZuNzbxsWujZOAOAfz+WBTGl6U8TKceV+fn5tMlUkdaTOJbqk?=
 =?us-ascii?Q?gOV4qjrWJgb6ICYsyA9r5JanRxTud+Ehvht/Lie+HZQM0IytI0AIaq4OBhk2?=
 =?us-ascii?Q?DdPKX6rwyMcGNpUBxOthfUmaNbf4gIn32RkwhEUrKaVRKcUxpT29XDKPlsW4?=
 =?us-ascii?Q?cUY1aY6gZ9HQaYHFRGY1YdGMnTmxnJiXMU5YQyO5Bp1DLEJ9/bA90AkEPtWZ?=
 =?us-ascii?Q?fscl5Wbkt4qsutvwj91Gp3d0DkM/bqJZ+PFbttUV10zo+61NeRnvl0c1cGKB?=
 =?us-ascii?Q?0D/uwlVXCIjx0Qn3fkzLHdTk4/RXaSMvBuWrELXDqNplKOln3ImCF2n/DiN3?=
 =?us-ascii?Q?kU85YjPHd90xwULcQjfq0960mTyDVuD+Iu4JupNjaFebYth/AvWlclWByfEM?=
 =?us-ascii?Q?Iz8UkYuJbo2nSlPZ8ZOMrb3bKoU7EOaQWDZRymcg9yk3xsuUn4S8KooUyWUY?=
 =?us-ascii?Q?7HwvUJrsfzSXuDONRmWS8mXnDui3hMxQBRji6aV1H6b4McjzGQeKVU6qn5P4?=
 =?us-ascii?Q?DclpgYxIRHv9jJu4yW4ZOZalYvoqJB/rGnUl9PRXQ6h9NcWjLt6EEmgfkDlQ?=
 =?us-ascii?Q?b7ekoJ2C+kwyM7R7y7XtN/iCwlftFZphfO0oAGDIdJwvJ39rrAJluNY8NSeK?=
 =?us-ascii?Q?r3LYR7tU6HcBSRtKKfY5AoiOWbKnA51yoehAk+E1HbyK7iWEVc19Bhufi7yZ?=
 =?us-ascii?Q?T5ljgetKh48kvN0N6uZlx3ElbQl78DsvqwWNhSVzbJtULxJNEj8+btkbU2Da?=
 =?us-ascii?Q?JabjBspBLezMQud9Sp5IaQETZ19T+sT+8wtF0aRVw4KjhiG5RmfceXl+FVKH?=
 =?us-ascii?Q?QFaxF5KKpvsXgegQtkaw9FEYIg5pqQvGU03dWcUvSAQK?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f4e8f20a-93cf-41d3-7635-08ddf9dead8a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2025 13:48:14.7796 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0nr1i2BifbVyZxV5rbNKfR3/DUPw6sh2tiMEXu4mk9c2XtHY5CkezZ8YIVM/yDuuADhS1cf3mb/fPTCYW76s2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8516
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

Handle the DSC pixel throughput quirk, limiting the compressed link-bpp
value for Synaptics Panamera branch devices, working around a
blank/unstable output issue observed on docking stations containing
these branch devices, when using a mode with a high pixel clock and a
high compressed link-bpp value.

For now use the same mode clock limit for RGB/YUV444 and YUV422/420
output modes. This may result in limiting the link-bpp value for a
YUV422/420 output mode already at a lower than required mode clock.

v2: Apply the quirk only when DSC is enabled.

Reported-by: Vidya Srinivas <vidya.srinivas@intel.com>
Reported-by: Swati Sharma <swati2.sharma@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 58 +++++++++++++++++++
 2 files changed, 59 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 73bdafae604f..aff63bf0f229 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -551,6 +551,7 @@ struct intel_connector {
 		u8 fec_capability;
 
 		u8 dsc_hblank_expansion_quirk:1;
+		u8 dsc_throughput_quirk:1;
 		u8 dsc_decompression_enabled:1;
 
 		struct {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index dd082d2fcc96..5e7aea560910 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2509,6 +2509,56 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	return 0;
 }
 
+static void
+adjust_limits_for_dsc_throughput_quirk(const struct intel_connector *connector,
+				       const struct intel_crtc_state *crtc_state,
+				       struct link_config_limits *limits)
+{
+	struct intel_display *display = to_intel_display(connector);
+	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+	int max_bpp_x16;
+
+	if (!connector->dp.dsc_throughput_quirk)
+		return;
+
+	/*
+	 * Synaptics Panamera branch devices have a problem decompressing a
+	 * stream with a compressed link-bpp higher than 12, if the pixel
+	 * clock is higher than ~50 % of the maximum overall throughput
+	 * reported by the branch device. Work around this by limiting the
+	 * maximum link bpp for such pixel clocks.
+	 *
+	 * TODO: Use the throughput value specific to the actual RGB/YUV
+	 * format of the output, after determining the pixel clock limit for
+	 * YUV modes. For now use the smaller of the throughput values, which
+	 * may result in limiting the link-bpp value already at a lower than
+	 * required mode clock in case of native YUV422/420 output formats.
+	 * The RGB/YUV444 throughput value should be always either equal or
+	 * smaller than the YUV422/420 value, but let's not depend on this
+	 * assumption.
+	 */
+	if (adjusted_mode->crtc_clock <
+	    min(connector->dp.dsc_branch_caps.overall_throughput.rgb_yuv444,
+		connector->dp.dsc_branch_caps.overall_throughput.yuv422_420) / 2)
+		return;
+
+	max_bpp_x16 = clamp(fxp_q4_from_int(12),
+			    limits->link.min_bpp_x16, limits->link.max_bpp_x16);
+
+	if (max_bpp_x16 >= limits->link.max_bpp_x16)
+		return;
+
+	drm_dbg_kms(display->drm,
+		    "[CRTC:%d:%s][CONNECTOR:%d:%s] Decreasing link max bpp to " FXP_Q4_FMT " due to DSC throughput quirk\n",
+		    crtc->base.base.id, crtc->base.name,
+		    connector->base.base.id, connector->base.name,
+		    FXP_Q4_ARGS(max_bpp_x16));
+
+	limits->link.max_bpp_x16 = max_bpp_x16;
+}
+
 /*
  * Calculate the output link min, max bpp values in limits based on the pipe bpp
  * range, crtc_state and dsc mode. Return true on success.
@@ -2558,6 +2608,9 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 
 	limits->link.max_bpp_x16 = max_link_bpp_x16;
 
+	if (dsc)
+		adjust_limits_for_dsc_throughput_quirk(connector, crtc_state, limits);
+
 	drm_dbg_kms(display->drm,
 		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max lanes %d max rate %d max pipe_bpp %d max link_bpp " FXP_Q4_FMT "\n",
 		    encoder->base.base.id, encoder->base.name,
@@ -4272,6 +4325,7 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
 	connector->dp.fec_capability = 0;
 
 	memset(&connector->dp.dsc_branch_caps, 0, sizeof(connector->dp.dsc_branch_caps));
+	connector->dp.dsc_throughput_quirk = false;
 
 	if (dpcd_rev < DP_DPCD_REV_14)
 		return;
@@ -4292,6 +4346,10 @@ void intel_dp_get_dsc_sink_cap(u8 dpcd_rev,
 		return;
 
 	init_dsc_overall_throughput_limits(connector, is_branch);
+
+	if (drm_dp_has_quirk(desc, DP_DPCD_QUIRK_DSC_THROUGHPUT_BPP_LIMIT) &&
+	    desc->ident.hw_rev == 0x10)
+		connector->dp.dsc_throughput_quirk = true;
 }
 
 static void intel_edp_get_dsc_sink_cap(u8 edp_dpcd_rev, struct intel_connector *connector)
-- 
2.49.1

