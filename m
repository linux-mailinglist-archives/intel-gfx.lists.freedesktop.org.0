Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11789B1AF63
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 09:37:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E22110E5FE;
	Tue,  5 Aug 2025 07:37:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kmNhtAq7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C11D10E5FE;
 Tue,  5 Aug 2025 07:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754379450; x=1785915450;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=JfeGL4ct8dF466Q+lYc4cK5ED4t6l4I3Fyku8goIuiQ=;
 b=kmNhtAq7JJTlXkQj0j31vscF2MfnPY1vVeeET/X5Gqgftaf9b9uvyy+m
 nuOAbhZ8tcP0NFShK8eBGH4W02dWVzP39JTS+py+KVeT78OtJsuyR81a8
 Pqi0k2Qv+Y5Qxj4U5JVV7A42f2RFES0V3+YRTP0dlLaYE0gJk9arih5wt
 1qAUMVdhxpSgIiKtFoSA+QExWbPqBiiVIlfHDJQEUiPunSGOmtUCALH5I
 4ESD9iOeuKbHa1TyDNe5Y1pJQiEfTZ2EVUpVPF+H/CFHStnhrTEJ++NUt
 KzWTtnPKoLUqjORz5GJgJvdomiG/vCOR9Xi97Pmv/yiLYKUO5qjCKtFC3 A==;
X-CSE-ConnectionGUID: Cf945sBCQherua5HcUjgaA==
X-CSE-MsgGUID: 31Ay13lcQdCZMmZDmtVkxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="79217796"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="79217796"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:30 -0700
X-CSE-ConnectionGUID: rY4JmMhiRAC1HBe/x4InFQ==
X-CSE-MsgGUID: DRwv8NLoS4CHgtWNxbuNeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="163668532"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:29 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:28 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 00:37:28 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.41)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P2XUgWcseDstkgxlUZo2jzAUVXU6eyoohMzuCyk1wxpAcyzpzatRRS2Ch4UtiipOfNQgK0oRgB/E7oP42Htj8EzO9PWE2Ss4aIxo7543VFPwqPe6rgyFPc3le7myO/FiV3NFPeY+m+b0f9KH+x+hjxqWomjutXZFQIeOYSLHw4zb+ZR+wZ9MGDm3iMRYTiPNl7YQeikXSC1OTRWkH8+6ZEi8flwGIgpS/PR/8m7y/MQ5s6kaZh7hzRx/wsgAkmSkQ9TuawLoILTQeDmk5nxRglLfsjpiTcN/+mbxRh3sBMgpfOKkQPlToyONEoGawqnfG1HxuLkPM2njv5zYzHdosA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JsSKA8WA2MxkD8lVtNs02cnpNX3l87T2L/T5i7n27NA=;
 b=d6siGA+DhRAOs86nR0Y9ylmWNC1L14ZgsXTSEWNW9accSCVH+A4u5k3Q9pKUAYK/3eMlOnkOc/H/i2mT/zdWlFDxJv4woevGyjO6pJJ0d2m/F6qJQPkU/hZ8Rhp80dQbZ6J2Po8SixDLl50bEtUkLUrbiuZRgz3eNbFoMczK9sMGxRPr3zVp1vErel2Nws+4BsCXWWgMkf9BI9N1efvHzFXooNYlF8vZATM6085G2CJysiBd5Q1SlM9p162ON1SQTbj5M5MPYUYJ+0CYczvCRiL42Pik6MRZQDWQGXM1h/h4zCu5NlFCtE/vuAn1+MSoq8NyTuwGbRrQyJGPMKvbBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8161.namprd11.prod.outlook.com (2603:10b6:8:164::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Tue, 5 Aug
 2025 07:37:25 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Tue, 5 Aug 2025
 07:37:25 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 09/19] drm/i915/tc: Add an enum for the TypeC pin assignment
Date: Tue, 5 Aug 2025 10:36:50 +0300
Message-ID: <20250805073700.642107-10-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8161:EE_
X-MS-Office365-Filtering-Correlation-Id: 6a0c00dc-7fbb-42cf-b3b5-08ddd3f2ebb2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?OAFYpdFpvt0TTWSx9u35UEB3FfPbJAgHI7J6RFhntMp/wnDZIBemelEEw9dD?=
 =?us-ascii?Q?crWniFWpRp4eqalNLdYVtwpHIbcAMPzkawSyTWHXwBKy1bUF4KFATPCLYo/V?=
 =?us-ascii?Q?vG7o5tZnrBiQUxwWG48kykbAy1LqOyRx49BTWuIi8Iv4hQBuSYTAjt2CTaXy?=
 =?us-ascii?Q?xrEO4n3D5rexiCedKnrdoFqoyx1earyRTC72V8lomM7k6mOEvNZapsz8YAD5?=
 =?us-ascii?Q?a6rI0TA0YAaU504GH7FTnDfazzX6kHWtTA7mqC6eSlz+DM+Ldw0n5/6w54R/?=
 =?us-ascii?Q?ZzlrveSK7P5ch4yO0BzpcydfgQPz6+5A8eGAvYOWdme6NZMpfBrvIUk6NqWc?=
 =?us-ascii?Q?LgDUJaeUinfaATpYV60xanGjpEij6rGjCiosciiYz2mKuSyy3JS+0geg5Q4O?=
 =?us-ascii?Q?Aay03P3F+eWgZJsJBIdG5I4LPMtOQo3oRRoPiXfKAvm7nsUokO98pEJ0uZwL?=
 =?us-ascii?Q?wdC4O37mJI3fBJZJT7Fy+6b+wtrdYGvBaf7QGeynvSmMBLiVk6JvVG7VJmCf?=
 =?us-ascii?Q?p21poxO+wIxRbwmCag8Zj9yZECrLzwwkMAdMMeWss4JoRe0Qb+j/PDp9MOqc?=
 =?us-ascii?Q?WX1pHAd9d//Se3fbv9O9sfqYhW+Iv0OH4tOL9eQrisjE6EnzbWEPbfgLCcfg?=
 =?us-ascii?Q?7uawc5M/Rgip0ASYic5PDjavsMf0JxcRF81y/DuAG61iaVa2xd+b0MQq8QDw?=
 =?us-ascii?Q?qKNes6f6nYyt/VZPcADBijD2T/y6cd7K8CebfuDargwNw00VOt8TjEaXcKlP?=
 =?us-ascii?Q?1LCHktA7C5nKi7/jopCtbFTMjCh5PYRO0eYgcr4B3VuyNGA2Nkc8o68ajMf6?=
 =?us-ascii?Q?hEzN04l4yCsMzUOlNmS0xjgT/wt5B3f5ZNLNKJFEWsV0Nd9JQmDk6/sBDb4/?=
 =?us-ascii?Q?LNLEA+rYrpOZgYsFU3uPi7lBh+NwnlygyR72HywM0rz0jIDFnxLMY+MjpVYg?=
 =?us-ascii?Q?KAUO6yI1PvIU4QlMbzPEjkbCWumLKFBI5g9AMFNMCM9ZsN7TQxnuBCNQHtmM?=
 =?us-ascii?Q?WYSdztUSmf0STqysTGjwN77CO52XsYhqTc23D6+v1L/SheiPHO8vD/PCBfvm?=
 =?us-ascii?Q?Hvxrf8dK3U+UptmF8uF+gx2Av7fvmEBsGSUl3LNmXOLf3LsF6fxPv47fF4CP?=
 =?us-ascii?Q?vX00TEsHy4tNzGhrnnbAxHZhEoasw7f3CUbuZwVxh88URV/bkiq3yzUW2/9Z?=
 =?us-ascii?Q?3aib540QLbDRc/06Bs2uR5g3AZji9qKw0xsBGknGVNCotXnFAfj6KaYKiwgB?=
 =?us-ascii?Q?NyQKZ/7ydP5riLjEEYNGN56g7lYCsHUk4TtU+NhcukOIUfosN05CHW53Csga?=
 =?us-ascii?Q?s00/qyaop/LlY3ucKu3yDkOrX8hjoJ0BBdxQ3SAzLZCkXU7d1Mxmtvfh3fli?=
 =?us-ascii?Q?f3V9HyAPRhfqCUpKDjwNiNFbIKQpd3bIzF48vTWIQyPdR81Ctl2eFo/Aa3RL?=
 =?us-ascii?Q?7LiXAjTY1GY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?alRUSZpwrCouW0IpxoBPrVRqUmM4980pvtzNmODctudb7Dd02SaaAZhxtb0B?=
 =?us-ascii?Q?0ij0iD1uECfxcUgn6zw/MtGja4H5liuQ5s7CXYymXfPZcAz+alqGVgKim1o5?=
 =?us-ascii?Q?hCLVoh1tq+kzkGGcgVC6NSDSmDAML0I8YVfGmCta3fFTXL0o/T656l8CMsgw?=
 =?us-ascii?Q?hPh6w+NX/7s5B8kVAcVf8iUvRNK5T1T9YuvSbLjCHtnyYVdZNU8GyJEuzxs5?=
 =?us-ascii?Q?gF/DDkUOK/VHhn9zyL/bHa5NdCKo2OQ4UJp5YYSuWvOykigGeoYF+kBuYGks?=
 =?us-ascii?Q?jJ4R/jeEKgWLamHkTA461npT/Z/Oa4IniJevBMp3C+vFYlWYsfGlPM0yECdl?=
 =?us-ascii?Q?W5VszfN3E0rMrG7wzr7E/Tl5JhvJh13ZmpMJBGacpG3VeypAOXZNfVdgs6H0?=
 =?us-ascii?Q?QsfhBP5aCDwfXeWS0qaRb1sWDBujID3rJtXho6EKNhAmHO9jlp44/D6TQQOL?=
 =?us-ascii?Q?RBBRSuZQtUrJ6c9Ve8WvO1Da3gmaVXsNnTUAEUVVIJdG/PxDzAobwTUX5RAQ?=
 =?us-ascii?Q?j2aQ9A7L6wiqSfv1xGqZlHicFzdz3WQ/Z4ty5y5Ylv+TuSvRwwz/OeFDufJh?=
 =?us-ascii?Q?t7ouCNFnDoIikk1AqnkMZBJShOszLUUOjWlq4/U7uno9rPCu9lOLpe0TAqGo?=
 =?us-ascii?Q?4k0kaZU/PLIRBZdv8IF8o58PL7xWQbI2KG3atV4Ruplu4hJz76Qj86cl4mXw?=
 =?us-ascii?Q?XmelR5bK10ypIKTerqXCrKBXO2mUa5JapS1UQPw3iFSt1EdMWuDVou44giiM?=
 =?us-ascii?Q?eNsLIenOzlRno5rpLugmbd8bCXenb+gQQw4V94e7qoIsZwAfPZR8ZqBO7WLi?=
 =?us-ascii?Q?NCy8kShUejk7gd2tOSYMYR7OA5SgLHy7z3CC2GwYzmGg6FDumYW1sCLMsv4L?=
 =?us-ascii?Q?FiJpNJOVK9RLOC6B6i4wMdrSr2Q7JRSCC5AZq4QCve6mQHvfGYMf4Msjy47+?=
 =?us-ascii?Q?MjXPknAc1fADR93nVaxmKDbZSVLj70W0PN5M03QVabWdZZA+Ohys9PtZyPi9?=
 =?us-ascii?Q?fVgzz30lC2Ns6IL7PbtAvgbHgsv58NjfZAqyBmvT9ERB4L52RNcsNWJnrkm/?=
 =?us-ascii?Q?Z9nevDub734YwBi4JCHMQg0phkrIk+6OfvQ14ZmfN8lvYfNttfbXdsBMEwnh?=
 =?us-ascii?Q?AGP0kIvF8h+8fq1tsi4HOooqkBUQg7Ev4NzpSHvupjvMCINgKCJEByBBBz6R?=
 =?us-ascii?Q?RWyJx2FU1/84kArioEF3o6Nt9slwLSBkmawT/o4dlARWC6I3jJN9Epk9YEcM?=
 =?us-ascii?Q?jF/GAtPY8BP0KnYxarU9cL83kXrrSDWaAms0qQ+H56HJeEa2HKfiZhJYs2RQ?=
 =?us-ascii?Q?k9g0kKe8t6f8FXquT+kcUFzxFW4JQIAqjNWkibPIzBWppJupxfrF0kXNk/8W?=
 =?us-ascii?Q?C/ad92kPR6dnD3u/tHsqdoynrV2EHB9V+R1kn6BAPrzYnIzqVKo4FrMSjkBw?=
 =?us-ascii?Q?Pcj2ohvUZpGk/pkqdOJHq8wYkRfoAx74qWFKgZCJp+lvkUsmyOycE+9Ic7PY?=
 =?us-ascii?Q?9YB7NoyIUpIAWIqSYAqvuX1SphMf7ZX2rjW3ltzg/CdJxq5ZRcqYPJVcIxeI?=
 =?us-ascii?Q?1VPnu681UbGAVdtIQqlxPQygNcoGURPtAgJwHP2LNSoxmlfmb9Z3p/iRYr3w?=
 =?us-ascii?Q?EDAFFhmPcPapK4A2QWPbMBezOJXbQUdU6EyOveclwyoX?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a0c00dc-7fbb-42cf-b3b5-08ddd3f2ebb2
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 07:37:25.3028 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6Oc+gssTiqZfD80ZwOyaKW8uQaLQQmFszFi5RBz5bzaavxgL3pVmzzVPDYZQYEzQ76vkhtWovdP+Pp3rlyfWuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8161
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

Add an enum for the TypeC pin assignment, which is a better way to pass
its value around than a plain integer. While at it add a description for
each pin assignment, based on the DP and DP Alt mode Standards, opting
for more details to ease any future debugging related to a given pin
assignment and the cables / sink types used.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_display_regs.h |  2 +
 drivers/gpu/drm/i915/display/intel_tc.c       | 19 ++---
 drivers/gpu/drm/i915/display/intel_tc.h       | 69 +++++++++++++++++++
 3 files changed, 78 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 7bd09d981cd2d..9d71e26a4fa27 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -2890,6 +2890,7 @@ enum skl_power_gate {
 #define   DP_PIN_ASSIGNMENT_SHIFT(idx)		((idx) * 4)
 #define   DP_PIN_ASSIGNMENT_MASK(idx)		(0xf << ((idx) * 4))
 #define   DP_PIN_ASSIGNMENT(idx, x)		((x) << ((idx) * 4))
+/* See enum intel_tc_pin_assignment for the pin assignment field values. */
 
 #define _TCSS_DDI_STATUS_1			0x161500
 #define _TCSS_DDI_STATUS_2			0x161504
@@ -2897,6 +2898,7 @@ enum skl_power_gate {
 								 _TCSS_DDI_STATUS_1, \
 								 _TCSS_DDI_STATUS_2))
 #define  TCSS_DDI_STATUS_PIN_ASSIGNMENT_MASK	REG_GENMASK(28, 25)
+/* See enum intel_tc_pin_assignment for the pin assignment field values. */
 #define  TCSS_DDI_STATUS_READY			REG_BIT(2)
 #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_TBT	REG_BIT(1)
 #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_ALT	REG_BIT(0)
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index de9129b65d34f..9a40ad07830f5 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -23,11 +23,6 @@
 #include "intel_modeset_lock.h"
 #include "intel_tc.h"
 
-#define DP_PIN_ASSIGNMENT_NONE	0x0
-#define DP_PIN_ASSIGNMENT_C	0x3
-#define DP_PIN_ASSIGNMENT_D	0x4
-#define DP_PIN_ASSIGNMENT_E	0x5
-
 enum tc_port_mode {
 	TC_PORT_DISCONNECTED,
 	TC_PORT_TBT_ALT,
@@ -317,15 +312,15 @@ static int lnl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 		REG_FIELD_GET(TCSS_DDI_STATUS_PIN_ASSIGNMENT_MASK, val);
 
 	switch (pin_assignment) {
-	case DP_PIN_ASSIGNMENT_NONE:
+	case INTEL_TC_PIN_ASSIGNMENT_NONE:
 		return 0;
 	default:
 		MISSING_CASE(pin_assignment);
 		fallthrough;
-	case DP_PIN_ASSIGNMENT_D:
+	case INTEL_TC_PIN_ASSIGNMENT_D:
 		return 2;
-	case DP_PIN_ASSIGNMENT_C:
-	case DP_PIN_ASSIGNMENT_E:
+	case INTEL_TC_PIN_ASSIGNMENT_C:
+	case INTEL_TC_PIN_ASSIGNMENT_E:
 		return 4;
 	}
 }
@@ -340,10 +335,10 @@ static int mtl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 	default:
 		MISSING_CASE(pin_mask);
 		fallthrough;
-	case DP_PIN_ASSIGNMENT_D:
+	case INTEL_TC_PIN_ASSIGNMENT_D:
 		return 2;
-	case DP_PIN_ASSIGNMENT_C:
-	case DP_PIN_ASSIGNMENT_E:
+	case INTEL_TC_PIN_ASSIGNMENT_C:
+	case INTEL_TC_PIN_ASSIGNMENT_E:
 		return 4;
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
index 26c4265368c1a..d35d9aae3b889 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.h
+++ b/drivers/gpu/drm/i915/display/intel_tc.h
@@ -12,6 +12,75 @@ struct intel_crtc_state;
 struct intel_digital_port;
 struct intel_encoder;
 
+/*
+ * The following enum values must stay fixed, as they match the corresponding
+ * pin assignment fields in the PORT_TX_DFLEXPA1 and TCSS_DDI_STATUS registers.
+ */
+enum intel_tc_pin_assignment {            /* Lanes (a)   Signal/   Cable   Notes   */
+					  /* DP    USB   Rate (b)  type            */
+	INTEL_TC_PIN_ASSIGNMENT_NONE = 0, /* 4     -     -         -       (c)     */
+	INTEL_TC_PIN_ASSIGNMENT_A,        /* 2/4   0     GEN2      TC->TC  (d,e)   */
+	INTEL_TC_PIN_ASSIGNMENT_B,        /* 1/2   1     GEN2      TC->TC  (d,f,g) */
+	INTEL_TC_PIN_ASSIGNMENT_C,        /* 4     0     DP2       TC->TC  (h)     */
+	INTEL_TC_PIN_ASSIGNMENT_D,        /* 2     1     DP2       TC->TC  (h,g)   */
+	INTEL_TC_PIN_ASSIGNMENT_E,        /* 4     0     DP2       TC->DP          */
+	INTEL_TC_PIN_ASSIGNMENT_F,        /* 2     1     GEN1/DP1  TC->DP  (d,g,i) */
+	/*
+	 * (a) - DP unidirectional lanes, each lane using 1 differential signal
+	 *       pair.
+	 *     - USB SuperSpeed bidirectional lane, using 2 differential (TX and
+	 *       RX) signal pairs.
+	 *     - USB 2.0 (HighSpeed) unidirectional lane, using 1 differential
+	 *       signal pair. Not indicated, this lane is always present on pin
+	 *       assignments A-D and never present on pin assignments E/F.
+	 * (b) - GEN1: USB 3.1 GEN1 bit rate (5 Gbps) and signaling. This
+	 *             is used for transferring only a USB stream.
+	 *     - GEN2: USB 3.1 GEN2 bit rate (10 Gbps) and signaling. This
+	 *             allows transferring an HBR3 (8.1 Gbps) DP stream.
+	 *     - DP1:  Display Port signaling defined by the DP v1.3 Standard,
+	 *             with a maximum bit rate of HBR3.
+	 *     - DP2:  Display Port signaling defined by the DP v2.1 Standard,
+	 *             with a maximum bit rate defined by the DP Alt Mode
+	 *             v2.1a Standard depending on the cable type as follows:
+	 *             - Passive (Full-Featured) USB 3.2 GEN1
+	 *               TC->TC cables (CC3G1-X)                        : UHBR10
+	 *             - Passive (Full-Featured) USB 3.2/4 GEN2 and
+	 *               Thunderbolt Alt Mode GEN2
+	 *               TC->TC cables (CC3G2-X)                    all : UHBR10
+	 *                                                    DP54 logo : UHBR13.5
+	 *             - Passive (Full-Featured) USB4 GEN3+ and
+	 *               Thunderbolt Alt Mode GEN3+
+	 *               TC->TC cables (CC4G3-X)                    all : UHBR13.5
+	 *                                                    DP80 logo : UHBR20
+	 *             - Active Re-Timed or
+	 *               Active Linear Re-driven (LRD)
+	 *               USB3.2 GEN1/2 and USB4 GEN2+
+	 *               TC->TC cables                              all : HBR3
+	 *                                               with DP_BR CTS : UHBR10
+	 *                                                    DP54 logo : UHBR13.5
+	 *                                                    DP80 logo : UHBR20
+	 *             - Passive/Active Re-Timed or
+	 *               Active Linear Re-driven (LRD)
+	 *               TC->DP cables         with DP_BR CTS/DP8K logo : HBR3
+	 *                                               with DP_BR CTS : UHBR10
+	 *                                                    DP54 logo : UHBR13.5
+	 *                                                    DP80 logo : UHBR20
+	 * (c) Used in TBT-alt/legacy modes and on LNL+ after the sink
+	 *     disconnected in DP-alt mode.
+	 * (d) Only defined by the DP Alt Standard v1.0a, deprecated by v1.0b,
+	 *     only supported on ICL.
+	 * (e) GEN2 passive 1 m cable: 4 DP lanes, GEN2 active cable: 2 DP lanes.
+	 * (f) GEN2 passive 1 m cable: 2 DP lanes, GEN2 active cable: 1 DP lane.
+	 * (g) These pin assignments are also referred to as (USB/DP)
+	 *     multifunction or Multifunction Display Port (MFD) modes.
+	 * (h) Also used where one end of the cable is a captive connector,
+	 *     attached to a DP->HDMI/DVI/VGA converter.
+	 * (i) The DP end of the cable is a captive connector attached to a
+	 *     (DP/USB) multifunction dock as deined by the DockPort v1.0a
+	 *     specification.
+	 */
+};
+
 bool intel_tc_port_in_tbt_alt_mode(struct intel_digital_port *dig_port);
 bool intel_tc_port_in_dp_alt_mode(struct intel_digital_port *dig_port);
 bool intel_tc_port_in_legacy_mode(struct intel_digital_port *dig_port);
-- 
2.49.1

