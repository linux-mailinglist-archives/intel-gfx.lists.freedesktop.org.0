Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AFFC8FC50
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3773D10E861;
	Thu, 27 Nov 2025 17:51:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bht91/Ds";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8A8110E85C;
 Thu, 27 Nov 2025 17:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265861; x=1795801861;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=s8DoR730eVHH/N/x4ha7OV8mIZfh3wLG+cZ10a314os=;
 b=Bht91/DsDZTaSThTeao4USP3vIKXMKbxsRkrzaNcSnPCIagFM5p2Ah8l
 bu6C+hyVxwYwLYJZav/hBCoPdx3cUdQ87h8nrkGExZq7ZG60QlV3y7hir
 3UV4aK/C8CqupJBTDXBoVwE34ZLtumEeuujiXLwpLAnVDDE/ozU2QTU4v
 UkdHi0kTs2eTTZ2YwoMWM4C3TjfnzJHpfk7CPDiv3tW/6glksG0+3wLBf
 hMMLP+TvrP1dDo5UpSha55bzy/tFIgu4ovh9nL6YRFMqLy+zB1Nv0trG1
 OcEBcf7T6g6PJDwDi/eXnxXdqsH3hC59TM9D9I2V/9yTuvBfOjDXxvOc6 A==;
X-CSE-ConnectionGUID: LVqWrsF/RVCWvrFRh2DGfA==
X-CSE-MsgGUID: VwZwtsPlSEynVZZu5p27Vw==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66203949"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="66203949"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:01 -0800
X-CSE-ConnectionGUID: KJvSLAZKTHGFe6+gEb1DBw==
X-CSE-MsgGUID: atkVoE9xTAiKZi7UT6xhyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="198230046"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:00 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:50:59 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:50:59 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.24) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:50:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LXreZKVczKQVXjhr4cW4qTueXzbI3PJsJ5cxVg8NuwR6PpIZafen6WSh/5LE4Pg7lkY+b3/vJWpKJtiy7SkX16oJDdsU6KFPgIzjErvluPXqLQ0CVQRZSTlc7JNa9D0v3Hjo2hILlFXOMa4nAMUYpLgb4u1QmIckT3wxIb0pVDEHMO8UPz+OzXuAOH3pnZIOYI210qRkBEqGZxpOXvX/ZiMGVcuDWhcKyLp6M7ETrP6Ocdk62zB10xnYw+o3GHZzyYh/NbHr7MN9EPFsWLSXsF33jJ6HwOVy0HPGwnv/kj7FHFwNeT+QjV7PT0cvElrrqWVT6DFoNpNdOdVzmaq5lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AwHLXFACXIkZnXm6WJh1/cDj4qR7ts+RTS5JCKDMidA=;
 b=EhhaxHUCaHCt3iXMjXiQB25ZYGXlqZYm9CC8R0LG/dNQbYcz3MDRBWtzmvVLiJILZfEkoOKr1SrV/gLqDyfocp4yL4gT21yul0+5G+Yu3tylZVcG01hm+1HzSgzz2iqaVu2uYlc1xWCzxpjpzSsT6HHXK0s3GKUJ+h6sxoHGlj4iqpUVZU8twov7qYreiDLplck5hhkonOi9BXyF05gJsZW3EVYsdvF4l5xnOFYYqyX+DGO8PIUODMPE9q5YlgjN6RrzjYhAnKSEj37obpOpxPuP35WZ5trH2TnUo5Uvc2RZLohB8qA5M4Jw+N2IRZmfSEUF83CJ0sXHs4aNm5y6Ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7842.namprd11.prod.outlook.com (2603:10b6:610:128::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 17:50:57 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:50:56 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 06/50] drm/i915/dp: Factor out intel_dp_link_bw_overhead()
Date: Thu, 27 Nov 2025 19:49:39 +0200
Message-ID: <20251127175023.1522538-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251127175023.1522538-1-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0255.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37c::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB7842:EE_
X-MS-Office365-Filtering-Correlation-Id: e87c069a-ef07-4f81-f0a6-08de2ddd8406
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?8Iq3M/qs6GdZJANI1KbmDXuRhKepZ1JiDjpzrvQqJHWz2rLWcdyclfxUid1X?=
 =?us-ascii?Q?ESx6QWR9CGSjqX812IMzSLCHXEPmPmety8t8oVFgbXuqELgp/K81gwm6HQSJ?=
 =?us-ascii?Q?mqkf0efHjb7ABLPg+Zt3qE+FboMxS1saLFrmlNPh18uWZ6VWzZIoxEWXP9kk?=
 =?us-ascii?Q?1ZzkJ9qyOAzGpkVQxgKBc+a/GrUaIccPJcFaimnd13EwkbnyKdTW6+aH5w+h?=
 =?us-ascii?Q?OYbo0UxhuX1iTWbuHpWyRnvBgEHXL5IzJpVifSL3zb8SD/kynQF6HCIvJSK1?=
 =?us-ascii?Q?AZUHkKRh82C62c8bm81RwLgGiTfxbfRPTRNeYYG2u21LzzIdM2NWEb3GYEI9?=
 =?us-ascii?Q?hU5qodG6dqbC0SZa49thBTzgnAj8eF6CF4KHGRAd0MTUTtgC7TVfz+CAdNgs?=
 =?us-ascii?Q?EIvcrCgg2MwcN49sS8JJybd2poZQqDHO/TJ8kJQ7bXQanznU0l7h6Nh2Fkvq?=
 =?us-ascii?Q?tHp0hN1tL8AcJgvFTRN84lcIyObpVDCAgUbmUSkuybpZAeSAxy3ORJGbtAgq?=
 =?us-ascii?Q?7nATGKrhJ7kP+eSYtps2Lf0CoLmd0Jg9ES3u1obtlGVC0yCzsI4Nt31fByfD?=
 =?us-ascii?Q?V+Cu35vFUF3OAtBQA9rOc2zZS+MyM6dSvKAEF3/RlGM4bs1ryQzXzQhxAqs9?=
 =?us-ascii?Q?/d7Gls0rZTzBIk+EU37cj/uLEdnZG31kVvAfeNpcOeTHR2UCrGifBl/rPMFf?=
 =?us-ascii?Q?vJkN5GV3c6AP9SgQGJujRkpY7XkCueCdcPKZkAUMG5DCImPA6TIDwjaOwxmx?=
 =?us-ascii?Q?urnezk0EHzmOvme2YWQSf18aEaP/owrhldYTnzf2ReERjUGLxFD22WVSUqLy?=
 =?us-ascii?Q?s4hxvscymQtdlnxEXskz2yVte5hg+kfpcMuSMtVQeIf5VpFqE0bACn2OFxLe?=
 =?us-ascii?Q?efJ/o8zTA1fpZc0+0QL1HtEuuRqAOapgx152WJkWvAgg0NSZ4waaMgVjUe2z?=
 =?us-ascii?Q?EMNpbT7wbAP1i2lpauPkNNOxVqzHEAnPql6vZhYgQCn/XL+rYEkxd+AfFv/A?=
 =?us-ascii?Q?C2/BwHVd2dz4KSJ+81TWwCuFbqqpR4IHO/XRNk4fgB5WGB3eb4eBZps1rb7l?=
 =?us-ascii?Q?91TEKr1LchH9qpcQkHgnOz4l3NJSPxHwHRuOAcWtBf8DwHzsibxEMUxWchWJ?=
 =?us-ascii?Q?wNNIo9t/8azTY037yZyfCLtbfoX6YAibYz0ab6x1XjyMxLU30KL+lydjUDNn?=
 =?us-ascii?Q?iif7TwUmrc0bnXFusQOP0guFaBCLAjeIjXT8zntls7c8JtDAo5+Ujs9AQZ6m?=
 =?us-ascii?Q?tcvBlAQL4h2T37r+8VICOfUrJ/to02otgOfxFEhTzWlNcF1sPGGC57csyxrh?=
 =?us-ascii?Q?/EzumdmmdwO5QFkoKTcLItOR/h94/+050Rn1CHdB9hCb1HIZRFKil/0EihcZ?=
 =?us-ascii?Q?lg8Esq19SG2+XfQUAiJowKb5EzVNQrcctR3L/Epb+YnAPv5HMjI2vMo0rI4N?=
 =?us-ascii?Q?cWn29z++4TctLsxqMR8/x93gsMBaK7d4?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rhe1yjtfVoA+vluyU1fjAsmplk0MBOw7qN2n6NWp09ojC4iLRQN3/+Cq0igS?=
 =?us-ascii?Q?7appYFXW4nlSebc2F2f3EyQ+I1A7+kc7Az3LUCxuZWwcY7hMUgxnWUS1wz/t?=
 =?us-ascii?Q?h4XmEh1QxRbT8//9GtCJNp8H86opKzu4GIiMQGLi19nXxA0KcQDjwP8/VYO6?=
 =?us-ascii?Q?uHP9MDmnN6kcShdtAk243voT2bdoY4rQzwhjLUmUsezRzUgyo1jy5X5CYZtU?=
 =?us-ascii?Q?JqIITg4BLCMC8qHonbZJ0sEQDM0XtIwFLmshkqW/xf6KjP6fVfWRPSaBKUBw?=
 =?us-ascii?Q?iSzVVCWQ2Kr6xVtqCmZdpS5ba/9Cj95t1mHrOymUdcspL3+YMc/44Q3RKrCY?=
 =?us-ascii?Q?s/GKYiTgAPgl34l8qO+6QEUtGswI7fM7amas9vQs/O5oz4bavK0YZrHyaMvX?=
 =?us-ascii?Q?03hqlmsVEF2w13skh3o7PbMvNF0YxH4o5a5H7rvDIAEtYQ+Uo7QjVRr5x2qd?=
 =?us-ascii?Q?U71C+0FefMLIkI0nlL78a9xUPOf4HYyBjYaywIDqIyIx7V9dK8/cD/XNxlci?=
 =?us-ascii?Q?3+UiyOnJJoTwsQ3fkGinLMd+KnHJodg4eJdFpwwTODmcELcrewWDdMXWudhU?=
 =?us-ascii?Q?PMy8PGse942D9ut9PaR7xYiCLOWtwT4aKghCTmy1wym4u2rUfsxExELsn1r7?=
 =?us-ascii?Q?eZKNVJNaOVavkmqYU/DP1Ly05E4Q+z7OuZq66oc0jKtpdaIto8WfEcsDgWFU?=
 =?us-ascii?Q?RokeJDs3YSX7ukngsGjBiGBlKtIDrCcTpreC6JL8KAUftTEW7UmIP7KEVquM?=
 =?us-ascii?Q?LP8A/06JLqOa8PiwFJUfaHGk1kG8l39AyuvoZ87x9j0uG2JxqPZo5On21g73?=
 =?us-ascii?Q?b6UtQgcQP1f/c65ZVD8C6BVTcLAkwZdRWWY7aajFQ6TtBjcGo1wBX5kiorGr?=
 =?us-ascii?Q?EWSdz71U9rJ02iVGjmaP5DlDGsUpYK4an23/zCxMH7E6nJhb2qijFyv1rNsO?=
 =?us-ascii?Q?QQadfYPbG17M2X/TS7YWZRFa9OOsqlTGsLoQ1dnLBRz0U7aF/ha/gmV6MiOx?=
 =?us-ascii?Q?ypU2zswlVnsym6VA8rWkGe0Q/SENEsgHXjRR12YcOr/wNLqiEWm/PrrQ9zke?=
 =?us-ascii?Q?D6zW6lQN6RsmRDafmZHVJjeYN3VXcHudOpcm6gwm0M7GkBG4lpB4b6+AJkXy?=
 =?us-ascii?Q?BXVb6FYVeA6TIyGmrwRuyb0j93NI+A/bDMVOWLwQGXEHfmDOxUXuJqnyxDAt?=
 =?us-ascii?Q?QaPpGNua14KGQO4Y6e/lcOaY1utWy4Kvh1g8v92cZ1086cYXcNuUCWuKTUb5?=
 =?us-ascii?Q?6MpuW3e901DXEiZFIrHuZe7zKxzjHweSnJ8cBgmgOII/tq6sSa//r44hbt59?=
 =?us-ascii?Q?8p6wp0Jf6gRxtq+uZGl6Pwtr4u/7v+hHmanuc1BhvZ5caennVzRm96KkMT3y?=
 =?us-ascii?Q?QWVKRiylFw3yJWAJXZlhwM79NY6osVdlaPE/SmH/TCHL63W9AePn2cjVfE2R?=
 =?us-ascii?Q?m6ZY4PiCuyaHGGRRGOS9ngHzpWFqoyX9c9k7qvOtilgFdFJa3R7sG+R/nkUm?=
 =?us-ascii?Q?KXTG101B+MHTRFu1R1fH6TuJ0GN5j6iplFaWnw8j2Vj2LEzz6Mxfj40v4maS?=
 =?us-ascii?Q?KTUkpOyDNx2+vtFQx4KOfDIu08ius77Mu1fakRwDzdsl7IWJDlmeLH8qw7w3?=
 =?us-ascii?Q?4FJHSTFl/aR2IH5nqBotlUnl+Z8swHNBQ18CIGRmHI7h?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e87c069a-ef07-4f81-f0a6-08de2ddd8406
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:50:56.1205 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gabbbUOxX+arEUbgvN9F2ViHwfVPB6MTKuPOzsEfv0rbSnzcABOl5G79i5wXtREpiXGkj2bIgXyARbFYHIjEAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7842
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

Factor out intel_dp_link_bw_overhead(), used later for BW calculation
during DP SST mode validation and state computation.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 26 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h     |  2 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 22 +++++------------
 3 files changed, 34 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d70cb35cf68bc..4722ee26b1181 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -424,6 +424,32 @@ static int intel_dp_min_lane_count(struct intel_dp *intel_dp)
 	return 1;
 }
 
+int intel_dp_link_bw_overhead(int link_clock, int lane_count, int hdisplay,
+			      int dsc_slice_count, int bpp_x16, unsigned long flags)
+{
+	int overhead;
+
+	WARN_ON(flags & ~(DRM_DP_BW_OVERHEAD_MST | DRM_DP_BW_OVERHEAD_SSC_REF_CLK |
+			  DRM_DP_BW_OVERHEAD_FEC));
+
+	if (drm_dp_is_uhbr_rate(link_clock))
+		flags |= DRM_DP_BW_OVERHEAD_UHBR;
+
+	if (dsc_slice_count)
+		flags |= DRM_DP_BW_OVERHEAD_DSC;
+
+	overhead = drm_dp_bw_overhead(lane_count, hdisplay,
+				      dsc_slice_count,
+				      bpp_x16,
+				      flags);
+
+	/*
+	 * TODO: clarify whether a minimum required by the fixed FEC overhead
+	 * in the bspec audio programming sequence is required here.
+	 */
+	return max(overhead, intel_dp_bw_fec_overhead(flags & DRM_DP_BW_OVERHEAD_FEC));
+}
+
 /*
  * The required data bandwidth for a mode with given pixel clock and bpp. This
  * is the required net bandwidth independent of the data bandwidth efficiency.
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 97e361458f760..d7f9410129f49 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -117,6 +117,8 @@ void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
 bool intel_dp_source_supports_tps3(struct intel_display *display);
 bool intel_dp_source_supports_tps4(struct intel_display *display);
 
+int intel_dp_link_bw_overhead(int link_clock, int lane_count, int hdisplay,
+			      int dsc_slice_count, int bpp_x16, unsigned long flags);
 int intel_dp_link_required(int pixel_clock, int bpp);
 int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
 				 int bw_overhead);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 1a4784f0cd6bd..c1058b4a85d02 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -180,26 +180,16 @@ static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 	unsigned long flags = DRM_DP_BW_OVERHEAD_MST;
-	int overhead;
 
-	flags |= intel_dp_is_uhbr(crtc_state) ? DRM_DP_BW_OVERHEAD_UHBR : 0;
 	flags |= ssc ? DRM_DP_BW_OVERHEAD_SSC_REF_CLK : 0;
 	flags |= crtc_state->fec_enable ? DRM_DP_BW_OVERHEAD_FEC : 0;
 
-	if (dsc_slice_count)
-		flags |= DRM_DP_BW_OVERHEAD_DSC;
-
-	overhead = drm_dp_bw_overhead(crtc_state->lane_count,
-				      adjusted_mode->hdisplay,
-				      dsc_slice_count,
-				      bpp_x16,
-				      flags);
-
-	/*
-	 * TODO: clarify whether a minimum required by the fixed FEC overhead
-	 * in the bspec audio programming sequence is required here.
-	 */
-	return max(overhead, intel_dp_bw_fec_overhead(crtc_state->fec_enable));
+	return intel_dp_link_bw_overhead(crtc_state->port_clock,
+					 crtc_state->lane_count,
+					 adjusted_mode->hdisplay,
+					 dsc_slice_count,
+					 bpp_x16,
+					 flags);
 }
 
 static void intel_dp_mst_compute_m_n(const struct intel_crtc_state *crtc_state,
-- 
2.49.1

