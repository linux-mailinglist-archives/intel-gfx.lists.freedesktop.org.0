Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE8EA1596B
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 23:10:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ADB810E3DF;
	Fri, 17 Jan 2025 22:10:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iLI7U/US";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59A0D10E25B;
 Fri, 17 Jan 2025 22:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737151818; x=1768687818;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=4lSgeMCKYKtEU2/gftMnJIyrxZy7SCZKwhI56BaKSck=;
 b=iLI7U/USbma2iYGKbGjLI3qYU/j3+vLy9hSDpoVV9FvTZesFylNTMYet
 6DyEIod1RAI+CKn0d2U7cJd/k2GlWtE9M4uloGf7XLTnhl12VV6PfKS+p
 zg+qftLmH7UysobBqEx3gXV6vBOsjZyaWJXYkwGV53hKIjBg+LeJwFUkn
 LJqMHDsZcnXp9O2TVX8k/4YKfcX/ci6pTjNSCN72ZILV5KfZRI39yBMnc
 Ftdzh3UROGtDKanJDqYkNtsITusSTFBWlbahHyN4MoSyz/cgRH6PjKg+5
 KpRc3ZcIVzAX1NTqEOA7HXVI+zeWpuDWr+JcSzNVmdb5t1ZcuvLTGghiY A==;
X-CSE-ConnectionGUID: oBJwoSaYS1mC4iEvYRpzWA==
X-CSE-MsgGUID: XUh6rZNJR0GpDYZ80DON9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="37622790"
X-IronPort-AV: E=Sophos;i="6.13,213,1732608000"; d="scan'208";a="37622790"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 14:10:18 -0800
X-CSE-ConnectionGUID: hS4CcsbnQLKQNVHJu5mI4g==
X-CSE-MsgGUID: +HgWM/MfRVOug1ejOUWn4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,213,1732608000"; d="scan'208";a="105731270"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2025 14:10:17 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 17 Jan 2025 14:10:16 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 17 Jan 2025 14:10:16 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 17 Jan 2025 14:10:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fD9sZh6h0GDCmK9G3e9Yu8EuL1ZsJA8ncWZYFeGSYX0halHw8IPiEEp67GYQPGZNgBtlgM2GjT9OPZp6+nLe9y9OKYJM6KZIR0+2BDJ7wprEaLUdICaiLAkXmrVxmjGHBfk2oy/H9EKD1TGtFhWS9nzo5s53+KeYs8wqVRa0Ih137O/N7hRXqoCNAl/3+TWFgaQZ8BHOnKw5UB3e1uSmg73wHwxjV2QYap01DvV1MPKhMJbaL203GYG62pcK/DE1wLTf5dzlXs78breFtcBGMiEEuYpoBI3SRAZh+ioDeEp58JMX5qDEPxD1F7vskD1lfwV/HREvJhlHlG6iSvI+XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QvhoETrkqdbUsI/+SajGq+U+Zny7UL/EKoy+KlYD+sk=;
 b=ox/pjyEacK5KvkHfUDWi9JOh6c9qRWuzMr/rCiOuk/f33KL2rmRWo2wgGwoo6tTSgyUWHcu+n8dfWBLQe1obP6bFZufBAiLk235eAhv0Il56RjhnAR2HaXiqaEM/IdhZ3FTht8yAT+oMd8z8ftD2t3cSSMIBWpfhUfNRTrPxx2Y9wCusas84E3OySdKqV6Ugk3MvNuAHScimzrE8S5qsau1pb3S4ydZyJmq+Wp+ijJ4ZSjN0BcrCcDPPflhp/sY9KCpomfuEWGEFLB19psZJ74i0abfqBfCDSo7TthvKfg84prwxzTMULCGRkrncLyZvGVqAb8hPZmu6ai5hTiGZrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11)
 by LV3PR11MB8532.namprd11.prod.outlook.com (2603:10b6:408:1ae::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.16; Fri, 17 Jan
 2025 22:09:47 +0000
Received: from SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72]) by SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72%5]) with mapi id 15.20.8356.010; Fri, 17 Jan 2025
 22:09:47 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Imre Deak <imre.deak@intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Subject: [PATCH 1/3] drm/i915/display: Move shutdown sequences under display
 driver
Date: Fri, 17 Jan 2025 17:09:41 -0500
Message-ID: <20250117220943.506991-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.48.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR04CA0271.namprd04.prod.outlook.com
 (2603:10b6:303:89::6) To SN7PR11MB8282.namprd11.prod.outlook.com
 (2603:10b6:806:269::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB8282:EE_|LV3PR11MB8532:EE_
X-MS-Office365-Filtering-Correlation-Id: 28283fcb-ae2b-4a9a-c898-08dd3743a7a1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?/+5HgHmJ5jxf3o+TaiZv/MsyqKZ/RiJTvqounUwsmCZ0okHOT3yURm7J/pEG?=
 =?us-ascii?Q?PBg/Qh0mTaAzbY46T1jOVyrHbpsQ42jgv1XFkWgOwX+A1y05x1ZFCGlsK0qC?=
 =?us-ascii?Q?6h+v/VMbUuQdgtmgYOXBqkBNSXaWLhkcO3CH+nhrLTokK2sOc/YRoGBBBRlz?=
 =?us-ascii?Q?VMY+GW4wGIHVWqxSu3afI4oMnMEsEzZBAKo8yM+aLWVgDekpOP3mhRxr4t7u?=
 =?us-ascii?Q?ps7cFsMz6mD2UQaGB6eSfVGUuivIeABliJ63CoRQfz2ayHjshDNwOnK1KxCq?=
 =?us-ascii?Q?njtbdoZCRGZ+y+fzoU5JzaQswhEZ3WUpkbNwyDZ6g6JzGCvSHiNJ7GWZyCTU?=
 =?us-ascii?Q?Ho7FcMTMmWnqSMSGnabPrVj41vxcH8htAaTiskmuZ/XAbqP5kG67undSoOhd?=
 =?us-ascii?Q?fv/Ws487bUVJbYaKiLR6HX62xJXqWITmi3nWEG33zWekySdzOZiPrOSP2X3H?=
 =?us-ascii?Q?Sr76KCTDDYncWJtjTkMmRv1fGcEgJYrc+2Q01KKQCSqTRu7XWtLK8ldS/LK4?=
 =?us-ascii?Q?Bd96rwwgbq5a4ZnFXLU19NDqQUVnGrYcXE0dwQXCIXxzdmHfvB2PO00s8VYU?=
 =?us-ascii?Q?xc/UP11FsGfB7qbGvBZD50NVI3L/FbE7/jYqjBv1Ff3ZLv+OG9uqr4QzI9Tv?=
 =?us-ascii?Q?oPXCuPFR8KNbYXfPalmDe2eOi9kMgukuZtIHDmJ28EROlbl+OFsuhxYCMQ7P?=
 =?us-ascii?Q?/x6Pfa1EqPhOaQymGz34tPAIuk59AhmkDDMb4nDdEZF6fJJlO64pQ6sd2Oc5?=
 =?us-ascii?Q?kFcYERUafNcAL4iz2V3Q1wkyaPSA/exre3uzwxc3xPMVnTMx3d5M3mAxzwQd?=
 =?us-ascii?Q?CAH6TuJlwNNcAl0LGXVhWh4cguFUrKqw0gr2iatBQEjNasT0q99AnWxJBCHm?=
 =?us-ascii?Q?SOol8ABYIqFQyjCIz8sWZ2qCr3J2WMhQxIdWoQTOmeKTqt7quQwD7Vbrx+RM?=
 =?us-ascii?Q?ByTRi71OA+/R8BG9Qi7Et02jVkMWuaokLWnqXqMh+cH/p+ZHDThfiLh5mVxe?=
 =?us-ascii?Q?y4viyJd3QCkp/573WEewxFyqp3LarfEUi9FHHE34fUFhdszV/fNxdJ3fluHK?=
 =?us-ascii?Q?8F5GVwpifZmTzrc3EHX6RN6tqnqyo0sMdJU1D9BuPZhmEDJ5ml0QG/pC+9xT?=
 =?us-ascii?Q?OkZusb4g7hqnLXAIsUej3gFtLMwdJNvdqighF1rVB2Mx9EykpgoltHGh0mHY?=
 =?us-ascii?Q?DI4frYWWL1M8AXMGDgqVqDeqpMq1NkIVdzXqmmxSudqTa94cwPhVDEnfTHYx?=
 =?us-ascii?Q?Rung7CI8iC23RomlrDhTmm79/Y8ADWsKaNtrGpsbVbWZeUNCFIzeAfz2tE69?=
 =?us-ascii?Q?6MqMURUP+Tje1rrUOLXIeaTuRRSMt3OAqj8Q/A6sRsFqWcJw6I/GjplWXM9e?=
 =?us-ascii?Q?/J2LVnksU1ksIE2sUnIM9uc5ZNJK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LRgspFgNMZ7sCJsCXUZeR0Sames+kJBIYitO81fTylM8rLT2M54sx7LhKa9m?=
 =?us-ascii?Q?N/raOKUSoU4ByjpYuo/MjhksULp5Mw3gBIffM6iL2fgmvEEPKEEbp/UFPoWP?=
 =?us-ascii?Q?u5xBgZ/K2Xj5DBUTgFyPUWCyn3R0J4wOCPercc15HRDIyAy9vW5rzPPRhxvO?=
 =?us-ascii?Q?vCiPt1JZOFn9285RMzYw3bA9fyi3VCaAjBpvA3NcIe80QTOSGmg+Qypg8LDN?=
 =?us-ascii?Q?tYYrfSeO4Dt2w/lGbEGIfbx0QwAabW8axPmiw28Cg0IT2zFVpO1KwfY+5Y+p?=
 =?us-ascii?Q?B1Mci0ci+Ti0lmC5Qf5iAFA0duTxHzg/Vwutd01H0y0fzQSDxOcczZ0dRGj3?=
 =?us-ascii?Q?wRBgU8VGUDbVVc0RbFvYK8mVmbPjX2Uc6C9ocIH+yhQd8Hl44o+aTx8EFhMk?=
 =?us-ascii?Q?7rw06pfIlbIDWXHQX7YJH+kGtnvj8PeAx4NN43rZDEB1G9I3vuYey5SMT1/v?=
 =?us-ascii?Q?+NyBHH0kmLbxMlRmqj3GHL//kKT7DPF9tK7ZDbnQLaQG2CPGIbIVe6TfQbLy?=
 =?us-ascii?Q?sC+YejwCxEzDjgOXdRs5xEWx+Cm/psaDjmrhFd5+JgVBARHj9xSBIp0/zmjw?=
 =?us-ascii?Q?p/7pXDbU0+WVWhmDO9PRQ37ubpndWP8hkhzaPi26kOu4i953cpoQ0V1f8EJ3?=
 =?us-ascii?Q?3lKn1wJ/Bx1MTy9m89C4iyk8vCxmXefRxUX/D1NOHrlIHx5IR6AYjnMXjCS4?=
 =?us-ascii?Q?CQomIVnAGv4WbAnUKoHoGl2yB6Cof2Wu5PlvGsZ7FO+Ll1NzyxtR9Zd3ZZiL?=
 =?us-ascii?Q?XzG710hyob+weTN6FOFXEMiPyZqY0htEZj57wDRvOTt3XB3H7fHYbNmHcR5N?=
 =?us-ascii?Q?2ijpw8YcXnCSicDE25kQmPAe9IpEzbEpCRfkwNHZdKIcXn4Z5XHBJYSk+xLT?=
 =?us-ascii?Q?dXTSCy8obw5wVj7siIjCbT/CetGJM3W9c97VZv8zk89IXfqhLpW8CZi4jlTT?=
 =?us-ascii?Q?luFiaMAaAJ9eHSr6geo+8DezNKgZKv5tzEjoJ5Kbm6xNbukUljJpzOrJwS+w?=
 =?us-ascii?Q?SJY1fe0GXstNmxa5AAMULhQrYwxw72YGPxOnXLnRb+gRsLT+L58yQlPJa8tF?=
 =?us-ascii?Q?U058ZKCJg4I+eE+qgoKUBzt5vChX1tVP5igzTuWq9ox8qPeN9hIx3yj+LcIa?=
 =?us-ascii?Q?dCI6xUUckR89nxg8iP35uFVhmfPDPHUegK3IeHz3pNa8g0W7MMYlI4OyzQ4b?=
 =?us-ascii?Q?UPXQKnQcItPOlKXqd9eTMKKLEGwBzTlIuUJu4yE22DIN0AqArniZtaHc9eIi?=
 =?us-ascii?Q?rOfxh91jp8th//O7aNOa2CKpW8jrlMdimGTvKIk0OoTDlTpmFOpaTGay21N1?=
 =?us-ascii?Q?7EKAVF+3K+fIk+q3ldAlPy96GDcbvBl0bRdt/YFMxC4xhQJgvDpGYfbfuP0c?=
 =?us-ascii?Q?VTZYAqsD6rcMEFfIL/PJbMLEzl1fcl6cbIdjf7vENSaQQxwpf6dLy6fiIcIA?=
 =?us-ascii?Q?nAu5EAcFFsOV/W93ER4iVP6YqiHc7pbeS1ZWDoTm7FGhjI3v8nEfwzEYtnCh?=
 =?us-ascii?Q?w1vd7OHXNl5+o6Zj5dCXflaRPu4Y/2fTVSQ+APNrBXVLBj6y/BXpemrNXQtp?=
 =?us-ascii?Q?FF3gd0Tr8hVM+onIl/6tF7bHuEAYNgOHrO4933DY3ikSSg5pH/M31hRitEQv?=
 =?us-ascii?Q?kw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 28283fcb-ae2b-4a9a-c898-08dd3743a7a1
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2025 22:09:47.3983 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2RbLSPrWAiGLavrHVMoyWQDvOq/ooBobODfP/X8Ug5dfV0QhuLNQ+OqIP6o81N0B/Op2PS4eKObg9y8JBeVezA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8532
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
v3: rebase

Cc: Imre Deak <imre.deak@intel.com>
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com> #v1
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   | 40 +++++++++++++++++++
 .../drm/i915/display/intel_display_driver.h   |  3 ++
 drivers/gpu/drm/i915/i915_driver.c            | 27 ++-----------
 3 files changed, 47 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 73ea0e906014..718b8b92276f 100644
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
@@ -769,3 +770,42 @@ void intel_display_driver_resume(struct intel_display *display)
 	if (state)
 		drm_atomic_state_put(state);
 }
+
+void intel_display_driver_shutdown(struct intel_display *display)
+{
+	intel_power_domains_disable(display);
+
+	intel_fbdev_set_suspend(display->drm, FBINFO_STATE_SUSPENDED, true);
+	if (HAS_DISPLAY(display)) {
+		drm_kms_helper_poll_disable(display->drm);
+		intel_display_driver_disable_user_access(display);
+
+		drm_atomic_helper_shutdown(display->drm);
+	}
+
+	intel_dp_mst_suspend(display);
+}
+
+void intel_display_driver_shutdown_noirq(struct intel_display *display)
+{
+	intel_hpd_cancel_work(display);
+
+	if (HAS_DISPLAY(display))
+		intel_display_driver_suspend_access(display);
+
+	intel_encoder_suspend_all(display);
+	intel_encoder_shutdown_all(display);
+
+	intel_dmc_suspend(display);
+}
+
+void intel_display_driver_shutdown_nogem(struct intel_display *display)
+{
+	/*
+	 * The only requirement is to reboot with display DC states disabled,
+	 * for now leaving all display power wells in the INIT power domain
+	 * enabled.
+	 */
+
+	intel_power_domains_driver_remove(display);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
index 2966ff91b219..f155a43e2377 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.h
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -26,6 +26,9 @@ void intel_display_driver_remove_nogem(struct intel_display *display);
 void intel_display_driver_unregister(struct intel_display *display);
 int intel_display_driver_suspend(struct intel_display *display);
 void intel_display_driver_resume(struct intel_display *display);
+void intel_display_driver_shutdown(struct intel_display *display);
+void intel_display_driver_shutdown_noirq(struct intel_display *display);
+void intel_display_driver_shutdown_nogem(struct intel_display *display);
 
 /* interface for intel_display_reset.c */
 int __intel_display_driver_resume(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index c2ae37d6b94d..cb7453393a21 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -971,43 +971,24 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 
 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
 	intel_runtime_pm_disable(&i915->runtime_pm);
-	intel_power_domains_disable(display);
-
-	intel_fbdev_set_suspend(&i915->drm, FBINFO_STATE_SUSPENDED, true);
-	if (HAS_DISPLAY(i915)) {
-		drm_kms_helper_poll_disable(&i915->drm);
-		intel_display_driver_disable_user_access(display);
-
-		drm_atomic_helper_shutdown(&i915->drm);
-	}
 
-	intel_dp_mst_suspend(display);
+	intel_display_driver_shutdown(display);
 
 	intel_irq_suspend(i915);
-	intel_hpd_cancel_work(i915);
 
-	if (HAS_DISPLAY(i915))
-		intel_display_driver_suspend_access(display);
-
-	intel_encoder_suspend_all(&i915->display);
-	intel_encoder_shutdown_all(&i915->display);
-
-	intel_dmc_suspend(&i915->display);
+	intel_display_driver_shutdown_noirq(display);
 
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
-	intel_power_domains_driver_remove(display);
+	intel_display_driver_shutdown_nogem(display);
+
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
 
 	intel_runtime_pm_driver_last_release(&i915->runtime_pm);
-- 
2.48.1

