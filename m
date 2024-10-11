Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6D499AE27
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 23:41:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3492B10E038;
	Fri, 11 Oct 2024 21:41:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VV74ZxwI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4B4510E038
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2024 21:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728682885; x=1760218885;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=G3Uc8rMqEUNUHMpKuu/7jVWiGUeyo0NHBoqvfc/AgkE=;
 b=VV74ZxwImuxnoF7FJP0TkwtV9tFHadYknpRZCH4Lr5kiR7c9qUXjpm86
 SOo5U8l3M2m/j6NodgfajG4VQk51LHRzNb/0YAn2+UCbn61/Ic6UcXWqq
 T782ZcFl7vnsL590tfMhQnxaQlJKngIMcX7uQ0qDlSWDYjleaOtR1Cbx+
 u05EXHCFN3p04DElqmW5NUaO9Fp4wyxWBJpfxNZ/I545nk8B7kUECTsCG
 QTf4y6SdE0OA/O9OBubU1etPd0Zz7jexPZ1KV0EpDJ+vgpmJyrA69h1+U
 zPDss4/MwoRxu7wqu9fV5Iz6RaTCYdEdQgzTvPkZyMb6M98L9IYnGlg0V g==;
X-CSE-ConnectionGUID: OTKrUrnfSH+9KPrtbwuUNA==
X-CSE-MsgGUID: G/xfcuWkQqGEdj9BwsbdFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="38672559"
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="38672559"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 14:41:25 -0700
X-CSE-ConnectionGUID: 98KNxQozS1m9q0iZCWlzgA==
X-CSE-MsgGUID: H0vlp4mUToCjUiGyVK5W/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="77028363"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2024 14:41:24 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 14:41:23 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 14:41:23 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 11 Oct 2024 14:41:23 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 11 Oct 2024 14:41:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cAUnHqOv6tnSj9n9nv7V3crpKjSXFcteIeGk7cZDtILYBOnsot6JQjDYgwiiBUELUxXbKZtEVTpJSXaoK0mxSClMyYxeD6ODA4BQwGhQi0QeVjBSs68BKmHAhwEH7eKlb/jOCr1Ai77HAbD9//oI1YIKYvchEIsHWjQjaq8SdvNYZFT6Ez0m12t7qFcogsCmL0mjFkmv8saSZZJnognZmldX2+rYjYFUdWgwJc+M5ByJD45wMmd49iOaEY2aXh2N5hpOLojkylq9tXm3sA99rKxm/Xmh3/9izCj+9Avn6EfxR7Za5WH0GaITP+XswNGZFY3YqHpnMp3rhoBm7vx7WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X1KR3ro5eyK1OQ8KTzbTpuqKcq2oXFgpVmGv4ImUaJg=;
 b=oo6BA/PYlDiLAi6jBmYhYNgn047S5ov0860jgwCW9h4n05JXbeqJigEyJaXJw5LiZwwsOioGIFy7BIQDDvEn856GPa1C+Bw5C+uQY0HKYLf7gUvzf9xJz7FYkCBALu8cWjyCvvKSqn5zdZTOjuOkC4rtID9DGOtMni4t6OrWbXu5N/a/UyHz///3gqhXdsnuuSFliztVHgwYoyPaB2hNbR3s8HRuGuBLo5mkUBs9UX6pejG94FYHQqNn7alEz7766k+DrYQ/nQJGFsxSWt4OYbq+i7+hhwvkvK4nbtsIyGhyvYm6/dCorN9tZABgyU7IMNRJQjIZK8t5v7knxQSE7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH0PR11MB5901.namprd11.prod.outlook.com (2603:10b6:510:143::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Fri, 11 Oct
 2024 21:41:15 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.8048.017; Fri, 11 Oct 2024
 21:41:15 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Stephen Rothwell
 <sfr@canb.auug.org.au>, Jonathan Cavitt <jonathan.cavitt@intel.com>, "Andi
 Shyti" <andi.shyti@linux.intel.com>
Subject: [PATCH] drm/i915: Fix irq related documentation
Date: Fri, 11 Oct 2024 17:41:10 -0400
Message-ID: <20241011214111.98128-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW3PR06CA0029.namprd06.prod.outlook.com
 (2603:10b6:303:2a::34) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH0PR11MB5901:EE_
X-MS-Office365-Filtering-Correlation-Id: 1312c02c-584c-4d16-8a77-08dcea3d6ec7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?tSQbnmWXfSTr9+GEAMwyPQ8ip9UpjoQvEapxC9KmD/V7AwKb1SwQ689Uvm6i?=
 =?us-ascii?Q?sQsUs7dqWOht1MOuokGSCsIzaj1rSTlUx2gOYFOdFSi8UkMPNRJ9NwQ1JgEh?=
 =?us-ascii?Q?tCcMbIvZ8Lyod5UueNlVTgNilfhaN+1t9bxNvWq8xYCMaMt1crEcbdrIL3v4?=
 =?us-ascii?Q?L+xWUA62h8yIWEyBSFYXwwoz+LJMJO7WLEEecpVaVn+bclRz2ZDZx2ywEklw?=
 =?us-ascii?Q?JJciMnOLcHQEGuXTQLWLC8sxsBiaJD33YdtRXyfItGHJGhlG7wyu1+MlZVB6?=
 =?us-ascii?Q?3O3/ualFp0K3j/no0LgCjioSWdwKBNb+Q3y5WEaWZ5gollNqkRcgwQafsIEc?=
 =?us-ascii?Q?z2uw5ErZEsqJaeIPQejHmMniQg7OAFaXLf5eia8AC7eJP0gwZfLH+qwu5/U6?=
 =?us-ascii?Q?Ii966FXEBTrDojhotYKC4Tya3HEPpRSEZIAHO8pQIZm91iuaWERpmF49hnwJ?=
 =?us-ascii?Q?WTks6/JVVOKWTix5ZfxMM/nJick2cu+3KGqAT/UhLFHqTdYWXfaa7apzpXes?=
 =?us-ascii?Q?O+0G+eU6Cx1Sve5MgOIEy/4YrNGzK3ffX3cNh2BDkbpRufB3XzqEFVViD0Ix?=
 =?us-ascii?Q?cU0IvUA25CdbaR6+O3G/1n2Y6Xx+Wb4swUT61uN2Z2afpdqiiEE/OvHbolSG?=
 =?us-ascii?Q?jPQN4ORuyO0UyKNNaJgKVnKY9xgKF26UYLDCekniCBBbyuy4NfPZBVlbM4oM?=
 =?us-ascii?Q?o2pdpmpLS7Ig2gp1X5IRzXGj/K+9/xZdV1VYaAsdUfizYc1oK9bMk6yXnZtF?=
 =?us-ascii?Q?cmRgzYZp4jTNlkX46u3Wl5D1LtbnNp3zXYH32FpHsVTljfxqjRnLfVyTx16z?=
 =?us-ascii?Q?Lw02V2Un9YwykH3kPAhH5pgshvJ0OFQ5bjkdViFIzGFSBPa1EmKIqaf9+3Ds?=
 =?us-ascii?Q?UYOlVXGPoV5K9vySNKw493Yl0MrEn5PIcd1Y1j8vPVl/NufBCJbilwufwwov?=
 =?us-ascii?Q?5n8JTKFXj1Adgu0e1lSRaE5HtBU04zQVnBKV5AhE3d+nIVoXnl/d04eN2qwA?=
 =?us-ascii?Q?sx8kYwfRMNmYINdSh9J20sv7iiZ4wF9JI245aLaSrUAYLp0VsCEU2ofFUkoS?=
 =?us-ascii?Q?IFfN5TvvycNYRmgliHTBGUN+waKgz1kg1LfkHD0KEICrz2zk3nOqDJprqN/6?=
 =?us-ascii?Q?SsrAbpuXPsoYaMVdKWE3obP7CPJloDnibWgf/vWHuqksn/rz2k5HSilkECHa?=
 =?us-ascii?Q?mthkse0yoN8G3hxzHtiE0G076Y8VzwWzvhcfPfCEB17Ot57Ml09BC+RPaOeU?=
 =?us-ascii?Q?OUCfv2tIjXHdUYFOSgSHsquZ5WAJsi6CEaQOp+R3GQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QBfw33MuU0I2KL00kr+N17uRT5OYz/FnE2PL1WWDHc8qzgHO6O4g6yASXQG2?=
 =?us-ascii?Q?vzfyTFYLAE7zmtORov8DpquGUXYSBtlXDMp6nGtdUpaAKEsvRYk9jF8nRvhM?=
 =?us-ascii?Q?b299C4dKjYD4jz1dvaDatmAgdvgUDB8rXDizuFv9DI7J6sWPMThDMIqLdVI0?=
 =?us-ascii?Q?MAiP+h+KG+QGuuSUCD+MllQ2YP6g+K3sMERzfH8Wy5k5YEsM8k4C4XkxfNiq?=
 =?us-ascii?Q?ArSEkP0S2rdu1T8WcML1nd6Gll0gyt+C8RopkxLCLgSD4H5Rz6aCKMZvnaVy?=
 =?us-ascii?Q?NDEemyZ4zN9VhqouDLwpr14cXKQFwNmlp3AcY7jOLcK5tWgDvSEwZ95sFcxh?=
 =?us-ascii?Q?Ccfu9mcF8elAo3zmGpqbu72j8v1KDp1PgLCkaTwIrN/Lnr37Fh8Wh0UEE7Aj?=
 =?us-ascii?Q?j9dwr7TY0X5SalmhBrMADtYjTIKnT3u/iL9JF6RyXv2GcqmtdeMRieeQKvrY?=
 =?us-ascii?Q?IjWv3DtpS1PJlJE6X0nKYY+pr9c+84KLUjIXoSFdJLw4GtTsManmIv/cigRR?=
 =?us-ascii?Q?V4R8Ay4USc2uSzqQlMHmTrETzG9GPA+gUTLv+NnZ1i+Pw9q0Sd5uLOz9jOJE?=
 =?us-ascii?Q?BqXRTJFH0uklnFrKh3Y+pZFfFSaOODlm1r2jucL2mNmqJQCcKWjAhed3o35t?=
 =?us-ascii?Q?COyL5E5bRpHA5zz4Qnvs7iJFPqqBu4izSVodaNwLddfXJfXIJw1pyccmCZKw?=
 =?us-ascii?Q?v9R5reI+LjX1m5Ts2X2MI9DSJpe+9iXVF/2BtHuubnLszf9Vhg9EYMZ862nk?=
 =?us-ascii?Q?uC0MHuFO84S1zGbAwRQaxdL0yf4tQL9nbiSoAUhFBb5AKlLEK9e+Jlf4IlLE?=
 =?us-ascii?Q?np2Q6nZM6TVeEpxXZKc60sIwRgiL1t9gMBKqDl4aJ8hV54VzF4/rkT0ko6w8?=
 =?us-ascii?Q?VAvSj/YWpnpmrML/j7HIbg1MjcNwwFINAfwWMXTV9BxWifM73gJtLZQHuRyV?=
 =?us-ascii?Q?Ar5onuREfDsXMh9gBYNdrwlpCWuraaGrUSfFKr5iwtm88qtir9OUIwadhWBO?=
 =?us-ascii?Q?z3kjfKXn2BQIFvz1RbNEHGW/D+j+5KrHfP059otUp7DGl31dYzFpr66znMnj?=
 =?us-ascii?Q?CqOxG8P7FFOL9toNuGG+Q0L1QFx7St4QI1+XR9D4K1pvFno9pUGbIvMxkKoi?=
 =?us-ascii?Q?751DQ/+3ByRJ4rEy2RJ4AZOZ34ZpVDxZ+L9SdatwkvYgVJaQgotvjpIrrNEP?=
 =?us-ascii?Q?zdpSC9ZnXkAm8pMCu+tzkfu3Sz0VMZ4KDjCjFhYBN+Q1Q0beQ2KYEbvCn3T9?=
 =?us-ascii?Q?swbqSlA4LXYcgyS9gT4eM8420/QwYCq37WzBV2deZrdnralqeURyHN52Xsxl?=
 =?us-ascii?Q?DWfPy6jCLCc2TRSEPc3rwt8Vc3mbEe4VxhBP6cP4bzumaCUkZM+3mjn0vxCU?=
 =?us-ascii?Q?vcTUQPUjgE+6gaUyPeBxtHBNpmnHZnKdfK5CS7gcCNjGb4eIpES7NUSOa9vp?=
 =?us-ascii?Q?HwwSUWh+BxY3uDKSygUbDjVD6+yev4LvjuYWtNzcEG4tE3x2u0G+FCl/8BQ4?=
 =?us-ascii?Q?obcC5KdIDGKNNZcm8yGK8bwYSOlRiyHNYYY6fKUGiqkk0mgzzQtROfCinxoW?=
 =?us-ascii?Q?V8PJ4YckP8i4rPNQUGLhYiQ1fUTu0G6oN0kgULnyO1AnxJaXm6UJCc/VydMM?=
 =?us-ascii?Q?aA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1312c02c-584c-4d16-8a77-08dcea3d6ec7
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2024 21:41:15.6722 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: myljC1k8GvyCb8Y567h/auhIlPxquWXPaZDpnz3GyHCJIJxo9/w2G3xrS45Yr/M7YNHK6lPoiWUc3TZNsthgKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5901
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

Also update the function names in the documentation.

Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Closes:
https://lore.kernel.org/intel-gfx/20241001134331.7b4d4ca5@canb.auug.org.au/
Fixes: 3de5774cb8c0 ("drm/i915/irq: Rename suspend/resume functions")
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 Documentation/gpu/i915.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
index ad59ae579237..7a469df675d8 100644
--- a/Documentation/gpu/i915.rst
+++ b/Documentation/gpu/i915.rst
@@ -35,10 +35,10 @@ Interrupt Handling
    :functions: intel_irq_init intel_irq_init_hw intel_hpd_init
 
 .. kernel-doc:: drivers/gpu/drm/i915/i915_irq.c
-   :functions: intel_runtime_pm_disable_interrupts
+   :functions: intel_irq_suspend
 
 .. kernel-doc:: drivers/gpu/drm/i915/i915_irq.c
-   :functions: intel_runtime_pm_enable_interrupts
+   :functions: intel_irq_resume
 
 Intel GVT-g Guest Support(vGPU)
 -------------------------------
-- 
2.46.2

