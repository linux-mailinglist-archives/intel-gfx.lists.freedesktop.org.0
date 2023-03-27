Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3766CAA08
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 18:12:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8878310E125;
	Mon, 27 Mar 2023 16:12:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34E1D10E125
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 16:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679933553; x=1711469553;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=PXB4i73Yb/Mv0/ZhD8VAQm6YWKMuZDxhmV5dFEegNWg=;
 b=IyZrsRB9+FbGM7rLsiFZ2O9dWu3QSO3XpqYEWIVcAzES6xE2D0UsUbdE
 NNkitfrs4Bqn3bH0B5NujQK8OutJQUVCNd/dqZIMhSmjWrPfw7RNG87ad
 wmWCqlnxQBy/j4rfjWKOGzTkT3OUyB+BeX6uw27OtmDJEHTxl5YHDy+mF
 MC++hVYZTjZoVx8QuIsMg6JJ95EiBjBbPDeh8Eggpn7W+5AY9RzHuzCTs
 by/fkXGKhrPu6tnsVo5adQYJQN+fKNPFjO4utTyyZySdu1taAEQzRb1JU
 NGjj8K0t+o5yTm/IptgAWdOjyBAC/JRS+BeQyMhHnsY3Wqp5wduqDHrwV Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="320711489"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="320711489"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 09:12:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="713893313"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="713893313"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 27 Mar 2023 09:12:32 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 09:12:32 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 09:12:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 27 Mar 2023 09:12:31 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 27 Mar 2023 09:12:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R3YOcKiQVFaTy0eAyZPZVAARcUc1t8tZka71B1X89Jm3t0gURC33eS2lGFOyunYgYQOq7l/3QNJ9umQYN9ntYywcttJRYjv5BgEL0j2ZHP0wqUMD63I9zJg4r4l5GL7zV3xrImzw0/AMuU/nV+51+hJvWY3aeW+Xu1MeO7/rf4MIdfrtHTRaNpjlrc8P1PD3xor4FCQyppXXX/oQTIePZ7l8IWqenY3guDu/RwGn2POgGdKFoYOF2pveRRFtKw4JM/lhbVMA2PKcLx+Jt2J0O7zTqQdtQHtYoqOJmaearIQ5urzYxRh9tPvYnalalIQLDkhpPUvT3Z6m8N3Q67KntA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kpvxTJLq4/30L6lLyHXU74ll0W4nq1NOoWDDvVmEWTk=;
 b=DAQZwUFAihnZ9zKdpl8OmDeUBOxeN33Y4cc1aRrGHNk7C4El1TAgj+P5jYQX/i5u+PnCwySVLOJsHvbAr+AdV2t4Szt0u008ivz1e75zs4jCJ945PftpOelPx1k8YoVJU3KQV4+mp2IBIiaQBsTqwMZNCiCBR5g8Rzxj8f32eUwj6RQr8jFG4z+L0UJ/UyqGTT01X5FwqtuHaQv9y6hwY8WXLBNY8eNpX1abK9ZKmx0krVEtmZ7kh7GzEspm3z/5y1jY2V2ub9WukJ8PcYcZNXIbAveD/iEYl14K4AYvATcC1aoiSeG0K5Wnmo14OC78oiU5fYlDogfAeiq6Qv90GQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8)
 by CY8PR11MB7394.namprd11.prod.outlook.com (2603:10b6:930:85::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Mon, 27 Mar
 2023 16:12:29 +0000
Received: from PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::3b2c:bb0a:17a4:55f]) by PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::3b2c:bb0a:17a4:55f%6]) with mapi id 15.20.6178.041; Mon, 27 Mar 2023
 16:12:29 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Mon, 27 Mar 2023 12:12:22 -0400
Message-ID: <20230327161223.406573-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.39.2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SJ0PR03CA0038.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::13) To PH7PR11MB6053.namprd11.prod.outlook.com
 (2603:10b6:510:1d1::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6053:EE_|CY8PR11MB7394:EE_
X-MS-Office365-Filtering-Correlation-Id: 85a8e525-5248-4f6d-4b64-08db2ede1018
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4c4AoWCozlmWbcwQ50NK33HKrXitRibE2nZ5UBa1s7v8zZ3EGv+/k0gYec42R930YDmwMwWHFPBHsj3e4qGq05bxmNRlx6nYlqXwoaqAFmUlsnlq30gTNEIFF6Y0b8xAg+u8C2dwS+CpNj2SDIrcg4JU0tVPRvmBClfJmKUy4RW3vPC7T/MSWv7J8gujcSk5WIDUodxOmxVXLqH2zcqTSYp04iT7FGlfp/jfrhfanoQ8MiDIVvWnzU1sBSTjwx1JBFOX9LfJPtG6FXXcjupHKCPGWjvRpAQ97C8mhlTb6EBsm/V4GQoqq2PlWKAwzBzl4JuC2RFkkneWU0Uw9rggRpIHcnPi1As1Yr+VRkRSF2/iM3pVMO6Gs9kLWBX1zPa/LVgMGYoJTh+idfX3ygyH9rYUIDApgrXEJVIoGnaR3AQq9L3EjZ2j1qI2SQhmOVmFJdx0Md1kTmh4Yoq7gqNNnNS/aJcCDxBmnz+gyzUJPBcbMHm7keFfbkCmlOobwDBJ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6053.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(396003)(346002)(366004)(136003)(451199021)(36756003)(8676002)(6486002)(966005)(83380400001)(316002)(38100700002)(82960400001)(54906003)(44832011)(66946007)(66574015)(5660300002)(41300700001)(2906002)(6916009)(6506007)(6666004)(1076003)(4326008)(6512007)(2616005)(66476007)(8936002)(66556008)(86362001)(26005)(186003)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Um5wRXFJMm1XVEJnVlZFYmRGa2VtYlJ3cjN2Q05ZVXBPQU1kbjVhZFdnMzJS?=
 =?utf-8?B?WjlCbmhuaHNZREtKbEwxTFZuME9aZUhJek1leGlZaHVEdTh0djZaWHhudnY1?=
 =?utf-8?B?R2NDSmpCekVFSDdsbVk5UERMayt3ays2VlZnNWUxMlEwNzVWRnBtVk1Hc1N4?=
 =?utf-8?B?b2lmTFVTaE9WQUJhNXc3RUordXRHQ3c1ME5UWXRxa3RiZEd1ZG9lcEhOZTcz?=
 =?utf-8?B?QTkxNUQxQWRtdUtDZWlMVlNLVDFBdFlrT01SaHZUcUFrVkkyeVlkYWpKWWlF?=
 =?utf-8?B?Y1RocEoySHNNNGlCZithdlp2ZUdxYTAyejhHN2x0VDJGMnlxMHBVd1VjVmtt?=
 =?utf-8?B?cWxCRHNWSWpYbjBLcGczRXlwVzJrYUtYbmtJZFkrbzRVa0xVVFZuUGxXaC9r?=
 =?utf-8?B?WEltOGFZQkJ0b3ZHMyswNGlOV09PMzRTdnpYNVlYSG9IbHh5M2NCVmlBRnYw?=
 =?utf-8?B?SUdsZkRpd0ZHMEM3YlZFUXJ2Y1VmMGFNSUZWOU9VbGRqTlVlaTk1cUwyeTBS?=
 =?utf-8?B?UmhWcnlhRlMvOHRTV1RLenc5QXNCUHV0Ym5mM0JZZ0YwUFByTmdqVnIzNmRt?=
 =?utf-8?B?anZ6MzZwd2pldGk4YThQL1d0Yzg5NnRYaTRXUnpoV0grRUFJYTNFaUpHc21z?=
 =?utf-8?B?bjdRYjhCTW14cHJHNHdESmJ3SFpKL0pCT3Bqa1U0d3B0VGcrb0orV2NjUTlP?=
 =?utf-8?B?YU16WHE4VW0wRzA1eXA2S0lNMmwxQVJYU1lJcmkxbndCQWdvOWdEMzNyNEZj?=
 =?utf-8?B?QVBJMzBUL1NNRk04TlN5SUVZUTBhSlBEeUxYNHBPaHFnNnZRMFNJaGZldnpU?=
 =?utf-8?B?RTZHT2hXbDd1ODFjVzhqOUQyRCtSL2V3b0sxM2wyam00U1J3Z1d5NHNQYXV3?=
 =?utf-8?B?dVA5Y1ZSWkwwRWUwZTF1Y1ZPUDRLbzhoaU9MWWRKdlBkTnpQTkIxczE5Z1lQ?=
 =?utf-8?B?QldYdGZmNlNLaWc4VHRLaUlVbmxJSnZ6L3ZTbEZrOTYzSzhIQnRvTktXS3dw?=
 =?utf-8?B?RTNSb1B2QXU5TUJyalgxV3ZhdGFESXVHajFoVksrQTJCSWFvUkFmZnNjUzMy?=
 =?utf-8?B?clpUNlUzR2FacnNhaGk0YWpuVkMxN2dCWXMwZjJrU1NZcVhmRXAxZnZkbzhB?=
 =?utf-8?B?dHhNMktJakpZQkdwOVN4Rm83TFROeDRPVDVscFkxWEZHVmxXQitnaFA4SnJI?=
 =?utf-8?B?S3JMdDFDbEd0cFJMMFRId0NPNjJ5MWtjdjl2T0QvOW5sQ2ZFdGR4L2ZLZ09n?=
 =?utf-8?B?YnJxamF1ZFQvbjVVbEpuYTRpU3o4WEg3dlpkNk5pamw0RnpsTU1Rcmt3M2tv?=
 =?utf-8?B?dnd0L2tTZThwK09pN1BPZlNZbURyR2tOang0a1VyeFphMEcvdUF2ajJBR0xF?=
 =?utf-8?B?a1ZRVmcvKzZOZndnODZkd1RZbDFGRmY1R3VNVlQyeVNuK1FQSVEvVkw0cnVQ?=
 =?utf-8?B?aDk0elFzOXQ1Zm9Uelc2cStBUTZoczNvVlo1OTJhUTAvNFJoWlJQZE03dXFp?=
 =?utf-8?B?blFrQlZ5WXE0MXMxRkNvQjN3NHJGdVI5SnI3TE5mczMwTHBRU1p1aFNVVHk0?=
 =?utf-8?B?azI3OUFZb0RxQVJSMHRRSjF5UTk5Z3ZzSEZuMkRDMFhVZXljWE1kRVpvTjlV?=
 =?utf-8?B?L3RyREFlQmFEOGdzUU1BTytQT2llT3lGdHJiaFp2KzRJdTJDR3RWdGhSR0lF?=
 =?utf-8?B?Q0JzUEp3KzNoOWs1dENWV0FoN3RxWkNETWZRQWdWTGxhenR6U3E1MjAxYXdX?=
 =?utf-8?B?MEdVUXJBS0dlNkdDZWVacUt4MHd0Rldrb2ZhRXM2WGkycXpudWp6WDM3QUpI?=
 =?utf-8?B?N0ZyNEczUmRWMERENFMzRXdnR0grR0VuMWZVMXVsWXBoYkRJaHJrdXNsNFhC?=
 =?utf-8?B?LzhzcDdEYnVzU1ppbDZCQXQyUFRaOGlKMnFFUjgxaFZBaDNzZUlQcXB4MkhI?=
 =?utf-8?B?d3RFT1I3eG4xVEV4Mkl1MXgvWExoOGhRSDkxZzEybmk4SFNWS2VGSjkwZU5P?=
 =?utf-8?B?MmxRb1MxR3Bja2k5UUJGaDB3K0l6SWZHVWUyU2tieGJheXZZZlp4ZE1SMmsx?=
 =?utf-8?B?TVFFWEI3ZXRQMUxFWHVFV3NFQmI5aGtBUkYrb0lwODBuUWtUakcwaW5XVWhL?=
 =?utf-8?Q?oRIwLfcd42mhofKESOoQTQe2Q?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 85a8e525-5248-4f6d-4b64-08db2ede1018
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6053.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2023 16:12:29.2889 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1PWm5w4sQdPWUikDPiVFrkxXQMzR/SwEshoLXg1Li574lC8+xih57hbV9xKCaiIgA4sqfMjbwSubBKdJqnjQcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7394
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display: Restore dsparb_lock.
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

uncore->lock only protects the forcewake domain itself,
not the register accesses.

uncore's _fw alternatives are for cases where the domains
are not needed because we are sure that they are already
awake.

So the move towards the uncore's _fw alternatives seems
right, however using the uncore-lock to protect the dsparb
registers seems an abuse of the uncore-lock.

Let's restore the previous individual lock and try to get
rid of the direct uncore accesses from the display code.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20230308165859.235520-1-rodrigo.vivi@intel.com
---
 drivers/gpu/drm/i915/display/i9xx_wm.c            | 13 ++-----------
 drivers/gpu/drm/i915/display/intel_display_core.h |  3 +++
 drivers/gpu/drm/i915/i915_driver.c                |  1 +
 3 files changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index caef72d38798..8fe0b5c63d3a 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -1771,16 +1771,7 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 
 	trace_vlv_fifo_size(crtc, sprite0_start, sprite1_start, fifo_size);
 
-	/*
-	 * uncore.lock serves a double purpose here. It allows us to
-	 * use the less expensive I915_{READ,WRITE}_FW() functions, and
-	 * it protects the DSPARB registers from getting clobbered by
-	 * parallel updates from multiple pipes.
-	 *
-	 * intel_pipe_update_start() has already disabled interrupts
-	 * for us, so a plain spin_lock() is sufficient here.
-	 */
-	spin_lock(&uncore->lock);
+	spin_lock(&dev_priv->display.wm.dsparb_lock);
 
 	switch (crtc->pipe) {
 	case PIPE_A:
@@ -1840,7 +1831,7 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
 
 	intel_uncore_posting_read_fw(uncore, DSPARB);
 
-	spin_unlock(&uncore->lock);
+	spin_unlock(&dev_priv->display.wm.dsparb_lock);
 }
 
 #undef VLV_FIFO
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 0b5509f268a7..e4da8902c878 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -264,6 +264,9 @@ struct intel_wm {
 	 */
 	struct mutex wm_mutex;
 
+	/* protects DSPARB registers on pre-g4x/vlv/chv */
+	spinlock_t dsparb_lock;
+
 	bool ipc_enabled;
 };
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 12b5296ee744..e90a0c0403a6 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -223,6 +223,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	mutex_init(&dev_priv->display.pps.mutex);
 	mutex_init(&dev_priv->display.hdcp.comp_mutex);
 	spin_lock_init(&dev_priv->display.dkl.phy_lock);
+	spin_lock_init(&dev_priv->display.wm.dsparb_lock);
 
 	i915_memcpy_init_early(dev_priv);
 	intel_runtime_pm_init_early(&dev_priv->runtime_pm);
-- 
2.39.2

