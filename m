Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BCDC8FC74
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA86B10E85D;
	Thu, 27 Nov 2025 17:50:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dp42nV0B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E45D910E84B;
 Thu, 27 Nov 2025 17:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265857; x=1795801857;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=1hUrmLOA2Rq5VT480VvlKu3rofjjz5whlrtZufuVopU=;
 b=dp42nV0BpkZqwQOI0Ec4bQtFDSemQzKjUQAu6BbLM2GowUTkuOIV8vky
 6K6iMGifa0hX+mZ5TpaP7G5GPXDrA/S2W8K9rKVOVHT/oOxC/4mtFMbFd
 bkZORC9V7ulEwAApqWadodm9t5NtSuRKrJKMdmIK1ilkSxG5ggt1UR3ql
 0FrqVYRx0G97APsSXD6+wAzGfhe4aF92BxLyj+8gATc3gyOEyaDTz8pqz
 9itgWrrll7a0BfSoZx7CAYXbXlzv4aYd+WuqyOqtVGK1GOVL6LHoNMvA5
 5gxPueDaJ4IYxSD8m1zGhVSjhkFCDN1a8LiIp5LJbOQ/FHm0sbRccmDix Q==;
X-CSE-ConnectionGUID: MqR1Y6cgTqSVLgZ8BsyboA==
X-CSE-MsgGUID: XP2zoJk5Q4mWY9wJ1XtG4w==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77002940"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="77002940"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:50:57 -0800
X-CSE-ConnectionGUID: bF2u0ROCRdyyLXuGJOkxhQ==
X-CSE-MsgGUID: MgtRRHTwSFKe91zXowx/7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197453527"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:50:57 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:50:56 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:50:56 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.27) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:50:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a/BQcVYcMMp8yQqugs9Utr+e0zAHb2FaB5prCqPE9JjRrTJXsoVCro7QyZAA9lVn1vK5iroB3OuPevKPeoFK/4l558ICcFapQ2OKs4ASoQISoL40N2b5KfoF3O+1Y613exrMOizdBlLZr1RmsVQlcy+XQJExJ6tN0HfvBUd5uCWHBffyS5UTX867EWOZn2vbGBfWoXl6YZY67a95pnY5J/xLfYoX6+JcroV7vHiH4xEhGZDWa4D1vLPwRP2Wg01+wv/IKouH1W6GXRBHzHCDFwvnfycF44Nx/8jNMhLf/en5t2npdeWjyLpxP4IcdaFH2TziFZ+/1Zk+EcWVXkzDUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fVC8sdkcv4XjQkyKZsMCI/CPw+ghzaxOKXQEELT0q0o=;
 b=iV+jggFkRCyg9Ix0Xx96L6jmmyduTwPKMeSQmR5OvTI12lZolSmUScGHUIVbxVJKZkfpWcNBKQfLwFwF+SsIyvW927eNUCvEnjZQgl91VNEz1coqiKQh+Pf/HdfELMmiReBHYHHOhZNXtAO9J2R1z/0eVlNvLE9Hkg7Vj7YaFsrrAuD1JTbm6qRDgIFj4YMzEn+UOTBRe93GcV7cyby7K3wN2vsE6f1eWN6DE9R/ypQhSqJ/X9ZTylx1QXz8meZWo0p1YnE1lBjENGF0/IE2qNmFmHIuNw7XNtKSPKoEDp3HXD8maTZqUcVpSxTRJ0DCl9GP3gTprAy78Fj3Gg7slw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA4PR11MB9035.namprd11.prod.outlook.com (2603:10b6:208:55e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.13; Thu, 27 Nov
 2025 17:50:54 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:50:54 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 05/50] drm/i915/dp: Use a mode's crtc_clock vs. clock during
 state computation
Date: Thu, 27 Nov 2025 19:49:38 +0200
Message-ID: <20251127175023.1522538-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251127175023.1522538-1-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0255.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37c::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA4PR11MB9035:EE_
X-MS-Office365-Filtering-Correlation-Id: 2dc29f8c-dc15-4bde-0407-08de2ddd833c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?D2tS0ObKiORMu0FmeBbL3PH/T97E0OiHvpGEF/cSGa8CzrHT1HqfG5FUOC9Q?=
 =?us-ascii?Q?D81e9XDtKnRaku8RRB2e/Uz/Kkd5LecmoOoHvJXb58mTqDhPneQr+xAGtGYO?=
 =?us-ascii?Q?3q+cd0wG9hfU1XGOblD+5bMUHkly+DU8tJ3iZd6Pn87JQZV9+slYSNnKA9LP?=
 =?us-ascii?Q?EVvh7HlboVQ7BuNuA3b34b4axPIeS+0zMuxSmUoDwJ0XceHuGcIjOYjRt1nw?=
 =?us-ascii?Q?AIIIauH8wtO8Q7mXBab/PHhLrNIzMX0O7THA8H2DaEDn3D/eZ+KcZ/mYFIKv?=
 =?us-ascii?Q?k5UQwFO/qy8ACVgGGYHDH7loU82eb6Y93wat+LL3K9w3lQTIDFOfqNfFnUQE?=
 =?us-ascii?Q?jWqTylPwOn7F5e+mms2AcToz7YMPlPug58KTPfEx48ZweTk7S8gR8ELSZWkn?=
 =?us-ascii?Q?NMfUU+yOZauBqJtI10ny8hHK3NNVbLxl3NKruYyJpuCmjcUUQJXwMbregJDR?=
 =?us-ascii?Q?29uFo+EbxBhozRlXgTcQXv9ONj0/NhXRn9jvaCq7ot0AODQn4VrQ+m3Tc1OZ?=
 =?us-ascii?Q?1uV72gOHxaVqFb4HVlV/AHqHeqRYpodawa0eQq1GFxSuqq7pRhLmPGZ0xDQo?=
 =?us-ascii?Q?S3tBFTCcyIVTZ9as15ZqaTO8zX27z0BNEIXC3SoHJmQsoqFUTY+nZlIrkzzv?=
 =?us-ascii?Q?dFjHRs6SAErhsbM0V/9TYeGkambUfGLId5tyWOkX3gaTbCtEc3ln0zi+XJgi?=
 =?us-ascii?Q?/zNtkr7X8whflik32yNVvRM9MUakxAuby7vD07ttjg+A+0hS+hcL3Dkxw+4W?=
 =?us-ascii?Q?u2147JlaMv0QqEuNYGbcVljrFBKZqSzg4AqTED9NoTIvGDF2D+FDnCEURtfo?=
 =?us-ascii?Q?8Ln2/MD8Zp1BlPHz3qZhzb4BLLpuZHWJfr+dyK7v41t8j0HPz4qiR7eID37L?=
 =?us-ascii?Q?EbGaTTLLMi6g1m5uvTSFh1FQYDkEwG2qQ+SxklGg8+XqnK2CJDk0romgSiuA?=
 =?us-ascii?Q?BZHH5sZzJNpl8VfvCwMrS6qE5ZWOT+NsqjYSjub7V/vuDowr27lE9iygFp1s?=
 =?us-ascii?Q?tiATu4XN16oHHwtPw26d718UNDhmbxw5uxrThs57oCloHc3EGBdSot4xGyGV?=
 =?us-ascii?Q?MuaJUhzhSUD/5qSUOlVVjvr3FJJkIksb65aTJQuo4+Kk82Mi/PZUtwfVH7H9?=
 =?us-ascii?Q?lpuGnKgkOW/Q9OcFoVL6LzjvPK2QsSK6XfVeMwdbHQbzGtSMFw53ygkyN4fh?=
 =?us-ascii?Q?NPNoeKUyx4//Lt5vvu3CddukIoy33jJAWbWQMnQ+hZ0I3Akrwrqx1ifx6vFm?=
 =?us-ascii?Q?8Qf7qb6M8t/C1Vu+OYl5NyTHPdTphDxrDu+nXeASyGlwgGB8xPWaJ0iBn9fS?=
 =?us-ascii?Q?FCotCMeNoPR5kf7hWPHt5udiMtZqPwHT8mKcrUo7PIgOSt66XE1YnMguA2+n?=
 =?us-ascii?Q?AqJctJ7GhHPo3Bpze4oFw+6BP/oe7raCwIYeRJroxLLii1pc8ppfuuz/Assu?=
 =?us-ascii?Q?101UgcP3kXiJe408O3go35EBNwC/TlNh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OLxLPDypHU1pJX6Qo0UGS/Cq5ULEUdUfs3ZkDKCWYDDllDhS00EFV3NHtnLs?=
 =?us-ascii?Q?XDll4XP7yNgiWQiogc2cTU8s+cuJeBbaoJCNKZm17VR29Ydw/DYWbgovUA+v?=
 =?us-ascii?Q?XuW2uVM/tbM8nptehtUnn3JRQfkpDY9oL05wZ93qfnKB09WTVEVCbPaYQDOa?=
 =?us-ascii?Q?X5qQDbRMHSvQy4ZIYzX56tgj7SZy73eAyN4PnoSULCBkjd7Zsq4GX82vIGkq?=
 =?us-ascii?Q?9r4HS9oqNAgr1RdjfmI6ZaDNkdDLyVROdFbYBoNIOQuvs8Z2yUu2izZDND3W?=
 =?us-ascii?Q?o9jJm8H5FAvd2smYXRU/LgYGGt8JiMmoPd5Bo9LwcmQIze/T4ylfa//6Da0n?=
 =?us-ascii?Q?g+ZbG2CsZmJu+MfqLoykpZ5Db+U4L/Fg7CzTFes8q+exaLHdJb4EE+neU01g?=
 =?us-ascii?Q?77AWjhWegdKUBQ33Abuy50hrJUz80nRVz684Yrkguq7CavlsIFVVF7nTLTdn?=
 =?us-ascii?Q?TQr78lE18LpmWRnrwYdOmsImpbkK/K3MrSIhuQqIuU05S0MGNHKrzW2Yho+x?=
 =?us-ascii?Q?IP2s+iAaT4t4tR6rS/EFeHQrQY5MxNpuQiRtnDHOIaju9uvrOt2Ly7y1yWp6?=
 =?us-ascii?Q?b+4fINTwZJg7JonehC1ET59faK+KwqizcnKWRSd+0v896CFoZACxQKooXVrp?=
 =?us-ascii?Q?5ye9ErJ6YNlGOzb+yM5bVaiDISZadrQLc9McpRUnOOQmZ7/ywwFiUYvugBK5?=
 =?us-ascii?Q?iY7hQH4pDodEFTaCHxWjCoKQrcoi+c91byG7zQK8PuysW5Esd6V/s85QE0ih?=
 =?us-ascii?Q?YdtB+WempiMiqAHGGuF8mkqminv3ewdms8zb48uhGWlHrf5m4JtrH+aXe8KB?=
 =?us-ascii?Q?ejza3JaSM8CxTOcoU8SBoukeZnzvEuVhMZkt1GJBc6Yy9akcS6dZ0VNOkLje?=
 =?us-ascii?Q?3F9a60PXokH7F5f3z0GwpqCNj5medMhYjUgxdiyxUvLQT6jnMQ+bYRpkyAkZ?=
 =?us-ascii?Q?gTd143xZ9xbS1+xu1XtMekZ4/m0F5lPaFdmcAt6SY973xmYKx6H57i7MMqv4?=
 =?us-ascii?Q?i3y7tSYOfDf7XOiGaTkqUjrV0PXtpOE82MLwwcPXhtXcwaAMKD5GLtb2mWGh?=
 =?us-ascii?Q?ssr6h3DMD/NAFZLI9m1bsUfwef1veJdjxSbLgHtcQkEznXKAd+FDq5evSs8V?=
 =?us-ascii?Q?wnfRVvB85DBvJVsWaODro8NCkJqy6ab722LrGktImXH+W67W8IUA6G2rZkxT?=
 =?us-ascii?Q?frlQSHmH4JcAS6tk8Xryj4VTvzPCRSzSP64r/WTUxUYHNJzurYTf51legXFe?=
 =?us-ascii?Q?bz0P1ryjQBDxq3WckMrCOfZlt4PXdj97PulFWE3b02ZIEhbglv10LkQ2J7jB?=
 =?us-ascii?Q?QHb1SAblgTTTijX/Lx69Lgb91A65Hl+lKUvTyQqfY3TyM06FRCI0mqtVvUlm?=
 =?us-ascii?Q?bgH+JcsFzYmBAffqMFynBFSVzMRG9i9A4mH2o7Kx4vz0t8wvGzQOp5lQ82/M?=
 =?us-ascii?Q?Lqz7Enle8lmKGLGvv+FbRjF2Ev+Sa4oOQ1ZQTh/Wg5O7nssi0y0W9YdbwW1Z?=
 =?us-ascii?Q?k2GxPm3pYcx0j42MSXZ1Dzn8ZMGutAabYL7XBmU4ZcuOhGGJYLBLdx7FrAtc?=
 =?us-ascii?Q?biLsGwzR+0L3g4hYn7itFuiWQ/7mtF6nqpPoxYvfFVYbK5MQU//o8NMNuAFE?=
 =?us-ascii?Q?jT7u0cmQuVMd1v14iFjB18ekbXwjQS8j5R/tBIxfoRHo?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2dc29f8c-dc15-4bde-0407-08de2ddd833c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:50:54.7934 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Wg0EsnrbVfAFvoB8qV1t/TZUgExCEX8Hg9UUYHGtL2v5uFRJMuZNEBijn5klFfV/QGFlFdgleAYSryxmT2l8kA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9035
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

The encoder state computation should use the
drm_display_mode::crtc_clock member, instead of the clock member, the
former one possibly having a necessary adjustment wrt. to the latter
due to driver specific constraints. In practice the two values should
not differ at spots changed in this patch, since only MSO and 3D modes
would make them different, neither MSO or 3D relevant here, but still
use the expected crtc_clock version for consistency.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index beda340d05923..d70cb35cf68bc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2050,7 +2050,8 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 					continue;
 			} else {
 				if (!is_bw_sufficient_for_dsc_config(dsc_bpp_x16, link_rate,
-								     lane_count, adjusted_mode->clock,
+								     lane_count,
+								     adjusted_mode->crtc_clock,
 								     pipe_config->output_format,
 								     timeslots))
 					continue;
@@ -2211,7 +2212,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	int bpp_x16;
 	int ret;
 
-	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(display, adjusted_mode->clock,
+	dsc_joiner_max_bpp = get_max_compressed_bpp_with_joiner(display, adjusted_mode->crtc_clock,
 								adjusted_mode->hdisplay,
 								num_joined_pipes);
 	max_bpp_x16 = min(fxp_q4_from_int(dsc_joiner_max_bpp), limits->link.max_bpp_x16);
-- 
2.49.1

