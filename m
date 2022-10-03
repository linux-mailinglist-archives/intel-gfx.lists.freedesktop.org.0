Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8DB5F2F4C
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 13:08:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D13610E308;
	Mon,  3 Oct 2022 11:08:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FD1F10E308
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 11:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664795309; x=1696331309;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=XOLKi1vsOYJB4SZ7AM8VI/WTq6cjwbTYRiwjlV5xi/o=;
 b=hoW2YMRFcnMMoXB6puCsdXRXbe2kAaGPCZsHlfQcL5oZzuViEnnJBoTA
 Nq5FRG7j4HrA0idbe74Zb2V6b0FgF15DJkZo60qmRAHteZKC64NWCUsGl
 aAldWJhNp5zZuM8xHZYlw4HRc++d9tb6KhMPGJUl4ruu0NZuYKFwZKmOu
 I/mNnIrmzc+qp0AsToC1TD9qxVc5nwcifXa+rzhzBhs1j1hGE6eWNH9GB
 iW34Cpi9YZ/4YVGXe3e4onKZKCjE+JclMYXQ+qs2eOx+sR029cVR6dUmO
 U+ZMSHlyv3I/5Gh93NVYk5vGNVQgga3f+JfVwDEbQpSz274i2ARXiEJ5b Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="282976314"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="282976314"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 04:08:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="868548972"
X-IronPort-AV: E=Sophos;i="5.93,365,1654585200"; d="scan'208";a="868548972"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 03 Oct 2022 04:08:29 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 04:08:28 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 04:08:28 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 3 Oct 2022 04:08:28 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 3 Oct 2022 04:08:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XfNcg6vl5pKQACAvzDHy/3z1PH9pSpMLl/1FZNdKnJm/SGeY6hu58UbwO4VZ5b3OPohsOjnaxCn3V6uK26YQJGRCPbkYUSfYRwdMtuIhfdjOcw4iyCn++cqm/QpYP4b+KYmbrXbkZcFrpAEo0PyMZXb7KYZ+5HSxhoOnP6rS2X45Hk+5lQro2deH8fyjg1fcZLDmVT/XAf+AG9KGTxP6eMQZSccV3K728z/2eoY6J+0mcwKBccetMEDWy3T5QmJoKtpmXCvevEusLIE9BZrapWQ7ahcvRK1uTUBHKIFCOOKFHu2MFlUhHiNyMaEOLoggzex2cofkwrItFIr10cTZsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9AKEGV3JiZ9jz3RJp6JGA4JUwvxlEI6Jt12uKNBT8i0=;
 b=YTqE60rdTdFQumNKNt3tuWaFSxfdwC93tYqRIp9sZ8oJLUqWVATuyQzVQ3H7oWLZk2FAQsYQChXm86IpxkfV0hIDVzKPQ+EkVQwE6huCjXeFmvPUfyRTWkML8T7xTmGlhCD0tqOuOg62uEcXaicZjJm0i9GwNx7iAk89/CtRsv5tg8B5cZu7d7Cxd760v4BS1ksFn4QDuLXLLxOUJJglqLlqz8kt0BdzZyvRV0CXu+iGPCBI8Z35/c8obrR6ouaodj8VTAKTCvplizYhpxR5vYu8HxhtTbenwwj82Q5SVT7plbgLp3cOL98/98SB76UXSsB5c/NOs2EQnAEHjyKe9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 PH7PR11MB6476.namprd11.prod.outlook.com (2603:10b6:510:1f0::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.28; Mon, 3 Oct
 2022 11:08:26 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5676.028; Mon, 3 Oct 2022
 11:08:26 +0000
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Mon, 3 Oct 2022 16:37:55 +0530
Message-ID: <20221003110759.140398-3-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221003110759.140398-1-balasubramani.vivekanandan@intel.com>
References: <20221003110759.140398-1-balasubramani.vivekanandan@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PN2PR01CA0055.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:22::30) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|PH7PR11MB6476:EE_
X-MS-Office365-Filtering-Correlation-Id: 568a8eaa-6b31-4576-5f43-08daa52f9845
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dL2Qzq5Sa+gQ8tPFVcYNxqGwCHNe6J9dqjG8w+8U1K82/wW12eLGhrEsZJJH5fBgP72i46PLjknEDF4QQPPOhoVTSM89bKVBQ0NVa3rHcFAWl9I/Mwmut9nRrM3Vp3+UaUwMLLOanntiyKu3W+u+0G8TrztyBuglGkYlpV9olxazHY2UlTGkXKOaoudT1gX3BFLSX7QNsW4RK6S5QPsr0njUptMunWASe42a/DpqF9c1kSbvvncqOw3r9gZssCNSRWMoJa3SSPsFET3vbKSTg0UYBXkoDxTD/9I57ZPsRUXwo8XfS7t6Slfe3jPatYGRkkGmRZMFzaCxqC2zAzvzSZYcwbK5pyexxNbImGVCkA6MsRg47GEGvF/Kalx1sWcqAOBYAGKVkVFApIL6UP3r6yE9VpZClVV5q3Id4X49CBfAj0rg6gHrUI9esXCzL78649rQnbI+Pd7fhYOgs1Vsk5Zl7P4XsNN+aCwNnYYyeG/XOP08lderE+LQklSfBIdIWF1FqVhYqJmMhVo6R6toBIqNSsm8v0LX62hCCQaMj+Rhrv8y95W2mh/YMnctLIWBe6KMGHy1OKW70WhdMPoAbVmTIvTyObDAlKuNaBQyq3ZP1wWfQxf6skF5pYlRG0V7+AFmJMHer0LDy0QyLILLT04je4ISHgJV8j7V9ouIrZmNr77wsPPM+Shkm6Pbe/JsUmi/NH4uz0M7kZfKkQNV5g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(136003)(346002)(376002)(39860400002)(451199015)(26005)(54906003)(36756003)(6666004)(8936002)(5660300002)(44832011)(6512007)(6506007)(478600001)(6486002)(2906002)(82960400001)(38100700002)(2616005)(1076003)(186003)(86362001)(83380400001)(4326008)(316002)(8676002)(66946007)(66476007)(66556008)(41300700001)(6916009);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Wm2t7UvNZW4/bzdaqy5PnEYLBvqWrettUGuc/HZBCWDbRbWl2C8J03XmHEUa?=
 =?us-ascii?Q?5A6bIi0xiKgSCOw3S8bCjc1eYl2T0wlZyKQN1nqQ7ef6zKMEhtWbakz+W72b?=
 =?us-ascii?Q?s+2brts/HbJJR2RAxANzxOfj2jyRyMAOYu2kHjXcI4OjsNVkH2gh7a9654PG?=
 =?us-ascii?Q?4bm8NStrkz66CmR94mEJgx/uwtS6oSIYF25dIHknZrvq4L6AXj6pMk0L2mkW?=
 =?us-ascii?Q?YSSZu6Z54w2pB5E8tK8vgWX49X2E5VFlbEuQWblgiXprh+W74XRX/KLSaXra?=
 =?us-ascii?Q?ITbZQNjsGsG02ZYIVpef1arr3ggqhOCJYhPtbAqC29y3zIiU1NhonEHb6Yya?=
 =?us-ascii?Q?4yni2ta9bNmFvrKHGC9b+6gZUOlm4ZjHXEFyVpwAj9ftbor4ShrHNjqaGYCc?=
 =?us-ascii?Q?ogZ50w+pI6IafFZu5kq16k0wvBa5jkIxNMAw9WJfSaBPEJIbzbZ4Px63JF2U?=
 =?us-ascii?Q?WZklFiTPPpH154RZar5WJY36bDPOG/RISuGNNu11HnT+AxkP6B8ixcWfVEQZ?=
 =?us-ascii?Q?IWAr4WqMtcf+x+X1HbjM/S21DwMDbCH8M5yiYBtLzt68dJau9rW+F98KegqO?=
 =?us-ascii?Q?Wtx17vNMymddNFXdrs1fmBniP3FThabG9kpG8AFkEhh9azyyLKZRSia7ddj7?=
 =?us-ascii?Q?pxdeaCfH1w1meNDDKfWdy7k0/PvvEThOhQ49EZSaXwyaD2YDOgq/qMrpBuAZ?=
 =?us-ascii?Q?0IxPoE7xiptXgVJkzLfxqNiaL8oJHbyb1y0NG4O5IlzQAmgZztMhWOzSHLm4?=
 =?us-ascii?Q?54y6Ky490EGHQ7rEWa3gq2IB9OmSrYwQvZaWyDb7XZlljz8njAaw+PHAZ/Kl?=
 =?us-ascii?Q?xVQFyzQzdhRtNtskRfNotPqNTGFKPjH4nV7bE3SBADBxNIhHWYmUTdwUyBwK?=
 =?us-ascii?Q?6t11YF/6uYCFSiJJXIB67/7+JbFKMx1Z+/s0Bu0nS+4sb+RNIxn1g+813nC2?=
 =?us-ascii?Q?326/T2xqdbbTsn2nalmW7Rm20rX+6C225F3cG+ghk6a89czU89qH2u0+EgLd?=
 =?us-ascii?Q?CByAglCujXc7G/cFroDooIsFC0TYFegDcAPRMq0VOGB8/x8dO0dMqsKSBY48?=
 =?us-ascii?Q?mVyiTmjSd9paofcHschvi38kKe2X/7MWkFzLpYhNcb8c8FoyPxFQ+D3psTNt?=
 =?us-ascii?Q?bB7wjtwyeFGIWNVlhC0rUPsjLvWp/ez2bBu80VxsNVUhlFCbvlYofDIvVOQn?=
 =?us-ascii?Q?r9DTgUwulh3SJozU6T3iPWyVajjUQbL9tt3XgHGWJBPp5xZYKi2ZsyFcrLM4?=
 =?us-ascii?Q?csH/LGz/9TWEt+Ge0iN9mhw3Cdj4uoqPkmu3zBF2bqXH5oh4woBxJYwyW7Bl?=
 =?us-ascii?Q?7uaeCT2HgUGZSjzrulkLBUIbIZjBLUytEaqTl7xkZZOOARqPqcj0aJ3RrWxB?=
 =?us-ascii?Q?n8wAcOIrKmpB5Kj/MUDBk+igJJsVr8zH5Km8IQjkyxtcbodBDhLt4YzSYT7L?=
 =?us-ascii?Q?EyoFapkfdrpSPM1p/smlZTNV8x0baFyn99EfocAE1l04jZMJ0ME/VvxfJbz/?=
 =?us-ascii?Q?bzK7T2oD+safjePHwQ0Fw3nz2DmiRxrTnDi/qdhHz6aOtHv1ad5HWRBLJJq8?=
 =?us-ascii?Q?G/yWvSXDsh6L19Ayg2Sr8AhtKvkDVr5HX4FKXJrGe8u/ijFhHhyzwQuLeWmb?=
 =?us-ascii?Q?Jmwp61q2egXmJ2TybgCQP/Y=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 568a8eaa-6b31-4576-5f43-08daa52f9845
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2022 11:08:26.4950 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JBMnJUczNJ6GhWwB23ksWoQ36ZTWicSpw68YgPUsiwSTTeZnYms4BcgF/yv8m137yIC0Ul+2zP/FQwZLv4Clr3wQsL7hviBcf/YpRycmfCzcByzMJtdWOra5l0VRag3v
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6476
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH v4 2/6] drm/i915/display: Define the DDI port
 indices inside device info
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

Prior to display version 12, platforms had DDI ports A,B,C,D,E,F
represented by enums PORT_A,PORT_B...PORT_F. The DDI register offsets of
the ports was in the same order as the ports. So the port enums
were directly used as index to calculate the register offset of the
ports.
Starting in display version 12, TypeC ports were introduced in the
platforms. These were defined as new enums PORT_TC1,PORT_TC2... The
later generation platforms had DDI register offests of TypeC and
non-TypeC ports interleaved and the existing port enums didn't match the
order of the DDI register offests. So the enums could no more be used as
index to calculate the register offest.
This led to the creation of new platform specific enums for the ports
like PORT_D_XELPD, PORT_E_XELPD to match the index of the ports in those
platforms and additional code to handle the special enums.

So we want to make the port enums not tied to DDI register offset and
use the index from somewhere else to calculate the register offsets.
The index of the DDI ports in the platform is now defined as part of
device info. This patch just adds the indices to the device info. Later
patches in the series use that index for offset calculation.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c          | 46 ++++++++++++++++++++++--
 drivers/gpu/drm/i915/intel_device_info.h |  1 +
 2 files changed, 44 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 38460a0bd7cb..b37a95755b77 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -132,6 +132,42 @@
 		[PIPE_D] = TGL_CURSOR_D_OFFSET, \
 	}
 
+#define GEN75_DDI_INDEX \
+	.display.ddi_index = { \
+		[PORT_A] = 0, \
+		[PORT_B] = 1, \
+		[PORT_C] = 2, \
+		[PORT_D] = 3, \
+		[PORT_E] = 4, \
+		[PORT_F] = 5, \
+	}
+
+#define GEN12_DDI_INDEX \
+	.display.ddi_index = { \
+		[PORT_A] = 0, \
+		[PORT_B] = 1, \
+		[PORT_C] = 2, \
+		[PORT_TC1] = 3, \
+		[PORT_TC2] = 4, \
+		[PORT_TC3] = 5, \
+		[PORT_TC4] = 6, \
+		[PORT_TC5] = 7, \
+		[PORT_TC6] = 8, \
+	}
+
+#define XE_LPD_DDI_INDEX \
+	.display.ddi_index = { \
+		[PORT_A] = 0, \
+		[PORT_B] = 1, \
+		[PORT_C] = 2, \
+		[PORT_TC1] = 3, \
+		[PORT_TC2] = 4, \
+		[PORT_TC3] = 5, \
+		[PORT_TC4] = 6, \
+		[PORT_D_XELPD] = 7, \
+		[PORT_E_XELPD] = 8, \
+	}
+
 #define I9XX_COLORS \
 	.display.color = { .gamma_lut_size = 256 }
 #define I965_COLORS \
@@ -562,7 +598,8 @@ static const struct intel_device_info vlv_info = {
 	.display.has_dp_mst = 1, \
 	.has_rc6p = 0 /* RC6p removed-by HSW */, \
 	HSW_PIPE_OFFSETS, \
-	.has_runtime_pm = 1
+	.has_runtime_pm = 1, \
+	GEN75_DDI_INDEX
 
 #define HSW_PLATFORM \
 	G75_FEATURES, \
@@ -733,7 +770,8 @@ static const struct intel_device_info skl_gt4_info = {
 	IVB_CURSOR_OFFSETS, \
 	IVB_COLORS, \
 	GEN9_DEFAULT_PAGE_SIZES, \
-	GEN_DEFAULT_REGIONS
+	GEN_DEFAULT_REGIONS, \
+	GEN75_DDI_INDEX
 
 static const struct intel_device_info bxt_info = {
 	GEN9_LP_FEATURES,
@@ -887,6 +925,7 @@ static const struct intel_device_info jsl_info = {
 		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET, \
 	}, \
 	TGL_CURSOR_OFFSETS, \
+	GEN12_DDI_INDEX, \
 	.has_global_mocs = 1, \
 	.has_pxp = 1, \
 	.display.has_dsb = 0 /* FIXME: LUT load is broken with DSB */
@@ -984,7 +1023,8 @@ static const struct intel_device_info adl_s_info = {
 		[TRANSCODER_DSI_0] = TRANSCODER_DSI0_OFFSET,			\
 		[TRANSCODER_DSI_1] = TRANSCODER_DSI1_OFFSET,			\
 	},									\
-	TGL_CURSOR_OFFSETS
+	TGL_CURSOR_OFFSETS,							\
+	XE_LPD_DDI_INDEX
 
 static const struct intel_device_info adl_p_info = {
 	GEN12_FEATURES,
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index bc87d3156b14..a93f54990a01 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -292,6 +292,7 @@ struct intel_device_info {
 		u32 pipe_offsets[I915_MAX_TRANSCODERS];
 		u32 trans_offsets[I915_MAX_TRANSCODERS];
 		u32 cursor_offsets[I915_MAX_PIPES];
+		u32 ddi_index[I915_MAX_PORTS];
 
 		struct {
 			u32 degamma_lut_size;
-- 
2.34.1

