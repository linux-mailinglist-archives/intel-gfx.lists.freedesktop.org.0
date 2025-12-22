Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4618CD6958
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 16:36:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9DA410E704;
	Mon, 22 Dec 2025 15:36:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lr/hxorz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A6C710E6FF;
 Mon, 22 Dec 2025 15:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766417798; x=1797953798;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=BggJrjPwtmHaMYhaoPzqDfQcAqpyhB1aZimuSS6Gmws=;
 b=lr/hxorzScaJCTnncrUpqVrD2UyBoMWDTD/XPUz5QvEN7MQW0aLDylnq
 j/1Lx/G2Nh8pd/PwnHd0Mv1c2diQDuCkWEZVlRNbqZ8YlNIkv3Jj3wUBB
 OXVpUL84dQa+31A3dYPaTg5/uuwvybUFg+4tZgLqJVGienDyEU/j23LH7
 QMP3bWkKJYkFU5uq9CHp9fZ8dT0CkZD/N5lM4EmqS0anEVGsyIyPOT/IC
 kefd5d/0RtwHDlb6g++cT+aSKdbwj6sklmjvMGaWJyXDRq6gs5gyeU5zN
 Ic/VcikzlBDbW4p+7P89gIiUIHI9xVfx3KPR9Ltp/Qslu42IX1/mI6YkK g==;
X-CSE-ConnectionGUID: /1Ftx/Q0R7+C1NpVf16i1Q==
X-CSE-MsgGUID: eM8Z2rmvSjSw/K8iDby0Uw==
X-IronPort-AV: E=McAfee;i="6800,10657,11650"; a="79726291"
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="79726291"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:23 -0800
X-CSE-ConnectionGUID: 2/bij7EsSVu1NkG53+mfWQ==
X-CSE-MsgGUID: e1KDSb1rSdy/omAKT/PMUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="200053261"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:23 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:23 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 22 Dec 2025 07:36:23 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.24) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JdMIhqd83sn3+emrtii34fqJ74/37QBrqnvJm+1GO+ckLAj8jLh0bIl0f1xuDSTvVwrHjJfksAr0YAmZfzPKDJ6vdlFdBOrYjZ5iEFvO5qsJVtfiwYdMiiGkIG8QmqW6VxzHYKxkz6GWM12kE/7Y6WOvsOJWWunmqVTwhSEIJYSXSF+tgh4EQ2qk2MdKePQqakIOHfzUyJrA5zm6pmdSnPRwsowCPaWhyy4i1uc+7tPklNp5lYBZ9H8b1oEC09h+RXY53tq2OyUu2i9xr5k1kwhCCmHDxdY78CHtFt4JFDQdk0u7jW8PDjSj/oLgHFpjchzXEtSTD7Vww0OmTjWIDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qZkrIT9KUcDA3t0MIL+YMahiEDkKtTT3XI/lfoikYM8=;
 b=BtnBF2rvuZ4cUN78d6l0685Gcc1CGLJbaFDgnmtxiNTYouFTqP8dco8clJdIowBf7YFj1Hv1nqvBICYHLnjMUbWpI1nAq/pRSXabznjUHe7Dr26VbuxiHTytji+iD7HKe4jBdrAObNx/ZXB8JqUvQAK+/IN+U4zMlBKoqmI+GwFqbN6q6eD7zMrgWiYu+IG88v3RHUFo71MDrH3jxJh062hEWnP6a6q9EzdSFde4MxjOCupiRXuaw72FJjKxMEXBz2YlHWJRRpfi8ZyRZIIJnGzXFrtDCe7MmKsAEPfjQfuzEOvuwDm1ppXVhtv/pAALU6LqU+B4MwR0OsNW36zO4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB6912.namprd11.prod.outlook.com (2603:10b6:303:22a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Mon, 22 Dec
 2025 15:36:19 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 15:36:19 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH 09/19] drm/i915/dp: Factor out compute_min_compressed_bpp_x16()
Date: Mon, 22 Dec 2025 17:35:37 +0200
Message-ID: <20251222153547.713360-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251222153547.713360-1-imre.deak@intel.com>
References: <20251222153547.713360-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0569.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:276::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB6912:EE_
X-MS-Office365-Filtering-Correlation-Id: c906cf13-3e4c-43d1-b1f3-08de416fd9e3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?0f7rSqQuSOv8DUIGXxl0sO6N6ezktZ3lgr/ZGl4wCzHqC1mUE0+TC8xp1PFz?=
 =?us-ascii?Q?O9JnS5OcHLveFu9Ca4+kUCci6uZshDMZ5yvXFyQ6INjO6+9SsBEcLDYbmkhS?=
 =?us-ascii?Q?NYMoJBOhEPsOPpNoW0DbukUVjP7HJ5Xco6g9m1M3kVyCTs22wrfkFjZs7VeZ?=
 =?us-ascii?Q?0RupynbW7BK7bMtb85gaAgNbjkN++32BH2HZ4viQGtQmZ2gDyRG6pqLs8+W9?=
 =?us-ascii?Q?VRRBfeKjdDaluAxPTAhvyrApTQZDWBH+k+ofSp1wZLDfbmtEtri2Pr3Javyq?=
 =?us-ascii?Q?WnPiv77jIdGI5BY6RnrXu6qCG/A+GcCtd+Wh9vGY2pXcAuUjvg1kEdcXTWyt?=
 =?us-ascii?Q?BUM6AJMkFkeIZI3Jhiom56j4CaoahFZnhTMfKNJ5/ElBMctPI435/RfN09IS?=
 =?us-ascii?Q?cF2wtos3JOoX1XgpWd/Rnbra3MiXFNT+EPblUVacoBSaAsYUX+vALQWNXMHd?=
 =?us-ascii?Q?yvMbiJp/ROSplo63F8ddsBFqprVtV6EAfZS6NbG0IHM2zvojyp+x3WSsWCck?=
 =?us-ascii?Q?6f/YMc/R0+26RDf6ddQq7cJTeCm6udRmsLIiwKnj94OEwSq+zGaxEXpgyoLh?=
 =?us-ascii?Q?clq5SysnVvktVUKdx9FMOY+lWIpOZEU4rejaL1Ljv76QXULVKp6qF/IJB+fb?=
 =?us-ascii?Q?lJfMogBdAYSea4CAJJVJVlod2nh/+oJdBqtZON7dPhqLDvjZrWeI6Goyqg0V?=
 =?us-ascii?Q?MQhnv+c35CyTkHKY2TLwv+5eh5oAy0YhKbmQq4QKMts6ZgmtvcmXf+2DDLXj?=
 =?us-ascii?Q?0DFvM7PMeekkxDyK5XICvVjfNHe+fvzHOJ5EHLOIP3fFpLvDdvxfws6PtxPX?=
 =?us-ascii?Q?IWYOu3bIUqpCpraqwzk2RyA2TfXyK2NZb3FFA2FsCXj3T8I6g+pq4e7wlT0c?=
 =?us-ascii?Q?wn5e4jvKkzMv+t818kE58+AZqEO5qTqA2PqT/5bfmChd+9uLR1vxW7U5jX2B?=
 =?us-ascii?Q?8Pyn0UJLMicbXXuYHt5+XVE8DX+NT6BzguYZD4eKeiBV7n+emc5p8UjZIXZK?=
 =?us-ascii?Q?BJrb+40hMPDP5PTGAL64OVfWfRfHfOOJUQ/Q9Mv0wHmfjHRsTYFzrgB7jXrT?=
 =?us-ascii?Q?4maR532Vx97PDQAR7z3dG2qfJeBYn7fgM7YHwBNZiXGUjPTIUpB+0oK+CG5l?=
 =?us-ascii?Q?bpqehdFf8FTrUuIJm0uXmr8F5WiV/0Jal3LyenCJnXVillfB9NCKAlAf0XTZ?=
 =?us-ascii?Q?R6fqIZ/nOJYc67iAIfxYvxaZ7gXSt4+2CoFCcjPyAYAskEaHSjGR9v3rVbgP?=
 =?us-ascii?Q?ArH7DEujoILDLlbTuGh8CzLkhGkAGVwTzLf9SnLFhcA0xiXjPYedi9ajZ+Xn?=
 =?us-ascii?Q?vjMIQem7VLJNCFNZMiZRBMHYLsbukzvalIQIRCLZRGxYXroRgAOo2RCHNZ2q?=
 =?us-ascii?Q?7oumWtWU0y5ZsQ8o7UV6azbsWfOtHIEfv6tb1VkLeF1bFXwv9HZT+eGOstA7?=
 =?us-ascii?Q?FMiy0AaTnk9okzUtO37re9/Ur45e337E?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cE0XfReY7FH1GsUa3BG2KsOcA01aNBcJZ0cpcb/YJftVL3twAFuCXz3585SU?=
 =?us-ascii?Q?XT2CKSClHL61M+A6sfZCDftcnpjyZ5Z7/0FbQwo3NjrZ3CLsf+VZDM3OHkVT?=
 =?us-ascii?Q?C933OlHMx4EkEhI016BUTAkHbWT18Obls6jkzHfGWD7ZG086Ifyxy0gGQlAX?=
 =?us-ascii?Q?bhZOe9+jH6hJ9kR15ltLsRX1scO+aCksYCTeaB9ekIMF1vEZzML12GPZLSEt?=
 =?us-ascii?Q?UnW8qUvqj6nBBMV2RpK/kHjh3slESd/2mgjCW9hUjHzCAR4fceM8lKPTJgpP?=
 =?us-ascii?Q?lwHwuqDE4l6eH7qsawYVwW8xdiGWFM90yjqYLz+EqZBXlAg2Zar05StbTRWa?=
 =?us-ascii?Q?04YvrgXov8EQh3+TIPTYqZmAYzwHvJ1QWEvuFUsbhCv0vuZybhnas1rpCYRB?=
 =?us-ascii?Q?A9udUyPKDfrvK7n/WzFfbcY6126/NpZ73NN62VOJ81oSUfK95dz5CwF5WSoz?=
 =?us-ascii?Q?I6wzF6fZDrEvoNNGzj/vwnEjntBLfqdTn7KFm6Zmnj+Z5rhAyXq9uqfFiTv0?=
 =?us-ascii?Q?XGb3tLTrNSve9kIejCAkd+O30Vap7wKObow7Y2krVZf0fLX4GX94WvZkDfVr?=
 =?us-ascii?Q?dC22GaZZ5HyLHSR2OJJG7b3vrGa1hPUCgbeVm9zPvStzrNnbIaljXkuPCZ7v?=
 =?us-ascii?Q?C+tc6x16kaHdRcWYiK1HdKstTifGFQ7EeXjql+6RJEYA/u+VeZKMtl4E8GMY?=
 =?us-ascii?Q?eVzGJT5Rki/qQKgcw8m4ZCVBr/ZUQqnHD43Zm7O9dzVJZHeGRfwvfCI1qZZM?=
 =?us-ascii?Q?cIOd/ZwFK7Glbi97KYMK5TWAbWa7pN5E0EcLkJtYVHyf4umqd8NQeYIB3536?=
 =?us-ascii?Q?LJRpmqte3pvdlnBiy8qykJxpfzu520zZPmXxSaRIFnBuctN90G41qkGte616?=
 =?us-ascii?Q?xzQe/LsYXMQVzYXYJ+BEORdltTD8je/xJhN0J1ZUYU2Nh6nh1RraFfQJyiUm?=
 =?us-ascii?Q?h/riGGSP8lIiu2QbudT7xgZulh5w/nYeTFhfaerigNSPnThFiY/uWM1lhwZR?=
 =?us-ascii?Q?1SdGsZRTEWR+ittoDqiqR8B/gVceLky1QH3yWdx2fDqH4TlopfSlDhsz97iu?=
 =?us-ascii?Q?U+VunDr7vWJkQGUijmXToKURGyQ37IwVKyUNS89X5f9gFngKWmzEtCxGxWju?=
 =?us-ascii?Q?BPiLuZ/SuZM4Xzi36TRHBGWSq3/gj7OzCB7/32KWn4zCLdcc1VThqa1Ogj3T?=
 =?us-ascii?Q?OrQSLMEEned+4K39T+T1hM/j1FtIIpuBNe4XSE7uYOUc1nbd3Ro8JdC5JrMo?=
 =?us-ascii?Q?Ma7T7jqA4LEZfDj/mOYjLvzs0n9wIczTfj0pMxQgjcdAU+jkkAHcwQL4Pv5K?=
 =?us-ascii?Q?Na02da1TSFdPpw25ryCn7QDAdF0OQTaLqW0FH3bl9ulWvSXBwgfhoC3WlrvH?=
 =?us-ascii?Q?U2ci3QAO2Gtebo+SyFQNWnuTx1RDTeXzalFPFoHYl84swATg0t7j0TzeP7It?=
 =?us-ascii?Q?A0Z8EfGKZbcAQl1ct3p5T4/BuA0HyPjzmVsj4BmgKhd7iKHLg4xAYZpkEd7c?=
 =?us-ascii?Q?Z78FBAPSs0GUZ2LmOTE/cuNqFkoJRTcXa9ohbRBDlsQXmVQT6QdPEz69ZNmk?=
 =?us-ascii?Q?KMwLwiAnKydRci22s5UtLUmhYSLEzmUCzeo1MEvz55x42Nls/6DVrZs5LuoE?=
 =?us-ascii?Q?cgh/OgVpfxUF4apaspPo7hyQ/y5FdR0fpYFaWscHdtflbSPXYWU+sPr9975N?=
 =?us-ascii?Q?v9UvJJbm8dzOiK2GoST9lZZk6bWkc/R8L+idQEmObTpCEPQ8zP18NJ9271SE?=
 =?us-ascii?Q?nAnYMdr6SQxStNg+tQkVo8xaBI5l6xusA6qG9ENxCOlDHDpxB7kZD7JcdZSx?=
X-MS-Exchange-AntiSpam-MessageData-1: Y7kjCz9+oJjQsA==
X-MS-Exchange-CrossTenant-Network-Message-Id: c906cf13-3e4c-43d1-b1f3-08de416fd9e3
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2025 15:36:19.0123 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sVJVXUvCinNGLiuH6C1WVjJ37wpHw7IjGu/rTbi40vzABx0uy0eGILdjOhJ0g0iTiRvkq5iipQRcPxFGPqKnng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6912
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

Factor out compute_min_compressed_bpp_x16() also used during mode
validation in a follow-up change.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 26 +++++++++++++++++--------
 1 file changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index bed41d7f97e81..8aeb61441322d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2646,6 +2646,23 @@ dsc_throughput_quirk_max_bpp_x16(const struct intel_connector *connector,
 	return fxp_q4_from_int(12);
 }
 
+static int compute_min_compressed_bpp_x16(struct intel_connector *connector,
+					  enum intel_output_format output_format)
+{
+	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
+	int min_bpp_x16;
+
+	dsc_src_min_bpp = intel_dp_dsc_min_src_compressed_bpp();
+	dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(output_format);
+	dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
+
+	min_bpp_x16 = fxp_q4_from_int(dsc_min_bpp);
+
+	min_bpp_x16 = align_min_compressed_bpp_x16(connector, min_bpp_x16);
+
+	return min_bpp_x16;
+}
+
 /*
  * Calculate the output link min, max bpp values in limits based on the pipe bpp
  * range, crtc_state and dsc mode. Return true on success.
@@ -2675,18 +2692,11 @@ intel_dp_compute_config_link_bpp_limits(struct intel_connector *connector,
 
 		limits->link.min_bpp_x16 = fxp_q4_from_int(limits->pipe.min_bpp);
 	} else {
-		int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
 		int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
 		int throughput_max_bpp_x16;
 		int joiner_max_bpp;
-
-		dsc_src_min_bpp = intel_dp_dsc_min_src_compressed_bpp();
-		dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(crtc_state->output_format);
-		dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
-		limits->link.min_bpp_x16 = fxp_q4_from_int(dsc_min_bpp);
-
 		limits->link.min_bpp_x16 =
-			align_min_compressed_bpp_x16(connector, limits->link.min_bpp_x16);
+			compute_min_compressed_bpp_x16(connector, crtc_state->output_format);
 
 		dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
 		joiner_max_bpp =
-- 
2.49.1

