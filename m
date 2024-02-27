Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F68869982
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 15:58:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA23110E877;
	Tue, 27 Feb 2024 14:58:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RqolX/iW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A63F710E8A0;
 Tue, 27 Feb 2024 14:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709045934; x=1740581934;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=b2NICrn2bV/2dPl6SbJWRYxOcY+Rcp4fvVA9sttb9eE=;
 b=RqolX/iW56WUTHlwytcDOckizCGFT6zerYc7lqofFoch56ojmyV0C1m2
 ZTXIIoDeUHZU2Eh9IA80xBDzL8ZGBZ9k46vYTXgIplVAM0hrUSJs3gvBd
 D15tlwSrXV/eVJsp0Fszs+2R8tEHAYzZO4LJMh5Fa7zbf32jhmyHXRBbS
 Xf10KD/jXM7Z3J/ctq9WjxND3MRuX5+FHe8PbmHNMUgSNtO/TkRA6oTIU
 inZG9c6oZOsuAkkLCjL6h5qZkjAQNOb+siZ4teQT7HkvM23s1Vnw0U1X6
 vYy+cItjXGMOv3wRshGRwiuSw/hdioAwrX4Mqpq2mnUyHOZZpINqWdSKo Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="6337659"
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; 
   d="scan'208";a="6337659"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 06:58:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; d="scan'208";a="37883398"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2024 06:58:52 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 27 Feb 2024 06:58:51 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 27 Feb 2024 06:58:51 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 27 Feb 2024 06:58:51 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 27 Feb 2024 06:58:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Irlgxgq9Sxjz1nEnymO6smojrnVXjjHu2Nc0pNNrHaBGAUzNcwvp7xSs1yzsyi0q6khPJKAa/bscZnZMB7C4Y48MvFtvGpjWfCxYE77UPtBEbXOgUJ19qe9C1+orQlTFWwp+O/mqMAFJ+aDppeEy5EANKLGRY5owy8xJQ9bgNLEH5fyPtbBDhuBXn5wAOhANDQ/QiuFE5FdFK07ChXxc07y5m75ZyUnxEE9kjcFUkSeXKfJFICviPkgP6Akjmum9GGbBguy5cGSOuhNZQuQH011eUzo5AxZwhHsi/GOVD4YGqNLVpffPMgPJtePxv9N//0jVLMCO+++uJP8ZVkKpMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gib7EoWCOsHnbRrIBEx2XrZdD2GK48m+LK0kPlBgkwc=;
 b=gL5Dujntdnk1Mc9Ow5nHzAeDs344n8LNLd8CfbKaU6A+nWVfMiKbRppDjgyksSzzgn9cAbv1HnvuEzfROj/PUwH4S2Tm++pSmFJJte0+pzRylRG3u/6ywj0BLbDbPefgTp4wUNEx5Mqdcue579ZU6eKfCL4NvFh1b/cElHvK24L16mkv8jwCFmIAdky9Bo8tenyCI70BRunZRAHaXdSZPpgiFarbtDpG6C1JQqzH2sdmR1kYg63PrqoocAiZB7NtkBxPUwGlIavNz0X+ll0fMABc823kmOqPhO0kASf9zLzBJRS1BKgD8yMa1jOQBN1x/PTUk26LPvj3tStH/2ZkhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY5PR11MB6366.namprd11.prod.outlook.com (2603:10b6:930:3a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.13; Tue, 27 Feb
 2024 14:58:45 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7339.024; Tue, 27 Feb 2024
 14:58:45 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <vinay.belgaumkar@intel.com>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jani Nikula
 <jani.nikula@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [RFC 2/3] drm/i915: Add experimental GuC SLPC display metrics
Date: Tue, 27 Feb 2024 09:58:30 -0500
Message-ID: <20240227145833.490328-3-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240227145833.490328-1-rodrigo.vivi@intel.com>
References: <20240227145833.490328-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR13CA0148.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::33) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CY5PR11MB6366:EE_
X-MS-Office365-Filtering-Correlation-Id: ca21dcb4-69bc-4588-5ee0-08dc37a49780
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gr8qmTl37G5sCoJwAi+eNJdIn3pJizio1ea8IBGVN6MoZRbJKj8apjfsOMSgvG/wO0wqLVJiYuYH05eiigv9QyC1zDkcbqwOS6jA5cOMivzJnN+w6MGZFF8rTlMMrckt5DvRwd7w/T4v7YDj7U4uU1Y/STsN+V+M4nHfQhiOVAZGzG/ZNoKmKFFNbO71Zom/F+Sf9jp/Uw+q8qjwzb63QKIbezqXqQojKCw+jtfWVw6umz6r8bsSGxizJEwF/WA/XATESeVVYMinD18cSZgggx5sM13v0qWUvBYNODfpIj7qLtxTJn40XfC8tWE8k3CCDesFK7Oyy2kWlRkSe3LvDGs42VfVovpZ/H9S2gjHeAsygsx9NA+jeE1biRLWQA//azIiDtmNOnhsV8BNlaCupgRo1YAi4TCU9h5sutpGC76J5/qpNx6x4pOnx8ClHSuLZaMqlyqX+DXvr/qcMEiVDO58hvFJs+C+knWYGs7wlNVipnXuHhH8FA0jVtLzylfZPcTkv9aViSf9WAf0SpQKQuY8dLeoAQiCLx4SKWZjjRFGk/clgROr2Ojw1XEMFK9GB8pLnXMOHJj1hQ7qlCvOcxJqS5PSzQg6TQjTKQikfKQ0oYVdsrQf0Rm7jaq/kZ5Q
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dYV1DtL6GvyjFkBK9h3mak+ZllVxSzk3MY0MaoHexSbdIm8IzYBI01C0DVmT?=
 =?us-ascii?Q?ZjpjWstAsLRofuYsYxDuME1vfWmbJgjlWPgDHYhzh4pO+X2GbRMGUWnUblXl?=
 =?us-ascii?Q?RRPwNz+9lzN/8xexwb8MY1vhcppJa1CGUMnPmzPyc8rIeIZD7BDfeVPmqNGp?=
 =?us-ascii?Q?GQhyjWXvTSpLv+FiZZppKuo+a348D3LeW+Mh06hQjUl2xeFFMSFUJF0oPEot?=
 =?us-ascii?Q?kAuapeWZh8xKTj94ulvvJWywNvvM7At3qbxN6ViWiBZIrYKJF27/rvi9jJ6A?=
 =?us-ascii?Q?WcaqEw+inzhgK+bRr+MpYSg/Q5U2vJKyFb3AeQmtH1bZ3zFuILM7/l0OiJTt?=
 =?us-ascii?Q?jgYXKt8SIJp410kLGJ/rIrO/PADawTbmS2TLo2DAyE/d8v0AuE5E5LRV2zL9?=
 =?us-ascii?Q?Pf4vdXEOW7LtjcDWmLci+qUs8uYFRiwXk3hUxEMdWbPoZt9u3N7QpP02kjR/?=
 =?us-ascii?Q?VKbe0pU/SOQ7PSbwJ43yVQ5bRpnX6UYBiG3QTHs1u4pldIEyQ3t2twLxNvYI?=
 =?us-ascii?Q?kpemniFOfK7hZyO76FpoU0BIUg/sEEok74AC3qfKU31wJhVeO6ctiDExUIe7?=
 =?us-ascii?Q?MdfAD786xG8rU5MBMe9+peJXwhY1lElO3b1QbWBsiu9GO1+mAvi4aaM7vxP+?=
 =?us-ascii?Q?EJfQcN19H9QhSY32TBrwNAnOZJGfrX7ho6p69mTndxavTCH0rEkVgH74whxh?=
 =?us-ascii?Q?GiXzm0c+8EpUHlF/qb0QCM2zXO/RKk0064PiT3rGYKXE9Bo9FNNSwIaKmbHp?=
 =?us-ascii?Q?9p7J96BTJak/KvLwj0aZ5Lug0waIGRgGefXiPG6W/qy6LN6HjRyAPCECKdXb?=
 =?us-ascii?Q?ReVmLmN06Krhp/3Mqqj1nHwB5i6TCGplC7NDVOAZglqYmT4OI2+0V6jakKpK?=
 =?us-ascii?Q?exktrV5SbaaXHrXK5M74HDgolAjaBsrZ/bWVAY6pN0xpaCntOTloVZk7gcI4?=
 =?us-ascii?Q?2KumDCvXcpDoUyAQrCIss7BVGJBiskCJ8MpS0C9zUxKndi/dbT8leEMZX2B8?=
 =?us-ascii?Q?+Xf+ROn0gw8HUHP49hdeLmUIoKkCH5G//U52kSDXvzmWSjgMt15GhdG15baJ?=
 =?us-ascii?Q?5Y3ABnsK0y0sLMwB6/EMngjjmslVLksr7HsElbLU7ZnVjYomCyvq6xFqKPOW?=
 =?us-ascii?Q?rDWRhXRu59iRLUOImqZ9vK57t+pwb1qU9RVPncJx7NIPLaq3gSPKTOIHFArK?=
 =?us-ascii?Q?DixLmDOmYtChxATXYIwpT5UZhfLVNhn2SjOlZSBIRx8mb9UxbVAFfcBMcwcA?=
 =?us-ascii?Q?8hGL/NRvYkJHYh9ku0mnoE4iPzbWqp1ruVZ18b3e6MSlFPAo1j0SMz7/oS93?=
 =?us-ascii?Q?cFLMofEytUps0i+ImD7uFCyVdmSeRT0byyXq8QnQ4XyFpeLYTo4OPRnoi08a?=
 =?us-ascii?Q?/5hWtvV8qijtQQumjF+BqoAfA5llFq3OxAt2eH0gcJgGjd/Br691Xokh1MTe?=
 =?us-ascii?Q?U4V/UPkACsoWksisv12UeMS1b8xncb8fyhyXB9/2beDBbKlP8yx9uZyOOp2X?=
 =?us-ascii?Q?hCa+ia/rjUn94eAc5evoRd7kwuNUxW+XDII+7zDpEOF6QL2ef6hVyeXtGI3c?=
 =?us-ascii?Q?E4DDg1lZ+sgkDaS85pyZsuVNRbgGpZgx0g703iG/?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ca21dcb4-69bc-4588-5ee0-08dc37a49780
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2024 14:58:43.7539 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VEfBWSbr6neYGIlggdRh4GV54lzJo12L+NDOcDEKiWLOP5aH9t0HQBGiqgMgBV6IKx4R9Hci3EGMzHZBhKM0wg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6366
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

On i915 GuC SLPC will only be able to really control the freq
if we disable the waitboost. So this is a hacky and experimental
only change with the intention to debug the available metrics
with i915.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c           |   9 +
 .../drm/i915/gt/uc/abi/guc_actions_slpc_abi.h |  59 ++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   | 271 +++++++++++++++++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h   |   6 +
 .../gpu/drm/i915/gt/uc/intel_guc_slpc_types.h |   4 +
 drivers/gpu/drm/i915/i915_params.c            |   2 +-
 drivers/gpu/drm/i915/i915_params.h            |   4 +-
 7 files changed, 345 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 4feef874e6d6..20fe9d6c1953 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1010,6 +1010,15 @@ void intel_rps_boost(struct i915_request *rq)
 {
 	struct intel_guc_slpc *slpc;
 
+	/*
+	 * XXX: For now, skip the boost itself, but later the full machinery
+	 * of the waitboost including some variable handles and extra locks
+	 * could be avoided.
+	 */
+	if (rq->i915->params.enable_guc & ENABLE_GUC_SLPC_VBLANK ||
+	    rq->i915->params.enable_guc & ENABLE_GUC_SLPC_FLIP)
+		return;
+
 	if (i915_request_signaled(rq) || i915_request_has_waitboost(rq))
 		return;
 
diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h
index 811add10c30d..8a2fdfd20c0d 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h
@@ -122,6 +122,11 @@ enum slpc_param_id {
 	SLPC_MAX_PARAM = 32,
 };
 
+#define SLPC_OPTIMIZED_STRATEGIES_COMPUTE	REG_BIT(0)
+#define SLPC_OPTIMIZED_STRATEGIES_ASYNC_FLIP	REG_BIT(1)
+#define SLPC_OPTIMIZED_STRATEGIES_MEDIA		REG_BIT(2)
+#define SLPC_OPTIMIZED_STRATEGIES_VSYNC_FLIP	REG_BIT(3)
+
 enum slpc_media_ratio_mode {
 	SLPC_MEDIA_RATIO_MODE_DYNAMIC_CONTROL = 0,
 	SLPC_MEDIA_RATIO_MODE_FIXED_ONE_TO_ONE = 1,
@@ -207,6 +212,60 @@ struct slpc_shared_data {
 	u8 reserved_mode_definition[4096];
 } __packed;
 
+#define SLPC_MAX_PIPES			8
+#define SLPC_MAX_PLANES_PER_PIPE	8
+
+struct slpc_display_global_info {
+	u32 version:8;
+	u32 num_pipes:4;
+	u32 num_planes_per_pipe:4;
+	u32 reserved_1:16;
+	u32 refresh_count:16;
+	u32 vblank_count:16;
+	u32 flip_count:16;
+	u32 reserved_2:16;
+	u32 reserved_3[13];
+} __packed;
+
+struct slpc_display_refresh_info {
+	u32 refresh_interval:16;
+	u32 is_variable:1;
+	u32 reserved:15;
+} __packed;
+
+/*
+ * The host must update each 32-bit part with a single atomic write so
+ * that SLPC will read the contained bit fields together. The host must
+ * update the two parts in order - total flip count and timestamp first,
+ * vsync and async flip counts second.
+ * Hence, these items are not defined with individual bitfields.
+ */
+#define SLPC_FLIP_P1_LAST		REG_GENMASK(31, 7)
+#define SLPC_FLIP_P1_TOTAL_COUNT	REG_GENMASK(6, 0)
+#define SLPC_FLIP_P2_ASYNC_COUNT	REG_GENMASK(31, 16)
+#define SLPC_FLIP_P2_VSYNC_COUNT	REG_GENMASK(15, 0)
+
+struct slpc_display_flip_metrics {
+	u32 part1;
+	u32 part2;
+} __packed;
+
+/*
+ * The host must update this 32-bit structure with a single atomic write
+ * so that SLPC will read the count and timestamp together.
+ * Hence, this item is not defined with individual bitfields.
+ */
+#define SLPC_VBLANK_LAST	REG_GENMASK(31, 7)
+#define SLPC_VBLANK_COUNT	REG_GENMASK(6, 0)
+
+struct slpc_display_data {
+	struct slpc_display_global_info global_info;
+	struct slpc_display_refresh_info refresh_info[SLPC_MAX_PIPES];
+	u32 vblank_metrics[SLPC_MAX_PIPES];
+	struct slpc_display_flip_metrics
+	flip_metrics[SLPC_MAX_PIPES][SLPC_MAX_PLANES_PER_PIPE];
+} __packed;
+
 /**
  * DOC: SLPC H2G MESSAGE FORMAT
  *
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 3e681ab6fbf9..911f54e8fa19 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -8,6 +8,8 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "display/intel_display_guc_metrics.h"
+#include "display/intel_display_guc_metrics_types.h"
 #include "intel_guc_slpc.h"
 #include "intel_guc_print.h"
 #include "intel_mchbar_regs.h"
@@ -241,20 +243,179 @@ static void slpc_boost_work(struct work_struct *work)
 	mutex_unlock(&slpc->lock);
 }
 
+static void slpc_display_data_init(struct slpc_display_data *data, int version,
+				   int num_pipes, int num_planes_per_pipe)
+{
+	data->global_info.version = version;
+	data->global_info.num_pipes = num_pipes;
+	data->global_info.num_planes_per_pipe = num_planes_per_pipe;
+}
+
+static void slpc_refresh_info(struct slpc_display_data *data, int pipe,
+			      u32 refresh_interval, bool vrr_enabled)
+{
+	data->refresh_info[pipe].refresh_interval = refresh_interval;
+	data->refresh_info[pipe].is_variable = vrr_enabled;
+	data->global_info.refresh_count += 1;
+}
+
+static void slpc_vblank(struct slpc_display_data *data, int pipe,
+			u32 timestamp)
+{
+	u32 vblank;
+
+	vblank = data->vblank_metrics[pipe];
+
+	vblank = REG_FIELD_GET(SLPC_VBLANK_COUNT, vblank);
+	vblank = REG_FIELD_PREP(SLPC_VBLANK_COUNT, vblank + 1);
+	vblank |= REG_FIELD_PREP(SLPC_VBLANK_LAST, timestamp);
+
+	data->vblank_metrics[pipe] = vblank;
+	data->global_info.vblank_count += 1;
+}
+
+static void slpc_flip(struct slpc_display_data *data, int pipe, int plane,
+		      bool async_flip, u32 timestamp)
+{
+	u32 part1, part2, count;
+
+	part1 = data->flip_metrics[pipe][plane].part1;
+	part2 = data->flip_metrics[pipe][plane].part2;
+
+	part1 = REG_FIELD_GET(SLPC_FLIP_P1_TOTAL_COUNT, part1);
+	part1 = REG_FIELD_PREP(SLPC_FLIP_P1_TOTAL_COUNT, part1 + 1);
+	part1 |= REG_FIELD_PREP(SLPC_FLIP_P1_LAST, timestamp);
+
+	if (async_flip) {
+		count = REG_FIELD_GET(SLPC_FLIP_P2_ASYNC_COUNT, part2);
+		part2 &= ~SLPC_FLIP_P2_ASYNC_COUNT;
+		part2 |= REG_FIELD_PREP(SLPC_FLIP_P2_ASYNC_COUNT, count + 1);
+	} else {
+		count = REG_FIELD_GET(SLPC_FLIP_P2_VSYNC_COUNT, part2);
+		part2 &= ~SLPC_FLIP_P2_VSYNC_COUNT;
+		part2 |= REG_FIELD_PREP(SLPC_FLIP_P2_VSYNC_COUNT, count + 1);
+	}
+
+	data->flip_metrics[pipe][plane].part1 = part1;
+	data->flip_metrics[pipe][plane].part2 = part2;
+
+	data->global_info.flip_count += 1;
+}
+
+static void intel_guc_slpc_refresh_info_update(void *gfx_device, int pipe,
+					       u32 refresh_interval,
+					       bool vrr_enabled)
+{
+	struct drm_i915_private *i915 = gfx_device;
+	struct intel_gt *gt;
+	int i;
+
+	if (pipe > SLPC_MAX_PIPES) {
+		drm_err(&i915->drm, "GuC PC Max display pipe exceeded\n");
+		return;
+	}
+
+	for_each_gt(gt, i915, i)
+		slpc_refresh_info(gt->uc.guc.slpc.display.vaddr, pipe,
+				  refresh_interval, vrr_enabled);
+}
+
+#define MCHBAR_BCLK_COUNT	_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5984)
+#define MTL_BCLK_COUNT		_MMIO(0xc28)
+#define   TIMESTAMP_MASK	REG_GENMASK(30, 6)
+
+static u32 bclk_read_timestamp(struct intel_gt *gt)
+{
+	u32 timestamp;
+
+	if (IS_METEORLAKE(gt->i915))
+		timestamp = intel_uncore_read_fw(gt->uncore, MTL_BCLK_COUNT);
+	else
+		timestamp = intel_uncore_read_fw(gt->uncore, MCHBAR_BCLK_COUNT);
+
+	return REG_FIELD_GET(TIMESTAMP_MASK, timestamp);
+}
+
+static void intel_guc_slpc_vblank_update(void *gfx_device, int pipe)
+{
+	struct drm_i915_private *i915 = gfx_device;
+	struct intel_gt *gt;
+	u32 timestamp;
+	int i;
+
+	if (!(i915->params.enable_guc & ENABLE_GUC_SLPC_VBLANK))
+		return;
+
+	if (pipe > SLPC_MAX_PIPES) {
+		drm_err(&i915->drm, "GuC PC Max display pipe exceeded\n");
+		return;
+	}
+
+	for_each_gt(gt, i915, i) {
+		timestamp = bclk_read_timestamp(gt);
+		slpc_vblank(gt->uc.guc.slpc.display.vaddr, pipe, timestamp);
+	}
+}
+
+static void intel_guc_slpc_flip_update(void *gfx_device, int pipe, int plane,
+				       bool async_flip)
+{
+	struct drm_i915_private *i915 = gfx_device;
+	struct intel_gt *gt;
+	u32 timestamp;
+	int i;
+
+	if (!(i915->params.enable_guc & ENABLE_GUC_SLPC_FLIP))
+		return;
+
+	if (pipe > SLPC_MAX_PIPES) {
+		drm_err(&i915->drm, "GuC PC Max display pipe exceeded\n");
+		return;
+	}
+
+	if (plane > SLPC_MAX_PLANES_PER_PIPE) {
+		drm_err(&i915->drm, "GuC PC Max display planes exceeded\n");
+		return;
+	}
+
+	for_each_gt(gt, i915, i) {
+		timestamp = bclk_read_timestamp(gt);
+		slpc_flip(gt->uc.guc.slpc.display.vaddr, pipe, plane,
+			  async_flip, timestamp);
+	}
+}
+
+static struct intel_display_guc_metrics guc_metrics = {
+	.refresh_info_update = intel_guc_slpc_refresh_info_update,
+	.vblank_update = intel_guc_slpc_vblank_update,
+	.flip_update = intel_guc_slpc_flip_update,
+};
+
 int intel_guc_slpc_init(struct intel_guc_slpc *slpc)
 {
 	struct intel_guc *guc = slpc_to_guc(slpc);
-	u32 size = PAGE_ALIGN(sizeof(struct slpc_shared_data));
+	struct drm_i915_private *i915 = guc_to_i915(guc);
+	u32 size;
 	int err;
 
 	GEM_BUG_ON(slpc->vma);
 
+	size = PAGE_ALIGN(sizeof(struct slpc_shared_data));
 	err = intel_guc_allocate_and_map_vma(guc, size, &slpc->vma, (void **)&slpc->vaddr);
 	if (unlikely(err)) {
 		guc_probe_error(guc, "Failed to allocate SLPC struct: %pe\n", ERR_PTR(err));
 		return err;
 	}
 
+	size = PAGE_ALIGN(sizeof(struct slpc_display_data));
+	err = intel_guc_allocate_and_map_vma(guc, size, &slpc->display.vma,
+					     (void **)&slpc->display.vaddr);
+	if (unlikely(err)) {
+		guc_probe_error(guc, "Failed to allocate SLPC's display struct: %pe\n",
+				ERR_PTR(err));
+		return err;
+	}
+
 	slpc->max_freq_softlimit = 0;
 	slpc->min_freq_softlimit = 0;
 	slpc->ignore_eff_freq = false;
@@ -265,6 +426,10 @@ int intel_guc_slpc_init(struct intel_guc_slpc *slpc)
 	slpc->num_boosts = 0;
 	slpc->media_ratio_mode = SLPC_MEDIA_RATIO_MODE_DYNAMIC_CONTROL;
 
+	if (i915->params.enable_guc & ENABLE_GUC_SLPC_VBLANK ||
+	    i915->params.enable_guc & ENABLE_GUC_SLPC_FLIP)
+		intel_display_guc_metrics_init(i915, &i915->display, &guc_metrics);
+
 	mutex_init(&slpc->lock);
 	INIT_WORK(&slpc->boost_work, slpc_boost_work);
 
@@ -357,12 +522,28 @@ static u32 slpc_decode_max_freq(struct intel_guc_slpc *slpc)
 				  GT_FREQUENCY_MULTIPLIER, GEN9_FREQ_SCALER);
 }
 
-static void slpc_shared_data_reset(struct slpc_shared_data *data)
+static void slpc_shared_display_data_reset(struct intel_guc_slpc *slpc)
 {
-	memset(data, 0, sizeof(struct slpc_shared_data));
+	struct slpc_shared_data *data = slpc->vaddr;
+	struct slpc_display_data *display_data = slpc->display.vaddr;
+
+	memset(display_data, 0, sizeof(struct slpc_display_data));
+
+	slpc_display_data_init(slpc->display.vaddr, 1, SLPC_MAX_PIPES,
+			       SLPC_MAX_PLANES_PER_PIPE);
+	data->header.display_data_addr = intel_guc_ggtt_offset(slpc_to_guc(slpc),
+							       slpc->display.vma);
+}
+
+static void slpc_shared_data_reset(struct intel_guc_slpc *slpc)
+{
+	struct slpc_shared_data *data = slpc->vaddr;
 
+	memset(data, 0, sizeof(struct slpc_shared_data));
 	data->header.size = sizeof(struct slpc_shared_data);
 
+	slpc_shared_display_data_reset(slpc);
+
 	/* Enable only GTPERF task, disable others */
 	slpc_mem_set_enabled(data, SLPC_PARAM_TASK_ENABLE_GTPERF,
 			     SLPC_PARAM_TASK_DISABLE_GTPERF);
@@ -672,7 +853,7 @@ int intel_guc_slpc_enable(struct intel_guc_slpc *slpc)
 
 	GEM_BUG_ON(!slpc->vma);
 
-	slpc_shared_data_reset(slpc->vaddr);
+	slpc_shared_data_reset(slpc);
 
 	ret = slpc_reset(slpc);
 	if (unlikely(ret < 0)) {
@@ -711,6 +892,10 @@ int intel_guc_slpc_enable(struct intel_guc_slpc *slpc)
 	/* Set cached media freq ratio mode */
 	intel_guc_slpc_set_media_ratio_mode(slpc, slpc->media_ratio_mode);
 
+	slpc_set_param_nb(slpc, SLPC_PARAM_STRATEGIES,
+			  SLPC_OPTIMIZED_STRATEGIES_VSYNC_FLIP |
+			  SLPC_OPTIMIZED_STRATEGIES_ASYNC_FLIP);
+
 	return 0;
 }
 
@@ -755,6 +940,67 @@ void intel_guc_slpc_dec_waiters(struct intel_guc_slpc *slpc)
 	mutex_unlock(&slpc->lock);
 }
 
+static void slpc_print_display_metrics(struct drm_printer *p,
+				       struct slpc_display_data *data)
+{
+	int pipe, plane;
+	u32 val;
+
+	drm_printf(p, "\nSLPC Display Data - Globals:\n");
+	drm_printf(p, "\tVersion: %d\n", data->global_info.version);
+	drm_printf(p, "\tNum Pipes: %d\n", data->global_info.num_pipes);
+	drm_printf(p, "\tNum Planes per Pipe: %d\n",
+		   data->global_info.num_planes_per_pipe);
+	drm_printf(p, "\tGlobal Refresh Info Count: %d\n",
+		   data->global_info.refresh_count);
+	drm_printf(p, "\tGlobal Vblank Count: %d\n",
+		   data->global_info.vblank_count);
+	drm_printf(p, "\tGlobal Flip Count: %d\n",
+		   data->global_info.flip_count);
+
+	for (pipe = 0; pipe < SLPC_MAX_PIPES; pipe++) {
+
+		if (!data->refresh_info[pipe].refresh_interval)
+			continue;
+
+		drm_printf(p, "\nSLPC Display Data - Refresh Info - Pipe[%d]:\n",
+			   pipe);
+		drm_printf(p, "\tRefresh Interval: %d\n",
+			   data->refresh_info[pipe].refresh_interval);
+		drm_printf(p, "\tIS VRR: %d\n",
+			   data->refresh_info[pipe].is_variable);
+
+		drm_printf(p, "SLPC Display Data - Vblank Info - Pipe[%d]:\n",
+			   pipe);
+		val = data->vblank_metrics[pipe];
+		drm_printf(p, "\tVBlank Last Timestamp: %x\n",
+			   REG_FIELD_GET(SLPC_VBLANK_LAST, val));
+		drm_printf(p, "\tVBlank Count: %d\n",
+			   REG_FIELD_GET(SLPC_VBLANK_COUNT, val));
+
+		drm_printf(p, "SLPC Display Data - Flip Info - Pipe[%d]:\n", pipe);
+		for (plane = 0; plane < SLPC_MAX_PLANES_PER_PIPE; plane++) {
+
+			val = data->flip_metrics[pipe][plane].part1;
+			if (!val)
+				continue;
+
+			drm_printf(p, "\tFlip Info - Plane[%d]:\n", plane);
+			drm_printf(p, "\t\tFlip Last Timestamp: %x\n",
+				   REG_FIELD_GET(SLPC_FLIP_P1_LAST, val));
+			drm_printf(p, "\t\tFlip Total Count: %d\n",
+				   REG_FIELD_GET(SLPC_FLIP_P1_TOTAL_COUNT, val));
+
+			val = data->flip_metrics[pipe][plane].part2;
+
+			drm_printf(p, "\t\tFlip Async Count: %d\n",
+				   REG_FIELD_GET(SLPC_FLIP_P2_ASYNC_COUNT, val));
+			drm_printf(p, "\t\tFlip Vsync Count: %d\n",
+				   REG_FIELD_GET(SLPC_FLIP_P2_VSYNC_COUNT, val));
+		}
+	}
+}
+
 int intel_guc_slpc_print_info(struct intel_guc_slpc *slpc, struct drm_printer *p)
 {
 	struct drm_i915_private *i915 = slpc_to_i915(slpc);
@@ -778,10 +1024,18 @@ int intel_guc_slpc_print_info(struct intel_guc_slpc *slpc, struct drm_printer *p
 				   slpc_decode_max_freq(slpc));
 			drm_printf(p, "\tMin freq: %u MHz\n",
 				   slpc_decode_min_freq(slpc));
-			drm_printf(p, "\twaitboosts: %u\n",
-				   slpc->num_boosts);
-			drm_printf(p, "\tBoosts outstanding: %u\n",
-				   atomic_read(&slpc->num_waiters));
+
+			if (i915->params.enable_guc & ENABLE_GUC_SLPC_VBLANK ||
+			    i915->params.enable_guc & ENABLE_GUC_SLPC_FLIP) {
+				if (data->header.display_data_addr)
+					slpc_print_display_metrics(p,
+								   slpc->display.vaddr);
+			} else {
+				drm_printf(p, "\twaitboosts: %u\n",
+					   slpc->num_boosts);
+				drm_printf(p, "\tBoosts outstanding: %u\n",
+					   atomic_read(&slpc->num_waiters));
+			}
 		}
 	}
 
@@ -793,5 +1047,6 @@ void intel_guc_slpc_fini(struct intel_guc_slpc *slpc)
 	if (!slpc->vma)
 		return;
 
+	i915_vma_unpin_and_release(&slpc->display.vma, I915_VMA_RELEASE_MAP);
 	i915_vma_unpin_and_release(&slpc->vma, I915_VMA_RELEASE_MAP);
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
index 6ac6503c39d4..71f33e4aceaf 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
@@ -45,5 +45,11 @@ void intel_guc_pm_intrmsk_enable(struct intel_gt *gt);
 void intel_guc_slpc_boost(struct intel_guc_slpc *slpc);
 void intel_guc_slpc_dec_waiters(struct intel_guc_slpc *slpc);
 int intel_guc_slpc_set_ignore_eff_freq(struct intel_guc_slpc *slpc, bool val);
+void intel_guc_slpc_display_init(struct intel_guc_slpc *slpc);
+void intel_guc_slpc_refresh_info(struct intel_guc_slpc *slpc, int pipe,
+				 u32 refresh_info, bool vrr_enabled);
+void intel_guc_slpc_vblank(struct intel_guc_slpc *slpc, int pipe, u64 count);
+void intel_guc_slpc_flip(struct intel_guc_slpc *slpc, int pipe, int plane,
+			 bool vrr_enabled);
 
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
index a88651331497..edd944d3be8a 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
@@ -16,6 +16,10 @@
 struct intel_guc_slpc {
 	struct i915_vma *vma;
 	struct slpc_shared_data *vaddr;
+	struct {
+		struct i915_vma *vma;
+		struct slpc_display_data *vaddr;
+	} display;
 	bool supported;
 	bool selected;
 
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index de43048543e8..f86968feabc8 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -96,7 +96,7 @@ i915_param_named(mmio_debug, int, 0400,
 i915_param_named_unsafe(enable_guc, int, 0400,
 	"Enable GuC load for GuC submission and/or HuC load. "
 	"Required functionality can be selected using bitmask values. "
-	"(-1=auto [default], 0=disable, 1=GuC submission, 2=HuC load)");
+	"(-1=auto [default], 0=disable, 1=GuC submission, 2=HuC load, 7=GuC SLPC w/VBlank-info, 11=GuC SLPC w/ Flip-info, 15=GuC SLPC Full Display Metrics (no waitboost))");
 
 i915_param_named(guc_log_level, int, 0400,
 	"GuC firmware logging level. Requires GuC to be loaded. "
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 1315d7fac850..1b19a91f2b4d 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -32,7 +32,9 @@ struct drm_printer;
 
 #define ENABLE_GUC_SUBMISSION		BIT(0)
 #define ENABLE_GUC_LOAD_HUC		BIT(1)
-#define ENABLE_GUC_MASK			GENMASK(1, 0)
+#define ENABLE_GUC_SLPC_VBLANK		BIT(2)
+#define ENABLE_GUC_SLPC_FLIP		BIT(3)
+#define ENABLE_GUC_MASK			GENMASK(3, 0)
 
 /*
  * Invoke param, a function-like macro, for each i915 param, with arguments:
-- 
2.43.2

