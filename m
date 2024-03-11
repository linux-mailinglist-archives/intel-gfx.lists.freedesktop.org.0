Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 091B48788EE
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 20:29:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E07D10F25F;
	Mon, 11 Mar 2024 19:29:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eAUTqfQC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA42A10F25F;
 Mon, 11 Mar 2024 19:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710185339; x=1741721339;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=1/ed0vB0oTZwRO7T2CLNMqd3OquAweHNu0LmXwme3Hw=;
 b=eAUTqfQCXJolz0f4yBLnWFpfYPe98c5QEPOaylGrvU04Udi+skFgbsG2
 YQyZSbFRXcYRoaUw4oNgK3xA4StQGLBGUasAsYjE8UGuE/Qbw1CBEzIJt
 OJjRE4S5U89AKYePFJV84GH7LKnVXRSMOjTj6mXviO4sA5zJQ73eHH/sd
 fPKC4Lod1t7JkmM0J0AmJi2FfTKRKa0ge6sCnPMRybb+SaHKgIW5DwmIP
 yIYmydinUp8fZUmltSkRmxXUKPJWxuOT/seSvqbxdz/VJTe4Ext5gERT3
 5xbaFdudXOipyc3UBxqTum12YD2xlxMxZ/N616E6TvAVeQk31rdw2Q5b4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="8627877"
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; 
   d="scan'208";a="8627877"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 12:28:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="11346035"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 12:28:51 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 12:28:48 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 12:28:48 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 12:28:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kSS2KeYYeXVN8J5YD55ZTlMofk2tzpWlNCdf6k2ZThLErpUT7Uy6KjP3OJXKiO9fDdjt/2czgmkEcYK4sj+2T6vHWI0wDsXOaly7zF1rWFJ3g2mx3RtiVgxgsOF8SFRBEle3X/pFUFm39BumX/USci7ryXXAjecq2H9wi6i7VTWizfZ+ZAkff6qTnjB5HiE82phLi4wDwKLCt86B4c4ACF3UFv3MWtgvjJc+rIBh+sgnfHq2W6RJIsUY7TzdewRZjgI6Q3IQtyR7QEVh9U5X/RhQtXYFzqQC2qjDbZMxfywTrRhgUMLLz+yizpWHMlmJUf5NT/nDaEnpK+tqG0oTrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c74OYXJNyS3r64HwRhDwjnoKM0T3gmKNp4WkgImZDvc=;
 b=GutRIJHtaqKr87zDdD61zW12pyPtl3nKwR3Mk8oI2xn1BYKC2wXomABiysPpmBK4qB8ZiSat1nEvctKHKPl/nkLIYfslOm8TGXNinpDgdU1bi0ZAUy/EJ6q4xJxif7M5SkQ4DC30lm9gtsXwfuP5JzbhQlou0NdYXy3fn+sM4DGqGmBecsXIlAn1O8eiG8c/u13UYvj3hpQ5mSwBiuOlnvg93CFcwKrUiIgEBd0kdFEzJrFxQ9vtctCk41FSMxqQXK+P1vt2hPU6BqQe0a2SRjjXuaPQi6OhasQDiu6NU3JM7AAV9ZU4ne5jjWOz1LrKDffW2N9GzQeW7/O/VINHeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB8253.namprd11.prod.outlook.com (2603:10b6:806:250::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.14; Mon, 11 Mar
 2024 19:28:45 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.016; Mon, 11 Mar 2024
 19:28:45 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Matthew Auld
 <matthew.auld@intel.com>
Subject: [PATCH] drm/xe: Introduce xe_pm_runtime_get_noresume for inner callers
Date: Mon, 11 Mar 2024 15:28:32 -0400
Message-ID: <20240311192832.35031-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240311192303.33961-1-rodrigo.vivi@intel.com>
References: <20240311192303.33961-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0062.namprd03.prod.outlook.com
 (2603:10b6:a03:331::7) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB8253:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b4bbb94-8ed5-4918-7315-08dc420177d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9tmhjM1f30in9uugxyZPn2EyukPebtPtd2ITPl7SUHfLczyDzgO8/z46EahPtGV+7xpkng9LqJsk9WG7qyK72WBXJihCNL401MINQG7UXt3cqcNwNUynckeltmbm769P0S3Nlxg/xcXHpvca+YE2Yn3h+2lyo4RvndmOP0yNyqdfqBUbuj3kL1EePRMvcaheMnXE+K9XERLV3vfymu+0oy2eKYPWE+vTu8fr9+H/HSbplyZtVImRBjrBml03N0Vh3Qa6Wz5WGwFH/P6+TUfK2uDv0R39U7S+LhIJpAqshCw9fzPfxTHcHP8EBX7JSSzospBTpKTfZtE2bBsp0J4cswITuhhVDmE0pBSqp50YzfPfccAj2UuQLwwhRRVG/1OMttXllz/014hUf7CXVigG6mthdvGaj0ktkpH4R9vZoh+a8M+k7eNUKlWcSN47DZSJkRZDC9aJScRV/W5n+QMV0QNGkm86fXFovMrnZM3oUbdrh/WWn5EMozuh4/aPD6sw6DYzeK54FhqotG8TKCnDM5V2spjMkaCsRA/5hUvMjdaKE5cMWyASpuCYa910XklC8OLrza9B2tL6yJLxOv4xUx4TOnjRQJoaAZes2eaFFZ6k/0uCnFD3gm4Fex5ebcCUgBaYfg9vgOua4SSFEtywqNY8JTK0uMMyoNm9ovXeLvw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+9Yh8E3EUlmm2JzxUlhiyddfsioY0dcAhEmUlYFncLp2IrvUEqdujV5Wq1nF?=
 =?us-ascii?Q?6STwvUrWxTaKk9hA6Vlniq1Iw+YDLJL9Lfpnlvseg5pOT3bawmRgMSRmXIAa?=
 =?us-ascii?Q?b0M0Dpumyk8Id4AWCJYNUGiNIio/pr7IHUxMwLwnLjPhAA3gkVLdDW8CE4d8?=
 =?us-ascii?Q?l/fhAnvm4D3CdIm1Kj17ap5oSjOVotZtDXKvATHlwqDfJd3whSAaZLtkcZGb?=
 =?us-ascii?Q?HVvyVW5snVNVXAdd6RzwK80uJ144X6avvthy5DA7GNK4GHOkYpv+TvFosf2z?=
 =?us-ascii?Q?xvvxRy/nJ9m9SiaqGFoyqg/GE3LduS/3/683pACGttO35zxmoEvySnVk3O+n?=
 =?us-ascii?Q?5i2Dt/NyseYpV6/gganWN4ljJ3FExc6OJB2vLdaYKJtUha80OwioZjmlEjkX?=
 =?us-ascii?Q?h0lAsTDTHQlFASK05fZ5Ose80Jggflk4jtbQqKQEczq52E0RE6/jDLi3tZlV?=
 =?us-ascii?Q?7yqkjVxhq9HQ9dY+iqQb1ZNqCMsuco3kJZMQuyGJa2ASGDzhy0cHU0gxI5wm?=
 =?us-ascii?Q?ZATYnfLsuzkvnppD5TqrMsVL1StZLZ0PRXuii1ZazQ4wRd088BuhUeLsAaky?=
 =?us-ascii?Q?GoZ1hRPp/5H6cjHHoP1Siej187J6xhoc5blJQTvukDe+OpEks0iE2qs/Fv7J?=
 =?us-ascii?Q?Z9sLPoxebuT8uKupgas4Knlhq/Vn2ZqxDveQUZljuY2su3cnBmSov3YX0f5P?=
 =?us-ascii?Q?19KyYfF9N2bFgFyjm/fFYwfjmljSfI5B2+xgwQGxjoc/D9gW6M2VqWqc+Mya?=
 =?us-ascii?Q?L2OY3PqIqhFcsE42sbzfP94JhHcsvCofWbpj9gha3Fjizdv3xuUQzVSYpEsA?=
 =?us-ascii?Q?OZMNxTLeXj2D9gdDbX7zxb1Wz72ZV7IFQfDZ+asjvGh/wuVlIHQLB9MowWhE?=
 =?us-ascii?Q?EjuY9nGLzNZnnIU6t/vVM8emiyOSv8KFxr21RDi2z1DhGsY4DemWwiSrQEyM?=
 =?us-ascii?Q?eWSLZqwMfYP/CY6X0huC+cLEJSgIvFk5fsc8PdSUzDRXUcglmM1BjAMVrjt6?=
 =?us-ascii?Q?pwpNu4/P/BotlaFXXUFsv3C6uHEytewO2KJJ8GpxZ4AW0WM/v27/0rUMIPUx?=
 =?us-ascii?Q?diMYRL+0BNgBbgKi8/MJalcnf9yGtOVbcG2PiSX4XNw18hLU4Kxcp3OWada7?=
 =?us-ascii?Q?0oxp8efZjQGvWFz9catYjpm1oethP10o2UI/liAiQKq5CgUQG1EnFXvF6Zs7?=
 =?us-ascii?Q?RHkIY1SL6Rys+FVmUzeg9C9iP8Nej+GwwORNAfbZydOqhx+QYAtAy85t48+1?=
 =?us-ascii?Q?AregeydaQ2j4H/8IMITzVvc7ODhscKZEg9GkdxFakahoC4swf1bu6xiuyUdP?=
 =?us-ascii?Q?bFsfCHzBafpb3J5FHKRWa4cHdnw9MM2/Qh9fP8e2gCWdHNhmEQT5fwRewVyW?=
 =?us-ascii?Q?Jv4h66G+e9e3Ld0FuyiTlfeNX/RR5RxSrL1RoATvVIHqDFot3Y4HfRdnxHYr?=
 =?us-ascii?Q?qfp3X7redTrrGZms+/qGNK79JBqNPBro1GOipFz7+Ne3k+iLYz8WdZwoJ5n6?=
 =?us-ascii?Q?Wi5n0QF96UjhDAjn5BJdYCLQesIsnPBbuBBXArMM69K1qqYulYHQV/iZ+HTa?=
 =?us-ascii?Q?CBJnbQLe5YCb9Gq1zjt1WBbDsiu1xCOW//F8vODDsZkhwQTEFDVUOZlUiZrJ?=
 =?us-ascii?Q?9g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b4bbb94-8ed5-4918-7315-08dc420177d9
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2024 19:28:45.5016 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: boyL6dC4xNtjzxuURh8vMuUKoXMsyWVCug/5EGvgiMzvXPOR49tuycbEvzpdZsCIaEugXYERj3+bXlM6AJrxpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8253
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

Let's ensure that we have an option for inner callers that will
raise WARN if device is not active and not protected by outer callers.

Make this also a void function forcing every caller to unconditionally
put the reference back afterwards.

This will be very important for cases where we want to hold the
reference before scheduling a work in a queue. Then the work job
will be responsible for putting it back.

While at this, already convert a case from mem_access_ongoing where
it is not checking for the reference and put it back, what would
cause the underflow.

v2: Fix identation.

Reviewed-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/xe_exec_queue.c |  2 +-
 drivers/gpu/drm/xe/xe_pm.c         | 20 ++++++++++++++++++++
 drivers/gpu/drm/xe/xe_pm.h         |  1 +
 3 files changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/xe_exec_queue.c b/drivers/gpu/drm/xe/xe_exec_queue.c
index 6a83bc57826a..f69a9c99329c 100644
--- a/drivers/gpu/drm/xe/xe_exec_queue.c
+++ b/drivers/gpu/drm/xe/xe_exec_queue.c
@@ -128,7 +128,7 @@ static int __xe_exec_queue_init(struct xe_exec_queue *q)
 	 * already grabbed the rpm ref outside any sensitive locks.
 	 */
 	if (!(q->flags & EXEC_QUEUE_FLAG_PERMANENT) && (q->flags & EXEC_QUEUE_FLAG_VM || !q->vm))
-		drm_WARN_ON(&xe->drm, !xe_device_mem_access_get_if_ongoing(xe));
+		xe_pm_runtime_get_noresume(xe);
 
 	return 0;
 
diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
index 9fbb6f6c598a..2e1362cf8deb 100644
--- a/drivers/gpu/drm/xe/xe_pm.c
+++ b/drivers/gpu/drm/xe/xe_pm.c
@@ -477,6 +477,26 @@ bool xe_pm_runtime_get_if_in_use(struct xe_device *xe)
 	return pm_runtime_get_if_in_use(xe->drm.dev) > 0;
 }
 
+/**
+ * xe_pm_runtime_get_noresume - Bump runtime PM usage counter without resuming
+ * @xe: xe device instance
+ *
+ * This function should be used in inner places where it is surely already
+ * protected by outer-bound callers of `xe_pm_runtime_get`.
+ * It will warn if not protected.
+ * The reference should be put back after this function regardless, since it
+ * will always bump the usage counter, regardless.
+ */
+void xe_pm_runtime_get_noresume(struct xe_device *xe)
+{
+	bool ref;
+
+	ref = xe_pm_runtime_get_if_in_use(xe);
+
+	if (drm_WARN(&xe->drm, !ref, "Missing outer runtime PM protection\n"))
+		pm_runtime_get_noresume(xe->drm.dev);
+}
+
 /**
  * xe_pm_runtime_resume_and_get - Resume, then get a runtime_pm ref if awake.
  * @xe: xe device instance
diff --git a/drivers/gpu/drm/xe/xe_pm.h b/drivers/gpu/drm/xe/xe_pm.h
index 0cb38ca244fe..119b630ad1d1 100644
--- a/drivers/gpu/drm/xe/xe_pm.h
+++ b/drivers/gpu/drm/xe/xe_pm.h
@@ -31,6 +31,7 @@ int xe_pm_runtime_get_ioctl(struct xe_device *xe);
 void xe_pm_runtime_put(struct xe_device *xe);
 int xe_pm_runtime_get_if_active(struct xe_device *xe);
 bool xe_pm_runtime_get_if_in_use(struct xe_device *xe);
+void xe_pm_runtime_get_noresume(struct xe_device *xe);
 bool xe_pm_runtime_resume_and_get(struct xe_device *xe);
 void xe_pm_assert_unbounded_bridge(struct xe_device *xe);
 int xe_pm_set_vram_threshold(struct xe_device *xe, u32 threshold);
-- 
2.44.0

