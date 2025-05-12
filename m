Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE19AB3A82
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 16:26:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2792810E430;
	Mon, 12 May 2025 14:26:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BdwE8DKV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1AF410E191;
 Mon, 12 May 2025 14:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747059979; x=1778595979;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=c+XqZHyub/Cfa3Xb75Kch1ir7N1NmFE7YwdALk3/PU4=;
 b=BdwE8DKVZ5tv3ZhNvUOrTSaXYdWbKMXKwvfSFl2l6kYaHLbeexbYbJKq
 R0w07i2aBAIJCyOmJvY3WNzkrw02I0uJAeBw0p2kmpXIZCQqohUtZfaO4
 DsPSF121BXzaF/+UebR843i6fAADrh33wQ02IqMPLa44MOyxIYPO02Ixv
 0d7olmBa9IXuYEcU2SUKoend2V+iE/8VCe4qCutkZ3uK6qpi7AXnGN6/3
 hGwpmb7KMEnNGLwRNpFWs8VNfc06+MZ9gmlqB0RLldzYUGn0cRF6kPM5g
 NGmsx9IVkv2Yt/mZmOskBL/PBd0wwK82bF7+gAxkvdDnUpREIShD66fym g==;
X-CSE-ConnectionGUID: We5/HtMkQiK+9mFdCo9iMA==
X-CSE-MsgGUID: aAFK+EjjRyqSU/Fa9TqTzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="47967226"
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="47967226"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 07:26:15 -0700
X-CSE-ConnectionGUID: 7pINh3wqSCG9oDaUUKn6LA==
X-CSE-MsgGUID: 6wX98mFASmieoFIqegZgrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="137852555"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 07:26:15 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 12 May 2025 07:26:14 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 12 May 2025 07:26:14 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 12 May 2025 07:26:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rJmMuDbHwt8eiXt8EWmmRIjnvBROoax3GmkSfmha4OnSYBr9U/YOLgk4tUUKBXvQ1UOZKvJJ02c9JeP95V/GfdUuTA+8wMPJtDmQuIfFDZmh0f6dyizI05/FFvPJ7AFc0s9jc4UhbpBTi8qrwhxYkn//pRQ+aOYjJ8tLgHgboFewCoYqRsPQwSgGgYx7ITqB/ANswMIn7hVebKPt+DaDqXPDkut+5NHdSbFZ6PP6vYtXsr3QKkxYUc8P/ZT0Pz8IOT4p0NXOrRUYIGTtmn1v+S6Z+ZK5lG6DgONgRB1Y0oYoRwGLAEVlKk2GbWPhZUQpHt8+2CLJDiCHxgccIIOydQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OdJlateppqeDGMADqJXRyqMfYAuCa/YmOA4ErMT+0RY=;
 b=TL+IxmeZCBssHWD2Grw2Ij4QizS9WQuzGIb1Eq5hl9982KvPpPc+dQ5q1wA0NxQAuD3hMzGDQNho/GoB5YEwMc2XsrkqugQF3vqHtlXIC7iwZBG76RMEC6lV1O6OK4wxpsjImgSslpw4tpivVLTlbdmXxB8IdskfiYc+c45NAP0i+ZN8kYBItW92uRfMEzy5Q+2/XB/QC3i6CUBKgdDTuvJtMj6rTZg7uvQbmzpqpvhPhWXOyFifxhQLvAYUnbRWEQ2EJcpU9G0boC/p5B4hmrZDTgz2Q9C9HfeirDnr1W3YHoLbqxoCgVqbheFL709xmK7Yeq3OyOVi5xc3npgoGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4834.namprd11.prod.outlook.com (2603:10b6:303:90::20)
 by LV3PR11MB8577.namprd11.prod.outlook.com (2603:10b6:408:1b8::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.27; Mon, 12 May
 2025 14:25:53 +0000
Received: from CO1PR11MB4834.namprd11.prod.outlook.com
 ([fe80::1dff:f717:6190:8c17]) by CO1PR11MB4834.namprd11.prod.outlook.com
 ([fe80::1dff:f717:6190:8c17%5]) with mapi id 15.20.8722.027; Mon, 12 May 2025
 14:25:53 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Mika Kahola <mika.kahola@intel.com>, <stable@vger.kernel.org>
Subject: [PATCH] drm/i915/ptl: Use everywhere the correct DDI port clock
 select mask
Date: Mon, 12 May 2025 17:26:00 +0300
Message-ID: <20250512142600.824347-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU6P191CA0033.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:53f::8) To CO1PR11MB4834.namprd11.prod.outlook.com
 (2603:10b6:303:90::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4834:EE_|LV3PR11MB8577:EE_
X-MS-Office365-Filtering-Correlation-Id: 722f8b73-5588-46ac-8c37-08dd9160e6b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zQuJW3xKFiYQn3u7stD7Knk5W9VeaWdJoh5zBUBjr+NkKHn+CW42L5srONtH?=
 =?us-ascii?Q?BB6WTx5ammsKfFgeMJFegkYPYKwgvDWaj20vNArtlwyER49431weV97dG+7B?=
 =?us-ascii?Q?QuYDSeCoeNgOLzPy6ddjZIECrVgyB+Yybq1Yt4LDbkTAWcfnDR2XEiVExUJx?=
 =?us-ascii?Q?MFOW7SFWzdXC5ZwwCxEJn9YAKUyHFBJ2JzaB2+ZiGoSpeHk68l9CeP2snAVI?=
 =?us-ascii?Q?fFTMryFVgZrhZpFUtRbvaKvB6iJBHiHv+NVfLQhC4UcG0s256boQQ8bulocl?=
 =?us-ascii?Q?t8m6t0gmEpua2kMtNg2oP9CpFHWT+6MMj7y2eBy4wCf9kF9wpnfpgTs3sFIK?=
 =?us-ascii?Q?+NcVZCuEeDj/Bt1TEZ4d9xhzdWJRbA692ldLbXlMhIUzgr5Fd91qHZEY1SxA?=
 =?us-ascii?Q?zUrE8tosKpBkGpFx+iYIkCSQRyFYSH/esfx5fEFzNQMgJ/1buSc0+e62+qIm?=
 =?us-ascii?Q?85Xxa0KSsDOb+lFacuToqP/9s+/7SQAjv/yCrdjxfh8xRRr78Wu8f3CE52E5?=
 =?us-ascii?Q?xAjq6U9/0q28XMx1vouHsuoBlMcrTXWDtA+oXATXui+MeKjzfXTpDKjU5keq?=
 =?us-ascii?Q?5sUx+OG5rURkdkU1Pwq+28Ay4Fi3pv1FmBSi8Gegq0TDBCA7yVHqXZrJMdlS?=
 =?us-ascii?Q?4w8lmFufbgMdeMEXDP9sEtw2RmHp4wbVIbPmRQfzzIzR3XNnwWJqD7NXhye6?=
 =?us-ascii?Q?6C1R91HRpOMsHTYLVyHncRj2c5610ufQRqnkqwG+i++EQPb5ZxbpgKcsaPYH?=
 =?us-ascii?Q?GP9Pj6HHzoI/fkEJxt0GWVzs+4tXqACHIw/HzsUPN1n1+/eBuaEoEzqyB74T?=
 =?us-ascii?Q?W6MUVociaR4diMT7AYgPruyxE/qw8ME04uMthUxFuG37ulqEpdWmiK8v9+n4?=
 =?us-ascii?Q?hci1w00rKggWHjC0dDJtCLJu1ZhKS/Uw73A3Cs6DNXP+GqYjENQMefo/phgW?=
 =?us-ascii?Q?TPBlmjuLQHqNFOsKlViIZRubM8FB4JKm3fN1ccmmDTW4fqMx7fSqIp7qmKvs?=
 =?us-ascii?Q?LyKbGbqLHYevYJ97lzkFsKjb+UVrkWZ3xkgTa4rhhq0YO+rT0HcQcpqamiYH?=
 =?us-ascii?Q?jSTzQeVcyz/Owyjico/Sq0aMeVsbZQrqJ9kpGLA/z1ioYPJ9A0hkzYX0idaj?=
 =?us-ascii?Q?LyCo7YTVn8NHty4Zhsp2GXgkjD0yzIKM+AvZIlPTvxK4FxMHM8Wi+wTOSzyb?=
 =?us-ascii?Q?ma/7DgzEX/jQMPkAohQ7ecV7c9TGdJOY+46kmBt6QHwJ8HqTlG+u2IODkofm?=
 =?us-ascii?Q?3r82X363kFiNVe7mGBkQ+UUtBzesHM/zwM95Pf/WZXdnu3Ve+6mxu1M12HdR?=
 =?us-ascii?Q?NI3m221z05dmRyoKK7u8t+Ak3M4OehwBN91pkqROzU8RJIf/qKk1aJAKh5LJ?=
 =?us-ascii?Q?9JWvqNanowuorhcbeOzl6Yja1a5eGlqEZD3B7U+9uJNF5eAgjg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4834.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3HnjyndNmMUzpLjPwOitGd2VfyTZK4ZCVKboJ3kt0ZUIG3jNG11/PhwPkY1O?=
 =?us-ascii?Q?Q4k8cHcLeE0jcpdjCacSLYs/yhWjBBH92Scut84lC6yhVXMx6oDDv3MUehJ8?=
 =?us-ascii?Q?JyQZEPCFucF82cvQYm2vxlahK/qVHNsoh7lbcIFcryPl02ebg2nIfcfvtlFG?=
 =?us-ascii?Q?6hJesz0gu4DnZjIcWSR7Y3Nu022F1mg5g2Mm6xyLlSNkiDzMfXkZFfVyldTo?=
 =?us-ascii?Q?nyhtchjukIU00qj0H7eCW9bwlzvz7lwbcZ+8K44JbIrM87kBRzbhMQa0DTKT?=
 =?us-ascii?Q?nETYlz+HCDirRaQhjyu1EMSlDZBflo3qbBNF0ebtERuA2X0cAU9hPEQFdcVr?=
 =?us-ascii?Q?pxY3Mf4RCRRqCdJoa5evr2mhFT+ZzqhCPynYukfKSRfRu/ZZ5T00swLq0ht/?=
 =?us-ascii?Q?wysLBIyRy4JUXYz2yqBpo4DqiN3qcNuzZctw/yANtewAg6plMZv7rZektOF9?=
 =?us-ascii?Q?IA8q0BEKs1UH4DT5zoBpmlMJ9w0nmsi+GiCFomOfjNoh9EcHtQwDQoTz+f57?=
 =?us-ascii?Q?ZedSqezF+PmJvIP/Z+35Yrw+rwX4gI2V0WCNNfyNTz0eAb6vbtmouUO+sgRM?=
 =?us-ascii?Q?FLXDUB7UxhW/TBKdrFkwhd3GcoRGhYbHcqCU0qtqvEtl3lNSiJ6L7IeXHMN0?=
 =?us-ascii?Q?CiBqSgbT8S5CxtNBjj0IHp8KV7AIFczQluyRBrXS18EHpPXNO9vpseWLUgBZ?=
 =?us-ascii?Q?LB/LgJDMMcIzLl6Yf1BdOkKovyySXr5tsyYAMHbCDzswrpnKN4N8FRCR0Elk?=
 =?us-ascii?Q?nKDDNuhLA/tfI+SnbUe1dnLGz0wU/P8GisFwvYBh9x/9CP/MmSSc6P34wWt5?=
 =?us-ascii?Q?yVojlF7hCn0vqZVfU7H5rdE/tugMRNXaT4KzKibezqTIGpAu1WEx5jruMnL9?=
 =?us-ascii?Q?Tk9iukg9hXKIFPlFjm21Om5nsggwg6rV1bMuFyk0zbN4J/ibdEWGjTMhnE5e?=
 =?us-ascii?Q?Yi2eRA855G9KYlYHkrlwALTrwuqpt1nqVNR3q2QkIwv9AipxzVC3vXxtOMcs?=
 =?us-ascii?Q?Y/NHl4ASndXLBBQfFuCMdE0qxTxWGxX6g5sMNcrKW4b0bA1qLq1Tw6YufofS?=
 =?us-ascii?Q?EUVarxENWkrv6GHGw/ZijchOFM4Ig/HLHXQ4mfwDoMyc7rxyfgr67luayosq?=
 =?us-ascii?Q?6koM6Y+5XYTQdiMDfxJFeqE9oSQ0rapQ9XxyF3s+zsgWVOF9IeASFa5wh1+P?=
 =?us-ascii?Q?YywFujC7p5U7/1xVhXiOx82S3magEiq1t4krJFKIr+CWumcQJiKYdRTTUmTU?=
 =?us-ascii?Q?ZjTsHhuCCMdVJ4esUAhoKNuf7Z7ifO/toHZN9Xt9HeTzXP9wQ7oVwI+adLp2?=
 =?us-ascii?Q?9tQqx5JnYgOGrTGFzgBIo3xt1zKds8BPZ9faf6zp8x7X6IXfsqxEYM3AqiWj?=
 =?us-ascii?Q?O6nzepAg5o1PK8QQkaJn2z1ioyZZlchRS+33x4jiMmtZ9ZXtIJYf8E30T8zR?=
 =?us-ascii?Q?9Nn9Zz9T+GA6mvJAfy/THKDkkBPIVVr21yhXqK4kwEUzvxkY3vZ63uotXtiQ?=
 =?us-ascii?Q?kjkxn8yH63A6hV/IARhH2e55LR64Lm59Yrmkhc9Fj7pNKNBlXXdgaI/VhE7J?=
 =?us-ascii?Q?SQ5BDu09utaFxrgmGDdd2Krh2MjK3snNolE7tF2e?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 722f8b73-5588-46ac-8c37-08dd9160e6b4
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4834.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2025 14:25:53.2006 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fJ6RgG0HHMOTL54ojiz2fzQFrrDNsAe/9Eh9+dePn4IKgCU9ksswduaBAV8BvzWmb4tXujPuck5q+jrtT5k24g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8577
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

The PTL XELPDP_PORT_CLOCK_CTL register XELPDP_DDI_CLOCK_SELECT field's
size is 5 bits vs. the earlier platforms where its size is 4 bits. Make
sure the field is read-out/programmed everywhere correctly, according to
the above.

Cc: Mika Kahola <mika.kahola@intel.com>
Cc: stable@vger.kernel.org # v6.13+
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 27 +++++++------------
 .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 15 ++++++++---
 2 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index b09f724c3046b..a82b93cbc81d2 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2763,9 +2763,9 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 	val |= XELPDP_FORWARD_CLOCK_UNGATE;
 
 	if (!is_dp && is_hdmi_frl(port_clock))
-		val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_DIV18CLK);
+		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_DIV18CLK);
 	else
-		val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
+		val |= XELPDP_DDI_CLOCK_SELECT_PREP(display, XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
 
 	/* TODO: HDMI FRL */
 	/* DP2.0 10G and 20G rates enable MPLLA*/
@@ -2776,7 +2776,7 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 
 	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
 		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
-		     XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_SSC_ENABLE_PLLA |
+		     XELPDP_DDI_CLOCK_SELECT_MASK(display) | XELPDP_SSC_ENABLE_PLLA |
 		     XELPDP_SSC_ENABLE_PLLB, val);
 }
 
@@ -3099,10 +3099,7 @@ int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder)
 
 	val = intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port));
 
-	if (DISPLAY_VER(display) >= 30)
-		clock = REG_FIELD_GET(XE3_DDI_CLOCK_SELECT_MASK, val);
-	else
-		clock = REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
+	clock = XELPDP_DDI_CLOCK_SELECT_GET(display, val);
 
 	drm_WARN_ON(display->drm, !(val & XELPDP_FORWARD_CLOCK_UNGATE));
 	drm_WARN_ON(display->drm, !(val & XELPDP_TBT_CLOCK_REQUEST));
@@ -3170,13 +3167,9 @@ static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
 	 * clock muxes, gating and SSC
 	 */
 
-	if (DISPLAY_VER(display) >= 30) {
-		mask = XE3_DDI_CLOCK_SELECT_MASK;
-		val |= XE3_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_select(display, crtc_state->port_clock));
-	} else {
-		mask = XELPDP_DDI_CLOCK_SELECT_MASK;
-		val |= XELPDP_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_select(display, crtc_state->port_clock));
-	}
+	mask = XELPDP_DDI_CLOCK_SELECT_MASK(display);
+	val |= XELPDP_DDI_CLOCK_SELECT_PREP(display,
+					    intel_mtl_tbt_clock_select(display, crtc_state->port_clock));
 
 	mask |= XELPDP_FORWARD_CLOCK_UNGATE;
 	val |= XELPDP_FORWARD_CLOCK_UNGATE;
@@ -3289,7 +3282,7 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
 
 	/* 7. Program PORT_CLOCK_CTL register to disable and gate clocks. */
 	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
-		     XELPDP_DDI_CLOCK_SELECT_MASK, 0);
+		     XELPDP_DDI_CLOCK_SELECT_MASK(display), 0);
 	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
 		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
 
@@ -3338,7 +3331,7 @@ static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
 	 * 5. Program PORT CLOCK CTRL register to disable and gate clocks
 	 */
 	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
-		     XELPDP_DDI_CLOCK_SELECT_MASK |
+		     XELPDP_DDI_CLOCK_SELECT_MASK(display) |
 		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
 
 	/* 6. Program DDI_CLK_VALFREQ to 0. */
@@ -3367,7 +3360,7 @@ intel_mtl_port_pll_type(struct intel_encoder *encoder,
 	 * handling is done via the standard shared DPLL framework.
 	 */
 	val = intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port));
-	clock = REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
+	clock = XELPDP_DDI_CLOCK_SELECT_GET(display, val);
 
 	if (clock == XELPDP_DDI_CLOCK_SELECT_MAXPCLK ||
 	    clock == XELPDP_DDI_CLOCK_SELECT_DIV18CLK)
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 960f7f778fb81..59c22beaf1de5 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -192,10 +192,17 @@
 
 #define   XELPDP_TBT_CLOCK_REQUEST			REG_BIT(19)
 #define   XELPDP_TBT_CLOCK_ACK				REG_BIT(18)
-#define   XELPDP_DDI_CLOCK_SELECT_MASK			REG_GENMASK(15, 12)
-#define   XE3_DDI_CLOCK_SELECT_MASK			REG_GENMASK(16, 12)
-#define   XELPDP_DDI_CLOCK_SELECT(val)			REG_FIELD_PREP(XELPDP_DDI_CLOCK_SELECT_MASK, val)
-#define   XE3_DDI_CLOCK_SELECT(val)			REG_FIELD_PREP(XE3_DDI_CLOCK_SELECT_MASK, val)
+#define   _XELPDP_DDI_CLOCK_SELECT_MASK			REG_GENMASK(15, 12)
+#define   _XE3_DDI_CLOCK_SELECT_MASK			REG_GENMASK(16, 12)
+#define   XELPDP_DDI_CLOCK_SELECT_MASK(display)		(DISPLAY_VER(display) >= 30 ? \
+							 _XE3_DDI_CLOCK_SELECT_MASK : _XELPDP_DDI_CLOCK_SELECT_MASK)
+#define   XELPDP_DDI_CLOCK_SELECT_PREP(display, val)	(DISPLAY_VER(display) >= 30 ? \
+							 REG_FIELD_PREP(_XE3_DDI_CLOCK_SELECT_MASK, (val)) : \
+							 REG_FIELD_PREP(_XELPDP_DDI_CLOCK_SELECT_MASK, (val)))
+#define   XELPDP_DDI_CLOCK_SELECT_GET(display, val)	(DISPLAY_VER(display) >= 30 ? \
+							 REG_FIELD_GET(_XE3_DDI_CLOCK_SELECT_MASK, (val)) : \
+							 REG_FIELD_GET(_XELPDP_DDI_CLOCK_SELECT_MASK, (val)))
+
 #define   XELPDP_DDI_CLOCK_SELECT_NONE			0x0
 #define   XELPDP_DDI_CLOCK_SELECT_MAXPCLK		0x8
 #define   XELPDP_DDI_CLOCK_SELECT_DIV18CLK		0x9
-- 
2.44.2

