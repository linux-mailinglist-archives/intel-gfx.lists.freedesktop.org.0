Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C77BABA1A3
	for <lists+intel-gfx@lfdr.de>; Fri, 16 May 2025 19:09:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 169CD10EB40;
	Fri, 16 May 2025 17:09:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kqSolLrM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D89A10EB40;
 Fri, 16 May 2025 17:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747415394; x=1778951394;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=N1HDcS2OoIvCk8sGZbUjD/1hS2zVl5kIFxheD0v9QRs=;
 b=kqSolLrMBR1wbeXX0YpIJ8poPXJz4wOzLLG8PxziHR2h3x8tT4d3tFYp
 MHceM0/PP1pxHT2TCco9n2aw8njunh3dnP0o7wr/Ye6avPVBW/89gHoy+
 TjpbwpMb8xXF23RnKW4z7Z35uBXjeHTH5jgGYjFBaoJK6nwCrvLZF/rNj
 7YhUcM+lcIiQKH6hKKQQiSt6IoO9RhmJNfVBCvnHRQR/Xg7rs+zDqM9to
 qMSaHFVT/UA45EFygO0p5DEVw0rjOuO6Ub7PX3Os2XMF/Kn0KjkfLx+bt
 WG5hs/oUqcTb+PxQEg0qNXb+ixiPj/pVSql/xKnoKR5Mk2XlmvA/ptePQ g==;
X-CSE-ConnectionGUID: y0NRmSc+S2mSf94DlROi/w==
X-CSE-MsgGUID: D4+C3kurQcSAi1jrhKifgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11435"; a="49322326"
X-IronPort-AV: E=Sophos;i="6.15,294,1739865600"; d="scan'208";a="49322326"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 10:09:53 -0700
X-CSE-ConnectionGUID: Hn1jHl0ARCuT313+cUFfFg==
X-CSE-MsgGUID: 9psoxyWgT5mX5rsfKeAXYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,294,1739865600"; d="scan'208";a="138602091"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2025 10:09:53 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 16 May 2025 10:09:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 16 May 2025 10:09:53 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 16 May 2025 10:09:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rf6DUZTD/8QLynfTx5NFwkK2bqC8BDFrTJSIngp5YmeAVwSDU6niXD2tPboGcmyy0J+g5aFLO62smH35/8s90oF7cDx+jtdAPNZMLj+e5pJgpQWgC1BYluyuJaMAEDAEJcWtUEr7FwKCQHm9moUKDQAQbuUbM5by87BQETHQJbInUjecEnyR51TUQPgDsUH6zTliN/TKdhBt0PNsjnUrr6gJXNpWXDH8GT2zzqjrR695o+fIXxJKF4G7eUZmFHVmv9OxVPkGJ6MTuN/M3nzSCY1A/mNEWDOYW0jgo6ErT9i82VK/G0IRrXfERdrK75G8sce/tosNH1WAVlWrneCp6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jY+ocKlvqcGFrePzhMOM+ooHsbTy46SKrqvtT37fhNE=;
 b=QvVs3ShMdleEQBA0n1e8cnMnFKSwGXMXstvz9Pf700MTK/JS2H702JnxvMnS1pBXAqYTLeyqnlwI+ER7aaq5cwvyh+tGorUlstbPSb1mSDHtUWal1ch+pGk0Q2pvYcuuamaU50rHGe6KHDVJ0gbu3ZXCxwje8Y/ieIQ6p/yeofLFPp5q+3GttWtmvX/EviHK3GY/By6B11z4QyhBvnfijksK192ZSDmjHTOhbm5seU5QPYlPHmx1JkVGo1rQZjtS7dxngLgyr5aopJZQjzTCIDuNdoiuh+iQbdAGRonATPcNUMxfVrpOC8aq1L+zb1F56zrx7g6MPqkFA0S3+T8cHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB4775.namprd11.prod.outlook.com (2603:10b6:510:34::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.33; Fri, 16 May
 2025 17:09:37 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8722.031; Fri, 16 May 2025
 17:09:37 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <stable@vger.kernel.org>
Subject: [PATCH] drm/i915/dp_mst: Work around Thunderbolt sink disconnect
 after SINK_COUNT_ESI read
Date: Fri, 16 May 2025 20:09:46 +0300
Message-ID: <20250516170946.1313722-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZP191CA0070.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4fa::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB4775:EE_
X-MS-Office365-Filtering-Correlation-Id: 102e8ea2-2c0e-43e9-d593-08dd949c6fe6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?X+cYR1gSXtDscSCVYqo8YFQt06MX4QLqo4zDKPpWzb+445cvWV/kyqCx/N5P?=
 =?us-ascii?Q?2Qyql3LRjvommvar1f+Tx8/DgsB1azX3kGVi0TcLqpcwMT9gRfCSdCFxGyha?=
 =?us-ascii?Q?uy49xHrz1o6lc2ySYxmr4pEyCs5hL1VYFoByntBJUKlbtU3IVZDMsXPpqdVR?=
 =?us-ascii?Q?PovBA9xKEpYwwhGhimPNE44CrueRnaE34q1N/I0USNusmIh4oGqr9wi/V1ts?=
 =?us-ascii?Q?n3b6JfZ0efOdXyUEXFYKnImTVwPUQ2P4P6Lr1Yws+aMjkkfkMdc/r8/lsOLF?=
 =?us-ascii?Q?h/SUBC2HUtFvsLkcFfz3lKx5vKccw9h4Cn0JOfjKeHkDaVenP+qWJSbQNL8+?=
 =?us-ascii?Q?k/I2omLBnlpP9VIkYUPMmOWdQD1mQFZ+sHzITQJYdtstnMR84widBPg1rLuM?=
 =?us-ascii?Q?YwPlboyNzm8FS5AfAKftSFilojiVb/gClGz1We6GnmxKLOimcO3WphUC07kc?=
 =?us-ascii?Q?xxr0zrm6+dI0Kj0WlSFOr2SKgJ/T+TRA/AyLLRUWNhSHhMWHEp1kEXpR/VWw?=
 =?us-ascii?Q?KNYepzdc2l+KCP69nseBTCEIfUt1BzU3bPbg5W6tEAR9nzVpEGYx2ru5Jq8j?=
 =?us-ascii?Q?6642YqyTF/d1xRcIy6lGCqWcMszmpJWu5ZXSIbc1d4XhBtlKmHVmm/3FgAct?=
 =?us-ascii?Q?MK8F5yzC2RP9TfIn92k2EttKsbxQjQsV5SmigSXxfxIy8HAcBcucQaj4hzQo?=
 =?us-ascii?Q?bgHsxoSV3yEA1UVdWlsTeme2qfGFcpv3rV04PKlul2p3wywmJVnPMe5epDFU?=
 =?us-ascii?Q?OkWIethkfAMcCWKPsd6M2nMqcIwJvfW0jHlcG2mcaiDWKe9Wd3U83a8BR19x?=
 =?us-ascii?Q?dKTdDtIN7GXPwhTkzPj7ZfVGDyWEEz2tmbbSSccV7Nvhtrq6KA/H9j7ohnDl?=
 =?us-ascii?Q?tfJvJhwfVHKcw/BH2ip615PciCWK/LduXZBlMjgkY46hIheK0F9WS3tcNoTs?=
 =?us-ascii?Q?yuWxGPskhtqGrSH4EOav+xou6Rl+st1sWpr4NC4rqfzGVbDSeyQ9ZDPKKA3l?=
 =?us-ascii?Q?JwqjpORWhT34skZbBHYoXbEnI1wvxOHnf4PHMs6ZXUF56sOwvLAW7+fN76Od?=
 =?us-ascii?Q?yGLRoY+N8anXquC08ZOmajoz3eXf5HVHG+95Rc/oghO6b8XuS8jVUSWPjW2E?=
 =?us-ascii?Q?gq1NQ27Z7ZFKhRWNqySJEZicX+GH1FMJEkt2taygtpgAfzs6Vbj4Gy9MemG7?=
 =?us-ascii?Q?RO273O0q1N9JoMaUUTwKuG/zL/nLRWl/NHANfZBPlYhIykfR3sqZ/DSjIIlk?=
 =?us-ascii?Q?ojLGip/lVz1eIQhOHVIiw6CRlKYlr1o1cDbBQDytO1IuhQP2BxOEbSqEwRWp?=
 =?us-ascii?Q?NZ7YY9OgzchwFnv+TeMe5Xh+OX2RyO4VNwhLKEq6N1yI//BBQb19yEDx9v/8?=
 =?us-ascii?Q?8IPQU+A=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TXj72IGRSJT0+zH4G9SKi22Q06XEceLAoAnbuFXJvtb5J8JyV8i/Dq7eMUVW?=
 =?us-ascii?Q?oyxC+Ef1qVLvvGg3khBDIihgeO8nZ7U9Ggjgh4UNqkWe7BDN/Z1CUCT+G83l?=
 =?us-ascii?Q?rAZ1PwegoOewA6HvNN02SkKXIeUgMAHNHL63z65zjO7zM6FNO3zXkqCl+Wp1?=
 =?us-ascii?Q?WTfHeVF98TgOApf4DFYMYzI/RGfgQQEPTLpxVZz5paFpWG9z/RoTTFvj9/35?=
 =?us-ascii?Q?i9hqswRM1nMPKgWwDHZREwmEGMgGQUHmyH36+2o92q26vdoC0/LOfG3PF/RT?=
 =?us-ascii?Q?vF1xEjpcDkSxrTN1QnWywYhnu7QPLmbmfHQTHrVmz0j5nB8QrRNs7DhBcAbV?=
 =?us-ascii?Q?h/ke6iJg9idcC5GnJmHrO7fzpgzTbur0BD1yj1zXQ2Skt6zLt7P3O368xS7F?=
 =?us-ascii?Q?oqupxOPc9b6dxu08zxWzSHKmDjM1KTQhFuPJi90BChmyuHSptsiuGiX8wo/N?=
 =?us-ascii?Q?nvXswy7opYJc+WkoiNePlyKa9KOeDS+26H9h8E4mudGvh+7IqFvWjFmPYMRC?=
 =?us-ascii?Q?ubva8eH5mEVW4X/pBqaDUhX9XCwTqIbIXMLPCsjw3VX6PNE3p0SRko4PCo0y?=
 =?us-ascii?Q?R8zR7CRMu7BHqJumQm2uv8JtXvGaJ9jhrDwX3Kb2ZOynA6XiY7TcbMkUPvZA?=
 =?us-ascii?Q?gNomMyK9x6iyF4QmNYwbLyKvt3cipf1Xv9Lsf0eJ9VMHhP0T7QgXfYrnTyr6?=
 =?us-ascii?Q?u84zsp0TFl3iNVS7cJ39aSJYvvees6NrXxPHor/ER33mTSBjeHV9/Gxbsvid?=
 =?us-ascii?Q?JdPuQeQnTTXRLcaLpDTou01EXu4LfKEZPZvpCr21EUsXZ9lIY+LSuw/gHKYh?=
 =?us-ascii?Q?iskl1NeJGI7GIZImCkcgCEk8Wm9iyWqIMsHu1feqXidfgchwA5KR4sVgMGIU?=
 =?us-ascii?Q?HwddEQTGFFILhjlqsoFgIMgHScjHsLETL2Rlp9De27Faae4/WW7Qv4bXM3Jw?=
 =?us-ascii?Q?pJtbqVXdrhw0RmiKl7u8+WdVDArGYr2ccxWinlueLVFGBN+Xyq9GCDNQfX+4?=
 =?us-ascii?Q?mYYenTe/cPK/vD8Y/aIl+++6ss7AQ1GhCYOGTyEM+Bh5zxvftDhFwoQ6F/wY?=
 =?us-ascii?Q?jOAuXEb7Kr3Nrbnq9zV5MptAuK1D/yCa4tjXGmBMtZMVXcSNZTgpiNIc5WpD?=
 =?us-ascii?Q?z2xfDhZLxNNJXrW543q4k2EiqOfPx2lWzlr6dd+Jw5d8ck/d+24FiMlbOzCA?=
 =?us-ascii?Q?JZnSTVmszmZXxUXSDV+YbXHgmTlwOaUf3q8XLvbrOoyiPW8LgF/nR5OlTSQa?=
 =?us-ascii?Q?Ytd5R3RsD7+u7KFQmrXo9sfy1BzOPQ2DMzODOHCD17dSvzmm+7axw68Fdt5+?=
 =?us-ascii?Q?WwQs2PAgK5AFv7zR3luLYJEOZvo9HWIYIuUZIBkeur6KANTVdp+iAKUNU1lN?=
 =?us-ascii?Q?x+L0xn/0CvrTTWCMaGrHrKIMGfGSzVTGT8IYh791tmaljVoJ6WqFp53CRUUj?=
 =?us-ascii?Q?t9D4yFcilS3P5t6pZTh3cMV//QT3Wn74kyjNLJkkWpRyiFhCztOOzNrQMjuv?=
 =?us-ascii?Q?POzO41yVtGsFJkAzsybTZGESDwAwlTSgSU3IYouW2pjbumgEONrsAQsi8N98?=
 =?us-ascii?Q?XmpUZWAE2VMBzjEDbdea2nn3yAQUDDfadNAW/uuV?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 102e8ea2-2c0e-43e9-d593-08dd949c6fe6
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2025 17:09:37.1786 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pD724aDRTSEwXlIFB8Y3zQXkJVFeVxkqR8xtmDXDZTVXmDdlomZznkD5SiwAqhh3JI3XZtmUVuuXo8YniTOhgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4775
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

Due to a problem in the iTBT DP-in adapter's firmware the sink on a TBT
link may get disconnected inadvertently if the SINK_COUNT_ESI and the
DP_LINK_SERVICE_IRQ_VECTOR_ESI0 registers are read in a single AUX
transaction. Work around the issue by reading these registers in
separate transactions.

The issue affects MTL+ platforms and will be fixed in the DP-in adapter
firmware, however releasing that firmware fix may take some time and is
not guaranteed to be available for all systems. Based on this apply the
workaround on affected platforms.

See HSD #13013007775.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13760
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14147
Cc: stable@vger.kernel.org
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 21297bc4cc00d..208a953b04a2f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4538,6 +4538,23 @@ intel_dp_mst_disconnect(struct intel_dp *intel_dp)
 static bool
 intel_dp_get_sink_irq_esi(struct intel_dp *intel_dp, u8 *esi)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	/*
+	 * Display WA for HSD #13013007775: mtl/arl/lnl
+	 * Read the sink count and link service IRQ registers in separate
+	 * transactions to prevent disconnecting the sink on a TBT link
+	 * inadvertently.
+	 */
+	if (IS_DISPLAY_VER(display, 14, 20) && !display->platform.battlemage) {
+		if (drm_dp_dpcd_read(&intel_dp->aux, DP_SINK_COUNT_ESI, esi, 3) != 3)
+			return false;
+
+		/* DP_SINK_COUNT_ESI + 3 == DP_LINK_SERVICE_IRQ_VECTOR_ESI0 */
+		return drm_dp_dpcd_readb(&intel_dp->aux, DP_LINK_SERVICE_IRQ_VECTOR_ESI0,
+					 &esi[3]) == 1;
+	}
+
 	return drm_dp_dpcd_read(&intel_dp->aux, DP_SINK_COUNT_ESI, esi, 4) == 4;
 }
 
-- 
2.44.2

