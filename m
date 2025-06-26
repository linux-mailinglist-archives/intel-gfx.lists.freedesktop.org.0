Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D33AE9818
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 10:21:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C6FE10E86D;
	Thu, 26 Jun 2025 08:21:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h5Ztdryf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8015910E28D;
 Thu, 26 Jun 2025 08:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750926085; x=1782462085;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=qrIlBjmsQCvne1hrllDWtJVoDjLD7Jsozw1C0mYXuIo=;
 b=h5ZtdryfcoJOUiQyzgSFEJ6O7HUb7K+dYZoivUyBKauZaJ5VA9d+t5Ud
 qvBsMhwk1LwWRYrIgFYsoDRexLwpB3GS5onOl3zlHZ88pCmtfXxZ2baxa
 JSKbd6Mt0s1dUnYhb6/MeFyRINdzia9cxS7uHQ9+/KQwaIGD3MgTkeTdZ
 xPZw0T7D2+sR9TKeUhI1nXuc6RSF6KkSw24ftdfZvy7JYb+1cUR9B/m06
 b2mAJDM7qs69mKOmkPoB9SqWdY2yNNaI5JcAqBUjIcc6rsz5TvdItf0pY
 mtEYNOSArU/kaQTBB5Sl+G1lCkvLo9pwFSdRqQ/puwsqDn2XmGLdVo7Lm A==;
X-CSE-ConnectionGUID: UvkTJvTeS8uY2A+SufgGBQ==
X-CSE-MsgGUID: w8M5alQ4QwCMR+BV0775fw==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="57019395"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="57019395"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:25 -0700
X-CSE-ConnectionGUID: Ian98aR3SOG1Otvvq1Q88g==
X-CSE-MsgGUID: VIQkr5eASNmsetGlOet4Aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="152070072"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:24 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 01:21:24 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.66)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Eux/75Ckq5+HgbNv7DNGiCXalkNaMxZltUJP/BUx41VUOiLGhcAUIu42wEjiPcZ7WSWUOXn/XR0c48KhXB1RxN/GiFGuUsy6U11mJuH0V64u6qigMD3JopNCKPU5XCrYwIzf0aV2wXN8vchJGQt7tVKgdIlnZgnDx0n4oCy5X/azXZGm8u6lM6+x0LBJsur1qBKB6sNsR1dzLqi2KHu68RrlGq+Ps6GO2bLQ46WpOBXRbRlh7RyGCyiNY0sT+U9NEqpvw0YFbWgBt3NOXNSjYvMzdmkx437bLEyuSPlp0sJOzCqfettQ+7I7X0DYJlUEdJ6/9h5SU1Xxb0VakeC0zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XKn98jnsLFRVTj0aK0qIAnDbqK3QIM+TaZuu2ulhawg=;
 b=O96chtfjdEk293IndSliiQkoJYvSzKFw34AwiCXGhH5IGTMdvk4e0k+2mN268JL4rJS/h6Y6JjOwR+Op9CC73lCkkpQFi1jAR2gmrhWw2rTJn7R9atrO7567mlS19olp1Mz56UTUs9kBDjzaCOibUtIKtdswSJSNwbynHbNrM7pT/HG6kCoON9Vwl0kuIXaH+TjmvIH+ChLRGVPjEjaQ7BNLMl9olckZGdKOVvLtOKvBaTdaRajYB1k9RgRtpglfCzN45X26/IS1gKgyMEO9bboBeJwejmda/og4o+qp/pDOHjP44jclHN203f8e6YBm+sc0+9QrJuSFcxLmPsdl+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPF8EC896901.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::844) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Thu, 26 Jun
 2025 08:21:22 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 08:21:22 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH 15/20] drm/i915/dp: Read/ack sink count and sink IRQs for SST
 as it's done for MST
Date: Thu, 26 Jun 2025 11:20:48 +0300
Message-ID: <20250626082053.219514-16-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250626082053.219514-1-imre.deak@intel.com>
References: <20250626082053.219514-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P302CA0020.GBRP302.PROD.OUTLOOK.COM
 (2603:10a6:600:2c1::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ5PPF8EC896901:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f590fe4-ca53-4b51-d00c-08ddb48a6ed0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?h9MPPG2GxtJiRjLrVJK4NTBG0+QdMPkII3Kjn38069bYKlgRKI/HW4pnefc3?=
 =?us-ascii?Q?yRQR9MiZSm+Y+bZdloK6x5KaNlrZVROY6CVli8SrB/1gmt44fIt31S/dI1N+?=
 =?us-ascii?Q?5JL8ggRideMacqHIBtiKCP1w/VE8Mi8hUVRfyAtPLV+bQyYoiH8nVriAC20+?=
 =?us-ascii?Q?I8pEH7G5GOM/w8GamD3jNbMx4wDgPYh0DbYB9ELJmHk+7V9TZhGEOriEk69E?=
 =?us-ascii?Q?vkzU6xl9pSaciy0pzovZn3yIf3p2RdVgOzIt5IFUPK6LodiKe5dVn526ou5P?=
 =?us-ascii?Q?nnpsEf2l2Vie0AWBPRgP3kSMAq5oov/od/T+hCrfBsnBv0jDHzHo+Ch6TU1T?=
 =?us-ascii?Q?KkizVcsp5uYFrRypxWbV+Tj+AWVQmsL3HuaVCk8Zi3HvevZUeIBGsZbn1bzl?=
 =?us-ascii?Q?cHWQx1/v8LZfzGSIKzfUKShqOpUgBlr+q3owJyj8frXfgbFLY5gdv0Xu/otb?=
 =?us-ascii?Q?vZp+X3L+iUzDhbYYKy9f5KlsjGXX+P1kVSK+P6kuF8l9yPUui9Uw1W7MiNS+?=
 =?us-ascii?Q?JxrWRRS/oIBoc/YhKQd2VWaUbF3E/9O5MHHFoua7PBGdfV5wghsXb5yoaOJN?=
 =?us-ascii?Q?ThOPZLVKasv2Y8MFsXopO7dLpH7/Nku2onT+FN4Ip42rPd2YwIfpsdS/4pOW?=
 =?us-ascii?Q?J/wyo8MR68BHXWac43+bkDGGbpuqvPr0kPTgkr1MhtHy2cTff+D290h5nTQf?=
 =?us-ascii?Q?5ivklyZkcK2J/zP2xCCqC2VqXTIyZ1qWpIrXPIag/zJikqR5B74AI2kTIU4G?=
 =?us-ascii?Q?9T1mKyjoPAgg+hAQWemydYedwTTytuthjvUzSQloOd6yLICgc1KYEqdzEO4Y?=
 =?us-ascii?Q?D73DpMqETAlWMYYz3mdUm7+ia9AVYquParKRo2ntf79fm0n3KuILW9HeIVSQ?=
 =?us-ascii?Q?b8HYuedaRscyrSvNdPibjwTi/jS5Dg4c/T7tpgA8E5/dBprSlFZZmI7ZBtxH?=
 =?us-ascii?Q?nrx3GFQurZTXkVtnyKDYse46K5c83a/5BmGG0nBahrJxqlQkMD8LmiZt4KzY?=
 =?us-ascii?Q?1m/IQHo7z4MSkb5wpuzGL+fcII5dspXPTPiMePpeZAgK9+sww/OogEnP2U3g?=
 =?us-ascii?Q?m3evXFTqWmF0q7aXllSH8Z7Bt7plZkacUCOHoQVomPcOU/9z6AiJ+YqpjtTq?=
 =?us-ascii?Q?0ysxR6zeJl1zHzgD/L4waNjbypmcdfie/aj8sRLglZ1Ec9l6QdeoY3vpsY/V?=
 =?us-ascii?Q?8CV4HmfYWjSPjZGjNSatDpf1OO9uayC5G7tdoXUOSq5Uo+Tcsjvza/zu4hmk?=
 =?us-ascii?Q?hg1i2k860TM8S/O0kLk5ZSllu7EEnTeu5EE7spJ74U53jAd/cEDt+q/W5j3o?=
 =?us-ascii?Q?Wt4MIYeg/YqhDxEdYP7P7cnwMRXDmOeV890qDo/6WUpUwcAW+Ily/6fdqIoV?=
 =?us-ascii?Q?XlobPoGofEccmbUCqvr2nOdSNQUzZxKS7tP3h9+wbr1pRZu6Bw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?d10kCko/R8kKZROEllb26H2fvLitZiOYM7A2A0g7iKWT2T8b54kNlpvU6tIK?=
 =?us-ascii?Q?7N6ZosDgcLTO51JZfDbfMVty3ElsY2lpDMFPU+bDyd0TC8e6PiQMeM1soQbx?=
 =?us-ascii?Q?U3N2BIGZ8gTGBuq16HxazB7Y7d/S/ewHmy4pJgEEvyXXHhhA++vBO1mvFP0W?=
 =?us-ascii?Q?/yYxkCrB/zCQ/p+j0JBc9dHGWnLacwVzuww4HXUuB+YRwGpEdveazV4Ak5tQ?=
 =?us-ascii?Q?YRzJgwhxTYyKNF+sapMAGdibRWqruAhZ1X2bhKdPtj7XYFeKv9Me1wzZcdjS?=
 =?us-ascii?Q?OyMi8V10fWgbxVWEHJh8Nwp68+eHAEVjJMNPZgyZzD8U7w1mFTCCOxNHtE79?=
 =?us-ascii?Q?Ygo2h5CxKytY8IkCL27APt+TYJ5fMEMzjgHJYGxgUGsKKniBAkrCvRDOZSn0?=
 =?us-ascii?Q?yR2qL7ic8DCGRxvyAonoPzlSM58IcbS1FmtEwLGC/Iyca2sI2w2YtnE+xpZo?=
 =?us-ascii?Q?Ri2TdVAvsBbytUyDuGrzb3/Ie3zvJqzWYjEjyVwx8VmaZJcLXSNvO0zczhdu?=
 =?us-ascii?Q?vrq4CwLWTSz2OAlEURDAiFusY3833RBuivDawUPnbPbcbCevAjtq4cCW9AiU?=
 =?us-ascii?Q?W9mPgPmmVW9rbTmYPgyNAJba4OdR0JLkeZNoUKax+w9PUwGrujFDW2A74bvh?=
 =?us-ascii?Q?CaieLEPHAlBY/BwEnHYAry1Ml+1bWPZfiyibp0RzYjURCY/AmuifOP198uoh?=
 =?us-ascii?Q?W61YE3ELRDquc9dolffg4OEMs+mRh1iid6h4+x6DG1yj/resytYHZ0lJaOY2?=
 =?us-ascii?Q?//GtisIahdTM7YgpyjQ3sVcaEaJzWCIXQlFbxV5GSDoOriu1ZtV9UFYRwMwu?=
 =?us-ascii?Q?s2DJ56fBqhNvUsw6qIpbIbfmgAK3TOjXrm5w6rYGcdcZ15Jo7AKjXcSJjcJR?=
 =?us-ascii?Q?XJiDLzkF6L3pVOpZL84G77125MoxsVCYmSgCiVxZXBOwEQwzO7aSkbyf7it1?=
 =?us-ascii?Q?vxOUwpCaWf+zwhEQWQAIjb07dPDeRfv/q3ARluRiMbUS1gX7D3McOyfif1Cl?=
 =?us-ascii?Q?MALFR3L9hL6MWfUEvJteuz3DsQZ9F6c+QqVR8SyM87erg0cOMcA/GuLEEget?=
 =?us-ascii?Q?gsekpZ9d9OCCPg+19IGVy5gyK0GM/oHDfTxOiBX9ciV6qrpMNPPsvK7nnAF1?=
 =?us-ascii?Q?ST96BD80QMxpkLeDIG+ODxmHcDJmsZmHQWUWegScz+uQxj6/WK+gqyVemMqD?=
 =?us-ascii?Q?O1Ce4YhPv5/5fJRQiGgNXiY7qQNDSfeHhcQtoXIssubbGgonuDKZmnOLhfV3?=
 =?us-ascii?Q?wAIzBfQ3TL7b+rW6nDL1iAgWdTdSGWcnpglFabfo6LRs/pSIrzTNjhO2d11D?=
 =?us-ascii?Q?x74xnT86rZHn7Ys5BS2ArKfizghN8CVgMUM//S0GLw/T113SlVpdhssUlS8l?=
 =?us-ascii?Q?mWpYRwrda5O5vduzxlvyOaEnAq61JsruWGqVQ2vFzK2CL4UbLgW89UQOMX5s?=
 =?us-ascii?Q?AxBvW8B2FUnyDrAQIoVncjhaEh4nZXwTrG21PlXLFLPtsa4HIdh5OoVuOX34?=
 =?us-ascii?Q?UoC+iyb8NgrIMUQ6g9ZjsGogLEuD0uz14lDhfIc7/TVy4pQuk4P8IzRkfT7d?=
 =?us-ascii?Q?O8WfD5rQt9TBPyVmBzpkl8v5VQhA2+WtQ11q8OuQ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f590fe4-ca53-4b51-d00c-08ddb48a6ed0
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 08:21:21.9229 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1nqLrnvFTOu9KSxfR4/86Wpww9e9hdt30K75OjtuOXh8Jm+Vjn05M5QrY80H2juxyNIViJ/GJ8Tir35WNzCVCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8EC896901
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

From: Imre Deak <imre.deak@gmail.com>

Read and ack the sink count, sink device and link service IRQs for SST
the same way this is done for MST, the read/ack happening in separate
steps via an ESI (Event Status Indicator) vector.

The above way is more efficient, since on newer (DPCD_REV >= 1.2) sinks
the DP_SINK_COUNT_ESI..DP_LINK_SERVICE_IRQ_VECTOR_ESI0 registers can be
read out in one AUX transaction - and the 3 last one written in one
transaction. Also this allows sharing more of the SST and MST IRQ
handling code (done as a follow-up).

For now keep the current behavior of always reading the legacy
DP_SINK_COUNT, DP_DEVICE_SERVICE_IRQ_VECTOR registers and not reading
the DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1 register.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 132 +++++++++++++-----------
 1 file changed, 73 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2ba4a810f22c2..2e6ed7d2a64a6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4573,6 +4573,70 @@ static bool intel_dp_ack_sink_irq_esi(struct intel_dp *intel_dp, u8 esi[4])
 	return false;
 }
 
+static bool intel_dp_get_sink_irq_esi_sst(struct intel_dp *intel_dp, u8 esi[4])
+{
+	memset(esi, 0, 4);
+
+	/*
+	 * TODO: For DP_DPCD_REV >= 0x12 read
+	 * DP_SINK_COUNT_ESI and DP_DEVICE_SERVICE_IRQ_VECTOR_ESI0.
+	 */
+	if (drm_dp_dpcd_read_data(&intel_dp->aux, DP_SINK_COUNT, esi, 2) != 0)
+		return false;
+
+	if (intel_dp->dpcd[DP_DPCD_REV] < DP_DPCD_REV_12)
+		return true;
+
+	/* TODO: Read DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1 as well */
+	if (drm_dp_dpcd_read_byte(&intel_dp->aux, DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &esi[3]) != 0)
+		return false;
+
+	return true;
+}
+
+static bool intel_dp_ack_sink_irq_esi_sst(struct intel_dp *intel_dp, u8 esi[4])
+{
+	/*
+	 * TODO: For DP_DPCD_REV >= 0x12 write
+	 * DP_DEVICE_SERVICE_IRQ_VECTOR_ESI0
+	 */
+	if (drm_dp_dpcd_write_byte(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, esi[1]) != 0)
+		return false;
+
+	if (intel_dp->dpcd[DP_DPCD_REV] < DP_DPCD_REV_12)
+		return true;
+
+	/* TODO: Read DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1 as well */
+	if (drm_dp_dpcd_write_byte(&intel_dp->aux, DP_LINK_SERVICE_IRQ_VECTOR_ESI0, esi[3]) != 0)
+		return false;
+
+	return true;
+}
+
+static bool intel_dp_get_and_ack_sink_irq_esi_sst(struct intel_dp *intel_dp, u8 esi[4])
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_connector *connector = intel_dp->attached_connector;
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+
+	if (!intel_dp_get_sink_irq_esi_sst(intel_dp, esi))
+		return false;
+
+	drm_dbg_kms(display->drm,
+		    "[CONNECTOR:%d:%s][ENCODER:%d:%s] DPRX ESI: %4ph\n",
+		    connector->base.base.id, connector->base.name,
+		    encoder->base.base.id, encoder->base.name,
+		    esi);
+
+	if (mem_is_zero(&esi[1], 3))
+		return true;
+
+	if (!intel_dp_ack_sink_irq_esi_sst(intel_dp, esi))
+		return false;
+
+	return true;
+}
+
 bool
 intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
 		       const struct drm_connector_state *conn_state)
@@ -5393,27 +5457,6 @@ void intel_dp_check_link_state(struct intel_dp *intel_dp)
 	intel_encoder_link_check_queue_work(encoder, 0);
 }
 
-static bool intel_dp_get_and_ack_device_service_irq(struct intel_dp *intel_dp, u8 *irq_mask)
-{
-	u8 val;
-
-	*irq_mask = 0;
-
-	if (drm_dp_dpcd_readb(&intel_dp->aux,
-			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1)
-		return false;
-
-	if (!val)
-		return true;
-
-	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val) != 1)
-		return false;
-
-	*irq_mask = val;
-
-	return true;
-}
-
 static void intel_dp_handle_device_service_irq(struct intel_dp *intel_dp, u8 irq_mask)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -5428,31 +5471,6 @@ static void intel_dp_handle_device_service_irq(struct intel_dp *intel_dp, u8 irq
 		drm_dbg_kms(display->drm, "Sink specific irq unhandled\n");
 }
 
-static bool intel_dp_get_and_ack_link_service_irq(struct intel_dp *intel_dp, u8 *irq_mask)
-{
-	u8 val;
-
-	*irq_mask = 0;
-
-	if (intel_dp->dpcd[DP_DPCD_REV] < DP_DPCD_REV_12)
-		return true;
-
-	if (drm_dp_dpcd_readb(&intel_dp->aux,
-			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) != 1)
-		return false;
-
-	if (!val)
-		return true;
-
-	if (drm_dp_dpcd_writeb(&intel_dp->aux,
-			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1)
-		return false;
-
-	*irq_mask = val;
-
-	return true;
-}
-
 static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_mask)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -5489,30 +5507,26 @@ static bool
 intel_dp_short_pulse(struct intel_dp *intel_dp)
 {
 	bool reprobe_needed = false;
-	u8 irq_mask;
+	u8 esi[4] = {};
 
 	intel_dp_test_reset(intel_dp);
 
+	if (!intel_dp_get_and_ack_sink_irq_esi_sst(intel_dp, esi))
+		return false;
+
 	/*
-	 * Now read the DPCD to see if it's actually running
 	 * If the current value of sink count doesn't match with
-	 * the value that was stored earlier or dpcd read failed
-	 * we need to do full detection
+	 * the value that was stored earlier we need to do full
+	 * detection.
 	 */
 	if (intel_dp_has_sink_count(intel_dp) &&
-	    drm_dp_read_sink_count(&intel_dp->aux) != intel_dp->sink_count)
+	    DP_GET_SINK_COUNT(esi[0]) != intel_dp->sink_count)
 		/* No need to proceed if we are going to do full detect */
 		return false;
 
-	if (!intel_dp_get_and_ack_device_service_irq(intel_dp, &irq_mask))
-		return false;
+	intel_dp_handle_device_service_irq(intel_dp, esi[1]);
 
-	intel_dp_handle_device_service_irq(intel_dp, irq_mask);
-
-	if (!intel_dp_get_and_ack_link_service_irq(intel_dp, &irq_mask))
-		return false;
-
-	if (intel_dp_handle_link_service_irq(intel_dp, irq_mask))
+	if (intel_dp_handle_link_service_irq(intel_dp, esi[3]))
 		reprobe_needed = true;
 
 	/* Handle CEC interrupts, if any */
-- 
2.44.2

