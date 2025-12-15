Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEC6CBF874
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 20:24:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55B4010E4EA;
	Mon, 15 Dec 2025 19:24:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZRj2W96q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4820810E4EE;
 Mon, 15 Dec 2025 19:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765826655; x=1797362655;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=AwPLEq40yl13epvflonzI17LL2KzZuDYzbLW+AGUkGI=;
 b=ZRj2W96qs6Pc+lAijgm86rLqv7IPzyfSHqRq8qQL3udG+vfCkIO1pKf+
 xE+YvfNgAss/WH0ySlt5PXXt4NGxgqRlN2hZl+1YBY8LTZ1SI3KtW4Lsz
 /z8F8tQsEbVjjgO8KtZ1vvvMNPjZwSqhCQWiTfEQWJLcfOi0VEFCdnxmj
 PP+s+RRzD04ZIE3U4uQjhpnkR93c/X8t3MThtjTCoNLv2q0M+eQrBXwMd
 G9/sUY8tejOu7pl/4Ibx5LQmeWRxxK14M4w6YdTqtL1ZkKdPr4Ny6o6Hj
 1tV6EMbOkBWWMA8DbXOsVFACGXKXVSoSJ9h2WZFgWSTcqPHomRBUvi8fk A==;
X-CSE-ConnectionGUID: 20KA2be/QJK1L8grCs+SFA==
X-CSE-MsgGUID: UWEL0WqXSueFdpxeeFkC5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="66726555"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="66726555"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:14 -0800
X-CSE-ConnectionGUID: ilGcallBToqjR637kUMGOw==
X-CSE-MsgGUID: Ia7/VhinTDyT/PkNZluCnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="202919527"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:15 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:13 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 15 Dec 2025 11:24:13 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.52) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L8nA6Z0w5UEc9jriQTN8vHUIbKlJjS+EOiPwqeYrhk9G1wvxqKdnSyAaVR67X8xsQ/cJLzVEfuVD0hyBV/FyQvHNtP8XzvkAmUKwdVuyuzKFmrsqtkjZ9TmHzeR85kya5bIXWqCurT7yCvasVXIAQRJoSkzrMk5zKj/PXoD1kHL5Ar7yGINgLn8g9RZL/u9uxKRgLoHxNLPsqpyRpQ/NYXA45o56eKa+Rg9qy0gJSHhgddF+8vc5gUOrpmZPdsi7mJ+FbZGDW+clQkBlBLm+U4972v4orm+bvQLbEpaJuqnbO/8Gffm1yvviMEA8BDJEa4GOxfX3K9mZZAca7KF69Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wn0go56h/XnAs/AhDw79FsN2XCRVo0ATNpL1AxwuAOo=;
 b=horBGvIE1L/QwT+kxHQZZMUxdckJoEm8GClLYu7iWcZMr/wtAc1FdKRNqrXp7P+ViI2zXfcF4z0jfWCq8/Atlq2bRTuFGbfHQHA/yw/9qoOcAk8dteURNJMzzdJ+6NqtjDtNsZlOb+g/KMzffbEADCvUcS0XkuNyaTXvhSDndR0dD05XE1tjVsfhPCavskIz1Rdts6nSom3xaZsjAG+pHYfyKpjuTv0/w08tlHSgfoViShdj/ot4EostlxWlpj8p7qV0tS7IEnCFOVX9JM+gmJXYHPXaRb/g2+lThRZ3C8XLmwzs2sfhPmrU461PWhc+qTD/2l5vM13notptSrpGoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB5128.namprd11.prod.outlook.com (2603:10b6:510:39::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 19:24:10 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 19:24:10 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH 05/16] drm/i915/dp: Use a mode's crtc_clock vs. clock during
 state computation
Date: Mon, 15 Dec 2025 21:23:45 +0200
Message-ID: <20251215192357.172201-6-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB5128:EE_
X-MS-Office365-Filtering-Correlation-Id: 185e35e4-1c70-4a6b-7e51-08de3c0f85c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|376014|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?oDIy/V5/T2Dim/ToKN+4achLN2QLbIfOQ/P+Hoyr4YLCbDQPgn1gjPS+OCio?=
 =?us-ascii?Q?rKAa9QQK434t6ZJUy2/xsm1r1Fmp3J2zTYf9m7C7eQhy/S3HNQKIuQtIKWAZ?=
 =?us-ascii?Q?4/GF0qlGW+lshqTNWLPjbFHpMrvWMlwREMUF73AVblIWeLc7TjB3gWTY86a8?=
 =?us-ascii?Q?WVB2G3ySq3KQlZYNlAkKlDhedMyShfn24dT0Ts145P2ar9xnYHyukP5lHHiX?=
 =?us-ascii?Q?HS2bcWysUNvWCp5bEl1Kyn+vKecFT9427L9Mbwpc+vh6SlM0BW1H7SQa+RuU?=
 =?us-ascii?Q?H8MUZ2ETSLQglAvylp81qYwSZb6b53vbkn9KsRjIgLrgIEG2qftSdqnTAphP?=
 =?us-ascii?Q?IE8fPpw8Dqc1ivxVBowG71nn9sbGCeykfS5If/XNrMtVTPdIk8N4Fjrd8ZRn?=
 =?us-ascii?Q?ZQI6x+svSbTHghQuPGWEcjoNdRvNU1DhMO2WZ2CdEDgw9/pmLLibJgk/0JRx?=
 =?us-ascii?Q?oAP69ZzHb+WZDqrFkfDjh1a6uSbO9lbqM91H35gc0rmFRakHfjljv3rnNHs/?=
 =?us-ascii?Q?ttGke6s8KObBOjvWHXhCLGPDOa1v2Y+M2ltXOs8xgS5JvRetNUMYtTZgNzG7?=
 =?us-ascii?Q?x0hylj1YYzkCYrFDg9To9RE1e8g1oP5q3HSEQc0LSvZQGG2O8yVn9ZOCVIpu?=
 =?us-ascii?Q?SJCj0KRTAGMemwGEawMg6+S/RWZzO8mPlRqpo2kiH9zVt+7MwGELmQ/MiUyZ?=
 =?us-ascii?Q?GVJEzN1+UtZrxE12yZOfRCJXRGsn4D6WSAQ0xnmCsjr59+UqTDfvxFBjZUVs?=
 =?us-ascii?Q?JxvTIq9mWi0O9Nd0FF4WClS0uMJpxlA53etuw+oMA7sAuuyjigR2VxHNMRwP?=
 =?us-ascii?Q?LkCgYyXr9Rj7tR/bzCj8sO7aDsYsNM3arrkUXNnAZaEsGlTmu9XyWY1EcdAD?=
 =?us-ascii?Q?U1j5X/6eKlifNVtS9t2DEcTPgit2s7K14Fu2VbvbOpEewC/cQ6FMZdCM9Rgj?=
 =?us-ascii?Q?tQjrBQsTnHZIyoCdQ06lujNmBDovihnbsj23G0kLT59p8wzRDMJFdfc9yx32?=
 =?us-ascii?Q?2Fu8vLT//anPOlgsj+juaMTVuhdaEWN477DKdNLrNRpg0Le5QfD47J4vy/aK?=
 =?us-ascii?Q?uK0/J6HCz/M59goDjJGGuK4AXJSsYeJSzcmdvYRxFJ5w67vV/fjrb92yI/tB?=
 =?us-ascii?Q?F2wUDcZQyRHQhI0ZX8/2pEnPZr2Z6iN2R8mZS5z7Bep5AYZt6jrZrZoC2yTP?=
 =?us-ascii?Q?cfETLfquAg+twpqwtEXmEuV4O1llqSdXoBy7uvaFmFnKgDaY7Zjl5UZO5oUt?=
 =?us-ascii?Q?G9mvsXO6HyNIembEvxk/uOo1JWWkgrXjcBiPiUiGEQhq78+B9N9agfWy06aZ?=
 =?us-ascii?Q?4S6dJ6RKxtZBDDPMxf8gNGdXdX0+uTWHxwNWw/gS7xtSVhLhePJsAbjQsv5G?=
 =?us-ascii?Q?a5UwHOdeYTbP+/5EXDYynIiChM2iBOwgBtlkNTXXNCVt4rDvtaYR22lfbH4D?=
 =?us-ascii?Q?wMnsPhelWc7xvR3+KHNFdpXnWdgl07Z8?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/xBPAqHeOEb/4B8+EVdfAWKNm1PNklycy21WIcZtAUH7E6uc+tzuIsXZbGiy?=
 =?us-ascii?Q?MAfyas+TFZq8vFIgqKVLXcOkOxe9UPPo1FN/sp/ojrx/H23P6CqTtZoN8Gj+?=
 =?us-ascii?Q?oCl1uN42eY70/+pqejVbxmBhlHGhXLZahoraefsWo4uKXMqtt4yPT0i9I7zD?=
 =?us-ascii?Q?LFkwk6N/SM5jdACsSiYpT4izr2dZiifApl/q2rBC9KfdzxWTbcmm2+8awivY?=
 =?us-ascii?Q?Lt/2LpGselAL2bnGmoG6yLsW+XmJYTLdXButs/2qcl7l9CzqOz4PgAL+Rj94?=
 =?us-ascii?Q?3H3TPUj+wNppuQGFPRfY5UPC4FyBlS/KCUTF300oJUe69DkC+4odA4YJ4avy?=
 =?us-ascii?Q?2K4UfVohxIR4MfxjEYh8W4nBjgHdojI2/w+lIVK3XHP+agfLZw6+k9hl4Pgv?=
 =?us-ascii?Q?C9KKYE/LCUboo7FXS+0VKFLn/0Sig4XTmXETREM8yyeMNc0k0BcEAldppezI?=
 =?us-ascii?Q?74YAESGTJNfgkXjvFGbYtZThbpQW9/b4wPTgWX3l/B5bflUdS5nrlJ83cVZA?=
 =?us-ascii?Q?xqCg5cU+fm4OCzRPsmRciIYj8Rd0cRMFFzPZXpjL29gl8y24m3rfftn0XoLw?=
 =?us-ascii?Q?Paf3qA6Hk+bM12Xw43AP4QxOTzNxSZvNYgKBJRr8Fka86UZydTJb2e/uqK8h?=
 =?us-ascii?Q?9TKD7qLdbiJmBViHtZSusN9CetmLgo4zk3fgZv1plVkSMWC9zEHdRBrVgBPD?=
 =?us-ascii?Q?N4exosTsdeicod2BOgfdxmRMSq28CJ4nidSivgCcL6L2xk0Y1t9nIXAkvKie?=
 =?us-ascii?Q?udCAH0a4eyHc44wqQKmrJQQJ9DLHgD6PdbFq4nE4+GInPkA20HyPbBiZrEeK?=
 =?us-ascii?Q?24YfrF7NpEt6bnU1khItQQRF3ag4qg2pEFp4GpHVcRbaGk3Qx3zN+u2RdXzv?=
 =?us-ascii?Q?TzHLF6ULQyc4F4dkk07MxJPZx50kbyCnsyaZbiY4vWzsPUrrHvMECGXmmU3P?=
 =?us-ascii?Q?QvYRwYCRGTK2RWFIlLjc1XTQbhJ1nxik/iK4sSmQTdf3Er0NK42KCg/2Tj0w?=
 =?us-ascii?Q?LuHllka+5YQAnVM695sqraIQVTVbodz8R8OSRPwCEN3f2QgOh2QTrXnTSQqQ?=
 =?us-ascii?Q?7Um1mazeT3gpLvSyz8m2XPfGWhXL+GAAXOCdmR0pk03bST2qPI+j4ozH/gX9?=
 =?us-ascii?Q?YIzu+lXZ+rlLVnZjssQKqAkCyB9QIVPK0x9nwCt6js3oQhs94ymxzuSmDQbA?=
 =?us-ascii?Q?27ggo9Xn+ta+TnESppdqgPbAITHyrD21jbaXXKzjiiRlKS50X7x+IErKBf8s?=
 =?us-ascii?Q?pUD+zmgautkcFMZB4G4l5UVumUYh+3b8cC/dg0FVEVceOHxcoYhSwKPCUDz7?=
 =?us-ascii?Q?sP9r5xTSac/zzddXcYyyRbCjwkqQGT4uL27fOWZAwOOnStBNSzSXR3Gb26cr?=
 =?us-ascii?Q?4fysYw4EIR0EuGvjQy7aoQX0EWNJ9GVtJ5qp2vBuNv24g5Nr5ESf67zb47y8?=
 =?us-ascii?Q?dMXgcVbiduIC7LB2qPsOzDXH+QpXngwjVGs8+qADq6YOx5jERAOTgI6QF8y7?=
 =?us-ascii?Q?ThKoUK65mH+WlLqg2PdP4UeTaC2pxkSpiY2+bBgtAdmLR/F+5fWKRhYu5hL1?=
 =?us-ascii?Q?RTDVcVWCZkTi+bcOCh1hC+51/8kVvTEDGkbIgY/AQv3tHVt6T/XKkFDgCnVq?=
 =?us-ascii?Q?2Cqfm/PdnSjKDW8VZMDeciv4cJFu0jt1Uj1mD6mV4rC1?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 185e35e4-1c70-4a6b-7e51-08de3c0f85c3
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2025 19:24:10.0957 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UYZEfQEooe5CYM6I9E8yzt2WIA1xAbcmJVeGmmRBUKvvy814a1OdinN3ynuZ4kwIqNGCMYIjtBQ3BgHVZde7Ow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5128
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

The encoder state computation should use the
drm_display_mode::crtc_clock member, instead of the clock member, the
former one possibly having a necessary adjustment wrt. to the latter
due to driver specific constraints. In practice the two values should
not differ at spots changed in this patch, since only MSO and 3D modes
would make them different, neither MSO or 3D relevant here, but still
use the expected crtc_clock version for consistency.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3254cec24c053..a1170dc5ad9ab 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2050,7 +2050,8 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 					continue;
 			} else {
 				if (!is_bw_sufficient_for_dsc_config(dsc_bpp_x16, link_rate,
-								     lane_count, adjusted_mode->clock,
+								     lane_count,
+								     adjusted_mode->crtc_clock,
 								     pipe_config->output_format,
 								     timeslots))
 					continue;
@@ -2211,7 +2212,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	int bpp_x16;
 	int ret;
 
-	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(display, adjusted_mode->clock,
+	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(display, adjusted_mode->crtc_clock,
 								adjusted_mode->hdisplay,
 								num_joined_pipes);
 	max_bpp_x16 = min(fxp_q4_from_int(dsc_joiner_max_bpp), limits->link.max_bpp_x16);
-- 
2.49.1

