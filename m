Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C808788F3
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 20:32:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A071C112C3E;
	Mon, 11 Mar 2024 19:32:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KL1+xxiS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CDFE112C3D;
 Mon, 11 Mar 2024 19:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710185535; x=1741721535;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=tEeSxNf62cFhm8ja2zZJfZDOk5pdbZDczx9DHVHtdZs=;
 b=KL1+xxiSpJvxH8D36p638ZNbCGFHN9jKxZY4Z93nRbQLebbN2rv+k87z
 b2g6vUO6POjctWeeIOPnA6Tkz4rth/qntl6YmwHjMB9XotnWBTYbTGzLV
 kvTw69OLa1x1xRzHHmUNWfeIZ7eiIwROHSp+1z1VGZRy7B5HwPbBvOrol
 75Q42S65LHZLiHc97giJXBJHSgfisAoGsgoZNZviaLoOYVrONix7a3NlC
 jcRJsRlE1z3MkvsAPPGDM8I2g80pK5Wm3luvQ8KGJMy6WDAj08cUlLN8S
 yY4zvnAGq/z3rkCAFckjOB3OtHIzbXb6Ul1szAHYE1c6I8IZ5z48uA2C/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11010"; a="8628392"
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; 
   d="scan'208";a="8628392"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2024 12:32:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,117,1708416000"; d="scan'208";a="48718155"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Mar 2024 12:32:15 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 11 Mar 2024 12:32:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 11 Mar 2024 12:32:14 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 11 Mar 2024 12:32:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y+Ptj0zWpWAX4aaqGvUqAOOHdsZ+jGPJBt94hCvuK98bukHgZcK2lk5B6EwdfeFWxSig2oIGrhWyA9Fm7xWDaEJZc1ldHvwFz9VemhateTZ401aeoqnAIkN9waw8xpDZTT09BG6vuGzJQzmK3sRR5fP9IANcSExOczNRv/ZY1X9Y++c+Y7mACR+zpspICbxpxnizNgik2c1IsN5NHKX2Jmjwi6wLexTHvG8I9qtySRR//dh7seLC2dEYde7v7MGXMjWLtj672bdEBULQBDXMkWx79x3r2zVeT8qCMCtdVbRl44XefUto27Lh+amqN7dMpRNHYPtvwEv0glZd5uuCrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nBfxABmQaBuz1WHyaPgVPPr1LUtBntvvGcqXee1LPeM=;
 b=a9bHRHzyPTxjS6FEdD9997ar/kvYELaCkamnqeJxuwvKeBcHa8uxJl3/EuB2fo2cdC/C98OZ8C6+zDI/rhWnQf0mHfSFh5TIiOWgqzsTUSdUhlME5OZlyjkpECjxY0pt4t5pxDFWNp4ovwwM16VgECedwRjby9JrRYtu+y+6PPDNO+Q4E1t82ovOhj/KrnFIo043gLV4aolG5RaUsPS3cIgdtdawy/ZHHTPoXEBbTpxoXoxO3ppfUbx1n0MKVff50EwToqwbb+tsz8lIa1Kq2yDIZgz+2zTL4fyFhy5JMHRD0oXsIaX1Ztme2OJZ1B/EwCPtYtfnhgJPMcjJzEbQKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH3PR11MB8548.namprd11.prod.outlook.com (2603:10b6:610:1ba::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.25; Mon, 11 Mar
 2024 19:32:11 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.016; Mon, 11 Mar 2024
 19:32:11 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH] drm/xe: Introduce intel_runtime_pm_get_noresume at
 compat-i915-headers for display
Date: Mon, 11 Mar 2024 15:32:07 -0400
Message-ID: <20240311193207.35900-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240311192303.33961-2-rodrigo.vivi@intel.com>
References: <20240311192303.33961-2-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY3PR04CA0019.namprd04.prod.outlook.com
 (2603:10b6:a03:217::24) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH3PR11MB8548:EE_
X-MS-Office365-Filtering-Correlation-Id: a6390524-c5d5-4678-da37-08dc4201f2d5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: m5euCTyYek5qYWK5NHxpGC70nvTgXuv1DCvvi6eO9qaQ/UteTmHAw9XWGtZZNxumJ17EXhFizQJi6cBx1ED7VImUwWk4ng/z/yV+2vh9PgDpVYfu5T5KA3+SUl1d14TeYoB1ytnTvdaT3tKWBossSp4crr3tgcQWvtpYLFPra39dV8sLUtP+MwWxyN8aCgextydwX3s8ZHcSnjWuqkmFjZnuOq4bEBrIcCnh2M8Q3u4WjLe1YWLvsx4CFIuaD+HjsJ9KkcBKD6lq2i39i5eTlvj2Z2csPCR5H2YrhVjyCL5HrVsjA5xXcnoyzJc0gJ0ktsw9/UWBn2b6mje0PBE1zs6r01zmMqFj5VRjsns16NWUXhg9mrhW/CNvrEt/Bp9zEt7hV+/ddm7q3Ld+6iTlsUFMws01U7oecmr0McBLBOFeF63+jyvDwyyDfJ/v42jM7BGsH4/WdRIIWOMpELbGbvo9jTwPooEmUYGH7ySgAQji+IFZGvZrbaTdMMVu7U3bUcUhXKM4MvIqgCtr6rCg6s8OBghODrL1em71HlhqKuQh4lE2T/JlHY9UqIZj45q7BwS3p851hJDb7bj2x7IYBuRrVhS/CWsIm/73kBPbENqMtgCRSk7RKR+D3O3OPxc1bSLb0TQTWRnvbxMEpORUbJeUxF4EXjPmtujgqLIiGis=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?e8Al9DxH4/n7jS4vjmXNO54kAqhmjQy1VL3wK//OSLzEQo9EMGoQsA2093pA?=
 =?us-ascii?Q?v5I/1hBYnwYxpE+F/Dr/P9Z60IkJDFOVIx/4P4cRoNYy6pnoRhWwCVazf6fM?=
 =?us-ascii?Q?aBx+jAjYZnZTcU9W3xZSR7T8+k6bt/O4aMIxvv34AsjlRq4CITYNoVoRGaaU?=
 =?us-ascii?Q?ZycCsIYJoZGGbBUs5meHzokhdGA9UzZMJ/li2gXMbMixBuMKiOdDGcv4PG8G?=
 =?us-ascii?Q?KJT5055Fg10OgVVnC+n/OuPuG4nnv+tqKQDbww/11mpuyEMxZpOfc6RrrMyB?=
 =?us-ascii?Q?dneHx0aq5IeO4Chf2rAChMANajlYDm05NnVit+UrKOkZTbRFtRqwc0zA4p/p?=
 =?us-ascii?Q?zzCcvE+5EHXyRm4NjjCmoIOzodNj9c9+V7gq1/cEmlXPIUGO5qg7huR4PX10?=
 =?us-ascii?Q?Z1rcyv/V2V7Kqij601top9JxIgbuEPuGpy+pqqWrMmimO0jGc4NoaKQXFIuq?=
 =?us-ascii?Q?s94ETSqStQw53BlRxxLo6wUxgnFVquk5d9Z4yMh09qRM9kil5T4N5/5BrVZH?=
 =?us-ascii?Q?/V58iCYhloabbMCPUtPaii9fVIGwPzKAep2Ipx5k3XA06sxXBA3I7SlDgyit?=
 =?us-ascii?Q?oluqBV+MrrZoFhY7WztuSJKcg46MFTomoA9e6ri2UjNef8X6TUNgDza64RjR?=
 =?us-ascii?Q?fB4/OBBJmMHxjrkjCVUR2iWkXX7/OGeGJfRjkngLAmfhZ/JERqtqrDcycMgL?=
 =?us-ascii?Q?BJOUu3M9noFQNZBxkoJ4I3frIXgDLiaDeAG43kpJM4YpP4Y0xHpdX06yLXFC?=
 =?us-ascii?Q?vWtPLGMPUS4+VHGsfabWicpky25wBkYVbGjvrSl6TJpcRJ5zaMLTJxyHH2pv?=
 =?us-ascii?Q?ux2PwzvJ5rwn+eSj+uQvZSzbfSOdmqX0qTpFFYVmGasOhP1kd0Lajf7A9iSk?=
 =?us-ascii?Q?NnfuRNtj54OLSL1JaH4iP8oZ8k+Ks5Wit35J7Vo9uNp2txybuvHoA9lXAe2n?=
 =?us-ascii?Q?WlyNJXaL2rstCrYJSx410HZuXveR2sBdGKsmcNdmPqf7iAAd//01Mp6ZgpQT?=
 =?us-ascii?Q?YfB/66UmRDfAJ2TD3NAKp7bdv3/xD3POI5zkf1rfHQykG1QaaSxgAReFjTAF?=
 =?us-ascii?Q?NFaVCqoiFcpd0RBtIvPUBtQgouKm2fNXka3+1xVgUmXKdm9v8rLXMxSJNxEz?=
 =?us-ascii?Q?ObgzhAx1OWR7MBGPawmGaS5kmWA/KWJ9jFivrBBLOgLjg0DHQ7CL9yYcTtPD?=
 =?us-ascii?Q?DaCND9rvNNaYEwPJn4Mh58FoDZgGNzzP17h1oH/L6NzNVsH3keG/Ua88iatH?=
 =?us-ascii?Q?imwnBLsgSbPmV2e0FxOgTv77UtpN+nds/x5XAu4a7U16+5d311sKe9gVkJsl?=
 =?us-ascii?Q?UvTcZMR7sfCrlXzpuy0IvOCtme/ld7oExHzVt97S17DSPoqOE+GyxRSwRw1/?=
 =?us-ascii?Q?QU8Gc/PuqRg13FP2iBHGNc7rslfWDxc/fzgKAW0YahPjcN5soakLRaM87/V7?=
 =?us-ascii?Q?xwLZXlBrHGjMSfVL/fqPfHeXnZnxeh/46IOHxWc7J6C4Lf2qCi4eecMdCSPs?=
 =?us-ascii?Q?d5NsL1tfBnPHlfrQausemG5P/lG+czY/2t+LRyOQ1D1cbWY54crCsgmp9DSc?=
 =?us-ascii?Q?+56UBXkwbtupy6VFG8m5KquGNeKhY9XWlABSMyHGAMGPtsGffT8XHo8HFdI/?=
 =?us-ascii?Q?0w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a6390524-c5d5-4678-da37-08dc4201f2d5
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2024 19:32:11.8199 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ErMNpZ9OKK5st27cyb5M5bHWTEsljj8r0XxCMcEROylxbHrjsMRXnK0R0mKgL2a0qqc092XgbRs4wWZb692ZNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8548
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

