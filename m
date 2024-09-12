Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69135976F7E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 19:25:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02A2710EBF7;
	Thu, 12 Sep 2024 17:25:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YVlW0cfd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 432AE10EBF6
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 17:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726161956; x=1757697956;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=CsSFwLKdfUYEYsCUKdizhSYaoNkOQ+ROmVCgO2zFIGw=;
 b=YVlW0cfdZlc0bItGhNzsVHPEL7vewdBKvm2zUbJtZNXO+a1Ec6iSlD0f
 DYnObuoy+xQiA9LkAqzIWRu8GaCVazUlqrINbWmeVUpyJbDUNMqwzvxlA
 HQRjIeD15ECVm3+Iu9+T9vlER4EVOqzniFDVFCxMIIDYXVgMfjxvJsBdC
 qWjzK99mForZR4EqD1+sVMuSoay4JmDJ+y95EnM7guCCXnZ6iYvQytmJB
 eyCkvmkQ2Q89qG1yHu+XIIgPa7Ybh2tYqA7I8SvAImzyMV7uRY/4PdV9m
 lFk47FETQOmK4sXH/jECMgzlhypQ7wB/SQAUe6/QY/hU5B34wG5+P5M2f A==;
X-CSE-ConnectionGUID: VGKGGIdtTrqRVSluWHgiKA==
X-CSE-MsgGUID: 0gMivF+eThaEcoQKXstG7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="24972451"
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="24972451"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 10:25:55 -0700
X-CSE-ConnectionGUID: 7VZ+l5H6QE2ndMb2LgIFWQ==
X-CSE-MsgGUID: mLIORKZpQruvou5xrLGySg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,223,1719903600"; d="scan'208";a="72592884"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 10:25:55 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 10:25:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 10:25:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 10:25:54 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 10:25:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rylh7DLIpXFMNN3GVW3LfKiQ/meoXufrwWdvepFX7+3V16URgH7Wk9IjqWXXove0GXFmzopMuNaICcyLYNfAYn+FFwwj2r4jgc8PU2lY+pC2Ji6FHRRfTgkRv2Dct8oZ5E4kER5C4EFzLG7VFQH42fAbnJI5HMPswZXcdZ4+Ttn5c+X0lSv3lZjx3STNnzHOJlL/ROh8osYNVNMT5jpZSbtoWwug+PqIOGaRDC0CgiHGI0x0fLwLKelypiUcyN737fOGztwac7lU1JB7o1rV5O2ZT1jojoS/lm9sxu3l9Mfd3TRLAKD28KNsSPDpaRsP9/PYa+YcSLIXnX2GFaRPtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xSQ2KyU6jaai7yXsh9vfMDedIPQ0YUJcAWGajIiBhZ8=;
 b=lhBnK6zR0Jgc6Cdkw8/R+YfWtJFqPHItg7w2cz773e1yAHADBeTx1pBEc5WJWA2eUgEExtxY+mN6KKP4JOerSKKCnU2gNn9Pu3YrHvYXjKDOagSJ9qXerzn967HJrkfVw0kmTt58aQw8pe19+yLuU38HnMIhvqkRcmG+Q1e9vrG/GmQO4yL7Nww9otKEpEL21arM1paVgi14m+w5A0zM/OSCuJwkSYZ1VOGa53w5EoK1YZ7So+baf+yRLxKP291QLOh/dofviCvDUVSbAUulYxC1t8MtmwizPVcF7TFczu8Q4xWz/5rvPLaEqiBwTUFOF9jNv/Op82EeLI2pegNHqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB7480.namprd11.prod.outlook.com (2603:10b6:510:268::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.18; Thu, 12 Sep
 2024 17:25:50 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Thu, 12 Sep 2024
 17:25:50 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 3/3] drm/i915/irq: Rename suspend/resume funcitons
Date: Thu, 12 Sep 2024 13:25:39 -0400
Message-ID: <20240912172539.418957-3-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240912172539.418957-1-rodrigo.vivi@intel.com>
References: <20240912172539.418957-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW3PR05CA0004.namprd05.prod.outlook.com
 (2603:10b6:303:2b::9) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB7480:EE_
X-MS-Office365-Filtering-Correlation-Id: 296d7c76-c241-4679-8583-08dcd34ff279
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?408TgD2m1vLoOqjM8HzFmUA9LE6MtD8GHOFb61DiR4UQ/NLDe50V34Hui7kh?=
 =?us-ascii?Q?KTeznMfTnGRsijMOUBzAKVgQ6ZcIGMzvZnobpuAM3+71gKgWIe0PogFu6tjt?=
 =?us-ascii?Q?ACXnb0BB0ak7fOC/3qyl82vxbgWe73EpacQywsk5jKIUK5hkbOC0FOkvttse?=
 =?us-ascii?Q?3D3LmM7712rojR9KSdydCr8eILT+fcUBzgMCPO0YfbyXB7d6zDMufwnbgoJ4?=
 =?us-ascii?Q?UOjFaUHy0zG2SoC5qJdUnLvvMQ+S2x0P4hZsXtIE/TXD7VhhNKCyhi/4aEE4?=
 =?us-ascii?Q?Oga9gWd3FuX+JFwGzw3RNaNELlUCgkPHEwchFSeDL2kNAM8Pn+Hkq9pIVHue?=
 =?us-ascii?Q?t9Ei7utcUYwqgmUkpP5SZTlLroX6lIx/44LA7Thycm0cYZcg9H8cMVRRa5uk?=
 =?us-ascii?Q?VhchMuD3oeodgCma29USEa+k8AczlEKThxIu5dyzuzhA6iPThFzxZ3/+ERg8?=
 =?us-ascii?Q?dXqFhJEfg0ja77bQwSzrw/czyWDZAZ+kk+vuPYuJXMX+76DJ0j+Mc+iToNjj?=
 =?us-ascii?Q?XwZEO7Xjo5WjimsEYJmd1VPGA1bzcwTij9fP10UoLlvYByNpT5ZDmCpeT9LB?=
 =?us-ascii?Q?u/tjXMR9446lPLpuySbUvUHUGpfAVvUpO+nH/HAucHtKDTmW+QFIin4A9Y8o?=
 =?us-ascii?Q?m+O3Zs5yGk5gumBE85d7PZb9nXGHuxMF8gqNaF/E6TKPTWr5LKigeDcUOLG8?=
 =?us-ascii?Q?29sqE286XvpGFgfgergdlK+7yDrEpdON4DvhxFnkeKl2I7JsadEXzWINMpSo?=
 =?us-ascii?Q?Mw21L+hjhrf713b3wDqpveuO1Oobxeh0YPRJ+SKUNlzI8b+RZ+KrAc9Vo+PT?=
 =?us-ascii?Q?7M08+jTUTAxXu5pNFp/VuisMobJJti41Ipgr0HY8zbGSfNXQAfZP6hE1GIVm?=
 =?us-ascii?Q?rEw8JuCTB6jCyWoaM3hCy/j8hy/JtHvgKDSXzMj8uByvuIPRX2S0Z+jif7H2?=
 =?us-ascii?Q?Ii2USQeXA91AOTPUNN1Z7MQ06IOxrCDTm770/rdnlJQ6rZmcPQsWGg3G1mDH?=
 =?us-ascii?Q?QhosxknpoCLtKArMvn+cQWz3WcuqkhQs7NZAEUL3CJ8RLrvSWY6v2KPBmy6x?=
 =?us-ascii?Q?KWvOHrCh+B9+8+CKimfh0OShtj4+VSQvXuN+83h30dcLKI2KWDpryuZra6ag?=
 =?us-ascii?Q?ujtbFVPVr3CTSwlYujiTkyG/bz8HtxoZ9fGEQ/NmST3RLJp7MxaR/3TN+uku?=
 =?us-ascii?Q?tz7R7jmKs49Vt+91X3vMyEDVkdvBaY6RVfhLE3Iyd1p1WTMpcqyxJBOvPiLc?=
 =?us-ascii?Q?NOQVXFRWTUq5FjAwFwPcCDrRLE0fA25SYczHu37jeeEeYpW2sRSAeTLd/xkz?=
 =?us-ascii?Q?a7zIDXSqBmr4Wgd5Yx6TCOWIG7pmJTYLUfs0ignTkHyzSg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jvccfdslvxkra7BDvnzGCjr1L57sBKKWW17hCG60e01OL7ksV6U0pQPPLECd?=
 =?us-ascii?Q?uRl/DVvu8XBLhhO39fSmUw5e6Kiyap0ILXG+3rRsRDWXwBplYFbtOSL7wc6n?=
 =?us-ascii?Q?CpSLPIPm9vKSW9T5zeOo1tgJAeXB7lz+BVuxdUAbLV6vAhZpdFxvZgm3UXrY?=
 =?us-ascii?Q?yU15xFhw68rybsmmQzfiWWB7H0m+79FnzUHPeXql3xt6sAa+51wuYa1kbSE9?=
 =?us-ascii?Q?fWDLu2coNOt40RD1i3Ho07aHyFTdJPOPclDqioyjz4BlFYjwAZMBmediYF/O?=
 =?us-ascii?Q?noZMq1bL9UZA0HqM9TIaW3KA8mNT0aUgW7z2CiLouLJatwWY+r8kzWGEvkU5?=
 =?us-ascii?Q?qRXHBslh2C3dht8q8rsATjcWFhgTAIv0m3bHQRyR+Q07V59aIqnHXYvncPIu?=
 =?us-ascii?Q?0gs2s+yptadqCM57Fr4szY24FzzJg/DW26HJ7uZ8z9fo9tGnl2aYmNuNR38K?=
 =?us-ascii?Q?h8J/xs1zzjm4d86pGej8utvwn+96pnALq/XReQ6H4t9KcR42T39QoeMkTyrr?=
 =?us-ascii?Q?4T7bjYbzgmqS3221sG9nzMjEXo5xcJSoiWIe+SbjkrDWVDGs1BzR9uFd7dRQ?=
 =?us-ascii?Q?8GQxEmqtAktkTiOg03bLpjT+4iOWkqNLR/isVOt1ib+rzqHNsMzsipbzfOMn?=
 =?us-ascii?Q?IYgAZcN4biflqqoDYR5PUhlFI3G0gc2B3gteq3Ret55jlqOh70vc8/NH8gIa?=
 =?us-ascii?Q?QeRkKpyY4iR1VaZqUrjQrHfC57hnAmXzys5cCpd4V7PdQiQgZ3JN/Yjly4zx?=
 =?us-ascii?Q?4skMjUT1GcSNdAA0tINgUBdZiGR3zRF9zyUUQE3bWuELafdVnb+k5L0UpBaP?=
 =?us-ascii?Q?PoORm9b+7drxATSvqAvU0x+gsT7iIjTqsKl7ux7VbGBDmWLuN0vD8h98c8Ih?=
 =?us-ascii?Q?IbfPcknSBqG5PesA0C/6fEbu+68iVbHsRlSXu5VOmZIqM0TGXcRnUtRUgSQK?=
 =?us-ascii?Q?zHuumiE2Xv65bzpNsGwEaPgMgTU7P3xgIm+GPLrbZaoShn00aKY7k//X/lIl?=
 =?us-ascii?Q?LAgPWJ0Lj7mNFvtHTlq6d15NtWpXGoFpN0UGrFfRKIb40ceWw7Q5mwv8lUjW?=
 =?us-ascii?Q?THwY1RmksbOn3myd46dx4ZFeTgegUEUyMM9OkhQDLdIQk+3TNHUxFCJCrSt/?=
 =?us-ascii?Q?I6hBUAQCaKVEP1oTe+sOOoNGBvY2AyZCQpA8phD+gPdoW6gzRsrxHnICGqzm?=
 =?us-ascii?Q?d6DBIUS8BhMz1SRmTyMh9iGqYyl+0Bez8Y/7MeO5ndbENOKDSKhQSkYjo2z4?=
 =?us-ascii?Q?XKYWw7+BAM3kEd7b+8Y7TH2C3hmUsxu/G0iHGYmU5/x2JEGWBgpDDkLtRJuP?=
 =?us-ascii?Q?VUNaKYPsb3EhYe42kDdP5SSPpv9GHwwFXVftOb4T99hbua5Dh4iJK6C8H3Ke?=
 =?us-ascii?Q?JbeZdjSq0jR8HN0nYJ4meKtsCySBAQhHCQXDHHprNuIEYg30JFyfjgEk/LKC?=
 =?us-ascii?Q?lJ2aXPGpwBUu38fWls8CDd8Sy9g4mCtoYgR3+lUYZTIgpxAoqGQxjafsIEUZ?=
 =?us-ascii?Q?WVU0T33lvkjrFqPYnPIxOc8nCzxY+b1yuaEgcUyIgw+f2iiukFS3YzB4ynMC?=
 =?us-ascii?Q?91x5lVAK7UuwWrBfytQBZD4C0c/7I9rW8u5ygk752YmM4vrVmQl+1fxPf6fY?=
 =?us-ascii?Q?PQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 296d7c76-c241-4679-8583-08dcd34ff279
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2024 17:25:50.5422 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MPdXZnBp/siJe9e6hdIdgfRRsYWc0o3+Shf8s/Mlf/y7s3jtCxFtZvXX/EftczIPID8d0HH8CPJpgHrIeM7H0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7480
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

Although these functions are used in runtime_pm, they are not
exclusively used there, so remove the misleading prefix.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_reset.c |  4 ++--
 drivers/gpu/drm/i915/i915_driver.c    | 12 +++++------
 drivers/gpu/drm/i915/i915_irq.c       | 30 +++++++++++++--------------
 drivers/gpu/drm/i915/i915_irq.h       |  4 ++--
 4 files changed, 24 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 8f1ea95471ef..f42f21632306 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1233,7 +1233,7 @@ void intel_gt_reset(struct intel_gt *gt,
 	}
 
 	if (INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
-		intel_runtime_pm_disable_interrupts(gt->i915);
+		intel_irq_suspend(gt->i915);
 
 	if (do_reset(gt, stalled_mask)) {
 		gt_err(gt, "Failed to reset chip\n");
@@ -1241,7 +1241,7 @@ void intel_gt_reset(struct intel_gt *gt,
 	}
 
 	if (INTEL_INFO(gt->i915)->gpu_reset_clobbers_display)
-		intel_runtime_pm_enable_interrupts(gt->i915);
+		intel_irq_resume(gt->i915);
 
 	intel_overlay_reset(gt->i915);
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 943e938040c0..f82aa313f854 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -950,7 +950,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 
 	intel_dp_mst_suspend(i915);
 
-	intel_runtime_pm_disable_interrupts(i915);
+	intel_irq_suspend(i915);
 	intel_hpd_cancel_work(i915);
 
 	if (HAS_DISPLAY(i915))
@@ -1035,7 +1035,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 
 	intel_dp_mst_suspend(dev_priv);
 
-	intel_runtime_pm_disable_interrupts(dev_priv);
+	intel_irq_suspend(dev_priv);
 	intel_hpd_cancel_work(dev_priv);
 
 	if (HAS_DISPLAY(dev_priv))
@@ -1181,7 +1181,7 @@ static int i915_drm_resume(struct drm_device *dev)
 	 * Modeset enabling in intel_display_driver_init_hw() also needs working
 	 * interrupts.
 	 */
-	intel_runtime_pm_enable_interrupts(dev_priv);
+	intel_irq_resume(dev_priv);
 
 	if (HAS_DISPLAY(dev_priv))
 		drm_mode_config_reset(dev);
@@ -1481,7 +1481,7 @@ static int intel_runtime_suspend(struct device *kdev)
 	for_each_gt(gt, dev_priv, i)
 		intel_gt_runtime_suspend(gt);
 
-	intel_runtime_pm_disable_interrupts(dev_priv);
+	intel_irq_suspend(dev_priv);
 
 	for_each_gt(gt, dev_priv, i)
 		intel_uncore_suspend(gt->uncore);
@@ -1494,7 +1494,7 @@ static int intel_runtime_suspend(struct device *kdev)
 			"Runtime suspend failed, disabling it (%d)\n", ret);
 		intel_uncore_runtime_resume(&dev_priv->uncore);
 
-		intel_runtime_pm_enable_interrupts(dev_priv);
+		intel_irq_resume(dev_priv);
 
 		for_each_gt(gt, dev_priv, i)
 			intel_gt_runtime_resume(gt);
@@ -1587,7 +1587,7 @@ static int intel_runtime_resume(struct device *kdev)
 	for_each_gt(gt, dev_priv, i)
 		intel_uncore_runtime_resume(gt->uncore);
 
-	intel_runtime_pm_enable_interrupts(dev_priv);
+	intel_irq_resume(dev_priv);
 
 	/*
 	 * No point of rolling back things in case of an error, as the best
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 2c0fdb5e05a6..d42997fdee65 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -1449,31 +1449,29 @@ void intel_irq_uninstall(struct drm_i915_private *dev_priv)
 }
 
 /**
- * intel_runtime_pm_disable_interrupts - runtime interrupt disabling
- * @dev_priv: i915 device instance
+ * intel_irq_suspend - Suspend interrupts
+ * @i915: i915 device instance
  *
- * This function is used to disable interrupts at runtime, both in the runtime
- * pm and the system suspend/resume code.
+ * This function is used to disable interrupts at runtime.
  */
-void intel_runtime_pm_disable_interrupts(struct drm_i915_private *dev_priv)
+void intel_irq_suspend(struct drm_i915_private *i915)
 {
-	intel_irq_reset(dev_priv);
-	dev_priv->irqs_enabled = false;
-	intel_synchronize_irq(dev_priv);
+	intel_irq_reset(i915);
+	i915->irqs_enabled = false;
+	intel_synchronize_irq(i915);
 }
 
 /**
- * intel_runtime_pm_enable_interrupts - runtime interrupt enabling
- * @dev_priv: i915 device instance
+ * intel_irq_resume - Resume interrupts
+ * @i915: i915 device instance
  *
- * This function is used to enable interrupts at runtime, both in the runtime
- * pm and the system suspend/resume code.
+ * This function is used to enable interrupts at runtime.
  */
-void intel_runtime_pm_enable_interrupts(struct drm_i915_private *dev_priv)
+void intel_irq_resume(struct drm_i915_private *i915)
 {
-	dev_priv->irqs_enabled = true;
-	intel_irq_reset(dev_priv);
-	intel_irq_postinstall(dev_priv);
+	i915->irqs_enabled = true;
+	intel_irq_reset(i915);
+	intel_irq_postinstall(i915);
 }
 
 bool intel_irqs_enabled(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_irq.h
index e665a1b007dc..cde4cac5eca2 100644
--- a/drivers/gpu/drm/i915/i915_irq.h
+++ b/drivers/gpu/drm/i915/i915_irq.h
@@ -34,8 +34,8 @@ void gen6_disable_rps_interrupts(struct drm_i915_private *dev_priv);
 void gen6_rps_reset_ei(struct drm_i915_private *dev_priv);
 u32 gen6_sanitize_rps_pm_mask(const struct drm_i915_private *i915, u32 mask);
 
-void intel_runtime_pm_disable_interrupts(struct drm_i915_private *dev_priv);
-void intel_runtime_pm_enable_interrupts(struct drm_i915_private *dev_priv);
+void intel_irq_suspend(struct drm_i915_private *i915);
+void intel_irq_resume(struct drm_i915_private *i915);
 bool intel_irqs_enabled(struct drm_i915_private *dev_priv);
 void intel_synchronize_irq(struct drm_i915_private *i915);
 void intel_synchronize_hardirq(struct drm_i915_private *i915);
-- 
2.46.0

