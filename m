Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6476AAAE467
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 17:20:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D654910E827;
	Wed,  7 May 2025 15:20:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RLy2zHQm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29EA010E827;
 Wed,  7 May 2025 15:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746631207; x=1778167207;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=2pOtAndMDUtthvGLJHuZs4NH97LjW0ZWgeuoEd9yCl0=;
 b=RLy2zHQmBBw9SxyW1yz4FncMUO3tQ4jvn/+CWrL2qD1pnnB1x464YK+M
 rFpvzClkQoLyJyN8YOG4PfTpc/XaI2mkI9LA/DxmhSv4GtqxhK4nLAbNA
 fN2MfzxV33rm8coDsciKsLJYuXhZVEeBX16E3ZD1E5CdDW3GhJ3Tu8ASV
 4Huk53DSX+7OMnZa3GFJlSzbaPBiEH88Dj4RCKR5CYDL14j0oiVy+0h85
 oT+eFU51YYLY9TBogwd/3vVtMhPrDzE3UW4kwvZYr8PglMGVvgUGQ3I2z
 nkIfdqvsp4P7Rh7nyE4Nq4shRiHzbBzd73y7tMvLpnjvL6KvaDl4heFIO A==;
X-CSE-ConnectionGUID: O1XbvCkgRimYwKRMbyEtfQ==
X-CSE-MsgGUID: SkRhOa1QRlyjDzeJ4cPoAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="48481408"
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="48481408"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 08:20:06 -0700
X-CSE-ConnectionGUID: RZsvOGFhRt+RlD43UjAmFQ==
X-CSE-MsgGUID: 2PH9GoO+TFmdXR475/7pqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="141111330"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 08:20:05 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 7 May 2025 08:20:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 7 May 2025 08:20:04 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 7 May 2025 08:20:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JDOVmROa/n199N+8TJWD6bSxV6kod644dDR/98zMge7TurW00S6B+LhIKcX9tZHIeWiRzXGyYorx0Rx5obnPH4Sl8PRDfEu8IGA9txydybXMFhgAnaXeU77qTsQOQ0GhmcZWTwLXacWD0FCBsJpiQ9D1RKDV7KQV+GaWzoWMLBJwWAsKEg3o/ZdvvUgUi9Wykde8f8goM6fLDBnFJfb+XAnF1mPQN3GN5WQb36Oa9kKCT9tYzopcSM/SL4Hh9YNSWYgZQq811NWe6IX2+GZQmVorOpIZBEj0Rmfr4PJVHA/6tfA86QELQnjSc/8vfif+jVAWQtyZ5746mVemf1A5yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+yh/tspplVFqdDCsYPUktO0ffVCBY0kUFEpEUpJM+yg=;
 b=TjfvCXARQC2Oz2X2aYmgIIK/Dcw2ENt+2N4BN2DhtOdfgB6J2b6zcl7U2U0axoGIE0hCvUSlR9RsjXd7HeMda25IlY5wqETxfkA5Z61CJQuj5yzRBDg2LMAbwjLA1aJgcxsK61VsBvAUDAeEspGMZbuNRlzdWLdiZ1z/cB/DphBrQMO2fnayZ+O6ZH8Cnm/cq9kVgpV2lCoAwq2rrt7czikT/zN6tIM2Opn5ejPi5aX4LvL8ZlNB+VNVPKfTKCtTKgDrN3zk66BjeP5k07YCOlKajkQu8srJ4WVgjcxhzueuGx9+uuZLqn1pzy0NzaR3aBdrKr/eneSpyK8R2XAyEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SN7PR11MB8065.namprd11.prod.outlook.com (2603:10b6:806:2de::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Wed, 7 May
 2025 15:19:47 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8722.020; Wed, 7 May 2025
 15:19:46 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH] drm/i915/dp: Fix determining SST/MST mode during MTP TU state
 computation
Date: Wed, 7 May 2025 18:19:53 +0300
Message-ID: <20250507151953.251846-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU7P195CA0010.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:10:54d::13) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SN7PR11MB8065:EE_
X-MS-Office365-Filtering-Correlation-Id: c59bb7a0-7012-4598-a97b-08dd8d7a9a08
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?uJPHICziUVnbEjgIglXogSgUEf8TXHEkVu+v5tewaD/2JmPa3/ldmUSSUyJU?=
 =?us-ascii?Q?N3PVf+e+rV/aqPrw1aoO2CLeDb0PD51/EWuHIYs/ZQOcoIa5jjvAucgh2EXC?=
 =?us-ascii?Q?b6wt2/k8tza64Rnakoc54Zh3nfCHwv96BhZ6Qt2h6eh/hHrnsr61FBKXPMyz?=
 =?us-ascii?Q?EQzYvkjS/Z3bN6n2lExbPd5IjiUQjidZnHba616ZRpLAnyWDUqP51MPSRR8C?=
 =?us-ascii?Q?j5kV5F0TXeS5l/zBMmChJsQO4lvXNHt8UQezPwkVdHXiylPxtC400MAVrA1o?=
 =?us-ascii?Q?Sy9G6Wt8NFdQjMesmNATNyAJt9MphMvaohwO0onJRxyUePofOK4q/Qe4M3RW?=
 =?us-ascii?Q?19Ygg9hxHYB3VoWoWQ5xE/JGFsEMW+0Ru3imbkdf+uTYqB6pQeW3A7haZGRA?=
 =?us-ascii?Q?1ok8pdRkpTSdmR1yB5atgXv2fRaEpg6hNfZJ/SkSuM4IxXhR5CTpEyK2xXpa?=
 =?us-ascii?Q?VNfqmWVmxYydE2Fh9K6FZzalF7qaJ/THkug5UOvvazHOujx0cxd5ciccjGhX?=
 =?us-ascii?Q?FejCuVmCfjfQ1kvX3a/ThwaNuTDqwB2hD0ObIwb7llxnyrmGyFrJ7IHJl3qy?=
 =?us-ascii?Q?yqgOiczNkwtks7/rFVJFHFigG42U5T1mMx/7HjJDgjC9ImZPYc5h3NQicgNV?=
 =?us-ascii?Q?8rwXvFVykOv6M/AB8TQHqeTJb2TGhu+2WAeMdfX/7gOzSNfYyVPL6GhOmuEN?=
 =?us-ascii?Q?m+I2JdvnXN4W6BOb5w4z6Fi09LM7MED4rGV3ROmDUX3cn7lJnZ87BnRpPLtL?=
 =?us-ascii?Q?ATyaLafspz0/f94U6qSEKZcKnhzuZqOg9fjA7KhHcBWcLKiFgywAQvdDtbe8?=
 =?us-ascii?Q?hfidtw3dLSAMQBWI4D9jSNG9jrU8t/FzWNLN1P8KUab2bbKITLl05vm1lzSr?=
 =?us-ascii?Q?+f7n+SvN1U23MmOpP8H6rLQzOwSmcGz+aKGdwQ+mXr+P5YuTEunJh7E/dARK?=
 =?us-ascii?Q?5asY54oBnzSXpP28wHJ569Fi2yCHNuhmhkQL2HxpMAaI3wRc2eDb/rNbNUww?=
 =?us-ascii?Q?Imy7Zel2Qw01nR5kPhVQo3fXboy13ROmzLpj3PjpnK43+2sDLbo2wZ7IlTKe?=
 =?us-ascii?Q?klJODSgonH5qo4RFVVXcKfr7lKb+zbsKNCRQtQizOC6VErP03viHE/ytkJXm?=
 =?us-ascii?Q?tRXSw79HbnrB4aAkXUTHGN0lp2DzZbeTkvO7aqJNVQ0lptvco8tSTxDXXrTV?=
 =?us-ascii?Q?GXT0Qo7iUydUPGW7o/Xn7/Igv0LJMRzXFmxZytz1/ZXRl+ekKpF+ncp8Typd?=
 =?us-ascii?Q?cViNizc4sjuHuZYWNYB5HUShocSlKweui8bscBgQmijSy2D3+O0GOK3ygsBd?=
 =?us-ascii?Q?yUV28Yu/9bqnQrULqFT7ah5L78Mjjwx2NtAcgATpamcFAPT123zg5f2mW4dJ?=
 =?us-ascii?Q?UdQEIPM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8WNagYmysgOR6rPC4PkTT0HwszPit92G1qk8Ba4gU8O+YiJfBc8Kdr9Ofq7O?=
 =?us-ascii?Q?YspuUkr58XmhnsKMjJXrWnc0d0O/C/NFn/0YUuU8+h9eaFKqBDcemzmlWMgl?=
 =?us-ascii?Q?OUgY+YuKX6mE8GQqyl7ucC8axvbkhZPGUAzrzZVK+CIOXDbY9y3kH9yKAf8G?=
 =?us-ascii?Q?dTOWFmAeHhr4DDOUpXVwqT8PpIUJD7hGAdZZAdujaovtbts0b/QE4xErG98i?=
 =?us-ascii?Q?5enepzVuPEbBV/EmpH7PCXJmRiiLhezhkFtIr4VXZYDRGjYDAzncIDL6u52T?=
 =?us-ascii?Q?ZFeX+nqN8Itek4oHvwDQfSjYZb6t4E5filcQ+ALneg0kOcdoYRa4v9EM1jbo?=
 =?us-ascii?Q?WvZli5wBt1qdsjk+xOUpZB/6YyF07b4BbMvaZab/oegIhX41yND75gU6z8bG?=
 =?us-ascii?Q?p8Amg631ocXz/vwvwSAkEjdXvdglM2cV+vTLSbpI1LjziGtEjlOtrwkYNW3g?=
 =?us-ascii?Q?dW4HhjPxvcMqg+WZu8Gcn8r8RQwfMnj+n/AsaWwtM4FBE16bFWtSd8I0aJsr?=
 =?us-ascii?Q?zjTuIdreaqrvfcslkVTgBaugNTJNEuPy1GEYzvLmINDByq9jpa9Q9LNAkM44?=
 =?us-ascii?Q?/Bkb4QljfjKa7Y+qmizoox25RoLHi6lo9wvjE6wvj5VkjJtjctsykOxvZ9dU?=
 =?us-ascii?Q?dbCorHchqHVjidmpznDX10EqAy10x6e9AmDeqlkjqdT7gA1874tXlhexsPHy?=
 =?us-ascii?Q?aRpbnwlttYZS6vzk5o5YMvGARHpT4EkkLFw4YUev1OuCqIErtmX9iyvbLZcH?=
 =?us-ascii?Q?e/erIdu86VIrfJU1gbXMBNk1Go+WoVIojQBhSutkttz7wkTNemNBA6L7SxbD?=
 =?us-ascii?Q?Y6iJcFJ7MlN6VrHuR7P/Xasd3fWOae1TVHjLMo012J944mfnc1tUArvMtDZD?=
 =?us-ascii?Q?jcU4yE6u+sSJO0lkYuhy/qC5eDsqJBSV/nOcbr9fDnS3+OHbFEDgfZZOwAnx?=
 =?us-ascii?Q?5JU2ZZEv8gC0Ir1L9uQVt/w36HXwG+CNP0B4zhxq4KJcMRoICgJj6tUmqLWG?=
 =?us-ascii?Q?U/2IJ7MIwBVJvkngJ801zzPG4MWbt3aW6a6a9vZM2NO4Ery8WS8axQm2N6N7?=
 =?us-ascii?Q?OxjU8MeiZfWtWIjlo+/X0si5t5Z9m5ZOyNzQyzI+IqCewujW953P8NHh6/YC?=
 =?us-ascii?Q?Faw67PiF4sDPV1i/AOiBDKKj63wJUs1UupOEbIqLbTSfGH7nPo5kkR9lMqjL?=
 =?us-ascii?Q?wa001u2/Ntw52tl/029jJollQ41ALlX25Gzt60EAmASc6yX93eMvGS2fsAYr?=
 =?us-ascii?Q?KTmpzY2apcYavE0sHlWB6ltvDTyp/jHgxoGFx78paF3VW9/+kRO2mNCXwKts?=
 =?us-ascii?Q?s7Tjtw6SeFgK4u417bOPKne742JD032CznHV1x7M/ScXoBa3M/wGYZ33z+ys?=
 =?us-ascii?Q?v58+Lk06VVUpUUnRIIBgUsgE8FShLPn3AdV5b1gpdAR3sFEtX0N+gdZ4gkIZ?=
 =?us-ascii?Q?4Lm+FFZo7OfW9GhpxLATEBjwHh7MtOdRgO2mW9b50yYGviIHeA6qzpBmoFI1?=
 =?us-ascii?Q?ZKcfZrO8o2oCCHsfm46KcI9vv+FjEfKj8jbz8JgrnQErfOzkVuTUm2aEmrB3?=
 =?us-ascii?Q?PjqNnm0TriQ35NCy5Iwf/pYzwqKmyI/jqZUf4JAd?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c59bb7a0-7012-4598-a97b-08dd8d7a9a08
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 15:19:46.8431 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H+VsnGars3Q2VWir8xAqSeY1M8xzl6sCy09AF4BP/NGsaUaLtxL4xSTBzPz/sXpMEIW/5hGIEZIVu/PrNZsRww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8065
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

Determining the SST/MST mode during state computation must be done based
on the output type stored in the CRTC state, which in turn is set once
based on the modeset connector's SST vs. MST type and will not change as
long as the connector is using the CRTC. OTOH the MST mode indicated by
the given connector's intel_dp::is_mst flag can change independently of
the above output type, based on what sink is at any moment plugged to
the connector.

Fix the state computation accordingly.

Cc: Jani Nikula <jani.nikula@intel.com>
Fixes: f6971d7427c2 ("drm/i915/mst: adapt intel_dp_mtp_tu_compute_config() for 128b/132b SST")
Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/4607
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index aeda59f5fa7a4..30f5636d18b7d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -253,7 +253,7 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 		to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
-	bool is_mst = intel_dp->is_mst;
+	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
 	int bpp_x16, slots = -EINVAL;
 	int dsc_slice_count = 0;
 	int max_dpt_bpp_x16;
-- 
2.44.2

