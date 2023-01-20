Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 174D4675301
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 12:07:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F37810EA04;
	Fri, 20 Jan 2023 11:07:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDD9310EA04
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 11:07:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674212827; x=1705748827;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=zjGexrgCsuVCB16RbkjupY0Lb84b3Ck4Bkf16JN3lfI=;
 b=cKm2DyQ2XRsttxkZR2nnEF0HbQP4RhLMCibo36CzMb5dQl6UUsBwGtFz
 qYdEs6Q8Ux50WDUi5oBJKEprcJsnhYQ0ktutM2P90LjWbktG7+hfyPcgg
 Vv6nRuSkRqKru58E8tidMPcQ9x2+naC9AdjlC0o0XhxvSjHeamoEAvHch
 QBFih/pMIIbLbK7/g1ZefuOjCgPK5ChkYss8doaPR53BlD5SYQIm7OkwA
 9aBw+snOqdk6GWpcWEwWbwezG0obXx7BJMwTYA+yKZ8tDd3fnVODvejF6
 5foipoMGY7oJFIKxwJ61QRcT2wj2M+UggHUWvuVYUpgjZimejoMn01xBL Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="390069198"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="390069198"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 03:07:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="729083706"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="729083706"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 20 Jan 2023 03:07:06 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 03:07:06 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 20 Jan 2023 03:07:06 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 20 Jan 2023 03:07:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LOyGAI9Nue+cyWAuTAB8rjhrIc4keUSHCbOKaAy0M+FG4gIyzUXRb9TMhXFtVXi9c47dHs2nEnvsYediurXDj1lNZsSk7XfAhG026g0ipv/sQcpFTxy4yNQ7rbPV4scZpxbl7ujCWfZFPfo8pZRV8x5l2+Yo0hsDYjVoSLCKvNF6u5RynMSIg4J7Csn5p1PtVQVSYDL0Syl/NIfOz/p72Zn/pbWWI+pxDkK2dtJdXGOi5+1zGdi6WXm7Kjn65jhpC/NE1izrwho9IdCV+GKXSbttHyTH7pXpxdt4qnrZ/qVD5YbUKqBmvOY2EQXoRZJm6kmFVSOO7nWymmb7cc1x7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eQsTlrDUSNzlANVRlUk/HKaRSJI3ZNm1i4bY7MKquVY=;
 b=Lqg4oKtfOinTPBUyre8smkIfhy46BWEiI1A+rp/SxpK2q2WToiFYl15TaHX4SqHYl0axupROikoLLgxS1VvDjhURYPKt/MrRL1B3Gy+r1odr9IlSxLHOFtUv3l7LqZWc/8Wn+4CRqApxhemJx6d+Z8C/HLHFeQHJk6TV5czbwNgIin/zBR/N50xAN03w3uFjHBzdi8kHDszI/qcRb9FucUUf/8srY0YzgCXi1aYpyPmAphJR6tf+GMWCVWvcAFtLKkWIo7sTUVdQcBZTp672BqJ/ZzD852lpEmggWsd0eCtWhoLGOJBVtZeK+PY9q4awRNSvVeFe9vE0EGrQqFgq3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MW5PR11MB5786.namprd11.prod.outlook.com (2603:10b6:303:191::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.24; Fri, 20 Jan
 2023 11:07:03 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6002.025; Fri, 20 Jan 2023
 11:07:03 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Fri, 20 Jan 2023 06:06:58 -0500
Message-ID: <20230120110658.1083757-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.39.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY3PR05CA0057.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::32) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MW5PR11MB5786:EE_
X-MS-Office365-Filtering-Correlation-Id: bd28ce7d-90a0-4743-e712-08dafad675ea
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kW8BRVy/WBvw7Hh79gO4BFj63Kk7dT2ytAY27vkkYn/FrIgqWfhRwxYE5QDGcIjuTlvA78qMDxO4aF2zZmc+sJsc58j0Qb0GOSK5InpBnvFofJklSr0lR22vSmagvFN1JqTZ1HrenPvxS6+XaSLD7gdOoyXB91ZbrdG84peqG8MuX7fVWW6nIs1Pvs6CXeVP39mNIEU/qknzY8VBadvfqlqHkWmcU4+2V7iLvzHLc3l8cMlnmf+oDx6X5X17AkcK7UDGbqCcQF4zHSfXg5SweXE8NLleRuQl2dqiPZ/sxxmCTWEVEDHI3KFyMH038gIzhU4w/EDsKQTWVYyx0PgZtas/G2IKCBFI15Xb/VbJdAkN5WXSDmN6T/o5a5/fZbPvvd9d/b/PwSYgt2vNcdrwqkgil6+R2cOrklOo5jnLVcg56u4qf0UgEB07l/WbrkLCTX4KkjyKMUB40AzgQi5pRSvkpW2ENPlltt0rlYbgSrlHSKBLnSZ6tVx98GQiwn/o1Qwc2G2a2CdjY6CnqnF59IutUQJH/WQp7Ga8IurFYdv1A97rYjxb4d8RBSRnGbFuOZ8dF7m5wP3Dm/fljY0v2WfB7rHMIFu/phv2muPUSPShWAN48qh8X5Myx/Wr5qDWV6rEiskcHJQeHGH+gaQ760FQhj6pIaGTcyKL8eo1YKqzrUhDMA1kVIGsIZMonbZw
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(396003)(376002)(39860400002)(136003)(451199015)(82960400001)(38100700002)(66556008)(478600001)(86362001)(5660300002)(8936002)(66476007)(44832011)(66946007)(2906002)(316002)(4326008)(41300700001)(1076003)(8676002)(6916009)(26005)(2616005)(186003)(6512007)(83380400001)(107886003)(6666004)(54906003)(6506007)(36756003)(6486002)(26583001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?axii1SvUk+o7uxc5m3CdsQCn+nY7zwzEPaTdv6QIHhIwvyHShrSqoLYthk42?=
 =?us-ascii?Q?ZAfQEaiFbxbMUs7klpl3YVMn4rHudxzuQST+Tw+XlwUIRcpNhJj6Qc2lvcze?=
 =?us-ascii?Q?MMeJ3Dz/1y9kEPPzeHsMBWwK6NWRhT3bMckTl6o96GWwPC8aZ+KutxXPkRPJ?=
 =?us-ascii?Q?+rrdCr7yBmeGnneg3zab3yrO4JFpx1Uq7+2eN6MMp7Y7M8gtwf1QaHHSxUoC?=
 =?us-ascii?Q?orVQuT0CNM+gMBjprKXe4JtHgr6hZBplleAesNSQ2MZ9bsq7kMu1a5p0A1gX?=
 =?us-ascii?Q?xPJJIVR38CCawrZkq9x9AfnGcsSq5U8dueFjNQVZRw+vZGnroUND4PMWI7wh?=
 =?us-ascii?Q?66a0p+t0exl4z1Ffq4EEqVYAaci7sYC6uRSjwnL9RssSMZh6w7uEx2kalW16?=
 =?us-ascii?Q?A8KUK0tejyoMu8SYduOcqR1uKecd2OX5MqStEh/C+CASqcm4EG5TYm3O2uX+?=
 =?us-ascii?Q?xb+fKiLyChsA6ShiYJ9IG9upsSCQLJgit/w3mqK1FKpMmjHZ5ZU1ZkfuT+1I?=
 =?us-ascii?Q?U+ljb3HYNhhip4XECkUpFxrXEuxU63MHxXIHWBer5r3nBkm4HMVS4uDaFaTe?=
 =?us-ascii?Q?vfBXjXqP7B2kFaw9tj4wjsyHu/rQsF10ofjxenyO4voCmAstHnlvdFbWFXbQ?=
 =?us-ascii?Q?wIDAsiBqFZa+lqEvhuxt21oCZQBjjaLXMVeKnpwg8imwwX9BsCj+fvj5iGfZ?=
 =?us-ascii?Q?R/b895NeYJHQlZWXHa5lqr1R6tp5wUoK/xyUi01On/6XWq80LmdAU+QHj9GM?=
 =?us-ascii?Q?xzsDTW63veeTosYRAeE3xwQ1heS7pCgK0+E2I4e2MGay9+HfQH3up/jvzv0v?=
 =?us-ascii?Q?gsGXdrWSI3LEW+U0gLl7CrRzOatOh6W0ltZ1iJfJTIQJjb723aTkBNx8w3/B?=
 =?us-ascii?Q?5kKaQbwYYxcYSqTq1uFOlFVmn5E4VI2OyHu0KA9912WkqgIQ0FwisKP9+YAO?=
 =?us-ascii?Q?XfjvHGcBaQQ5iy1QcF7UEXZpCImSUoVxvKFsk4ShRngpnSnNiI6Pmhw/hWVj?=
 =?us-ascii?Q?uTVmFPeH1OoIudI61D/1bpL8kmmP0Zc/OHQD+OuwPjomOpJBFO32Ccb111NM?=
 =?us-ascii?Q?63D21ffAy237V19qboOlGUfqnmWrIk3G+jmzIu+s6wKbOfX/OoYsz+IyB9Y0?=
 =?us-ascii?Q?GEOR6qHyAJT5/Qibs7miw3o6p6kGDYEkHRiO2CK1lhsC0m93jeeFpa9Quu0h?=
 =?us-ascii?Q?jt4PtprWTxUixOl7YqO30ygj7VFiH/q+Ia4y04Zo8dG+a0kEskRrWwPjcFfI?=
 =?us-ascii?Q?7CmaUM8GugizZgnKWNmek4p5oAHQZyYHuothUTqatG+EB1ZsEwLubpit7Uya?=
 =?us-ascii?Q?B0156IvtR3QKCbYMUf9hXTjrlxpx9bperMKbYFbuFzOp+ullbT2Q87VsovVf?=
 =?us-ascii?Q?TcKyA0/CimoOccmI9QOv1iMLJvOXpZ3gv3mM98l00Qfi2oFAgeplDqNPzQT4?=
 =?us-ascii?Q?jpJBzaQTFoeK/OFAWe3K0wbkACrb3lfsop73YUhRoBaiqkzHfPuH2aFid31K?=
 =?us-ascii?Q?9x6fV8ZI8R+R/gE/sULHwGv7AFXzI3RVuOm26W4u7Gkuda0o7PStPb5Dh6rb?=
 =?us-ascii?Q?ImmidHtC1CEqnT98YNI6oceJHLADG+SpYBfRx0GgNiwG7QEkY5l1SI/vfjAu?=
 =?us-ascii?Q?cg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bd28ce7d-90a0-4743-e712-08dafad675ea
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2023 11:07:03.6964 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gzbd5VWNDhKqu2EkU1uBXVukl0XA3bdIzMcdnUfxUiAIV/FFHW44UgrJlsej+bWqi7v4yR5HNCTRvCnHnQYbeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5786
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH] drm/i915/debugfs: Get rid of single use macros.
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
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

No good reason for these indirection cases.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 51ba9a8369c5..45773ce1deac 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -649,15 +649,13 @@ i915_drop_caches_get(void *data, u64 *val)
 	return 0;
 }
 
-#define I915_IDLE_ENGINES_TIMEOUT (200) /* in ms */
-
 static int
 gt_drop_caches(struct intel_gt *gt, u64 val)
 {
 	int ret;
 
 	if (val & DROP_RESET_ACTIVE &&
-	    wait_for(intel_engines_are_idle(gt), I915_IDLE_ENGINES_TIMEOUT))
+	    wait_for(intel_engines_are_idle(gt), 200))
 		intel_gt_set_wedged(gt);
 
 	if (val & DROP_RETIRE)
@@ -765,7 +763,6 @@ static const struct drm_info_list i915_debugfs_list[] = {
 	{"i915_sseu_status", i915_sseu_status, 0},
 	{"i915_rps_boost_info", i915_rps_boost_info, 0},
 };
-#define I915_DEBUGFS_ENTRIES ARRAY_SIZE(i915_debugfs_list)
 
 static const struct i915_debugfs_files {
 	const char *name;
@@ -798,6 +795,6 @@ void i915_debugfs_register(struct drm_i915_private *dev_priv)
 	}
 
 	drm_debugfs_create_files(i915_debugfs_list,
-				 I915_DEBUGFS_ENTRIES,
+				 ARRAY_SIZE(i915_debugfs_list),
 				 minor->debugfs_root, minor);
 }
-- 
2.39.0

