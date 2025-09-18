Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F8EB87086
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 23:12:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03C2010E90C;
	Thu, 18 Sep 2025 21:12:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lp92C0qQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 905AB10E907;
 Thu, 18 Sep 2025 21:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758229956; x=1789765956;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=gA35qseo53JD+ihra01/dHKPQRecrX1dMR/qu7edBbA=;
 b=Lp92C0qQvIm9yvPMnxAlZhPUTigLsDbNyhdVIM+lZnBJ0dpYLJdEVtCn
 KSIV1KqkQH0CRknp63MC8Zhr2LX7j6bd3p9A6o5vp7JOhpuBBaUc0PYMK
 U2NpNQhixeYl9CmOk7oHFuQHrzQcbj3tXStcYFrgbtSc72ZkAS/oOmkHz
 ZSQiR6pfqPuDSjTQBRh4h0fW9LWNOJWHVohYB0qzmI4AbecSlT8w2b6Sb
 qrEtplt9xYvfRwkMH+GJrg/IiBMJRlZNNPhRlJ2sAfu52V/Oki8+r15ju
 3Xpc1oiNYHOO7YMqNFJHl9BKjrjuwNt8uohQMofOuyjFvFhulbpDyteq1 Q==;
X-CSE-ConnectionGUID: 6c5KRe7zTFCCkuoJvTU+wg==
X-CSE-MsgGUID: 31EdZUNlRPWAJeMWVnWHfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="64394594"
X-IronPort-AV: E=Sophos;i="6.18,276,1751266800"; d="scan'208";a="64394594"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 14:12:35 -0700
X-CSE-ConnectionGUID: YYjWfldiQZWsJhvjSE+qKA==
X-CSE-MsgGUID: Co32FEOVT/Gx9sXVjttPOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,276,1751266800"; d="scan'208";a="175478513"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 14:12:35 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 14:12:34 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 18 Sep 2025 14:12:34 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.5) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 18 Sep 2025 14:12:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RO1jMP1STRSWwpW2YDjkcPfsT3ttYx7renJ27ORG+WFKZrWxk9vqDwPMulfbQEOjz25uNpx6X4AdLCl9VT2uXWnNL9wHWmnr1JssszXQnug+7tVU0iQgVcZr1uEnAPy6aqU6h5qDHi4g6DZj8aFTmeYNgH5hwsGPPrsPv5vvkW6O/R84YAA8kOy829/MwoUTkqkzwfkj3bakvRdVv0bFE5X5RWe4gVrFljk1cws4RIvMY1Aa+BHLiubpGTa7qK7lAqRhXvSGI5FpcEhShtVt4H+furI5ZyWx1IY56N/u0+io6ukoB6o04F6rse9t8TINrpkN9Cym1NyG6VceFNRbLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tg3Rdg/0TIEVq6/AHqmfjdiyC3dxIKxrX5kdjaeDH5c=;
 b=tJMkUBOCbAjCkNl/SfY3kG/28/44NrfC4EJSQ3TPZSPBN7fHZMPzsR1jeXZbxulcPFgADmYlGKoJKKdD0nLApBn593AzxA624v0Y7FOSXivcCQ1fRz28+DXdszl5C1vDl5XFRJ9EbuyanHJoGIAhpzxZcywngkwRmxipm55993vsNuWaHco7tLtOhjIeF9+46FrrO37D2oLhB3LQw2GuQL/p82HYg3fnM55SioWKshFZ+3AGO5x8lHzytbi/FZL+kJQ3aWdOOV1TRV8uIp72L6oF+ZBhAconqW/pUqwbed5KD+yveSTOOqClC4kOT8Ot8aFvtuh022XPwQgYczjq1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ0PR11MB8296.namprd11.prod.outlook.com (2603:10b6:a03:47a::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.23; Thu, 18 Sep
 2025 21:12:30 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9137.012; Thu, 18 Sep 2025
 21:12:30 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 2/5] drm/i915/dp: Calculate DSC slice count based on per-slice
 peak throughput
Date: Fri, 19 Sep 2025 00:12:20 +0300
Message-ID: <20250918211223.209674-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250918211223.209674-1-imre.deak@intel.com>
References: <20250918211223.209674-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO2P265CA0251.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:8a::23) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ0PR11MB8296:EE_
X-MS-Office365-Filtering-Correlation-Id: db3b3bd2-7806-4005-c660-08ddf6f8142e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Iwu9iS0JqnpiLDC6zAo2SICLz4xsFaRP7wmFrMaY8/1LQjzIkuZ0mOiDQg0W?=
 =?us-ascii?Q?Bx83BRtKWRcMatbkCPtMHZTIXvxkJxXU/HuN2zpEhGTU3aLkZZe+xRgz0rWO?=
 =?us-ascii?Q?mU4FwiXxJlUOVKT9TpaRQbimoGCcSph+bmeKELO9rVIYsiQ/2nVKT1JgibnQ?=
 =?us-ascii?Q?MeWOyV2EJesVBPYnRBPHCaVYt/hJXVdvkeNw2MmKKvccGHiyWo1U1VeNgOdf?=
 =?us-ascii?Q?ROUwX941/4JduDTkebY4Xu3MJ40OqHG/X6nU1CXK6aaswgx46uQ0XvBindc0?=
 =?us-ascii?Q?BWKsA7Xd2yq3qWmlQWba8KfIrEsTsM5RNmMmqeoU63Jst51v63v1lPKrxnLa?=
 =?us-ascii?Q?k2GCx4PajwQ0eTHFxfgRzMj6/e5ZrNBg5na8mYPL2ip2V+MfmySXzIq/nKkU?=
 =?us-ascii?Q?l+AZHkqcz/89i47+zDS7Q1Da7EikdarHhx1QtQeTA78zrkbiiykc1aPeb6HH?=
 =?us-ascii?Q?ldF2jekq9BB00fIc6qEOAOLnnZ0OFHopzN3mWl9ojAlidsioXcVxTTUyp6OB?=
 =?us-ascii?Q?I9BRPSZmp2E3d1l+rwTXyQBidiuHF1ZbvV5i72eR1D93ld3+c/L55hljSHF+?=
 =?us-ascii?Q?xuYJ2JMtrt3GIf5MGmGVfKnX7YTlblveT1Ni75yEde4khz9PxiWsfp3hhaWu?=
 =?us-ascii?Q?vjTLCWmoilZ12/70nZ5gL/DqmGJa2+/z+pzTnLeJlH72b360xe0WM16oxLXP?=
 =?us-ascii?Q?SptDxjQseTU5cf20hrEUutHXjOZkk64boPxEmre5PzNThb5xLkbdtNOuPRa8?=
 =?us-ascii?Q?bjr5s64X2VhYpPSO9OAKv78oQVge1SDzlGXmxRlAZU1F4F9ynXnU0x/+jmBN?=
 =?us-ascii?Q?YJD8L25Oc7gVOygNKhSZwzfbRS/a8rmmAVyNwIEaGWeANEYH36X25aDJG4Ck?=
 =?us-ascii?Q?D/3iPBpFIbFJTf3zoahS+KbJIbZ2me5/5OitbRjg21WAphvTGSUqf49PrJZC?=
 =?us-ascii?Q?dEejNJiGf5+IDH59+0JP/IkO3rFwNa1Uww6HXrTLI40jH9SgSMaI55Rb+P+7?=
 =?us-ascii?Q?LgwNZ/Jixnc6hXC6apjCG6/K3WrVqhLvuMfWrMUAmKv38ZzG1Q9ZIpO2GDah?=
 =?us-ascii?Q?L7FfL8ADbsTY3eu03cWxEm6hC1JAHMl1FB6truFNDr6RB8VIYSRKZ5ecpWXP?=
 =?us-ascii?Q?rIAVXIqP1FSHgUUQfRPELZ7GcxsGLbLDO1g+mLgoLaOY4yFnM9FBqlB5tBOj?=
 =?us-ascii?Q?zlp3g2dgikf+j31WR2gPAoWqyev1vxAbOsHHC/MRn1CS7BFI4LkzlFBs18eB?=
 =?us-ascii?Q?DVP1qgM3dzyDfIGD3gpmtuErELN0LMvJ6nU/VYRDSwRi3pUUFmm5bVsZuQlK?=
 =?us-ascii?Q?LQ7YUCdbUa++SicwLb/4RtJUHu+EMe3MLham9SeZdcf54U5ANO8kFWcnFoje?=
 =?us-ascii?Q?DjvDsMuWkvjcLN50lorzjLM7Ez/IxCCOBEixkeVs+h6/JXNYxCZZZEeR7T08?=
 =?us-ascii?Q?Y5L/Tef5+wI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?I8IRdnZkmjICbFV+DuHYfslgt3CZWQcn5URDcPpPCmA3hz6/TXh+D8rsWRYT?=
 =?us-ascii?Q?wphNQrK8OcQcB4Gtu5o+KX79a3QgWoPVtRzoAsd6EJ8lhlA/dLYKNpykbSuV?=
 =?us-ascii?Q?c5Radg2htQ35cC7uzLZXPPIduphYcfbBtf0HiSMyt0ysZweW5kLVWVDWsXUO?=
 =?us-ascii?Q?H8Y0ntKIYJ66+hlkQRGOvSAexFNwPpRCrAkOEBQxCsiVeqsK1NCZ7f4/9Pla?=
 =?us-ascii?Q?IIfL4hit8ygNU1g6YQcSaKfw6dvlwL15LtRfjhRvVMvvyELnLcBH8+mmcAvk?=
 =?us-ascii?Q?+WZCxK9WnzLtd88Vbg/9mvoPC9tQp1xsB9N1lrqTgIr5QrY9QsSlkjeltDUD?=
 =?us-ascii?Q?OSN7aJnF3IKSQjJKQIm7fuAblQj5Uin0nBckelCGFyCxCgdDKIa5Wovt+sZZ?=
 =?us-ascii?Q?kFquP+S89PoiyJ0AApdhFWBZlx2kqQX+8lZEYJnqOgwq0afYUWdGib3jNFEP?=
 =?us-ascii?Q?UFHGc6QDmzYzdZTXgHGgEKJ/Fci/1xnTjsxxTWPQaiSJwrgTh+vNooECTstM?=
 =?us-ascii?Q?xvx/EMSwrLMI6iXe3grXA1y5u1UxM3Y3jNgyd2bQtBMOeYZdjaDYnxckiy/M?=
 =?us-ascii?Q?mea0YcEFCjRzZKUIvXvgOzwcTXfvG7WnccmCgQ8+rhmbC3nVkoVgeUZCH/ru?=
 =?us-ascii?Q?O8dqyqMxqGcj69SMDpNdMFUquU9A+PlsXwsyLDwXCOXPH32mgTrh4uInoCBU?=
 =?us-ascii?Q?hMDzzSvf5IeMR2+dTu+9PdHE8a7NcgaHnocQ+hau8vD9pu++G8z83uEkyBs8?=
 =?us-ascii?Q?BSMZ+uxD4Gr+Y+qMb4G52hfiwLVARfkomq6Ch7R4x6EOt3T3Dt8V1/m9i4/v?=
 =?us-ascii?Q?DlO4L7FlQWexnpxqCl8pGPVCUe/BSZKzJJEamrkVHy1KKsaFHlTS1Orbmozp?=
 =?us-ascii?Q?dunTBZp17A34F6X9NZ2GkJB/bJkHshT1pRteF108M5aSqeCQkWW3BvJG7fLt?=
 =?us-ascii?Q?noO+P2zEHJcurRe2G7qe1p1gqwGuqmbN8r7OL+XdXhDhiRJWi+u0H/dd/NhX?=
 =?us-ascii?Q?5WJ30VHgcLGtPCNHtLHj68wPrMt7kzH57mdUeGmWMIkyNGFjCyRcUOSWVs+8?=
 =?us-ascii?Q?hGZNeb1x+Jl9lDGBf/mfqACWZ+NvBu2fu5WvG1ZxWOKxX6wxlEKni9lFBOYV?=
 =?us-ascii?Q?Efy+5x3pww5dhx8/YTcocDs6owfSzaL2T/+WGxTugYBTFCsk8gTTMV1Je+JL?=
 =?us-ascii?Q?oRHB8nYPkTrBi6viXTynW/nkbHOKT/2oI21ZTI33u4VwHY/w5vzzCyEyXfOE?=
 =?us-ascii?Q?His6xHkbZtrQjgSagcO+HJBfDz9Llfpu5ayz8biw/e1DSKGVixevh1DDC91t?=
 =?us-ascii?Q?EWd7u3Gd7cx9q4+lCictXr1dzbH4vi2RR/wR5naoX8ysFzxTTRRwKUFQbF2h?=
 =?us-ascii?Q?eAd4Qv5SvT/8/GQINThhTYpYz8zHVVeaqzwnLtbYsbKZt4k68PKKldGVkkdl?=
 =?us-ascii?Q?HCxV6axRV6j0mTPF3AdOAnIc/tfmbSER+qN22jptenEl8IwlNVDgfj0SYf0L?=
 =?us-ascii?Q?MJKCdrp5Js9C68nX4cHqufDiecvfmt8aNJo+kRj3NEJUZL8jMZGoU9oQVqFY?=
 =?us-ascii?Q?UjxE4sQcfnSi4fT45C/9wVIQy/q2L2ByNCW2P7DRhalSJNwLesFm76H4Q5w1?=
 =?us-ascii?Q?ZnLvFmLS4Dnh1cQMO6XeaOAgJlUhJjOOBNL7njnQN49U?=
X-MS-Exchange-CrossTenant-Network-Message-Id: db3b3bd2-7806-4005-c660-08ddf6f8142e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2025 21:12:30.8359 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OfOZPY5HI7EenlUB2jipKj1J83LRQkTJuHu1dpTJISMPqqKQGQxEv5zFtWqebSISsrpsj/yA3XoHXw3no+175Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8296
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

Use the branch device's actual per-slice peak throughput to calculate
the minimum number of required DSC slices, falling back to the
hard-coded throughput values (as suggested by the DP Standard) if the
device's reported throughput value is 0.

For now use the minimum of the two throughput values, which is ok,
potentially resulting in a higher than required minimum slice count.
This doesn't change the current way of using the same minimum throughput
value regardless of the RGB/YUV output format used.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 47 +++++++++++++++++++++----
 1 file changed, 41 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2eab591a8ef56..a963a58c87372 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1011,6 +1011,26 @@ u16 intel_dp_dsc_get_max_compressed_bpp(struct intel_display *display,
 	return bits_per_pixel;
 }
 
+static int dsc_per_slice_throughput(struct intel_display *display, int mode_clock, int bw_code)
+{
+	switch (bw_code) {
+	case 0:
+		if (mode_clock <= DP_DSC_PEAK_PIXEL_RATE)
+			return DP_DSC_MAX_ENC_THROUGHPUT_0;
+		else
+			return DP_DSC_MAX_ENC_THROUGHPUT_1;
+	case 1:
+		return 340000;
+	case 2 ... 14:
+		return 400000 + 50000 * (bw_code - 2);
+	case 15:
+		return 170000;
+	default:
+		drm_err(display->drm, "Invalid DSC peak throughput code\n");
+		return 340000;
+	}
+}
+
 u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 				int mode_clock, int mode_hdisplay,
 				int num_joined_pipes)
@@ -1018,13 +1038,28 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 	struct intel_display *display = to_intel_display(connector);
 	u8 min_slice_count, i;
 	int max_slice_width;
+	int tp_rgb_yuv444;
+	int tp_yuv422_420;
+	u8 val;
 
-	if (mode_clock <= DP_DSC_PEAK_PIXEL_RATE)
-		min_slice_count = DIV_ROUND_UP(mode_clock,
-					       DP_DSC_MAX_ENC_THROUGHPUT_0);
-	else
-		min_slice_count = DIV_ROUND_UP(mode_clock,
-					       DP_DSC_MAX_ENC_THROUGHPUT_1);
+	val = connector->dp.dsc_dpcd[DP_DSC_PEAK_THROUGHPUT - DP_DSC_SUPPORT];
+	tp_rgb_yuv444 = dsc_per_slice_throughput(display, mode_clock,
+						 REG_FIELD_GET8(DP_DSC_THROUGHPUT_MODE_0_MASK,
+								val));
+	tp_yuv422_420 = dsc_per_slice_throughput(display, mode_clock,
+						 REG_FIELD_GET8(DP_DSC_THROUGHPUT_MODE_1_MASK,
+								val));
+
+	/*
+	 * TODO: Use the throughput value specific to the actual RGB/YUV
+	 * format of the output.
+	 * For now use the smaller of these, which is ok, potentially
+	 * resulting in a higher than required minimum slice count.
+	 * The RGB/YUV444 throughput value should be always either equal
+	 * or smaller than the YUV422/420 value, but let's not depend on
+	 * this assumption.
+	 */
+	min_slice_count = DIV_ROUND_UP(mode_clock, min(tp_rgb_yuv444, tp_yuv422_420));
 
 	/*
 	 * Due to some DSC engine BW limitations, we need to enable second
-- 
2.49.1

