Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D88E8788D2
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 20:23:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ED2A112C23;
	Mon, 11 Mar 2024 19:23:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kBpvTnUz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21429112C22
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Mar 2024 19:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710185002; x=1741721002;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=0OH2pdLRjKObCJ5hJrT8dD78kkM3XCAK+KkNEbAS2N4=;
 b=kBpvTnUzZ9g7DCUwF3WsZST3EK98zeuUvaxcl3moHAffvWR7tqsSQmCC
 xvWL9Oi/aFWLPY+gzlI07gkrUUSIjPDrLoKuedZlUlfyuWgmQ0vIHnhsI
 D0iHZD1GIWf/GfQrI6uhX44DXtuUSz0/ypdHZU/TxZmKI4zMGEV8ebamZ
 NOTJ9Oj1iEA7GPvLPRNyaREMzeKKl2y+nMggFCVmCkEJ3/WIjPfrPeMU8
 T8P8tODe51jaKC/rxXj854BDvse2G4eH09pc+F02SHIpqnRVoEoQ+8XS0
 +OtnzwrPcWQslCRVe8SVvKPp1GxBIfFHAcZrLcVKV8osCkqjOtlboCsV5 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="16270824"
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="16270824"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 12:23:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="15762110"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 12:23:21 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:20 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:20 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 12:23:20 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 12:23:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=faKA0PovS0svJy84wOTnPIkCXGgH26wl0/X2l5ofaewlW9rgG2VlpTWQJei6VIUTuHclPXcLnwmUTBXfTE/kHH38PEjGFwbYwo2arZXJuOK24LFlSj8PA1agwSB6I2qJnvm4R3ZBjZh5IGQRU2ruplZAhCvDeoZmJR2XVql959Q4RzSNBWWpngsRqgMdWomP/hAbYXkqnOVJAA3rRV/8jV2z32xi5RnE1s2xAzc+M0j5nSkpHyQt4XguI2eMOJ7owVNzJO+0Pq80Kbz7LI9M4DnSwJe4YxMUpw1z44s4wXZzY51fRDimzFKiLXXJfyevYbJ8Zt5j1ESZUi1+ZtG4ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ly7smjagvht86Iw2ktVOVkIVjFz3nKai2Lzne3lG+r4=;
 b=EeCTjt8e6BQkF109dJHUBnApcgIqp4ZQN/0/0bU7+GfdHp1ulzlAWM9izwpFcmL2rUtLh/vnt8iSqrPuGLDYMGJfUhvywWImXtd5eCEPWbc1iORKUuhQFVLLoeRkHup5G96RAp0fbz5w2+jet+sPoBydM7wF0x7G98V0aRdrz9vbxcAbuhtZSHvRxtZ8TJjYfCz+AfE8TC7EbUpa3XInlXUNyEHRunPS2LB6CtHA5Tx0o408gpgE4HdBZtrNg4I92/T80/MuTS3CmxJnQScNvBju1lDpG1bhbZq7796ZgoUay1VWwBLloWsPVGtik4doveS81km0SzxHnmtDela7QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA0PR11MB4526.namprd11.prod.outlook.com (2603:10b6:806:96::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.16; Mon, 11 Mar
 2024 19:23:18 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.016; Mon, 11 Mar 2024
 19:23:18 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Matthew Auld
 <matthew.auld@intel.com>
Subject: [PATCH 04/11] drm/xe: Move lockdep protection from mem_access to
 xe_pm_runtime
Date: Mon, 11 Mar 2024 15:22:56 -0400
Message-ID: <20240311192303.33961-4-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240311192303.33961-1-rodrigo.vivi@intel.com>
References: <20240311192303.33961-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR02CA0033.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::46) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA0PR11MB4526:EE_
X-MS-Office365-Filtering-Correlation-Id: af1ff55e-fd3b-4336-593d-08dc4200b49c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: X8xwitK15GLAGb2yLWYO80xFzIudalZRmRL2JLogvJaOxhOTSd6ejfBM3fbwjZzJR4mGo0k3UmmrLSbNzW7NG/+cJSS822tUKVMCAhesgu9+Xzn6Qer+Vlqfei2Zd1YPnkHNz6UhTwh5OLIfqvLwNOXcQ24UaOB2s2+IO5b44MnJ8xO9fnDqfIn+M7D34MN7ndYHRJ6Pw1Fbq5wnJwkXdJXZdcxN1xVxY4pPd2IjNoOWDZpe+jjcFFAjcyQpteCAo9kI1yp9GMrQX9DRxW/i+Ze/kCtsZekKSCgQI06DKxVT+3mlfMzlVWi+nODD1JxY5mCKXFgQ+8j4L/a3YyZJsub14WtLhJnOR4yx8CK32TuGN3bfLUE2rblYpmZGu/bEr1Ojp43H6f/zcQ6KK0P8eHkR2uVexMyOBaZ2AGMVEA0nsNAW9ryE+TWRGT2d2hmo0fflknaxn4LV1KuvajsdkRTQXMwkqTKfi3zdjhq1xQ+sTIc26lZKckyseixyube5whdIau+mw7qvM8kFK5CMxsu1k6543muSZyOoCVhYfF6HJ2FJTh6do2rnxOPgfdyE+TQ/MqWUsm7/zK8gKRYZorN0a6ijvUosjRT/wLqs2ZTgL2BRFslNUG5yJFhWRJrEhk3GHEZtqVvAeYh5FcMK6T2F8OCbnMWzAzxunQYal/Q=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?I+jVLDES3PpKYDvk247yl0gQaYDM3vzkGbTWVSLwlVl7ie67OdoJRa27SYLM?=
 =?us-ascii?Q?3oRBYCyVmWN/7DTsCOlQjOE74lbNJO1HHHeSGJNePecasoPnGYK9m6saNZ92?=
 =?us-ascii?Q?I22ugXB3ochAVjpLrs56JWjsMJX75qaa8tf7EvLHHtNNyx2PgergEPO7pF4A?=
 =?us-ascii?Q?JMfWIZykuUtxG1xZfucE6vpThLft9OPgal+kKR6vqGViExhKydWJPqEwwWw3?=
 =?us-ascii?Q?nD0MBsV7eGbkJnJ8Lk1YEa/bpQFDdC+xb33amqchNIeEZRWRrkPYSd8c2krY?=
 =?us-ascii?Q?84b7gdI8ZOP9w6PMfv78SmTwaVRihhjhqVxpOl51rXlb5HhzLj5YhvlkCy7g?=
 =?us-ascii?Q?SW3q8ky3TpclRO5jNzEBUdWhwXtNnKcLoi3Gze4pjJLQQbd8wY+bXmTai4yD?=
 =?us-ascii?Q?9rkLNog4gm4RIzb8cq45MvGMZ7WcHIqelXdnxo27TBnoHFQFeM1r3eqNV8z5?=
 =?us-ascii?Q?K3s2FG+cyYuYZSnlofF4ZGV164Bu+oGU8PHqrTvLGvw43Vz9mpCS0C/rnk+8?=
 =?us-ascii?Q?45wx0cqqKVZWXXeIbVXmLmLb0KIYxdmAMtWaBXqW6LY6CCgin3RtTFbSetGb?=
 =?us-ascii?Q?QpDDgERgnqp3HeEJz5oNs8Ywo7JnMawHrjw8FSJheO6z3hBw1PiMGU7kZHt6?=
 =?us-ascii?Q?4Ka6Iz8VvobE+sFgaaJRAxMCx/sYiIS2t6PFS1KbRhlB5xQxPNN6VWzJs3m5?=
 =?us-ascii?Q?I/sOrHVOvUFPpCKIiNRArY/OFZZK++P2F9W+hZsxu0bV9ui3DJFz5fYA7W5f?=
 =?us-ascii?Q?ds/uE2yfMdrXdXdGU72iUm6bnyII6iDsxxLFaeo43j/bGgQIqxh3IZhkX9AI?=
 =?us-ascii?Q?Yrr1fCc4AIZ9pyUR4P/EzewWqM173BouucB/xRkGndKTz+QT5OGAtztRrauk?=
 =?us-ascii?Q?qcje3E4aq/bE6qnULZNU5ImkrUW1iNm354CV9RdydOOnCWM1nqqUdQenoqty?=
 =?us-ascii?Q?66wegg2ryYWqRuUDb5LXck93tjeiIfgWAccP5S3Ife8yIUVws8LhQymwn5y/?=
 =?us-ascii?Q?gH74T3/Fe4fLS2vUA+tXf9rA1acmCCsuURxWGROvzHgOMpRU9vh+cCi5EIXu?=
 =?us-ascii?Q?DzoKx1Bk2BBOdU9zCVp0SU4uddkSNiGJwQpy00Sb+cq5936FCxxr6ccZi3yW?=
 =?us-ascii?Q?ZVQe8o9PXNELrujW8pfobikYfAhPfuYdCFaZEc9qqKpHUJsc3EZ0U07Yutn+?=
 =?us-ascii?Q?2cBQdTbxTJbEegaetvZagALjN9++zIB8NDUNOhneGGvjOpSL7VaLhibit9wi?=
 =?us-ascii?Q?qkSg9WNFORyeBb44SJ0ldsAkZIytiKVS6tzu/kQFqyB8PC8IJnFGvgNLjCA2?=
 =?us-ascii?Q?sIZmp7r/+SuQCY5P3QUhwiRLP1u5tlmkedk3Vb0zb3jXBSeHO6F4b2Viw6sz?=
 =?us-ascii?Q?ZDHnlB9kNzyOiewUFnie0ROjnxhqiRdPnTElHYdwYTvRHAkei1cP2E2UK5Hd?=
 =?us-ascii?Q?MGZ7N875/u240wB+DesuT7lhLsoegOks8343ZupwuLnS/wOemUI2gXBBJ5F4?=
 =?us-ascii?Q?aKcuEJ3L8ai0E/jOzTuWmUF+5MBK5ezBt5a4CsngqDRyaYw6PQIaDzHwpyzK?=
 =?us-ascii?Q?kQ7MrwvmheV/BPUVauFTQFZU56WCjZXO65v4IeKD/GY1/6GsgY1nvnDV8YqW?=
 =?us-ascii?Q?fA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: af1ff55e-fd3b-4336-593d-08dc4200b49c
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2024 19:23:17.9806 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QyJk0BtvTepwPYGS2wCekCFDcmBG4+LUHz+pqk4VqFeRkncVIFec3lN3KXQ6Kd6quakkLqZSByuIRkAztaQRDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4526
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

The mem_access itself is not holding any lock, but attempting
to train lockdep with possible scarring locks happening during
runtime pm. We are going soon to kill the mem_access get and put
helpers in favor of direct xe_pm_runtime calls, so let's just
move this lock around to where it now belongs.

v2: s/lockdep_training/lockdep_prime (Matt Auld)

Reviewed-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/xe_device.c | 23 -----------------
 drivers/gpu/drm/xe/xe_device.h |  4 ---
 drivers/gpu/drm/xe/xe_pm.c     | 45 ++++++++++++++++++++++++++++------
 3 files changed, 37 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index 919ad88f0495..49a413725c8f 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -45,12 +45,6 @@
 #include "xe_vm.h"
 #include "xe_wait_user_fence.h"
 
-#ifdef CONFIG_LOCKDEP
-struct lockdep_map xe_device_mem_access_lockdep_map = {
-	.name = "xe_device_mem_access_lockdep_map"
-};
-#endif
-
 static int xe_file_open(struct drm_device *dev, struct drm_file *file)
 {
 	struct xe_device *xe = to_xe_device(dev);
@@ -702,23 +696,6 @@ void xe_device_mem_access_get(struct xe_device *xe)
 	if (xe_pm_read_callback_task(xe) == current)
 		return;
 
-	/*
-	 * Since the resume here is synchronous it can be quite easy to deadlock
-	 * if we are not careful. Also in practice it might be quite timing
-	 * sensitive to ever see the 0 -> 1 transition with the callers locks
-	 * held, so deadlocks might exist but are hard for lockdep to ever see.
-	 * With this in mind, help lockdep learn about the potentially scary
-	 * stuff that can happen inside the runtime_resume callback by acquiring
-	 * a dummy lock (it doesn't protect anything and gets compiled out on
-	 * non-debug builds).  Lockdep then only needs to see the
-	 * mem_access_lockdep_map -> runtime_resume callback once, and then can
-	 * hopefully validate all the (callers_locks) -> mem_access_lockdep_map.
-	 * For example if the (callers_locks) are ever grabbed in the
-	 * runtime_resume callback, lockdep should give us a nice splat.
-	 */
-	lock_map_acquire(&xe_device_mem_access_lockdep_map);
-	lock_map_release(&xe_device_mem_access_lockdep_map);
-
 	xe_pm_runtime_get(xe);
 	ref = atomic_inc_return(&xe->mem_access.ref);
 
diff --git a/drivers/gpu/drm/xe/xe_device.h b/drivers/gpu/drm/xe/xe_device.h
index 14be34d9f543..2653f53bee4e 100644
--- a/drivers/gpu/drm/xe/xe_device.h
+++ b/drivers/gpu/drm/xe/xe_device.h
@@ -16,10 +16,6 @@ struct xe_file;
 #include "xe_force_wake.h"
 #include "xe_macros.h"
 
-#ifdef CONFIG_LOCKDEP
-extern struct lockdep_map xe_device_mem_access_lockdep_map;
-#endif
-
 static inline struct xe_device *to_xe_device(const struct drm_device *dev)
 {
 	return container_of(dev, struct xe_device, drm);
diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
index 847b263afe70..393f14411ae0 100644
--- a/drivers/gpu/drm/xe/xe_pm.c
+++ b/drivers/gpu/drm/xe/xe_pm.c
@@ -68,6 +68,12 @@
  * management (RPS).
  */
 
+#ifdef CONFIG_LOCKDEP
+struct lockdep_map xe_pm_runtime_lockdep_map = {
+	.name = "xe_pm_runtime_lockdep_map"
+};
+#endif
+
 /**
  * xe_pm_suspend - Helper for System suspend, i.e. S0->S3 / S0->S2idle
  * @xe: xe device instance
@@ -297,11 +303,11 @@ int xe_pm_runtime_suspend(struct xe_device *xe)
 	xe_pm_write_callback_task(xe, current);
 
 	/*
-	 * The actual xe_device_mem_access_put() is always async underneath, so
+	 * The actual xe_pm_runtime_put() is always async underneath, so
 	 * exactly where that is called should makes no difference to us. However
 	 * we still need to be very careful with the locks that this callback
 	 * acquires and the locks that are acquired and held by any callers of
-	 * xe_device_mem_access_get(). We already have the matching annotation
+	 * xe_runtime_pm_get(). We already have the matching annotation
 	 * on that side, but we also need it here. For example lockdep should be
 	 * able to tell us if the following scenario is in theory possible:
 	 *
@@ -309,15 +315,15 @@ int xe_pm_runtime_suspend(struct xe_device *xe)
 	 * lock(A)                       |
 	 *                               | xe_pm_runtime_suspend()
 	 *                               |      lock(A)
-	 * xe_device_mem_access_get()    |
+	 * xe_pm_runtime_get()           |
 	 *
 	 * This will clearly deadlock since rpm core needs to wait for
 	 * xe_pm_runtime_suspend() to complete, but here we are holding lock(A)
 	 * on CPU0 which prevents CPU1 making forward progress.  With the
-	 * annotation here and in xe_device_mem_access_get() lockdep will see
+	 * annotation here and in xe_pm_runtime_get() lockdep will see
 	 * the potential lock inversion and give us a nice splat.
 	 */
-	lock_map_acquire(&xe_device_mem_access_lockdep_map);
+	lock_map_acquire(&xe_pm_runtime_lockdep_map);
 
 	/*
 	 * Applying lock for entire list op as xe_ttm_bo_destroy and xe_bo_move_notify
@@ -343,7 +349,7 @@ int xe_pm_runtime_suspend(struct xe_device *xe)
 
 	xe_irq_suspend(xe);
 out:
-	lock_map_release(&xe_device_mem_access_lockdep_map);
+	lock_map_release(&xe_pm_runtime_lockdep_map);
 	xe_pm_write_callback_task(xe, NULL);
 	return err;
 }
@@ -363,7 +369,7 @@ int xe_pm_runtime_resume(struct xe_device *xe)
 	/* Disable access_ongoing asserts and prevent recursive pm calls */
 	xe_pm_write_callback_task(xe, current);
 
-	lock_map_acquire(&xe_device_mem_access_lockdep_map);
+	lock_map_acquire(&xe_pm_runtime_lockdep_map);
 
 	/*
 	 * It can be possible that xe has allowed d3cold but other pcie devices
@@ -400,11 +406,31 @@ int xe_pm_runtime_resume(struct xe_device *xe)
 			goto out;
 	}
 out:
-	lock_map_release(&xe_device_mem_access_lockdep_map);
+	lock_map_release(&xe_pm_runtime_lockdep_map);
 	xe_pm_write_callback_task(xe, NULL);
 	return err;
 }
 
+/*
+ * For places where resume is synchronous it can be quite easy to deadlock
+ * if we are not careful. Also in practice it might be quite timing
+ * sensitive to ever see the 0 -> 1 transition with the callers locks
+ * held, so deadlocks might exist but are hard for lockdep to ever see.
+ * With this in mind, help lockdep learn about the potentially scary
+ * stuff that can happen inside the runtime_resume callback by acquiring
+ * a dummy lock (it doesn't protect anything and gets compiled out on
+ * non-debug builds).  Lockdep then only needs to see the
+ * xe_pm_runtime_lockdep_map -> runtime_resume callback once, and then can
+ * hopefully validate all the (callers_locks) -> xe_pm_runtime_lockdep_map.
+ * For example if the (callers_locks) are ever grabbed in the
+ * runtime_resume callback, lockdep should give us a nice splat.
+ */
+static void pm_runtime_lockdep_prime(void)
+{
+	lock_map_acquire(&xe_pm_runtime_lockdep_map);
+	lock_map_release(&xe_pm_runtime_lockdep_map);
+}
+
 /**
  * xe_pm_runtime_get - Get a runtime_pm reference and resume synchronously
  * @xe: xe device instance
@@ -416,6 +442,7 @@ void xe_pm_runtime_get(struct xe_device *xe)
 	if (xe_pm_read_callback_task(xe) == current)
 		return;
 
+	pm_runtime_lockdep_prime();
 	pm_runtime_resume(xe->drm.dev);
 }
 
@@ -445,6 +472,7 @@ int xe_pm_runtime_get_ioctl(struct xe_device *xe)
 	if (WARN_ON(xe_pm_read_callback_task(xe) == current))
 		return -ELOOP;
 
+	pm_runtime_lockdep_prime();
 	return pm_runtime_get_sync(xe->drm.dev);
 }
 
@@ -511,6 +539,7 @@ bool xe_pm_runtime_resume_and_get(struct xe_device *xe)
 		return true;
 	}
 
+	pm_runtime_lockdep_prime();
 	return pm_runtime_resume_and_get(xe->drm.dev) >= 0;
 }
 
-- 
2.44.0

