Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B80839CD5A2
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 03:52:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A82A810E157;
	Fri, 15 Nov 2024 02:52:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DpQqUlWe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AC6710E157;
 Fri, 15 Nov 2024 02:52:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731639141; x=1763175141;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=frA//zG6ZHQOSdenzepMunK0pIppmyg3GZq/pWU+Xy0=;
 b=DpQqUlWeqCAosRHTCLPYY0j0vjWc2okSVEhD5RHudHkMqR/NCMjGBVl6
 sSMkbgZxok64ytgq/lCU7BWzLl+mv9a6TfbPMU40ZYEZj4QgBoc/+5T5b
 Q7tcKQyPjlIObXyFKzBm48agCHF7OL+Txf/1QiA3spaZPdGy5RiFeUAPU
 Hhq1EP6ZKt3DP+JW7J8ZQXa5Gl3CdBWfJD6T6NtRmShGFpQasGxdpUKJF
 sbLnrTndPqgOtQA3OHfTLgp5qvbs6hMkntybFT5gsVftwNN8BclIwB9ER
 YyiolVG5po1GE9he8oZ7DwrVE3s6fX2FP4gLr08ksMd0UQAjzC/oFrzj5 g==;
X-CSE-ConnectionGUID: xxJvY/UhSNqGeByXBPrYmw==
X-CSE-MsgGUID: DQY7zwQeQQWZqT5PKYWW9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="31773378"
X-IronPort-AV: E=Sophos;i="6.12,155,1728975600"; d="scan'208";a="31773378"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 12:23:00 -0800
X-CSE-ConnectionGUID: La/KOP5oQzaPhDmOzdjgcg==
X-CSE-MsgGUID: 6NnFK6ZaRha/yBjSmAwzgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="93147341"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2024 12:23:00 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 14 Nov 2024 12:22:59 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 14 Nov 2024 12:22:59 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 14 Nov 2024 12:22:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eAijJsxS+y0Kl32YUwcwDj3p59trDbGYY0Kj1X2VUzl/EyYfkeWXA/R99TeouK1EoRFxEXgovMkbdcUxTP1+j79UsiVdDWMxUbLkL5ooPloHCReMtQYPJ5B1J1G0eCSUFlxA4kNFQm7OueVoS8PlbMYnlqfdib5dNtKyH4RBf8/2KznyU4z3cktzdw0imQNFdcfI8ZQxBbBnLfR8ueSBzHj6lmsJwclaXiB01vlPa4v2bNDFFD04tRLd5RTPn/MDUaSXwgPwSCa459aH+HJR5mmrfETtpmTElofYt6R7p5jfMzoBtRtzHXBS59QX/XCuUHVy/VUEkAG846DRPzlHpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=182hvKjYBoH39wMxljP5702c14CUrMpPT0GvbGkuubE=;
 b=wwAwgvaHkeZevAgnrUUXgltCokVygmwaRotACkSW99UQPPkbDh6o79P/JRppLvfALguol1Heq0FkS5P1oXHD3LD1W8neLS0hoVcqlp2wp/IWlC3Y677OrEWh3prxOG6bn8hT4aOuD6qO/HKCeO9OHrTBvPUNIZTi51Y4e0PHcVku/ZwfKLhdsnJd8rE35OwflbvCOjugH/s2YRkVoQ7Ko9uOK9OYLx6pnyj6prBeY8/MCr9kX1Kf/Xtb3pF2fZ+rsVXYgXyDJ0VngonJ1us1lhrruhqfYazrb8QZeSOipVCx3Ibgw2DJhvHXpj2hHS1OFdY6myv+8B2vwAxERw3MfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MW5PR11MB5859.namprd11.prod.outlook.com (2603:10b6:303:19e::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.17; Thu, 14 Nov
 2024 20:22:56 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Thu, 14 Nov 2024
 20:22:56 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [PATCH 1/3] drm/i915/display: Move shutdown sequences under display
 driver
Date: Thu, 14 Nov 2024 15:22:50 -0500
Message-ID: <20241114202252.239652-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0196.namprd03.prod.outlook.com
 (2603:10b6:303:b8::21) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MW5PR11MB5859:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d86c039-3a05-4e26-4c23-08dd04ea1fc9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?UyIohsGmNDpX6mGd7Gw//6Atu/w0QB33JTRV9nZwkiwduLEX7Xhq1oclbNQt?=
 =?us-ascii?Q?+oAFaNd7MRbCJvRJyqBXjSp19Q8orzxrRHaUCI2pZtBvbjTkKb+7dzN9ubmn?=
 =?us-ascii?Q?oCktQbweXvQj/6uLafx0f9yqjVpMvErRvxgQq7+ZW+HEN0swX4txSh0dsGTR?=
 =?us-ascii?Q?dODGUuPrIIAlWIkZ4fWLwUNfL8fEiPJR7ihZmE68dFQLnPslW3VzCHGBryL2?=
 =?us-ascii?Q?ZwCCNUz3QmErFmwOgiZ/Jv9mgcJuLHdddOzwAUoBpFKl1h33BG8d5soa0RGc?=
 =?us-ascii?Q?xSuE3wEH2vllMCspm98RufuG+uJeTIrHc6wth/5Ikr2gRHkBA3N8U5H2oD9L?=
 =?us-ascii?Q?jJPWn7DJGqFJZqSihnxdjZET67+ChQQWUxgg8Su7ChGlqQHAB/Oa9YkjqrJD?=
 =?us-ascii?Q?xn2b4+FIIAnUxVxKRxnZexSpqUPOZqRGMI4qKSnwdGlIGMbkR556dWPd++bf?=
 =?us-ascii?Q?N2HqzCWfp3vXr6mH8RXoPaKrlqhqZcftLbppL1dTjVA+ZvXDELUcKF3zt+UP?=
 =?us-ascii?Q?cpM6PtK0jEtWfcfQbhcRaW/m8dADKGUzaUHSTF+qgNZ3ZYzaqItU+XjyIp+N?=
 =?us-ascii?Q?5NQ1GckVNARBfAV/dNxWC1hX3T+rQnCKxQuxfZbvzuLoksRKakMpasbhqANh?=
 =?us-ascii?Q?dv1qyEysD6Sose74VS3BIYi34PNl/sp8zouqAiuwYfolnqX866geH3HI/biK?=
 =?us-ascii?Q?IQ1RIUDh5isGDn3PLTPmKrXIRY4E3O7BvcazWR5r9rTjp9M2FeOxikouysJ/?=
 =?us-ascii?Q?iMIgfnb/aIvvCa+V50CbkUxjcoymDExZQs6RDqFSqRYWZOUz5qnv614u6qDF?=
 =?us-ascii?Q?8R1xQohrRgG+4zdO7f7ekQzn1KYkZrHUsTG5pHMpOqXnbHzl61qIb8SHWdiT?=
 =?us-ascii?Q?3qYpmXffzSaw4UqhH18I8lb2U7MaitNByYxcvYBACf8bLut1IsXOc7dJnR2t?=
 =?us-ascii?Q?/9cIKnU2r2+YLFpon/cKCGUwZZoXRuckRT0OZ96QGmw1lVn1mvu362S4sxe3?=
 =?us-ascii?Q?FAMDwPi5IHCKqFEXvgX25jW2O09gkYhEdiMeB33tIWnpFWsMu1AoandTy+Uw?=
 =?us-ascii?Q?cC2FPYFmu5J97sTF8KdfTBlFlQKlRck88PYHUzkpPFpM7ze/641NvHuTQAKr?=
 =?us-ascii?Q?WZG8isRslyQwuL6LuWjydo74D2PehE6NbwbuTiklhX7k7VWXGDrXgZNesPp1?=
 =?us-ascii?Q?TnAITXS+/UP1XED+kW+gUAjx2TSEnd4yfVmuVIdedbpPjQ8M4c2dv81nC3gC?=
 =?us-ascii?Q?47yx3vwvKviNDNnm8D04xoROAMBHQXlMY8ISpkgWwhhrTMBx66kA1Cgev2tr?=
 =?us-ascii?Q?dkXtewCZ0L0Xo8FPGTIC4tiT?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KMbdSF50afo03PnCldegdnRDhtY6Omz4CwvWPP0vUdNpewpbJZD+WzQK7cjy?=
 =?us-ascii?Q?yoePqMRtWD7A6L5dNRfy6s7YSbMIrYezUVnqJVHyfoCXEeJebYy6mjIvZGYo?=
 =?us-ascii?Q?aN9DeA1B5xUYRj4YfIrw/J4VhJFJax8WEX+tpGMTn84kTKG6SsOqSLrNCjbl?=
 =?us-ascii?Q?Ex+ZAX6fTzPZDvWdLYn1g7Xni4giye526wsbINOHqLgz3y/7dGn5T1IAQFF7?=
 =?us-ascii?Q?qYxlxNHc379CQq4QCaIPNcV3WK8xfUJ/c18M48Iw/gSo9TyI+A3AEb+wHl0p?=
 =?us-ascii?Q?o5lpSb0wjnBjSbR2v4xWWPdYPWagRymF4rSzxsfJy1MX/qN3SbOtyBLrpNgu?=
 =?us-ascii?Q?qAudk8z/Q69gJ2qUBHe1pMlOMwUwzNPBQ5xcMgV6VsAmEn6WOSpSishLVa0A?=
 =?us-ascii?Q?A7Vw/StXVwuc0B7YER5Opxz3j4df240A+Mg/rYoEFek1NSpHxHOYIJkkjHrI?=
 =?us-ascii?Q?6uW7qFNXkU3S5XuTxASimmpUhg9F+fr9NQiuAVmN+BsXdffEZrwONbM3sXDo?=
 =?us-ascii?Q?PpvkSN3oF9smVEtq+BMZ3dD/GhZfpmo1CBlJGG9OsyLPW6cqN85KKfmqr/qj?=
 =?us-ascii?Q?neY3q7acQHsQE3e2zjhqE3tdxd0G/dgPmuDE1Fr0ncsyVhrAL7a3EdHxNaYt?=
 =?us-ascii?Q?KzNEAUogSSr6fbhH8/11nABMLF0AruRoIC9hhmwG7tTDWxHxXEQDlBd/+SYd?=
 =?us-ascii?Q?gZ0jCVhUhf1hGjHDMAULzneMxzps/6KZ/BIxx7i8oBuMLduEWqMsBidHDWDC?=
 =?us-ascii?Q?ic609ftzDFCZr4mf9MVGhEuUc2ncTjNlItFycSDLQAl5OOzP343bkuOLjPGR?=
 =?us-ascii?Q?eSTOXlVU9M5UH8mbVJTA5C4tkRD9Ar9a3ZK93cOye9Nq2RkbEXgY+WM2BxDi?=
 =?us-ascii?Q?X/sHsSHK0VSr2bmv+/boVwjczEFvgD0FGQ52uCM6mwldgdFSjZuQL2E3ECfK?=
 =?us-ascii?Q?ohQB1BYxI9vQoisD7kXlmJq0+wegc6a0Cj+BFt93hRAoK7a2ndItpDLd0cNu?=
 =?us-ascii?Q?qgMLGLVTu4ppARvz30WievhFcgdcEXXrOrBGXYYNSBN7fqmWCP0AQRCr95hC?=
 =?us-ascii?Q?V69Mo3tuk+gjv7wytlcK3rqpVqY8fqg2aBAn6yfHqRQwnw9Ss13OyrL8I7R5?=
 =?us-ascii?Q?QfEl1CHxnjDXhw+/YCyMiqAMjGRj7rsPark0Nn23q8ZYPNd72v3jvUpY3DIR?=
 =?us-ascii?Q?0S+H4kgBoFjx/+tNd/2Gap6xUx2pD25PzdeInwQy2cC2Yx09ptDeOOod//mE?=
 =?us-ascii?Q?3G2KpXw9q5lWw43LDY5Vp9zfffaHNnI2irE4PwGVo15WayV7IZHF+FZ6VGRA?=
 =?us-ascii?Q?6LIZqiNRTVdpiu6FzVwW9d/f9nPXPJvG7XThBRC4PmdJ/z4Ajn6je1QRMkcL?=
 =?us-ascii?Q?8k6QeAfjQYESepYUr0nEKZQeeirCWiELHFxLeggIV3eR+6bTxpqwGP5OJyfw?=
 =?us-ascii?Q?8ruW6PyteCMT3+fjrbS/33Iq9rmgJbXhDCA4/YpHqrT67iHoF0cTfa5ILH3O?=
 =?us-ascii?Q?oAqrRX8mk2pPeSrT+htFDa5fgBgW/0xGt/QiziiFfI+8vSOst/o+bZQKqa81?=
 =?us-ascii?Q?V3MMdMmt2j80CqgRC5H+uYB+b/7BW3liGr58J08DH+skfSNtuQvjbAKwHRrM?=
 =?us-ascii?Q?sg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d86c039-3a05-4e26-4c23-08dd04ea1fc9
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2024 20:22:56.2173 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yI9Mve9olUiwc/ZFJRE+iCXwRmkGvxPcC15RaJeue6iYXnXhc7IaUQgnJsiXt5w8unpJCHxXHrfIfDybzXhirA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5859
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

Move display related shutdown sequences from i915_driver to
intel_display_driver.

No functional change. Just taking the right ownership and
start some reconciliation of them between i915 and Xe.

v2: - Add missing _nogem caller (Imre)
    - Fix comment style (Jonathan)

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com> #v1
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   | 40 +++++++++++++++++++
 .../drm/i915/display/intel_display_driver.h   |  3 ++
 drivers/gpu/drm/i915/i915_driver.c            | 27 ++-----------
 3 files changed, 47 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 06a60be649ee..ee2cccff6e5e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -39,6 +39,7 @@
 #include "intel_dp_tunnel.h"
 #include "intel_dpll.h"
 #include "intel_dpll_mgr.h"
+#include "intel_encoder.h"
 #include "intel_fb.h"
 #include "intel_fbc.h"
 #include "intel_fbdev.h"
@@ -762,3 +763,42 @@ void intel_display_driver_resume(struct drm_i915_private *i915)
 	if (state)
 		drm_atomic_state_put(state);
 }
+
+void intel_display_driver_shutdown(struct drm_i915_private *i915)
+{
+	intel_power_domains_disable(i915);
+
+	intel_fbdev_set_suspend(&i915->drm, FBINFO_STATE_SUSPENDED, true);
+	if (HAS_DISPLAY(i915)) {
+		drm_kms_helper_poll_disable(&i915->drm);
+		intel_display_driver_disable_user_access(i915);
+
+		drm_atomic_helper_shutdown(&i915->drm);
+	}
+
+	intel_dp_mst_suspend(i915);
+}
+
+void intel_display_driver_shutdown_noirq(struct drm_i915_private *i915)
+{
+	intel_hpd_cancel_work(i915);
+
+	if (HAS_DISPLAY(i915))
+		intel_display_driver_suspend_access(i915);
+
+	intel_encoder_suspend_all(&i915->display);
+	intel_encoder_shutdown_all(&i915->display);
+
+	intel_dmc_suspend(&i915->display);
+}
+
+void intel_display_driver_shutdown_nogem(struct drm_i915_private *i915)
+{
+	/*
+	 * The only requirement is to reboot with display DC states disabled,
+	 * for now leaving all display power wells in the INIT power domain
+	 * enabled.
+	 */
+
+	intel_power_domains_driver_remove(i915);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
index 42cc4af6d3fd..1ee37fb58d38 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.h
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -26,6 +26,9 @@ void intel_display_driver_remove_nogem(struct drm_i915_private *i915);
 void intel_display_driver_unregister(struct drm_i915_private *i915);
 int intel_display_driver_suspend(struct drm_i915_private *i915);
 void intel_display_driver_resume(struct drm_i915_private *i915);
+void intel_display_driver_shutdown(struct drm_i915_private *i915);
+void intel_display_driver_shutdown_noirq(struct drm_i915_private *i915);
+void intel_display_driver_shutdown_nogem(struct drm_i915_private *i915);
 
 /* interface for intel_display_reset.c */
 int __intel_display_driver_resume(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 2013962e446c..3b241054ceb5 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -945,43 +945,24 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 {
 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
 	intel_runtime_pm_disable(&i915->runtime_pm);
-	intel_power_domains_disable(i915);
 
-	intel_fbdev_set_suspend(&i915->drm, FBINFO_STATE_SUSPENDED, true);
-	if (HAS_DISPLAY(i915)) {
-		drm_kms_helper_poll_disable(&i915->drm);
-		intel_display_driver_disable_user_access(i915);
-
-		drm_atomic_helper_shutdown(&i915->drm);
-	}
-
-	intel_dp_mst_suspend(i915);
+	intel_display_driver_shutdown(i915);
 
 	intel_irq_suspend(i915);
-	intel_hpd_cancel_work(i915);
-
-	if (HAS_DISPLAY(i915))
-		intel_display_driver_suspend_access(i915);
 
-	intel_encoder_suspend_all(&i915->display);
-	intel_encoder_shutdown_all(&i915->display);
-
-	intel_dmc_suspend(&i915->display);
+	intel_display_driver_shutdown_noirq(i915);
 
 	i915_gem_suspend(i915);
 
 	/*
-	 * The only requirement is to reboot with display DC states disabled,
-	 * for now leaving all display power wells in the INIT power domain
-	 * enabled.
-	 *
 	 * TODO:
 	 * - unify the pci_driver::shutdown sequence here with the
 	 *   pci_driver.driver.pm.poweroff,poweroff_late sequence.
 	 * - unify the driver remove and system/runtime suspend sequences with
 	 *   the above unified shutdown/poweroff sequence.
 	 */
-	intel_power_domains_driver_remove(i915);
+	intel_display_driver_shutdown_nogem(i915);
+
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
 
 	intel_runtime_pm_driver_last_release(&i915->runtime_pm);
-- 
2.47.0

