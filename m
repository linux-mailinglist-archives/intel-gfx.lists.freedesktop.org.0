Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A8A81797F
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Dec 2023 19:20:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD8D610E129;
	Mon, 18 Dec 2023 18:19:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E6BD10E249
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Dec 2023 18:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702923569; x=1734459569;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=3SCiW8IY0g0pz2hVyGjFzuYiS5MV5DnJ2kTqdlBpPkI=;
 b=SWcf4t8OJNfwWO6qyGmzACYEZXCWZ9Xt74P7bQuLPI1zBPdj0bTv9vVT
 zS+/fa8xCULZ/mCcghw1n9makawPiz1eSXfYknwMsxXOt9mtFx1uV5Whf
 pS9HGtnm/9K2OE/L6g0fUW9W9HwQvZsgAqRowEwD/6O4zP2MHiuCaM8Pg
 MkGjbK0LB7gWJnRYJhCpQkPuRyxWkBoki7ENrQFy3506tnxQnIudmhuGH
 P5BGT7XRuY5dM5b+/1O1LWNkVB4ysKBVV5KgRPXlrtvTKL9eap4d8QIRY
 ci0P9c5it58eAkXnUUBvSXIiK/OxKWtI3fBu0GOrPLQoa3AXpROF0F2n+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="385937906"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; d="scan'208";a="385937906"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 06:30:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="725347042"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; d="scan'208";a="725347042"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2023 06:30:32 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Dec 2023 06:30:32 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 18 Dec 2023 06:30:32 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 18 Dec 2023 06:30:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=breZ+knHB8j+QQOiJv9cyvpZhGvMrOZZAKWYrqbUGzFZmRP2ixccdwpkBofyi/W0z1vzUEgKMwl9dEZBaKUfQrcGq6NQOM6OlemlQftYq92X7pbAHrVnEVRi/3QRiCxgZM4f2w9/TL164XrXxiU4LrXKYjeNOgNCrq3nkCG2QtOMx98KD7PohbCAadyOlc75acRPNmhGPty+33Ys579VG/K0JrJfuTyNEmGlA0L9DvDj+OgCURmBD5sJZMboeklJvNUHemyQSI5rqkJdNK4wjGATkALgbJqzv6492x10JAGtseBNycsudL2yb36bfiGRj3tKlSXEDkd1Kl6M/Wn8mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x0lF2JZb1DmVQbOvn8Ns0VIAca71+3tp8UVpCWjsQ0o=;
 b=E6OFs7gW+jFE5tYDVN55+TY7UgUW4M43jlAEncDsxV4a5f2rjtI5zjfpo686wlrrOz3iVJCAAnewae6MLHR+8540lFEylwnXe7ZesH0du0MUex+VDRr9XtQQ+UovbfZjgSDSt3/HLXF27CV+BxJftQWVKoJQxMPLJkQR0tPFBSJhcB4AbuKy7upgGbBL2nXpGQDkadHyXxmQMiDSxdNhPTsidzWTQYuJzWwXa7rVJIkDEIc1AFpkvv/CzXG2fF84hakpCubXFEcO2XeyWvo621iLuBIvXs8zD2iRxp8nNFQQT645MiD+1yBtUvQlJXD6oHIC7qVGKujiiYatJ4Cs0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB5944.namprd11.prod.outlook.com (2603:10b6:510:124::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.37; Mon, 18 Dec
 2023 14:30:27 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179%5]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 14:30:27 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Subject: [PATCH] drm/xe: Fix build without CONFIG_FAULT_INJECTION
Date: Mon, 18 Dec 2023 09:30:23 -0500
Message-ID: <20231218143023.1688831-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.43.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY3PR05CA0048.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::23) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB5944:EE_
X-MS-Office365-Filtering-Correlation-Id: 2043b6e0-1827-4320-97a1-08dbffd5e132
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5NpEoqNRYsLI38SZgP8modq8UY7bGpfANvhnkxxEP1ueHRjwHyxX1rqtXIS98WzRB5VVAdu9bFxBIR5TmGP7zZae6kLSFpjYEgcqZOV5yz9hvd/qqdeNgi15ope024xSLrTwzJ4bu5GISvrQ8iOiUuAp72ULDGAvZKALvuMSIrHvKsWKeKiXFH2p2rxaP3Qhjp+r0bH/m5QH+MXc46eFvRMHXxmRmosxcwyKdwaHlkWuQqHfoIqAyI2HieK+byLEM4WY/fFDP17qALubTrghAXP/d9c0wJcVG4/k7WK+9auplD2Z0/kXWH3ANHwXDBkLUj4Y+7KZwRYaWqnOEQAynxXfGvl0fCROZ3cw1fIWnDy+5Mvk6VYA6AL5JxaPh0wUGO8XPMnEfefUAjC6Le8QPAbkk0ZtBzLvo106hv6qOMnqQoM2aY1/c/CFDOYIMNb8TU7T7fw2vwfGKkrOuVvjyj9RRIDyAbsAuQqu94rTWU1kHezP0MC8dLFrfeasu56SNuEukCkjA+7cpHJN2shSY0ahwvbhwxrdTdjEj6kuiT/6imobRnAZ91S0tkorL+r3M+ibyZujiQv9SXwGWE+NecFx0GJqbsIybBIIDl7hFwA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(136003)(346002)(366004)(396003)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(66574015)(1076003)(26005)(2616005)(6506007)(6512007)(6666004)(83380400001)(41300700001)(478600001)(5660300002)(2906002)(8676002)(8936002)(4326008)(6916009)(54906003)(66476007)(66946007)(66556008)(966005)(316002)(6486002)(44832011)(38100700002)(82960400001)(86362001)(36756003)(66899024)(21314003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WnlaSXdKTjgvd1JYbnd0TGxleENYMmVLbVhheWpnR3lPb1NvSUlwSnJMc2ZZ?=
 =?utf-8?B?cWd6NEZuOE5TVVlXMDBVWTMza0YwSVhHNFByWVgyT09acllIZXNxTnp2SVBS?=
 =?utf-8?B?eTVsTVFxL3ZvUCtzUXhZREgvVVJ2emg5aEJ2NGQ4RnNMditta3FHOWpuU2Mv?=
 =?utf-8?B?cG9VSklDMlgwc0VCcEt0TjRQZFUzQkx2YjRQakZ3YUZpazJ1MTI1LytDZnkw?=
 =?utf-8?B?cldsVm5yQ20vNDZZU3FhM1hHOEU5ei8zTzZYdzVhM2Z5YUNLVmRML3NJZnFi?=
 =?utf-8?B?bjZoNERQUkRWRGtiYXpPWmhkZENmS2VGUnJ6TjJGS2FUWlpCZGdxWjVibTFx?=
 =?utf-8?B?NFF2bWx3NCtya1FEdUVxL29xenVlUjY3NnhvZG5QVlpFa3kyTjQyZFkyUU1E?=
 =?utf-8?B?dnpVdi85YWlvSHdvcGpHOVBPQlh5aDZuTGhOZ0VlYzhieE0xMWNpemRHcWky?=
 =?utf-8?B?NEFheXFxSktlVjkwdE1senhhRXN5RFdadHo1TU8xZXRHdm5jb1hBc2t4b2Uy?=
 =?utf-8?B?LzRveFh2NEhNUGRmaGd2cTlHelJUQndmRDAyTmJBUy9uOS9MUmhadzkreUNN?=
 =?utf-8?B?c29pY2laYmdjL0ZITVd0eWV4c0JFeVNOVUlxa1RsYzdLVnB2M0hwUGpBbGZr?=
 =?utf-8?B?d0NiL3VxMEsyVm1sM1pSSnZBS053U1FZRFc0S3BiNEtuQ0xBbVJhSWxJaGQ3?=
 =?utf-8?B?Mm03aVA3aG94WUM1eTdGWU1QMit2Q0h0dUVrWVFpS05wa2Z0UmJuMTZocHQv?=
 =?utf-8?B?L2VuWklVMGoxOGN4VVJrcFAyTWxEMDcxUTJ6d1lMOWxHL0I5ODVuYnlVdzFC?=
 =?utf-8?B?cFRzQU00NjRKeWtKNUtWYkVUdXREbC9weEx2dmF6V0lodHdlSGcvbk5qZGxZ?=
 =?utf-8?B?RkI2clNybWoza1ZpOWVkdVhEcUhuNTl6a2xhYStuZS9rZHFrejNHNkM3bWc0?=
 =?utf-8?B?Rlp6cHZxcGJSNjhzdGZ4ZWE2WWJ2R2szaTMvdGFyNHV3c0ZabHJWak1xdUxQ?=
 =?utf-8?B?Y0hNb1NBdGlFbWdIempLTWJwbVVMNUl1dHk5WnlpQzI5cHRJeXZVN2o3OFpF?=
 =?utf-8?B?UUs1dlEvUzBVQkFNRXFqT0xCaklaajhIRDMvR3hxRmwwZ0ZDVGlmM1h1UVVI?=
 =?utf-8?B?a3lQSVR6YjFOWFdtSnBKMTlSeERzdnV4dThtaVZBbTNXSU5yOVMyVVBjSDUv?=
 =?utf-8?B?Y0REd3NweVNZS1JwZUIvbkZxVkpWYzFteVVzTW9KQ0lzNk1tclNUT1FmNEFF?=
 =?utf-8?B?OUtCUGhEczNtYTk3OHhwdWMrZ2VOaGd0ejBxa2hEQjBWQU5WbjgzOWtvL0NC?=
 =?utf-8?B?MzB4dGszYzFGVERQd3JzWmQ0dGNWUFcyMmZmZGVrWHdsS0s5aGdXS2loSHFX?=
 =?utf-8?B?RFBaS082ZmQ5ZTF5eXZjQTFaL0xIQnVaM1NaVU1IRXRvUk5peXhpT2Vxc242?=
 =?utf-8?B?SHZtdkczWjcxWkNkVS81amtQQ01xZWowSHBwMFVpSlhKcnVISk5oMFB5V2lO?=
 =?utf-8?B?K0FaTnZ3MkUxalptM2JpWnpyTG1KbVY3QkZubGJ4VGVxOElTWlY4eEZreDBW?=
 =?utf-8?B?Um82bk5qNXNwK3J4L1BTVlNKZUN4c2w0eUw1K1lUM0x4KzVKOHkzQ1Z2bm80?=
 =?utf-8?B?Yk9EZ3R5alZjb0lnWm5VSzdUSmVCN3IyM0t6UXdQYTdHL2JwWGZzMjVHVG9F?=
 =?utf-8?B?M1dJeXQ0QXhiczRXUUgrV1JsUDZ6aU1pbFpKVVdQOGV5N3EyVENQQ092WGZm?=
 =?utf-8?B?UCtCWWEvNy9oVUdiWTJBb2Jmd1NNZjA5QnVTK1g2U0Zma05Lc1ZpQkgvNWhv?=
 =?utf-8?B?MnR5anRlaTBYUXYxSHg2TFRrYXM0K2twRE5HUDllTDVXeTl6VlM2OTNzY1Nh?=
 =?utf-8?B?d0poREdIOGJlWnBXYldoYk16MnI0NG9SVjVtM1JDVnFnNkd2ZG1nbzIwWlF2?=
 =?utf-8?B?ZU8zYnAyMk9oZFNtY2RLZitMZjNYVHgxSWNoOG4xWnB3QWdTSUVqb2xlVHhq?=
 =?utf-8?B?MzVMc2s0bFZyTnczT0JPKzZYa0tza3JseFp0ZkhCNzBPM0JrNjVuRkZnc3Ir?=
 =?utf-8?B?ZmtiOHptalczdnBhQjNkelZoNXROdW10SUNkd0lqY2cwT3MxRzBOVzd2OU9t?=
 =?utf-8?Q?nbffFfU3Zf0l51Aay8dlp/4TW?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2043b6e0-1827-4320-97a1-08dbffd5e132
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2023 14:30:27.8095 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6k6+sPUMLWZYBAkBvY2obOxuqAwyjcPYVbGPdqeGD0XibkBgQE9qieNUajo/6cOL0hq1pwKNI1KTAQTmdKHI3A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5944
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Oded Gabbay <ogabbay@kernel.org>,
 Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ideally this header could be included without the CONFIG_FAULT_INJECTION
and it would take care itself for the includes it needs.
So, let's temporary workaround this by moving this below and including
only when CONFIG_FAULT_INJECTION is selected to avoid build breakages.

Another solution would be us including the linux/types.h as well, but
this creates unnecessary cases.

Reference: https://lore.kernel.org/all/20230816134748.979231-1-himal.prasad.ghimiray@intel.com/
Cc: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
Cc: Oded Gabbay <ogabbay@kernel.org>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/xe_debugfs.c | 2 +-
 drivers/gpu/drm/xe/xe_gt.h      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_debugfs.c b/drivers/gpu/drm/xe/xe_debugfs.c
index f1e80be8b9306..c56fd7d59f057 100644
--- a/drivers/gpu/drm/xe/xe_debugfs.c
+++ b/drivers/gpu/drm/xe/xe_debugfs.c
@@ -5,7 +5,6 @@
 
 #include "xe_debugfs.h"
 
-#include <linux/fault-inject.h>
 #include <linux/string_helpers.h>
 
 #include <drm/drm_debugfs.h>
@@ -22,6 +21,7 @@
 #endif
 
 #ifdef CONFIG_FAULT_INJECTION
+#include <linux/fault-inject.h> /* XXX: fault-inject.h is broken */
 DECLARE_FAULT_ATTR(gt_reset_failure);
 #endif
 
diff --git a/drivers/gpu/drm/xe/xe_gt.h b/drivers/gpu/drm/xe/xe_gt.h
index f3c780bd266dd..4486e083f5eff 100644
--- a/drivers/gpu/drm/xe/xe_gt.h
+++ b/drivers/gpu/drm/xe/xe_gt.h
@@ -7,7 +7,6 @@
 #define _XE_GT_H_
 
 #include <drm/drm_util.h>
-#include <linux/fault-inject.h>
 
 #include "xe_device_types.h"
 #include "xe_hw_engine.h"
@@ -20,6 +19,7 @@
 #define CCS_MASK(gt) (((gt)->info.engine_mask & XE_HW_ENGINE_CCS_MASK) >> XE_HW_ENGINE_CCS0)
 
 #ifdef CONFIG_FAULT_INJECTION
+#include <linux/fault-inject.h> /* XXX: fault-inject.h is broken */
 extern struct fault_attr gt_reset_failure;
 static inline bool xe_fault_inject_gt_reset(void)
 {
-- 
2.43.0

