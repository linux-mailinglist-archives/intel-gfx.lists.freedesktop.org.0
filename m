Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58BA287BE8C
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 15:10:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B32C510FB78;
	Thu, 14 Mar 2024 14:10:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S2dt0QQQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CA3510F91B;
 Thu, 14 Mar 2024 14:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710425435; x=1741961435;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=1/ed0vB0oTZwRO7T2CLNMqd3OquAweHNu0LmXwme3Hw=;
 b=S2dt0QQQ9qUKwHSyVUYeZrVjedk+JoXGhs9sH6KtOkUFTWtbakkZEKzT
 eYPUv85yaTOlgvkCnS3fP3KsyWYc10oVqnFyS2KAZbfYxbX/g82HpSr1y
 ghFGzA2vNCLP8MyCVXi647yWICLx6SZnugrWSTHNHX3/2x+D9TRI+osPe
 NpRtXFAbo1gyUQaJje75SqWX725HTz29lGtqvMG2tDsRiduDeClnVt08E
 yY9eZh3UFoRCQVGviwmz2TSGZJxPmhqUarQrXzsSQUwuVxduIrwUDm7CU
 N7bMzmpyOTRceG4JQnZWIkuGRglXUhRsGhIrRDAMXT6eRQwgIymJ8Uhac A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="5426844"
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; 
   d="scan'208";a="5426844"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 07:10:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; d="scan'208";a="12229927"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2024 07:10:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 07:10:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 07:10:32 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Mar 2024 07:10:32 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Mar 2024 07:10:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XwgLR67pyu7UV3IHXHMMaGMK99SnDt6nDtmjemu07kk6E4GVCPQUXqjPtmhJxSGTxthJir8Ns9I7GQM3xKxhpFRl4SI36uZKnXf0+Ey27/cu/wEZoowGPrNVes7GSuPf6HuxwFLYn9cD2Aiq4l7YYqkRcHpVKOBgnLJEHoFdcM1MX0FE+oraIhIzK6nGOtN4l2D7CQ44aRXIR4dlb3dU2mwpWp7ELVN7FjDYzeLr6weO7ItrXUV6wcvYy8hTT3f84i87O2kLbt5imWCPhyUr5QMmDVn5B6XPTd3p0wiIvF3Ca6IFcYHwUNz62H0W0ZFwVBh4auWlFbDxO7fwWJtrkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c74OYXJNyS3r64HwRhDwjnoKM0T3gmKNp4WkgImZDvc=;
 b=lMJxUQ20CjTMTEwDXXYmvlzfN0cU3vZ3fsLZZLFFM0BgJu8rlOQhp/QYrFMp3YY8AlD3F9IN1BqTqO0cwcakIyGpcP8N6eKW2ELj5C99TXqLUGR5/jyjuoFSWG0VAR+VPohq8HNYHwKtBFDBzsslpr0BahJjFKzS+9maXtv7F8UDit+ocYtMApCGtV7ZqUYljCgLjMSePYyCRoQw1FLP5wSDEvT6ibvKvNM50Sw++bUj1zoeZKcFyymbTLrkJ40G4QzkwZ3xUvP1Ku/faX7bvf18nhEdWouYNJMr+KbV41DwkSgNRUdBEySgjltSCC3Dj2CEHGjOv1JtwItY1V2OIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.18; Thu, 14 Mar
 2024 14:10:30 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.017; Thu, 14 Mar 2024
 14:10:29 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <francois.dugast@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Subject: [PATCH 01/11] drm/xe: Introduce xe_pm_runtime_get_noresume for inner
 callers
Date: Thu, 14 Mar 2024 10:10:11 -0400
Message-ID: <20240314141021.161009-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY3PR10CA0020.namprd10.prod.outlook.com
 (2603:10b6:a03:255::25) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH8PR11MB7965:EE_
X-MS-Office365-Filtering-Correlation-Id: ac798ec6-5822-4ba5-dd72-08dc4430812f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: edUFwpTLJHbIRJ3vc+u5ZDMB2OU5i1tXRzhP6+kdt89qsO9Dj5Fct4MHtm/TBUqSJWLK3rLMB2AyYlB9Gw78fjaQBGT0TrwfoPsLOedODg+7hmjVNqUatAbCILnuz2srHh37EeQW6651He4KjUkqNflz8Chd2eo1POVnUyZxPPgRn91dI87i6rwd/X41cVHE5sKs4/UwpXf+pyQxnN6+IdwNZjdkHBBRMCtS7qUMTZ56FwucdJXFCcFo1MkMklYOtXGLpt+5/6J4xgEm2c9IFZ3TgOnvr7l5hEBGzoQpvG+fXhG8+X4NrzWkQNuN6Fil+JROptVNFBIX64GBDo69uw+OOK/gYeBSlBa+mq9vx4EN+9Fk9NoYqkkRDIlhIy1/13NXIcR6fnuhjfZDLxn1zdQH6jUMMb4bvzpDAEBYBlWedQOc2g6F6suEJObeBsgIpWvUA5OabTFQxk+xyOCZg9wic9F6SZt+QxNp15whus+CJ1nlaa7Uh0u4hXb0MhZjPRDVYRCwda0o/8arMHft0qU1Tl7pSSwNfcQjuMZlbrGYoxCLMn3qGX4i6oEvlyrLhTJZffvJ9qwgoD/pEGhapPOnIkSKBrjp3kr1mcvlyZ1sJsLcEBRR0kRmuwMCMGCtcSdsAIGWRUvJXYZad05yh6rtftc8rPdUQWqZ/0uEXWo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?b+Gyoj43hpaA9FEP95Wv5RLU1QgiU/yX4k8bGdguTVzT+2sMoqNTAIIr+glP?=
 =?us-ascii?Q?4dMHXuzc30sLEU/mqOl9dqNk7wwlhzY+I09/Do65XTHyy4IKHIM8fEvXCMb1?=
 =?us-ascii?Q?+M+kQMpmH4sCsDQ7f6cWJaMAmyZ/b2lsp5+nRdHa507oWa2guOuiytUEN4xL?=
 =?us-ascii?Q?aQNwINRr9kpK5izf9gMgMJEC/3sH+HEBz5ckoNq2oHwXGnXPzxe1gfrIZUXt?=
 =?us-ascii?Q?jbS1xyCBmMFauWAbdoqcjcVJRHTOLIs8gq/OZKkBSoTR4+SXbB4HBo09wR4R?=
 =?us-ascii?Q?BzFyS0gcJQOdHsblqv1dM6+CnFOHDqubPO8Gks9sNxH9kW0U0YmAXwjev+zu?=
 =?us-ascii?Q?4chg/LyR+wjJyeBZmtA7vKEkHMAhBzw99Qf+t/J6eW7bqaOcRQIhd99OfjWI?=
 =?us-ascii?Q?HqVWfUin7NKkwXhee1v1lTo9nVK8ytp9K53MnViZOIhATCa2sMdTs+s2huEX?=
 =?us-ascii?Q?2IdgzzodwEJbet2Xp0JW9+17AM3X7PhI2dpj2oKmzsjY6tiHylceidXDauG3?=
 =?us-ascii?Q?AClJvVa6/1jO7tDx1erAyx7mDj890pLaXcencj0PTo5kNiWEEDGJtDgcPp/9?=
 =?us-ascii?Q?9zamgJtGoX3ZyG+uCWoTElzbGTD6vMLgbrlKO85RyVDH+FD635P7haT4DYG3?=
 =?us-ascii?Q?jS4uCcelbfAwGEQ1y84GPpdGjcrXYGXv99EAA/kRBE0sh13Bc6bda2svSD6/?=
 =?us-ascii?Q?/I7KPfMfLAmRAAooSCYHEarh3M5v0myBlaj9O3/EI7t1jJVM3Kr3G8XNAAzD?=
 =?us-ascii?Q?EI8u7wPyDxX+3TsGUkebZOfNksATq0Z5yHZ+0VzJF1MzpEuDAJ6dFABcND4C?=
 =?us-ascii?Q?hck53W4qz8rv2KadMQqnvjvKfsO+xARFpKPc5TrItuCIJYDH+bZIeiHfUeMO?=
 =?us-ascii?Q?MnqLgyUyqwKd/J52pmOe43gqMfetgtFUQ4RU8iSVw0o0DfG2bC4mYmMl5GyL?=
 =?us-ascii?Q?w7ThE+aO5uFvuc3YvRSQAqfu8K5kpA6JtGTXGIbc10vzhAmSIrjhj6vVWwLo?=
 =?us-ascii?Q?2i56w2QCcSsJ0qe6i2OJTtf5dWaP/EODD6jDpwP3VngjrItb04QFlioCYmHv?=
 =?us-ascii?Q?cZ/NFdlvYzBeZi3EWqtYRuRFe/ZSbUnMNzRS+UXS7tnfn/3IwcZraOqP5Pf5?=
 =?us-ascii?Q?GkAZENQaseZPOcTnLldGND4PBfOFDzAE/VI1PleYPJFuK0lwIn7LKO+P5KRI?=
 =?us-ascii?Q?4Fsl7IdblsvjzegZ/BWDO+gaRsmrcMaRxZyU5DUBj9e5O9UR4j32Uyaz74f8?=
 =?us-ascii?Q?iqYszWjjhUWbT3McAOVygM0yBTo62dcVnW7siWJQ/2DzEjEJef6DKagEjG7W?=
 =?us-ascii?Q?q00NDIA2f2F8I+mw+cQ6IBdG3FbEaQcIUf3Ink2+2RixMxDtaZe/ZwWTyMFF?=
 =?us-ascii?Q?nriBJbhxhE8Sl9kk9c7EhdyUHsXm/UuqcCAMuz8HrLjyY4oIlr3Ah+SkAkYD?=
 =?us-ascii?Q?OR9ozNLpJBdIff8z12iVUeFCgpiNHHrlDZ/kcQFoDf7uTZwa4ZhWGkwosHd3?=
 =?us-ascii?Q?eQ10RXOKLwNNZOiLNOKiMj2IIoAsfpWO+qJsO0k2zhdGQ3RncLWg6xnlIzUg?=
 =?us-ascii?Q?3L3BhiaE1hgMlQjgt0VpU0oKoUt15o7V6rLF2gvo?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ac798ec6-5822-4ba5-dd72-08dc4430812f
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 14:10:29.9029 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E/jZfhYxyD/+ubpAx/VJaFyr3RTtyyr4SMarCpFMYiLYQDuHiwUQA1CpNQe1QWj3wx/CiKmJc1p5YKdc1TjlSA==
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

