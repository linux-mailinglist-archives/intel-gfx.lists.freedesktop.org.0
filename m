Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 865EA984C5B
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:44:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07E9810E762;
	Tue, 24 Sep 2024 20:43:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hx0s75I2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE18210E1A5;
 Tue, 24 Sep 2024 20:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210634; x=1758746634;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=19T9khI/c6huW2hETQhTVTkysnKQoSJlLThMK43nIe8=;
 b=Hx0s75I2Qb944R0rFtphF8c7iX5bahALxJVoHCLa7/ap+qXure+qJg9N
 DnXQBmRvAfs8y8LP6qIFmsBNnkv0vuuEDAcAa7gH0wnwssLm9zkouIHBE
 nFxibHinmts+SimFuiL4TpRkEDHj65jWN6vJJCbm9+APvOo3RahPkZ3ke
 33Q4cFAx3F44KZnBsugJSb3l5ng1HTQn2dfH8Q2fz8f56LiGdarB1FNoY
 H1q7tjESKZ+eMr9zEDCZyNGcXl6EWL91VofY+EhUUo7mNhaBcD5kkLB+k
 rgcoshnOrMtHvjaN64fDcJOGEFQK3qCVnfnMG9FIAEPDgR1odSw5eJg8/ A==;
X-CSE-ConnectionGUID: GI72BQ6gSCK6lA7sVLmK5w==
X-CSE-MsgGUID: G9R5DYhZTcOql9T+kzHufQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="43751585"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="43751585"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:43:51 -0700
X-CSE-ConnectionGUID: rFKDE+whQGW3yXwW2MnIUA==
X-CSE-MsgGUID: 9yn+3gJPTgSW4KbqMTaJtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="76298909"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:43:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:50 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:43:50 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pdGy3yamQe91wPuDGR4F0nwPJhMCPD0gN7fpepGvb3d1+Mr+D3FAUYaaBhDkI0+oogUV/7FGYIs91H6APhdYBWAQzhdoTPkPgiEC+zzVzPzZV+3KEVIrDrh3uv/W96yqi5uqZpce33f3IjG80Be+tab37JjQoToqKnj98sgQEsxI+WXaLlEuw7H8FtMwolJ9SGw1X9nTKMyZll4t8kfLQUtHSsm/GXqTthMYUio66gtDIBdnRMLZwTYuWikvyIAsMoyd++XCaeByjfq7O5TuQUqFENWwQMfFgujB8T6sjqfOIJXAF1eBFaH5weC61iy5B7kvtJPl+8ESQOZPq65kew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FuzcOcQQU+7fscClvol9tNC9OgfDmQVNyhF4nHWJ9QI=;
 b=XA0aYA0bOyYRWYXuMO9zZRgpKr0MmDvH4/5zBMfa6qcHGXzluRDMSOIUW2t4v7uyPJXOi+UsJJrle0gmXBHTjf18f2wqzhrxWyHEPVewV2KZZ6ueY1W96kj5WqTUzNUWqRLQBF3jpy3YeYyNH6NAFPyw3c6vRl8XqAeSbQ1Qjhq/VEQ/9re6ArPc3H5vrpfgQmo6WCnxAOJOzzKOPg9eJLlZUOh/W+PigOU5VDLJMBGlVJF4kTGPNdIJ0ECCfYQS52N+Nx5S3aQkQFh2V5dieL2njC1K6+KmKgfQa0nFgFRGyOb6N+tY72ySHUqR3BqXkaS+pP5/qJ457m11vkTwKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB7425.namprd11.prod.outlook.com (2603:10b6:a03:4c0::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Tue, 24 Sep
 2024 20:43:47 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:43:47 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 25/31] drm/xe/display: Move hpd_poll calls to later runtime
 stages
Date: Tue, 24 Sep 2024 16:35:46 -0400
Message-ID: <20240924204222.246862-26-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW2PR16CA0018.namprd16.prod.outlook.com (2603:10b6:907::31)
 To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB7425:EE_
X-MS-Office365-Filtering-Correlation-Id: d04f26a4-0437-49dd-68c4-08dcdcd996c9
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?hpCbgS+7kOSGMZ5QZ8G9c+oHb5SlL+ruJ+3KuVlqiHVg1KLl+V1xeF03O7wn?=
 =?us-ascii?Q?zxndQQvNIPo2e0lBrSbEa+KGOotfQjKjBMes2pMFmoMz2Lf1nhEmceF3CD62?=
 =?us-ascii?Q?1qRnrgXBX4CygdAE67S9dpM5vd+Psxn3nQKzubIzTnq8ao4WjYz7f1HEvkd3?=
 =?us-ascii?Q?hu/JgyGbtlw3o1HgZnz+OanDU7lKgmLBAZl6LTXKLnbbUrVQfdvDSfgPED5h?=
 =?us-ascii?Q?1g61k8jIVuuGYB9CEMjQ7YzNLJfag0MkbxB4OoZNwPqIV63XoEIQq879vVxY?=
 =?us-ascii?Q?28t/yT3b8RiOI0oEU3SvsLZLcCE1c3gxUePaW6eG0QpBu9iB9uXHZjv4QfPV?=
 =?us-ascii?Q?1mi+Ar29wBUYYsQH5JGgrBgNhHVxb8jxNGar46J5qv0Tg74D0HQUn2R7V7Y1?=
 =?us-ascii?Q?DtH8uM7BqLbBW/JoA7KXlBWKR0mmLNlTcA7V8ygKDJJVF4aTs2xvZ1+si3Rd?=
 =?us-ascii?Q?5/CCNr0d1PaNNuraS2eM32yCO9fqwoC/QhqMtWP6fMXY4PD/eDJmzHvCda2k?=
 =?us-ascii?Q?AcyNDbpJB4JrUE9b+VdCHB8gqxWOmIt9k8IG2NfIHb3tSBer2NjUFqeQkAMe?=
 =?us-ascii?Q?Q8hmx6Lzx9xYJxbbfPtS04RmmZJTAzGbzzNkRBDm+rhHwhsmnzRBtUYoQQHO?=
 =?us-ascii?Q?Wj51O92LnLsAmOHm/8yiCy1gGkU1ex017+9CkEBZcFY+TppvisaE9ETOej7g?=
 =?us-ascii?Q?aNSmvx2VBATz+o4QoyV6Fpl0GAndA6iHbpKklCgasBRm4U+2fszYdTvQrVTd?=
 =?us-ascii?Q?RNAetRmJc1lIvqZgjO9KIb/XeCCm+PAOL4SjCagI0MlTSm/Ec7X6OfsXwcOX?=
 =?us-ascii?Q?AVg+8Niy+QOhbNyh4iZi4yalzbSbnQi2IbQENzp2AVYZmvxVmjhMPXcPYOUW?=
 =?us-ascii?Q?fl4FCgX5lmz2NgrQZ3pT5WfdAnI97EnHk9Lr0KdF7u70aNKNeHxEIfF7gGY6?=
 =?us-ascii?Q?WacFo+hJYNKYSSBhgVd4W7NLhFiEe0/wEodvS5p4YI9a9Q1EeFhihOQ+xrIF?=
 =?us-ascii?Q?fNA7AjYF9e9Rn72RgFKV9YzOsTDHHZ/GSPiT8dt6ULImljwMa4pW0EF1qe2I?=
 =?us-ascii?Q?0Je5sWZ6wI1+mi8Id3lHScdQOsC0Eiq9NL8re2hBgGEfKsdlg7TOFWjZYn3f?=
 =?us-ascii?Q?cJHB5LbQFKMcpD6gSnpK8BlEnx0TA+MrVBFZN5ZRB1MRSbvkQ8rnJhLgn77X?=
 =?us-ascii?Q?5Y1jYevN41a739e8KIMpG5iWFN1uypvxxlXV3JpERALZNw/X5vzCRbd1w47w?=
 =?us-ascii?Q?6v5HzyqKh3CIVBStrCXvfjAxt7FCNiLz9uWxu3aawem6lMtZGGMY3Yd5358u?=
 =?us-ascii?Q?OmkB6xPlGdzydHudujWvjxgOKjhcgEUJ93RG/QFam54J/A=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bib89YbIRrkvyPIoUD4scui5o/41eTWarpPzy3tz38TjIzNbS9DJnD3rlrQf?=
 =?us-ascii?Q?wuntEcS3FTEy2Vzmi/ibCE8kYc2R+1O5pT+kpiL7+CPSh1MYAXVhoG+hxx+q?=
 =?us-ascii?Q?xlJXqz4NQqNZZeS1KNv1A8OJAAwnB4moQOVyUxIawPKWw5Av8PgpJFR4pfKF?=
 =?us-ascii?Q?FK1EqTF9GkJrT277dWo0jlxhDeAcDCFipJUtplayivSpxuBfXNRqtC6zlQwm?=
 =?us-ascii?Q?lk3E3jA1wYAV3ETWl2i/Rx+OUyS3rbPaOjf6OSVELNd1tyvPreKT8zKAzuAl?=
 =?us-ascii?Q?iExZeAa3QM1h5fZa08qoyEkW8DZw/Eb86f9sL5dgSlmCDaLsRp8jII8Ke34e?=
 =?us-ascii?Q?sM32QPSDiM/MXkwV1xSXNPlxovmorWijC2gMtEJ0f+1eLbh5eF2KKaRVn4M5?=
 =?us-ascii?Q?UQxnIzdKoPtjI90Eh7u6bPv+ES87h2b8TTyuONKPch1hh1iJEcZtoSOHSDgd?=
 =?us-ascii?Q?etG89W3c/jz8kQhBkYMmCusT6ReVHW/3HzE7XwxaWLwTBQD66SwVfbs+gvml?=
 =?us-ascii?Q?IhSQYttDYsvqMr699fRkItlw9p9nxIjc+GA/ZuGAq+J4MUPx8GO94p4SagSD?=
 =?us-ascii?Q?IGQPm7cM7Sb8Ik5ErZU19hWwcwRob6v3DoOMVO61VwghCkL1lH4jcQxX5LjL?=
 =?us-ascii?Q?vX7Kc7+3HQHAj3b1mF52Pq3ZQMrkyzG8as+3r9dEoVY1iL0w2Dbz2XHJ+xFL?=
 =?us-ascii?Q?j3Pj8Whl63bwZXTLBnvI7mWBXCH52y3cfkDANI88zD7sF5P0XUe+8yF78uvf?=
 =?us-ascii?Q?bXcvJaovmSzXnxnZOtGtEXvdwQgNFfG34UEWCHZsfZpQlIHMCRqxBcwHnwwT?=
 =?us-ascii?Q?0SUGiSkkXAAa8QUtEJYL0TG9bxkkU0GGgt1KhSG9DbgnEqHZjjmDJT1S6kFE?=
 =?us-ascii?Q?a4ZhBmAn1MNEAqW4TLtPlrVca/BuxSWgbONECm3zykAsUVmDdMaKsZ3hTjQ+?=
 =?us-ascii?Q?FVfBIIKybZyTOK7qQv0mr0X2UPJfSo/iGfWy3IGVwLC6j5x3GbIe+o++upTy?=
 =?us-ascii?Q?563siYyVMh03TtI/HuMYRZypsCQS5BP7rowTbmDHVlq531CvIbsbsdrzPHLd?=
 =?us-ascii?Q?jBsTZgezME1LKYeVT7CXUGnUFo+kEWy0FJcVswtLCCYt74myGjkv5lGNp0DO?=
 =?us-ascii?Q?LnrYF1g9wtT/SnuTRci2sa4z88zV/fupBNbFrxeXJsXiQS2BchKdqudPNkMd?=
 =?us-ascii?Q?PtBcgzNu1dvBKiY96LDACjBIlo5yXgeFrIxAIsXqmefLITsIVmye/kHMnIFN?=
 =?us-ascii?Q?/5EkBixT2fHfet1GOvXpA/ON88TBKbiqTUlkbr3TRW7T7gcZG0brhWQ//Zi2?=
 =?us-ascii?Q?GkftElhHAd6NjfPtjqyktymLkdAf4E5QpGzEgnbfON+Yv+ehGyQDSU5h8MdG?=
 =?us-ascii?Q?9wk1YujEWnrNDQhjA8Ke8HDyuLbzGTxTUl/arDrIGmMsvQW0ns8y8ZHlnGXA?=
 =?us-ascii?Q?CDomZ27fDHfmwaYoqQR6MP6guVzth5DmA+lgyrxRq5bAa1lAKuzECbJoNqQ/?=
 =?us-ascii?Q?c02+uCNLSu0hZaOXewfF0d/g6Q5Y6TmDi9WZu2I8wgBVHc0XbgbmYyXLN6ST?=
 =?us-ascii?Q?bJkXO2L6Y6lMG2wTFVktXakrJJIlH1NWtKYAaXpi0JiZY5GOHtIZegaR44OV?=
 =?us-ascii?Q?Sg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d04f26a4-0437-49dd-68c4-08dcdcd996c9
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:43:47.7274 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XcadKd1m+wrIv+rKlkI2FaiWCH1oPBhgqXTauJyApKXKc3QZkWdXw96PquGaPIwkBPm0LqZeRGaLlgIn9u7mVg==
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

Align placement of HDP poll calls with i915.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 4d1dd5294b89..c758874a9059 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -437,8 +437,6 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe)
 
 	if (xe->d3cold.allowed)
 		xe_display_to_d3cold(xe);
-
-	intel_hpd_poll_enable(xe);
 }
 
 void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
@@ -448,6 +446,8 @@ void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
 
 	if (xe->d3cold.allowed)
 		intel_display_power_suspend_late(xe, false);
+
+	intel_hpd_poll_enable(xe);
 }
 
 void xe_display_pm_runtime_resume_early(struct xe_device *xe)
@@ -464,12 +464,11 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	intel_hpd_poll_disable(xe);
-
 	if (xe->d3cold.allowed)
 		xe_display_from_d3cold(xe);
 
 	intel_hpd_init(xe);
+	intel_hpd_poll_disable(xe);
 }
 
 static void display_device_remove(struct drm_device *dev, void *arg)
-- 
2.46.0

