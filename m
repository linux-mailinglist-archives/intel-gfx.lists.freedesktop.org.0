Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D5E984C56
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:43:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1F8410E749;
	Tue, 24 Sep 2024 20:43:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mlWEfeW0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2D7710E75C;
 Tue, 24 Sep 2024 20:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210622; x=1758746622;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=AhF5+BBcsKnbYaWVWbev/XNTjUmUeBqf+KJoPYDDN2U=;
 b=mlWEfeW0Pq9YqpdryBNMRXkmBScjVKuvURnQTJp9fdV/xm44UHy2Vk9+
 A/N71jhys8WqptPjxb870J94+QDtCBKQGwGz5SDOpMNfTScwnz7zA8Wjy
 8HuAwtHJm/mdttxljRPBuC/uumjOEqQW5Af9BEVvZMC8vny+1gVUj8o69
 td2//YTwBb8cDuQ5q26rhUN5Cs6jUEDkikwbkf8FtjmT7Tha3HcJfepm4
 kE9F1kSV1crj7kF7upzHPaldcilp1taJopdB09lDF7Co4gptcfSoLOatH
 RxytYO6Ezr6SRwxfAjkCTqOQV3TAWuC4+X5Yb3czjbgozDxPR0A+gBPkl g==;
X-CSE-ConnectionGUID: 75JkyQ3NTyagIQaoj+xfUQ==
X-CSE-MsgGUID: fO3KFzUdRkawH5zEg80Rfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="43751570"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="43751570"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:43:42 -0700
X-CSE-ConnectionGUID: IVSJYfIETGuieGNqou4trA==
X-CSE-MsgGUID: anONtLSjSVqjjy14mreYxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="76298855"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:43:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:42 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:43:42 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OsqWAqW2M0YO4HA5PKpMTKTMyxdL6Myb+gV21YRYvwfVxAXLMOieEY56oTnRZi6+LSTsWhqHPpuk3msQXn7DsMyASUAAJNZx7pwhmVk7Ntn8dn29YEaVG+FcWuc9qAh5PzlsExsxJ7UwGxybIStsJwPwEjedoyh1V07SW2yAuMRFzwGYP399KI2g+nOJhhT3zsCNBn36lUbQJVLvJahd7eGfHQ5oIFO4voPr12xH9+ELBwV3CVM4Rnq3QkSQdpU/PriyQ2wHYsbTBiqxCQglva4fbonRvgH504UdUAs/GYVe+ChxF0cQBuDSB1PD3/gJQHy+NKq3NOJ98HMcGtiwiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=smCGk6+tdoXeK/oR0zEqixIHDV7lT7FTEnLdWZRnrZ8=;
 b=sJaWlyLH9pCA1B1/TrlSN+9dA+5kR+1JJhYMx+m+V4KXmmgrCn/Gwe7W6VY438ej5+IOQJMJBVLvagplWW6o3w3RNNQlePMs76rfL78Z3I91y6pHu947pFsKE5G+oKS6f3unlz2bWf8iI/qhAQRa+lse6qNL8ds//7E3hr0sjTThTJkndl8hQdmxGJFktEyQpT55byrvGTSoEO4wvI72Zo1S6MBYVuNN/J/pa9N/QJROFixOq33DYMAG7NKJsFyB6E8769lBIUiuiXg1QnYsuor/tkFNg/0BfDkgDQ4yxYD1FYOGABSBZMD6jeLzwJn/ga69+0plfIyjrTibf9logA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB7425.namprd11.prod.outlook.com (2603:10b6:a03:4c0::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Tue, 24 Sep
 2024 20:43:38 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:43:38 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 22/31] drm/i915/display: Move runtime pm related calls under
 intel_display_driver
Date: Tue, 24 Sep 2024 16:35:43 -0400
Message-ID: <20240924204222.246862-23-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR04CA0275.namprd04.prod.outlook.com
 (2603:10b6:303:89::10) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB7425:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c1d9c1a-0eb2-46c8-f234-08dcdcd990fb
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?xiKesUzGfNNTDiUrrt0KxXfW3/ZgCoztoXBGbFqRFYz0yzm1NRZeY44qlfLG?=
 =?us-ascii?Q?HMHwvHN1sp10Rtd9RJR6nECDeOted0s18QoQmdKXEHkhS6ugbUP3eMPOf+o9?=
 =?us-ascii?Q?1YUD0fep0DxstA87oZEs0Px7WovwYgdC2WdzTakm6pV6m2koSXkPjg6nhqRO?=
 =?us-ascii?Q?U/bep92WE7jc8TYXtdf1tZ9obWbGgrNlUXEOeUiJliBI/R282bfkjt16CF3z?=
 =?us-ascii?Q?AlotvnpVTVFFjtbG0L78vr466PXNMT3XgpADcvjvlA3rjLHpHuXn5rOemWH9?=
 =?us-ascii?Q?c8aobVzyHVLLTHO6Os7d9h2DAOETBPNAgHQ2QH7LpvuinPrRFiRzCS+6g46k?=
 =?us-ascii?Q?DMrPBSGJvOlHjk6wlpVdN2lmp9I+tnedCEHmWsnVcv2ruH06PTDBO64LbFnw?=
 =?us-ascii?Q?tyicOJAHo0o5mWuu83JNW6ajs1YMQBpyIraaJZ3AjvJIGZc3SWpbvdQ2vLJ4?=
 =?us-ascii?Q?8wYFIZV4Mud0I0rKGjZ6AixIKQkskh0sGWoksVoB0D9EXWK2R0Gx69rcmJpl?=
 =?us-ascii?Q?WX4zY85RMJriEn3CJkVK58lwV3vWacppDYxZKZ8X4oKWb0p8Wd2gY4GtWg/Q?=
 =?us-ascii?Q?ai17JUklpUad54hYaJF/x7vdAqHxnlaWUN1kH+EFPsVbFdr7FhkUO4cw/1Kr?=
 =?us-ascii?Q?/ExhXud22+yOhkRRpu+2uwqi6CjagRiygGJ9TuliQpKVNyrvD/+1xHGwLrWv?=
 =?us-ascii?Q?FXJNNjVwfDN53651VasPD6iT+Famw2MDH4lB+HMHDFoIvHeffOkQ6l7kzY0K?=
 =?us-ascii?Q?Ju50oVVDeB3YS7LHIi9l54+uhpoKxKkr9+IFTLwAd1Ev08V9knwppRlGC93M?=
 =?us-ascii?Q?BIzdbyRF7HmlrPNwzs8pvKu59Kf7fBOCQyMPAy93XpzhTQTPwKiSCv43FSaB?=
 =?us-ascii?Q?H+TuGNqo2PPnFeUL9LJIuOMqp1nxMjfjBT+Z6lTIiQgZENDHCKJNGQehOx6H?=
 =?us-ascii?Q?D/cQLa3dLVpNgfa6NMbEOvDbGOMgBA2uxK6QT+TorXMsnEd3ohfYC2n24dtJ?=
 =?us-ascii?Q?g+yHJsrhAFefSCcUrBu+ceR9HR5McZSaMWPv/Sx1QzNI/y0D5XBpdXlH6GVY?=
 =?us-ascii?Q?sRZUo8EfrItkOKyOQvd0xRYmr6jXEncr+3dIsZPFjJ316k3pF3Hemijzh7Ef?=
 =?us-ascii?Q?QMsBJnHc9fOtkzzCk7/lNiCLircZ2AFzyctCUyjK6chZjVw6oRDg/ZDAX/mI?=
 =?us-ascii?Q?bTd5Nuylo/nBRnDbyRh/+fu4Y2PjU1Y+JGevJY/FsOr5Pvpk80Te6HdWDBTO?=
 =?us-ascii?Q?b6MW/m8cZpGXTYMVujWb/BpdpIugxGgwAsVRoj++8xIZyIQOOgeBdwnZUBbj?=
 =?us-ascii?Q?nQ0UqqmGjFAQq6AI6P1O2l4N9cpmLNZfK0CxMo2zpgtXHw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NTRHibDZw3kbaP+d0pR4KjTn8ohaOGIIEKmF+IMt8iGeSQbHUZssAL1IOvhL?=
 =?us-ascii?Q?iwpScMRbHOuoPU4/YqZrRz/SQLHl1MEhxLbnwjYtejgPhsmUFoK91f1d+iNw?=
 =?us-ascii?Q?4PhTvXjcodnjkOVMz5kkyZi0UOboPzJEDN6VzkDts1Icw6YBzWYxLcCcGnxf?=
 =?us-ascii?Q?GvV/GTJG1c2XQqlTdrhIs0E/vI4Fn6FOfC/0j5FZFnB41TXfzQMAy2UvTY0D?=
 =?us-ascii?Q?1rNykDQG+CbwIzH93ydj5r7NLOIh9W92X1H07jT/2F6d3uveK3bqsioejOfI?=
 =?us-ascii?Q?3Sxe8cFaDi70vzXkJlzHLUOfWenEOo6ZH0mqoLAGHs8ZHP4seGp7i2/q1Bxi?=
 =?us-ascii?Q?6PDEcVhHpo8OLNR15lyNBbnM1zzwg7MWN1bQdpXXiO5r+dgb/k0KVH3Vdrbh?=
 =?us-ascii?Q?AZY9ReUudwtqJmL+Nrm3x0xtDCiAsxtD3Jk8TuVOViBjkcv3TqYWocMFe1Jt?=
 =?us-ascii?Q?mWgm+Lf5ihU/ecpIPBF9IupDLE6kT+txoQiQ9l0zhvWBD2CWc68U7Hr4r1u3?=
 =?us-ascii?Q?3cq0E34YMj4ZOuBZqcV6wqnreFBSxhl1MRfK0yWoPOGSRnsyGZa6kLeR0MYs?=
 =?us-ascii?Q?4N5BJ9k1W/H0628sC3NX5NdbE+osgeGW03opwRXFYj0EWWyfnZTVRhFsVrS/?=
 =?us-ascii?Q?UOF58tX7iVG+6IPPZOFR/AKQZ3uh3sOAEhwU1jWnq0/qVso/rxpJbYM7n/qQ?=
 =?us-ascii?Q?LoBnsvasJAKTk++6pCl/+bkHun3aG9FGv5vWRVqH+vWFj9gjcaDedb2z6P4e?=
 =?us-ascii?Q?+KepbI34hld4Q9LgFom3L0KPuJAFPyGnAOuWSp7AyQ9g+4+OnL4hC3Z+wsHD?=
 =?us-ascii?Q?SogAMfvjRF5V3fqRTSGP0rO0ysEC3I+4UUUlnPVFG/lcGFyAVqkngb78W0HG?=
 =?us-ascii?Q?XXFGLQSDktv4mUH4hnZp26qpc7W1V0ReFKzKnKX3GfUC16ZxECcNYrfWKGp+?=
 =?us-ascii?Q?gStKc7+bD0TiDYbbBU/eNA15WBbDRn1Z0SW5TKqOPlbQNs4ynXZ8A2gw23wk?=
 =?us-ascii?Q?JRrsozBpJpPSNHpS/3hdi7pV4bKtPJpVVSAORJSZQKUUXfDUgI32lJMhyOJO?=
 =?us-ascii?Q?fqgvC0w6+Oso9XAoaq28JZsGuicPILIcDvTNWIDXEoNUXl2fdug+pLHpuJXw?=
 =?us-ascii?Q?uFe3oOpZPdGOYKOKq8jxTzUPeft4gOffPpEPHjur8aPK8vpn7C/6KLxMFlRf?=
 =?us-ascii?Q?mAl2vjv/1dpOjSy1k0l3MZ1Ajzc4ZE8N5h1/Bkymk6gpkDM+beaVGwwFE4g/?=
 =?us-ascii?Q?4PaP/r0or3AvBstCncHwjduTg1kG5KvBTwwDs4NuxmhMT/u/VclkYDYPnCIk?=
 =?us-ascii?Q?CqorFovBUINJcjoBVY8kidkAzpB4jxc6FRZjwqUYNzhWkgx/2UYS7WPkuuT4?=
 =?us-ascii?Q?J0QmHB1h43PKdA7UaYghOTACfb+tbeptX6AK+bYCqGkUBQRPoryiuqh1xmsE?=
 =?us-ascii?Q?smreobjtqnaiPuO2FJsVv2DoBfkaTfsvmXXOXe0he3OQh5TNeT9NuufsXorp?=
 =?us-ascii?Q?OiJNaRtUW4Z85tTHZ8MkRRrei74bgFt9lu2RXa7KFh2rkoyh+JAJg8MK1Vwq?=
 =?us-ascii?Q?4t0C5pV2BBZv093WjZxd9ZpGptKOPub4daf+AAPsETWYbUymkCNrVS3YtNz0?=
 =?us-ascii?Q?ng=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c1d9c1a-0eb2-46c8-f234-08dcdcd990fb
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:43:38.1830 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R1DNAxk7+ffTM8bhQ/05VZBUqq3A+n4LavlVspORL+0Zrj5N89WoNf6bisySQod6wgjkxWD8q5G3OH1wQjbboQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7425
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

Continue moving more display stuff from i915_driver to intel_display.
With the end goal of reconciling xe and i915 sequences.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   | 58 +++++++++++++++++++
 .../drm/i915/display/intel_display_driver.h   |  4 ++
 drivers/gpu/drm/i915/i915_driver.c            | 46 ++-------------
 3 files changed, 66 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index f3a586913c6f..62a7aa56f0da 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -856,6 +856,64 @@ void intel_display_driver_resume(struct drm_i915_private *i915)
 	intel_power_domains_enable(i915);
 }
 
+void intel_display_driver_runtime_suspend(struct drm_i915_private *i915)
+{
+	intel_display_power_suspend(i915);
+}
+
+void intel_display_driver_runtime_suspend_late(struct drm_i915_private *i915)
+{
+	struct intel_display *display = &i915->display;
+
+	/*
+	 * FIXME: We really should find a document that references the arguments
+	 * used below!
+	 */
+	if (IS_BROADWELL(i915)) {
+		/*
+		 * On Broadwell, if we use PCI_D1 the PCH DDI ports will stop
+		 * being detected, and the call we do at intel_runtime_resume()
+		 * won't be able to restore them. Since PCI_D3hot matches the
+		 * actual specification and appears to be working, use it.
+		 */
+		intel_opregion_notify_adapter(display, PCI_D3hot);
+	} else {
+		/*
+		 * current versions of firmware which depend on this opregion
+		 * notification have repurposed the D1 definition to mean
+		 * "runtime suspended" vs. what you would normally expect (D3)
+		 * to distinguish it from notifications that might be sent via
+		 * the suspend path.
+		 */
+		intel_opregion_notify_adapter(display, PCI_D1);
+	}
+
+	if (!IS_VALLEYVIEW(i915) && !IS_CHERRYVIEW(i915))
+		intel_hpd_poll_enable(i915);
+}
+
+void intel_display_driver_runtime_resume_early(struct drm_i915_private *i915)
+{
+	intel_opregion_notify_adapter(&i915->display, PCI_D0);
+
+	intel_display_power_resume(i915);
+}
+
+void intel_display_driver_runtime_resume(struct drm_i915_private *i915)
+{
+	/*
+	 * On VLV/CHV display interrupts are part of the display
+	 * power well, so hpd is reinitialized from there. For
+	 * everyone else do it here.
+	 */
+	if (!IS_VALLEYVIEW(i915) && !IS_CHERRYVIEW(i915)) {
+		intel_hpd_init(i915);
+		intel_hpd_poll_disable(i915);
+	}
+
+	skl_watermark_ipc_update(i915);
+}
+
 void intel_display_driver_shutdown(struct drm_i915_private *i915)
 {
 	intel_power_domains_disable(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
index e287574fcd35..b1441a55d72d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.h
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -33,6 +33,10 @@ void intel_display_driver_resume(struct drm_i915_private *i915);
 void intel_display_driver_resume_noirq(struct drm_i915_private *i915);
 void intel_display_driver_resume_noirq_legacy(struct drm_i915_private *i915);
 void intel_display_driver_resume_nogem(struct intel_display *display);
+void intel_display_driver_runtime_suspend(struct drm_i915_private *i915);
+void intel_display_driver_runtime_suspend_late(struct drm_i915_private *i915);
+void intel_display_driver_runtime_resume_early(struct drm_i915_private *i915);
+void intel_display_driver_runtime_resume(struct drm_i915_private *i915);
 void intel_display_driver_shutdown(struct drm_i915_private *i915);
 void intel_display_driver_shutdown_noirq(struct drm_i915_private *i915);
 void intel_display_driver_shutdown_nogem(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 7fce210d355d..b3eaa55ebacb 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1373,7 +1373,6 @@ static int i915_pm_restore(struct device *kdev)
 static int intel_runtime_suspend(struct device *kdev)
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
-	struct intel_display *display = &dev_priv->display;
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	struct pci_dev *root_pdev;
@@ -1403,7 +1402,7 @@ static int intel_runtime_suspend(struct device *kdev)
 	for_each_gt(gt, dev_priv, i)
 		intel_uncore_suspend(gt->uncore);
 
-	intel_display_power_suspend(dev_priv);
+	intel_display_driver_runtime_suspend(dev_priv);
 
 	ret = vlv_suspend_complete(dev_priv);
 	if (ret) {
@@ -1437,34 +1436,10 @@ static int intel_runtime_suspend(struct device *kdev)
 	if (root_pdev)
 		pci_d3cold_disable(root_pdev);
 
-	/*
-	 * FIXME: We really should find a document that references the arguments
-	 * used below!
-	 */
-	if (IS_BROADWELL(dev_priv)) {
-		/*
-		 * On Broadwell, if we use PCI_D1 the PCH DDI ports will stop
-		 * being detected, and the call we do at intel_runtime_resume()
-		 * won't be able to restore them. Since PCI_D3hot matches the
-		 * actual specification and appears to be working, use it.
-		 */
-		intel_opregion_notify_adapter(display, PCI_D3hot);
-	} else {
-		/*
-		 * current versions of firmware which depend on this opregion
-		 * notification have repurposed the D1 definition to mean
-		 * "runtime suspended" vs. what you would normally expect (D3)
-		 * to distinguish it from notifications that might be sent via
-		 * the suspend path.
-		 */
-		intel_opregion_notify_adapter(display, PCI_D1);
-	}
+	intel_display_driver_runtime_suspend_late(dev_priv);
 
 	assert_forcewakes_inactive(&dev_priv->uncore);
 
-	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv))
-		intel_hpd_poll_enable(dev_priv);
-
 	drm_dbg(&dev_priv->drm, "Device suspended\n");
 	return 0;
 }
@@ -1472,7 +1447,6 @@ static int intel_runtime_suspend(struct device *kdev)
 static int intel_runtime_resume(struct device *kdev)
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
-	struct intel_display *display = &dev_priv->display;
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	struct pci_dev *root_pdev;
@@ -1487,8 +1461,6 @@ static int intel_runtime_resume(struct device *kdev)
 	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm->wakeref_count));
 	disable_rpm_wakeref_asserts(rpm);
 
-	intel_opregion_notify_adapter(display, PCI_D0);
-
 	root_pdev = pcie_find_root_port(pdev);
 	if (root_pdev)
 		pci_d3cold_enable(root_pdev);
@@ -1497,7 +1469,7 @@ static int intel_runtime_resume(struct device *kdev)
 		drm_dbg(&dev_priv->drm,
 			"Unclaimed access during suspend, bios?\n");
 
-	intel_display_power_resume(dev_priv);
+	intel_display_driver_runtime_resume_early(dev_priv);
 
 	ret = vlv_resume_prepare(dev_priv, true);
 
@@ -1515,17 +1487,7 @@ static int intel_runtime_resume(struct device *kdev)
 
 	intel_pxp_runtime_resume(dev_priv->pxp);
 
-	/*
-	 * On VLV/CHV display interrupts are part of the display
-	 * power well, so hpd is reinitialized from there. For
-	 * everyone else do it here.
-	 */
-	if (!IS_VALLEYVIEW(dev_priv) && !IS_CHERRYVIEW(dev_priv)) {
-		intel_hpd_init(dev_priv);
-		intel_hpd_poll_disable(dev_priv);
-	}
-
-	skl_watermark_ipc_update(dev_priv);
+	intel_display_driver_runtime_resume_early(dev_priv);
 
 	enable_rpm_wakeref_asserts(rpm);
 
-- 
2.46.0

