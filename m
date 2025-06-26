Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C118AE980A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 10:21:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A854110E838;
	Thu, 26 Jun 2025 08:21:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JX2kef3X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4FC910E042;
 Thu, 26 Jun 2025 08:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750926070; x=1782462070;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=3bAKtAH8bPIh9c8BXPun8bxVT5znHAv7jw2x9Ju0e6g=;
 b=JX2kef3XhvRl2s+AYvcv4n3sCQMZ0wTtAsFgcWyVNIfNjp+1XSIrckGf
 N4JoxDGq2L7DpUdEdCNUJ6JHUW8kQpkWfLCp6WV7V1jdjCMy9NoG50OXj
 OcPiL3WrCo7L8zu0urpoaN+Tp3sPMinXZADYrt9n6fJPlLeNuJA8Qw6Vm
 IFsBaBlS5YH/hDTMIfx8spbbsb0HVqHOXf7okuwnfBgnyPCvFwTmRyD0a
 zrqIKJqzYEcfFrHpO3hNDhX8UYxzQ5gNsH29Q7uhDq3SY35csCcgOMCmR
 1FrD0C8syiH4nFzcMtkzXGR5WKAFeW2my+aY0P14S+FuDr1thifjEg/3T Q==;
X-CSE-ConnectionGUID: TOtuDXX6QcCFxLjJ8j2ZZg==
X-CSE-MsgGUID: O1hzFfqfTPKz/QGlnldmiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="57019320"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="57019320"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:10 -0700
X-CSE-ConnectionGUID: rT9zFJFzSvqpFSdF4kJEYQ==
X-CSE-MsgGUID: kKh94SijTwSFyCoCf9lxyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="152069919"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:10 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:09 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 01:21:09 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.54)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E3SbJhcukNKQ/zLSTTZ+St8sObLFc1H/dn7CNRIi1+jZkReWffD+bmgTUurlVS3ApRsVHL9w+4rSV5Vp0QlOMv/wqTGfeEszyboCX6K43k9jIAV6ARDdFm3WoOWY56JSgaVQLHavArtPdh6+bwQeibiLluzVxDd6biBBK7t4dIFIwI+h81Z3mHCoijjHs6ZvZ0OMthGDVIjVBmb8AIpcEf1MpojukceKntMMzLVgxSi+tr34WjgZ5luw1EOe6e5XY7GSSZVckmL58T2m+TZhlP6fiHIRkg7/UDC2101buSt1eccEGa5/Dtg7FuCg+LnpTbIgFABjl5xgShLEGbz2lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JdJk+zhIWZOyQxRSF/Ahsg+RIOdJ/ledaGpotmyVd5s=;
 b=Jqcr50lVnSHiv10dhxgHtaSmHUdNlJAsQYINldAjF6v4iVQdD7631Y/Fi4+2ay1zoaxDMHii9HB3uPSTIkgBiuflRDIh+IfHpRdr4e49MgNsW3sctzQQPFox9JerhPKcNEBTvXyYQqZOTq9zzGLS0ro8vQ0Z745Yu6g5LqMAlMSFO7v0cH13j/kcQ/RP7Mz5VFOLb3rgSotX4raV/cykl/D6VnA40l/pTuidi/zVOX5UbG+ROGO5ddpn9xzyshWd3aSVQ0WT7TN5xGmKwYdw4ajDjvWy87UBs7BWY6Qe4Lqc6eMLOZvBJUnN47jalGDJjihTU/FrFrD27ggh93OBMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPF8EC896901.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::844) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Thu, 26 Jun
 2025 08:21:01 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 08:21:01 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH 01/20] drm/i915/dp_mst: Reprobe connector if the IRQ ESI read
 failed
Date: Thu, 26 Jun 2025 11:20:34 +0300
Message-ID: <20250626082053.219514-2-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 5a6b9edf-80bc-46dd-5c2d-08ddb48a626e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?sYOUstj/p06mpYCHCz0koiwbBbWy16UH1f/hxpjjHWfwumUWsWs9CCa9Ujya?=
 =?us-ascii?Q?8AZ83c0rsRDj+LS1kPjSiJqGXJznrckAwg5ULCPm8QGIkhIDepTQ9k6n3tO4?=
 =?us-ascii?Q?zVQHK47sIZw595zSHqbhcfcMTyupBPVLVsWujWT8KcjG/rQ47xpCKsU+du9t?=
 =?us-ascii?Q?6eytD9Ys3ovDPU94GXy31MWbTbqfpGWXBvuWiscNsADK5EsHwrMVcQYd+y1S?=
 =?us-ascii?Q?pZ4k/XvGomd8j72KrgGKf/h6nx1jlhjDXPOuT5Ri6OXKCBT1Ims5G/+4dt6D?=
 =?us-ascii?Q?JcROgj2iJVvCZr0c2wYvETWrYYe04G27WR3hXud3EEj3ewZEhF4Sgc84jenC?=
 =?us-ascii?Q?7yCbNE5kaCT3Hn+Jkkj17lB/X5wNHVgxTRf6GmXdMWTCyT6iu/r+WuGqnyX4?=
 =?us-ascii?Q?WlQl8F0uYFjNeoUfyooD++jf67zid8ADX9zf76xXLUUZkGC2rGtNdeZzF4FY?=
 =?us-ascii?Q?KToBfliamOeYjBIsZdPw3r/Iy4lXmD6Ai0RfPJnBMbvYb8trjmITFXHO6nl8?=
 =?us-ascii?Q?6XIW2gQX692LdSofHU3JbdH5AkvVpik5kTiHh9nToA4cJ5Xu2GN6KiVpRW7a?=
 =?us-ascii?Q?eNgShtD9Jb6hKtm9aZSmlc0LVc3ksqPGRW/Y0VWTspsfSgoEZAyd81LcXbHA?=
 =?us-ascii?Q?XZa6mnsHiQVjTwXZjc+7jXOhHBLTgAZ/+5KLHwPhpbFcb0WK+JkehiMXGcax?=
 =?us-ascii?Q?5TIN2cymjukbl/9gQ8bhdIgmYJsW9jO+XS38ThL2pPIvNbd4Q7Q4m+qELgRj?=
 =?us-ascii?Q?A7HAKBUvL1vOeyuPoseR/oG0hSXXkf4SGs1Cr96HasVKkipSxyBIiDkUkeRB?=
 =?us-ascii?Q?IC3YLDONsuScPYaZ9ZpNyRkfWhmRXI2Cgj6zawCbRESPwIMilAeRgl8Wasi4?=
 =?us-ascii?Q?0c9c6LfnSpuBgkACEp49RJPXez2aM8wvtlzW1kVNzAF7C05IwKFeKAjcI07N?=
 =?us-ascii?Q?OONqCbAmF/6/yj8L8pza6zp7/zdtgSbhK+AXiZq3RgaaAvDm1Ueh5wKWQmST?=
 =?us-ascii?Q?CmM8rFpyOg23OGxunes0NoI90sMtCLXjRiSKqv3peEJiU0ZFJLgYmLaprU5m?=
 =?us-ascii?Q?zFX6g30byASzfPeWLe+mXHbPuJjwghqkz6EnK3sseO9h9+A0GdmRN106oOQp?=
 =?us-ascii?Q?G/j5nwsLeE55oIquzTJ7c1T0eFxW61/5XZiPTD0cvfosUscQ2pD6VnS80Xke?=
 =?us-ascii?Q?H8VPZpesw5PhszZIt64+AEkVv6toDZm1UL//J9+DM8Y4vB6vxTVMBQ5d4tqj?=
 =?us-ascii?Q?DIm1QR63f3As7/gRATdHJqfNZn0tLa6sSogIxj66TqAoZyD3yD2nxSSBE2Ak?=
 =?us-ascii?Q?Q0xXWG/pIGi1Fr9tUgBUIQwMy/FSlOiiU9/yS8/M17gK+kEeQBV9T/r4lBNs?=
 =?us-ascii?Q?di2mOhda/cJVH9f5Om0vvxTbak6SyP9haW7cXRoVFsp2JXH7QftiCYP1As4P?=
 =?us-ascii?Q?4EOp1MnMT1A=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UXDTm3jj2s2+d6bo3U/ER+eX9kHLVksxGdQbeHlLtd2F3nkhLrTDIm3pKvqw?=
 =?us-ascii?Q?jgoj00LT/hY/pwz2f4+AcDqqlx56gtkCvLJ2tknNUmJyD6sMw4k8z5mBcYue?=
 =?us-ascii?Q?+oXX1XGQyUixJ4nabWtPbb8dVsjTTgZH3zuxoK0xhqo45eJ1riVUmz/DnuWp?=
 =?us-ascii?Q?sKasLiJLmjtIXxrQGPWi/ru6u9w9iPx5mG7kiIkoFxwf7wcE1gaLYTaqZt0R?=
 =?us-ascii?Q?bTXqZT/Zvg7mu8jeyEwYVwXnxLzstOM21bpmoPma92tIb8ZajIIimMtkBBkv?=
 =?us-ascii?Q?UtyOuZELW0XZYtodqpdhS2jdSZNSIScQjWYA8UrZxKuh6KpIEZnaxfq3PYfM?=
 =?us-ascii?Q?6b96R3S5umRWACVLRdxRe9g6fomB4dg7WWdo31to/tngw1o+AzSKvvqdTPY7?=
 =?us-ascii?Q?B0/zLz7T0g06HpcJHlQhgPjHQHkmh2wpitroTN8DmjiP+nTjeJli3oguYXUK?=
 =?us-ascii?Q?ZEg16UPv4Hm6On26cgy64GaAz2fp/TSTf8A8dtzCZJ2f2XkkF+ZjVvLJt4wB?=
 =?us-ascii?Q?/yllSdXm/EgEusEEI4CzOox3vVK+KWlHupsDhqB/d7iBIo45TCdTeDeFZSB6?=
 =?us-ascii?Q?L4zbj3j7x8MuHooZ4p3dabfIC5Zjv8y2gWMR1EK0O5WF8neRqvdT2pqYW8EV?=
 =?us-ascii?Q?1hoX817Jw97foKgSj4w1P0ekz0pFfvUdaNy5pDQxAf8BfRombTHjQRWk6TKU?=
 =?us-ascii?Q?RdmU1X6dx34mplqIqjhz1DpUDNovrmzp3/CVoyy+mGWxtXhSdI2jlX7qiupQ?=
 =?us-ascii?Q?IsRGzK03nPiK7uXizHLw4gq5qC8Ht6qlAM4Lt59PfsM7bQyS/62xG4bTMS4X?=
 =?us-ascii?Q?9srOpG+zww8vze0xmuucudjArxU5I4l7Id2sW+QIgvrlxj305cro95/PxR2T?=
 =?us-ascii?Q?12bEsAD+NLnfxPqSCqEgI4m3KMjFk6XGLlfDtYydFPPkuuN06hVSsXcKj5+/?=
 =?us-ascii?Q?TnimefTaeLFpWf4kV+oy/LM/J07Qk6RBeRWw+2iJAGUOmsS5pOG6UHM7cIhd?=
 =?us-ascii?Q?u4viUpUT2QTLmn+dth2XYl4BuIG44yUxqCv7RBe2zZ4Mdme+DKaLf+sU3a7v?=
 =?us-ascii?Q?b1Pagx2coze1NKN07yswxRBv3+cTNrqXdmjzVFPBbFnqwlh1J03aaMnjVCrt?=
 =?us-ascii?Q?v/7wYae2yTz05o3Jlcu/H5Qm2eaD9SIP5kVZ8V34xT0Z3Ht08NSGM0U/gsTE?=
 =?us-ascii?Q?apHvb8kxrfLwCmF0YSqUe3zPFYjAKMkZmA4vfpIFrvEyGGfaP7EL3/Aa0q5h?=
 =?us-ascii?Q?JLjcAJOHoFvMFPp8CVQcrgYDuMKaiKNgTQzkwJ6PUoXm8Br6e7wdS8Y71P3U?=
 =?us-ascii?Q?BRfVOoFH7Q6wUtsA3MwBPIdfz1bixK3lXYncy/ZE1PLzrZiDZA4mvSFxWQ8P?=
 =?us-ascii?Q?JelKlHcM2YH7LtPsKTVBi4FhSrbFlwg/5QXKnamDArg03k3bKT74KXnRfAlE?=
 =?us-ascii?Q?/mTGWRxhhz1Mgk67VRfoILhYAsHAPePPr8dgDv0+Ba8AhAkjvZqoa2Zjzv5o?=
 =?us-ascii?Q?NGyia2aviPGYNPpipOggSvbfkxWVoR0DE5h33L46ZQA/WC7MmDgCvqbvVYQQ?=
 =?us-ascii?Q?1B3AHAtvCRzAWmQ5i7BqdnpcKVWVFW95L2uYUn4F?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a6b9edf-80bc-46dd-5c2d-08ddb48a626e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 08:21:00.9544 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wT/z7xGSnjO/SCLQUnNCdnxItC1W+CSYmyya7ZDdJ0j8k6+46xw51AfiXzC0Ds83PyQ6YSjQxlXbrt2EQZXpSg==
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

An AUX access failure during HPD IRQ handling should be handled by
falling back to a full connector detection, do so.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f48912f308df7..3f911c930a30b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5113,7 +5113,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 		if (!intel_dp_get_sink_irq_esi(intel_dp, esi)) {
 			drm_dbg_kms(display->drm,
 				    "failed to get ESI - device may have failed\n");
-			link_ok = false;
+			reprobe_needed = true;
 
 			break;
 		}
-- 
2.44.2

