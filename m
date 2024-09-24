Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D45984C55
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:43:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C45BC10E75C;
	Tue, 24 Sep 2024 20:43:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dk5Yon+C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B07AF10E75A;
 Tue, 24 Sep 2024 20:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210622; x=1758746622;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=ja0muhopZ6QblYwAOCJMliIKebMJASajxspWDDmXJaY=;
 b=dk5Yon+CDkmbJNzvIKhOmzBMgnA3FOwJK7a2YDmTsERu6ZeEtNDgt1ol
 QDNafvPtHOF7zAEEGB/QNWOZScJvQY/G4kwA1JDK5W+94zFU2UFcufiyu
 UB7OOZPkYNHTzJBFxlsUTSQK0fhzkMhsFYzTPAAsEILnexYqYNqNTG0dt
 XrLsd6D2thYQJ1AJvm0jwYQHR+ZDHvn+PLo3HTySExoVFjfuevUCdeQ2h
 JGhROOb5nBhNQqFz97KsP/sMETZgBG5I4woWpkGGrOSTkCJv+sf1JBVZr
 EsYZ0gihOTSxzKv0xm91BLial2rAZrvoAwZHpB0fzcdkase8siQmVIHjc Q==;
X-CSE-ConnectionGUID: BKh57lhCTPCQA2KRTed55w==
X-CSE-MsgGUID: qNhpJ2umQgWUTh6ZW0AJ9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="43751569"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="43751569"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:43:42 -0700
X-CSE-ConnectionGUID: OmFrkB27QsKu3wAZxQvOTA==
X-CSE-MsgGUID: QCIjF6BkQtuKOteYByl82A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="76298851"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:43:42 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:41 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:43:41 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VUrV1NG54ks++qZpVmhq851jxP1i1QfU/BaDyTs/kno65fW2wfXvm5dP03CghOLVl6J67E/WIZtLikBTEyWFOlL1MUMdAlgGGO4cNRVYq/y/OY8nCFvUZ3yPEgmtQotJr7o9Usj5Y4neKhO9TTeoTSgXbm9HvW85IOnxEsXXX8bja3P17vA9errI8944nTI242sdmZn9r6xDgYenxNFW7sYVKVLlXjThoxhhzIisi/HelsawCQSq2+4pWrioW5XkCCwTolCHnZxQXfAMtyiJxM4q0sQspNpFWIPXqLPW8ZdMtkx212ehgvkaWdHPZ3x/LVguWcZiuJ5G9jd7ZdIgVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bkgoA1SOaV0ldLEN5Kx1J5WRjgURZYbpyGEvVCMce1I=;
 b=Iwjc48b2SuqJlarxjIZBfy5iZbgYgUm0WpCFfWFrxtxsbxAR2dS0KrRtS6vG4OxF5sDgFsRE9MmfFtcj63q/fWFFIXRPwPESOUcXRdJqOSa9axMzf6LH2irVSM36TK+7Vun78cyUqiLkW1KoUVBubJb5UM6wfieSXaWHnNiSTMunpzbeQQsX7phCVi+8BQQmV+1VQwjXGJc48st7gqbGq4OEMI1jicuoM5orKMAED1PwVB/6jS/bv7fMHdkAfRBirOkGcVLPxncwhVsK7SvbowWQUf1OPLoGaY8khRZyQj7sCykhrFsPfzCV0yZ22bP9vxQL1qcP7SWo65UDaBqRQQ==
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
 20:43:35 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 21/31] drm/{i915,
 xe}/display: Move dsm registration under intel_driver
Date: Tue, 24 Sep 2024 16:35:42 -0400
Message-ID: <20240924204222.246862-22-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR04CA0356.namprd04.prod.outlook.com
 (2603:10b6:303:8a::31) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB7425:EE_
X-MS-Office365-Filtering-Correlation-Id: 271b10ab-ab70-46f5-1744-08dcdcd98f45
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?aM8IBfWz6csDbnMf5wP8ef+kRMNfz6M3KOoo+Oy9WwFGSCn4exQBqjcOomCU?=
 =?us-ascii?Q?RnP5Q0eWmXAuC9ldPfCoLhJRJ6m/AHS3ngR8qVp6VXzFlF8CZYKtBME2Z+KF?=
 =?us-ascii?Q?NLIbiz9yDFoAKqpOcesrVMDUl9vyyvhQTLZT1TxJV0QTMhqdKBUoeLyST+yC?=
 =?us-ascii?Q?Eqj18XNDPsvGazU05G09ZtYbXJaqD4QpK/OdtgVOj5yMADACPqSA6k1s2Imz?=
 =?us-ascii?Q?zYjCn5fgZYjPNWa7dm5rTwZl8JhSXNilsa1WKP7G2sbve2XhX3YiZ9OCCfFS?=
 =?us-ascii?Q?Sd0fQJGToXvlID9HQHCMFKcXp6J21R636xaRhtiXxaLmOR18PHpb5FhKIjND?=
 =?us-ascii?Q?KEqkm9NZLMf4gfXzFqtJmHgIh94Ys2FoMcSDjLboEazaqeBxwuHssQVpV/tG?=
 =?us-ascii?Q?mOJUAyylVelJl5w9nJoWtVQqA2wau07pGDXurBUxfqlcwv/G8YCJIz3H9PHp?=
 =?us-ascii?Q?/6xIK4cJ04CIo4ZecWburt9QhpgY5PctMlkMoF3qAmmorLGfXcVFps0OX5oV?=
 =?us-ascii?Q?ahLiCQaKWOapnbysSDTnqIqiAWQ0IKyYHs67BH6RjIv+9Iebgoj/zW7SVom9?=
 =?us-ascii?Q?cQkZ0+W2nMoFDPL0dC0PRS3qzotdMtUeJuG/RGn2Xw/PY9pIRfHJ4YHyVB6a?=
 =?us-ascii?Q?0fEwYJsOsRfa16oByUN0wikkS/mj+WCMje6DW7yNOut1Hrv0xKpvMnEjK17I?=
 =?us-ascii?Q?+nANVL7KEpPqIQ+0rXZ6Sg6WBYnBjNSzgH9+9SvqDC7hFzdtdaFz/8UDs6xy?=
 =?us-ascii?Q?Z/2LJuIB14JIlA6pMT1T6zu8ZAMCeFTqm/56+etkofi62pWRjcrgqsfI+xBw?=
 =?us-ascii?Q?Iv6oiqnplS1tVzoAAuzb+7ep1ddXWZeRkz5JLCOZ0y/ryNxACWlu7DUZ7dqZ?=
 =?us-ascii?Q?W6M3vErCBTJI12yZq9VP4DX59roS/E2APqyy5LtItdv4CmWeeeMKShR+Vqk5?=
 =?us-ascii?Q?hdN9ACmHS15s3Kkb6eyyPjOCYGRPCiBlkBFFQcuJlxsWro5KtZzgCwttAdZL?=
 =?us-ascii?Q?lWVdcFNk6yOQrNHKH9nHOLV49F3cf7h1kZvGCve+XB/+F0IDRFD8QK4vsY29?=
 =?us-ascii?Q?KrqhTBnHzmFdSd6CSgasBxpyBCf5dLtZqqszqmnGg1TEf17FILkZTk5lYKsb?=
 =?us-ascii?Q?u0GBIAfGS/wiXJiHM3ylNLsj5AwVbTN7uIoWjhBeVhbh/ZTrV3tnPWhHijsu?=
 =?us-ascii?Q?lQcySZdz8lNj8cnoqdBh6ZLRLSa6G3ff8+jpZ9tY2GkCctldl96dBogKTOVy?=
 =?us-ascii?Q?2N/ko/RUJzGzaCS0F65edUOy2WlQztf3ykt4/2UF+y7DWScKUD1grgNl3mef?=
 =?us-ascii?Q?GiAZDaRqK8BZpamOnAqlVGT2rfzoo73DfJImaErIu+hPjQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?a6bqZLz7+lNKimmKSMUIhsyEGJFGUHXlcE5NSyPhFyY37UBfJp8OtTYINQNt?=
 =?us-ascii?Q?uQWeb1Lh+CMQThVCMCKMVyqmAeeebvmqmQMkygo+tzOY7G5NcSuMLF1cVtX+?=
 =?us-ascii?Q?8bficQVyGSoEWgoLoIY7DSX1aCTOgtidGIHtxLTM2BIlK0s1yr7X2wQVZ+X1?=
 =?us-ascii?Q?dyMsn9rxDVpxtL9APIQAs1qWu3nMhxDKrFoiAXAS+WZiP7DjzfR1XumsTN4Q?=
 =?us-ascii?Q?ZlYdHY2KxUZ1A2sfGtTkum4UoqBoBMPxNkHuQKxUYBg6OQbk8XtZBtTbiMej?=
 =?us-ascii?Q?7blHNgO4PB5pfdUZUxyu99mDf8Fa+6gKCV1UJviWBsAqTatcgrweaTpqis0w?=
 =?us-ascii?Q?UCc7DrvVQWK3WJnooJzW6yPTMpm9gefUwIWRiVS+rvLbzPjM7TSB8spNShfU?=
 =?us-ascii?Q?pOoF6vuOtY35Dbu9d0ugbk7Wl3jfolGwP9f4fMXIa4XXPvR1yUzVDLgRf3oz?=
 =?us-ascii?Q?ZPd9FzolhY6RrAS8wxn9ecR9r+lQezemX/m6cv0a+fzXfYUdVZ5bzZbMAvSz?=
 =?us-ascii?Q?3riugm01UMmi5nqJ70zfQfzPdd8YuiQRVWlnl6+sbMfDZuYPYj83yZP6Dd+0?=
 =?us-ascii?Q?Qi9QGrZFoVfJkibe59/sRxsi71LVLMuuyYn+x/iwk0ib14+NsVD1JlxRSR1Q?=
 =?us-ascii?Q?yatEeI6Ez8cpH+fu9KGnSAUDpa8zQ7506caVJbXRRZO5vCuMvZaIMeJldBDi?=
 =?us-ascii?Q?q2b6qopT4bA4GY2+aGFv/jC0zY1TlyIIsw4Fqmjo2crEc9X+csf5s4x9ec2V?=
 =?us-ascii?Q?8x4NyfQ6LtjIxANnss1xy2zkBBtwqBKoW1SuXOUkYYh1k7rZRL/JnlcGx93V?=
 =?us-ascii?Q?+m5sYcS5NHtbwhKPOP+L92pP6PTubsgzy/XmiX67c2zKe8j+MPhXgLpS3hbo?=
 =?us-ascii?Q?1Eu9HgoJ+IRJNtDBrI88eJSco0X/q2BFxWGAkyBBF6LKa1GtxWr6kUUiyPHS?=
 =?us-ascii?Q?0ZWQtBLdLrgjzReWTKF7A1nA8q4ltvX/sZAmQZfKDD/bruLIijZovwI3L186?=
 =?us-ascii?Q?Fhb3WOZtP2IRykIloU6oblfeI+Ml1bhC4Ia+Dtttl/BXDdWmAd2BJUKXPMzL?=
 =?us-ascii?Q?51CXNmHwgzYAptdCfF8i0T+CVhcJ/9zOG3ByYnT842DZ8b9W+Yw4y0CFyDfV?=
 =?us-ascii?Q?dCUAbzZzjQtTT6h+/4QpbAdmY6zpjY/IzwPUL83ha7XXgzdI+QmxXYFl/f88?=
 =?us-ascii?Q?0DfPM0R5xl0+OAAcfzldFAwGDOdpTUjlzUSoge8wIYdYytK2LV9vBtw01XV6?=
 =?us-ascii?Q?LSOafUuyyBUzC2+cTTBSog7rU779xHFhB4JTmmscbe/5z339bk0axx8ZTaON?=
 =?us-ascii?Q?CGBgol8X6qrVVHpr2AJm5A3f/Kpr/u/b3iOFkRgn/jlK9x9uGvUACG/qN7d+?=
 =?us-ascii?Q?VwliwS5Y//couSwatu+yazSibermvKCbc3PVVkUln+HqD4wXz2T0/Mmzwtvq?=
 =?us-ascii?Q?igAEfxem64LaczgZNDwkGNeA3qYuCe7yzS4BRyilddy5HvL1DIAys41XwnGT?=
 =?us-ascii?Q?KuBJpw9VsKloE3b4LRcF1Rh/HcO5EnIoT7j+Fx3iEygHEvBhoz+Yp3v+gF33?=
 =?us-ascii?Q?B5jdn2akcnc1V5YMbt1cKTajMkzEzbC1RNbdwk9pvxvpzVrjJ7f45GC5zRfA?=
 =?us-ascii?Q?vw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 271b10ab-ab70-46f5-1744-08dcdcd98f45
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:43:35.1515 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x0ax/DwvO4QHgvoj2kB5dIckc6+1lpfCsJF5HhA66XheGgLWE26DQnxxBPiTfufJEatEiOy3mKtTeP63Iz29Xw==
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

Move dsm register/unregister calls from the drivers to under
intel_display_driver register/unregister.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 4 ++++
 drivers/gpu/drm/i915/i915_driver.c                  | 5 -----
 drivers/gpu/drm/xe/display/xe_display.c             | 3 ---
 3 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 85a51b9d49f8..f3a586913c6f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -565,6 +565,8 @@ void intel_display_driver_register(struct drm_i915_private *i915)
 					DISPLAY_RUNTIME_INFO(i915), &p);
 
 	intel_power_domains_enable(i915);
+
+	intel_register_dsm_handler();
 }
 
 void intel_display_driver_cleanup(struct drm_i915_private *i915)
@@ -647,6 +649,8 @@ void intel_display_driver_unregister(struct drm_i915_private *i915)
 	if (!HAS_DISPLAY(i915))
 		return;
 
+	intel_unregister_dsm_handler();
+
 	intel_power_domains_disable(i915);
 
 	drm_client_dev_unregister(&i915->drm);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 65f885e03880..7fce210d355d 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -45,7 +45,6 @@
 #include <drm/drm_managed.h>
 
 #include "display/i9xx_display_sr.h"
-#include "display/intel_acpi.h"
 #include "display/intel_bw.h"
 #include "display/intel_cdclk.h"
 #include "display/intel_crtc.h"
@@ -629,8 +628,6 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 
 	intel_runtime_pm_enable(&dev_priv->runtime_pm);
 
-	intel_register_dsm_handler();
-
 	if (i915_switcheroo_register(dev_priv))
 		drm_err(&dev_priv->drm, "Failed to register vga switcheroo!\n");
 }
@@ -646,8 +643,6 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 
 	i915_switcheroo_unregister(dev_priv);
 
-	intel_unregister_dsm_handler();
-
 	intel_runtime_pm_disable(&dev_priv->runtime_pm);
 
 	intel_display_driver_unregister(dev_priv);
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 44850b6cd382..6bfad26a3c06 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -14,7 +14,6 @@
 #include <uapi/drm/xe_drm.h>
 
 #include "soc/intel_dram.h"
-#include "intel_acpi.h"
 #include "intel_audio.h"
 #include "intel_bw.h"
 #include "intel_display.h"
@@ -217,7 +216,6 @@ void xe_display_register(struct xe_device *xe)
 		return;
 
 	intel_display_driver_register(xe);
-	intel_register_dsm_handler();
 }
 
 void xe_display_unregister(struct xe_device *xe)
@@ -225,7 +223,6 @@ void xe_display_unregister(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	intel_unregister_dsm_handler();
 	intel_display_driver_unregister(xe);
 }
 
-- 
2.46.0

