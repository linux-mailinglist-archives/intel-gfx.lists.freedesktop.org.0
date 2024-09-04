Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F3896C589
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 19:37:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C37710E823;
	Wed,  4 Sep 2024 17:37:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zb4t3sDO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFAF610E822;
 Wed,  4 Sep 2024 17:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725471447; x=1757007447;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=OnvrCqo/URwzFKLdxq5zo1nFbEEwifNi7wR81Q2PLBA=;
 b=Zb4t3sDOt1iAgwgxJYTRItvCGI3QdgP30AA97LHpZJb/QBgojiHm22OI
 xA03zaMgrgYS9G2LuLOHw9oyoNeeRrjznrwyFcBddcCFH+HoLu7DT4gbE
 wctN7FucCrUUfqHQIcfBd/77rmQv2SNaMC0WH7yShtuLdrlABEUDUrdzl
 aidr2s22g93qJXy7GOxIz+cD/tA+NNrhvMydjbIxROx7KFDZXyiGXNdq0
 QJ6/RfOnTXk5hV888jGNz5q9f3aR4N74J4nUZoMFs4G+uhTCRnPoIElyH
 YkhhFkP0Cunjg+eSH3WdOzz1LUgSTGoySa+my/DAPdFMKMNjn9i3sHG2u Q==;
X-CSE-ConnectionGUID: +rb6t6wQTH+2aPUwBe/Q4g==
X-CSE-MsgGUID: nSbWS34+Rg2MI5VL3eBWpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="24014301"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="24014301"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 10:37:27 -0700
X-CSE-ConnectionGUID: F+wUTf6HSni7CjvzNwZb7Q==
X-CSE-MsgGUID: Co+jQ6w1Q4aTUz+NqVBixg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="96150176"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Sep 2024 10:37:27 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Sep 2024 10:37:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Sep 2024 10:37:26 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Sep 2024 10:37:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DdkjM0NTsEnvcmerhZ9nddwbVW0yIjg2xV+t2G5OEI/fwv4H7vOlbgRl2hxy7Rn13WhMlz7BHSNJXNGJlgSfEEAKGgtC0LuOa4D6kSQIjh9dIZh7zvqTE+lTP0mZajklKyAO8eFZ/ONNXa1yjVhPFUzCaME6Yz/ygtm6OYrqD59vC/bBHZpBXrdln/Umyh/Dbn2tLVLA/ZvDZDI8w8GO7b4kcJ+4MQA/XZP3wmhh8X/XIiM3jSqTlPPkSUaIhXdTqGcLEGlJnGBczoyzOkybbzGd9Jbr9Wd00L+RDDnpfCsPaEfaXbDS1TqrFKAzCej88ZPPKWxC9mt3SFnJNLAWZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zryKqmApImyfPzUnucGncfN0+2Ch7EVKeQct5ZSOgDg=;
 b=GrXv9BIJKRwuIVG2RQdXIcloun4+CTPaK6AkaQNTBBoIJiRNi1LYud2IEkrQa9kCCjvEUNILIuwDC1lqyPiy3Ypb2oHZ32zwUn5pXYBdYtGEeDU/YMtFRZVcup7gV8GhPm+KW+dNBTe52/lAwd2MaH4x7YZFIdZ0mJh0f+BnYG95wfzv1QoKadQ6zYdzMqfPXcYYrKd3yZcyrMbATIoBsDKEqy7uN7+vIR1aj0r8qK8wZqMizVKvXT8g7akqGHBl3GwMO+7/He9/r/xBA55zpcEzWb88V6Id0KIPXe5WcHBzQNrEpa+IveBiAwU6ca1C9Vaqp3Ggv34apb+nyDYuPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by IA1PR11MB6100.namprd11.prod.outlook.com (2603:10b6:208:3d4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Wed, 4 Sep
 2024 17:37:23 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 17:37:20 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jani Nikula
 <jani.nikula@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [RFC] drm/xe/display: Merge xe's display info probe and i915
 HAS_DISPLAY checks
Date: Wed, 4 Sep 2024 13:37:13 -0400
Message-ID: <20240904173713.26891-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR04CA0111.namprd04.prod.outlook.com
 (2603:10b6:303:83::26) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|IA1PR11MB6100:EE_
X-MS-Office365-Filtering-Correlation-Id: 863b308a-977d-4530-83bc-08dccd083a01
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Sec6tI89iwe9AbsyTX6kuvG5u1Plh6L7SRPsMs8PYpfCdXAsM4TK8taGozSb?=
 =?us-ascii?Q?PgOfQqUD+H61mfkk5EBZEL/e1fCnxWV0jvrdYDvxiAAPjCeEPjTjAdmO4fHN?=
 =?us-ascii?Q?JFYKvDKPlpIY+2fpae4O4MxDoBFhqmuVhYvRQQLu+9cm7VCgt29DTV3Ghmt5?=
 =?us-ascii?Q?hxAUtPEUduYL6cjHEK921yYYQZBjXlDvHPR9zo4X3vW0UidCQn5J9BOyiZ5W?=
 =?us-ascii?Q?ZMu6p2J0HI/g2H/j87m7qH346gZP6MLbZI428A6OadlIiaHR+TqNQqWe3xju?=
 =?us-ascii?Q?IkZ+gnm+RIVV+8YQhmAZrp23msraQipoRb2R+kf1QXKn7dvVj/wBk8VOdHdG?=
 =?us-ascii?Q?XPkPWGTempjy1hgNINrlGSDTT+h/89DM52KrgWP3MKSAl8x87sxBfcxHv/hr?=
 =?us-ascii?Q?NY8ZBqRKaOhr4YfBoUhyd3LuKN1gTVCky8YOg0SU4Vq4MDoouqp9TsLMWHhJ?=
 =?us-ascii?Q?3JVcV5qYBSikxRZBEG4k8BJOsYcl8f04yztcuzlpTLHSf2cJFkgJ1TXVP3sF?=
 =?us-ascii?Q?tJn4qDO339J6N7lmQhgRxNxH/QdutwTadCT+Zd70INbzVX4IWv0ZArIbdw5e?=
 =?us-ascii?Q?TSIPLCZpGAhdoOrYJ+s5R4loA3j6ecyWW9SPMo975IdOpK4ATMz95QY+zoA8?=
 =?us-ascii?Q?+C/5n7yw6kLmBdU9XgYpYkPgHjv9rqYL1XP4w8RQwAW1Fa+Ip/EEjYS3P8Ca?=
 =?us-ascii?Q?mLIE+IRwA5gC2b0XmuWrlhHMN8BXKwV579z/ozedF+8TNpUrY76xyjP2UrAg?=
 =?us-ascii?Q?4pPn3ZQawuizARKXZyaMEYS3USIl3kjfoMrUupdN0u19qOtH/aD6wwQvuoGW?=
 =?us-ascii?Q?HqW64Tnz63poUQT9LqAL3WWEwrvYpPJ8IP+JFEs3rCwx1dNANPPMbf1XiHEz?=
 =?us-ascii?Q?Kn47vCz8837aYpmdFcbDbJX7BfULxgOOQ8Q8K9fnZbrv6x1fBMoyQXOF27h5?=
 =?us-ascii?Q?DYTSJlujkbJqbWyVY1EB9czWVekvyDvSJ8aBemQcT++KrleNDM1OCtehsHtj?=
 =?us-ascii?Q?WWgIYHFXobexLIwg3Pdr1+Zv9thOMq71WSKkpXl1anQ1xVQcDzIl9588M1rI?=
 =?us-ascii?Q?DfNU6UMHzncug3JojIZCQdIhZ0KbrNLit/3MdFIjqvbp8SyuIq9y0pNUer9r?=
 =?us-ascii?Q?DAcdErIp74W8+/AsMsU34u0L0+H+UXBFZF+EbEeaIUitYo/jQ2j6qPk2T5dj?=
 =?us-ascii?Q?l2ekQKM+3vd9hi9IadOj3otbd+glz6LqJn3B2mc+MkZINWk3Eq8UDlsxIE0t?=
 =?us-ascii?Q?Gg9XpoGDt1CRbKYg2aqFlc39rznB9c/BYQ/XUTjxkNAghzOqHE15QULND7Hz?=
 =?us-ascii?Q?sadMRm+ucG7o3cpJs9f1aqU1a3ZTu+dnr0W/NnSuU2Wi6Q=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5CbS+g9DhUnXNaueaUM8bBIsh5tNINSG9kbOQ0cfIL9vZz4DeqB+NrKDuFhA?=
 =?us-ascii?Q?XoWDTOXxcBqiT0gI7gnWkb7OmOdmlkIWY7JH5j4xEXEo7hagH6nHmFYarxG7?=
 =?us-ascii?Q?/EI5w+7r2hJppfo3XO6jttWxN4v6Oij6O/1z5iJQIk1OU/Ac+pLS3wjTbGO9?=
 =?us-ascii?Q?nhcA0zx6O9HrjXV4D4k2dhCo7nsOfWPQlIRj3nklV0dlhqi5vXkch1xRLxLr?=
 =?us-ascii?Q?hQ3Muzts2AjY3a9vIx1GdbmPKRnTM/0r0pGOXzY96ledbrVyrhOztdRrDHev?=
 =?us-ascii?Q?udsepTKevQE9R09JTBzTP0nG1bDsl6ZfIS2Z38OHKi5pGqA4+RJSr308MGci?=
 =?us-ascii?Q?NzS8fi55FjRt0BW07aTscb7a6ODuysSDjRZheaJV68wKAShdV/LeiQyQa9k5?=
 =?us-ascii?Q?789v5mrgPmkYBupjSHp18UIaJVlHMCqof/yTvjYrDvFZyBxhTNbAqjRQlj1G?=
 =?us-ascii?Q?9WV8WkczL4IxGiN0LXXeD5pt+hCNyf7cPT1FlHsJrkz1YKn9r+YVTAVVwREj?=
 =?us-ascii?Q?3Ve4LGCGJN7nfHqdD3WEGPVUxw7YTEqSRnwmoXqIpFDTwndqY431nVGcyrUl?=
 =?us-ascii?Q?vAS7lIOI6bnsRHV+2aZ9bwMC7FwMLKiM/lqfCjOTJvCqkuBm7lupdddEMfCx?=
 =?us-ascii?Q?tSapnH2UqdA8DH0si/qPr4WlXWDKnfCoZqjxDzwo8aLe2IoHQadMDjbWLjyw?=
 =?us-ascii?Q?ZIXLrLfmeb0Zj66NTgpxcHAMlDV1nVlFsewrhgVsjcIeLiF6jFEeOvcNqJAd?=
 =?us-ascii?Q?qdwJu9dADxzuKmbGhfoYKUVc8OU8TpfvN1WE2FR/z0cPtRZcGT+wSjpIJxCn?=
 =?us-ascii?Q?HT8DP7tFf5oBZNNc+JYyKtX+FJ7aVG5kaLFHyBD3HiaEO3kY/6070nUVxr6q?=
 =?us-ascii?Q?YNDOufWpGqUphSnIC+2YyvP791LZL6z6Kx9ZI6N9PyFzlkfgwk2JeEc6fiFJ?=
 =?us-ascii?Q?t93Vu7+Qr7RmW9u7TwIDWxf6dczg0ASkai/8hW2Rh9j3DxjZUIvrJDjoPWFW?=
 =?us-ascii?Q?HpvF3fMWdhguvuzXnPdNUx02wUYDmtUbM7qWqSnz9PCQfWTCAbIs14LO3mJy?=
 =?us-ascii?Q?P1ySatk5qZj5xQAWdB4gONpUA9pUtRhPdzAeRlAGxfymAVDCQfNF+g6oTVqI?=
 =?us-ascii?Q?GEpj/E3VtIYRn9XAak2srdfQwiqXB1aAzYZTN879Io5vY8BXcjq10FGMFt+8?=
 =?us-ascii?Q?PtNrPmuWZs5Z8Fo0Wi31YK2lhUcSktOreB0MOXexX2Fy2SOuRIlF5nCN5rNw?=
 =?us-ascii?Q?0NyY6eUwD3z8Z/IidiAuCo8pb/5WbbXYp1bySGTVYL0cA5NAQIl/6sCubFjr?=
 =?us-ascii?Q?Y03GHfbLgR0273AQ89EArbNA7DcEqKS8vKQxywbiksFTXbGp0JNrToVk4r1Q?=
 =?us-ascii?Q?we/GMkl/bz7Caw77LVWj3WTiyKqh74xZP/Tx1Ms3CzvcaG1nZP6qV8LKTtX5?=
 =?us-ascii?Q?UYaOZkPIlALgx1XQgFLs175YxpQ5qbVu9wdVXEiFNodYLyzvw/i3NVNIZOkC?=
 =?us-ascii?Q?La8MhG3ljMIplVN+dhLnzcZ/AJSqtebiKTDB5sZ6DdqeaT0k2rxFG1ngX3cQ?=
 =?us-ascii?Q?xzsDut5dvDl07a+1CvTCWg4EZe4We3dqSray7BhxdddpuhrAkQr0G/WKKeGT?=
 =?us-ascii?Q?ow=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 863b308a-977d-4530-83bc-08dccd083a01
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2024 17:37:20.4025 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9pQmnSNXDo04YLXHZxZH7sZ5omU40zgWx40wmxNTViesleahXqz16LnwCfhZhWbWj6efb/hF0nvc+8a0bL4itw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6100
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

Instead of having multiple checks and the has_display in the middle
of the functions, only execute the Xe display functions if
Xe probed display and pipe_masks still have something valid
after i915's runtime init.

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 65 +++++++++++++------------
 1 file changed, 35 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 75736faf2a80..1e248c7aaff0 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -13,7 +13,6 @@
 #include <uapi/drm/xe_drm.h>
 
 #include "soc/intel_dram.h"
-#include "i915_drv.h"		/* FIXME: HAS_DISPLAY() depends on this */
 #include "intel_acpi.h"
 #include "intel_audio.h"
 #include "intel_bw.h"
@@ -34,7 +33,12 @@
 
 static bool has_display(struct xe_device *xe)
 {
-	return HAS_DISPLAY(xe);
+	/*
+	 * Xe has probed and configured the display,
+	 * and some pipes remains enable after
+	 * __intel_display_device_info_runtime_init()
+	 */
+	return xe->info.probe_display && HAS_DISPLAY(&xe->display);
 }
 
 /**
@@ -104,7 +108,7 @@ static void xe_display_fini_nommio(struct drm_device *dev, void *dummy)
 {
 	struct xe_device *xe = to_xe_device(dev);
 
-	if (!xe->info.probe_display)
+	if (!has_display(xe))
 		return;
 
 	intel_power_domains_cleanup(xe);
@@ -112,7 +116,7 @@ static void xe_display_fini_nommio(struct drm_device *dev, void *dummy)
 
 int xe_display_init_nommio(struct xe_device *xe)
 {
-	if (!xe->info.probe_display)
+	if (!has_display(xe))
 		return 0;
 
 	/* Fake uncore lock */
@@ -129,7 +133,7 @@ static void xe_display_fini_noirq(void *arg)
 	struct xe_device *xe = arg;
 	struct intel_display *display = &xe->display;
 
-	if (!xe->info.probe_display)
+	if (!has_display(xe))
 		return;
 
 	intel_display_driver_remove_noirq(xe);
@@ -141,7 +145,7 @@ int xe_display_init_noirq(struct xe_device *xe)
 	struct intel_display *display = &xe->display;
 	int err;
 
-	if (!xe->info.probe_display)
+	if (!has_display(xe))
 		return 0;
 
 	intel_display_driver_early_probe(xe);
@@ -172,7 +176,7 @@ static void xe_display_fini_noaccel(void *arg)
 {
 	struct xe_device *xe = arg;
 
-	if (!xe->info.probe_display)
+	if (!has_display(xe))
 		return;
 
 	intel_display_driver_remove_nogem(xe);
@@ -182,7 +186,7 @@ int xe_display_init_noaccel(struct xe_device *xe)
 {
 	int err;
 
-	if (!xe->info.probe_display)
+	if (!has_display(xe))
 		return 0;
 
 	err = intel_display_driver_probe_nogem(xe);
@@ -194,7 +198,7 @@ int xe_display_init_noaccel(struct xe_device *xe)
 
 int xe_display_init(struct xe_device *xe)
 {
-	if (!xe->info.probe_display)
+	if (!has_display(xe))
 		return 0;
 
 	return intel_display_driver_probe(xe);
@@ -202,7 +206,7 @@ int xe_display_init(struct xe_device *xe)
 
 void xe_display_fini(struct xe_device *xe)
 {
-	if (!xe->info.probe_display)
+	if (!has_display(xe))
 		return;
 
 	intel_hpd_poll_fini(xe);
@@ -213,7 +217,7 @@ void xe_display_fini(struct xe_device *xe)
 
 void xe_display_register(struct xe_device *xe)
 {
-	if (!xe->info.probe_display)
+	if (!has_display(xe))
 		return;
 
 	intel_display_driver_register(xe);
@@ -223,7 +227,7 @@ void xe_display_register(struct xe_device *xe)
 
 void xe_display_unregister(struct xe_device *xe)
 {
-	if (!xe->info.probe_display)
+	if (!has_display(xe))
 		return;
 
 	intel_unregister_dsm_handler();
@@ -233,7 +237,7 @@ void xe_display_unregister(struct xe_device *xe)
 
 void xe_display_driver_remove(struct xe_device *xe)
 {
-	if (!xe->info.probe_display)
+	if (!has_display(xe))
 		return;
 
 	intel_display_driver_remove(xe);
@@ -243,7 +247,7 @@ void xe_display_driver_remove(struct xe_device *xe)
 
 void xe_display_irq_handler(struct xe_device *xe, u32 master_ctl)
 {
-	if (!xe->info.probe_display)
+	if (!has_display(xe))
 		return;
 
 	if (master_ctl & DISPLAY_IRQ)
@@ -254,7 +258,7 @@ void xe_display_irq_enable(struct xe_device *xe, u32 gu_misc_iir)
 {
 	struct intel_display *display = &xe->display;
 
-	if (!xe->info.probe_display)
+	if (!has_display(xe))
 		return;
 
 	if (gu_misc_iir & GU_MISC_GSE)
@@ -263,7 +267,7 @@ void xe_display_irq_enable(struct xe_device *xe, u32 gu_misc_iir)
 
 void xe_display_irq_reset(struct xe_device *xe)
 {
-	if (!xe->info.probe_display)
+	if (!has_display(xe))
 		return;
 
 	gen11_display_irq_reset(xe);
@@ -271,7 +275,7 @@ void xe_display_irq_reset(struct xe_device *xe)
 
 void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt)
 {
-	if (!xe->info.probe_display)
+	if (!has_display(xe))
 		return;
 
 	if (gt->info.id == XE_GT0)
@@ -311,7 +315,7 @@ static void xe_display_flush_cleanup_work(struct xe_device *xe)
 /* TODO: System and runtime suspend/resume sequences will be sanitized as a follow-up. */
 void xe_display_pm_runtime_suspend(struct xe_device *xe)
 {
-	if (!xe->info.probe_display)
+	if (!has_display(xe))
 		return;
 
 	if (xe->d3cold.allowed)
@@ -324,7 +328,8 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
 {
 	struct intel_display *display = &xe->display;
 	bool s2idle = suspend_to_idle();
-	if (!xe->info.probe_display)
+
+	if (!has_display(xe))
 		return;
 
 	/*
@@ -333,7 +338,7 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
 	 */
 	intel_power_domains_disable(xe);
 	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
-	if (!runtime && has_display(xe)) {
+	if (!runtime) {
 		drm_kms_helper_poll_disable(&xe->drm);
 		intel_display_driver_disable_user_access(xe);
 		intel_display_driver_suspend(xe);
@@ -345,7 +350,7 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
 
 	intel_hpd_cancel_work(xe);
 
-	if (!runtime && has_display(xe)) {
+	if (!runtime) {
 		intel_display_driver_suspend_access(xe);
 		intel_encoder_suspend_all(&xe->display);
 	}
@@ -358,7 +363,8 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
 void xe_display_pm_suspend_late(struct xe_device *xe)
 {
 	bool s2idle = suspend_to_idle();
-	if (!xe->info.probe_display)
+
+	if (!has_display(xe))
 		return;
 
 	intel_power_domains_suspend(xe, s2idle);
@@ -368,7 +374,7 @@ void xe_display_pm_suspend_late(struct xe_device *xe)
 
 void xe_display_pm_runtime_resume(struct xe_device *xe)
 {
-	if (!xe->info.probe_display)
+	if (!has_display(xe))
 		return;
 
 	intel_hpd_poll_disable(xe);
@@ -379,7 +385,7 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
 
 void xe_display_pm_resume_early(struct xe_device *xe)
 {
-	if (!xe->info.probe_display)
+	if (!has_display(xe))
 		return;
 
 	intel_display_power_resume_early(xe);
@@ -391,23 +397,22 @@ void xe_display_pm_resume(struct xe_device *xe, bool runtime)
 {
 	struct intel_display *display = &xe->display;
 
-	if (!xe->info.probe_display)
+	if (!has_display(xe))
 		return;
 
 	intel_dmc_resume(xe);
 
-	if (has_display(xe))
-		drm_mode_config_reset(&xe->drm);
+	drm_mode_config_reset(&xe->drm);
 
 	intel_display_driver_init_hw(xe);
 	intel_hpd_init(xe);
 
-	if (!runtime && has_display(xe))
+	if (!runtime)
 		intel_display_driver_resume_access(xe);
 
 	/* MST sideband requires HPD interrupts enabled */
 	intel_dp_mst_resume(xe);
-	if (!runtime && has_display(xe)) {
+	if (!runtime) {
 		intel_display_driver_resume(xe);
 		drm_kms_helper_poll_enable(&xe->drm);
 		intel_display_driver_enable_user_access(xe);
@@ -441,7 +446,7 @@ int xe_display_probe(struct xe_device *xe)
 	if (err)
 		return err;
 
-	if (has_display(xe))
+	if (HAS_DISPLAY(&xe->display))
 		return 0;
 
 no_display:
-- 
2.46.0

