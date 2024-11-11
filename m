Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 735BE9C4602
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 20:40:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF29A10E512;
	Mon, 11 Nov 2024 19:40:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kg88r91U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B35E10E512;
 Mon, 11 Nov 2024 19:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731354006; x=1762890006;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=TKIZMHwfP8ShhoygPX3Xat7sWtJ3E5laCBtZDt8kXk4=;
 b=kg88r91UMyCn5mparqsYK9xpUuUTu41BwrF9pq+COlAdihgfeQIrCM8Z
 2RNIB6iWUuibANieX4IGN4OCZjQtjJMfGJfTyDKhvkS4C2ddHT5fwfxSs
 VZdWnk/IzHoDdGpHhKDyYvTazZr/3TkBxhyeEVl2TBjttSXkYS19+6JXY
 S3FJr57djj54vRsE+QKJYWyg08m7TZuo/Kvogw0XMbGXjf3bmholR40wk
 T1L6jjlchgYabBwEtdJATx0SYJOjzqMObGCjHeRdluvW5ldeQQPW17PKK
 hb3x0B62dgxq8nMUD7SOmSJZzg/8EIm+oL4Yh0wI7Hbd7QSo0GEmTsEKJ w==;
X-CSE-ConnectionGUID: zxzkKKS/TJiiKjS2zb6SdQ==
X-CSE-MsgGUID: gXioJZD3REu6mYftUGgK/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="42578095"
X-IronPort-AV: E=Sophos;i="6.12,146,1728975600"; d="scan'208";a="42578095"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 11:40:05 -0800
X-CSE-ConnectionGUID: 1/RSpgAfSzyet21t6Y0+ow==
X-CSE-MsgGUID: Zmi4TlClRJGlM7/XG0IdHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,146,1728975600"; d="scan'208";a="124620543"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Nov 2024 11:40:05 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 11 Nov 2024 11:40:04 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 11 Nov 2024 11:40:04 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 11 Nov 2024 11:40:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Egu7XtXPfgH/ImdGTVupG7xUxGCyGyf5sRLvFk1JnBKkgZN8ft31tCwIRgDji4+eAGmKAZzsPIJVzJsb2JcHtEbE8UBJDpNWFziiLmSKcmioDgv40T/9qmgTIYeqbVXxUrghdFJjliGBKyj+gBsDyYLOnSeDMhw6r41DbNBAnVpGACu8PvK4nt8UJtPnk3Ivfgw4fZDTtlJMFuW7q8OpFKF+E/wvqBVRFBdRtvE/X9c0bsh3e0chAGKkHMmh8t/TbBlPGrvUxVUOO4bBPuTF03QnQQyZY6WiX+IGur54Ieanppi1OAeakVd3DADjBriqsrXxSNPs47cvDDSkhpf/+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EM+AtRF3GdpkreO2tTXRkm7pOryVewm4RXv6YCmvFe8=;
 b=iS3Bxu4zjpGvcreerZAvY+dxurXmj+1nkTdB1Z9jwpmpMsJ5zgffTyDJ9rdAUNJ/QqUJfzzBN5LCw5TjOKwA9TH4zpxCY7uEwuKQC+Y82ppDJP9zM3+9DmN2aO0IJF28XqaRIOXECAckTeztem1i4N7vJeEIdn+Hv3oLofgDIS1RG3BaG60qdCEVOx4v4BGJciihi1t0rBgatlXfa6NLqNNh0f6LIUS3RKhHCg+TZ5Ef1PcSFtCMZLJaM3ECnj58/sxVtYQdfPeS3eE6BntIaI9X7EHNWsZJYH0TRLZrh5tsCItgpwD7+5wYw2Kp2qPs1LKqhol3skNM4D2MR3+e7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ1PR11MB6228.namprd11.prod.outlook.com (2603:10b6:a03:459::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.25; Mon, 11 Nov
 2024 19:40:01 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Mon, 11 Nov 2024
 19:40:00 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jani Nikula
 <jani.nikula@intel.com>, Jonathan Cavitt <jonathan.cavitt@intel.com>
Subject: [CI 1/9] drm/i915: Remove vga and gmbus seq out of
 i915_restore_display
Date: Mon, 11 Nov 2024 14:39:34 -0500
Message-ID: <20241111193947.128871-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW3PR06CA0006.namprd06.prod.outlook.com
 (2603:10b6:303:2a::11) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ1PR11MB6228:EE_
X-MS-Office365-Filtering-Correlation-Id: 60cdd44d-4745-489b-257c-08dd0288a19d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?dkgIt/PKOFMJ6vmWkilhYtSeIOkTfZOl6sRv0l3WpjKKR5qmx+52Rc+sYUlV?=
 =?us-ascii?Q?I+O8Aw7HH0Rv3mHIlJjgdiH4e9NuAbIUhOANwXdTkeEkN/dHxFmmSuipmZOv?=
 =?us-ascii?Q?oC7hWzV+7IcsthfZ2uaFf46edgq/9rVXky5NF7Ka6F4iuAwLH0wbN8huI4IP?=
 =?us-ascii?Q?j8S2k7iEhwmmTR2qw21hSq46RR5SD/+c9yl0pK50aJs4n6E0Uhpjc2z6qSMF?=
 =?us-ascii?Q?hV5zitTFYWiRwTnI4fl+HahdT40mS+6c4IxADd3PWWNYKk1spIX13r+SO1a0?=
 =?us-ascii?Q?M/5BuIKIPT/i0T2xDi226pgIx2j9hcQHZslTroiAGZ3brkKwsfS63Kcfc8aP?=
 =?us-ascii?Q?Il2lgnMMx6MnqNoEuvJYGocv6/mKJOxJWnBvjiuL2n7BaImn2Gea+056nqMe?=
 =?us-ascii?Q?xqKM6qLIVn4T5/gTsPPkS7YCWm1u1tMQ1n5SYbSGq21j0CfmHi0c++arha02?=
 =?us-ascii?Q?0103bB56JmdV2YyjxArwTiHC0tcxJz77Mylpvopc5YwAVqxpC+S0pYyTCE6I?=
 =?us-ascii?Q?lFtNExu8HG8ViiWQhvhGFC70avnRU85asH9lKGbfafGzzbTFVZO+uaaX2iOM?=
 =?us-ascii?Q?dKzBGHt51Dh0hoKn/FGbcMvn9t9Ry2/jxgkmQjbY4qhSdPRnLrGYDjpFcMry?=
 =?us-ascii?Q?rs0+mOxhTN3HL6xHvg0uRiIusCoqNRy+mnIiahG69WUaqelTztV9pttxehB8?=
 =?us-ascii?Q?PHTie4F57VzYooemK2G2vHnLn9QV4Fm604jC+1cwCcm2sBc73AWLhCJI16p/?=
 =?us-ascii?Q?SSDVmYNo82LYf7khcDQjN1ICd1ZEHJEv5TpTgSNWGIt3w4dclk1oaNKrcFjN?=
 =?us-ascii?Q?JSM7mDZ42XICHlZUorMcST9sAtVmrPW7FoGye1nUM5w1JXseKyyRdhSigdc5?=
 =?us-ascii?Q?5a/+2Hn8hmRAQqQr1ys76325vaq/KWMDjEzojFbK7K6RhkTGd/bz5u4qQxTf?=
 =?us-ascii?Q?tBteK6aQ1tnpNG96DrN9GKAUyt1pJaAmeeqv/6nKJF26YbivIpGZDA7No43P?=
 =?us-ascii?Q?/F8mIsXF4jomrYpTbBWCREUzJjFyvjR1bUW2pUIjoinMl2FljEF5qB+O1V5/?=
 =?us-ascii?Q?niwfs6rat2BFzi9thJp8sPAjviNlZq1Gjflafd1DHJArtAhUwIbPDGq6QMmL?=
 =?us-ascii?Q?iOFSw5JsKv2fD9iOZyfl259xbo/eTPW8AmAMkTBmJPY7Lmnn++BfWnHo0kyw?=
 =?us-ascii?Q?3kd11SbSNMizgmf16JhVSA08hEtSaXyNq7mjAGkffkb2pHQaHxEL5fwRvB7U?=
 =?us-ascii?Q?X8FtdKOAd3MUlyXyKc56z+cc3FcGDiqUSZZtp9r/Xoas11S4wzUq6lZcVE/K?=
 =?us-ascii?Q?Vx9xC6JI7WTuHnpSP4zXfOBG?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0Y+0/LRuRWkJtPDN0AfEDirUgXTI2nmwLbGSCV/64exH/3Yq52D/hQth1N38?=
 =?us-ascii?Q?Jmbp0SxW5c/l1a03pX9I5tKv4UOSBi+Oe0v6YsNmhJP1/0O1WQywysYzBI+b?=
 =?us-ascii?Q?FE/g7+b8UcFktIthf5DNRLEdsYfrdiH+hLZpD6OwJrzfAh+D6zYz8DkLKj4c?=
 =?us-ascii?Q?MRPg0V49fcwm54MIxQZd0ni13qfQ3qK1wBpFCwWBRted1ifkQbfobbdN8RSe?=
 =?us-ascii?Q?f9zfBeR/0j3z6/nSeCTJ7hUGRJdSA5/8G2NnEJ7pJngkNPm2x1UkifOMsp6f?=
 =?us-ascii?Q?yFhwSpb7Mq6733u3xvQarQI8H6cxngIDhmWRBaaAPMxqKZIU8DAuHfDCzyOp?=
 =?us-ascii?Q?gFdXU5ZDEV/fzBgvrWC6kB+3tRD5et+YvDBpMg/M9mwY2miBYvf0FDm6yXlI?=
 =?us-ascii?Q?QN4qGe8+wJWRo8mnplPP+sKRlHP6oo4zmLBRV8xK1oSNd3qEYVxyl8AQMiuG?=
 =?us-ascii?Q?5em4yFS16WhVl5W0/EdlU5LuXzpAxg79MYnBiCSDWIlgoCBeQv4NSfFNtgNY?=
 =?us-ascii?Q?l56yklRh6yEmElLpHmG8bFbD58vfIdNtdqXNYhlVqDaILy9ndvMV+8GJtO4O?=
 =?us-ascii?Q?iWwWZBDSnNt0wCwuBfYx+8Teo32yg2GpCB9rNQLMUs8s0KQ3mZ9G0dhs48pA?=
 =?us-ascii?Q?GH42oLFQn6yDWpAEvbRjKDQIzdC7mx7rMqw4wQT06otGgJ8qHwupglDntcDE?=
 =?us-ascii?Q?q8pTVC7fucm9n+PXtc9TAXokuHCLBAbVP10eCwoqEKwiQQtZbeZOv9NKRn9i?=
 =?us-ascii?Q?jLgszhbrDYDL40LQb1sNl5w7TVSBvs69dprUmFCqX7OTZaL4Tor70tqsfP3Z?=
 =?us-ascii?Q?1xZXVPxwEFfO7Tv+dhxlSnDtoyNPE4P1RSkGyv4KxXHT8QAAMLvzsOVl+SBK?=
 =?us-ascii?Q?JE169INL5AcZAQSfWgDjtruIDpx6W1vdqj/mxM19Si34Sx8a31PAUiurCRUm?=
 =?us-ascii?Q?tkVH66TEkfqJYcpcU8Ru7TLz1Iw9Vudb+fHBTRcqwIgdUUsDNINEEx+JTOIW?=
 =?us-ascii?Q?wpjPXW0ksPFO+nUngmjWNcbwWjXiL/EkT7u7EcOqZ1v5FNhuZ/wkSwl8mYO3?=
 =?us-ascii?Q?9OMB7fVL0O7nVFStLCvmhOW+GChJ3tjlamJOEWUTlRofyZY2OfeZ7t9gDwvS?=
 =?us-ascii?Q?aqN4xck74JkJcz3ZWlEA39nL0KQmE0a+FfU7ue8RKYXKakdsXDbNOQxWWLml?=
 =?us-ascii?Q?lgqbm6G0QhOL/nvKVAod0qeImAo/GeSR9bTiATDsNuHmPYvJz0v+9r12FC30?=
 =?us-ascii?Q?RFDNht2HAVgscEjb/Xga57kVbXi71Sr2guZBg3Sh0kT5JkTT9SnZvbVSSXPQ?=
 =?us-ascii?Q?YreCFfK519QeNZ8ssdCdAf1ZHhXWYR5HPp7hTMK6hO2XS5kC0zjEw0kn9Z50?=
 =?us-ascii?Q?1Uy/+ibpPqz3vlOFtfH7tM0CEIRC6FB2jZRMJ23n7iSJ3ZhoXY+S0WsPpJOq?=
 =?us-ascii?Q?bu4SFT3Rx4qBjS2hDnNwwkADIyMNY7gPoNRfCxCRSkUR/BII4kdFDvdzLJgL?=
 =?us-ascii?Q?LHd3t00ov68Oz+kGldPZmWagepZK3LvyWKFy7EYIdeXjIMCP08XVrAu3I21R?=
 =?us-ascii?Q?L5E66VSeedFRpB9hSr2Z+f4jGNwyYwzdp/Mgo+Rvao+fD+80gyP6S16g6GEJ?=
 =?us-ascii?Q?uA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 60cdd44d-4745-489b-257c-08dd0288a19d
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2024 19:40:00.8907 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 72AdNg/O9EDRUVKdQZBUFvSXoQADHtBIrmYqYT6Mh1A5rZ/K+zGwmTkpziXuH9qZgXoKb/+RxOSZY3fgxS21xQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6228
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

Restrict this function to only save and restore registers
functionality. Then, that can be moved out later to under
display with a proper name.

Cc: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c  | 6 ++++++
 drivers/gpu/drm/i915/i915_suspend.c | 6 ------
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 269233756e58..420b54b61569 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -60,6 +60,7 @@
 #include "display/intel_pch_refclk.h"
 #include "display/intel_pps.h"
 #include "display/intel_sprite_uapi.h"
+#include "display/intel_vga.h"
 #include "display/skl_watermark.h"
 
 #include "gem/i915_gem_context.h"
@@ -1171,6 +1172,11 @@ static int i915_drm_resume(struct drm_device *dev)
 	intel_dmc_resume(display);
 
 	i915_restore_display(dev_priv);
+
+	intel_vga_redisable(display);
+
+	intel_gmbus_reset(display);
+
 	intel_pps_unlock_regs_wa(display);
 
 	intel_init_pch_refclk(dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
index f18f1acf2158..fb67b05cd864 100644
--- a/drivers/gpu/drm/i915/i915_suspend.c
+++ b/drivers/gpu/drm/i915/i915_suspend.c
@@ -26,7 +26,6 @@
 
 #include "display/intel_de.h"
 #include "display/intel_gmbus.h"
-#include "display/intel_vga.h"
 
 #include "i915_drv.h"
 #include "i915_reg.h"
@@ -118,7 +117,6 @@ void i915_save_display(struct drm_i915_private *dev_priv)
 
 void i915_restore_display(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 
 	if (!HAS_DISPLAY(dev_priv))
@@ -134,8 +132,4 @@ void i915_restore_display(struct drm_i915_private *dev_priv)
 	if (GRAPHICS_VER(dev_priv) <= 4)
 		intel_de_write(dev_priv, DSPARB(dev_priv),
 			       dev_priv->regfile.saveDSPARB);
-
-	intel_vga_redisable(display);
-
-	intel_gmbus_reset(display);
 }
-- 
2.47.0

