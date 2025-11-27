Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D22F5C8FCC8
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:52:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 779B410E8BC;
	Thu, 27 Nov 2025 17:52:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K1ONWr+7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFFF310E8A3;
 Thu, 27 Nov 2025 17:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265927; x=1795801927;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=Vs5SthTefkRErbyaez/CUgnqXzAvl20kf+mb0sXZdj8=;
 b=K1ONWr+7cgDMHfsHR4sbLoPRApguNnzPxF+I66n9dzwvJRVq1XQZSLY+
 oDdzvkgTR9yWKl/chi1Lkdvk+6LP5A5mfXy2pKwaG9R6Nc4/06QG+rgio
 chNFVmqHiZtmdx4v+CHupVKCbJqmVAE2B5Z+Vw+nH0F0wdY66BjHwXwgV
 aeJiglLhdFgov5WwnyHlpyD4MM+LLZIYX+1+l3K+YxDNrWHnHlKzrySU8
 Z6pY4XakKGjYoX1mbeVzi8aIZM82A5coM0tV5V2Y+6qBZPNOC+YJfZnQy
 RcoBI4U6JQKizh0/NufJ3hvbsL7b67s61rSZUy+U9Resa++7Kp+Tmw2Ly A==;
X-CSE-ConnectionGUID: F2mt5CoBSUmtuU+Kb/CUDQ==
X-CSE-MsgGUID: XZZYPfYSS1ms1l/0ktYYkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77003045"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="77003045"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:07 -0800
X-CSE-ConnectionGUID: 64D2zhSITv+KtxH+WiKJTQ==
X-CSE-MsgGUID: 1WMSSBpnRr+dxdONlwnGTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197453724"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:07 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:06 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:52:06 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.27) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Te2yFTEF6kNSt7ea7NrLLldDhWlFufHVo4a6xPsNG0+3Gok/sALp8U316ElopegcHYqJ0KXsHeio9iW2dscthLlRzsOpUx/GLmrirgVeMMxddZ+eylXyvYlUdx6ODzfUBO80xOMzv0myYmyN0Ea9HDClFzE0Nn4dqeNkE8tv+Kp6SsxRnLTsJZOwqlm0i9klHuct3331gOU2AwuaBT6t/FkvEt+cuGi736pRJJcS/h3k8tRhmFjhXSHWaZbT1UD/o2wmgWcEvtNV/B4qbZPErrja7QPZ2TyPcAKahA4kkJFek0XrK5ZDMecuphBCYdyg5Cpr1hVk4yhQf/R7JG713A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CrVeL4QkiI2nwmEMT1U4/rhTig/GULNLhzw/ScUEOc8=;
 b=dYkn0UXKur7cXpXOpfIr3FBLYD0MVlW5m+viD+a1PUivjJyAUvFqn+9kzk+flNLYeibtgiV0q/bcnA5zwe7i1sOMID+rpuepV5NutjBUtVwCZ6NONavZWpAGJMw78QZzOkP3zEnqjM03YF0Lzs4WCxDpuvRMA/KLGztYMdJYvu/rXYdlEwaYWfY9vGGB25hkeQZ36fEKtrfF8ybxvQ6en2zoTzeNndXHYqadt7GjC++XD9XgxRSJUmQCX49mgFsLOZOgnjow5iyYoAzTc9ni0bWnZDPskVcV3/Lvw8E9iy/mHpT+MzjbDRG5BehNDJGRsk+KZca4V8RCsS/lb5bSAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS7PR11MB7887.namprd11.prod.outlook.com (2603:10b6:8:e2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.14; Thu, 27 Nov
 2025 17:52:03 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:52:03 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 45/50] drm/i915/dp: Simplify the DSC slice config loop's
 slices-per-pipe iteration
Date: Thu, 27 Nov 2025 19:50:18 +0200
Message-ID: <20251127175023.1522538-46-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251127175023.1522538-1-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0255.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37c::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS7PR11MB7887:EE_
X-MS-Office365-Filtering-Correlation-Id: c5d8da05-ab97-4d1d-5fd2-08de2ddda21a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?yIN+maWFrScIAscgWki5NiY+jnJEQxOtERAShsbuTqh3F4bADQTJKl8/GbOl?=
 =?us-ascii?Q?eqRGv+JtCb7d0VaSaC9+41o0SyAOWMWkOpdrXDVkG5LV3FTu7I6qT6rMS1/f?=
 =?us-ascii?Q?iFIT5Q/JSRite/kHaFnxJWjyWWMF+oFdle88tl59KdHlrilO97puT8qrlul5?=
 =?us-ascii?Q?SVWvWPE3nEFt3O8EjZYxEYdCfNgFDRzfz9LLBACCizrkueDlNzBpx/i4hUeT?=
 =?us-ascii?Q?OOKOjwUWn/9Ez/FRK+oV2nkLref9G9/OOy+QvvrKZmdd/8B5RWgpssNiMyA3?=
 =?us-ascii?Q?kQ2OUXLIlj7mLeANgULWukeDQE8BTMO0jkYsaoe7uq5RAqbnzT3MBLiQJvIj?=
 =?us-ascii?Q?xtBCw86v6LKtQ82pUrrdPTQeeZmUkkqrLwfCRypsMdtXlPYVyM7NGXm1fU0h?=
 =?us-ascii?Q?P/9LkO+6kgczJDluEkjz3VNsZI8SqJf88KDXXBQ+CT+FMjNdkXl+EBdumXR/?=
 =?us-ascii?Q?MAxwuH4yOYpRDBUtNZEzymHs6XZYQ47TbA5FAZ88wWxRaqn1STeo/qUThgP3?=
 =?us-ascii?Q?onLF73vg6l+jcvK7EGq/K/gX9r1PeLSSBz64QmF4uJiKjzUdpIXcqoF4iaKA?=
 =?us-ascii?Q?kyVpFW+0f3P0Hue8aewRswheWEWiZwdf0NiwJHkrRoYFr43ORB1/7sKwwssk?=
 =?us-ascii?Q?B7+iKoHKrL/8DZtvrGEtsQwNHYMJjUkbVgZVuOS4OvGWV4zw+zkXu0JMkybm?=
 =?us-ascii?Q?qqf0gG+dXrqO3mCZBR/RBLCCbV1yMu+JCheWCQJvN6T4la1t0r55nU7jaPT6?=
 =?us-ascii?Q?+sb1/zxStvVINu4qchIzMlB3jKJH0aaWybvVxYDi5IJbmFtJffZumcjsBuEo?=
 =?us-ascii?Q?TrGsYVLWkB62Y+7N11OCRQWQIZt0jZEGWfFerEJWPTSLk0ZQZjyDruDLBvpw?=
 =?us-ascii?Q?t9nP9XJc1bWKVEnUFnam+iYtkLHGto1F7u/BtG9ZFEe3bT2sAOZKwyRHW17b?=
 =?us-ascii?Q?c0KavR0uFMm4rZe1bbgQJMOZCqyKpq7L4L6qM4PLdvVJojtW+1m0K+F/5YLK?=
 =?us-ascii?Q?J1kP0RLb8EhzKoq/lXNGCF+CLDkR+EM61EptezKl3f6BYg07vaKBpNzft3hA?=
 =?us-ascii?Q?3i771S6TZeR6WCUrZW+mhMdro/VibfQ6AC9n5s0LB50qJoewygOJlnuE4iQe?=
 =?us-ascii?Q?VIAYlmqe86getMLTLkHyieXN68tCLYbnmsJA04Q4lGKmFbYwh4p6ghUOxi3P?=
 =?us-ascii?Q?qpS6nnnFzk1J6Og6ko0hul5BSuR8gr/unaC0OWp8V/v4dc/ns4j1SufWYupQ?=
 =?us-ascii?Q?rjZIySL6+Qud+I2DfZVMzYEUoHT/B7FxMmhmzTgpXTbXSS+Oem3ne7jsA2tG?=
 =?us-ascii?Q?2JoKg/MI3hPMdWLNfJWxz+OPi09WANq48M/jNt3bTIO+I13P3poSeWQVG0gD?=
 =?us-ascii?Q?wWO8bfv1kQ1q0Css3/Bq4TTuhHPajMsaI6NTk8WVs/k6blyl07Li6KiCTvQ5?=
 =?us-ascii?Q?U6e8gIbckYHFAv+U7azLtMH+nnCSQggE?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ElrppcgxRlJZncy/Vfg7Mhf+QGaDoxIe1BDSaTjleVuqWpiG17eqojvAs0JS?=
 =?us-ascii?Q?4Y39l4eR0sDUs8wZdETHYuDQfZEoNM9nrgVvqPpxailYhJ4g5KAGGvc6kNZJ?=
 =?us-ascii?Q?wJVjveU/ni1aYwGbGrrzydBLWzjF31ZyjtbmSwtC2oaiZqzIhduJpNPWdMDP?=
 =?us-ascii?Q?byQCKf6cZQ03QNB9trdrS+533RRVTUtlUSMPzgojZvXYDCBC5wphGHGDeVuY?=
 =?us-ascii?Q?iPUYtY6K9e+6JJSf5iNhu7iGG/4K2x+BBMTU+T+PN99NikzDClGnEvD+DM6W?=
 =?us-ascii?Q?KheB55aDLREp+Q44cBCYDJBEMmyALdgchIkbsDjebwd7D0tjtHAeNv2wLzNi?=
 =?us-ascii?Q?bGwlMqAKAfnSHS6NMMXnCcsitTP7I1hIauoKCvsHYpxIwf44XEgrsT7WISSH?=
 =?us-ascii?Q?UpCIFNRTYJLuRJeVqB13CqjiDrp0B2JvSST0d3Kps9zQUgeUCypkVKPW86Bc?=
 =?us-ascii?Q?nhZknBlhjZpF11QqvIb2yn8u9jVxunv110BC0F6nD2+X866tranlKnnyCr+Z?=
 =?us-ascii?Q?9MU9V9DGsZqaQZoexMl4x6zthw3DI5CqJfkHmidHskrjgoA9p/jZoaXdBJBe?=
 =?us-ascii?Q?n0KPbWoExvQ7Z+G+p5XsS/3orlKpQ+eCDcoJJ36mKe3LiQtGBTW1ZXzu2LrL?=
 =?us-ascii?Q?Iqz8bcdJwAfVbGRe79Sjt6gzYlcGc4kztObI1cfcjV2pUewnhedEuD9+jLjC?=
 =?us-ascii?Q?Q/GKwpdoBkXG2W6DCB1Jver+mo6I/QomEMDpYYlYeJNE09P64yAdRFlx3fWG?=
 =?us-ascii?Q?nPtoypoLwI1ZJpryeiT3ZFwxviyf8bKShhro2gpXXX+xbcFZmFAo6QZwd5Qs?=
 =?us-ascii?Q?Hi4cdQt5CImZR7PZeKuSa4e6Oan0ToH8a6DSeC9E9tvgN7wJ5mk2VkX5uLcB?=
 =?us-ascii?Q?qSUz4WARGfjgajaIiyjG/+LD+u2LAIsUnOyYt+W6rT/YcGNLhATZHyuAW2MC?=
 =?us-ascii?Q?/YzGr+R7J6VHKd+xL6zGh4SeqvQqchxwW2V2d41gPJK4p5Af64e27AoZue9V?=
 =?us-ascii?Q?IqGKubiptvAn/fNcybcCfv64PiqA4pVyTG1tNA/VckKZH+SsvQlEL6kaKF1W?=
 =?us-ascii?Q?WUm6V2yN7Hb20Ejq3ppi+MWyr7Ryx9n+nsj0QLrDf8FaBcFOxkLtkMUf+d+F?=
 =?us-ascii?Q?p9hjCaFfgVI1RWnIJJiKIT2+wfqUKi7618QZHnNesb1y5cKAK8LxLznJ8UbZ?=
 =?us-ascii?Q?0Nh2EFimYDDQVZ2CEK5kE/xgYM/gqcA8WXL0j//+AUd8K7qvyJcxa21yU7GM?=
 =?us-ascii?Q?2It+YQ8zBcfZamSqpFQEkzANgcnfSEhDb3IY1m7QjxU5cFZiK2eJ7a+vb+1a?=
 =?us-ascii?Q?YiMIVh53XMUgRh9YcKZRkCLBkg79Vw5pefJmtDA3OzDAK4sm1VjXHP0eOhgs?=
 =?us-ascii?Q?dA1EgjoIO/bQ7RcByIh/Zl9wfMbpxKp0KMGeZWNYsUmcprbp0X7cy+nCDt+X?=
 =?us-ascii?Q?7oLjPqPzFSVxLKS47+qNAXuh3BlIu7MYffBlNHsPqUFjGkVE1e6fMQc85ftX?=
 =?us-ascii?Q?Gxn7DYhHyLEika2UqLGYhgg3wV2pu6EERedfLhWaCYX4iDyZxDY5yyEKKB1i?=
 =?us-ascii?Q?lz+WMVnbg2cfQSlU6/sBDkr50GrRKZUN7ix2CcF+d8/OtXie5nZtEsciPPVT?=
 =?us-ascii?Q?hpQZbvmlmW7PkYWcu/tiVG+9H/wuouZc2C7JXFLNJulA?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c5d8da05-ab97-4d1d-5fd2-08de2ddda21a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:46.4952 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iliK+vBPKPrJGqGUaIvW18odnmHRzxLnbOb1WyEV0Nxzo8ctNOdSti3mtBeCYXRITkoINckFmN4I2+hORZvTBA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7887
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

Simplify the slice config loop in intel_dp_dsc_get_slice_count(), using
the loop iterator as the slices-per-pipe value directly, instead of
looking up the same value from an array.

While at it move the code comment about the slice configuration closer
to where the configuration is determined and clarify it a bit.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 33 ++++++++++---------------
 1 file changed, 13 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 650b339fd73bc..a4ff1ffc8f7d4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -107,20 +107,6 @@
 /* Constants for DP DSC configurations */
 static const u8 valid_dsc_bpp[] = {6, 8, 10, 12, 15};
 
-/*
- * With Single pipe configuration, HW is capable of supporting maximum of:
- * 2 slices per line for ICL, BMG
- * 4 slices per line for other platforms.
- * For now consider a max of 2 slices per line, which works for all platforms.
- * With this we can have max of 4 DSC Slices per pipe.
- *
- * For higher resolutions where 12 slice support is required with
- * ultrajoiner, only then each pipe can support 3 slices.
- *
- * #TODO Split this better to use 4 slices/dsc engine where supported.
- */
-static const u8 valid_dsc_slicecount[] = {1, 2, 3, 4};
-
 /**
  * intel_dp_is_edp - is the given port attached to an eDP panel (either CPU or PCH)
  * @intel_dp: DP struct
@@ -1032,17 +1018,24 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		intel_dp_dsc_min_slice_count(connector, mode_clock, mode_hdisplay);
 	u32 sink_slice_count_mask =
 		drm_dp_dsc_sink_slice_count_mask(connector->dp.dsc_dpcd, false);
-	int i;
+	int slices_per_pipe;
 
-	/* Find the closest match to the valid slice count values */
-	for (i = 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
-		int slices_per_line = valid_dsc_slicecount[i] * num_joined_pipes;
+	/*
+	 * Find the closest match to the valid slice count values
+	 *
+	 * Max HW DSC-per-pipe x slice-per-DSC (= slice-per-pipe) capability:
+	 * ICL:  2x2
+	 * BMG:  2x2, or for ultrajoined 4 pipes: 3x1
+	 * TGL+: 2x4 (TODO: Add support for this)
+	 */
+	for (slices_per_pipe = 1; slices_per_pipe <= 4; slices_per_pipe++) {
+		int slices_per_line = slices_per_pipe * num_joined_pipes;
 
 		/*
 		 * 3 DSC Slices per pipe need 3 DSC engines, which is supported only
 		 * with Ultrajoiner only for some platforms.
 		 */
-		if (valid_dsc_slicecount[i] == 3 &&
+		if (slices_per_pipe == 3 &&
 		    (!HAS_DSC_3ENGINES(display) || num_joined_pipes != 4))
 			continue;
 
@@ -1055,7 +1048,7 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 		  * So there should be at least 2 dsc slices per pipe,
 		  * whenever bigjoiner is enabled.
 		  */
-		if (num_joined_pipes > 1 && valid_dsc_slicecount[i] < 2)
+		if (num_joined_pipes > 1 && slices_per_pipe < 2)
 			continue;
 
 		if (mode_hdisplay % slices_per_line)
-- 
2.49.1

