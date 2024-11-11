Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1859D9C4607
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 20:40:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F70B10E0D0;
	Mon, 11 Nov 2024 19:40:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UypCO6l5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1AB710E53A;
 Mon, 11 Nov 2024 19:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731354020; x=1762890020;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=tsWhzyZZi+0vsKFxoyh/0pARPj84BsdWM+xnK0YQNI8=;
 b=UypCO6l50OkwGOkdS1USb48QEMOySOx8KvXPqgFlj1X31+xEvrEHDTGA
 1/M812cwp6JN/j3wB458Hxx0hZAAjxrDOtp4tbm0vqcD+js8xQMWAdSFB
 C3JLJeqFtj945K0wrbKApEwgAvxY4TY51EXMwv6ZTdEDlTV0IvrPJsw5i
 bQ6c0DdwXoO5y5HBBrAiekNXVKpzZBhOuKhun6crgt/mqwLN+gCCqOjPc
 hI69gWjWrw+R46s7i5daihiEedkUn7dhmUuUrT01VyYEg5N0e+ShX6lHH
 VyU6/zlPIYBPJkvTMvi0OzDijyhcrK2VJULMCLlrf3HZ/Yu1N2DmXq/1f w==;
X-CSE-ConnectionGUID: rpb7DE/ITUOqjFWAc7VofA==
X-CSE-MsgGUID: uDC2jzOmTTWAeT93lSx6SA==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="34963002"
X-IronPort-AV: E=Sophos;i="6.12,146,1728975600"; d="scan'208";a="34963002"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 11:40:20 -0800
X-CSE-ConnectionGUID: fm5udiY6Rom+cTla6dwiQQ==
X-CSE-MsgGUID: 9TbLN/vhSpC7F3aUR6wO8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,146,1728975600"; d="scan'208";a="91855638"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Nov 2024 11:40:19 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 11 Nov 2024 11:40:19 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 11 Nov 2024 11:40:19 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 11 Nov 2024 11:40:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e+tDCa+rL0jhRIrA4hFF1G3XIl6mp5Y54ZXB0Ec1Gf48YsKFwaQZcpySKcCo5d9BDwXPrpgxA2HIbG34dEF7jKnuI+PDZSwwThu3d8srf9S6qagLXPvBuWir5E9PKWPE8bm7rg6b7XZKJhKJcK8SMgxdfH6M+yjw6it2BTeHrhGYSUlRSFNHAni/nUalJ2BhNI5MctkMAz9LHJ82rip5ma1qwZ6GB1dOom1ducm6MBwhCs6BjuFkKVSp1oFQZeewpsG97EYov7mueDIYhzF9hxP9lOzjQ4K/pZdenbP+y9Sg7LXN5QiFA9ZkEOOLxUwIQeaIJFNGXcT9uVQWTqqNAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XE2Eq09Z36rUePjwahe3QMh25jlgHXIt7ouHXY9gJ34=;
 b=quA/8ILuvE98o0YEoHlFFRGgPcqPCuFeM9xZS0Eo3X0lKUVf/4a2Vn9EcSmc1FA9L7mSvBXz2fO9MKTPhgpm7Nse1AM7B3A+GY+vqhok0iugHWDSGrScTGAibDbb+kL6woOuIgBINYOnKS+KFELiwNKUn3Am+XlTstlLK51rKNRx4+JtNduUuIssq3DzIltQhy5sdz2cikxShlYWDvnR/eWEOBkP40ietVIc96yPYCfoH88D6NTJioxV3mdLcaMECyHK+m+q3wBB3O+Pxvgod+nBlcrIiL3w7dY+WOx5j8WcCr8biWo1z1i6aA5a0NAsKBdH5+9BBs2jr1+oOFdQzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ1PR11MB6228.namprd11.prod.outlook.com (2603:10b6:a03:459::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.25; Mon, 11 Nov
 2024 19:40:15 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Mon, 11 Nov 2024
 19:40:15 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [CI 6/9] drm/xe/display: Delay dsm handler registration
Date: Mon, 11 Nov 2024 14:39:39 -0500
Message-ID: <20241111193947.128871-6-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241111193947.128871-1-rodrigo.vivi@intel.com>
References: <20241111193947.128871-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4P222CA0008.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::13) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ1PR11MB6228:EE_
X-MS-Office365-Filtering-Correlation-Id: ebfe840d-c0f9-49c7-172e-08dd0288aa19
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?9vtnHSXWrQMsgWo4jQvJ4jzc3z7mQDV4LY9e/jbM0XQQ5tnYA7cGngdnFMVF?=
 =?us-ascii?Q?z7o+5RI2BmVa7Uj2ztKvWKG9mpB3UDpn5Ai5HaDP+V3L+S4Ojn3LuMN8x1Bh?=
 =?us-ascii?Q?3vPQurpKcFvUcuhxgP3bb3Vck4xBRXU5DaHHxGuksib179IewAU5xXS6Irkn?=
 =?us-ascii?Q?x+1h80LG8thRTgohOq2iF9TU+qW4x9lIXFwBW9u9jamnHEmwHe4j/MBFHmKu?=
 =?us-ascii?Q?rrb3RMB+tTRPdOrbZU+c5laD7rdt/+p8GZiArBpn6ndZ1r2cn03qakxhruOV?=
 =?us-ascii?Q?Ka6/z/1/qfxKHDQL26RQzfbJlrr0p09wGQZpyPZbDk++qQ5t0ZyFkElWCGOv?=
 =?us-ascii?Q?Mj+QHnGOFwoaVKta4s67qg6nOR43RVTlmLlZrkh7Jpxd2+DoKIsWKFlaFMgg?=
 =?us-ascii?Q?7dG6Yphf+4+3BnphX6SK50MN5EjvVtLf9aD4hn8QPvW4zD4ANzssux3QlzXH?=
 =?us-ascii?Q?Sp27u2vGkj0Py/8PdBJ/o4NsGyxNQynLF+HbTVFcjS5Q8hxpjxM9cKmS0iha?=
 =?us-ascii?Q?M06XAP9DIR7+85kAETdDOoLqKZM5n1yKOXBDkZIAEI1ithuynslHN4tkWXGl?=
 =?us-ascii?Q?O5AMTJLsxHQnYJjkUV5bLNJ/f+5bPmhzSvp5wbHMHmut4BGQXsGTLw6VDeuK?=
 =?us-ascii?Q?7f4oqUXRLAEu/GSvR30j2rr5PLzhlUBrcz3+cKddTF0UcQjEY0bCFcZd014x?=
 =?us-ascii?Q?+U717xy7wprRT+Ni28rRkEHGfUq3CAIAt/EKXGqheN0+dYZVMnN2Pn0HP0Yn?=
 =?us-ascii?Q?4ytWEm30h9lualKC3dBXsciCWTtLnOQXNgPdS54pIB/C4JslEZhz832ZvowG?=
 =?us-ascii?Q?TGD49ncPpW8w5a59pBaWQNIG9DlxDZ/YTaooTjsUQ3UNdP1Om81etL0gBsAV?=
 =?us-ascii?Q?XADPBvHWYsWyaMnZQeYDMAhhONQmo7/wOpwSZXFULIo0binQxOgfMWsaeYfI?=
 =?us-ascii?Q?FzjUTuLovp/gFW1iLOvBxzVBJJQ1HlBWTmdq4YEq7cW2YktTYPCZgk+So2XQ?=
 =?us-ascii?Q?+pOaqtxyLSPF9KIQuIYoTk0+58r+CXjeOfW5pn9oTwzTQ8pCQrEzWi78v+WU?=
 =?us-ascii?Q?HYup6n0Ya+khLp0jMGdcT6G2rTWuSq2rf9E12uwlNPA0r46tbhZCqi66Nkmo?=
 =?us-ascii?Q?qCMOXHJ+TrVLtCsD3eTVQnpiuqknd4CH9XVdxQrnR9g9/yXGy33SKBUttX2B?=
 =?us-ascii?Q?6BsWOh8iDWSydXG1e5vURuX0CDloeAHlr58WFWtEhzZdk/iDHwJq2BCKXaZa?=
 =?us-ascii?Q?/u8EuA/wrXQEhuzD25MQwPF53k9yOD3NjR3Pnc2cY4VuoFcwMu9T0/SNa2Fh?=
 =?us-ascii?Q?qqYLgPyZqvIwEnIWO0+lOiSd?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?arp8hiVivx6RumKmfJAiymFzJJkvgqDkAlvKvrF/dL66bja5O95y5fNC7+3b?=
 =?us-ascii?Q?S530C0rxYZDs0ErNnDyzdZGloR4vPdmXfs4SAW0IPcM2dyOh8FY9emL4uxW8?=
 =?us-ascii?Q?Zs3dHa7I1JmkWrMYD6PD5yEzFr581/uVCq4f2x9bZ9EN5gLmp7HBdkplrgGY?=
 =?us-ascii?Q?on7WvuScbZZiGUFu9XjwSgyrI9HTReguok8F0QA2B6lLMDLb8nDOh/nq6wcK?=
 =?us-ascii?Q?f9Zhsduu5pL2MaGRTbw2yM/wlKL9Lk5fMfmknrT0W1n55yMCPICg955MZEqL?=
 =?us-ascii?Q?Tk6pl2Z5eQXc72y0ERb6brN9+S+Yt53x89O1jYuxUW8AhtNzdEqE7G7BFSFK?=
 =?us-ascii?Q?uAbG8XIEYsTej9XWr8IoT99CMWkVyXiUHDl2AN9/PM/m/39lP/v+W2APXX0q?=
 =?us-ascii?Q?/c0HOgiHXwAdYcv+XqCPESzcXK0gS4HxilIRAxEdJ3jc6mljT3MwGqLEZh4X?=
 =?us-ascii?Q?A4qrDvn7//AUeLosqtjUTPLQgAyKEneaPcp3KvDAVQbgDCFvnnbDsst7/ESI?=
 =?us-ascii?Q?auEIbZICIIdMXere9mos3glRBMit4XGo6E+MgbgVqKPM+sNVFNuJZ/WFndiN?=
 =?us-ascii?Q?+Ndl4U8DYc2oBnkZeYnz64B5kElbBP98BNsXXnROyFGXMBzHacApjuAs7KrH?=
 =?us-ascii?Q?6RVrB02CcO96vbjspL/1qIPgUArdYdJJOmoM9GBTQZ7KoDxwmQwZ+d6vfHp0?=
 =?us-ascii?Q?P7gFP8EK1cPFWRkOyqqgmJK4g9JM/vtYqQ3L7XJUTNv3TDsduJFiPOC9d4pR?=
 =?us-ascii?Q?ZjthTwYisEv3bQXxwwH/toWxRJteOmTOeWJcrthhpM9s1kuMipjT9baFxz41?=
 =?us-ascii?Q?b7Qs82xdxfW8/ph2NJQMw+3UOfGUW6/kmwzBpgk81zTVZAYnG004wAsD5ZX6?=
 =?us-ascii?Q?DMCKlLoFAjFAQ5zKtkLpP1VebvT5Nw2pVfie4icEu2tw/BzaA+Fy29b5llIO?=
 =?us-ascii?Q?NuNLbNcAmByTJ09i/BxkU0LpxovUAPkFO8+PMMyc3vdJ3OWOHU7gTsg/HEk0?=
 =?us-ascii?Q?v2lT0ttNA6n6NjcG2iBjqTrwTVpROKYSIbZQ+ZktK/OUDrRLqYUIJfnvbAnw?=
 =?us-ascii?Q?9Sn60LI58HbwDFfphhkuU9KIZYttpcoA+6h2621czN0qX8wuJoclvjXNN1jR?=
 =?us-ascii?Q?jrSw8LQdsFBA5Zzr2k1MBJEJtiP0FaCJEfvhcClU2E4oJMGRjb4ekXaeAMsq?=
 =?us-ascii?Q?TgGUgOF61yHSt5q/19dYX9H5v3ZPSjPjM43E4j30zRhRzQTj7t58J86tQ/Df?=
 =?us-ascii?Q?Ls4vyz9rU5sUqEaR9DLCvT+dGbDxkprjdG3Wo9OO10sTHHVo7/pCi/AJzIdQ?=
 =?us-ascii?Q?dlhoUBZ0Vl5c7+NzjGMiBvFomyAJTjrsVd/lFYwuahS2Jo3kjGJpl8oicWfI?=
 =?us-ascii?Q?hYoCNPRQzjmh/PrIDUGaKkBV0FMinN6BWvPvdro3ZYw5WfpY6uP/PYGuTriQ?=
 =?us-ascii?Q?pA1mNfNF4nGsQyWRZqymnvyjwmhWnUrJ725IoBg4M9YZrxsnqWXtzCYVH6rO?=
 =?us-ascii?Q?3dba6uO5TZblW9O3IHpmdasUzlmqMO/vMk9PiOLxZc4GGEpnr2TH606Stxi5?=
 =?us-ascii?Q?3l+GXuSxtCdJuLLtVDYtz5wgDsWHNKSCgD53vWpkwiclWILOrls/wauvgA+Y?=
 =?us-ascii?Q?DQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ebfe840d-c0f9-49c7-172e-08dd0288aa19
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2024 19:40:15.5625 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OKObF+GzW6P+W+mqyuruD4r4247qZnmaNMwv6xwX0xeTurVySJjpYY/DZexSz1MKOJkhOtLI18QIomNtm6x6JQ==
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

Bring some consistency to register/unregister order at the
same time it aligns with i915 sequence order.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index fe4d7c210744..c37fd3ea93fb 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -219,8 +219,8 @@ void xe_display_register(struct xe_device *xe)
 		return;
 
 	intel_display_driver_register(xe);
-	intel_register_dsm_handler();
 	intel_power_domains_enable(xe);
+	intel_register_dsm_handler();
 }
 
 void xe_display_unregister(struct xe_device *xe)
-- 
2.47.0

