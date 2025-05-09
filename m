Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 023DAAB1BE9
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 20:04:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7A1B10E2D9;
	Fri,  9 May 2025 18:04:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B8BXiDqd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A30E10E276;
 Fri,  9 May 2025 18:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746813840; x=1778349840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=K4Wyyl0pbrKz6HNqXtKqxViPtXbp8YPWBJdOKzqbsQ8=;
 b=B8BXiDqdl8AjN1oND+lLTFwd65MFfLZkKYhNqjKDzrcFdJhXAcLmrk3S
 3RDKXCqI1M3xdNuJUbvJ577TPtO14vMHxUW6NpBLdR7whCviHvqOYlG5x
 whPxOBReHQtC/cPtcujiAfOUI2iXT5h20zzJcc3L9TVumNekaYD+1LpPq
 Wne3FWWU5RcD4lalrBZqaE8hZjihxOD97qtP3fToKteE+EdOX1uzwkswR
 1VIDc9vkCCoDnWPCtoRwBdVOAgcdAPfWJ4z5pvAI2v7eFmpU6yBk709Pn
 K/pbFlRZUNoFjtvo9ZHDvXSbpN4F1q2OpOu/1BsiNh9rMXBT/sGBxRSU5 g==;
X-CSE-ConnectionGUID: hVnruiagSj6jmgsi3BBUZw==
X-CSE-MsgGUID: naxHae9cQNSRcJFUFscrTA==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="52464874"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="52464874"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:03:46 -0700
X-CSE-ConnectionGUID: uayUKiEYR2CsqrTqbVx+TA==
X-CSE-MsgGUID: GIexkE0SRtmW7O7/9Qeo7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="136564158"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:03:46 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 9 May 2025 11:03:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 9 May 2025 11:03:45 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 9 May 2025 11:03:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AB1/q6vKlyzl7pyHz4ESvVE0fDpGRhHWcSiaZzElQor0XFwyCgd74Xv248O7EF5EYB4tuRVTJlG7MWNoRktdi6IIjdlCdzUjOC3YE7ILg1qHHsyqmvPhNFzzqiDIWCGIMOHDJDSS4+KeJbtRrev3zcU/AHb0lnNfn+StRFw9247hByGMIMV77ng701P5BG4+X4QavVvhbCP9LNoM/QqPbsYBz/1V2cPFwXeVWHKUxINqE0u7f3+I921o2j0QuVAzp3Z6AZFR3yBDpaqT/Gvm3dRHg0auY3uHPOxqK6sczpNYdlXaPgFqSdZ9iGamI+3UXVHofpW/TOoY1obIB+ma9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bbWeggUfs6AyMiB4ZVhGJZNIArDO9wG9GXwbyWkdHvU=;
 b=ZcfYvq+VdRvYKAbPtxObAz3kY5eTc2PfPUTU4mSXxKmeGpxy4glI25sE+ffYsXLostg4fev0eud25XoH/KtgEYvHfd8iZyPFC5iBkZ135cDrUAVgE1DXcoZeGHiv5e5YOpmF9TZxDuUjR3Rz7nVdFYaGxkRAIZeogg5nLu7nsQytuIXDLtGR0/O9LyrvSFDWzEJu/idq9lsvMd6Y6flbKPo9oXge2n8NVzlSakGkTt9NeNgnNNiIgY7j+Nl6+Bo3F8PNxv5zb8tdyYsA+2kYjahdA5nZcWvengiwftgyfBlRAgW+/QNy142V0YpjWwqu+8Ng5cbrXY1YWRITVDfcjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB7659.namprd11.prod.outlook.com (2603:10b6:510:28e::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.22; Fri, 9 May
 2025 18:03:38 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8722.020; Fri, 9 May 2025
 18:03:37 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>, Luca Coelho
 <luciano.coelho@intel.com>, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v3 02/12] drm/i915/dp_mst: Simplify handling the single-bpp
 case during state computation
Date: Fri, 9 May 2025 21:03:29 +0300
Message-ID: <20250509180340.554867-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250509180340.554867-1-imre.deak@intel.com>
References: <20250509180340.554867-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO2P265CA0500.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:13b::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB7659:EE_
X-MS-Office365-Filtering-Correlation-Id: e489e868-4249-4c85-71ff-08dd8f23d29b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6wss2ztyQ+zscbqQFKCWOUY7c/flUrRpMu0qhzSUi5vte8L/ad7v61L3x5dE?=
 =?us-ascii?Q?jriU/mKpsEkXCBpXoTU4H5Q9TrQ5Mn+1ULKxF23hCSRyLsae6SBngV0F5BZ6?=
 =?us-ascii?Q?XH+DhpcKNWG+ogypHLQIej9rGV6VRolHYd2safbPO+bsSU8F+fSLx2qT1rHL?=
 =?us-ascii?Q?UMRJ3wuqzFgMJQhgIXbnuhIogblqrWhyig5YtkIIIwsNZwBE7AyizArU+DmC?=
 =?us-ascii?Q?CKZF3UVdA3nogGAfVizqHUxe7/NXaJF9WTouRTFUbG34hjnMxQMsR1Ni5QOD?=
 =?us-ascii?Q?220vblyMxONQwxytFm/XYl6+ZN0tjBo3fRB5P8qZUZCIUS2rdvkzQ+66WFJm?=
 =?us-ascii?Q?dk8P5UOMFg8KfxLu1uYDp6Hr282BOLz6ate72GDQzEUM6a//zh2HWIIoF8Fu?=
 =?us-ascii?Q?qenlI+DP5yQV4zcENBcXnONkNcS84bVfDO2EQPqqAgrV5uCinAFVg0hEpZyq?=
 =?us-ascii?Q?pEx+Am+xwQwmDdTPu7bNd0qVzEAIQsx7hsaPSbMdeItiCwDIX2vfExRYtrW/?=
 =?us-ascii?Q?FeFeyGxDkra8pCvl3IShf22Suwmfk83ZdIR7BAhlVpAEuzNooNC/IysnWkq8?=
 =?us-ascii?Q?Xky2WOsR8Hl6Rkav/bWW8oiCYUTPaOJ1648i5/U2yPiMVlqoXgxWOHx5l/G2?=
 =?us-ascii?Q?LrhhijwVdNGoANjTEqpDlxupnzylxG15ztcIvnqfKhuHLW3QXYuIMrVribTs?=
 =?us-ascii?Q?scc6/8LH3vW9pPMMpCdL4JWpM+KfUFaWZFKaAO9YPlJaeyZY7zZ0h5RvVUO1?=
 =?us-ascii?Q?KNKREzovdaae07u4cYvd09aV3EBWfNtv+bakWxIjSz0jsDur4QdwMwUnxGYs?=
 =?us-ascii?Q?cRkl0Zbm+8ZEeB1vORiXw2y6cR3jN4lj/NjKLxZnu2D+jlh61SbO1QrI3nim?=
 =?us-ascii?Q?FH1eOTTJzTckqmp5JWSW3bqryPHpPktZZc71Cptsa2czaRpVcgeY/8x2PMIH?=
 =?us-ascii?Q?T8JhfqkrwoJEAzrubRAWm9OVlc9HQj5vZvAIxWSnHM2nrdGUTmCDmDlkED+s?=
 =?us-ascii?Q?4szXt3w331ZEs1rnb/XIadk+wVsmorIcQwmFJAA3dXQbtdGlD4Zae4aXsAJC?=
 =?us-ascii?Q?36CVZEzQJU2mDPLAj8lKNlAO9kpqODdMN/iaWP9mGXWMZqw8KLYjHcznDO5B?=
 =?us-ascii?Q?KAtnO/i1m4fcg0AbIPnkGu+nhfNyRThcyeitIqmHGS4pe8p29LeQVXeQnClf?=
 =?us-ascii?Q?6H9dl312dbRVoaBcWhXzy5qsbHiZnVqT58Bf274ukv+HeWzaklWJNyLGnG9h?=
 =?us-ascii?Q?XQpMmJ7pO8kT+5Augtlxlw3FixH5Lac4k6u5lusW33nGYqaF2Y0RFfusYDAH?=
 =?us-ascii?Q?c+5EM+hCDCitQEV2Wn9RonkFUOIxOFla/xUSXmCjAW59ESrnYbsY/3/EaHwf?=
 =?us-ascii?Q?1kQU6njkAJl2l3jmkcH0f8UH5KCJV7SefbU6ZnWntSQn/mfKPhaMmS1xCBH5?=
 =?us-ascii?Q?xmuM+HG0dY4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UTod+UG31sZJaO31bhMxV/GxAZBx8IdQKwUZyZA1/ROcI1lW9Idki5yrY2vK?=
 =?us-ascii?Q?ME2kTcbIFh2Gl7C/ICnbPnSzbZ5vE3rvfiEkNQJLQY6T5nNWxcKzqentgfyy?=
 =?us-ascii?Q?yku7eqR+KH7+Fd0duDe58EIK3oXOAkwIAh3+mkK0C+ZhB1wOf4WiRr0qBQpK?=
 =?us-ascii?Q?2NIwFf7Pj39RCo27L9r4zgKcJqcpi/Bjq4MHynwq2dSkbKa4BhRv8/0YANFM?=
 =?us-ascii?Q?aL7HbR4hKTDOZXDu/smMKcpf57mqpUJARo8C3TVs+jUg0JSI2i46GieazGY/?=
 =?us-ascii?Q?Dwrzw5/Tvkm85E9UolSDBLMhHOU8FPUHcxZaiq7rJ4a1NyuN0S05wv4BC/2w?=
 =?us-ascii?Q?MKOsrJGgRbFftgIIU+RmRU79fNHu4eXemUxiA1uEaxfk9wB4fHy5NemgVggw?=
 =?us-ascii?Q?SNtDJ7TBW4Uk3gmCpdwDamcHU8Vta5tmMrTdK5FgJS2K3sPe27unaeFUWzDj?=
 =?us-ascii?Q?+3X15tpyC8od2nYcnhREjVno27nUExhXvfetzFIWm9NdRZ3E5GO/oEBGwalI?=
 =?us-ascii?Q?b4NGijA/Ggs450RI1wIg9DwjR1GiABynCCOTYdvyuPnWb8KOEqb68eRxNV0S?=
 =?us-ascii?Q?3cNnmQqX6EEIfGgAeaWs60np2pRTRRQQYl4GwG4XwBrV1+9IEAnn52tn9QJg?=
 =?us-ascii?Q?qt0qIBsRa+J+uoql63mv3o6HE12Ohk0+QPhJRyTGdsNaZ/MqVgdd6gd0VDgJ?=
 =?us-ascii?Q?JlN0auwgQvQNaDRI316h++81uSqidUz/aOjaferwI1qsSdh0q03tbg+6cjQY?=
 =?us-ascii?Q?M88CgPEtOtGD9FHMTIoBbLc8oHGzHQnaYmOzyAIQH4C1LCvVFpP6zE2CedOX?=
 =?us-ascii?Q?rrM5nwYsgtY9vT6Ro+gex6bDqO1nApJbGTAkmEwT7QyCqZaaXyERPxKyCcLQ?=
 =?us-ascii?Q?rFYzmZxlHtYY+Zmrrsy1AUBSRPdx0SIF3XduFIbzogJG2Qe3PJgqizovqjZD?=
 =?us-ascii?Q?/X70lTuJ/2z355lzQBHpl0odZBPmP+Lp4pXgPygz9WONVkWqIG9QQCPE8Ja+?=
 =?us-ascii?Q?DMPULHEruecM07TJqYrXrTnjw1ZfCoEH0N4bOE9lTuY+2HLzihcLUXcwMCxk?=
 =?us-ascii?Q?NsRbAP+t4x6tpgVpWmQESCR2DMndPbzn6scDgTO6KwZd+mr/HbtdSCFlK1yq?=
 =?us-ascii?Q?ZSPiZo8W5qs9T9+beGYnj4QH1dbuTAGxpFxuwTUXW/aJTvo6rjsIShxnxDaB?=
 =?us-ascii?Q?oZ8zX0NaP/7vov6GnzfiiobnF+5W2Kmw9Su+jBt+D03JitKcgvb3MQPz2/rX?=
 =?us-ascii?Q?6L+9bg1iwSA0+VkC++Tj4T6waYNl0Y99MYC4phgwNSx1ISMhHwieDTA9r2aH?=
 =?us-ascii?Q?0BbRMpZhP9cVWGD677DVGQwSsEgQsrk25ezHXkf0JAxcOYyVe38D20hlTp8V?=
 =?us-ascii?Q?VvrwjyyPWr3mptDJKO9VLNKVuPMsY4pefCn/0EuFrL2vw7EeR6yzXI8Obulc?=
 =?us-ascii?Q?RNh/SILzgAnaBXZzmOqDYhaXFNnr7/GXAZZU6J9sVD4qn+32Fh0AAMux860q?=
 =?us-ascii?Q?cZPAebKgjGm5NtzaWxU+uW8hBBcZWMNxwh5lPpz9NODsaB2YP4U0WClKIIJL?=
 =?us-ascii?Q?Vx8/3rmuSoZC/FUOXFci76myT6Gh3+6XxFYFpJoF?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e489e868-4249-4c85-71ff-08dd8f23d29b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2025 18:03:37.8502 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2sJfAOCl1a63KgkRyWSs0ogp/I7lHUhxEWzeHJRdhhxA+DdxU42xrPR9oAEHC7jZ1o6LHvap9QCP76Tec/7tVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7659
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

A follow-up change wants to skip invalid bpps in the bpp select loop of
a stream state computation. To allow for that, using the usual
'continue' statement in the loop, change the way the single-bpp range is
handled.

v2: Fix typo in commit message. (Ankit)

Cc: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 06f4ad8de591e..fa969b46245cd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -263,6 +263,12 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 					   fxp_q4_to_frac(max_bpp_x16) ||
 					   fxp_q4_to_frac(bpp_step_x16)));
 
+	if (!bpp_step_x16) {
+		/* Allow using zero step only to indicate single try for a given bpp. */
+		drm_WARN_ON(display->drm, min_bpp_x16 != max_bpp_x16);
+		bpp_step_x16 = 1;
+	}
+
 	if (is_mst) {
 		mst_state = drm_atomic_get_mst_topology_state(state, &intel_dp->mst.mgr);
 		if (IS_ERR(mst_state))
@@ -386,10 +392,6 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 
 			break;
 		}
-
-		/* Allow using zero step to indicate one try */
-		if (!bpp_step_x16)
-			break;
 	}
 
 	if (slots < 0) {
-- 
2.44.2

