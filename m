Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CFCEA7C027
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 17:03:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B04210EBE9;
	Fri,  4 Apr 2025 15:03:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DgsFp5cs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B66E10EBE6;
 Fri,  4 Apr 2025 15:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743779022; x=1775315022;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=1ZaofBQl6IPkzfLsze6Qh2Mj2IZ3R0h3kKX+XK6KI7I=;
 b=DgsFp5cs9KEiuuNxMJu/wxNomXXeFyzX0dHt6wzoR3ZMj5OGuG9l8mC/
 uZSu51tt/eCZAUBe0eDmaM4tXdUzwVvIFNRt4SfwP92qe2d/RJ81KVSL2
 Dl5Ycn0+c3cXVrNPVcZZ5aWlI4Sf/7511UB1AraLFIOWI5Q40eZT49Jkp
 PMvwsR48l2JEiz5FpdXX3ColFoINrjLFwxpaclNOpeqgc5+nW+Acf7+Mn
 qHTptO1HvR5cHLU9IxRtW4hPxYQRYrgKaDSjKouoCfpYTF0/IYOpLVGiZ
 cN4mtpVwjU6InbLi4Q5Y+1CBlkNwHgOwDY88aDdRvCQILf2XkoK7Sg0gd Q==;
X-CSE-ConnectionGUID: E3HvnIn5TimgyKh1gEP3rw==
X-CSE-MsgGUID: J7xyRFmeSb2i28IbjBwZYQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11394"; a="44373303"
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="44373303"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 08:03:42 -0700
X-CSE-ConnectionGUID: IyE8jEM2Qv2h/126knhZIA==
X-CSE-MsgGUID: jib/Wm7zQ8CBIeMNSi0OTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="132189835"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 08:03:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 4 Apr 2025 08:03:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 4 Apr 2025 08:03:41 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 4 Apr 2025 08:03:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MQkGhWwRe+G+ZMUG4wbfhtmLrdzN10mGNLg0t1oz1JjW1WxYrb8apj1U+DknCElCZ1goUklBQWUoQqXwayFmp3wd5gB8odjdagylhBwCW2CTNl2SAV6DuFdrmUAJRHbREtJozpTdwMuOIgY8IhE1yN6Cqh431v+Imbi+u5LeSKl7+UT9hJdKHPOTztF3XBvt6TJ8zxDOEXoj7TaJccvMCT3qxm9YMfnVrAcYBwFfkVH3GRiQjS7UgSRgrIDirMiP8a8YHRLx4gh2xT+8WRsUCfXCKA3d0JN3uiSj7wCIuwXfsL9kimmaY+uCaoR4VzxZ7W3hbjztcGAFwX+dX28fAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t07jVMBrH1WRFqHS7o4/sHTnBG1VCTZb0ZVvipcgIyc=;
 b=FoKv/GGYbGw9mAfp+sG8aI8BodKkl65Xz8B/5gy0pq+I+5tJzKdNUOWi3dsTEYPsz/N6l2bXstPfM5+zWGXx3C3T22sYKIAPdK3nvoTKpOYzuVS7NQAY1SJ5RfwvqYjLtRTXpideZuXaRMg+S5g+wb4FVOc2ZG0RQ0Gq9/KMa84nEjk0wFc0DekS+sMfbAl/qKUCawo6r9dEOFI/W3oi+CvP7ZQTkM+7jqxKQMBDrXhwn5P2AfXxdf2zOugYgvU7YYgYDGb0wOgrx6ZFv5RdtSSAl4QATPrntQeqafyyBBHOQyFYpT7p7NMl5CQ7Pk8eXUH+OTnOyZB9s7IQ4lyRFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MN6PR11MB8219.namprd11.prod.outlook.com (2603:10b6:208:471::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Fri, 4 Apr
 2025 15:03:15 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8534.048; Fri, 4 Apr 2025
 15:03:15 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 4/6] drm/i915/dp_mst: Rename
 intel_dp_mst_encoder_active_links() to intel_dp_mst_active_streams()
Date: Fri, 4 Apr 2025 18:03:08 +0300
Message-ID: <20250404150310.1156696-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250404150310.1156696-1-imre.deak@intel.com>
References: <20250404150310.1156696-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0054.eurprd04.prod.outlook.com
 (2603:10a6:10:234::29) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MN6PR11MB8219:EE_
X-MS-Office365-Filtering-Correlation-Id: 741ef7ce-5aca-4b47-8dfc-08dd7389d375
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?U+5RHp7WQ1XfJRRJwvjpAfBoqEXi3q4wVQMj4a33AZbo1FWvXAi1YYKtzkW9?=
 =?us-ascii?Q?MH0WRu/m2wpE5U8hkdnIzWEA2V7hcFtTw6GC+jUWjvM675n8lorZisJeBQhQ?=
 =?us-ascii?Q?s4Xclw4b/Z5tHbXj2yGOQfIO+s/AoKRcmHmfqXNGEn5abItxvDMJQfOmb89O?=
 =?us-ascii?Q?cxt4F2cmf8MuR+bTpZpB38paUS5vjEPmJ8n2v3sXFfYYNyM9bYBcZvp4aqL/?=
 =?us-ascii?Q?73lqzOS1b35zgTu6sFnklsz98RFb5SftIQPjS5mJ+eDsK4I5UATFMit+ts1H?=
 =?us-ascii?Q?Qfhkl6wp/5jCIaE4LIIr4OMpiupiuNywoZcxHioYepIRdZIsJin+ZPLkdx7g?=
 =?us-ascii?Q?xGzvo6Gh923vFaoo4bDJ5ZteeiVuCqfaygwFhxw8/+ewiu+VI9/E7i0ozGsq?=
 =?us-ascii?Q?tDQjJbwii7TeeRldGU4skph+0eZbslnRcbE1neQsRdKUCdhB3gj8jwnTVVai?=
 =?us-ascii?Q?cAH+jH96G3j1cIrNnZNypq4l441YVhDUyisHj8HA7NajLqB2NWltcih9+OcL?=
 =?us-ascii?Q?LEeA6CMnpdGnJQEj2tAFyQ8hMIXTuMiqMyCLzvB/tLhuDAkFkDLy0JwnTTER?=
 =?us-ascii?Q?/JJEj5BRT6HSyv3TjKNoxrgTFGOyAru+E4nxntqMhd+WV7pose+sjaTztKIt?=
 =?us-ascii?Q?oJMQ+dfQwtZ4zap0TPmIF7G3HIDDzNEfTrYXLahvbIIl2wgE6hVWhMOAfdfK?=
 =?us-ascii?Q?yLHvqKhu3CWcuPmKxmeYHv6oaRo5xjUX3rEdsomPnCHu8vWyMRAc1qGwGC90?=
 =?us-ascii?Q?bRwxrB9B143lZ60QuR2M40elMkyWBYswg/FdQSUlXvhN1WcHbPNv9fLKbv5e?=
 =?us-ascii?Q?AiBZmmk9tRrE6WNpphNHrAIKgAcuDCVADdYIMQi1rovmWlzIJ2qKUzobKb+g?=
 =?us-ascii?Q?2/Z6EZgbkO5x4aYdSNOoJI2ZpbDx4TZYLH3GISOcAY19HcGfHRYKSUJcOnzX?=
 =?us-ascii?Q?NHXAuW5ji7cmj1rIYimIuGLT1YbMxzAIIzLUY4Jl7R5U5JA6xTMfhBK56Ax/?=
 =?us-ascii?Q?ikafQwVLfmDu0XOqjlwGu4T3buDiFv4DSDmyMiMuExmNoEgqKwDaD2eZ5qes?=
 =?us-ascii?Q?FwBIzK/8fvLRh2BX3IMkepYwFEW9aPP7QDaLXW08ex8Ptuq6orw3WIAZYELy?=
 =?us-ascii?Q?KSMdOr6BbAmQlqqzAvBa5tMmf2R7GePwoSgYk9fhSIQvOV2nJzyQM8GrOlnP?=
 =?us-ascii?Q?84v5rVSDwbhZON+gjmOwn8BTazm5/pnUbydJ/vLPnkU0Lszs0l9/4nVHWQZS?=
 =?us-ascii?Q?yx0G06rELCGEn5XSTVlX0jT0rN/Vxm16wwRgTaMcedh/EGpNDozQwIQltCjT?=
 =?us-ascii?Q?wR3/ZWkSoFSIUNrC67p5Sz8WIduqi9C9dtJb1x4M0Rct9Xa6mT9ZJ2kpbyiX?=
 =?us-ascii?Q?oOAultY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?S01Y8MgKEbR86UTxMDXw0Lgona7x/pokiv/tVOEVZMojYdq0TEnB+Dg/SEjw?=
 =?us-ascii?Q?PDkoXTWfEACQZqVzOHT7CrtCMl4YfgQV8eNooLfiZasiDr5SwkxI5yrrF/Ti?=
 =?us-ascii?Q?zrxuWUMK/LBLBEcvLR2prAemVJyEKNnkVEFsSDluMFg/ZtohEBQq1EkpWGbI?=
 =?us-ascii?Q?EfO6VYukygXxCGdleuWNNYetwH95XKagWgeIoH7U33t6VvG6pW7ZKC/26r8+?=
 =?us-ascii?Q?Ipa28B2y0xsXQydKJodf5wq4AOJ1F/UfOIidsJpIOZpuzELje3PfNyusZ37v?=
 =?us-ascii?Q?g7NTAkYC9NLeuxgjXDSjd7xfjKqMCR0j0Tvcx7iCma4z8nJub1NkXp2QIeMZ?=
 =?us-ascii?Q?UZw5MMDyieY7bPhjrn88YQb0Axqdn6SjI5+5mFA4KpsMBbYnbIXYubVUc47v?=
 =?us-ascii?Q?C2/mPLADchSknF1IDizPapKODqGDWlZCFH/LuGl85xnEGASCswkBDq6JovBd?=
 =?us-ascii?Q?NFhFkzp7WN92Goo9nTYZtT2GLCSXSKcfoV+crZ6t9WIsl1RnCtAT5JQ0abgZ?=
 =?us-ascii?Q?AEAi8v6j9RhSs8gFwYz3jzDIuM0yOQqo1TOaLx73a3Gg2NFQcaI88xodp/bX?=
 =?us-ascii?Q?oGN4ywb6brskT0EpE6x1rTwGGrIkPk6hYw05GsQjXbIoncams+J8dM7v192n?=
 =?us-ascii?Q?NH1LxoUGDKqWrzH6PSNUQzVGh1Zbft0qIEjzELRHtJkymO/nTPNeOp15TVn4?=
 =?us-ascii?Q?NmVmiLqFW3+X5HqPpcU1N8QA9sx6jfQv60LtHAVHfoMLb7oAXaZr88TFK4vg?=
 =?us-ascii?Q?xh+YcgP9vhvBUeTfS5ryKLRWcJek6+aM6jTOJFsY8P/uL9i4FAtBnHZil44E?=
 =?us-ascii?Q?6N07qOtLLM5hATD6kLy2Yt7Vd7PeWyPqoAgePAViDVJS3rw6EcqxmoievxYq?=
 =?us-ascii?Q?huoxzcd+k1kkSkQaYaTZevDaJ2pp3PTmEf/YY5VpiQ2SljDjS0YXv7OqBMev?=
 =?us-ascii?Q?rkNDH5Z6lec9axE15kxklT63E7djstn8OciPHnheVBZg/46KM/zjFMiyHi4t?=
 =?us-ascii?Q?SQDR2M8kWo+nvYsnreyjFFQHS1A3dyZqPegYv7nr6MKveg0ZH8PKuL7th2/d?=
 =?us-ascii?Q?5xSgbGKYYLSoUj4Jol4uJOf1yislHxUSdVNkmOTSen5fBztVIw/y2QBXxarx?=
 =?us-ascii?Q?671Lntsag+IyTar4ggPVRp9ynVn0qgap83fUaXE+A6OXT8hrWlTDVKMIvnys?=
 =?us-ascii?Q?g/crdt5iEn2qTwdE9GcQZ7ADhmZyScb+fGPijC6JWyHvoCKRVrG8GFHOshO6?=
 =?us-ascii?Q?beJgUihsTLPIccU0cjCCxDr82zbagS4RQyxoYsxoq2mr1h54nYM7LpqdwViu?=
 =?us-ascii?Q?laOVIosr3SQqDHMSJqEMeD6+mFPpKl3Tt/xgqccDDbwIdwLAFHnzhcMUe8ov?=
 =?us-ascii?Q?4HAlpdXUYKnZT9DsQ8PqDM8Y4t1f5U8m5zh5/huZzPHeSGuN9CeUoiTqG4cM?=
 =?us-ascii?Q?CfWRXjR1qbx6Bh/5RFM/N0Td/BitTMsQh/wmhoIOs3h8i1mZI1UapFuG8CiW?=
 =?us-ascii?Q?lQznfOWt8Ux73gv0H5aHobeUrqAReqTPMTUUdogYa1LySzRYZmj0Y7FfTGlT?=
 =?us-ascii?Q?RqZmAnAZL6WUGUGaFVKj+puJUAuD7F93VUo3+nup?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 741ef7ce-5aca-4b47-8dfc-08dd7389d375
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2025 15:03:15.3785 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0EyWC4iNRD8ADpcA9NoH/CuMwSmejlOGujc7mFP2p2b6d4aSlbm+Q+0Bw2M41cQ+qaGlBvKqFND+pA3NojsPsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8219
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

It's not clear which encoder intel_dp_mst_encoder_active_links() refers
to (primary/stream), but there is also no reason to call the queried
property an encoder property; remove encoder from the name. Also it's
the number of MST streams being queried, vs. the number of MST links
(there is one MST link carrying one or more MST streams), so rename link
to stream as well.

While at it pass intel_dp to the function, which is more logical and
makes it easier to re-use the function later (without the need to get
the digital port pointer).

Also move the function earlier, next to the related ones.

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    |  8 ++++----
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 11 +++++------
 drivers/gpu/drm/i915/display/intel_dp_mst.h |  2 +-
 drivers/gpu/drm/i915/display/intel_tc.c     | 20 ++++++++++----------
 4 files changed, 20 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index f381ceb59c7d4..b48ed5df7a967 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -877,7 +877,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 			    encoder->base.base.id, encoder->base.name);
 
 	if (!mst_pipe_mask && dp128b132b_pipe_mask) {
-		struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 		/*
 		 * If we don't have 8b/10b MST, but have more than one
@@ -890,7 +890,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 		 * can assume it's SST.
 		 */
 		if (hweight8(dp128b132b_pipe_mask) > 1 ||
-		    intel_dp_mst_encoder_active_links(dig_port))
+		    intel_dp_mst_active_streams(intel_dp))
 			mst_pipe_mask = dp128b132b_pipe_mask;
 	}
 
@@ -4109,13 +4109,13 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
 	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_DP_MST) {
 		intel_ddi_read_func_ctl_dp_mst(encoder, pipe_config, ddi_func_ctl);
 	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B && HAS_DP20(display)) {
-		struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 		/*
 		 * If this is true, we know we're being called from mst stream
 		 * encoder's ->get_config().
 		 */
-		if (intel_dp_mst_encoder_active_links(dig_port))
+		if (intel_dp_mst_active_streams(intel_dp))
 			intel_ddi_read_func_ctl_dp_mst(encoder, pipe_config, ddi_func_ctl);
 		else
 			intel_ddi_read_func_ctl_dp_sst(encoder, pipe_config, ddi_func_ctl);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 8084e7e8cf114..2a4bbe692558d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -105,6 +105,11 @@ static struct intel_dp *to_primary_dp(struct intel_encoder *encoder)
 	return &dig_port->dp;
 }
 
+int intel_dp_mst_active_streams(struct intel_dp *intel_dp)
+{
+	return intel_dp->mst.active_links;
+}
+
 static bool intel_dp_mst_dec_active_streams(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -1887,12 +1892,6 @@ mst_stream_encoders_create(struct intel_digital_port *dig_port)
 	return true;
 }
 
-int
-intel_dp_mst_encoder_active_links(struct intel_digital_port *dig_port)
-{
-	return dig_port->dp.mst.active_links;
-}
-
 int
 intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_base_id)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h b/drivers/gpu/drm/i915/display/intel_dp_mst.h
index c1bbfeb02ca9e..ab09b487c6bb5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
@@ -18,7 +18,7 @@ struct intel_link_bw_limits;
 
 int intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_id);
 void intel_dp_mst_encoder_cleanup(struct intel_digital_port *dig_port);
-int intel_dp_mst_encoder_active_links(struct intel_digital_port *dig_port);
+int intel_dp_mst_active_streams(struct intel_dp *intel_dp);
 bool intel_dp_mst_is_master_trans(const struct intel_crtc_state *crtc_state);
 bool intel_dp_mst_is_slave_trans(const struct intel_crtc_state *crtc_state);
 bool intel_dp_mst_source_support(struct intel_dp *intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 2c6c18434a4ca..c1014e74791fa 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -1547,28 +1547,28 @@ void intel_tc_port_init_mode(struct intel_digital_port *dig_port)
 	mutex_unlock(&tc->lock);
 }
 
-static bool tc_port_has_active_links(struct intel_tc_port *tc,
-				     const struct intel_crtc_state *crtc_state)
+static bool tc_port_has_active_streams(struct intel_tc_port *tc,
+				       const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(tc->dig_port);
 	struct intel_digital_port *dig_port = tc->dig_port;
 	enum icl_port_dpll_id pll_type = ICL_PORT_DPLL_DEFAULT;
-	int active_links = 0;
+	int active_streams = 0;
 
 	if (dig_port->dp.is_mst) {
 		/* TODO: get the PLL type for MST, once HW readout is done for it. */
-		active_links = intel_dp_mst_encoder_active_links(dig_port);
+		active_streams = intel_dp_mst_active_streams(&dig_port->dp);
 	} else if (crtc_state && crtc_state->hw.active) {
 		pll_type = intel_ddi_port_pll_type(&dig_port->base, crtc_state);
-		active_links = 1;
+		active_streams = 1;
 	}
 
-	if (active_links && !tc_phy_is_connected(tc, pll_type))
+	if (active_streams && !tc_phy_is_connected(tc, pll_type))
 		drm_err(display->drm,
-			"Port %s: PHY disconnected with %d active link(s)\n",
-			tc->port_name, active_links);
+			"Port %s: PHY disconnected with %d active stream(s)\n",
+			tc->port_name, active_streams);
 
-	return active_links;
+	return active_streams;
 }
 
 /**
@@ -1592,7 +1592,7 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port,
 	mutex_lock(&tc->lock);
 
 	drm_WARN_ON(display->drm, tc->link_refcount != 1);
-	if (!tc_port_has_active_links(tc, crtc_state)) {
+	if (!tc_port_has_active_streams(tc, crtc_state)) {
 		/*
 		 * TBT-alt is the default mode in any case the PHY ownership is not
 		 * held (regardless of the sink's connected live state), so
-- 
2.44.2

