Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A904A3650E
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 18:56:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0366810ED2A;
	Fri, 14 Feb 2025 17:56:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bgHzsgfO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A897A10E35E;
 Fri, 14 Feb 2025 17:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739555768; x=1771091768;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=3z46w7ZrJOqxPNKHga8Cye3tOMHCcwYC9vq1wJJQKx8=;
 b=bgHzsgfOtF/yySEmhw8Hu5+o4sQqmP0uDlMufd/5ZGwi24KId/RPE8lu
 PXWOwRG+RWVwoEjP+IZMo36a8nESZbyEMqzNrJOFRb+o5veU81zOyVLf9
 lzSd7M23oWyxnX0fCfOCtQUpSNGjm0uTDE2y8wm3La3wIWVLeFfywNPe4
 GvW266upoqGUJk6AePpq1Ls4bCmtQz5A9mDIvgCAAYtqAmt1Dy3xEJ845
 vb84HdWuykVLfIRXIxpcT+RW8uQkq3Z8QxgL/5oBq6090T4pJhtvt66KO
 CSfqMj14e2uGY1FZVjh6V6BzSAPlXkYAoBkT8SDWCLONXKVbe7OlIOauz w==;
X-CSE-ConnectionGUID: 5tF3GnV4QBe3CkSpAyfgxg==
X-CSE-MsgGUID: g/M67mLdSOaGuQ7yAuGVXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="40348225"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="40348225"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 09:56:08 -0800
X-CSE-ConnectionGUID: Bdqoh+I1QYOXMPLj+nMSpQ==
X-CSE-MsgGUID: atrJbxKCRci4NeeL4TUhbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="113378537"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 09:56:07 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Fri, 14 Feb 2025 09:56:06 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 14 Feb 2025 09:56:06 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Feb 2025 09:56:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RC0SDLnVY+9MT+qk1Sr8Vx7TnaWt2PQyHi+ce68bZ2ohZ1lo1CmxJUpe2VkY2ZnCp+00QjNSLbF9vyk3UnAeH61QhvJxWKloZvfSguwprQbjVCPfXuF8EtLqTi0YEAgcB69L94gIEtHZT3u/Lgy0hn3gS0tk9vF/bFfxoZYtUrLwzHuryE2Sha5uGOj1LyaJfCKDDPX5oeFg4YUxU/mVAN/1jx/tXt2JoUzhIEv/uulnG6QLM86sPVhZ4KHstWTAlSh6CHhLRTncWF96Q+5Sf/5P1dgldTUX7osIshVo90bJsy8JRRqtmayltxMh9ycFIWG6wcK4zAUQjT3rznT6dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AY7sw78hyG7iGvU4Pyc5YudEJyiJgJBSihvHBSB4qyY=;
 b=mWnyjqDf7HdsarK8W8x5SI7QuBWbAsHzkScPKIqwF5sydxVD0As3b5FrGLGPiJEhBZ2H330wH/TfKn9K4yru9YZ4LHINUzf4i4fHFNuqPKMHNF3VCJINMMB4wdAHkbOivN7rvyGgGPigDKaHo46VtiOvfc9HQpV92wonw9J10moagDL1EKvKqZqijGN0duXaa+qcWEqBDo7fCX6bt5hNctRg0VrfXQdiE1sDpDp6DGqlHWAeW90GEvdxixBEUzmZRe6YfcZFsa880DHSk/AetyNL01dQcpOOpZbNtFcQkWYwazEVgZHYL5Kuiswyi0BTM81xi9iH8YvwVImPmXN1iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11)
 by SJ0PR11MB4800.namprd11.prod.outlook.com (2603:10b6:a03:2af::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Fri, 14 Feb
 2025 17:56:04 +0000
Received: from SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72]) by SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72%5]) with mapi id 15.20.8422.015; Fri, 14 Feb 2025
 17:56:04 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [PATCH 1/3] drm/xe/display: Move display runtime suspend to a later
 point
Date: Fri, 14 Feb 2025 12:55:58 -0500
Message-ID: <20250214175600.504481-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.48.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0068.namprd03.prod.outlook.com
 (2603:10b6:303:b6::13) To SN7PR11MB8282.namprd11.prod.outlook.com
 (2603:10b6:806:269::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB8282:EE_|SJ0PR11MB4800:EE_
X-MS-Office365-Filtering-Correlation-Id: cbe9814d-131b-4e18-a022-08dd4d20d946
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?g4fb6S64JlmS7E27TdcehXSOqNXU6yuv4kcFxRPZUZg+go+X4E4E3sUuED3C?=
 =?us-ascii?Q?pP67X+3h6TjZCC7Lty87Vgpk3bYwRz3zz8fqJvrwkrmHPo587qbNQ2RE8yb4?=
 =?us-ascii?Q?jtaprqd7YHYg5MzcBLksNXXHn1MyrifvdlZPUoJMqFHev8r9wotbW9whhDAJ?=
 =?us-ascii?Q?KjRjhlj8upylr4z9ngJfZaWyV5+dZjAhfFjsoOcDY+J+i7Yj/K7KOr1XOU6D?=
 =?us-ascii?Q?0ripf77lsklWjmtIFsNefSrDdH88YjR8qa14DUcuWZLZ9+SQERPn9nDG/6oU?=
 =?us-ascii?Q?fx/dZJYa/c20bm9G8V3RJzD8xSWTyomLp6CSJfBau3x/QOn9HMkailbj8HOo?=
 =?us-ascii?Q?6Sqf36neCuw+SEi1/EAfZ25s897NvIDyH32EpLjiveSjJYzWHUwYO49GelOQ?=
 =?us-ascii?Q?YqhDQx5ngERXoVbsMy0tiFUlz1B8pRTeGE7CePKjCp0nxciU/yc/f39kGqL0?=
 =?us-ascii?Q?9ogUBB2WaDDRYJiNXeK4ae3WKLiahk3qehLEAwHRBQkrMi/P6be0UX8uuqZC?=
 =?us-ascii?Q?KPHbNiA8dIiXG+EQ/9whlm50JJIPwoRvQvq2y++oy0aAnNavXBWOZN6Aa9Ih?=
 =?us-ascii?Q?E5J2cEMhX5w5t93unCi761C2NDkbzZz8BpGrjcCc29x/Iyz8lat+AUja3c74?=
 =?us-ascii?Q?LrVQXVUCkcM42FL1X4rPt0B1ANLsrk/CHCbHvEVf9/iw3256LxLbB+jfzduL?=
 =?us-ascii?Q?kXMw8ep8MODaiXfVkUrNeXl3mWMB2Y618qgnb6oPKY88xxzodijoIBcpB6vR?=
 =?us-ascii?Q?Z5OZVU/Mpy4zm7JqTlJDh7mKbfWmOjkRlAPGcWVafja6iodc604hK8nhBLQZ?=
 =?us-ascii?Q?8BW66HSTQJIGZ6ZajgHl71pBzpdNW2D8dX+yatY4OeZDz2gFfvss4sg1JopI?=
 =?us-ascii?Q?wcCexfOAJVNW6jaED6eoGVOc/b1M+mOt4oCTLRcVXfKTzlVuuMHaJTitWcHf?=
 =?us-ascii?Q?/EUs429BqhAO45jdZQYZMrCZhLUw5j5Pdec6Ifhz1hQc/8/Mq11oEaJl6Zfi?=
 =?us-ascii?Q?6pPvvvM2rDRWDqWS54d3Fc7h4bphN7UcI1y6bW0vkCPp/WVZ6ZqrStbEX8Zm?=
 =?us-ascii?Q?83r4eFhvBZ9sSvOxzXi6fbMY3lyVPq+H1EvKjZL2JfvVIaPGNQ8LCeFLQDzO?=
 =?us-ascii?Q?puQsvYAQMPbnJvcJv0eOc51bWIsnn4aWYE2jw+8l0GaS4lxTX5pPFFSro0Ij?=
 =?us-ascii?Q?05zsI2OTsiVWV4LmOUDpuXylfHrG56Y/VicmQ7ZfqESRIW23xWDJ7YeI/KJy?=
 =?us-ascii?Q?G4/XQAMYucQPTlMESnT8zI1EotbCJjTh60xxuy/sXIBUlSmDiz/Uqv/rIx6S?=
 =?us-ascii?Q?msmwdQNvIoiHuc4lSmKh/cvs2iL4vn+ww4Q3q6fSwCeMpOziBMszIXHAiRJb?=
 =?us-ascii?Q?wePUt77ch4vAO0KrV0DylU5vuAXC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?M/eNQWBhme/UvoMuzb3ZdmKIU3XNaTHrYhaz0Iw1woo7DjC7FvzsnOVPxJ5/?=
 =?us-ascii?Q?g/SpmfHPBkpXPu7v032aK9katMCrCG4ZmxqpRYGXpm9h/SzvmsGNfNECElhg?=
 =?us-ascii?Q?tX4hNt+eDo1TyJQoEkJJ7HgkRpVShSdBW730tEyWTXILL6LWSed4FnZ5tcpZ?=
 =?us-ascii?Q?M+X0AhSbZrIe54ECgSHJM9aDIVwzt0KAUVz4uMibcRnzKy2zEVmdqmWK2Guw?=
 =?us-ascii?Q?D+GH8jU/3oa7hzBaMHuevRSoFBCRUtZ9EjQzPOf0L7ulXsMyl6ADl0blou9P?=
 =?us-ascii?Q?dWx8umdnAa3cOn3yF08n5EhdcGbgaewz31xJbFtpyefUa8TO1QBydy0E3gLH?=
 =?us-ascii?Q?JjZPSifPaOmPsspOIGYSTgzoGlAZL+qAoxRLuEdQKEYRtRjx6NqmiIX6WQ9Q?=
 =?us-ascii?Q?W/FLvlyNO8SNZUZqBq/EzYpOYe3dCBp9dyfoFUurscCB9rZ1WMyHdMXzo/ac?=
 =?us-ascii?Q?dJ7eJ4oTV7KtrDA/QfcDzQwySGFWzHk6h9muDshVk3fGtl7JuY0kCz7ImvFZ?=
 =?us-ascii?Q?hFMk/NcG9zk6EqcNCyslczLO102xR4NnmjFzS5J+KqBNLqLNu2DN82wKp82K?=
 =?us-ascii?Q?N24TzJaQuj4KcX5XsyAWYpJ2oRlzCPnhbaTERbc07sQg/sdvrGlg/wCXAlvo?=
 =?us-ascii?Q?ofPqxLdR8iThlgfTjbhlhBPA2R9kleSY8CUUIm/S73ZY3yIOBYATQseWP9dy?=
 =?us-ascii?Q?2R5LsHyDpsUXag99409yPZvwQ9DvrtPVO0LKLZ3UNhFYfkPT+svE5iGAlMVT?=
 =?us-ascii?Q?7jzR5LxbyusBJlfmhqjM5pBseshAFXlwItYkCNbqh7GHG+/Oz4tKNRDKOzWN?=
 =?us-ascii?Q?PEMR/LxkBp/3psjT4VIG7fiLlZy0Oq+B7CxBPMmUZl3ArSuFuboflN7t2wPL?=
 =?us-ascii?Q?InTuZyQXis+Xos9rYlOWZZuqFJVrm9w2uKc/dRDYtZI/gmd46YR+2Qm+K06+?=
 =?us-ascii?Q?WjZXQh8UhTyKzbwp9GnvSSomAUt/pSjtQu0Cv1cnk0DtwKTXJ0WG4ZxKsRim?=
 =?us-ascii?Q?S/h7xrxSdFzLbJ5Rt3n+mIm7YLzdbxvM6w48ZHUJfZK5RG7Jl5q2FZ5iRfvy?=
 =?us-ascii?Q?GtiY0Mc6a9zD9TSM+oAZtAdY9apJAQOyy1XQjayxQ9UGKz7Nm5ZhCKjLI4Wu?=
 =?us-ascii?Q?58suBB03/Knw1b2g6p6oJ2JJDI1Zd5sr8fYOBr7M+CeWwSmduU4dHpzd1ZYa?=
 =?us-ascii?Q?/G/sjqo2O/iZOWpIMhEp235p4pkf1YrEPCTFKr3jkmA/5RCF5SBnRk3ModGZ?=
 =?us-ascii?Q?778sIug2IB3NJ0sfy7mItnpozIR9y7wJpTxoUG1gCnK5InbOXR4zg1/s4kzn?=
 =?us-ascii?Q?nhr4Xkua76HGrsFWvrGMKXrYO8PsFC1MLALuQWQfPIfLi+pFhrvGLrt74Onr?=
 =?us-ascii?Q?HvhBvD0x3WviJYsQM0LCRPOtj6bFuohPQSTlltYUrO8lBbnqohI69ELF/FdI?=
 =?us-ascii?Q?p6hG7SlEXRqR5wyrld06m+hd55bI6CUUBNCMQ6IhWRvA59sR0DvW5dpLVMz9?=
 =?us-ascii?Q?zRGIuXL5WBCCy/ILEiaM/CC4jGj/6KChTLl81n+IPILK1vcL7HlnTONfJD50?=
 =?us-ascii?Q?PpZJxy57ugbUSXDqE08lEKr2ZOc/+36qRyT/iM7AsafMV5SPYB8hr5Jk+aaG?=
 =?us-ascii?Q?NA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cbe9814d-131b-4e18-a022-08dd4d20d946
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2025 17:56:03.9124 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QFj1yA7L5KztU0XCnfYyJA+Wi1so5kFtC4bcJglvifHaESKOYMHuQNy+uxFYjkrNjgSNhsUGIru9+WLVy77MWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4800
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

On runtime suspend (regardless of d3cold), there's no need
to perform the display power sequences before we disable the GT
and IRQ.

In a matter of fact, the i915 runtime suspend needs to
disable power, which asserts that IRQs are disabled.
So, before the runtime_pm sequences can be reconciled, it is needed to
ensure that the Xe's IRQ are disabled before the display.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/xe_pm.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
index 12200be7b43d..58a62ee0cfaf 100644
--- a/drivers/gpu/drm/xe/xe_pm.c
+++ b/drivers/gpu/drm/xe/xe_pm.c
@@ -413,8 +413,6 @@ int xe_pm_runtime_suspend(struct xe_device *xe)
 		xe_bo_runtime_pm_release_mmap_offset(bo);
 	mutex_unlock(&xe->mem_access.vram_userfault.lock);
 
-	xe_display_pm_runtime_suspend(xe);
-
 	if (xe->d3cold.allowed) {
 		err = xe_bo_evict_all(xe);
 		if (err)
@@ -429,6 +427,7 @@ int xe_pm_runtime_suspend(struct xe_device *xe)
 
 	xe_irq_suspend(xe);
 
+	xe_display_pm_runtime_suspend(xe);
 	xe_display_pm_runtime_suspend_late(xe);
 
 	xe_rpm_lockmap_release(xe);
-- 
2.48.1

