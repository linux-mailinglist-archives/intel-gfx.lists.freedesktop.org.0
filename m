Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aH0bJ1FTHWp/YwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B60361C9C1
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A41C01130B8;
	Mon,  1 Jun 2026 09:39:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EFtwoCjh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C35D1130C8;
 Mon,  1 Jun 2026 09:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780306764; x=1811842764;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=TquJAgAVsrtNfZd3HeNMmK/NylppCZSPQ2HJAQqBF0g=;
 b=EFtwoCjhfS3Iq0HBid8KuLP61DI5QzN8HrH8E757XLzkICu8k4er3m3R
 tR2ZXqCjAU+sZnZJ0l4PfIubvXlzNn0afjdyFAb4VHgHpl+hqSkdIDfk8
 wji/EkEAAKdcFaGGrc8/Q9P6dFDcj2KCAcHOTefG60CgsE0lr8ihowTQr
 OAr+V1gjp4IZBocU4JZoNzTacrp5hJqHVHU9g/5dgScVw4tzqajxlsfau
 oMdQbxGKZal2hUnvEKdFkEYmEnNb9nkfv0qEwrpUc0RDJabAtBPXWdOJ2
 GDSypadunMYH07IcvJaNdnHYeTLR4tbyOXi76TFDkb4R7GsmJoLPefkvD Q==;
X-CSE-ConnectionGUID: b2cCt0d0ThKqpW8zlPXgRA==
X-CSE-MsgGUID: mcBDz5ZDQpanPm1Qvs1Fgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80200594"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80200594"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:24 -0700
X-CSE-ConnectionGUID: c2oEFY4VRi24rHF3UWl/vg==
X-CSE-MsgGUID: myiJcZJ5RWqfzpUoJ2Flfg==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:24 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:23 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 02:39:23 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.71) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G4pSm2aO5zagnOC/VIKQb478bYXwRLDKgwfpTGDR4n5RBD7CHV4nhvtbfM01gR5Ajc8gioWf8rTVWYJ9ijtGwMPuesZTBfibHcWq4Od0U/fchfRJIPS80wQbNuStGwfSHj6vYvGqvglBoC2psAgsicGAMxixjaa3QS5D1J74jPyHmgi73jNsgcaBXlFi3Y8FFfpyvFORpyOSO+VRqEdXERYZ/1FEH8w7ApqxODmlJuQi8nRsTadSCHuk6q4R+GfqfmTn5yBB0B4qqVr1nfQXPs2CJLUDJqOJLe/OKHaZyEcHgGrvyTPEV3G5FdWsOZxYclwjhBLCgabf1lgEfyPMMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LcZqmjNRNsN25bZi1dV7IkSpPi8/x+d0bh/oFrFYMLc=;
 b=btflhVj/AXK12F1UdbmRlVXNUFTGQ85YqWZFtYlstosXYLmfAbMXB/UzHzU1FGRJG1Tv6uGfzzVBaHJQAvIRF5l8YKjYJvc/nnA9BMugZHaLvbNjjbwbKJOpQERA6/VZAGTMOqo/XnWgDI7L2TftNxiymvztbwqcmv517RIIViGL23d95ZXL838VmNQvkf2Zk1jDP57aoNXtXvTf2X7sn39LJxxruABSl4pVsul68io51DGPVrTIrHoleN1Lqja9opPxK7D2/bwv/DW3ruFEG7i4rZhSJm4+r+LREoBx+Y0PsNTrctrWalkuPyfYU/fgajY1v89AlmDMP10rJSa3EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SJ0PR11MB5024.namprd11.prod.outlook.com (2603:10b6:a03:2dd::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.17; Mon, 1 Jun 2026
 09:39:13 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 09:39:13 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 14/22] drm/i915/dp_link_training: Add helper to reset link
 recovery state
Date: Mon, 1 Jun 2026 12:38:27 +0300
Message-ID: <20260601093836.3057345-15-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260601093836.3057345-1-imre.deak@intel.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF000239FB.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::2bc) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SJ0PR11MB5024:EE_
X-MS-Office365-Filtering-Correlation-Id: a42c0474-43b8-4d57-1f0f-08debfc1a41a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: HYvS5m3knNkgI2fn9FhVnwGPdbhPRs/EaicN2qnFut3eSQeGI6F/JEO7yCH3UjxKyuRxzPdSojzbqbvMWbmdkwxc7xpcE0zO9fFtvtO9+oO8MpHGI1mP927BrpCp6u0IuNEe9SmItcJxB3PJTbvpRSErY1e9b3X7yLK1bVEhSKvpr8VAEzDMAVbQTfpz2hyObRYG0SQDha0RaJ9C83tmp2igpauvkYDrJhuk97q9uPX0oHTPIChv8aH6SPf12TxxZxucyhI8lp1Nj0gIM7NwA904EB01x8ldU+IAEby9HRhgw03xhzxp8XSwfSjR9NWByPQFgUtxGuC2IW8D7t+ZVXi2jFsf02rNvc0qGPwpkMDjqfVnu1KMfKD+eRQCVaaUuehE5Ymj8ZKCcqJyT2dhpNOHQiiEYmqzphZieIotW1FjwtmtfusuiC6rl5YuNca8n95/ex86Cxru7BLTPSRRCVhR6wQulf48rzl0/gPMdjPcyJCeUETg53nUey2nj3Ms1qrmWWtn6bUaZ9QwGDdnCB9pxYhLXCCDBYaHXXYCOnThdBZoJBS5S1Y5TjvbfDp67Kf5+g1PEQdvUisFiD/1Q3/x9oNtvTKEsds+6lhctVtymrg4pbiybM3o1optHwvNWqfbQyb/ZQS+qGrNFPLHb+P9NaHLWa5/CWC4XND/K2kkSVpwbnXTGXgmL2KXgA8a
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vAFnTDzlcAzQrp9mIW+bEQIrB+NAVR2T4MEZZwy49qM3ZSEVxU2wliS/V/S6?=
 =?us-ascii?Q?iZC71mnqefRDy0x/NWIXQ6skAXR5K6dgOAUzNMe6OgZzcEqYqbFKjWQpftmk?=
 =?us-ascii?Q?sQ1C3Q9UPbsoWPvuIHFq5Bc4A3GqmLxD6QqdOBqVxdECYOuACYDPr5DpfYpM?=
 =?us-ascii?Q?FM/DHxfrPt/dEInJtsT9MHW07H1rMjy1VKtYeSWEjzyLes/yzzQ80wNByDU2?=
 =?us-ascii?Q?WKHajlYTgXc99Xr2OVSMxbuj1xd0p/P7Gp7Vc12qip4vhvbwyT0TfPx+f2LO?=
 =?us-ascii?Q?Jgl4HVOH5xGLQI0qkHur3+mImkuvuo9jAuZ4ezy4oZCpdkqjTGtju4sgKABC?=
 =?us-ascii?Q?aOvZ4/yNx8EUdlemr6PatIeN0pUWcGrDBcuPVI3dOPzWGF5+a1HIm8u2DaSX?=
 =?us-ascii?Q?M1Z9dsG6W6wN0ag2O1xwXQ9DWvSbXoWCOg5xGov8yNCuhZH28zarHKRmcPoz?=
 =?us-ascii?Q?ShklO3g6TMlWHk80Mn88RN2AEY9IbwwvPc5wwx2dubesO9ZyhTkif100gPA2?=
 =?us-ascii?Q?4uYbDhwzfinJ1dWVRGSvghe2HRZkGX1gHfXCo8rh5bUaQ7FUmAgkShlSvafq?=
 =?us-ascii?Q?D3yXue3ys8zx/xfssogf1YntNnCrSsRSojdE5bj8OpiwmUISOWpIhPU9jm9j?=
 =?us-ascii?Q?416N2uNYPrMJVuGfxv4e1tK4XiyUBJ9gKd29yJsWNPOp/rfoAb4/cdFq3QMd?=
 =?us-ascii?Q?WUY1OU32L44Ffc6FLX2nmD70aswKgwxwZO/pdcDtiXJpB9joJy2pnMaREYob?=
 =?us-ascii?Q?JaC5tNpr5Tv8hUzQm/GSqdEAwDaqesTBB/IrKCYuvu12vlp1ksW1VQdIznDp?=
 =?us-ascii?Q?kkPZAVTxc8y39KnkZTw4lNYzgIlluaOCi/V53nmzvPCWBTr4TMhvxaOAxuQV?=
 =?us-ascii?Q?L93x5/tDpTWY827bx8OVY4NpOdrBU4F8ENFLpXg3hJmHOyMyR6VDnhaI73NO?=
 =?us-ascii?Q?s+zWlSb+n4N5Y/GqoqgJOOVZqStsML6CnTNX4rknsgrdYW7jjdWEdKHHmzBo?=
 =?us-ascii?Q?2FetN//I1HjK7zK9Xw6kTLwTRizKne1doRUcTxW7LFcc98kDLcYANC7yWWmc?=
 =?us-ascii?Q?1a3+zZq+avEZS+zNToOBKE4gA+Xj1M5SuS/vLqBtIbpXgYbQqgBuT8T0si9L?=
 =?us-ascii?Q?DLkMfJ+aADEFMGrt1Dl39lkYZtZwHaWRtb6xlFQ03i6Ivf7tnbIKF6dkB63C?=
 =?us-ascii?Q?x1vfzuk36x3wEzjtqI192DfYpaRgsUQK+3drLNOzukSAz6uH3WMEoobXlEky?=
 =?us-ascii?Q?dLWN6rW77ZnuLV1BRHtr5w6R6Kx/DnVH9tw6o6OufYZgNNavBApA+tsthCn6?=
 =?us-ascii?Q?NpbRWkjyJxLcfTX3//1WlUTz5rIYdTbbaTp2vLL7IFPF0ZRNWSo09NIHxw8N?=
 =?us-ascii?Q?qJhrJeEpfYEilhAg4cnmPcWLB9J3Vfr+f9DPh6ZxnvydCa24jR12uqLp4FD9?=
 =?us-ascii?Q?1NdVODvKCMKfTxkOjetVpBfpb3ZHtMoal6/81ySkigOgSTcNLFlDZxSL/+NJ?=
 =?us-ascii?Q?XRSacr+subxUoeKlrG1aY3+8cCEfuZa33l1pCyaN+5fhcTIg9oS24gHOGfej?=
 =?us-ascii?Q?UjDiTLhzdd5NdgHvJSsV4+b8gX6WehxYNeUP6wcVhshfbkiQjZ2d/JhqYVuP?=
 =?us-ascii?Q?1D3/doXuoJtoNPHTw1gGHS08FMsBHeXdFulqLCa3mGa+9WzCGHKKDLUqu1GY?=
 =?us-ascii?Q?DihkxClaURaaHkRX6Er5kI3qybyIBGcvZVZgctO7F6aGrJnX5GoclSCk/7vA?=
 =?us-ascii?Q?kBgNMGBOqg=3D=3D?=
X-Exchange-RoutingPolicyChecked: oOyGyXCBh4+AJ1VmIBd2tO0+lTznqw2ltaOC5Sm3JSXv/63UwLBACKXWlUtGeScEFYnKPfWsAuigQ6QUaLMrA0gqSeQvu+yv9aO1aYDJkMZ4PDCDGylVZeujnq5gZMOtw+GssjmX96G3Bgfn6HW3MEy06XFSwZ4e5X0ikqYuv0LY7jeFuz7RvUIcQqI2zxaq1ikUAQHny006D7tL/0pttCPYhP9m94KOnfrHz9avH7PfcENDiFey/05QL5txwqe9+BmTGeEJ+V3AFnvikqXqEwJpPEnBOKFgC80gO2H1Gyogd9ilRcHsVglClhVmuW5YnKALxnMCNocGNIF6j0dGPQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: a42c0474-43b8-4d57-1f0f-08debfc1a41a
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 09:39:13.7599 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w8BnWXwyhEDYXvW/IjICLKeejghgHW0qk17FFQ7Q0XQr/kMi60dxkFAZPBlz5Xl1XC6rC8C99ur5vobJjABlGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5024
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4B60361C9C1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add link_recovery_reset() to make it explicit when link recovery is no
longer needed and the recovery state can be cleared.

This also prepares for replacing the sequential link training failure
counter with an enum in a follow-up change.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c    | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index e0bb9f45b0c8e..dc1ad0fc6bd8b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1314,6 +1314,18 @@ link_recovery_mark_train_failure(struct intel_dp_link_training *link_training)
 	return link_recovery_autoretrain_allowed(link_training);
 }
 
+/**
+ * link_recovery_reset - reset the link recovery state
+ * @link_training: link training state
+ *
+ * Reset the link recovery state to indicate that no link recovery is
+ * required.
+ */
+static void link_recovery_reset(struct intel_dp_link_training *link_training)
+{
+	link_training->seq_train_failures = 0;
+}
+
 /**
  * intel_dp_stop_link_train - stop link training
  * @intel_dp: DP struct
@@ -1878,7 +1890,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 		link_training->force_train_failure--;
 		lt_dbg(intel_dp, DP_PHY_DPRX, "Forcing link training failure\n");
 	} else if (passed) {
-		link_training->seq_train_failures = 0;
+		link_recovery_reset(link_training);
 		return;
 	}
 
@@ -2543,7 +2555,7 @@ void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 void intel_dp_link_training_reset(struct intel_dp_link_training *link_training)
 {
 	link_training->retrain_disabled = false;
-	link_training->seq_train_failures = 0;
+	link_recovery_reset(link_training);
 }
 
 struct intel_dp_link_training *intel_dp_link_training_init(struct intel_dp *intel_dp)
-- 
2.49.1

