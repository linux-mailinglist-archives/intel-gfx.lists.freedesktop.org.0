Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E6C87BE90
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 15:10:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2D0910F91B;
	Thu, 14 Mar 2024 14:10:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H4rFP4WG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B219B10FB85;
 Thu, 14 Mar 2024 14:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710425446; x=1741961446;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=u5srOVikEvUH9Rx2C+q9Zito8xIOq4nSLicyYzabXS0=;
 b=H4rFP4WG9DPajZpkha7lK3oQuQbT8UwCkH5Cg1QmM13pDoWW+RiZdQfS
 2Tg5ZH3Jh5nKUnQ1apfh410a1gwJEy2sCHUk7RzQ2k7wtw0O1GM6jtncT
 7M7qisZJhFWWK3QVB5xJK9aS6hgaseF8GL1omZW3SCaYXgmGt9F/pvDfa
 QgpTYmW5Mq5RZkHiSYQMu+pdKpVPjS3OMra7DEEiORYF6jxDTyjDcBFSp
 eq9SNQcSH8Q71isaT3/9yBwLzY8VgEKjd5uOUmxgS+HGE2R39YVRDWRer
 MGAMPlzMgIJ7u/YXLrXEIXWEdV7l4xu1edaMHOO3Ju0XiLlaQStGW0CDf g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="30682988"
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; d="scan'208";a="30682988"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 07:10:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; d="scan'208";a="16963226"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2024 07:10:44 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 07:10:44 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 07:10:43 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Mar 2024 07:10:43 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Mar 2024 07:10:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GbwmzZ5g7hP/PVRnQTTsFvRsixWemmYhplbrFGXK4sCFugzAkmdeJaDCXKeiRFYTtc7gyczLW6x51i0cOZBfqg4+5lr+Wb86MErsN+7piabHL8nDR9jR1o6bMcR5DCXMnwFFJHpFUQZHunpHnCRUAMF323ugmGFSLyEnFcYxX/7UAql3N3hdzpx0NKrLsHkhcYvx5hP8/4JKUZtJKLyZnD/bNkp59Z0WRCqaXZu7jDdD8BruAigPzcCxdFH9fkwBx/rCp+fmZ/2eIx29PxDMrn9UmO8FNYEqEr10g1oxsh03Ckmu05EwOH8uUB3HLbbeS1j8fWZX/hpbOF6EE6ob5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f+nnFG4IWsjCsld/fhF0PRIBU4m4xYgNPxEZxEDh6VE=;
 b=Wnm9qKs9/cXHQ/LDrbcen82hdJ6PFOwK/7qaq5XzGe33V//I9IQnE9h3Ki5mKhflr0kQ9+Lrl4GZYWQ1MhKdsRyQS05O9eDDKEGrkHi0d5FtQswag3kpkwLjgbCIc0FXxG4hF6mARk/33FNOFve6ZFbcKUi1tkLvGoxRqcbJFGf3bcY5TZ/nRSKthvI8vMavd6W49c32GnnJML/TOdFrrhq6ocaf+FKhtYxmILpenjG5sQOVx8InjNh1FN7F9LkwR3F+bnl7pjmZbz5w8l9wcYWO96Oz/w2DeyLoSQ3KHQNYbAycGNtnpX9Nb5NGKX2HY8AhIc6D7PIM9ubUw+TrXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.18; Thu, 14 Mar
 2024 14:10:41 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.017; Thu, 14 Mar 2024
 14:10:40 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <francois.dugast@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Subject: [PATCH 04/11] drm/xe: Move lockdep protection from mem_access to
 xe_pm_runtime
Date: Thu, 14 Mar 2024 10:10:14 -0400
Message-ID: <20240314141021.161009-4-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240314141021.161009-1-rodrigo.vivi@intel.com>
References: <20240314141021.161009-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR08CA0069.namprd08.prod.outlook.com
 (2603:10b6:a03:117::46) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH8PR11MB7965:EE_
X-MS-Office365-Filtering-Correlation-Id: a0df7680-f9e9-4599-1cd0-08dc443087a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GQZqflAywx1kL3W4Gqy0SJv11hS+4h585OAm0RolBJXvnCKwfMm71qWEleDlsQeDwq8FZLcRMafJP12MIwac2nZ6d4iE22+IxP5GdZ0IHT6xV36NX+38v2Bi/Dt0tp8rKp/9fAazyskPORT4nJaKN567yo3vCQbATYTyJwgI7gcw6t0yP5OEQhra4kyYSnLBjib8mYWhxc1SaqwXxuQn7mFNvWSnSWd6wR/sE7PCrtz+fqZykpkW86bFO27Tkq0Nf8uI2j7lGPWsb3Ap++lyODToipY+aNk0Jb7RyMifUMV7nKL69HzDBQ60aW+B9fZle7EJ5BGmR3bE//czqRY/V1P7mEIgthpku5fiRdVhOfCZv2FO4qZJjA4gh+VRmSzC9kwg8RkbhAW3KHKcTGvOjCb5sl5jplerSNdUuvCfb+cLwypOTSCjebLXns2x5UCJLBKYnIVG4OpBToG7RjiNa8sAYzZXY2txOgkbx3R5X0Yxtg3AUr48DwRwFddJvky0DWSs3wZtdmV3UYjaoxi5SVZXQ7VoDZRH9BGbppMM6jSBmPOcA89wcyMV2Z1NCc3z4Ponqi/y1QTvCrDxVn9XXNHyzvz5B9PPDI5wE2V01naGfTeGZNtNw6ZaY5IuPEaaCWcUyV9Du0VajxB355Hg5B/tY+MryW422YQqja89Dtw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cAW8hSmniDOI9EIimjP9GHyNxD+ExTuPqjqX7q1K/gYsY0eSB0ECK9kxT8n3?=
 =?us-ascii?Q?p2Tr73JzRqajv9h01BlCPFsxGq5Ey/+JYSkgdPtrquj2YPd57JNiGTyOqCrA?=
 =?us-ascii?Q?SToDLRVvGe587JY8bwLFVkovj2myJuAxXR9vzqlmYm4lyWg/T4s26vFFlsHS?=
 =?us-ascii?Q?UzMd+PtYDUfUqFr30gU8NB213MnTrMZ56EsW55MSh5hqAgLEAvEnqIDEs3pk?=
 =?us-ascii?Q?r1oVasxf5p290amoxBRlf5u56623zhD0iPYb37a+ZBYtqdqxsZ1cIcEwZK8I?=
 =?us-ascii?Q?X2+h/QW5r7Nfsx06tGQmZY1Kfy+zWuYZUEGFGyv13e8adfLvQzJfO7eHzTHX?=
 =?us-ascii?Q?MZBp0em+GRv26InH5UDukC2sIt/RigQYbzeDDRKiuqUv7+JiJzoDq2GNO4Zc?=
 =?us-ascii?Q?M1/hcFG+qF3VoKAX6M2Ilxq6+ySHdPtIBlxPCaW/U5V7ncmahWNMc0AgVzIi?=
 =?us-ascii?Q?5ScAMzOT8AHXLFWAenPUA7Ux1qGVZYID60dtIJiQ8Y61cLwJYMJXH85CHeuN?=
 =?us-ascii?Q?vaEuaE6CSkH1iwXYbp8woJRcOpi9OL8axGLGYqzKzwTv3ck05Y38/nB279Ls?=
 =?us-ascii?Q?UZ3D9yhWxuaRdivZN54iMu26eHo7+H9/Zgeb/YnhUoByqkDNsh8XaFkYMHfc?=
 =?us-ascii?Q?cjbmZhMxk6taBZkgL4bhruezi1VCIvur9mfjVSWb5FuZZGFhYi5YnJYECBXn?=
 =?us-ascii?Q?oOVuLOFCkcWzuBho8XIk9aWptfS4ukT+vomodJ2BoWBaGvBdpMs6UTsTkHbL?=
 =?us-ascii?Q?Jbqic6lXKx69d8ZTP/3M6KxuYutJFEA7tWFgSJNFdjN+Roe91SB86pvoZEPb?=
 =?us-ascii?Q?wNftj0f06L8gB2GOOdCfn0YOZKmRta/1DIV5qqXyVo04uMyPSgisIlH4+DKb?=
 =?us-ascii?Q?simj0Yl7WDpGJKRfar1hkQiHrUu5H0XoFrfJVITQ4tJOD4UPZqZ0FX1yMsOT?=
 =?us-ascii?Q?ZyBw+TNoErHsibL3b/Mfi6IWOpIL1sY1u5zETsO+2bCFfaRQ+DfUYGp/5qeI?=
 =?us-ascii?Q?ZJTx/Xn+l7s00hiYtYFOw3bfa3eqb4mxS5kXvRaq/JfPL6ALIdp1ZpbBenLJ?=
 =?us-ascii?Q?lShfaB3SC/uaDBE9zi0xCilsKqFLJP7eaRJFaODjjgxUnoNF4+M6VP0rwE7/?=
 =?us-ascii?Q?3TKIVT0GzEladHGc+Rx8jAyjHh6WF7U6Gybu2lZg8gClAK9zcd7U7QXlduhw?=
 =?us-ascii?Q?BC1btcXG6I4bJxvDJweYkqiUHsXpxLzWvR2wAMRov3+IPYiQmj0d/pWKuDN9?=
 =?us-ascii?Q?enq99ZlUW6kLBc8ZyYhX1+mmmSf2/tsQgQYqmlo9UvWOuyozlLgjSmG90KZy?=
 =?us-ascii?Q?x/HrfXY0oC8RvrajDNLLHJ0wYNkWpMG0qTm6XOd1YwBsGAueZgWm9tHQ+RcH?=
 =?us-ascii?Q?TIeIMI8+R12qpfzkc7aVtJ8g5sIkBEWvds+byjGCBoWKPRquuJrV94nCf9lx?=
 =?us-ascii?Q?/KFOUBA4kFT9PGXzkewO8KDXd4HcgZIOSTFbtKTgfq13glHBqfUSc/YyWt1Z?=
 =?us-ascii?Q?CvQvMONp7BIQXG1EDwB/0mbc+AT3ZAgqauzrojkfwIJO4dtVNhWwFFr4bSp3?=
 =?us-ascii?Q?2ANnJonC3OJb/1r7W4FqQ83bpDV1PWEUnFXnLkrAEh63H9WgC5it3TNhokJ6?=
 =?us-ascii?Q?mg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a0df7680-f9e9-4599-1cd0-08dc443087a4
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 14:10:40.8181 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LTckQTvVw3X/H+pbyeV2zWiQgvcOgdSTvv3OEKi/uSGc2Qbl5k8+8kEq36fRWHUatO5Uzu8GtwSuUR/ayoskaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7965
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
index b0bfe75eb59f..82f686595b16 100644
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
index 2e1362cf8deb..9d87a68ba6eb 100644
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

