Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EEFAA38CF1
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 21:01:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F6F310E206;
	Mon, 17 Feb 2025 20:01:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pne3c64A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5607A10E206;
 Mon, 17 Feb 2025 20:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739822503; x=1771358503;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=4/OeZBQbI1AvB0RUhyvVeVYluT2F+e2iYBz07hORCsk=;
 b=Pne3c64AhcPRVOtJvnQfNVH6n9QUS+mPk9wgUDEZH18obX5PxXX6XYWK
 fobxOMfbeVw8TzMIx5fMj3DmG+9o5DHNb3IW7qc6LghPd4tu/13ZB+qoa
 569+9rZ/vBhTPZCwf2fyMT1/IuBw4+gaOnTYw1Uf7bj7TN7ORVG9McbOo
 bVGuylSh7e3N/8Mmf8zojkpYiRfqTAeD1TZ1eIuplhL3L6nnIXg4lLd8p
 XoyOerrHGUnlt+MQyOtaBPMm6iT/sL9yG5pDl8XfbW+tpeNTdwbDEWMPm
 NmiGt6a7MV2ZbVNJssGMvfRZaxhGm84v6dnW2aKKX3al+GpZRZDH2C8jP g==;
X-CSE-ConnectionGUID: CJawNg7XSfG05rcJBzXQZw==
X-CSE-MsgGUID: PQtdgyEwQEaIcK6ONmzOuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="40376150"
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="40376150"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 12:01:43 -0800
X-CSE-ConnectionGUID: 2as2xZhHQd+fRQfyPy9NJg==
X-CSE-MsgGUID: S3UlZVbdQsqwVEoN23FNaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="119196306"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Feb 2025 12:01:43 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 17 Feb 2025 12:01:42 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 17 Feb 2025 12:01:42 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 17 Feb 2025 12:01:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TjRKIFg6kp6wt+jVOZKvx+zZcyh2Q5hK3XHvKe0h4gtMBOSR1ovYD1rWujiXpgOrEEiFm6oK07GOFCeMzPT5whzdy7GIOoQUNT8k4VZZnDum3nLOwaeSCws+9fERKlMBkDAEP8BUHy1dL7uw/K9Uy06+VfXoISUcmqKyNPl7ybGan8zIEgCy4nIgzpazgopKMOQV4xkRhO8YHF/sIZLtMzWFCX6A8jUkIma2+Z8yUSpV9VKpSmVdArcbIeRKsFfGZGJ8IwawU6Mru7QjWvomUt8ka55RhN+39QQNTuf7HU2Bo5fGubU3FEinA4xG4bY6nWrzux7j3pqnbB1Y+kmeug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/T8ZYIp+q9FhoopxWSRv7VyxhDYtocYk6pyuF8tjhbQ=;
 b=byzs2xGm0wjQMKdEK80UbrUExFWSiFdQ3kyoZ+aYrJnCx8RM/bS0pq/XkDmS53LJqxRlZ7PsuFlvFgAAKh9LX7hKmbChbtKgOoCJg1+3VXGdnUKjWX9mYDI2GNtK9VnGwnuDU26tmWJfK2pbA/u0cFoaptYquIBG6i6C4BhW7JHeiAzrtAPNOgKiU7hQjEC7A6j+frw12DdMMsCNWnziczI2qkDnRVOv+wBbRTcRr0iOPXjPEZaXW5EN0ly92TVKdHkw4fkJVAAPVaDcvBbLDhOdJfSqXoPirUnAVMAWTKkz+QSskLH3+Qnck1n/buAl1c63eArIP/KJoO/fl8sX4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by CO1PR11MB5012.namprd11.prod.outlook.com (2603:10b6:303:90::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Mon, 17 Feb
 2025 20:01:37 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8422.015; Mon, 17 Feb 2025
 20:01:37 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [PATCH] drm/{i915,
 xe}/display: Move dsm registration under intel_driver
Date: Mon, 17 Feb 2025 15:01:33 -0500
Message-ID: <20250217200133.741758-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.48.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW2PR16CA0048.namprd16.prod.outlook.com
 (2603:10b6:907:1::25) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|CO1PR11MB5012:EE_
X-MS-Office365-Filtering-Correlation-Id: c1f7f93e-7dc7-4bbd-5e09-08dd4f8de303
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?2l+FzXYN1IqQPpCS8kFWOorlOazteMzhN77VHdO64Mx174uPhnZJRmM/opD6?=
 =?us-ascii?Q?xW21cPwq1F8bGaKBsXf7Gfa59I4RzGIzN15E6TumoVj9Ozbhc1/H1Hq2bA8L?=
 =?us-ascii?Q?j7RT1bGz/54HUfuv/8yZ7JIRRafhCKkoDNrIop33nfq207gF1ArTPVZC8Xjo?=
 =?us-ascii?Q?5UCWN1I1VXuzr1apGqGIyP0puIcSY4vbAuyvIwec0x66qVJ9F9DSmbRG0x8I?=
 =?us-ascii?Q?XOXTuooY1WrZGrUazp2ZmRO8igL7GSyaOdZ/c5Gk/qQTo74GFO/WfmhCmvgm?=
 =?us-ascii?Q?oqStfX53apwILSdcmKjT1XZU7Zq4bmwNQmVC5oPFoi0em9Cr+ihQrjlOs5Zz?=
 =?us-ascii?Q?1LeRj1v7lAVu142bS0VVV/z9eF5WB/aYY9cFGVmyzxMzfLx8MJC9mdROXQEG?=
 =?us-ascii?Q?07+K52T+Ob1MzjB+bMcHz9XVy8C1c7Ew6WEJE3tAR2XL89kDfVL11oa0LUY3?=
 =?us-ascii?Q?Nxy/GnrP/sZYfxpaAhIXb/0mn8l0fbp9VvpB/XZEJIZYpesrXcIHE0xnTlCn?=
 =?us-ascii?Q?4dGI+cvMLnlzDp9I/aI1R5yvpVDdfizxQDfplxx1Xd5zbAUoaDYI/MjIAz4V?=
 =?us-ascii?Q?gOqg/oxihCIDDXjtf+DKz4/N9ueZeMOm76b99vw5PLYUQX1vUfSZDzKxUoQ4?=
 =?us-ascii?Q?3SbU6D/kc7rz97XgQtcwdgkqqNc//gj3XVuhlu8dvA3AkIzSnkRdRlyPiUZm?=
 =?us-ascii?Q?IfUUoF4NdGR2BTTwKLeFWLftYZBhIO6fmIbJIwSR+5Pe99268W0Wpvu6Ehli?=
 =?us-ascii?Q?lE9OcxPzHweTt4tBwtcKQpM9pjHd+aS+GK2OMuuS7ZbP0WlakrYmGDH6lUtZ?=
 =?us-ascii?Q?TESSqtT7foUuNOMF6RweEAfjOHa1qFcvuaDlpzRDlnOz+pOKfdyZ/XbFZDWf?=
 =?us-ascii?Q?c4Ug9BOc3mIDNP8IigeIjbe3FJjPu5LWKUEGDYSssvNveMo3AiZHF6qt9fgi?=
 =?us-ascii?Q?kWhQMJmMo56cPiG4GuOYslQaxuzmoNnSxdvIidhDwScaZeQUthajKh3Vitet?=
 =?us-ascii?Q?FKldWgIAPUUqRYIwQ7VmIZQwvkwlajYMs0vWG6j9GbmspPNlQH+YCNgaByCD?=
 =?us-ascii?Q?8BhInkCeuEKfa1GsVXI93plumBvVkn+L65agXTFgdfzQYB6Yguw54rA7fhn3?=
 =?us-ascii?Q?MsKXtqH0ZVzPGfApTXchqoKtyFejg0vIpWm/gYVq9IQBUBXIqVquOx1TOihm?=
 =?us-ascii?Q?ugGo/HXAvgi4EjXqv8rIQ8Cw9Bu5q0Ogw/Evqo5Sqt+ojHV4EWiNIM/8tlQT?=
 =?us-ascii?Q?PNsrdtzi+eN6CliKyvASjTjFEzWWqLPWQ1E0p69ZEFSmmVHXokLCEx5aBKDc?=
 =?us-ascii?Q?JMKb02Y9nbS8tMyyYWseLuES7tCPUM692sFAr16/tH1TqxRXLISwqd4VEd7c?=
 =?us-ascii?Q?KmID9aIoTMKtswI5sOYXUDS6CarD?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1qOaxFwmOvUT+2bEWkkmMw9+f9uRogL01ldtd4ZSabiVQXvaq6tDYvZygePW?=
 =?us-ascii?Q?nr+7TDMZMcAvP/g9enoNZ2uL5c0cuDRJFSWhKMljt8Wrkxs/P5kTwv3sPqp4?=
 =?us-ascii?Q?FlsepkGCusSiqAeTwFPIrknYk93HrjVAGbb8cTdyFe5o8piPD4dWr13f6EBj?=
 =?us-ascii?Q?RxqO/heRtvfISsdDPLlu3T5Fu5TOeAYlmQ6sGk2NBiApXkCIgw33fmrcYr3B?=
 =?us-ascii?Q?X+AuksN9G5lhg5uGpd10TsLSr1hyEJsWshjj5u44EM9Ca4fGSeHURWId47Of?=
 =?us-ascii?Q?ao+qg8Rb3iLgdHvaU+uphfgAZ4xQwUXp83Jt7T6Ob+VtO4Z8Wg4sIJAlkN6D?=
 =?us-ascii?Q?MczEOqIkVa0Yk2tD3eOiqa/mg8vIhwYLHW+/t4Fbz8OpNpmhTdr9QujxA0Ng?=
 =?us-ascii?Q?6U2Il3dM9C56yW1bZ9LLu7aLZrrWIiaiA/rGFNNgks8mNMUvnHrmvvOimmwP?=
 =?us-ascii?Q?q2IykHlhwoBhM27vZGFy2eMoIzkPQACQmQACkvaJq7BwXMk7GA3a7j1H8i15?=
 =?us-ascii?Q?GDQ1e/RsClZfCzEvuYCGJdz89VX4EZ0Gvol2z7B/8/mubwF8yCICLf6zgEg+?=
 =?us-ascii?Q?U8Pzh16Q7sCRuzL9Ivg99/4FhNgtasqpWQI42apKPGZW7AWK2ZKopYsAz0/P?=
 =?us-ascii?Q?xXXRJgO9bBv4sp3tWxaSAth3vttKlT+jX/JRdRNr23yTSfTxMQwUrCFvnk2D?=
 =?us-ascii?Q?p5ACb3K5KODFxhBGb7jXkE9sy2u8doT4Dwrt7RfQkDvv92VoumG1azjcY1Mw?=
 =?us-ascii?Q?eybDPt/15azX0W9JbrlEUx8DRw1O0iLm93Zy6EfGsv/kREU7vScE93Q9Jk3z?=
 =?us-ascii?Q?1kODxN0/NXDWcCe9qbQB1nZmvsrIsyuPxEZSPz71Ju41ktE1NyqMHCa+hVaa?=
 =?us-ascii?Q?ieKFVCDaHdjR3H3U+lk6nRatDntVBUs0N0AloPtu9CGkWRGnBM7aLyxDvZLT?=
 =?us-ascii?Q?U8W93EE00rXGLMuiKNRFAE7IUAJ0ppzL2YHMCZ7PK0ChZY5FZgpjyWZFe1wM?=
 =?us-ascii?Q?suyWxQpal1DcIdXGCwoN9FwQBdIyqftXAGP5sUYsmYc8vdoFlXzmxAqLaJrz?=
 =?us-ascii?Q?02VhZrHh7EW+R9KPHmdIuBQzveiPrINw0afHi2zZrg9hsJvcTDZvOCBxmPCj?=
 =?us-ascii?Q?23Ee0YPabiEtgdsoOc16Xb5k73Ihb/OjSPal9m64qORqn9/VfMrh9vfYGyam?=
 =?us-ascii?Q?DS0rGXd4Vkh5cHxQyIkWad9u4q3ljoDbPbN5LBynuXJRAOZeliPKV/gF/AuU?=
 =?us-ascii?Q?Aa411UwVQLW69+cCdvUZsF4N9AIbZat1/iPRskOCEnPtXK1mwoJatviJWCZJ?=
 =?us-ascii?Q?DRnxGMZhdLcp+MxN65ic+sBhWqJlur327COOUiTR9DlV7MIlJSfdBbsJ5CsO?=
 =?us-ascii?Q?IDe9IuADljB572cUGUmhBfYEQj5XX+v3R1NiRdMUHBtB7l88/r98SqydWV7M?=
 =?us-ascii?Q?ssh6LQ2hjcS+DND+B6kg4ys2D8H4jBMzY2tSJ1w7jEmGy7VazUnsMcsvlRZU?=
 =?us-ascii?Q?U/pbk9+KiYppq4I4trojNywkU+NzQF2+mKNwnupeVmTeRvB+QDfj11SqhacQ?=
 =?us-ascii?Q?H8KlPMlA4KfVrK1jAShodVPBNXLHwBvThjSemtO3TqTPXfaymStIAGCNC3RW?=
 =?us-ascii?Q?IQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c1f7f93e-7dc7-4bbd-5e09-08dd4f8de303
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2025 20:01:37.6816 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l6DrA9qdG/hXy/noV9rmldLed7pv01mZRIjvX/R662iilp+3sLYNrZE8YnsqcSnB536P27kPkgOgBCRgZtxqPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5012
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

v2: Rebase only

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 4 ++++
 drivers/gpu/drm/i915/i915_driver.c                  | 5 -----
 drivers/gpu/drm/xe/display/xe_display.c             | 2 --
 3 files changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 852f1129a058..b72b07329fbf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -564,6 +564,8 @@ void intel_display_driver_register(struct intel_display *display)
 
 	intel_display_device_info_print(DISPLAY_INFO(display),
 					DISPLAY_RUNTIME_INFO(display), &p);
+
+	intel_register_dsm_handler();
 }
 
 /* part #1: call before irq uninstall */
@@ -639,6 +641,8 @@ void intel_display_driver_unregister(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return;
 
+	intel_unregister_dsm_handler();
+
 	drm_client_dev_unregister(display->drm);
 
 	/*
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 91a7748f4492..1dfd6269b355 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -46,7 +46,6 @@
 #include <drm/drm_probe_helper.h>
 
 #include "display/i9xx_display_sr.h"
-#include "display/intel_acpi.h"
 #include "display/intel_bw.h"
 #include "display/intel_cdclk.h"
 #include "display/intel_crtc.h"
@@ -657,8 +656,6 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 	intel_power_domains_enable(display);
 	intel_runtime_pm_enable(&dev_priv->runtime_pm);
 
-	intel_register_dsm_handler();
-
 	if (i915_switcheroo_register(dev_priv))
 		drm_err(&dev_priv->drm, "Failed to register vga switcheroo!\n");
 }
@@ -675,8 +672,6 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 
 	i915_switcheroo_unregister(dev_priv);
 
-	intel_unregister_dsm_handler();
-
 	intel_runtime_pm_disable(&dev_priv->runtime_pm);
 	intel_power_domains_disable(display);
 
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index f2064cfb55cf..1fdee8d6df90 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -196,7 +196,6 @@ void xe_display_register(struct xe_device *xe)
 
 	intel_display_driver_register(display);
 	intel_power_domains_enable(display);
-	intel_register_dsm_handler();
 }
 
 void xe_display_unregister(struct xe_device *xe)
@@ -206,7 +205,6 @@ void xe_display_unregister(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	intel_unregister_dsm_handler();
 	intel_power_domains_disable(display);
 	intel_display_driver_unregister(display);
 }
-- 
2.48.1

