Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A1387BE8D
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 15:10:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD64610FB7A;
	Thu, 14 Mar 2024 14:10:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WyoiRKl2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE9C310FB7A;
 Thu, 14 Mar 2024 14:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710425438; x=1741961438;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=tEeSxNf62cFhm8ja2zZJfZDOk5pdbZDczx9DHVHtdZs=;
 b=WyoiRKl2x5Jd7QgGGNEAOP3IqlDeyPoj4G8qa3J4Gqh6iv5FMX+WrMv0
 deV9J20pgpFsrdC8V9gIa0kwgTXVO+LfmKCKx/fFZ0falidKkKFddmsX2
 1cNUDG7ZWzPnm3NAN0ZprrMpgtX6jLizSus2j6va9tQ7RIyT+bjlAp3Pm
 lZMeeo51qKCJiZ+XKiAopZwvHxKYg79RddNcVRybztmtiOPi0RYv0dx+I
 GxjrUmF72p9doXv05zywSFeeHDqxrUA3nvfsjBFAsbFmGDT5FnxExabys
 gwETQqTh8RxNg7XgryGbX2HePWI58zVs7z+HJJGQIiw8P3U+0W2pha4JH w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="8182580"
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; 
   d="scan'208";a="8182580"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 07:10:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; d="scan'208";a="12369223"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2024 07:10:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 07:10:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 07:10:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Mar 2024 07:10:36 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Mar 2024 07:10:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B8lH65G3D2DvXgiSffJ3q29W2fMUoQulgOq/JXLozuaWxtLbEAQYZXwn8FZoln5vm9u5aKh0YG4rPJNr65Gm0ap+QSuqWxXXYiLG6jXc9/p/RpcYXDi5iFNb+F1Bvwom0lLxvzIrHMVBmhW17dgnYH1mO0ZArwxLaAar3aDbqe3XKNRVpEVfsuJCkFlez5whxMyCbho4bPmd6u9PMQRWMv3decYIeB79osK6xWp/kwQv4yvKDxg+aIsOnJDF/MWlMZ1SYlQMxHisBqG6QfBW4F7EZuHOWtPTUteSu/TAmS09LEx+8Tov9OqU1XKSD8FfsyxRC/WHvDPv1U0PIjwJJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nBfxABmQaBuz1WHyaPgVPPr1LUtBntvvGcqXee1LPeM=;
 b=Ddpp81cpuRxQtQ9kAkqmnoD+REKhXdN+0PDDWlFE9hEieTyfjqzN1nvwC7f83vb8HhJ5rJtIaMbr70Z6gfacWQeGjnq+Qd3Dd8RuIIRo7xGUpYkVwjw1sY/4uyZEr8H1WgOT0VD9m1/qnLnIgAQH8LCXYWBXa99oxbOBFA0LvNq4RtQorUEQdEd64CFIaIFzLLB9xF9HpZV7a7QcnXVLAOC/z1faq71/0lF+QPB4E5UQ2tWydfBEgg9JcRFnAAdyet5j+8isFVIFJn9X4n9Svm/0qMYafrkMuM1wk/MToAdYfsogXG5D1pH8o1Rahr7EuVG4TkGL37nORVKPS7tL/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.18; Thu, 14 Mar
 2024 14:10:33 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.017; Thu, 14 Mar 2024
 14:10:33 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <francois.dugast@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 02/11] drm/xe: Introduce intel_runtime_pm_get_noresume at
 compat-i915-headers for display
Date: Thu, 14 Mar 2024 10:10:12 -0400
Message-ID: <20240314141021.161009-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240314141021.161009-1-rodrigo.vivi@intel.com>
References: <20240314141021.161009-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0184.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::9) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH8PR11MB7965:EE_
X-MS-Office365-Filtering-Correlation-Id: 79559ff3-9ee3-43dd-8eb3-08dc44308323
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dhLWNl5JCLFYiv1xO1DimTorxLxfrJcPgHPJw1eDJGBKcyS8ooknitC4bJ6F3IuVWwWnx/s6dlO0rjJ5aGHMyR83QICtkYz4NELfaB5ich4APXu5i1cJ/5dimOC1iUUFAwe3FCsPlREd6txvmYzHTS35Wa2fX4wF3Xo+uG9j78Z0Ctsje3QtZdxHddlqLqhw30616DtAWbYmxe4T15jtW69tGWNiHzEa6bQk98wHpZICFYU78hnSUcS9QSHVhuOpBVpeS8kgTTF1jy4anPriUrVGs51t04+bFRUWuYiMcbtHI8mr7MMiUk9bteKZHoQlSjyXTIgP8OTVHElhpSQFKEcs3UGMyc6gWgjhZvOvWQZoKIDGtp0w3t/aw4+/3QltnpQ/AFeZficBQzc+EU7pPoZOSR20EA+VUU6rnZXEXHqTy9uqswGEEnMepRadLHNJZlkZS9SQFm6WKTnCMHLPGFPgvCVR1veqElHpAi2qFjKYrL0sa2Znj/Bf704VqM9vUsIH1sZhZXewrCD37eJO8qWDXYaMSqVl0qxK/HbFmWTC0KAM7Q1OID3+VvdvIUu6eqjg9HjtlJMT1oCRHm34gcsJWjIOl8j9Sp5fvMrp4cTjIOJa906BEYC+kDpwDfVLdBrK3pEGAYxMIx4x6eB9CxE/zzkZFeRXrcu/rzE++e8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cgEBEJf4RNMxgtOZqFotkG9fAgQZWpKXstcOHi+kAPGtcjg7z4kUd/9EjGxq?=
 =?us-ascii?Q?4TCeClZ5dJlEqx0impkkddzrp03DacIiUrAgDJQm/IqYpBpOWzIDyoghXhx3?=
 =?us-ascii?Q?G5sLDsnJKNnox5bqy17wGcU0L47u6sHuVKCg5nKrAbT0v92eNw76EG12eF0o?=
 =?us-ascii?Q?kG0r79DSeV3E88/CK6KD/8CrO4U97QbRijdk0V6RNrtJMvxT6junc+5jqEiF?=
 =?us-ascii?Q?UvYq0vussVZ4FemW+WlglUspExSKfikwlLzUOt+U56F9eKU3t+6kgsgdQKRl?=
 =?us-ascii?Q?U/ijv8TV48HX3wZe37O/HhJecsBEmVevDyKq0OI/WORFp9g4MpyRXlKEtaUm?=
 =?us-ascii?Q?G7eCS0Kew6XdiZeTgi383XzTp3FP/JEH34or06S3WgnlCJdx6MwPdU97RS0e?=
 =?us-ascii?Q?NZ2VAvVv0Y3jAXIEA6Xoo3zxjCRHyb6dUKU2mRyEAN2DwQ6JzWezOBji8f8i?=
 =?us-ascii?Q?EwfcSPECevsw4XprPsORIRZbe4qDrUPxcRBOUTMrOBpSLdsusVsjqU5QHQ69?=
 =?us-ascii?Q?mUU2xCw43oq5NvtqhmEKM5v+RivhKz69yr+8MS6z9cFXJdYnu8CVem0SgKLL?=
 =?us-ascii?Q?9o+qmE89FYTQ0i3ciZpzvB9skTAbRll3WZURunhqryE5iS1dNKVvsz79wOV6?=
 =?us-ascii?Q?ecIPlRGixzVebjJ2fmaXaOq/+RNX52d5gpK+7GgEd6oMr0vCdwJhNqHjoT7F?=
 =?us-ascii?Q?1//qSX2p0UMhHQb1G6P7RLhgbZ2aXUQP9gLsT6I/f7CnDHIC3+2gNXwCM5we?=
 =?us-ascii?Q?RabxS4Kskm1rJqO0/q7n0uslv7Ds5lMaPSHrgMYGbLAVgVwEnCDxFYPo/VZo?=
 =?us-ascii?Q?AUaUm1xS08gb5qdY8BGcqiV+p/v8ql9meJLljqY1z04sFipy9QmzJk5iv8B5?=
 =?us-ascii?Q?rHq2HBacyXiFp12VXuMoKRmdJ+iLH2qOZu6rvWZytEjzPovA/1rgd0pzRTp1?=
 =?us-ascii?Q?39VBnivSYp3qLIBV25/px60oDIV1dcfOSsxbtn9RZwr1KRnk3ViBxzsyFKPn?=
 =?us-ascii?Q?pHvVcNv5u7EFHl+shK4XTQlC/4ApfRHsTuNc6d+odnxLidcq+5D9Jp3fObgl?=
 =?us-ascii?Q?9wKVrxY884WMlbUuKGH+njA8TGlLUC3CPfv/I6lSA0QYUrOpJejzF949N9OO?=
 =?us-ascii?Q?sr/jA+cZ1HFYufctELceR8zfgAwHvmEgcko1N2/eto7ipeuH9TE7F5E50DgT?=
 =?us-ascii?Q?6Zyafr2O/38O7+VEMVe8MR6RgkMjCXxgf54/vABk3SIjXWK4c83Hd4eNsArx?=
 =?us-ascii?Q?gxmwC4PtzdrQgovmGitmd5gaLO4JrsGxLtz6OV7gUmO7XyCRYRTa0HnPaqhX?=
 =?us-ascii?Q?PA++JDzDrM08/xp/XFNGJIemmwOEq4WKIzNDP1q+Z1Dq4bIa9No/fMAPD2nw?=
 =?us-ascii?Q?QLZ+3DK+FZwEwH6xDnCEoL03GAWCp2d8juoYWzSuOSOqlZ/zk/lMQyRueGi4?=
 =?us-ascii?Q?1HTlyf7bIf+SJ1NXIj7Z1aMTBuk5Z+Xm917UBgV+VVRbPXYTSNhhCwWq34o8?=
 =?us-ascii?Q?SFw81FMcm4NsDdGLTzCzOpWBw3owAb+qhuarVaK/Bi5obtELzQBVnU7erIMH?=
 =?us-ascii?Q?4T7FmYkZ0aKUT+d+ADQ7Gp6yoXQh1jN1oIqGuGZh7JRWHX1LCuK/MWXxnWGS?=
 =?us-ascii?Q?fg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 79559ff3-9ee3-43dd-8eb3-08dc44308323
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 14:10:33.3979 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L8b/sJdGOGiA4ThVGWOtWJBB7zFSRRmNIpxXuaSuVJYu1iT0FESssaZ4nwVdE6Y+8T1JPSDUd+ANcmS7/cK6NA==
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

The i915-display will start using the intel_runtime_pm_noresume.
So we need to add the compat header before it.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
index fef969112b1d..ecaaef3df4bf 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
@@ -176,6 +176,14 @@ static inline intel_wakeref_t intel_runtime_pm_get_if_in_use(struct xe_runtime_p
 	return xe_pm_runtime_get_if_in_use(xe);
 }
 
+static inline intel_wakeref_t intel_runtime_pm_get_noresume(struct xe_runtime_pm *pm)
+{
+	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
+
+	xe_pm_runtime_get_noresume(xe);
+	return true;
+}
+
 static inline void intel_runtime_pm_put_unchecked(struct xe_runtime_pm *pm)
 {
 	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
-- 
2.44.0

