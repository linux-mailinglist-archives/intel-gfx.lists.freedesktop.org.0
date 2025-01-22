Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED039A18FFA
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 11:41:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B87210E6B3;
	Wed, 22 Jan 2025 10:41:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gpY5gsx2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C82910E6B2;
 Wed, 22 Jan 2025 10:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737542463; x=1769078463;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=Xawiwuvq2b5yj52SboPw/BwdEXUOXGJj0rIKLjgTM+E=;
 b=gpY5gsx2n0P5ZW1yavQ/Lr5/17uhoK+NKv3l6+OYLppiovpGkoRHfYD9
 5yQkwqM4euWkyV/Ybyo3UYpHWFv8eaUqB5m4PV3HinXTGq0eHWKmXI4ZO
 CEje1iNXNc2S0dvUcbGeKeEnJku4pKBRMHGOSAcfALZNZzjEIRoKrln39
 glQNAt4LQnyjyRMX85kfQ+fH7Zf4rBOcSA8eKgUOlPcylBb6YD0FnKNPz
 Fv1BjWsjjjCVQnxh1Anhalovc0McopZda0uskZCHD5H0JSmTLPLuepSk8
 57inuz6dJNSZYYqzoXaRwKOm4I+M86V5O7JcIAmOPm8em0QjYePpzqeUS g==;
X-CSE-ConnectionGUID: MwgeUX7xTNOr3sYLBFymRg==
X-CSE-MsgGUID: wuPpEI6lS9S5bd1uiqn50w==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="41665607"
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="41665607"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 02:41:02 -0800
X-CSE-ConnectionGUID: NGMaAGhaQs68cRprdJy4kw==
X-CSE-MsgGUID: kNAHaagbSeq9bMc49fv+6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="106969742"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jan 2025 02:41:02 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 22 Jan 2025 02:41:01 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 22 Jan 2025 02:41:01 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 22 Jan 2025 02:41:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xu6RWSh4DY+RF/KMuYfQjQEzNpeWG5Ct50xgPtEgG2jiDOg5/6IrKVtSscfozaXj1yrgUMAzddkeC+T+dL1UWIiF/fMFj8mJ1cLjxrpfAzQz7vsVw1dA2XY6SZNAgN2E1v0vhZaQWw2ah2biNsVHO+TeTuLIYrvcsusnedYDtddJNCrJ6LeXd5cbzPUZOZYppU3Q7oqwRo6aU7u9XiIz+efPPuKA2ZeZu9HzziiXLY6lZ54X5CiUo8WHekW10QLXYZtV41QKyt0z0caWwpV1t6u5YRtmA/gxGu9Pcrf5QuDhB97/3oc6tn8memfVXLX2xFQYM1Xc0v3eGsKvpbYTng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4lazWRPouSf7h57T+rlwl8nGji1xFcOv5kwHDEisxpk=;
 b=r4He0qHBfxf5STP9d//jGrNC6Na0EBP1Z2hElK9QTklgG7fPTz9gECnB6KUQEb7pUlbLyZTE2VqsKQ3252SHbKWkADrJN0c6ALS+WA0tuzME/ViU7/iptznE+SOep5pJdbx1LNKUQExWAs3BGHuquWkak8O/2283MD06LWVAydUs+h3/DpmHXl8H3eUtnvSKpQfz5z4F6TS+zKG+Kd2DUnAZhRo/Bzq3P3OsN3ACCpppIHq32m2ymQ+WNegWunUMDDEQ6obt1rsezwZT6GFJ6tJCjLfUwEnWOdtcjrM/lR1agbjtCfypHzLnNkmeVJktdXkeKV0qIksfTMlfErdMcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by CYXPR11MB8663.namprd11.prod.outlook.com (2603:10b6:930:da::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.22; Wed, 22 Jan
 2025 10:40:53 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%6]) with mapi id 15.20.8356.020; Wed, 22 Jan 2025
 10:40:53 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Imre Deak <imre.deak@intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Subject: [PATCH 1/3] drm/i915/display: Move shutdown sequences under display
 driver
Date: Wed, 22 Jan 2025 05:40:47 -0500
Message-ID: <20250122104049.388340-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.48.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR04CA0060.namprd04.prod.outlook.com
 (2603:10b6:303:6a::35) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|CYXPR11MB8663:EE_
X-MS-Office365-Filtering-Correlation-Id: 39f88b86-60a2-494c-ec52-08dd3ad13ec0
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?gE9u6w5Vm8VSJ1zqNuTKdEv+x7GwaganzeKAFxP0mvab9yERfYhyxQce9xAT?=
 =?us-ascii?Q?G8ekAwB/C/jEZrXf0EvzZmiJH7JpXc8Kd7tCAEtMCeir0UswVHBcpUYuFhRS?=
 =?us-ascii?Q?rUymXzQxsdVGGZB8MdnL32/XPzeRkLscIt1yu7cPFZO9ZJkaaNE02axIcBpJ?=
 =?us-ascii?Q?ziBPuqQpsJpnpnGHtzvQMTdlh8cWJ0E9htE4ynYa041q5hQxi5KzamfCpBIv?=
 =?us-ascii?Q?hbx1GXXsyOzt2VJDtmU/k4D1W7tuzzYCfgm9x7Y5otevzgcsBt1EFhdIsRnw?=
 =?us-ascii?Q?2WvGgx7YdH9fnAqI7FPs0BxjF7aQH+ty93nBsjsi0FkZMN16YwGzsXhdXsRK?=
 =?us-ascii?Q?x1+7T+p0RL3P1vkuxtlZPd4HcwaIHq7UUFIwr9MpnF5EgF0xM6jQbE4jKeSi?=
 =?us-ascii?Q?UgNQobi/KBEIDp+eK+KiMNFgUbmed2Z7LwJJpJI6fhwKlybfh/1uz3bRWN/X?=
 =?us-ascii?Q?TG/OvEKKVnR12tCtkhzJfK7Y7WDDbfU6Z3SDZ/RZNaVgBppoRFxUxBhH34W/?=
 =?us-ascii?Q?rhrf42OB/OTyry29IAjJIyk77igJXJCpuzp5HWjrgU1OZZKqTUubLIvPLiwt?=
 =?us-ascii?Q?7O9FtUtuUxjXDmDmZOkZEz9uANWLMXi8lYu5UXKOCGM5HvwEl4mGDirTY2WL?=
 =?us-ascii?Q?sFAiNZjynZqDLb6km7qQ9/ySjn0WcJfBKvWH34FopjMXJjrpNYkJ23WWVYKS?=
 =?us-ascii?Q?cooQ0F7Sdz+7BglZuBXl/Vj1tvP1v0H+MnwJFxx84IYaz4v+IHc1T14k9AT3?=
 =?us-ascii?Q?CLnN9cYVqYmTOgUd0sHUAiUAVJm2+HfnPAyXWEeDIy2fs3iEthYqLIOU9JP/?=
 =?us-ascii?Q?asBxg2VdjIbCOY1245ouYKIXD1zfm869VecL4nSVxgxQJmEGz0Anz5MxL7SV?=
 =?us-ascii?Q?4ZjqM+7wVa5WWi7bXCgJuGVonibCbrncFyJz7evIgKT4EePR2u8/8POxC9S2?=
 =?us-ascii?Q?6rhq+1lSUb5V0pFV6+7QCad5nujgy0ilA+FDakCKxOdIuulPUvkmGVYCicxg?=
 =?us-ascii?Q?1tOmDqIimxTPMUKcYAj9NaMNVYhRe+74ZcTQMuL0cec/eaAsWn+k/MU+Rbrc?=
 =?us-ascii?Q?fHlRocdr19CcMxz7oH57ktnZuk1YCDu+52N9V6e4ERRIi8b+zBh1VXUWVo3g?=
 =?us-ascii?Q?6fxi34zQ3sZ7EREjLbQ/mpus5fB9BX3PaWQBLR/QcLYqYOx64ucZn4x+SwjJ?=
 =?us-ascii?Q?JD0ghZewnm3TlUQBKShjobp9MwD4i92UYaXcYrpoRlpewqTQTRuMwU0fTVwO?=
 =?us-ascii?Q?Nkr1WPwWDRS8Zxx0yQuIHmIckfWo2QOPIm2XPXzmeiD+TcjAGdGVZW2a6aXx?=
 =?us-ascii?Q?PlvnVskkQayaBDWDtxNAyK8sUjmdchUFFkA6UVRyKMcu5c/v6mn19kKl9Fr2?=
 =?us-ascii?Q?Rpg+unPSOkxuLdcmXvSItdacn6b3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?l7FkRU7NKwiXnQhYrK1a4uKipbdZTt+UY1rB1JQ3uFhhkovcmR2azO4LKe/c?=
 =?us-ascii?Q?GokZWWDnL+Aokd0VLSf6fyaiE/FwfI6PgkKWLj64wcMrjM4wtq5FNatWHqs7?=
 =?us-ascii?Q?04Cy2Tqlit3Lrqj9za53uYzTAw/UEBF7EHSuFT1rUhoYls2J1bgrLV/vx67x?=
 =?us-ascii?Q?yjMlP1UxEczIuYDQvxdOUOS++DIxFoDqI98d6cUkrakDB7bd/2i+D7ukF35k?=
 =?us-ascii?Q?l5uhOc7BvV7auIYY7dCLwTsSfN84+RkmfPUvL7ulKVDD4jmmCxbQS+80UYUo?=
 =?us-ascii?Q?GzofQYJxMv31H2ZJ0c+vdcOodMXPrcBz3+h0b9KetzCBXqVuuxembV1PMy38?=
 =?us-ascii?Q?W+4SUF4MspTOaKCHwKyxeXt3mO5jl6auj254GDZTD/AwKqYnm0JRV98zTQka?=
 =?us-ascii?Q?A6/RKLuyuZ7fZCH++inNBybWg0VAQ6prlVJJOdnb9czX2sI+T5vZ1idRoX/Q?=
 =?us-ascii?Q?9yhxLWA+HJz3IgNI1Pv00TE4XviN6L8YeRpxQj0Da1lXc7yMfai/sZbm1kK0?=
 =?us-ascii?Q?+Ny6H9T1azn5ZESf/pSjnlkgg40ww6xmbRIrE1ySYnmHI2R4RAe3w44/oj8S?=
 =?us-ascii?Q?LZbKdiFxRCdm3W9Fhk7pT1HlMHSP4hDiHBZS2XJFoV0ycN2lWsprEDB9S4ZK?=
 =?us-ascii?Q?n+3qy3xxBphTNSJ3TNk2K1VQI+OILZYkY5C2wqSESOTekIY7invib76rbRNu?=
 =?us-ascii?Q?Ukalb+wZvLV90sij3E0Q66XKYT3RRgOx6ezEEtWCR/TqYAMIEk0C20Xenm0o?=
 =?us-ascii?Q?42ID+4ggkbtAeZrfWJ/1zjZJMEN5w3zrZsIZ43i2v+AoDe19HnHIv7+cAA6O?=
 =?us-ascii?Q?ewkPaxpJYBPpuZgHWpMNFr5EtgA0o1NDBVSFTK9DuT4gFF2UobEssOzTHcPw?=
 =?us-ascii?Q?SOWcoa8xNF9v3uhpy7S0WPZ4SBYhugqsZ4HxBTHKb8qi9QrXCXOV0Ig3Uhwt?=
 =?us-ascii?Q?jWQpjwHij+C/+NNJthBJfCZzsTZ/0Bqwn8YlHSOAKi9txp4c/gFRGOI6Fjdc?=
 =?us-ascii?Q?AxltSphcY9XyRUxaBbBmt9MWUofvGus22Lf+MmPRKWOdQlBRzEkOE+u09iyX?=
 =?us-ascii?Q?vt/fSR6MN94dR3Joodct9LSny3fGrGDom31DRYk2Fkean3/NmuFgsrz+tyd5?=
 =?us-ascii?Q?kadXH9I0dP48Tbh/+s4J8u9INfV/6v9By34okZm6Azu3NWOOKFERyhhvf01V?=
 =?us-ascii?Q?BuGWQlJsGdaMuG5sA4O6ytw3jgTLBasu9chb3e+qxQDirRP5FywkcMGcbGAh?=
 =?us-ascii?Q?RuM+S/H8xzzaWTcEFg+/YjAAnpoTSY+UXiCx8MKwni6OJryK2SKshLJJYFS/?=
 =?us-ascii?Q?9hPjLTDibt6UHdLgnHFKrDuPiRly4I36Wx3puyVunE3t0Ibuw9AS8xj8cK8O?=
 =?us-ascii?Q?5hAnNXgwzNNkPBGV8FFGUsSLgqWUx6cB9jiBnFsNo3dCzEjBA3f3tOaalrue?=
 =?us-ascii?Q?9SQrgTQHqIeA/RVGqxiNVWHpxgOw7x0Ubm3ficbmO5JY7VnwzX3OEBcxakcw?=
 =?us-ascii?Q?+Kn6waiHjihrxqR0g70zjgV7TLw7eT/5FY0iNx//6J0WPP16pWhUIbP68BvA?=
 =?us-ascii?Q?ZoxhDUeFzD6TRz6EsaqkYOtj/BuG3FL86Tp3zfu4EX6vqlf3l1tSYoIh5VEz?=
 =?us-ascii?Q?aw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 39f88b86-60a2-494c-ec52-08dd3ad13ec0
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2025 10:40:53.3852 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Jh6jFfNfDs9BoYz/sjns6tzZeu6NPlm13lAQieVuLb+aiLG0Doj4gmPqVplLwjc2aVRkzrPjNGeMBp79VTGAqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8663
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
v4: amend build fix

Cc: Imre Deak <imre.deak@intel.com>
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com> #v1
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   | 42 +++++++++++++++++++
 .../drm/i915/display/intel_display_driver.h   |  3 ++
 drivers/gpu/drm/i915/i915_driver.c            | 27 ++----------
 3 files changed, 49 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 73ea0e906014..122174cb5c0f 100644
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
@@ -769,3 +770,44 @@ void intel_display_driver_resume(struct intel_display *display)
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
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
+	intel_hpd_cancel_work(i915);
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

