Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA4A9C460A
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 20:40:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3A9410E536;
	Mon, 11 Nov 2024 19:40:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H5yDEPfw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC8EC10E534;
 Mon, 11 Nov 2024 19:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731354047; x=1762890047;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=VlT8yKcuAZINV1g5c/9regMCWLBzRpWt7hEUxj+DM24=;
 b=H5yDEPfwWAvZd+gCHCdssaATFuLYgNCpz2I0rR7h1e75A3TUsdI79S/C
 xVKFk93qYHQ9at6TpPgjUZFL7LpnRyc4J8XSpw5FwkkjLE3wWtIPBnbKz
 1fNFy84Ho2KgT8V0Qc2L7iTtZ4ZtjeJp0VODJYRXkJSHf3w6Peh5iMjGi
 aRMcCWzjCqdpB5WvZJtRr6r/BLLHrmsN42rTjZGrEhvx4AmzmtI74d4HB
 cZhGqAOdAJ51SEWIbWchs9vojNQWfm180H5t9t++u+E4U9uI/MH8ghEkn
 k9xhqoI8rOcDA0+mhdSMEu4z5GC0LLVDEkJ+vj/NneOC+eLHr7MIkTFaq g==;
X-CSE-ConnectionGUID: rrjlTIKsQDeqp3BucAJh8w==
X-CSE-MsgGUID: Pn4B7p/dTduSSDdaKQoBCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="42578119"
X-IronPort-AV: E=Sophos;i="6.12,146,1728975600"; d="scan'208";a="42578119"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 11:40:47 -0800
X-CSE-ConnectionGUID: 42Uises/Ra2GP+JKCkiWHg==
X-CSE-MsgGUID: lL0R7K/KR5SQRqJUQKAJhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,146,1728975600"; d="scan'208";a="124620735"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Nov 2024 11:40:47 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 11 Nov 2024 11:40:46 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 11 Nov 2024 11:40:46 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 11 Nov 2024 11:40:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gnmVQxJ59rzQuzbx0RNxcUhGWnAFW1POJGF6OBcXYmbpo4UdqNexXYpiXLCjGERYHjaxVa/BD/1seMZqxiXDY45bqJBhI4NKve8R+g8bmh4izaqAGiWpSTBXviiY7ID1l8ohU+K3B/f4aaT//iLkYxvdHPJY77JcOz5JrPzj4o2wAXc6z3sn8pVTgdWhUNYGOYxZdgKSoe827jHpTSyqR5FlMGPXb0SqqgymUEzC5Q1VbWBkxnAnr/F3s1D8aRNtp+XXSGS8e1J2TIdYloiusGZnF0qCP9GPIfDCPCniWYSNUUJH0NU8YNt3Sz5o6dMRrTRYOfI2i/1DypiRqywHwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WsxOMbYs05NlEJyX9h2i90wN96xgy8tYYM3egtOGHoM=;
 b=ALBTvTMLLMULmceRZvPxgiJHsVvChilcQkq/bSNw0LTxTPnRCOLJP9VqGjq5GtBhPyShSSO1XjT6UQRXKHrfZehnVikOm5WW6mMa21OlPuudaypR2LckXLaWM5YCVUzlSsAIZdenvPpJH0OJqPiL9OGy0ooGaKSrwyGqoWXZvSqTrPwbr28ADMxpAK17vvlv8dOjsH6wb1KbOGaOLw07lzbYIVX+gFXBB/yDwiwbVMzwOTGxHMbtlKNyATm2kzdoXcpgGYNmbTAAxiy3zThn+Ukn6W5khdW80KlDqiW4nRtFiBf/rt2G5y2DN4dhNOyl6ieHn2oQmayBwCTQ8/qYqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ1PR11MB6228.namprd11.prod.outlook.com (2603:10b6:a03:459::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.25; Mon, 11 Nov
 2024 19:40:25 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Mon, 11 Nov 2024
 19:40:24 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [CI 9/9] drm/{i915,
 xe}/display: Move dsm registration under intel_driver
Date: Mon, 11 Nov 2024 14:39:42 -0500
Message-ID: <20241111193947.128871-9-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241111193947.128871-1-rodrigo.vivi@intel.com>
References: <20241111193947.128871-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW3PR05CA0016.namprd05.prod.outlook.com
 (2603:10b6:303:2b::21) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ1PR11MB6228:EE_
X-MS-Office365-Filtering-Correlation-Id: a5a0f187-e1b8-4dde-ebe9-08dd0288afcb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?GP3gKY0rNJsjjKT1VKD6LoS3YZGk3V0mPcnZ+nEJcZbfGs1QI/kfY/VjNx0j?=
 =?us-ascii?Q?dcza56WOp0cj9kiPbXsDDrysABoL8zinTHAC6xgEuNKgSjHr2MtpAWVAMiPP?=
 =?us-ascii?Q?djrpuvu6Iv9Xeg6mL7T6BUUibWVvo2445wbBXPOfK6ORjZ2IOydtYeWAd1lY?=
 =?us-ascii?Q?SmGxmthBZC/3rZu71rfA60+Pwtwc/OzUaf7KANT/0HIkRoeh/TRl8541Mgu7?=
 =?us-ascii?Q?W1N4BwY32Yz3+OVAcm0TkaNPKlQUAgI7Jf+CmEL60TwhNtQwC7bVhXOoWPes?=
 =?us-ascii?Q?EMR2wuCaTR/ryz8ZeJxCxIHqbzTAV+hZizCYAKxV/0LRbPrdD8jEUFwgksbw?=
 =?us-ascii?Q?xWM+HhowWdRytTi3TI2NbhU2pHLtItgDY6uGxMAzpF4Cma5VFi7WJfV9LncU?=
 =?us-ascii?Q?Md4uYaiiNNFYwFXwJg0E8x8bxpuL5yXNsHfHLlcFaHIVdpZD2JmbbyY8Arbn?=
 =?us-ascii?Q?bk3Ykv4xaUDOzvA/zJKuA99PIZ+jCLKq3kyi26zGuHNA0lfJOMQ5kmMPG3dk?=
 =?us-ascii?Q?RumXBRttKkdnxiW2hzvYaMRxMAHsw4G4iPR5L6sVXb56rErrtYgn8MWYc+G/?=
 =?us-ascii?Q?wkD00CLHBmlfZ2GZYT1SGEMImMQB2HGSd63QPOgD1wSJ4Ec6ri9w/H0GwRGh?=
 =?us-ascii?Q?7bxjNrMNIYklBQKhl9m+2Q6TvoNqkiVoyxmQ8ENT5QDS0AnR4zf/wcVYbHjI?=
 =?us-ascii?Q?XlCFu2oBeAuNc6MbQLC5MjXY/HHINtDlwzslMqR1If/4iLhambiX9ahef/Ow?=
 =?us-ascii?Q?XSMSfpdblD4BwkVz4JsksZQwrr9lFtolA4dMiWqIelBx/rIHaEyKZ0+mB8FR?=
 =?us-ascii?Q?CYbwqfFgMV0QRMMZ50zM2QS1E9v7WWq3B1LED1Z9nIkSysHIDfvbGJmPAPg2?=
 =?us-ascii?Q?vCs4GKa8ZrnaDLH7F7EQ6lmtTHttRdPUmXo2IvHc91yMb7o+DvGVyql93/Jd?=
 =?us-ascii?Q?6llV61swaD4rfUDRWOYwfV5Z6id/5KoAru508xM51S4lizznoXyAQCKsZ5ck?=
 =?us-ascii?Q?Kz+Zkm9v/nKZkGQ7ryI/wIrMWh+MJFfulLAmU+xC+iQ+ogfK1ndDc8otWCdE?=
 =?us-ascii?Q?kDpRfVbPlaAytP5bpqEsO0ZC1Dm8kerW3fO6GaIiUSi0mK8fk5BTmME9OTi6?=
 =?us-ascii?Q?MxuYcYavM2jmQ+6oD/FrsD5qTH5N69T6OYmNKEgYgNzl78yPFEKiJKLgSZHF?=
 =?us-ascii?Q?bLq9rZTkyWh4trLGNqPy5yueIcJwh7gQRUdwh222B3iyXQf6ppAqMbFZ21hY?=
 =?us-ascii?Q?TUC0lZdxqTnYHN0fNrcwkyASEkriP/vglbqgXvyutBvc5v2AiIPccH7E+tfn?=
 =?us-ascii?Q?m81/cHwyODAQVkaXw2P/yacd?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MjyWb2zSReB56vuRR2KzH7UxykANPwqZGzhVXFT/K3zBPJj219X1RWQZtQmE?=
 =?us-ascii?Q?5/Btjm4HhDRMSO63gTiCcZYPc7LVGx0f15YMybYdPWbCpK/VTjK8YE+LomuK?=
 =?us-ascii?Q?O7sy9rM0n7TydpXR8oNa3wwtQd2nwPRCgWHZU3BYOjX5Obh4/YUXqUdK9PJl?=
 =?us-ascii?Q?ozSstB4oN63TgJVnkoUkyodwp2bpxdDKT8qy50eRzt87GtmiWb/HIo07OBRS?=
 =?us-ascii?Q?nIObjdOz3smIaxJ8LnrufGnN9UJiEpMGJFtPG9ekOjmcDqdH9nu71n6p1LmI?=
 =?us-ascii?Q?XnSHZJpoCuqAa6fO7QgD9AmpEb1FikhEgMhQ9yoZ5XBJXGEwixtVYQ5/RxNj?=
 =?us-ascii?Q?le2dAtqVlKKyt9nqpBtv54GqnQFCwvHXufLRNUM35nCmQ40hQX4YfcMI/Z2U?=
 =?us-ascii?Q?mXvmrkaA4iHBTQs06G16ByjZ2XPZVKGbNJ2nr/4iAkxLz8go2OimM3H13Ldj?=
 =?us-ascii?Q?2Z0qVdwt6Vvr5+rgHt94qeJDrLjF5vW0EkmmC+rFfzYY6ju3SsdTLJYObTm8?=
 =?us-ascii?Q?WNfuFY10aBtSiep4bHDjxFKtD9zHa9cssXeUzJzkBXiyo/ykxLN1zkvHaXE6?=
 =?us-ascii?Q?F14dOPld7IBvhKMbOjYKe4YxYYJE9zugQ3yZoNTMmM1piMzp3xa/qQE5BcmN?=
 =?us-ascii?Q?lv2Spn/0B4UWspGKacsYb95XKFOqx0+UcCMLOvjXfDnSObt0cdCj3t3RE3tG?=
 =?us-ascii?Q?X9gh5iajzKUu7K366KKXLjBUfZrRg9QsT5/szn3dVHiMdOI7GHOxHjvY6/kw?=
 =?us-ascii?Q?ncs9h9EgVt777NkWm85VpgUysdJGZw6NAE9PWdiSD9mE2V89oSGPOQQqx/6/?=
 =?us-ascii?Q?6M20zS2x1Ylp6Pt/QiE3iGvXUpYhEmPjdKr+8rvJKy2C7Th75AfgGModmCNw?=
 =?us-ascii?Q?vi9zluAi5+jj0QXpLkoJFu2QY12WqfmRMnu4407Gweo834o8kjms4QSG3Syq?=
 =?us-ascii?Q?0GWTmxXG82M5PJLYVlpVtokzRcDdlY4Aw3d0po8hTOuQ0bZIlN+EzaGyrLxi?=
 =?us-ascii?Q?aeBtpsq/QdYnC6Oyn7n2SmJ5MOHR/3/xkFIPBkqjwJphogR64IPuyXpbI0vK?=
 =?us-ascii?Q?u+z1V5ESm/69Th2FIpsmsOvS0MNjCewGQFeVZAG3GmTY/Zzcv/XT8iyIUM1Y?=
 =?us-ascii?Q?+BHQlvQf16vomjlK2jokt8DeU+l4DkNQ6smfYhTocZ7Zs7tNJOWqfMFdBZhC?=
 =?us-ascii?Q?GNZy6hVvnhA4qlAbJ+8DiWm2MRqj35oluYCxW+CG66hyw9C/aGk8cbDE3VnZ?=
 =?us-ascii?Q?4woy7oSf+hSzKhFGfAXMbxLYzH1vNr+MjZHQrSask5faa+PRN5u0YH2uSM1k?=
 =?us-ascii?Q?854G8n/ZazLs8trX2qBIt0chZQefBEoziDMnrhVToyY3JhflMzgGebv9F8jH?=
 =?us-ascii?Q?+OWGyXnYjqM/Fql3T3irmTvU4+sC4jsdMtYC/PcT7253jXOYUjMQ0mBVW+i9?=
 =?us-ascii?Q?6Bg2EC2nV7ofyCypwyoPQdiMvO5xgfsWTmrzV6nJz23a47dUoQK3MfGN3z5o?=
 =?us-ascii?Q?7n6QeDI0OPCPMJTzV29QWiah9C6Cicfuxck3ADzZV5i+tdC4PRTh99hKp/a4?=
 =?us-ascii?Q?1+cXBBiqmeEiROllOC3LsE7yWWcIlVnQKJwPhf6klctKylMkL2Q5txaeMak3?=
 =?us-ascii?Q?hA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a5a0f187-e1b8-4dde-ebe9-08dd0288afcb
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2024 19:40:24.7425 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uRGPQ05nQuQBz+/lPM2kUx2HdV+2ekkw2FnbsNQQHfdm2QRUZTIneN4QEptYoE3XEMxordAwIStfdTPrByHsvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6228
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

Move dsm register/unregister calls from the drivers to under
intel_display_driver register/unregister.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 4 ++++
 drivers/gpu/drm/i915/i915_driver.c                  | 5 -----
 drivers/gpu/drm/xe/display/xe_display.c             | 3 ---
 3 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 3b8b544d6da3..194dc9d5ad4f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -563,6 +563,8 @@ void intel_display_driver_register(struct drm_i915_private *i915)
 					DISPLAY_RUNTIME_INFO(i915), &p);
 
 	intel_power_domains_enable(i915);
+
+	intel_register_dsm_handler();
 }
 
 void intel_display_driver_cleanup(struct drm_i915_private *i915)
@@ -645,6 +647,8 @@ void intel_display_driver_unregister(struct drm_i915_private *i915)
 	if (!HAS_DISPLAY(i915))
 		return;
 
+	intel_unregister_dsm_handler();
+
 	intel_power_domains_disable(i915);
 
 	drm_client_dev_unregister(&i915->drm);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 946c1b81809b..a60bca5580c5 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -46,7 +46,6 @@
 #include <drm/drm_probe_helper.h>
 
 #include "display/i9xx_display_sr.h"
-#include "display/intel_acpi.h"
 #include "display/intel_bw.h"
 #include "display/intel_cdclk.h"
 #include "display/intel_crtc.h"
@@ -636,8 +635,6 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 
 	intel_runtime_pm_enable(&dev_priv->runtime_pm);
 
-	intel_register_dsm_handler();
-
 	if (i915_switcheroo_register(dev_priv))
 		drm_err(&dev_priv->drm, "Failed to register vga switcheroo!\n");
 }
@@ -653,8 +650,6 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 
 	i915_switcheroo_unregister(dev_priv);
 
-	intel_unregister_dsm_handler();
-
 	intel_runtime_pm_disable(&dev_priv->runtime_pm);
 
 	intel_display_driver_unregister(dev_priv);
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 28e9c8648e76..2525eaf9a9a5 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -14,7 +14,6 @@
 #include <uapi/drm/xe_drm.h>
 
 #include "soc/intel_dram.h"
-#include "intel_acpi.h"
 #include "intel_audio.h"
 #include "intel_bw.h"
 #include "intel_display.h"
@@ -219,7 +218,6 @@ void xe_display_register(struct xe_device *xe)
 		return;
 
 	intel_display_driver_register(xe);
-	intel_register_dsm_handler();
 }
 
 void xe_display_unregister(struct xe_device *xe)
@@ -227,7 +225,6 @@ void xe_display_unregister(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	intel_unregister_dsm_handler();
 	intel_display_driver_unregister(xe);
 }
 
-- 
2.47.0

