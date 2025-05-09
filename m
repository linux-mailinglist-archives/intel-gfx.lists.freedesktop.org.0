Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B86AB1BEA
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 20:04:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 042DF10EA8D;
	Fri,  9 May 2025 18:04:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E0BqkF/L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83F4710E276;
 Fri,  9 May 2025 18:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746813840; x=1778349840;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=MSPRrkeC0wGwB/uYsHhSHyCAXCmrobh5Byuv58SaNkI=;
 b=E0BqkF/LEPar1Juy773rpzb1pl+lIy97XsCnSDN3ulwMJ2d9SdgwFTXa
 KOS+AZD2jMPpiqUGSIpJCtGlOhh0wrzVFslPk6YQSlFIjfTVWNI6zlof9
 0jTQvVXf/Wkf5gM2SzO1ftGwEqZRPTHLwFfg7CwIG3yxB7H2C11hyQ7zM
 DH3onB21epnInqEDQdXCuHOgq0d8+WJ8htEEPXrO2gP+iGBoT7HD4Fo0Z
 Pm7TTDuxBe6uSHn2TUhtQwwTtLoF0STFPMXXSOyf5maMSmgEQNqoW3Hp+
 T37ql/npMv0MEwmkGkgqYBet7pp1J3saouHfBIeCHei694mwzpYLxRLa2 A==;
X-CSE-ConnectionGUID: Q/5a1bEHS5KvnqdNT+l6tA==
X-CSE-MsgGUID: YbB4hD9KR2Sdva7iQmBO+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="52464886"
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="52464886"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:03:52 -0700
X-CSE-ConnectionGUID: Ken+Iz0/Qt+eLR+CcdoqIw==
X-CSE-MsgGUID: meWeTOXpQh6eKQ2WY9Iwsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,275,1739865600"; d="scan'208";a="136564177"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2025 11:03:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 9 May 2025 11:03:49 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 9 May 2025 11:03:49 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 9 May 2025 11:03:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i5dxzrecR9+pSwGn/GPk52O0rqdRZRoC13E5Xmiur0Sq/IqZj5qnQmk48cDMv4s1dd49fETFZOV1lU6d2GpVIAsje2aR3qLgyPtk5sWZlotW6eaye+4Z77ra+QD8eAnoR6dc7Z3kYTduYo1qctxKF2/P283Egr3j4+JR4UoL+s3Oi1ZRdt8RU0h0mDr0AcUTODLO7ab0HkHmRq/HBJWvovQCuA7ecefeThFeJmOgNfbzF1aZapT5naKSK+AqVX+0K6NN7fvNPQDpzn2N+bZh3GGOaTteyv1OJVK6eomq9WwDgQ1or+yE128CC9eYnkgOl3GPE5d/nFhq2kHOoieFiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TxDaUo9PktFIX9454BWiTlBPOSbCQzhINu/+JSbkams=;
 b=KQTu5sdrLBc3n1FQun7r4vqq7gLaO9wfjDpsHK4p0J+wkvuGXwP4e/jEhatoHnE0jHokUSQ9gcfzAvKPJlZ6MVRn9ycdU7sS9yvy3sZ+q0M/lOjsGBOlon4EQuYVn74m2K4oAuoOjE/VoDVFt3JfW0N67DYCB0Qqr9P4Wo1ng5w0EUavvt6zEwdzqQuTneVvGTW3lE4r722nwMfCMZOpvsEWYD5Vl3FJotoKVIyHq7whvQrtbsWNKrN+N379OY248Ps9RMTXOMea7Q91pdSeI5c4Y6TqXm1J+wJfFkPTk14x+FSl57zCBwzOOuFyXnwwFoo8MT/tdRtgsKNq6N7/YA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7393.namprd11.prod.outlook.com (2603:10b6:930:84::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.25; Fri, 9 May
 2025 18:03:45 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8722.020; Fri, 9 May 2025
 18:03:45 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>, Ankit Nautiyal
 <ankit.k.nautiyal@intel.com>
Subject: [PATCH v3 06/12] drm/i915/dp_mst: Simplify computing the min/max
 compressed bpp limits
Date: Fri, 9 May 2025 21:03:33 +0300
Message-ID: <20250509180340.554867-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250509180340.554867-1-imre.deak@intel.com>
References: <20250509180340.554867-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO2P265CA0500.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:13b::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY8PR11MB7393:EE_
X-MS-Office365-Filtering-Correlation-Id: 0f50d6d3-b62a-4ff7-8bae-08dd8f23d705
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?alxqif8NtcIWImCRlhGrhCXgtgMjrpexAjT3KoQHwgd49PHn2/+p1Mtio/Zt?=
 =?us-ascii?Q?Cprz9vm1+nRRGqcG2/4gVOHSBCRQZTVdTqpWTPO21K4HLwnVNNQgaqYB6RTD?=
 =?us-ascii?Q?wdMR0gjd5yolc/9lnF/7v8EtZu7GzhTc+5NKbewQmBF/bt1/nQ19d0b3FeYJ?=
 =?us-ascii?Q?ZumTMCszZNink+c336AMI9q/iU2AuPeCf6bn03oANnQJ6Fu9AhIatgdkMP1e?=
 =?us-ascii?Q?CQPkeMYXJ9+vtX2Jke0G/MxdOs9dqzbn6yM5NO+mfHbDbkcarLC8O8wrImQI?=
 =?us-ascii?Q?xbxq43ZnWoKtkJrD3BJIYR0VuegOwE/Hy8uF7R/Z0zDZE/ZcbuCTZnyLLzxi?=
 =?us-ascii?Q?Fi4IwMUoTxWzT8E5aAPRRy1qTyJvCmgF9PkVCG3iMegJzPzDjzYVqpvljeov?=
 =?us-ascii?Q?ms8GaNmTGjU1x5hOp8FNKzP5KIxOoPAOh6oys1WizUdNBIg54Ttl0VL/Z6dP?=
 =?us-ascii?Q?pyxx64csMnIyidhSr9o5fwQcDeUu1BiZfhha3mVRx9PcdgTrWFgXevQJkF+L?=
 =?us-ascii?Q?qYu9MFxYj0f+ltKJKsczQWXARFvS8xry3vysriKQ2YKRUiLBbPr5ixtZD0aY?=
 =?us-ascii?Q?YnwNKLt+QwlAwBhvExDZ44IkKLKlrXSgRvokyUj7udT8FwbpGOu5OPdQ9I7l?=
 =?us-ascii?Q?A4zMtXeoKCsPKjATccLRjr2evyb0dLUpgHMt1DWPqr14J7dYAq9KywzF56xt?=
 =?us-ascii?Q?uNNmI8g/1Wb51ssoIL49/9lTOQjpSJYn3nzDLsK80Z6wVWyshg0MBOo5XKrw?=
 =?us-ascii?Q?EFtLTvy8Bzadvkgsl3QwtMGiKis7l6ZcNWHNJkcowXII3/9xrCmlPIoFSg9T?=
 =?us-ascii?Q?yMffd9qSY3ojCVQggS3RySJD9aLQ1YR6Ai1PVVsh8q6REaUYYZi92LOBLdMe?=
 =?us-ascii?Q?3wRbCm8LohHFxnsXyGpXZ0cp/3Ptw/G9Qt52ZlgL8mPKJwSo+oCwsQmx8b8e?=
 =?us-ascii?Q?SrkzjtZGFTw01hz7RoK3fIJ4kAgOxUwgZeNtk4v3szvnWSEiKk9WIu9Lhb3x?=
 =?us-ascii?Q?628Pd5lM/EpXEOnNO7g1zkuSvh5rSyyVOiEUKKP1O+gTRS76NMzoVvhXkkNi?=
 =?us-ascii?Q?ZPtlkefFm9+dLcq0sp1aDHmvGk4JmwXqs6lgAdMSu6z/HM09xSvzGmQRVbrF?=
 =?us-ascii?Q?jVg0sN0lkUS0KYbY4OpDl7ap1vHo1UBzLC/23b16JdLRWjD3VPBUup3CfY8r?=
 =?us-ascii?Q?YYd09N7KJVgxInymJdspvttpa1ea/Q0dOsbxWob6l1xYsVChJ2zu/kRx/EKO?=
 =?us-ascii?Q?lXfZIWq75kXIP6b//le4DZviAIkWG+7YG29PHdU88eGerMli6wd7U6SzrI2L?=
 =?us-ascii?Q?1jB6BpDcoRzmkAutMKS1NnzMzXzQRA8mOsi5R3cLjmrYCO6+AdGjVR9YxRJK?=
 =?us-ascii?Q?xt2TTUV8RUh3ID0kN3dDAlrkwFzIPzxI8n3E1nPA7zl8PVgsotAFi1HSDjqc?=
 =?us-ascii?Q?mhlvtrOf8GY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?08P32Pi1tnsT74FtTivB+Kmimw6b4vE4d3WcmPlSJ1RJIcHl/aRGpidZX3db?=
 =?us-ascii?Q?9y9HAEoYrd2JXs3AVIUPspUQEOlAVXxagdpZZC6A54rWNluNSRE55J29GPFZ?=
 =?us-ascii?Q?gExeckdUmJtEcb51y68kCNGiLDGNh4VfrhB0ZNUweQ8nFFr5htjAG+RhwYcr?=
 =?us-ascii?Q?cXgGqZfMtgcpcRaawrmG1/p+vgId0KMqZK/ls7Pev73G57D6cS8WNX/vtDEQ?=
 =?us-ascii?Q?Su/0RDqwv2kWBSyloq6FQTrUoG1jb8uF9PyXCzbcvx54vkB4hwF0D5E++X86?=
 =?us-ascii?Q?/Ag5z2U2WVcgMdomaIIw5eRHMd0mrYFKnRpenD3yQfG6YRd9W/HgLulyuxt8?=
 =?us-ascii?Q?aPVk5na7n1w6Ije2xfhiNx5rcADt5emsHRPVYgT0CzxJKAxcN2XilPoTdVvM?=
 =?us-ascii?Q?6uMI+wjd/EfFsw+thfF/cO7/yPYQFJhj8M3sPhg5QgkuJHKG2T6hhhRS42YQ?=
 =?us-ascii?Q?FGsbWi9mekCUUd7aZIRxDfdzRa/ULwruMpO5RdN80gREb1Gg42Q7RnXFrrLb?=
 =?us-ascii?Q?mpimIauZGKxju7cybn/jFVJUk8bOf4c1z8Sn3I2vAONISQXkW7hyAlG+PVMY?=
 =?us-ascii?Q?UyICeAwU/+J750/WS4BaOTQ5emkURSfAdD+bxMsQ8HENc5JAu41a3GjFmlX4?=
 =?us-ascii?Q?A5K9Q0+qMXH+f8W+sQIO6zVJBa5YtDseJejPJD0l60f63G9KIq21vtGVZY2l?=
 =?us-ascii?Q?nKt93WyyjyHjEqINTN1xk3i6oO+8Gyb4kFg7qOk9AXG59B52VLVGJnTy/Yc7?=
 =?us-ascii?Q?YJpSxHznmV2a39IUd+AP97AwIwiUFNLxSnxm6dhLdRYA0Y1VAOfHRmY48GqC?=
 =?us-ascii?Q?qcvMv/KyEwEBXoshvpSpqOPD5z5ruEqj4QT9h3O9xqyriIiKNdHxzbYSbsga?=
 =?us-ascii?Q?FUaEqoqMWbZRMuF0091kAIY3b1r57/BuTG4hgGhMoxNgt/74QEYMMJzCL2NI?=
 =?us-ascii?Q?yp1OO9YAodNlbBgny92adwbQKrmkLNImymjDPcqEh56QgMgRmjka29rTbqAr?=
 =?us-ascii?Q?6UFXvtvhlDiF7dpLn3tlOPSv66upLphhyXrxEDos6FwdsM/APLqjvA4DItP2?=
 =?us-ascii?Q?lB362jAGSChLb8Ejz6G79fgB3WLTvO+cql3LvyxVqO8ClqWQITSkxXQjpyqh?=
 =?us-ascii?Q?XwL05BxLjpx4XeRrMBajiww4DNHslf7+7m8+QESZ2LDkNYam0ey7LWx5vdkK?=
 =?us-ascii?Q?fOtjZfZ3t5GpXOiVX31KYVVkTqv0BsselYm78a4qN0RjS8BSCf/nXjGwtQeT?=
 =?us-ascii?Q?1ntC0sNU5mEM9P6KChGGMMj4PsL4+qQ94hDxcvj0fZ6L+qh+aKxjX8Fs4B3Z?=
 =?us-ascii?Q?iSxYDGlDGREDYX5BBzBD1rL4wGdOpvuGeuZpIgtfKhAva87hlYeNkNu5sZpW?=
 =?us-ascii?Q?F4WFhYOzgginy+ongOG8HVJjqn2+cITqaSrsfvaIZEdem6ox/6vVGsBpzaqF?=
 =?us-ascii?Q?9zMg5WxLQQ2CslNLik7yhbM5ecgCG0R9+zPh4Mr8Wa94jBUq5FPBF77uFhUZ?=
 =?us-ascii?Q?IR3Zdpshwuscg9Z2TVyrsrawvG3ULBJ6YZAMgjVj1r9Ocun3JI/wMI7Aw3Fl?=
 =?us-ascii?Q?+AuhjfTfu3nU1o98mc/uWrgHBieSYe3JvmoheN8v?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f50d6d3-b62a-4ff7-8bae-08dd8f23d705
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2025 18:03:45.2549 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Gv/gE/PHjMxoMsqCvskkkrPIXQHAZaowZIVL5DPW94T7jiPyUU/DsaEQU6nJDt9/WJCqRSNmDXqiYihDTMULVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7393
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

Adjusting the compressed bpp range min/max limits in
intel_dp_dsc_nearest_valid_bpp() is unnecessary:

- The source/sink min/max values are enforced already by the
  link_config_limits::min_bpp_x16/max_bpp_x16 values computed early in
  intel_dp_compute_config_link_bpp_limits().
- The fixed set of valid bpps are enforced already - for all bpps in the
  min .. max range by intel_dp_dsc_valid_compressed_bpp() called from
  intel_dp_mtp_tu_compute_config().

The only thing needed is limiting max compressed bpp below the
uncompressed pipe bpp, do that one thing only instead of calling
intel_dp_dsc_nearest_valid_bpp().

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.h     | 2 --
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 6 +-----
 3 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c67c3b5b2dafa..f8de29d8a4da4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -847,7 +847,7 @@ small_joiner_ram_size_bits(struct intel_display *display)
 		return 6144 * 8;
 }
 
-u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp, u32 pipe_bpp)
+static u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp, u32 pipe_bpp)
 {
 	u32 bits_per_pixel = bpp;
 	int i;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 4d8c3f2b90dff..2fe6720a88fc1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -174,8 +174,6 @@ bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
 			   const struct intel_connector *connector,
 			   const struct intel_crtc_state *crtc_state);
 
-u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp, u32 pipe_bpp);
-
 void intel_ddi_update_pipe(struct intel_atomic_state *state,
 			   struct intel_encoder *encoder,
 			   const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index ff88888e4b293..42351229177d8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -491,11 +491,7 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 	drm_dbg_kms(display->drm, "DSC Sink supported compressed min bpp %d compressed max bpp %d\n",
 		    min_compressed_bpp, max_compressed_bpp);
 
-	/* Align compressed bpps according to our own constraints */
-	max_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(display, max_compressed_bpp,
-							    crtc_state->pipe_bpp);
-	min_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(display, min_compressed_bpp,
-							    crtc_state->pipe_bpp);
+	max_compressed_bpp = min(max_compressed_bpp, crtc_state->pipe_bpp - 1);
 
 	crtc_state->lane_count = limits->max_lane_count;
 	crtc_state->port_clock = limits->max_rate;
-- 
2.44.2

