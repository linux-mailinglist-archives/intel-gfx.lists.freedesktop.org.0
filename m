Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBE9A9F269
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 15:32:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBE8A10E505;
	Mon, 28 Apr 2025 13:31:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XS6/0tHZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5507310E50E;
 Mon, 28 Apr 2025 13:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745847119; x=1777383119;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=jZoCjfz5FlsHSt2vY1JnLvkzc0gYSTIvQs3+bKZ/N+c=;
 b=XS6/0tHZ6CgsOBxoHecOnieKAq+CvT1zp7AjzqAOGZT7BBc7nfL4K7OE
 5oTmqGleWYWBsoMLC5TWOXhPHSbgBNYFIAg+HB14Uc8c1VlXgsG2OLNg0
 grkClxDO9PAxNPdJZQwiD4VKdXrJkGNF76BN0KFFX9ZEdlFpGVFaL2aLR
 NDCOtdt+qLoaDeOLtQTfsmigLLoWN4OpHGkck+nkp9t54uAYYQ6lawEuj
 bqrKFiTsya8i0bWNhKSWvom0GjMuHbDOA7et3VNjz2DhkfR/+K5Mxk2rX
 qxbZEk+BA/z8twC/oZ6hrmjL5InM88GzH05YQhq9TSdnMHamdm3NlMGOK w==;
X-CSE-ConnectionGUID: F604sz/MR1i3I9pZdBDMPw==
X-CSE-MsgGUID: aMK/LJufTlqwIBC6O5z7ig==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51256767"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="51256767"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:31:59 -0700
X-CSE-ConnectionGUID: 7t8JRHLUTNCscEXZc2frug==
X-CSE-MsgGUID: 6WqNBbJjSdqaXXdyst1p/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="133418925"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:32:00 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 06:31:58 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 06:31:58 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 06:31:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TiyMK2TKSJFuotjYh7qqt/S6dXrWZ3Y0fNWKkK5t5KHdoOwK2YsixMnkPaJHQSrDW34c7PWtmuqHFFOJWsK2HCG2vFyXyA1XFaiFwv4qWik84xA32JsJt7ZebtlSZGgVKx3hAupIS4q/c8efqR28KhWHKUmQc9I030QAma6ak4Lb9EfRKoIqF/uJeN2wQ9JMKtCBM+B6rzEjEJAwPKKHQPp6UXOLEfE5U5jgCYP9NLkTTL5wNbcTg11LGT62PTXc8V692i5YwjoWKHxob4bR17u4C+DDwXn/RPF7r2AOgEsbU3/KmhctpQNrgdkUPk5LhvaDCIDDV3pCJxKYgY5VMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CQ2miomVmLLdDG3z1Wy+mzrAvWX4XcOOqENC31qR8eE=;
 b=QA7y4+NByKzYrW6gtL/EyqnKndL8jMTc5nT6Cos6RpC/G4MewdDqeNE528Tl31+Kx5R7xBtq36+09xg0EnZpIH0qtCtKgX1HV/GGoHHbSxOf1YmVi8V80AKyd1PjnBOKQGNkJwNGlvofwo0CG3GACeFHNDQ/LsReLey6BZDlutUFjckI03HM1PCZEDclWQ1ByaTO3V03p3ifgLZTYVQGAjjUaYDYG0e0ntZvExxoidmx0vpphO6PS8hz/giYKe1im+bc2TAKB3+NPClmAwAIDuFs8atjL+lydhNTu77AjROdMeo7PhVdFKDlYP2DzM1y/NFfPkJOVMy9bxGDGDJpgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM6PR11MB4514.namprd11.prod.outlook.com (2603:10b6:5:2a3::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.33; Mon, 28 Apr
 2025 13:31:47 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8678.028; Mon, 28 Apr 2025
 13:31:46 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 12/12] drm/i915/dp_mst: Enable fractional link bpps on MST
 if the bpp is forced
Date: Mon, 28 Apr 2025 16:31:23 +0300
Message-ID: <20250428133135.3396080-13-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250428133135.3396080-1-imre.deak@intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0067.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:153::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM6PR11MB4514:EE_
X-MS-Office365-Filtering-Correlation-Id: 276591f2-8ab7-4069-f2d3-08dd865905b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?mOmjnR7yB0IIos9/N/WySkuL3PmbwmsNisw/j1cYjSwrdtV/off6W8VWdhfH?=
 =?us-ascii?Q?p3anSL4bkLzE+kwQgOoXR3q7VWjDdnvVzaZakwZwgvSX/t6QvbyWS9sY8PL1?=
 =?us-ascii?Q?PUZc1BP+AczaPO2yZHA2LQ5wj/kz0UlliY0fE8RbnbwJ7Xaakc71/t74DBME?=
 =?us-ascii?Q?lHdiwFRXB6yO03Y6JgGwLqIezws9FD5B/1D3sGVXrntj66eKV0WwGLRyq/fI?=
 =?us-ascii?Q?JibtQr1eZyK3v3jpTt5zuJyTEDusvCSWj0YSfzkopbmfn4oOzjMCethHbW7t?=
 =?us-ascii?Q?ed83vjdF3AXnQNHn4VEYIeFA9FWpMoNCV0RipYN2/XwwTU70CVQ7rEX/rEBc?=
 =?us-ascii?Q?ArCD2XEXLtLV8BcLZQPJH6wuA/wnm1TQEN+5M1qnvrrSXNmP7xzFkNF1kmd6?=
 =?us-ascii?Q?eDQW+LaCKBu2Uscjv8ZXGsKVNZezgv4CEn7tw3ggKON91GsB1XP0M8PKrcRR?=
 =?us-ascii?Q?zAGE868JnIkPm7WCqhh+URZErcSItNaFWiMAsFYOQiH46fzOVXbkwErqEHRY?=
 =?us-ascii?Q?GXMrVd/z3ugO2UWJ1NfJHsIdZM1/00ZtaMF/nevyvS0rE48T2ZFyPI+xUX4e?=
 =?us-ascii?Q?9EKQ8xEYgPCFDb0RWwqs6F3nok5aLwzaUHJ3HiZGoPuo7aiz4fXxQa4ZIRbo?=
 =?us-ascii?Q?gu+6tijYx49tSCzCsOWg/tZcxp8hcKDtox/d2zQ9C/rdoMuPKJluDFIENImY?=
 =?us-ascii?Q?O0821yTfPp7vvMTuEcM1g4jvMefDmxsYkrNgJLJhetibbaNumo69V/HnxBgR?=
 =?us-ascii?Q?ESrxfb4kSv7J21cdS+uX1xnzUkxRJP+UeF9B8z0nCB0rNWAUBWEoz+WkHnyS?=
 =?us-ascii?Q?USSknzVeHtDAg0WWymmOv5chYHUwJfeWoa7KV2tM8BY2Z9Si/m4G70LHvUrm?=
 =?us-ascii?Q?elDg4x9NLU4Tnh1BV53KHmlimX90bruv73ALykFSBoffO+o1v7MMxBJOxQuv?=
 =?us-ascii?Q?e3bAH8NbYrkm74bXJixAQKsxMeOe67ApjZZlSYl0A8fCYnCpawiis1XTZIHe?=
 =?us-ascii?Q?yISk7pfAblKGnG8gJQxdTD3a4PkKoEKUTFMgmeucBqpl71CKTdfAw4x6VgVA?=
 =?us-ascii?Q?aGV+/lOlfcOn4a8ts9m6fipNN2Cwnbom11LGE3EvsyHVaWh2rJ0DPVEcCF3W?=
 =?us-ascii?Q?LbrD/tsuxfFxA6OXr0nkvN6oRKxLza6pCA46KyvDsWJ+sa+1096mI6J0N1nA?=
 =?us-ascii?Q?+w+fW+CkcnuYOkBFf2TrTWqb/PmUTm+i6nwMNnisPPPs5S/0/E72t3WD5wLD?=
 =?us-ascii?Q?o0lffm+Jjr95XlMWWioes6rqX1Dbb5eJbc0dD8767Njgxi1zhNrZdlU0DnOF?=
 =?us-ascii?Q?K3I4WgqbWtF2LgKpKxnZPUKnL4cO+rZ9hOwmURjc3AzhvzP+Lp/LEubExEqv?=
 =?us-ascii?Q?Yy8OWxmRyRUuqBkS4BH6g0tcskTTIAo0EGsjJBGuE7u3daBTTJEYNDmaSnqf?=
 =?us-ascii?Q?xu6zY1TH7WA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?eiS4yH6Qf8uCcPL5tmP51D8SLGcwSiU2vVjAo+M+3ox+km6hc53Ry2FCS/7C?=
 =?us-ascii?Q?gmKM2ufTqfbNwJfpn7eL6jP5tOH+MQSatkaEuIwxkdBzOkI0dj/GsPW+oiJj?=
 =?us-ascii?Q?6nvsnQpMg4364DjoFyTwAtLwuFJ0sVx3VbBV7nelllE090n/uL3tndZzVCLz?=
 =?us-ascii?Q?2Rnnn/BAIEZwJCUJ2ILZ2yYdLAXakInnA95ngGdESmsP9XGX67WkAFqas066?=
 =?us-ascii?Q?hDCDOaL7ThzxbTjcnUy7d3UiKliWhajvt9tZTiNLzdU/K6WmlQlgp4vLMQGl?=
 =?us-ascii?Q?Hq1w8S8W7X31GERWJRcAEtf5xrqVC4yf4M1opIG5yL4Ebgf0XouN7ZETlsoR?=
 =?us-ascii?Q?yN/EygzPjOv9NriS1KCa3p19GVceC8RS1XkGGDgO4Qz4aZxIzf//Fax4hlG8?=
 =?us-ascii?Q?iCOBLa8CeS6sICXcqw4GWZcIXZDJ7m3BbQGzQcECiFW8/t29pSTg0CeJl0yj?=
 =?us-ascii?Q?Eht7x0d8kVE80sh6el3hZWmytQdBHRxYjPqOorolFmE0ujT2lkayj/jx6cHN?=
 =?us-ascii?Q?e3E59sUtaAwaSMxGQFuHPifHvJVztKpo1w1ONy8ENGJSFCOlw0Y+BAv5ApxA?=
 =?us-ascii?Q?c9HyQhPeEic0Yj17Gr2JYgNphcwSIsVoVxdh5jloQAcP/64XKQb0VOzBCDTu?=
 =?us-ascii?Q?Uk9Q40J8lp3v/+kJ+Lq9/+vS+F6rIgxxO/XOhnwlgDAljiAmsNidBlaPFkQt?=
 =?us-ascii?Q?JPjpjB1Vwd50KnmKXf9G0liuWkeudLEAOW5fHyngyRUzGMUmZwcXhetB6OO+?=
 =?us-ascii?Q?ItvzOn9innuMUb3ghyqWtkhsx3geZ3jhcANE79FR7n7LPYsYypag7ioDs4Ds?=
 =?us-ascii?Q?sOcSb1sNamUZM8Xa43QCWTRQWRlcKogI2wOXhEfULMLGYApseT2LboI/pXAe?=
 =?us-ascii?Q?hcwvfqm6Kv0Z+CZUj9YP2XHZrQdHIfIHFlXRbvOtDkMcwbVUGi7f/0JqrCi2?=
 =?us-ascii?Q?jvaSFp9jfWsr7EY0ZBlgululzO7JanMAjiXtdMqjZR32POfWHWgssIy6nSBA?=
 =?us-ascii?Q?vrBwd3l3Chy5m0JmYz2Dl6NV7FlMDh43hMLq/qFTUGl2M+z9xkoGrBvTSjSZ?=
 =?us-ascii?Q?zHyp7FyCXctN7wnLUYqlR2oC/gjKhNKxwhNZd7i7Og++eLS6vTrR8TjZO5p7?=
 =?us-ascii?Q?RVrkQ11YFFpos3fpQVMO5BZoDHmZLI8Ls8H+3RX6fmwyVTZ0tGKf04U9UrCN?=
 =?us-ascii?Q?bC9Jrg236R4hATjLOx9JPhS0J6/LxvY8KhNp3KVPqO932byPSyWbg3EOUVd0?=
 =?us-ascii?Q?IvD1AXX0eDN92sm943Eyc/6vuU4gn3CG30jV10Qb3Wdq3ekG82Gog+zblVDm?=
 =?us-ascii?Q?6h5o7T1Ill/eYyZXgNpOwa2on3MmX9PHvA5GGSnabx5uNEJ9KDPe/LK8j3Pd?=
 =?us-ascii?Q?ePN3VI9PmNSUDz/HjSYhLS7lHgiLLZMhYrO2+WUGRGSrXH1kHC/WRs/laZVD?=
 =?us-ascii?Q?z2isYy1J6C6oaWlaJxcIjbUFpho0BF/rWNXXv0JQ0GnMVSNWr9uaJrV5Y0k/?=
 =?us-ascii?Q?bBnBB6lZJ6lvrHX3+1zd6pNomxS35HK3mJZKa0wGkE8nRuwU2Oikx2tTYMP8?=
 =?us-ascii?Q?EYzX9uNVWk5cRlOt/ql9J75LDFOmxd7MQra5Hlw2?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 276591f2-8ab7-4069-f2d3-08dd865905b2
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2025 13:31:46.4111 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: awgsU63j4VHabLUHKUaW3f1w15TnVDgjpiq2dniJiceNp9zMMyvpRCNEGegw+EfTT9zl08BB2AVUVHawahA7pA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4514
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

Enable using a fractional (compressed) link bpp on MST links, if this is
supported and the link bpp is forced. Fractional link bpps will be
enabled by default as a follow-up change after testing this
functionality within a set of commonly used MST monitors and docks/hubs
which support it.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 6 +++++-
 drivers/gpu/drm/i915/display/intel_dp.h     | 2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 2 +-
 3 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 047473e3f6e6a..bba0a9db17a3c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2102,7 +2102,7 @@ static int dsc_src_max_compressed_bpp(struct intel_dp *intel_dp)
 /*
  * Note: for pre-13 display you still need to check the validity of each step.
  */
-static int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector)
+int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector);
 	u8 incr = drm_dp_dsc_sink_bpp_incr(connector->dp.dsc_dpcd);
@@ -2110,6 +2110,10 @@ static int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector)
 	if (DISPLAY_VER(display) < 14 || !incr)
 		return fxp_q4_from_int(1);
 
+	if (connector->mst.dp &&
+	    !connector->link.force_bpp_x16 && !connector->mst.dp->force_dsc_fractional_bpp_en)
+		return fxp_q4_from_int(1);
+
 	/* fxp q4 */
 	return fxp_q4_from_int(1) / incr;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index f883fc0b65c06..c5ab25ee1a015 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -210,4 +210,6 @@ int intel_dp_dsc_max_src_input_bpc(struct intel_display *display);
 int intel_dp_dsc_min_src_input_bpc(void);
 int intel_dp_dsc_min_src_compressed_bpp(void);
 
+int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
+
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index a1203e5f570cb..4a5f920c11e2a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -521,7 +521,7 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 		    "DSC Sink supported compressed min bpp " FXP_Q4_FMT " compressed max bpp " FXP_Q4_FMT "\n",
 		    FXP_Q4_ARGS(min_compressed_bpp_x16), FXP_Q4_ARGS(max_compressed_bpp_x16));
 
-	bpp_step_x16 = fxp_q4_from_int(1);
+	bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
 
 	max_compressed_bpp_x16 = min(max_compressed_bpp_x16, fxp_q4_from_int(crtc_state->pipe_bpp) - bpp_step_x16);
 
-- 
2.44.2

