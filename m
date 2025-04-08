Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A27A817CA
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 23:44:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6981010E77E;
	Tue,  8 Apr 2025 21:44:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MQZ+mE3w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E32510E77F;
 Tue,  8 Apr 2025 21:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744148668; x=1775684668;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=QZa8otoIdOjfjpco2haDcTZdCEf4ISjGB8VJfHmoA7s=;
 b=MQZ+mE3wMu6Sa9cNPUltMrBu8eN77k/F18bacTmsIyOObBbd4+kHW3Fb
 JFGRhbbaVTX2cp+0JwFjcHnoYWTwmeY5Vu4HF+zJOjB/Nc7CV9dtyFkGZ
 MLmF4QMy7RM7EDQV8VpunBFuWxLV5ugNrUZK0nRyz49Hn5x6UmAm3efQL
 jVriGR1Psm+ZPv4UXlQB1KS+mtP3MkFH4QxvppguQrV5DIBD6P4k5QQSl
 G66/nipXc3osPtnWhBib6FmI6C+7xwZeLL9BL/oDObfGDt8QctX+ou9et
 hsvY/tcIa0WBhTgAN6quSr4L9sFIn05BcqUgwf6/If3szpUjQGORXtGEB A==;
X-CSE-ConnectionGUID: MH/cwUBISxe0Sdel5QMSeA==
X-CSE-MsgGUID: TL6u19VOS/2soyrcVoiRKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45695675"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="45695675"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:44:28 -0700
X-CSE-ConnectionGUID: /IWiR1GIQqqowj0xtY0+RA==
X-CSE-MsgGUID: krNROfugQpSu1OoFdrbnfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="128888974"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Apr 2025 14:44:27 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 8 Apr 2025 14:44:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 14:44:26 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 14:44:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rp5/AWSAWCwDRSdfis3uxTALkroxXnAaTJq0xZ+htXXUaLnt3Ghb+spUkLSoyRbvWqiXP8D4uZ9e7c+fBHecF8RNdlU1LZPemlpBi8SmOow+1ejpFgvgmcfA19MNiRkJJOwQC5rHcsvd95z8ogO+hK1PWvMEYXae3i6Qn4WpVRGBLH24UMLaOXd38owTcrust1c2N8W8L6FzvXvwvcCu5JoN+QF1M60AvBB2CA+Sx6g0b5beV+4777Iknh36iEB6b+CWDSeu+kISpI+TifrRIqE22ZjlbqVuAuSJHd5Zk2A8vLPMclsRZxE2noqWKHytPZdOF5Kt9TMCo3LffiWC6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zA8ym6049hiyZoUPLxtAGSLvX0yrm3CIZCkA2fDVUAM=;
 b=Lj2T695lgPpYDSLZ1GbbH5boYpz/Yz/j9MMGr/vo7CLZ6ICLnU/oU4wCaWSVDMJjqvjBrbKGXOOtKxqQGRu5+MbYY2g16xbXM6SWZ+7y8IDL3KINuHo7+cBec2ezSb3JvYoe6BaNNSBsGJ7shmw4FGpUTpzB8Xm6CaRgtxHwKAD+o3//KNKFlQ4D3BXlACkPBFVb8N/JIjl4ZPD6W/n3lR5gfKvSJ4ZT/pgl/cIdwt6Kr7IlvJZ0gsxghyrGQpIR8A0e4Y9pokpmZNMjCAQBu3lkar6ibGq8Wl1Sl6xp2dtV74EI6UnCSIMl7zkqU2HDsYwhKHQ/OVooid3AgLMxyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM6PR11MB4562.namprd11.prod.outlook.com (2603:10b6:5:2a8::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.20; Tue, 8 Apr
 2025 21:43:41 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8606.033; Tue, 8 Apr 2025
 21:43:41 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 01/10] drm/i915/dp: Use the correct connector while computing
 the link BPP limit on MST
Date: Wed, 9 Apr 2025 00:43:31 +0300
Message-ID: <20250408214342.1953197-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250408214342.1953197-1-imre.deak@intel.com>
References: <20250408214342.1953197-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0060.eurprd04.prod.outlook.com
 (2603:10a6:10:234::35) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM6PR11MB4562:EE_
X-MS-Office365-Filtering-Correlation-Id: b34f12ed-1cb7-4b34-70f5-08dd76e66d9b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?cCntCtBBSko1T4ZcWc1yW5oZIfn6qBQ0iZ/EFCHG1a1NoVBQ9sUecOyHDlXG?=
 =?us-ascii?Q?Uumx8RXtSH3m5Lxqxao5QixouYGMONz5+0DNg3qbRYFvtcMo7nNaVnS3Ruos?=
 =?us-ascii?Q?alhtJHCYcQMOw71PHlIAmlfQbuqoJ2eqdg7mK/TeH9WO6RCqFQj7SLtYVgT1?=
 =?us-ascii?Q?b75Q/sdYLpv2UasTFD2ioVDoxNvgezaS6kJ7yx6m5Yg4HisAvhtY6cDAvuOP?=
 =?us-ascii?Q?I/PyIJzjzEmMGb4/lsnL3Fm91p2Px0e4fh6G0lmqwMqK77XOwAplE5VGgZyT?=
 =?us-ascii?Q?ny9DR9eZ70Dqp3Koy2+XeSJUCr7TUjbo0lK1eAbYYaY7PSaymM+EYRpRyF4N?=
 =?us-ascii?Q?wrnaYY+Ix/FZg9bqG0KbNDl6VH4B1J7Strotao5uTZ7ZA33wkfRPEk7TiYlt?=
 =?us-ascii?Q?2i/gW58/WPGkRYUZd5zi1OUih6aNmDpU53eqqE6eyVZRdxwP7cuOEOzOzrq8?=
 =?us-ascii?Q?TYN30newhOHPybmm2VvnMYmZt5Nq0W5O4xs9SnCfsfoLGynfgqOSshZf0szG?=
 =?us-ascii?Q?k6f3N9Yqbxu7qHMtlAB4c7cMvfkpyYzDUvSjmwed5xkkRWV50ikAfJwaHt0T?=
 =?us-ascii?Q?yzPOvpggiLv9SRGIdnG0B4fYaBZF7BGA0MtbnyB3c2ghvBv+3jHHCC4y8X/3?=
 =?us-ascii?Q?maCR2Q4KyJBmW4/A+Gc58Ys0sSai0WakajOsPaGU2ruQZ/Y2KGeCPMfJ+OaA?=
 =?us-ascii?Q?WWTqT2VbplzVzBD9CrfQR8nhbHnzXPYwcmqNCXaxxDUsqOjrIEWDlCT5HmKM?=
 =?us-ascii?Q?ucq3zbX8rqgM6I2wnQx9cUxb21uj0z0tO03NVSaGBtqdfGmH+2xJASxjYwWR?=
 =?us-ascii?Q?G6D66hY7I9N7O8LssT8lWGFu2/7mndV3NhDpYHrkvcTUwhC8NPmVhYqgefbq?=
 =?us-ascii?Q?eGnU5D5rWdQpNlSdFRXGqxY7AjnFHrQhrEMJwzsb/gUajzdqeISPOTy1lOVm?=
 =?us-ascii?Q?057jfA1n+JxxC3rEvmmJaK0MdVy6wCIlqhoZNPsi3IRJ4rL8feUKWulaM42p?=
 =?us-ascii?Q?nl5VcdCzY7QOSbxIwp8p13YjIMaVixnGX2+7zuUqeag+CPemWATDHdtzQ2GB?=
 =?us-ascii?Q?YepHu7q+lS/1RNejRStD4p2MAxBl2CeVXn0THM/IZ8YAZRZAOlMZjMCMMYhh?=
 =?us-ascii?Q?P93OaGH7zgB7ZM0jopCDm5imt1jwMWxmNVg2WDuin51j0uVau7Vy2CeVbVtQ?=
 =?us-ascii?Q?GSPeiszYTT6LPkrJ+vUetom52fEYw6Phq1fOXP1QePrbG1tLphWnUtUrAD/9?=
 =?us-ascii?Q?EeIkaO9iR0d/PHwNtD+Oc/7JV61Batw6aODBTiRSnIhsLM5ScSXZZtSQ7BUz?=
 =?us-ascii?Q?OEkpvkJWSPfwo1ETxLn7cu4bqZFYzqjCbGLsj4oDLOjv3JUio4XpMGsyOfcK?=
 =?us-ascii?Q?+aiMmwEXuTUL5LGLSAZxbWomKImm?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NRcKx0s3jB0XY1yfIaff1TPfurFkH6lIvhp+nZ5LBlODooamWT+JbRyGmrgO?=
 =?us-ascii?Q?vEQkFlozfyZD6Y6HlB6u1bgHlP7A/B/UjjABr1rTCSo5rGMwhEN/D591Zrrw?=
 =?us-ascii?Q?7odWPdtNv+SfRREl8C5qC6+HGSJGdFULzdUnQzgeS5A+TVomIjcb8rVQEH0a?=
 =?us-ascii?Q?DCigmY+XcvBSVK9kBmMi+w7IQ2SPmC/fWJfT1fJn0T2e1wKyyFsPogCcj83y?=
 =?us-ascii?Q?Ac3d/nf/KT3ZebADsFx7eeTTYpKPx5R7POMZ8oLr/mYb1eYW0awirWMeiebz?=
 =?us-ascii?Q?E3uL/uji4391eknEEf6Ispq0wb10jA6RdTFTbZRPQcRUuDRqQwKXRbceI5xd?=
 =?us-ascii?Q?NQK9za72G4j/Qy/QVVvQis24j4X/AHPFFVYRa7AZYuhsiZNAwnNgjq/ckIZD?=
 =?us-ascii?Q?dvtqy6BnNbVqynjKm1fXXO/GfnqbkbOHhBRTXvo2MmKcPuNLYvomUM7YF7Xr?=
 =?us-ascii?Q?u2CiiCT8tRfNRySttYD8HrA9XViwrsD+0ESptWv+HHKuRYROZj8YnLZsOZa2?=
 =?us-ascii?Q?r+CCpgkFUxUmpGrEbu8W7ZfLfKjxQP1OEW8+ePL8bHvEZe26uSon4biBvMn/?=
 =?us-ascii?Q?Det5/zHRuWbuk2LlpFqCFaF2TImaAh8rNT7bz4sx4ploG33WUTNewN0QwL9s?=
 =?us-ascii?Q?E0jzjS01zg8VdcrRxg9a4UX0tvtS/aDbLfvtOrCxfLj5ftmr6xwCSs3vC0yt?=
 =?us-ascii?Q?QST9Ap34TOgfKK8Eom2y9Lif7hAp7JG0hXUqEU81dV+cZ2bAL91yv1inmr4F?=
 =?us-ascii?Q?5OGgCIhqdj+N/m3gD5LPl8/mXedmLWWxjFFSxWxwmXycekOU1Rvbj1Eq7RcM?=
 =?us-ascii?Q?klMKYEsjqJOHnESF2o2oCHWkzzYkSBIcRq586iOyesE5ucaDXOGXZKtxn1Cm?=
 =?us-ascii?Q?ybyp7SR9QlH7zFa1PvRfSVETi4BDFXT2KnJmeekzf/CgfDQol8+4elAR80dF?=
 =?us-ascii?Q?1oV0McImnw7VZx4aKUBRYylg3/fs6XHBfTSdvF7jCW/FskYfVEsrSSfSbbYt?=
 =?us-ascii?Q?y43SilciFs6+7BVOfUeMrA5MqvRUUqI1v6101t/GR1zSCJL+bZWukdce52gq?=
 =?us-ascii?Q?TndyTKa87ZursmgRUBk/1C9LycZsdwG3vG9uOw/AfBohz+FAZyn0LZLStsbm?=
 =?us-ascii?Q?9i3XJsx1FQc8HgB9SFSZzwU72wS6zuOVwqApOv8qLDzvbMTMAovEQs6Igg7F?=
 =?us-ascii?Q?lLkvG8vrGuqLO7z1bN3Nuk6W3e0VgVpDu7yoGpO/VQjFkxnIYxSny2wS9HdI?=
 =?us-ascii?Q?0r+0Z5yWwNdijL12JAuxD4mh7PeMYRISAztcHDVTwDdcvu1Y/mkDbEKP6028?=
 =?us-ascii?Q?ASVLOD9wF5PvhTLs5TWbaaAKzzEwnFuOID4iE6/XYzkRemABQZYgoMbXN9YS?=
 =?us-ascii?Q?MZscohwiRoVDGmxBSxP9TBqUO0554fTGhuMIwgkLUcU0fD/4vRM9xbaEpocA?=
 =?us-ascii?Q?FH3k5A7pC39DVBbZCQQV+fMJ25Cz0FvwGLwebvbBnmV8Dwh/L3mAQWf0MSgc?=
 =?us-ascii?Q?1+mitdzZb9eWJ5PBpMKGepQm15sGiltecWgu69Avs6VuDTzRdC5rlEjITxqV?=
 =?us-ascii?Q?fxSvr1HRp23r0egx7cDFJdrmxFzwSVMtYLi4ohOI?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b34f12ed-1cb7-4b34-70f5-08dd76e66d9b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 21:43:41.3442 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AMr1m5cLsBG32lSM+39ByamPZpMxuOfVyZB00Vjg4OQLpmG8cgRLmhRqAYYjEIRdV8+r8UaDGa03/ojxeBV/iQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4562
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

Atm, on an MST link in DSC mode
intel_dp_compute_config_link_bpp_limits() calculates the maximum link
bpp limit using the MST root connector's DSC capabilities. That's not
correct in general: the decompression could be performed by a branch
device downstream of the root branch device or the sink itself.

Fix the above by passing to intel_dp_compute_config_link_bpp_limits()
the actual connector being modeset, containing the correct DSC
capabilities.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Fixes: 1c5b72daff46 ("drm/i915/dp: Set the DSC link limits in intel_dp_compute_config_link_bpp_limits")
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 7 ++++---
 drivers/gpu/drm/i915/display/intel_dp.h     | 1 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 +++--
 3 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index aeb14a5455fd1..713cc6e65faac 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2522,6 +2522,7 @@ intel_dp_dsc_compute_pipe_bpp_limits(struct intel_dp *intel_dp,
 
 bool
 intel_dp_compute_config_limits(struct intel_dp *intel_dp,
+			       struct intel_connector *connector,
 			       struct intel_crtc_state *crtc_state,
 			       bool respect_downstream_limits,
 			       bool dsc,
@@ -2575,7 +2576,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 	intel_dp_test_compute_config(intel_dp, crtc_state, limits);
 
 	return intel_dp_compute_config_link_bpp_limits(intel_dp,
-						       intel_dp->attached_connector,
+						       connector,
 						       crtc_state,
 						       dsc,
 						       limits);
@@ -2636,7 +2637,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 	joiner_needs_dsc = intel_dp_joiner_needs_dsc(display, num_joined_pipes);
 
 	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
-		     !intel_dp_compute_config_limits(intel_dp, pipe_config,
+		     !intel_dp_compute_config_limits(intel_dp, connector, pipe_config,
 						     respect_downstream_limits,
 						     false,
 						     &limits);
@@ -2670,7 +2671,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
 			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
 			    str_yes_no(intel_dp->force_dsc_en));
 
-		if (!intel_dp_compute_config_limits(intel_dp, pipe_config,
+		if (!intel_dp_compute_config_limits(intel_dp, connector, pipe_config,
 						    respect_downstream_limits,
 						    true,
 						    &limits))
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 9189db4c25946..98f90955fdb1d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -194,6 +194,7 @@ void intel_dp_wait_source_oui(struct intel_dp *intel_dp);
 int intel_dp_output_bpp(enum intel_output_format output_format, int bpp);
 
 bool intel_dp_compute_config_limits(struct intel_dp *intel_dp,
+				    struct intel_connector *connector,
 				    struct intel_crtc_state *crtc_state,
 				    bool respect_downstream_limits,
 				    bool dsc,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 4c15dcb103aa2..cde662daed5a4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -619,12 +619,13 @@ adjust_limits_for_dsc_hblank_expansion_quirk(struct intel_dp *intel_dp,
 
 static bool
 mst_stream_compute_config_limits(struct intel_dp *intel_dp,
-				 const struct intel_connector *connector,
+				 struct intel_connector *connector,
 				 struct intel_crtc_state *crtc_state,
 				 bool dsc,
 				 struct link_config_limits *limits)
 {
-	if (!intel_dp_compute_config_limits(intel_dp, crtc_state, false, dsc,
+	if (!intel_dp_compute_config_limits(intel_dp, connector,
+					    crtc_state, false, dsc,
 					    limits))
 		return false;
 
-- 
2.44.2

