Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0EF79668FE
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 20:35:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B50910EACB;
	Fri, 30 Aug 2024 18:35:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X/FwTd+h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 886D510EAC9;
 Fri, 30 Aug 2024 18:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725042919; x=1756578919;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=vgnNfQgmE7frUKPJOdbhv92q/KjR/VY6+5PZQrosbfo=;
 b=X/FwTd+himZIp3eYEpyJFxHP0Axgl53SvxRNe52Lo45GC2Tyj3KEu+sI
 NqslFgyZJoJuxjRQFstXCVb3DX2Hzz1vzPdtxMSFeER6VSRaG5oA9Dj0S
 pNYjWbx3JUPJtjkWnh/dttp2dwWWShoL8qE7bKWmizEw4JcZFMxFmvVvA
 YGUMg4ZP5YZ65Q2GviL/ZbJ0JjK507dNdxD0aAYOT8OlT8P5we5PNUexm
 u09OM10aR7BrbfGirHopPBqOwFczBiZQ99g1JaepkilmiVqwalGxp+FBk
 SiZTy/GdHpFDZ5HYeIcaMGT8OuNmMHi2DvGP4ajtlfDOqYWxaMHBLYUmG A==;
X-CSE-ConnectionGUID: WrbxNhqYQLGfFFCnGK5TcQ==
X-CSE-MsgGUID: MtGtuG6qRmmnPo2LxnpmAQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11180"; a="23862454"
X-IronPort-AV: E=Sophos;i="6.10,189,1719903600"; d="scan'208";a="23862454"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 11:35:18 -0700
X-CSE-ConnectionGUID: TpQ8eZYGT0SNYj5OpNqZkA==
X-CSE-MsgGUID: U+KeSa3JRxGGIgwwL56dTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,189,1719903600"; d="scan'208";a="64021315"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Aug 2024 11:35:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 30 Aug 2024 11:35:17 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 30 Aug 2024 11:35:17 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 30 Aug 2024 11:35:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DMPpQjN7G30/hVqUTGf3Evufn86FecIOOJO7XQNC9TptaYrLoOc8Y34avahDuigOTC8OYpLeWcTSc3h7T1WHTQNf0DlJ0lFrtMz0xMG6Z4Hj5rCaEd/SeCv3hpbpT5ii0x6+VBEMLR1j5QNs3zDpQ9eHqWifPytKJr7UHOVmCqvwftg5k9o+xmPfAPbgjmnqZTgGBpI6XlELMYNa9nLqvgZVABNcbgFB9bQ8gNYySiBtXX9ThKMwos6v01wNBFw+OkZIrOYb1FZLuUs8qUH5OEC+7sADQMurGkdm7Oc1L8ZbWHaDEwwBUeyaILWrhH+RGFgBtGsxbAC82LL0IR4Xow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EmwsQ3yptalnZLd5+4IE7hMNcPsqAAqboAezfzQMReQ=;
 b=gUiTNxUHgMJYdqacmah/nxxA2X7lsbooidCzHzfJxBxAUpTbCFyUnHG3YSm9L/ArKo1KrG3Eb2yMM7kgFv5g/pJoFMg0TVAS6f2zIKMT7NhJYbdI4LusFLKWDvd9c77lU0ISEsA1W+IeefzWF+VVEcDC76T8pVu25W5ypiXaK6OlylrTCJI4xLfEf48AVLvccRk2LGXpCxQLxjzC6caE0wC7bzRCKtDGK8F99vGdVrqqivv8ib26PVcNwOq2mLMIAJwqsn8ERFnF4BmUOo/5qbXVaNyKmLcBLT3DyHErR3+anv+2DSOX2CVm8TRfNMsDnECC3imDe8nJ6KEf/uUy9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by IA1PR11MB6465.namprd11.prod.outlook.com (2603:10b6:208:3a7::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.20; Fri, 30 Aug
 2024 18:35:11 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7897.014; Fri, 30 Aug 2024
 18:35:11 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Himal Prasad Ghimiray
 <himal.prasad.ghimiray@intel.com>, Matthew Brost <matthew.brost@intel.com>
Subject: [PATCH 1/2] drm/xe: Add missing runtime reference to wedged upon
 gt_reset
Date: Fri, 30 Aug 2024 14:35:06 -0400
Message-ID: <20240830183507.298351-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR04CA0078.namprd04.prod.outlook.com
 (2603:10b6:303:6b::23) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|IA1PR11MB6465:EE_
X-MS-Office365-Filtering-Correlation-Id: f1f6ab55-7d3d-43e8-9ff1-08dcc9227b1f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zQ+YleP8zTwAX0ZoZzpOJPZnfHavDNdYMObzpykWuxsfBm7RJwu8eRNlGGxs?=
 =?us-ascii?Q?xF2gWjQdsQ1Dn3ZsBRGmDv2DpVCD4MwRoy647Rtyl/x+PrdTU/msBFqie2wW?=
 =?us-ascii?Q?2sqDJSbzN7qXKvvGpenH14+9Ca6fSzF96O+pXBulohWj4Y2ch4YQ6RonW4hE?=
 =?us-ascii?Q?IEFx8m58YajaBiN/nxI4oSwa2ivditSNRshB7ZDGyFRQRRt+jqueEu9/5XAh?=
 =?us-ascii?Q?QmzCGVhp2v3fRtHxOlannWPJ4D4Yfsk1dsXocbGldzG4iDT2TMp4T7qLTdlZ?=
 =?us-ascii?Q?zcBvxr+MD+YU26elMZgOY+XvbKXXcMePlTR4+f0W+8xzBLXNeponNy8ip6qb?=
 =?us-ascii?Q?HxPoty+6UpKrvED6vgGG7iDor1TrdAH3OkiST9HOI/guql/Mdu0tJRA5A24L?=
 =?us-ascii?Q?Zcb7v7AiGywff5tFOjk8/g8fZqYa88GMgln3uINYggd4z4Lxkg7+rUI/ePD5?=
 =?us-ascii?Q?f77k7QGpNOpoaRXsj+R25C4O1eBVk7+LQv7bTAVCXI2f4mb0BjZEPQjNVUNe?=
 =?us-ascii?Q?hg/3Lh4NhGlwccCIXJaiSFn0XTAES2wGFR2dky8UgbewZMRn5h+rZm0wIhWJ?=
 =?us-ascii?Q?pk/qJREMxPNtqVl9jAg/Vdzgwjpr4V0vqbu550+Iw4Ek9wS6gEGTLsea1nY+?=
 =?us-ascii?Q?bXY8PCkwFhgBDrYdRQ+33dg7rBzWFCQAFVTKL5sXOSuNqWjTU3NrRopLnHuB?=
 =?us-ascii?Q?0Pw84BYvTW55s8ovLz743U0wL1L2J5o6+VVQGNZuvlv+yjjyOW2DMHxYyJii?=
 =?us-ascii?Q?pxCpM4+9J5ckD+ixii3Zn5QBfkEpCP0TAKqF2dAhCITnIKPG7q+mTAZL5Dry?=
 =?us-ascii?Q?xVpOKibpET4mmP9HBE/ZwggkMIuEdlVIzvSoGdmZdwTJE8yaZ+jLEVjXWafw?=
 =?us-ascii?Q?24m8r+QokteEFRgxdyX+lmITNyWAI2XXPeHjNgBsQsrsTAs0i0jfohiil0oQ?=
 =?us-ascii?Q?OyRVwu55lSjt5CfHoX5nBXOtWDlRjsCByWLbfvc6mF5V+R0+11V9T6hQ/uxA?=
 =?us-ascii?Q?JBSXsTqzH1UcmqN9KFOm/yrgRmG85mYwrzOcZGGOChhN/LQmjXVovmQhJFGo?=
 =?us-ascii?Q?tvRYpznp6vgN6Q3zyrFEB98LAajQcapwv0KAjPmkV1Yn+W4anLwpEbmZ3o/K?=
 =?us-ascii?Q?CVheo3H7rC8djYfgeAisQkPU1xwlkNGzt/do0YSaRY2OjZ6CP60lhML8vE8d?=
 =?us-ascii?Q?ZsWtWqQ0KdHgdrevAIMoBuOdrr8DVl97RuK+soK+2XPX5TqB2bRzLDsTZL4s?=
 =?us-ascii?Q?hxVuUWxxlPhHJyh/6KMpuGIXLJiC7a9cIEJ8k3EwA7Z06178FqjtMTuL+1T5?=
 =?us-ascii?Q?XtB4XrUrjXvpqSw9UDwSHqCEjDzUoGCOHgRJI50eM7zA6Q=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ppyaLTawMVhZvyJ0qX4+vaEFoldXGBwfiE3fJ0919utvE0pmI5Ghr4B2Syea?=
 =?us-ascii?Q?oUsrbQrGeZSsTkJbauGdpHlZnL92hT+r6/dkCy1iuE7stoeVuW+ligT4upq8?=
 =?us-ascii?Q?7SSj0yCNmFab/lhqc5W5Q4XofkZydiushDfLxbViawcssXKyv2STyru1YoEL?=
 =?us-ascii?Q?4U78+mqKxN/K9nvb2qoRBmotX2Ug/Ya8YmSthh/N60MuOX006V87z4BqYek2?=
 =?us-ascii?Q?91t0kSuWP399vRMj52Umrz73JoBGZH2ElZW3IbAWmtWg8Yk4y9ZT+1OO9gmC?=
 =?us-ascii?Q?gRivjMB/9f3g6UiJvTw23QMDOkIbStQr9nKvIlR1i9T90qNIH9qh6ueNr1Pb?=
 =?us-ascii?Q?o/r4M3umOHdAIEk58omTYTOSA9/k0cWOZFEIj3ZYTXgKtqlIIv8H/CWiyV3R?=
 =?us-ascii?Q?D23MiUivt/R8kM8NXzKNmAxXjo7vm7az5W8zyfL/ILw+ilGqcahz7BXU00fi?=
 =?us-ascii?Q?XTve0jsXvfUFmJhSYzLxEWYaRuWYIX2Ck4xlNpaU+bTe85/yH0vHsuyDjg6i?=
 =?us-ascii?Q?TCkzBWQiwN7IpYf7+Y/g9OqIllPMfgWWg/M4IZz4rkdTzh48Oy6Pn27mWMKS?=
 =?us-ascii?Q?NRh9Mf5Ga8S9vjiEdLX6KMQtTlTNqG23oWvPgJgpjb08jFRZf4Yiqmwje+w7?=
 =?us-ascii?Q?uoylwFRmVEtwJj/72fwJ/hznimjOHUphKeW0Goo8P07tXTWzQhYIO1L2fHw0?=
 =?us-ascii?Q?rqKMHSofyUX40DAWyzvoBUhYXPbqLdgmwqBtW4ky0bIbRZ3mGbeEEQjbavpM?=
 =?us-ascii?Q?ufYpP0k9JTztU+/BZCPxO9JSCJvIynQ/2UwuVAZ2cRQwYmdEy1xYzRDjdjVE?=
 =?us-ascii?Q?sskQkNM7iubO/P7h9+v/t7f8Y/v8q8fSV4mpe4yREMrMaXiMNf+Dkfkapz1x?=
 =?us-ascii?Q?3yPJvD5XjZ7tVUIQK/n9pz9LmDeCET/24+YoLjbBra4bRIGpCge60Ff+xBWY?=
 =?us-ascii?Q?O2JLBcbC7H49UYJOTRGe8uwQ9JBEPhFn5jOMK6MBth3gaGNJTFrjRXOP7Y0Y?=
 =?us-ascii?Q?saD4enyIlq9za3wIIBct5ixfU0pg+7Yv0ipu40mgg+si7GMmYcvioZ4nE5VW?=
 =?us-ascii?Q?y/CnwvSYmiBwA2Th0O3gfvbYHJuT1QctCjp5C+S+z15ENKE+Lb55olDi094T?=
 =?us-ascii?Q?0Q2y36qbXoA1Vrx2z/AyUZyt+UQyv7Xi+5WWo1lrkZNUlKaw2dI+QmrCb+ql?=
 =?us-ascii?Q?1JTbUkX1zja3/bC5z1cbcPWb+KzMLVn33da/g4hvCAR+A7Izb/5X04EBzF9V?=
 =?us-ascii?Q?x6otcli9sjowAieqGeO3l8hwBELq/a2a8vCKbiLEojYh9E86woiE9HCSgcI7?=
 =?us-ascii?Q?cqWPo0oKGO/5Zr/1jrkewdwS1E7e/pQfCKzXmu3EGf1NMQ6uwqHYv3Ik1rlS?=
 =?us-ascii?Q?YM/Vr8T8T9cbLSS0rw6LMmYgTrju0TernTx5RZHsQtXIf2e8DETsnmMN2Oxh?=
 =?us-ascii?Q?EosXSHsJaJ0gGAsy8fgEiuBxkM6mzYxe8/W4+UVC6WzdpsLVkGk5yo3uXfSW?=
 =?us-ascii?Q?Mbma9/csJNSUxdk0N09u27J7DMvqodONAOu635IyPz3OZ070mX59R75kMpXy?=
 =?us-ascii?Q?WdS3ZNPxAnEOk20EDJNRPOGOt9S22Y91pJDJ24u7tLX9hd+iTk3XsyJRwBHM?=
 =?us-ascii?Q?rg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f1f6ab55-7d3d-43e8-9ff1-08dcc9227b1f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Aug 2024 18:35:11.3786 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XhSdKnm6I8Acej+dT97X9hU7xCrTo+fAiWlGdfa9qybEXaNaduLxlEuUcCW/XQEqqxTWTVgqz0DYW+gziX/bXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6465
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

Fixes this missed case:

xe 0000:00:02.0: [drm] Missing outer runtime PM protection
WARNING: CPU: 99 PID: 1455 at drivers/gpu/drm/xe/xe_pm.c:564 xe_pm_runtime_get_noresume+0x48/0x60 [xe]
Call Trace:
<TASK>
? show_regs+0x67/0x70
? __warn+0x94/0x1b0
? xe_pm_runtime_get_noresume+0x48/0x60 [xe]
? report_bug+0x1b7/0x1d0
? handle_bug+0x46/0x80
? exc_invalid_op+0x19/0x70
? asm_exc_invalid_op+0x1b/0x20
? xe_pm_runtime_get_noresume+0x48/0x60 [xe]
xe_device_declare_wedged+0x91/0x280 [xe]
gt_reset_worker+0xa2/0x250 [xe]

v2: Also move get and get the right Fixes tag (Himal, Brost)

Fixes: fb74b205cdd2 ("drm/xe: Introduce a simple wedged state")
Cc: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/xe_gt.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_gt.c b/drivers/gpu/drm/xe/xe_gt.c
index f82b3e8ac5c8..dd96dec95b19 100644
--- a/drivers/gpu/drm/xe/xe_gt.c
+++ b/drivers/gpu/drm/xe/xe_gt.c
@@ -754,12 +754,13 @@ static int gt_reset(struct xe_gt *gt)
 
 	xe_gt_info(gt, "reset started\n");
 
+	xe_pm_runtime_get(gt_to_xe(gt));
+
 	if (xe_fault_inject_gt_reset()) {
 		err = -ECANCELED;
 		goto err_fail;
 	}
 
-	xe_pm_runtime_get(gt_to_xe(gt));
 	xe_gt_sanitize(gt);
 
 	err = xe_force_wake_get(gt_to_fw(gt), XE_FORCEWAKE_ALL);
@@ -794,11 +795,11 @@ static int gt_reset(struct xe_gt *gt)
 	XE_WARN_ON(xe_force_wake_put(gt_to_fw(gt), XE_FORCEWAKE_ALL));
 err_msg:
 	XE_WARN_ON(xe_uc_start(&gt->uc));
-	xe_pm_runtime_put(gt_to_xe(gt));
 err_fail:
 	xe_gt_err(gt, "reset failed (%pe)\n", ERR_PTR(err));
 
 	xe_device_declare_wedged(gt_to_xe(gt));
+	xe_pm_runtime_put(gt_to_xe(gt));
 
 	return err;
 }
-- 
2.46.0

