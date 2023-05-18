Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F69470797C
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 07:19:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8A6B10E4D4;
	Thu, 18 May 2023 05:19:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FD9C10E4D3;
 Thu, 18 May 2023 05:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684387184; x=1715923184;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=YP/e9YsV/TFKXquiFujABuO4gnatpSMnOm3OUaRfb9k=;
 b=V0sVR4zTz9XB2KJxaGdPCK+bkU2BHBY9QnrCrF3a91QHudfpaV+y5DtV
 j1E30EabPbyFpfIEFSd8uFeLRzamYXvLOCIwV6eO3Nlq2Ekt7NgHJHkJc
 yB6wfdKFlbbS+Yn33nNHtEP6sa4wPCpnLZIEGGEGpp91wLb6MVELz8Wi9
 Ht2Ltm3IBmx+vVBBWjeCQSzovoRUwZXauLdm4H6HAOs8ggBsyHZxkia+R
 +8anqBwtbdGcHqcUolPCn/7j9Q2hHiCMhVDJgWKOSjciq2NfxbnDHYLeS
 YkQKYlNFKtP2iYTzJf0f5C9FIkLvxbDfZFDRydlq8aptMBfGph6d5cOHG w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="354277285"
X-IronPort-AV: E=Sophos;i="5.99,284,1677571200"; d="scan'208";a="354277285"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 22:19:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="696168538"
X-IronPort-AV: E=Sophos;i="5.99,284,1677571200"; d="scan'208";a="696168538"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 17 May 2023 22:19:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 17 May 2023 22:19:43 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 17 May 2023 22:19:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 17 May 2023 22:19:42 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 17 May 2023 22:19:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aURCVGvmzTJvJ5C/hzzm/YRDOj5KbSWBBmKUmqtX8vfmBlyIPwPMuKH/FUuuhv8CNb40Dfa/C8s//bP93p5fT42BvYrsWNT5HlakadJNDDiH8+vO++GC6blwK1TP33HS7S+/N1Y/phuOUuYgCkCXQ2lS41SjSZdp1T1eBVVr5O05aprWG0D3hk7LTTkMNGKMNbFdJDslcQZ3xM3XH9LClOCbCB5c+DcybM2r3E2qE4/O4MSz5lJoHI3zk3qAXLAvRiNkJ8lQKEblPyZso6e1vBnvkqzwRg937Xeff9G4fmJU2ukALLKLR09gIfPFHyL1k/Lk3jL0+nJLHtTeCIzemQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aVd0FdXVMCYbLm+KtVE2Ne6P5Rju/NkURSI1SXZ8AZ8=;
 b=b3mpXNWHfhij1QUxTF1KVw0vNkPxBpyyPDvTqwGOO/0BrwI03u6Mhq/C0aMHeAwYF0BfTFMjJ1QbMZYFrpzHbFDYXuR4DFonxPuOp6g3EJVY8yoAsJ3aMl9XpIh+x4b5I689rRIWZdiIbfxSFYi6tGqlpQVRTSXO+x2ZeXliZ7GphSG8aGuiAH67x2wAmlCTSqFu5MJTAKl4Tzqkl3Z9f5MJYoVeX6aZEHhyDzWN2L/+/FbnEIFNxA9OBO3fWenvWAxI5F9jm1kzSlL8kcp40bEIya60rUGYPi7Pvs+OC7GMu3Dgnjuc2441WCszdBKjuKZNIIgXp4soOE/fcu0Zjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MW4PR11MB6569.namprd11.prod.outlook.com (2603:10b6:303:1e1::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.33; Thu, 18 May
 2023 05:19:40 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::44e7:c479:62f4:3eb4]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::44e7:c479:62f4:3eb4%3]) with mapi id 15.20.6387.033; Thu, 18 May 2023
 05:19:40 +0000
Date: Wed, 17 May 2023 22:19:38 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <ozanl4utetoub4dmjm3i7qc3oxo45pzfazmcuu72ytmthquwbl@735sqleb456f>
X-Patchwork-Hint: comment
References: <20230518031804.3133486-1-matthew.d.roper@intel.com>
 <20230518031804.3133486-2-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230518031804.3133486-2-matthew.d.roper@intel.com>
X-ClientProxiedBy: BY3PR04CA0018.namprd04.prod.outlook.com
 (2603:10b6:a03:217::23) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MW4PR11MB6569:EE_
X-MS-Office365-Filtering-Correlation-Id: cefa2433-cf26-4587-1dc5-08db575f7b15
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6zaEey3HHh1T+v+BtDk2z7RwQhihL980lLkuCaNJTFohbLIibvCECf161iogU2vjr/5MjIXZb2qhMT2QPOt0PKVyPeEEEltRX9ud1nSMrbpIp3p4oDoRX5C30fpIGT/0HvMG8GVbquJTica/t9tSownV6oqI0gVzefcuGowvcVCF7P0t1qrcelVqSTLtn0JSS2r5zq/nKzd5GElbKAAAWo+zSlwhib4Az9/XgOAllqAJ8zPALU0OJ8I4nduCQdFvnDJuar7rVgVRJrn0fsweBIsrl+DBpG6vGjb85H/NS3KeOkAloEElL85lGZBpMxHLWuWXxpOQ+7QbqPMGg4+JZAepHp+d6MblIkg2ufamCx5unVPo2GsrH/ZlGsyX+Lb5sd0JxYCV2SkTODEwyQ1WyxJe0UW3TIviaa2Wpjtx6P7EP5IEeSggFDFjoKEhok6g9mkGWlj7l94xXyUuHBvYYOmz7dONFivnQdpRs+kxTXR0qub65ISePtAG0d99qT9cvoL4J245ttEOfSQsLZXCM69zeG8rIqwMnSWJTfJs2eSW6+aC8Il0hROAIinM7MFW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(39860400002)(346002)(396003)(366004)(136003)(376002)(451199021)(66556008)(4326008)(66476007)(66946007)(478600001)(86362001)(6636002)(316002)(450100002)(6486002)(83380400001)(186003)(26005)(9686003)(6512007)(6506007)(41300700001)(8676002)(2906002)(8936002)(5660300002)(33716001)(38100700002)(6862004)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?HKQKM9ZpZuhqAI3+IzTbygnE2iigehMJsgUpWgaUHQf8ctBbYLq/eHbyF0?=
 =?iso-8859-1?Q?36EB8bTW1TA+aLPXBG3lENmUwfWrvW7oJVGhmL4pSwoH1BKT2jglfkbwrF?=
 =?iso-8859-1?Q?dvRdGwLiO4ERkG+gJ4KeDiQZAyhqeV9tMBDgw67srvc1jFDuR0j2nv2jUm?=
 =?iso-8859-1?Q?IyAk+fLdV2/PjzWN6Y3R54yGfVyLDj+p/gdDAJb67ahs14KtmvCzqOi/x+?=
 =?iso-8859-1?Q?xwrHfsRKk5CjTkXsuHqDjFB7EMu5UkG5OQdJAOp35TPU49MnQan/GfWUU5?=
 =?iso-8859-1?Q?kHZFlNkN7Ba6AyJStmA+MjV+qI92Eu4myUsuDkW3RVUdQO3e0XR3wuonPI?=
 =?iso-8859-1?Q?iqeGsIn/j2w8pPBJng2GvRKMD8mxFdNzxOXH9zUlA6ppqCPhJTQ4yH4hYi?=
 =?iso-8859-1?Q?L0xKlYEOJxyDnwUyCKUD+l6iZDdQU8S+p1f07x7FM8umlQGazWeE/TdzrQ?=
 =?iso-8859-1?Q?0yrqsVPjLiNdCr0reZn4I0sC89eay4i/rBzbEVJDpPQxEBRhIxKaOwjrYK?=
 =?iso-8859-1?Q?z5kZCTASIjsVIAxOIjyQCXEfH5Dt5TviBqLAA1X0uuvXF5B4rVXV7mEd5J?=
 =?iso-8859-1?Q?KBb+31SdCoZwwMLN9Te7m4qEY082ov8FUw1OAODuPRB4nL76DIC6iAkHpD?=
 =?iso-8859-1?Q?igDxpOs0sTkfxyV64jR2VRCDY81fmwVUzeiBoD3meJovPX5dp8ZLw+yiKA?=
 =?iso-8859-1?Q?zgp6noudqYQPMilxMl/X/JcKDKoBGjXUT2haRWSSKTJAkDr1C8ks1GJ4lH?=
 =?iso-8859-1?Q?8j1sa2BZfBazWmEWRIM1ujECoHfIQKh43458XUNmhCzz33jhmIP2AdCPK5?=
 =?iso-8859-1?Q?Wl/Ugt0ZCAftp/IuMWIwEUqaL0nKg6/9Ju+NnQe7LFYUV7Qq/nHcqR33s7?=
 =?iso-8859-1?Q?akOkzH+AWfvQ/vq467zQ2Yh0fQR9RZjW1DrSd+ujw/r5ix2oAsuuGDb0la?=
 =?iso-8859-1?Q?A2G+lxWB2VTDYFwazLMgzI4XCigzN8M23Cby0E2EUEqKZgluuDlWhm6e08?=
 =?iso-8859-1?Q?E3Qr9tL/vBgEq5GknTRXY/N3vrJQgxDGsQUNjbacdY9QJJOVDDULQtEwIQ?=
 =?iso-8859-1?Q?oGwBLMiXuSs1/zPo4Z7fT+DlvyxATnfWbv25/gs9dvoWcZdOoNlwRD32dL?=
 =?iso-8859-1?Q?fegGcc63PJlMBy2+pZqYyLHZO095m96wRA6gEry4dxAkZis08RwnKU91ka?=
 =?iso-8859-1?Q?ngKLoSDnl1wfzWpVD8LWIGuJpoa+2TW9e7BRWrXz9znubNWaXh0Z5Dekfr?=
 =?iso-8859-1?Q?JBRzvJnAKswB/+itZA6MTj4O1bZ+fbfzz5X2GQLnroaE3oJLc6H1MXQqy/?=
 =?iso-8859-1?Q?mEGNOxpqWYop+UByN40t0abykA7F6bYwZpP7sz2hOq2/K/Kb64PEioGSiZ?=
 =?iso-8859-1?Q?W7byWRd1+ivi0LlO6E+8FcQZO2wKcmlLqsaKPrKt019jQ8xUnZvotivJ8H?=
 =?iso-8859-1?Q?h97eKVTBSB7OkqbF8rijcm7llUZ9JrWuq1UbO6rLyYBQ424nULw6TOc+eH?=
 =?iso-8859-1?Q?E+642Wjqct9IfS05QwhuPm5GxMSTUCGGS6SNYmkOsnJHRC4oKbuemHGGr0?=
 =?iso-8859-1?Q?DhgjQQtiBgYeNQkYwHfN6xuffS2M+u1DCGAt9TszrGfiLHaV/J3nb68M0k?=
 =?iso-8859-1?Q?k+NSj68Dqd9T2Ghl72bwDlwRtX1c0mNhQ5FEwN+EwmSF1S/2nAROyCsQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cefa2433-cf26-4587-1dc5-08db575f7b15
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2023 05:19:40.3854 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qUes/k34NFAbLnKlb8vtxy4hbDuDtOzRpxAHGQiqmeqpNzmInNso+ETXBE0FNVWeN9OLAhjmfz+B1pXzRBbl/Rwclb96VeOKEMyfWbja3lw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6569
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 1/5] drm/i915/display: Move
 display device info to header under display/
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 17, 2023 at 08:18:00PM -0700, Matt Roper wrote:
>Moving display-specific substruture definitions will help keep display
>more self-contained and make it easier to re-use in other drivers (i.e.,
>Xe) in the future.
>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> .../drm/i915/display/intel_display_device.h   | 60 +++++++++++++++++++
> drivers/gpu/drm/i915/intel_device_info.h      | 49 +--------------
> 2 files changed, 62 insertions(+), 47 deletions(-)
> create mode 100644 drivers/gpu/drm/i915/display/intel_display_device.h
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>new file mode 100644
>index 000000000000..c689d582dbf1
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>@@ -0,0 +1,60 @@
>+/* SPDX-License-Identifier: MIT */
>+/*
>+ * Copyright © 2023 Intel Corporation
>+ */
>+
>+#ifndef __INTEL_DISPLAY_DEVICE_H__
>+#define __INTEL_DISPLAY_DEVICE_H__
>+
>+#include <linux/types.h>
>+
>+#include "display/intel_display_limits.h"
>+
>+#define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
>+	/* Keep in alphabetical order */ \
>+	func(cursor_needs_physical); \
>+	func(has_cdclk_crawl); \
>+	func(has_cdclk_squash); \
>+	func(has_ddi); \
>+	func(has_dp_mst); \
>+	func(has_dsb); \
>+	func(has_fpga_dbg); \
>+	func(has_gmch); \
>+	func(has_hotplug); \
>+	func(has_hti); \
>+	func(has_ipc); \
>+	func(has_overlay); \
>+	func(has_psr); \
>+	func(has_psr_hw_tracking); \
>+	func(overlay_needs_physical); \
>+	func(supports_tv);
>+
>+struct intel_display_device_info {
>+	u8 abox_mask;
>+
>+	struct {
>+		u16 size; /* in blocks */
>+		u8 slice_mask;
>+	} dbuf;
>+
>+#define DEFINE_FLAG(name) u8 name:1
>+	DEV_INFO_DISPLAY_FOR_EACH_FLAG(DEFINE_FLAG);
>+#undef DEFINE_FLAG
>+
>+	/* Global register offset for the display engine */
>+	u32 mmio_offset;
>+
>+	/* Register offsets for the various display pipes and transcoders */
>+	u32 pipe_offsets[I915_MAX_TRANSCODERS];
>+	u32 trans_offsets[I915_MAX_TRANSCODERS];
>+	u32 cursor_offsets[I915_MAX_PIPES];
>+
>+	struct {
>+		u32 degamma_lut_size;
>+		u32 gamma_lut_size;
>+		u32 degamma_lut_tests;
>+		u32 gamma_lut_tests;
>+	} color;
>+};
>+
>+#endif
>diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
>index 959a4080840c..96f6bdb04b1b 100644
>--- a/drivers/gpu/drm/i915/intel_device_info.h
>+++ b/drivers/gpu/drm/i915/intel_device_info.h
>@@ -29,7 +29,7 @@
>
> #include "intel_step.h"
>
>-#include "display/intel_display_limits.h"
>+#include "display/intel_display_device.h"
>
> #include "gt/intel_engine_types.h"
> #include "gt/intel_context_types.h"
>@@ -182,25 +182,6 @@ enum intel_ppgtt_type {
> 	func(unfenced_needs_alignment); \
> 	func(hws_needs_physical);
>
>-#define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
>-	/* Keep in alphabetical order */ \
>-	func(cursor_needs_physical); \
>-	func(has_cdclk_crawl); \
>-	func(has_cdclk_squash); \
>-	func(has_ddi); \
>-	func(has_dp_mst); \
>-	func(has_dsb); \
>-	func(has_fpga_dbg); \
>-	func(has_gmch); \
>-	func(has_hotplug); \
>-	func(has_hti); \
>-	func(has_ipc); \
>-	func(has_overlay); \
>-	func(has_psr); \
>-	func(has_psr_hw_tracking); \
>-	func(overlay_needs_physical); \
>-	func(supports_tv);
>-
> struct intel_ip_version {
> 	u8 ver;
> 	u8 rel;
>@@ -278,33 +259,7 @@ struct intel_device_info {
> 	DEV_INFO_FOR_EACH_FLAG(DEFINE_FLAG);
> #undef DEFINE_FLAG
>
>-	struct {
>-		u8 abox_mask;
>-
>-		struct {
>-			u16 size; /* in blocks */
>-			u8 slice_mask;
>-		} dbuf;
>-
>-#define DEFINE_FLAG(name) u8 name:1
>-		DEV_INFO_DISPLAY_FOR_EACH_FLAG(DEFINE_FLAG);
>-#undef DEFINE_FLAG
>-
>-		/* Global register offset for the display engine */
>-		u32 mmio_offset;
>-
>-		/* Register offsets for the various display pipes and transcoders */
>-		u32 pipe_offsets[I915_MAX_TRANSCODERS];
>-		u32 trans_offsets[I915_MAX_TRANSCODERS];
>-		u32 cursor_offsets[I915_MAX_PIPES];
>-
>-		struct {
>-			u32 degamma_lut_size;
>-			u32 gamma_lut_size;
>-			u32 degamma_lut_tests;
>-			u32 gamma_lut_tests;
>-		} color;
>-	} display;
>+	struct intel_display_device_info display;

nice!! this greatly reduces the header needs for xe so we can eventually
stop including the whole display world just to have the types needed
available. If we go one step further and make it an opaque pointer, then
it'd  be even better, but we'd need a mass conversion everywhere using
display. It seems to be going the right directions


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>



Lucas De Marchi

>
> 	/*
> 	 * Initial runtime info. Do not access outside of i915_driver_create().
>-- 
>2.40.0
>
