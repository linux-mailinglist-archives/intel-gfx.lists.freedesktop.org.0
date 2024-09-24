Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B4C984C5C
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:44:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 166A410E75E;
	Tue, 24 Sep 2024 20:44:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KJFnMHCM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6680410E753;
 Tue, 24 Sep 2024 20:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210645; x=1758746645;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=4zzmANmJfZc7GpWX9u/m2RJcVTiB0MnB1cbKjvH/sqY=;
 b=KJFnMHCMO3kBOTtqvwO8SbJCgPHKJT0etK8wSfIIXieO6W4A03nb64rv
 0/iFpMGGDmPxfAHmidKSigYDoTY4WQr8VTX+3BcQAb4H78GTNpSA2LY/H
 Uw6VpFW9JCVu4vIRaw/GfYoJ8loDvBFmPTC3nCh5EP4ET3kXt1EjK291E
 cBi+MZZVuiUiwOeR/5LigTdMyumgfEweX7CnZVsC+c5vmAnMCOOGcGk1y
 sia0/70+PJLREa+oxhV2iV5BVbqqi/i9Ivbobs9rWU1nuWLNj0GtlO7go
 o14wc7CSqatqoatESVJ2NA3/cD6Qc3Ogp3DlLssmdW6Qhm1YmpRN5A7ef Q==;
X-CSE-ConnectionGUID: 7nHh3ZrVSeuy9KoVpddg3w==
X-CSE-MsgGUID: KgwvSHjpR2+baIPCGXtEPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="43751618"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="43751618"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:44:04 -0700
X-CSE-ConnectionGUID: jvDelCkiSQSaDa7ar5PkJA==
X-CSE-MsgGUID: TeatzF2tQEKu9fTe0CDNug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="76298968"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:44:04 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:44:03 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:44:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:44:03 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:44:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xvPVN79yVUJYHvsYbwOTs1X/H9rhWbvVXs22gnEUtLG3MY3DVHdlJ2VH9MBgKToaZ8M/UOPaZ7BrhyyOVqfqUdtiQ4pgLuhesW8CmnXDoaVfYXZjgxEjNJYvpueuVvIgAkHtECDVaFcTDbBucNd9wvA1oJ6OKeCnNGzkTTiL76VH9HHvDU4TpQOXq/14wGn/lY1HC1mBGwa4PTfJ10yQkroQpDYx6zQZN3kX2jMpWisMuV7lcU5MkYPM7ifXCDr7n4m8dxXnY8KfwFEtR5bLPbgcV1K6xYbmAMzaz80ih2toItbwFVxBXmPGxAD+n6qjxk3yg79QbVk7M2uxuwCMhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LB1saqzz8i0kF/dEiHh+B8kxpO5+nIl79YwMI+sv0+c=;
 b=C+njtCLc2DBcqcglGql3is8ZMHW8ZPm8L9IVW7U09i4GJW3Q/V1vZPOwtQqZCMAjE9WfXasCS1/he3rim3I0XRMxdwp0Ujq4Wr3Di+xDfPJMdgh3el8eTIt6B1XhOrX7qWWgxkeZEkh9obDt2pZ3MaHlT34igDQ8iuSCkOKX7BcEEBkVXRhbEyWDOQGbnbbrfkMOEPBs0CpuF7nLo7MCUQzp7qeAHWoZ0J/xyK1djcG6T7m37pUJA/zOe7hbrxArOVaIuWJ/VovF4KBmZav21pMc+hIHDDAAgfoywGRLFuIhfdRpuoxP5U7Vq8b5+BbNGW4B+eQ1+gJwwEVDOLSexg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB7425.namprd11.prod.outlook.com (2603:10b6:a03:4c0::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Tue, 24 Sep
 2024 20:44:00 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:44:00 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 29/31] drm/xe/display: Kill crtc commit flush
Date: Tue, 24 Sep 2024 16:35:50 -0400
Message-ID: <20240924204222.246862-30-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0302.namprd03.prod.outlook.com
 (2603:10b6:303:dd::7) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB7425:EE_
X-MS-Office365-Filtering-Correlation-Id: 11098bf7-4500-48bc-6bd2-08dcdcd99e3d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?86aAjjSS1voCMuSIGWqWf59nLzTphv05W4ayP2eu5IMvgmNLyeTPRVkCom6g?=
 =?us-ascii?Q?MkrMOEexpcFPu2Yx/I8XWA0ampHwDCCYTuY6DMyN6mjSHyL8wTCQTZ/u9Lsb?=
 =?us-ascii?Q?EvWfKfTGGqjm4K5opem+7Pfv9T7dvYFb9uR/yQpU3BL0Wul6m9Cm/s/pYKsv?=
 =?us-ascii?Q?YbpSs10KK3Seedcqkmq3DFiW0+mwUIVpR6wrKzWUjoc3r/mWXZ/3nAPvlb9t?=
 =?us-ascii?Q?Q5oo7C78tljUTxmS7XrPB8p+NyRAIqdqKCkOvYwo6wIrwk8vkKaP6Dn8ZhYi?=
 =?us-ascii?Q?2poWuUlDmK0aLSpbQEYnVrLDe2hGgTd7XjD85uj/LD5lD2MdAxjin4ROElaX?=
 =?us-ascii?Q?17jdx8pAtcxu18guKMtqHx3UBZq4ImVMcTEMMPyyaKVwL09uX5WMdqdrJHHB?=
 =?us-ascii?Q?n88PM2JJ5FoEqXIPOrpetMpCIdSkaiSV0uTsdX+Xq3UnPUNsS04f98xCjvlK?=
 =?us-ascii?Q?HJs8Bi+WGGZCz7CaBQ08d+Wcy1eePy3IlmdJpBM6yVj1AQ6C2khRiAqYrgQq?=
 =?us-ascii?Q?XwFLfujpuSp6Yw1qlD2GGP5ExBNohHvyBNTJ0eYreqV3gWDSnJ2+wmrbbmA7?=
 =?us-ascii?Q?5V3GwpDY3UmQ5z0DDcbQCuhzSXu1VA4pTj/XTbu9HNjCN7seuuvptJx3GVVx?=
 =?us-ascii?Q?3IvnvgUtXQEBxK3C85sjhasz8vhzJYIhExdGiEbBMMN1SF2sxS0AVecKQS2Y?=
 =?us-ascii?Q?On6mK7pBGsSHF+VhvSfKz9O5DxL2zJHWGUWCjZv3h5JhxzOMIqPRo4OdxSoc?=
 =?us-ascii?Q?Ld3YaNkrcAsT/26Y0YZk5fLZCfiJxnXsMx8JmZ+mzz5p4FoadFDIaODQk5an?=
 =?us-ascii?Q?QZ0fuydd4iqGpR8ydADLcxXbdMYRZ5qnhzyaxDsp3RtmKj+j+Hjqt9SVab0X?=
 =?us-ascii?Q?int3I/pytLcx9PPZSYZP4qjPdBnK6NClQfF8Oj5FiYHTPWQkrZKU4JXOLryn?=
 =?us-ascii?Q?mu/DciLmSf1mg8HNtW9PkhuA9x2RwKhrXLeyqj0PtUKBBZ2Q8768mZZ8BY9k?=
 =?us-ascii?Q?J7VZBkA2xi5wniib3r74fSIk3erc9Y+PmI9OeXrDRYyZyj8WGONP4jF8xJze?=
 =?us-ascii?Q?7uWkQ/Gb5iiEgZp+2qzwxBS8M7ufKjubLucskHu+8iVvRWDMnaYCUGOFOgl7?=
 =?us-ascii?Q?PgnTtLKSHKuYOlb8o1dw8aezB7xT2rnLxAcYZPE6wiu7bmvUSeVe2Ba/vTnD?=
 =?us-ascii?Q?3LPVZ6OADrypn/8JIvd37kI0qDjropVCeJQALBoZZJiDL990rZHEYydg8uPE?=
 =?us-ascii?Q?/Sidicdw23Wxd2vjPZoIcNJYHz+ZKSuOFdLvkm+2YkXLYWSLOypcqQUdfycu?=
 =?us-ascii?Q?/5HqUaB5shQPYtpEPhA4alu4b2vV9bjuo0llbD7mi5NecQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uBWfltBn/UqXXK9+FJ6xK45br0KUlZjXFxNcMVqJHxfVnvGXgz1mVk+udA3I?=
 =?us-ascii?Q?o6BUYzZGCZvNRYM5RFVMz/3g52fItsOYTUVOCk1ESx+UAJRgRj2OFOxmty0T?=
 =?us-ascii?Q?ox8L8OB4+mK7GGVvEG+jQLg2Unnsb+TQqR2sUtFVRp0RMDYhn3ULFcFumGO8?=
 =?us-ascii?Q?uEEeYK4rpfwzpsYnqgKLXLq4A5APWVYOn2wsewjPVG17tevqKwSdz7f3qWLl?=
 =?us-ascii?Q?8lS0xRqNqnCPpyXJC2Z4MpIjNn6JPTRNV3YzzfMcHM8Gzm4ysIwssVzHuh6u?=
 =?us-ascii?Q?ZupO98SdoZB+ABWOabImItXLoTJs9fDuNAQAR3viqerDKF86QeZflcrDdE5t?=
 =?us-ascii?Q?Ne7ZTnXNdLs8u+LSik+ypOxOwqXxJKfOVZ2OI+wIMRwNoCnMWbzrZQEF0JIv?=
 =?us-ascii?Q?brqb1SsynudNRNVg3uBUFRszPLN/U85sUnu0Q5TnqP+mEU/Ko10obBxY8BTJ?=
 =?us-ascii?Q?od86qdB504F8qaeRIxqY3VvPLNm/Eh3qwtdmjfRHvP1rvOC0mcZO+bI4oW+7?=
 =?us-ascii?Q?otAmnfUHuUwfqk0WntFwiwfMxvURHPGo9PThlhHZRjrwNmfRqWDSZH0awC8W?=
 =?us-ascii?Q?I1pT3+JEasxqHhO8Jf1H8CBTFO3EKxbKu1j46SUs19poRH9F0saoAZhfLItz?=
 =?us-ascii?Q?s/n4EO0YjPtWxqAShEP8j9348JGPlUFY3u9ZdLLP+PpxwkA5Rwcs5pJn3Inn?=
 =?us-ascii?Q?rTVe7ycSKPxXODQ0ziwMnSEfhRVCWPnDzpNcrMjShfWmmcOGcia52x5dhVBZ?=
 =?us-ascii?Q?cKkThObQNKEC513x557zemN0bNbm+RTABjn5Wp5rQsXRGsUVRwWGOzKfphM2?=
 =?us-ascii?Q?TAWbKXrMk/+s+FmZF8X0Q6JG38Lq/3DjNbWpsQNCpdpTk5+HkcBakP5jCmmA?=
 =?us-ascii?Q?YKX5vyFNluNzAkhfhp7tfcbg9FqLNWHiDbz8tbgeQc+VGxbEeafeudNJFn3c?=
 =?us-ascii?Q?iAQAx0g2sC0sSjqPy2b30WXTLKfP/aFUaD+S1lMVrvDHCh0Nv5NAT2NFvBh9?=
 =?us-ascii?Q?B7BNpgOQYl1O+pZIGnuCAjgW2QKs/JK1pbufCspLuu4YUD3sQX4vbyWCNjJf?=
 =?us-ascii?Q?1WxPmWXfCNQvzFOqlz6lutUkpVHd1tVBkbdZcPGl2xxtoQHrSN4Bp2w40sC6?=
 =?us-ascii?Q?toxSeDMxzWabQ10mCHRcIH+DE/O1xkqBKloFB3qwKonUX6GzAVfgNbkGVQuF?=
 =?us-ascii?Q?1CkyVgF/ykP0CXBnhPD3FG8KI4luSnNN1ufrzZo6gegvjATIdReLszedxwrq?=
 =?us-ascii?Q?TPHaPH/tAGsU5M+MXmPkMW69KPc2GejTsdNj+4y6rgJc1G82AZ7J+n9G4q8q?=
 =?us-ascii?Q?6lzJHb+Etwttl58/FSf3iNkTKpkQXhtOyUZ4dbK91p6kuhPL2Im0S/ZpdQ5s?=
 =?us-ascii?Q?ct/dPWrLm9IIy9url1u4cpLyGa/gc8yTODHCZDOB5SlCzZw62rO1zmGA0LdW?=
 =?us-ascii?Q?oHyetbfk+JoXiCHTgv/UifxsnMah+uUDtz78lxcve43TjHNdmfg1FNDlS1Mn?=
 =?us-ascii?Q?SPdvadVhCze78YXyDI4uFPjs/bUWXZJfiUC3tQXzuOPV3OODjzB7OB33bMWL?=
 =?us-ascii?Q?vi09kbgqYQOXpWAIY+MgYHLS3Q3QKUT7cNd3Bfobd1DNDjJE+Rkmvbf8M/wm?=
 =?us-ascii?Q?dQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 11098bf7-4500-48bc-6bd2-08dcdcd99e3d
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:44:00.3128 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lxNyi/XtvHEIhOr6f7TtLdeBgVtn4o8aAvfqmj8124tMnv4zk/kaPwKVZMwE8gtFxPx7CjULKJcCZ9pfAsZBPg==
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

This flush was needed in regular suspend cases in the past.
After the clean-up and reconciliation with the i915 it was
not needed anymore and removed. However this remained here
in the runtime suspend path.

However, the runtime pm flow ensures that there won't be any
flying or pending crtc commit when the runtime_suspend is
called. So this is not needed here. Clean it up.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 23 -----------------------
 1 file changed, 23 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 780c8d7f392d..23bdd8904c44 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -283,27 +283,6 @@ static bool suspend_to_idle(void)
 	return false;
 }
 
-static void xe_display_flush_cleanup_work(struct xe_device *xe)
-{
-	struct intel_crtc *crtc;
-
-	for_each_intel_crtc(&xe->drm, crtc) {
-		struct drm_crtc_commit *commit;
-
-		spin_lock(&crtc->base.commit_lock);
-		commit = list_first_entry_or_null(&crtc->base.commit_list,
-						  struct drm_crtc_commit, commit_entry);
-		if (commit)
-			drm_crtc_commit_get(commit);
-		spin_unlock(&crtc->base.commit_lock);
-
-		if (commit) {
-			wait_for_completion(&commit->cleanup_done);
-			drm_crtc_commit_put(commit);
-		}
-	}
-}
-
 static void xe_display_to_d3cold(struct xe_device *xe)
 {
 	struct intel_display *display = &xe->display;
@@ -311,8 +290,6 @@ static void xe_display_to_d3cold(struct xe_device *xe)
 	/* We do a lot of poking in a lot of registers, make sure they work properly. */
 	intel_power_domains_disable(xe);
 
-	xe_display_flush_cleanup_work(xe);
-
 	intel_hpd_cancel_work(xe);
 
 	intel_opregion_suspend(display, PCI_D3cold);
-- 
2.46.0

