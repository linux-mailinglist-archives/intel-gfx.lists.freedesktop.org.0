Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA99A9F26E
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 15:32:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D49C10E532;
	Mon, 28 Apr 2025 13:32:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D0eUYxqe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A129810E521;
 Mon, 28 Apr 2025 13:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745847150; x=1777383150;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=ON/pAT2tL6SH1fy3ihMxQtI7Zq/x/yn9adW/EkdcZXw=;
 b=D0eUYxqekxOHY+SH2Xe7Mxea/P6KthDLbcNEct8qj2UpOkKyhStFmKVd
 8MlAhi5RG2ki7qEsxGEwvF/Me/jkd7puj+kFPZux8i3qKIIpkvISzFhcc
 wtTqHbfknqN8iXEnatR4aX9HmU8dGqls4gmtwj3N0oicb7UqrkyAuOKW7
 buQ7XL2Md1HKt26Ad3BZHCQgfhf36gJDwygkd0cWoYepux9OVoh+0j39A
 VaXkAWTi/pcwHjakIQEv+DVc2VZpStk918k0pCdiFPg/nSqEFPdL0b7ti
 mpQwgkaEqJXvk9csJc2YXCF4yIbEmOGgfC7V8caxm7fjvJjRPe7UZR62n g==;
X-CSE-ConnectionGUID: Z7bjjvm1R1uyb2EgqLAtFA==
X-CSE-MsgGUID: 48KWtXFYSX2qbNSDeJbAlQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51243638"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="51243638"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:32:27 -0700
X-CSE-ConnectionGUID: pCX/0Z1EST2UBR5Pmps8fw==
X-CSE-MsgGUID: ebGfZwyRQ2WRvQ89t9Dhkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="164598110"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:32:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 06:32:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 06:32:24 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 06:32:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uGOA7IYQdV0rSTK/ZnEMlx/pVrP15Fx4BIY5AQU+GiWrAb0N7g+tSqgpfIzQqZEd/N+N2FzGtyx7zl0AS9To5IqWKtbUSrEAti34t3JmpQ/rlGWm0z0iC3Jr80sjXhPVkGiN+z9MjgyFc4e7LCLzRF/hHKk/pKCDZ34t7+8Iid6Ardi6KwQgPWEGStn4wrjiWx7vb8RhvRbBeiY3D8waxgPm0tmjSb1AItFJn9xWocgGGzcYi48sK/qi3hbFWsW5rUCIDLrGppE7XyjV5z8LDaZyEVjrm+3D+RNf1Nx1GF8UNFZx8ZW4y7JmTKGXZbZcYcZ7K3NOWIBwrWf5k3M5hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rgOpgOTxGL00neNwTMYyDjmlFRVXzpxWDr06cb0N61I=;
 b=Tw7OBjsP7GHzfLK2ct/r/M7ap7iTLoI/zMZXVhd5HuJ4ubWem5GLcHPtyB9XwV2uHR8QRcSmkj+Wsl++PsENGP88ojeZzGePh/gIhK8KS4QIa4AWLV4mVs97n96N0u05qz3s2+PCvrDUTLUrwdepfB4xqnLap+YOKRFQ9nGbewWCtcjfRBZpnEUVoJI/0VJw/nDx2f3SE+1U7BllRHy5fQOmPExg8P+dpIdoAo4n7oW52FsdInvHkq3cntWod35r68+o4wcw5B4uP3+xTq9+XPFlzMUsJ8bqc2EPANybbBLDcOUe8tEQiLNaJpo7qt68oHEw+kQ4MHlGb0dmzH+xcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM6PR11MB4514.namprd11.prod.outlook.com (2603:10b6:5:2a3::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.33; Mon, 28 Apr
 2025 13:31:40 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8678.028; Mon, 28 Apr 2025
 13:31:39 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 07/12] drm/i915/dp: Limit max link bpp properly to a
 fractional value on SST
Date: Mon, 28 Apr 2025 16:31:18 +0300
Message-ID: <20250428133135.3396080-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250428133135.3396080-1-imre.deak@intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0067.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:153::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM6PR11MB4514:EE_
X-MS-Office365-Filtering-Correlation-Id: bdb8fa7e-8c90-42ac-8ac5-08dd865901b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?sglalEZD6r7JMODoAe+AvXF3FdhGqqjTWcJHuqi4THUKwnwrL54XE33ixrl1?=
 =?us-ascii?Q?a7I6ZHrpOgEJfnnSMSzHCn6UXC9Fd1ytR1AvAVqUGPbsTjbvLH5C0NMf07N5?=
 =?us-ascii?Q?kfm1kWQxmhe2AHGZ956LHpMheUqyZmce3PuOOSIBYcOgUEg3jXmk6Dfo70Fr?=
 =?us-ascii?Q?dgg61Fjwtumg/bGzRfHcvdppXquxjYLNtfBSBkcBfWO3p7QRZaXLQB/1rtv1?=
 =?us-ascii?Q?BB3Uz+0q9m6ZI1PzCzXniBfg2rsh2K9TEp/52OjCbTr2ah9rpqLv2LqUJWP/?=
 =?us-ascii?Q?gaNzBBk0IT8Mp3Zei3Tw73cqYHSPgpQVI5QYVZaj7DCN/CIbIJN+g+yVjjh+?=
 =?us-ascii?Q?mRbqYswfBVtpy/exMlpJD9Wyo+USn5pZV/sncKf2gKLL3qUiqGkZ3uhKUkkJ?=
 =?us-ascii?Q?+Y2tIQJM/v3ycpXoneylJoXYgr86wuI9q6OWgYy/ZfiBlybEvIWInEiv+5jt?=
 =?us-ascii?Q?2UbwgUhpRtXVcz9X0rNB0w0MneqStPeK88wBkh5QxOtU5svZnslhu7e87n6w?=
 =?us-ascii?Q?j5Yudw+iDeurHJITEoa7w+7FdhXpZHlhwk4QAxqNDurx5CYxWqtUGZ4/uuJP?=
 =?us-ascii?Q?9Iwrxx9nQPycWnSBgLim3Sxq7fiwxGSB3HSQgk5exKWFmVjS6hh6O0YBTKYx?=
 =?us-ascii?Q?GCvL5P2vVVlp0uNXugwak207L/50n0OBjww00LUZbH5yjM2zi/GiKkckkrMI?=
 =?us-ascii?Q?9eJA0q6n9ANzilYRm7DRpoNKqaOwXFen0nQr+dGhQ/g9CCUjehoheugu2r4c?=
 =?us-ascii?Q?gFOn/9f9Lhzd9DM26PmB5U47V0i2/A4rLyhUTNaIkP/9cutnjSZSR4izECwk?=
 =?us-ascii?Q?V4bvapm1rD60HEgGAJA0flc565QJ1JWFdcL1/bOoEv+hIvb0CN3izJGoHSQj?=
 =?us-ascii?Q?aPRzz3pVawAImzj6siHOyGW8I04StCf5fzeQOUgVvm87DwXNA/8ZqFa9Y2W/?=
 =?us-ascii?Q?fZ4EemxsMKtIrI3/tig4lShoR/ZlLuIbfKBjMya3MqKU7uQJEWKJ9l8vBvPK?=
 =?us-ascii?Q?SWUAr0JuIsGBQYpIyKX5kbZswLBj1QhDPUpcSMpK207P0YDRI6zNdIOsaJ7/?=
 =?us-ascii?Q?m6xj+lcvazaoELKuvEcTlv+Ke+42C4mjoXJ3cY3UhKLZHw0pyX3OnMw481R5?=
 =?us-ascii?Q?wpChtBFrn0m5lYiF4YzaU4iiFSSgcWdF6cDbpX3af2Q1GOKfnLUk7DkZU23K?=
 =?us-ascii?Q?kNU4SIVCZQs6Gs+DYaKn/02qvX3fU/QTPbnG+LmSio2w7BqVBhamBgitJYlk?=
 =?us-ascii?Q?KNKMO8CkaMEYkgkPTyJXmw2PfcPQQSO944V41cFsst8WBRzqX25gLCk/kFjD?=
 =?us-ascii?Q?pEFgGR3NuFIRPHvZnCUdpqSoHD0+LWKUqoMhorPic0tZD/BiDx4wRxNv27zY?=
 =?us-ascii?Q?Egv69WIr5i2pwvmGjfqCw9OkrT1nva7f2LakkKVl3cWCkqbouW1wPDp2R8lU?=
 =?us-ascii?Q?22rtFiYgalA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fs0AWUEECU1I4kUc3SWDIul649T67dmJUFFcCWZ2rK2rWnp7JMkH8HdP+DnR?=
 =?us-ascii?Q?ohzTm9pDUWc0HH2wupgfgRLnerRDFrpVwW9rY96LOyN0T6Uw4OeHmK8hsjbn?=
 =?us-ascii?Q?xfs/9LeyiSDSaYtTJucsUhA2ztJKo4lVMKfAxUcRJXAEn6YmOcG+oeVLC9bO?=
 =?us-ascii?Q?lJvVz1YxmIOcNAZIhggPBvZQxEwY82DmxlEXqQZKKc0YHCKGStUEKQR8znP3?=
 =?us-ascii?Q?pPOzkG/oLRREavm2wlCL3GSTkuW8cCrjjLRUbrL+mknW/LNTh0tmnyoQBeW+?=
 =?us-ascii?Q?t5YTUkBS4E/c/NzEzTBszWYRSfPSC3varpv6zwIZe/AAERdE6qz1W7MKRMiH?=
 =?us-ascii?Q?iBYMr6zYA6cSw90mBDUYxbt7WzDXHUI66giAeeiHYsZ71Ma6wRqR/6wHOQBf?=
 =?us-ascii?Q?TPdGS5OIEIgG+P6+zSKC4fRzYQ2KpHkuMM0L3CT331Uovb8Onxx6cKQi1qcO?=
 =?us-ascii?Q?pbNCBXMUCPHuw3DWc42jjJ2mYQHeLGLL+MvLKl3qKtXMCykRefKnasGfbd+l?=
 =?us-ascii?Q?TEgyQq2hCUQvIkxcTCHvuhZRykXjbR3CbR0tS367amrKE8EJfeEr/O8CW76z?=
 =?us-ascii?Q?Gj0mIR0t4KAIHk7ElLkMCmbqBetzTMkxv1tlciAdXxEqqeFf6JqmPgxBUvwg?=
 =?us-ascii?Q?vZb5zNqo0ASfKLkaOgDrdCLftylb7dlg3mNL20j9iUskHKTvFPUKJa6eYSBH?=
 =?us-ascii?Q?3IoJWMD1iBPoi97dLswmWj/se1w/8ntFHs//3SgV81SCC2gx8XIOQQxjGaQg?=
 =?us-ascii?Q?XHk3za1xeW6aH4Yssm3JFAvOyt7hOF85H0Mu5fRq3OfhSHhd2AvuZ95cvwZs?=
 =?us-ascii?Q?6EwlUXhAjWzsumXY06My5cp+fCF4SaqzLS9BDaPG8YF1du5v82VnJ5EL8eJh?=
 =?us-ascii?Q?kIX2XHEnXRNohlLQOFYWUvGqWlqc6Tj+G4scaNbgGcSbbh9kRY1/+spy/3Zo?=
 =?us-ascii?Q?2+sEcjn5t+VxsBwFUqj4QrvI9ik5KJDX+vk3O07n+YF+kPVxKxrWFoso7iKu?=
 =?us-ascii?Q?AJf/+iUd8GrLYrn4vhk96zRj0TYH4rsU0WO2hYgTVzOvK4u1losHX/XEyz8d?=
 =?us-ascii?Q?HTnYCbSuDHbPDLkJfcUao6470ie8RcwaL/PMpR7pfiv915nZurFUNfH+Fegu?=
 =?us-ascii?Q?8nn7WQKnMW7BEjQXUB1klg7ZByGCn7MgUhTW4kHLCuafvwAxJ6xHcJC7RCY7?=
 =?us-ascii?Q?IS1h8L4VGnjMnbdfZOq58ccBbQmnL28vTYh8dRmZlcG0vjdP40LPIOX/vJjF?=
 =?us-ascii?Q?WMAKaZ7tJ/7k45hdgTTdMsmkKSHxUVVvRtQ4TiMuaFXWuTyAE/qF5edCCoo3?=
 =?us-ascii?Q?06KR+RVkjCssjVQlaSY0tVlPRpJqL2ZnE8hCotSfFA+a4syEt50SvonORSi1?=
 =?us-ascii?Q?3mxvAfSPndO+3skkqBJDZUk1qfSGzAq1xbaVrjHDsiA8BviPY8mEJ7MrA6FK?=
 =?us-ascii?Q?4pZ2CPQz3+hbu0XTi0mP2f+ihK7k+hF++4vaOnnUQumsNUm+XA7Ys8rP26pI?=
 =?us-ascii?Q?iCCpRQ7Fp6TPJYygzM03hZH0rxR4NVj/A+rlx/0fpiHKVcQOA3TGTOph9lS9?=
 =?us-ascii?Q?mJR8ASgHfBxZO3bzay2I7YBiW/UHIxbJetI9UJeq?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bdb8fa7e-8c90-42ac-8ac5-08dd865901b5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2025 13:31:39.7272 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lPytssw54U/jY80Oh7S5QLi7qh7qIBRnhzkU1CYFP7mLbb+3XpcV3g+dXpwBWHyLA4pgETLnmSJYpEAcQGSJ2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4514
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

The maximum link bpp - determined by the link BW for instance - can be
fractional, handle this properly during computing the link bpp on SST.

This keeps the pipe joiner specific maximum link bpp as a rounded-down
integer value still, changing that to a fractional value is left for
later.

v2: Align the min/max bpp value to the bpp step.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 42b45598a0134..7abc5286f4ccc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -27,6 +27,8 @@
 
 #include <linux/export.h>
 #include <linux/i2c.h>
+#include <linux/log2.h>
+#include <linux/math.h>
 #include <linux/notifier.h>
 #include <linux/seq_buf.h>
 #include <linux/slab.h>
@@ -938,6 +940,7 @@ static u32 ultrajoiner_ram_max_bpp(u32 mode_hdisplay)
 	return ultrajoiner_ram_bits() / mode_hdisplay;
 }
 
+/* TODO: return a bpp_x16 value */
 static
 u32 get_max_compressed_bpp_with_joiner(struct intel_display *display,
 				       u32 mode_clock, u32 mode_hdisplay,
@@ -2152,24 +2155,16 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	const struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	int output_bpp;
-	int dsc_min_bpp;
-	int dsc_max_bpp;
 	int min_bpp_x16, max_bpp_x16, bpp_step_x16;
 	int dsc_joiner_max_bpp;
 	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
 	int bpp_x16;
 	int ret;
 
-	dsc_min_bpp = fxp_q4_to_int_roundup(limits->link.min_bpp_x16);
-
 	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(display, adjusted_mode->clock,
 								adjusted_mode->hdisplay,
 								num_joined_pipes);
-	dsc_max_bpp = min(dsc_joiner_max_bpp, fxp_q4_to_int(limits->link.max_bpp_x16));
-
-	/* FIXME: remove the round trip via integers */
-	min_bpp_x16 = fxp_q4_from_int(dsc_min_bpp);
-	max_bpp_x16 = fxp_q4_from_int(dsc_max_bpp);
+	max_bpp_x16 = min(fxp_q4_from_int(dsc_joiner_max_bpp), limits->link.max_bpp_x16);
 
 	bpp_step_x16 = intel_dp_dsc_bpp_step_x16(connector);
 
@@ -2177,6 +2172,10 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	output_bpp = intel_dp_output_bpp(pipe_config->output_format, pipe_bpp);
 	max_bpp_x16 = min(max_bpp_x16, fxp_q4_from_int(output_bpp) - bpp_step_x16);
 
+	drm_WARN_ON(display->drm, !is_power_of_2(bpp_step_x16));
+	min_bpp_x16 = round_up(limits->link.min_bpp_x16, bpp_step_x16);
+	max_bpp_x16 = round_down(max_bpp_x16, bpp_step_x16);
+
 	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
 		if (!intel_dp_dsc_valid_compressed_bpp(intel_dp, bpp_x16))
 			continue;
-- 
2.44.2

