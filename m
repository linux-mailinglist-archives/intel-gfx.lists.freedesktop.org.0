Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBC8B1AF76
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 09:38:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF1C810E624;
	Tue,  5 Aug 2025 07:38:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EZbYVXyL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1060710E61F;
 Tue,  5 Aug 2025 07:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754379509; x=1785915509;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=mFZBWVSyNxKjrAcTz/YiqpuYpsEEb7ggbiOIOwG7gCM=;
 b=EZbYVXyLPq0ARwBPQMs33PyByf+ysyJ1afQ8mivNTjly/aLj+Q2y4HvR
 InzTkpzMvcwzkfGcRo1QPgtcW/Bfbj5gV28T3kLh6isCzYxLBTHlNE4AH
 /Jak/mGOid0Jn0mDPDRu5q+ZhMigP2CfkeZgf3ipSM2W5FU39PSu82AbG
 Ir3E//9i8MqqDN7El/yxpcj22L8yIe33tVja9FpjIC6Y8xuUB4i1Ap0m9
 7wOJ7fORXyK1Dzn6vvSAIFxOkuFSMeyLlDIFkSR9JBXC+L8UjQb46Pm/K
 dk26nLgT/GpRckYtRrmHK6G6H/oXkV/CEEFqijVSWOjOm4tvP45zyLwOY w==;
X-CSE-ConnectionGUID: IG7UTaAWQR+aXidfsuxpUQ==
X-CSE-MsgGUID: goLRahidRJS1nx9xVETtPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="60469800"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="60469800"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:38:29 -0700
X-CSE-ConnectionGUID: Du+zizGeSCaBmi63OytF0A==
X-CSE-MsgGUID: UlSFVz+1S4uG/NV71bHqMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="188080330"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:38:29 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:38:28 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 00:38:28 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.89) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:38:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O/PQ6u1beqlbIKIPc1V8AuQ72wd0H1sRzh123gPFDnAV/qLc/sLuzliyXumpvyVXLrX8H6NC94ezfloUGfux0Bae9tu50eTZ6Kx6EjeXXoJVMFnLDlTlVybhKbNztpLcGbTn/AqEYyJGzWkuW0xyflX/rwDcKmu7Nc5uNlVX80rJ2OgGLkDNiT83MbIMo4CtKHCov7jjnfri5C/aqCJ6proiSvlsIf9qKXtys79E8VTT5f48wgN1uVJEbH6X6kwqsJV5R/RhoXnmUhCtFvy1bnaSDe02mmcPd1Eu6FD9seeFMliQasNRotJazly2wdZFhufjknt8DJESGfHLhZwW1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cZMy6+zm2ds7ngo9z9l5P2G9PHgCSn4CHBJY4mMBwTo=;
 b=tifq117iWhIdG8H0wt2CSVHCuylf4ebQ3aWCeGiHezSQ0Rf9VL2w3jlVX92kz801+fWxTUpEjeySaKkckLhTnrj8qne31yhJqnkmw8ASVI+6Dl8QXMl9xgL4c1AAR24Fo2Lb87j1Z9GlWUmA+0m2lw6bshsJsg3K8Uwt9bhvUJranPHbdQGx0WY4QHBCaNpJSnXEHWIlXzSxKaxJ4pZA+QcmX3hZG1PjNm1y5MX40WWNZOBlvozaWElbN5nnFaSqyy+CyGbwTb6jb1VgeZVBd5iyCZUk2z7VOZamF40iGrJ6li7+kQFyADJyJ4MwtCuDxrt2r6f2ZTOE3YUif+xG6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA0PR11MB7283.namprd11.prod.outlook.com (2603:10b6:208:439::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Tue, 5 Aug
 2025 07:37:41 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Tue, 5 Aug 2025
 07:37:40 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 19/19] drm/i915/tc: Debug print the pin assignment and max
 lane count
Date: Tue, 5 Aug 2025 10:37:00 +0300
Message-ID: <20250805073700.642107-20-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250805073700.642107-1-imre.deak@intel.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZP191CA0024.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4f9::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA0PR11MB7283:EE_
X-MS-Office365-Filtering-Correlation-Id: f82399ef-bbce-49ab-7db6-08ddd3f2f543
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|366016|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?J5hf1488cD55klLlEmJtM+G9uWYjBcd0gQjsn19DLiLQFQMqzA1K1xRLg5bN?=
 =?us-ascii?Q?gNSj7MWlhrwukwibWX0bW19nPJim1Y/BeLhD0ZskmIFqGA/1be79La1xhFFS?=
 =?us-ascii?Q?z74DgzMlFvA6/1Dd+3b2tcCIXmkmhqhlAI87iN9jQ5yB9QmbFBAFehZMB9MT?=
 =?us-ascii?Q?ClvTfdlGXc9ONZhELP3b5KLH6lD/N0fIwGu1Ryqo9mldwls921tVmChDUkTF?=
 =?us-ascii?Q?kllsatryxfdIUP0MrIAmA5qGkThOFRUo7WVfe6BKXP62LqSrMG+LKWk/dqc9?=
 =?us-ascii?Q?NOqNhJXr7sPLOdaLKghV6Mqz7aCm1MFZEdt1zidwMVUvrwYjg/ru5dTQRIYU?=
 =?us-ascii?Q?6549YWW8/BApRuSSP93wTlUE85U40dyigglSuz7ch5dHWKgpKD/3tD8xJkop?=
 =?us-ascii?Q?btVA1MuAAGeqN9dWPjgnOpq8mjMZZeFeG9ITZLcddBRMUoY9834umgn6EJai?=
 =?us-ascii?Q?m0JPeXP2aYjJ8d3Sl8kEENQECaVjjZN+4EhbT1YMONMZuCX+hkNGFL/H9iyc?=
 =?us-ascii?Q?lrV7O9qCPvzKo/RSgPXwFVluvnGi/1N0nQGw7GIrdOxN9vYCmV2b0QWBIBiJ?=
 =?us-ascii?Q?wTZV4B33AGfrhtAyCVnV4tmTfHCZ9R5DZESXrazuYcCG2ITPzjHJRKrAdr6q?=
 =?us-ascii?Q?XA2DT/F1j5G9KNbfSo195GUmdHdGk84CBZsmGelxzFTnUnSBhOw6vtrC5R5E?=
 =?us-ascii?Q?v++PHlKP3greRD1v9MZP7M2blD63lfde0hbZd0xQm8ViJ2fclL9clxCoEKeS?=
 =?us-ascii?Q?piey+xebJTKrVi0YZ53XZsdntMK/se4u9Jd79Pn4FXnnlfwTryCjgzvPWVBi?=
 =?us-ascii?Q?UJTHe/Sh+Sn0bD0+JHD78Mhtp6pcH2XuThVcgtLPfTBb1pQWoqlycGTW7VzJ?=
 =?us-ascii?Q?/RpubAFu4s9t09/Xuxrkmg20mjSIIT64g/+PSWyhwFBr+ACLZEgAR7DGnACI?=
 =?us-ascii?Q?hKIHMG8oa9/9o6QJYM98m5uCmjGCFwYmtg3ZFkqGM2bLUDkc1xwsm8T8Aa8c?=
 =?us-ascii?Q?DI1g3c8uSjlPwT2ut9gBH0Crm4wvfL/w+4yJVouQ1t1f8HIdJZkePXBYYoYd?=
 =?us-ascii?Q?8eJehszPaS1/8n7VfDG3lpeRfF2yFSNKPzABwgvdB/+gEXjcZ+pc30UY+abP?=
 =?us-ascii?Q?vK+drI1msmumtyw8Vh8xPzp6meDXN90xCzzlaRaRRY73fb42gUdwvPTDBo4o?=
 =?us-ascii?Q?ZLbHNs/gMXp0O8b6KhG0yJHuLzBLqKme0GLoKpCVHC9Ss/2AWzEZpZoZNFif?=
 =?us-ascii?Q?DeTZgCVEZcTJeSm9Okx352Eusmx2YpXDz8kHNeLjvb5cYiRs9FyG2Zu1F/hY?=
 =?us-ascii?Q?kIbwWOnuoCqTFoLoXClLjBk5zjvV5qnlBZ2c1FznntDk1e201y0M6VueuS8K?=
 =?us-ascii?Q?PG5ZxUVPO2C6O1dqjpXIuGDOv2aATnsmtXqcdRPuc+LW5cuyr2pvEsGnB/vL?=
 =?us-ascii?Q?ds5LnShtWac=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YSGpfzo8dt+w5RkYrxbpWuVeUj0VNwO3NMYfgOSAcp/77DsCsDSf2yoYZhng?=
 =?us-ascii?Q?4YSXPts2VIS/ntP5oOXL8+7JD3qcxHzpjG0vwdkvZdkPmTFCEbyXIjLcx/9m?=
 =?us-ascii?Q?gqZkZOOj/Po3G+iAUvxLYT2CnOlBMoLatBBEfj/s60Pf+idNifh2s+61O86w?=
 =?us-ascii?Q?9YDEVLdWV18+tqfwu1DKlB7BNSmmXAuYmHyZWTjOg9HlNM2/oVxHuT011XY9?=
 =?us-ascii?Q?3Y+RdsRSGlvc2DFVdSgMTBNo1ySlhsMymJYqOmuKKJ6go22btFols6sFsNzK?=
 =?us-ascii?Q?XhhOmR3JGlSitVB4jSbFqLybgnf9WqOyKr1rFZOS1aqZWx76ReXgzhCCNAah?=
 =?us-ascii?Q?8c120yDcBFKxJy2tMqgFlyMTCTMs3qQvnpfq+Qhvlg6jYASxSIVakCQPEuL9?=
 =?us-ascii?Q?KwutkhV/I8TCp6x0SHiEyD0o+4DRm9WVBDeu/nqTFj1ylHw8ZUiB96Wwe38V?=
 =?us-ascii?Q?zlGajORkaCenWTEMhjNHqo6kXJwY0zprqduYDj2MH8KkBTXyyZ5bXmwK/0A0?=
 =?us-ascii?Q?AEQMQlzlQmoapyaYjX3myFzXy6baCKmdA4DHKE+2u4C1x6KeoWIa09Qd5E0b?=
 =?us-ascii?Q?D5IfOl78/2ZFuwKZoiKhbSvZ4X/XgS1bTsegLizAqgWne0ko00gU99NlbRKd?=
 =?us-ascii?Q?OUk2oDFTgza7OflV/Vu8sjrrAJRn98OU/esuqhQYq91H8Dlq7uW085NdpToD?=
 =?us-ascii?Q?yZT4/+hAWjLqYUJUN6WYKqI8tdEN3h9nHNCjfNlMbVE87zzKZ4VYLWXM/jIU?=
 =?us-ascii?Q?J+9Ah6pDIZTtbwGDwAAfagieVCR9WKa8l84qiLtPsHA7jfbCWuae4l4GkDFI?=
 =?us-ascii?Q?EN8FPTazQM1zOayNBd/qSLrIBlbLlkSoJ4AOPv2SU5u3UceF+HuWFnR7cdgJ?=
 =?us-ascii?Q?ILPVNjWNKr7HuaESYrl9G73giK7IPa8FTO8u0VjaR23sIOt1/sqBj/lC5bJJ?=
 =?us-ascii?Q?hrQG8w0IEW8f3SnrbrkEsJu/5jvcQQ09+1vragZXoBY6eUALc+bxQSQl9sJR?=
 =?us-ascii?Q?KnPRhGCDvBWwN7VjPMtQfPGhZ7hdFCVa7fNaUn5qT88FySSKyhiU6V/JVSHN?=
 =?us-ascii?Q?KV/FSpzJYxlYlfYi3PvSNJ/X3kHvcLBeBJMLCnC1v6mt1AQt/TKWTKXOIoMR?=
 =?us-ascii?Q?/Q2Pm4RJmZQAKIjUZVVkXH8plyHysBQlNDwc7KSNOhYQqGv2eSekqJpJImCp?=
 =?us-ascii?Q?Isul5cgw+u14ah9IsuTdsraYvNbR8JSKgr8qBbXhFATO4DgSZ7Z2sjWTJAq9?=
 =?us-ascii?Q?M10twhwHFYeoIVX53Lfwl/rGNsHH0brJ+A3rRcqRRvACYNhUrDk4HCfw/+92?=
 =?us-ascii?Q?2j2pBTKJDdG3VMumCNGX97KcOJwRGgC+I9Ge/FcA34hEdTG5MN2E/p5LOMU4?=
 =?us-ascii?Q?6FZ1jjH+nu+9Y+fmsQyHzjpddknt6uOnMHqIqu7V2AzagToEf0UKIA4g7Wm+?=
 =?us-ascii?Q?YZFR6gtOpYdgjfaFqwhs4ie26dfVLciKbpzlf03YA/iN5QMgD/d02bEyxn0w?=
 =?us-ascii?Q?56uybZYsc+w+YfuLRJWxLVv4g6cAbkYaUu0GAdNTj6T8p8yteJuoKFF2+RI5?=
 =?us-ascii?Q?pBw7YcTsSNxalBDEbt20IqQPLcmFJnRij8HpZUAf17jjzlVoNGrLmxO9zoai?=
 =?us-ascii?Q?5tF62F0E+eUk/UG22Ml9KJ+VA3uQcTVg75omRoOJscg1?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f82399ef-bbce-49ab-7db6-08ddd3f2f543
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 07:37:40.8966 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X4rtjjdLqwLKGuelkaPV/D+BV95HTyiJG3AVlk8YgI2NpxS0lVgF3fbJfct+d9CMUkEz4sTla9OJxLR1df7dRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7283
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

Debug print the TypeC pin assignment and max lane count value during HW
readout and after resetting the TypeC mode.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 21 +++++++++++++++++----
 1 file changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index f6bc253bec559..0330b428eb398 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -277,6 +277,14 @@ static u32 get_lane_mask(struct intel_tc_port *tc)
 	return lane_mask >> DP_LANE_ASSIGNMENT_SHIFT(tc->phy_fia_idx);
 }
 
+static char pin_assignment_name(enum intel_tc_pin_assignment pin_assignment)
+{
+	if (pin_assignment == INTEL_TC_PIN_ASSIGNMENT_NONE)
+		return '-';
+
+	return 'A' + pin_assignment - INTEL_TC_PIN_ASSIGNMENT_A;
+}
+
 static enum intel_tc_pin_assignment
 get_pin_assignment(struct intel_tc_port *tc)
 {
@@ -1506,10 +1514,13 @@ static void intel_tc_port_reset_mode(struct intel_tc_port *tc,
 	if (!force_disconnect)
 		tc_phy_connect(tc, required_lanes);
 
-	drm_dbg_kms(display->drm, "Port %s: TC port mode reset (%s -> %s)\n",
+	drm_dbg_kms(display->drm,
+		    "Port %s: TC port mode reset (%s -> %s) pin assignment: %c max lanes: %d\n",
 		    tc->port_name,
 		    tc_port_mode_name(old_tc_mode),
-		    tc_port_mode_name(tc->mode));
+		    tc_port_mode_name(tc->mode),
+		    pin_assignment_name(tc->pin_assignment),
+		    tc->max_lane_count);
 }
 
 static bool intel_tc_port_needs_reset(struct intel_tc_port *tc)
@@ -1664,9 +1675,11 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port,
 		__intel_tc_port_put_link(tc);
 	}
 
-	drm_dbg_kms(display->drm, "Port %s: sanitize mode (%s)\n",
+	drm_dbg_kms(display->drm, "Port %s: sanitize mode (%s) pin assignment: %c max lanes: %d\n",
 		    tc->port_name,
-		    tc_port_mode_name(tc->mode));
+		    tc_port_mode_name(tc->mode),
+		    pin_assignment_name(tc->pin_assignment),
+		    tc->max_lane_count);
 
 	mutex_unlock(&tc->lock);
 }
-- 
2.49.1

