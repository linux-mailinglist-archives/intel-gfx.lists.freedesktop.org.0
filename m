Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5DEA9F265
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 15:31:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1573610E4FC;
	Mon, 28 Apr 2025 13:31:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YsrQgjsa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ED9210E4EF;
 Mon, 28 Apr 2025 13:31:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745847112; x=1777383112;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=Bes/lAgeZoPg/RcNaZohAdfN/IVoZPdhgeZl9xzGRLM=;
 b=YsrQgjsaanl439QxMjVFukTeIpInqlus0jOYSZ0GbrioCsQVmNpHVw5n
 kxfCDffAb4rf1td1Fn7p2Z1H14TPBBNf4eVcd5rJFoOIdV/TUpDBBcMco
 LpptIMnNX83GL/e4Hwa3DDkzGHzlM78AYsPm7NgiemR07PFvIen0Ch6OT
 HgqQ8f5gXd9wcBv+cKLLOTMMCvjkE6lJhAdY0wV3mj3s3v0RzHACmSb2F
 pUJbQ4N3E9/YN2dpg7bBgXv4f7+YvZCZjcQRuEAICeqrPjWM7Htw3KQzf
 afVGv+FTMSIuGQh5fm4giUfY4ynkk65LZRuSuY6VwPcQ88oL3OHXL9Eko g==;
X-CSE-ConnectionGUID: R9IQO+mzTOqaMtRlIQPnYA==
X-CSE-MsgGUID: ddaGGK84Q1CXEj1RwmNSOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51243481"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="51243481"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:31:51 -0700
X-CSE-ConnectionGUID: n3CBBjo+SoOtrYDdBODyHw==
X-CSE-MsgGUID: 0/AoryCBRaazGuNCUKkZ/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="133491470"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:31:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 06:31:49 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 06:31:49 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 06:31:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ODjnc4ydkJoWShMMe+BRlHpHk8nZ1cnbCqIy8qpP7m/THJBHxQ4LeULx5YSjXH5MqB00BPBBH9b5Hcmu/YbsBm4t/jBkYm2bRH8DeLBRt1LoibglXSiX1LyL+a3BBVsLyc8xyvCD57aS+PCic3Hpd1RDJd1bAL8bKVHTKk5XOU+t76eOZSQXDny0oORdjKw2sBQZK/4zozapmHaqyfKaIa9ROEE2XQYWriUza9spWcLSFHQXaCRwv3+SgQ5F5XHyGT4zLjVDuJ1YntrUwaxfNmG/EN7M1OqSmCRDo+JJXrJXlklcyTH8hUHeMciIlS1YiFX1sCAobECbdgfPfH/R6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YbUHDWGnk3aKgsAYk1+GTLxFuo6iDSz6mxNA9Zuhkxs=;
 b=vcZLlECNyd/grhnvWJiCJtQwwYBOd7V1jrgsHWG8xJAZrJ5xpUvHbFTrY2rMGj5Mf0hO3SbLGZ4MIdb7Cu0d1W3mIP8NpchNGnMex2qzJLM7UaOJ9djQH5jlprBIMnq5oEENlcCxOEXj2a7ekPy6ga4sCvbMeGVmfeKBplm5QDzgLwxX8x/8gWCBtM3q9HAlnEY4BQAJ2O8dKLgFYC5TJ02JCgYXB1/iH9jA9qghQXElV8fdQUrnivni4HWYjwKvdJAshUJbHOU+ipFlJhKPa62bs7omfGfGVg6EZsK2+NiLMRqV0s8IJjXWWspQ6O83cT/3jTMfaJLGu32EuOqu8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW5PR11MB5882.namprd11.prod.outlook.com (2603:10b6:303:19e::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.29; Mon, 28 Apr
 2025 13:31:37 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8678.028; Mon, 28 Apr 2025
 13:31:37 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 05/12] drm/i915/dp_mst: Check BW limit on the local MST
 link early
Date: Mon, 28 Apr 2025 16:31:16 +0300
Message-ID: <20250428133135.3396080-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250428133135.3396080-1-imre.deak@intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0067.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:153::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW5PR11MB5882:EE_
X-MS-Office365-Filtering-Correlation-Id: 291082fd-b006-4fe4-0831-08dd86590030
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?u9qiTKq8CBXf2QJtQIrnP5PuNjzL00v8YKIltoKNml9dIoj/HsjVkLO+LA0i?=
 =?us-ascii?Q?ht1e8E7TVgCcG1//9/TMQTAz9zE08bWZYwMPJwJk9Uvl4Nb6hDBKScWQo+Tc?=
 =?us-ascii?Q?N9VvGse0t8BGzbRibascGurcBUwU3TD0QZK8gZUdElfwXTCvQXIQMuzU0AXP?=
 =?us-ascii?Q?f6C26HEGecFHWDeslYf6cu7x4WiuCIP7znLf4cQmpWidi0I9LmiLok9ubc9h?=
 =?us-ascii?Q?GzpOW+HohnukPNVwZ+SLneyXykDrdPT4r/Uv7vpsPDYx8eO4yr/cuq9xOWKI?=
 =?us-ascii?Q?xadVb93oF7BzEvl7F6w94esKdDSgET3u9uAEWc22vA8o3AZameA7b6CzFyhR?=
 =?us-ascii?Q?IpUncdZ3pM/tM4PGgybRiSOfyzZCwtik84bvbg9vmrgs7+62lvQ86vl/Hdp5?=
 =?us-ascii?Q?S9CJ4PC/lhz1S3Ln2yI8Fkvx0nVxZJVA55vk7cswgGVMU+gUVJDmMU/hydA7?=
 =?us-ascii?Q?TMj2+IC0rzNTjkg81KqOcXc6XH0vIR77s0j68g2q97uKiwEeGAeykZMkuFKm?=
 =?us-ascii?Q?AJPrcp3RgE/8zXDj6rAhhXTezcudvba47Z+L+G0QCAaj7Lq6WZlkhttK2Fnw?=
 =?us-ascii?Q?D+qC423XC6JildOGNoEamCNBB2/2Ciq+GPH+rRCuH/qdpWZI1F++jqObs5B8?=
 =?us-ascii?Q?QEZsm2ipdfFcn3dnceq1p6Oht7K6cSyTDCsoGjkYfhsKWoXpwBT1kV4wOUsB?=
 =?us-ascii?Q?Urg5MSAFU4bwoi9ljkud9DTK2J4pU7bm7D/oH+9TJrN/bEpphnKRWNtWlK9M?=
 =?us-ascii?Q?QZbui6YrH+KZ+jz9dwlQjYD2Q/zgRT16gtF9ph/D7JXMR5NAlyPLp8C4qJUn?=
 =?us-ascii?Q?39QnyEKobFFeocZ/dlVvBnF5GGVU19dTycAi7J50jFxlqvRhIS0wjk/dVzAr?=
 =?us-ascii?Q?fys7gYdzg102WvXR2K2soKPfOB3v/b4YNMXeYgFV4gGV1mw3RHcCZqOuwEk0?=
 =?us-ascii?Q?PeFs0TCq80U1PX5YVri7oEG4IO51gzfE4kS7TLKYoF3hQo4EG2qYBgWB+Kcp?=
 =?us-ascii?Q?4D52PB4Y/Zq/FJBPzEEA/0y4h4GXH02xHPXQk2auhQkY83PTS7rpb7roFWr2?=
 =?us-ascii?Q?9kn069JkN7uJWmNuL+LFhVeqK+yg3U2RG2ZlSnk4DV2Upt39ifLDaz46Xvl0?=
 =?us-ascii?Q?LwDLbA5BhAOfcwg/lOXjqO0IfAxJ2mMyg8CpPWEPr8LhFrk7zrZSyCxIoSEc?=
 =?us-ascii?Q?024OcV7BaWuXKMD2RbW02AdL/h2IeDySU7is7p0F2Xefds020EXp8qwJjGSG?=
 =?us-ascii?Q?7F0A3O021qhmoECaNWK6FjUgz1sd7Fr0XdHQeomFQrohuM+pZhwKbnn6IdJq?=
 =?us-ascii?Q?yyKOGgg+LJn9YmCGp57lA3jAupc6fFp+t8dtBUnNbhhWQVxPCpS89mEG9FWH?=
 =?us-ascii?Q?jvtIbtogXNEUjWKIuPqGPUxAnjvmqdnoet2cqysB1Bjz3WGytaIqTHrLFIiY?=
 =?us-ascii?Q?yE0rdTNEHF8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VKm1z/yfGhr+CMNFHpeB6NMk0UZhIJhd190FgLo0Cj5rKYRPXl6lCCCkjWnT?=
 =?us-ascii?Q?pSW9nJkg4SuBPtVbV4KDylnhefZ45PjEYZdoOFBy4wbJTMCBB95WGR2+/S2S?=
 =?us-ascii?Q?3JU5m7YDO9SQ5KlEQ2hRi5d6i2WnIOKRvgKow9TutqnL6Xg1zb4sI3YiUB3t?=
 =?us-ascii?Q?fOZVjyLoE2pktsCzZ0LCZezIdvhvC+J0LOwFwAAmDB8/5z2YTs8NWQsoPXa1?=
 =?us-ascii?Q?W5LQZQ6LmBlW7r63HMZDEHGdC4Esq98/T13fdlUIlwLuBVwkwmKqKk9qQ2iL?=
 =?us-ascii?Q?R8sGc5KCaRY777nKsU+RLtKwFCCynvW4wY13ZQY1ppeZpe06yTjvhRJyKLWd?=
 =?us-ascii?Q?ujMuaxnuxH3LHjy7IYyOfb8OwHJ6MFMT4B5qhC4dsVp+aDsiMeaMMxsPZ0Wy?=
 =?us-ascii?Q?soEG2fFctdMknICkQvjED4eAtTaGh5wdBRyrJqJ2Hcy6/k9/Tukgi5JAYkP1?=
 =?us-ascii?Q?TJjScrHH6ChyY0kMRigvdmj11wHMiBjvfo7grkf1vCM+f23Cvs1PdYqqPMf5?=
 =?us-ascii?Q?BYNF4/9zrKirLFgetuHEUkJJdZH17xABL6Q4ifOf23n1Kus0XK9GLSEnQ8MS?=
 =?us-ascii?Q?JYlZBzVql9naYIPuONNxzCu/QGLfBXJ7CBNObQ44L+s5ph4i4V/w1ambdkAS?=
 =?us-ascii?Q?mu5RwB+K5IEE5ssmTUjtIbeOiugo8wrD+LdCWTlhuegLBTrx0pJpP8coiDo0?=
 =?us-ascii?Q?e3MvGP/VJ0MRCDxKJZrILzw2UO+dH4m6n4f8o/cF/4AZGGF6/PQlFCmMs6wU?=
 =?us-ascii?Q?pmevTOQxXUtWB3azHOTE/AN0hBI1KTdwyFfn7j9DlFoZVpTYLCYnlYhs45P8?=
 =?us-ascii?Q?nBScQEtjhe+4en8KhmRWOJR+DfiCZbAb5Ege0WDlqwNAhGyd5rAcyEw5Ha+i?=
 =?us-ascii?Q?JGOLaLqctC9G0/f6E50UDKBO52JqVIhOwQkvvK6mb9ndbplVujjd9g0RZCHN?=
 =?us-ascii?Q?oiAVwZjklMYd7y0eE4DjKX2uEneiS0QVgmZ9UKzMcC19zJ931u9hMco2qxas?=
 =?us-ascii?Q?nEP4anBSpZIunlz438wMSYWuimH+a+DggoRTNvbxXw+LLMAUqbp9X6gefKsQ?=
 =?us-ascii?Q?k6TzqCWemN8zJQUU6/kslnEvnB1MCsd8xFC6AOEuakziaLrDroWH+3SJjrEZ?=
 =?us-ascii?Q?PmQ0gFV6zFJAFptKNB7GfXo8bquru/Kn5QV8/0UhUh9GUHTsM7bAhyqiljXV?=
 =?us-ascii?Q?h2f3M7MfG/rcJ+Kbs0SPepary7w/+c0YBulrpI1cH1wDiLc03PCW+fdWFUel?=
 =?us-ascii?Q?0GYZq60Kf3FHn3VeZu6mOoL91hnWJj0du342CmPe+Qv+Rs9egS2K4UZASrbE?=
 =?us-ascii?Q?ZvLUdclmonC9N2W29T0gVwz/3+wYK4NGTlo4qPIYES6puhtq5f0idJQKoOma?=
 =?us-ascii?Q?EQcCSQzjSwZk68XwsGitIZCPP/Kt0hroxL4eTxBE7BT6WO9CmuWhLNGVYe6T?=
 =?us-ascii?Q?6zDYeHoNujnBONF5q4hAjoZIDsZ7Nx4u/EZ6cN7JVfgoT0SPl4xdv5Itk99B?=
 =?us-ascii?Q?SjQm5GnLn6FMQ4fme0ank31mRSaEG5yPYHDxrjYpGC5MLiplVfgeSpYPpddm?=
 =?us-ascii?Q?U3CtsyJbAtmy8c2klfEZgPBy3/9xFVGG3L87IHD9?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 291082fd-b006-4fe4-0831-08dd86590030
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2025 13:31:37.1436 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F8KjKSpjfJUjZEOjYlfFpDL2jEtnIHHnZLURpwA8CC8j1hnwH5LHJZV99segTQDDogjkCB5iT55Owt9eixq8eA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5882
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

Check the BW requirement of a selected compressed bpp against the total
MST link BW early. This didn't cause a problem, since all the BW limits
within the MST topology are checked during the later MST topology BW
check. However it doesn't make sense to defer the total link BW check,
since for resolving a BW limit issue due to this later also (a) requires
selecting a pipe to reduce the bpp for, ending up reducing the bpp for
another pipe, which is not ideal (b) requires recomputing the state for
all CRTC/stream's in the topology which may slow down the commit
considerably (especially when using fractional bpps).

Based on the above, check a stream bpp's BW requirement against the MST
link's total BW early.

Ideally drm_dp_atomic_find_time_slots() should check internally the
corresponding PBN/TU slot BW against the total link BW, returning an
error if the check fails, however that change would also affect other
drivers, so leaving this for a follow-up.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 59afb550cd0cc..77acac8963e27 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -412,6 +412,10 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
 			slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst.mgr,
 							      connector->mst.port,
 							      dfixed_trunc(pbn));
+
+			/* TODO: Check this already in drm_dp_atomic_find_time_slots(). */
+			if (slots > mst_state->total_avail_slots)
+				slots = -EINVAL;
 		} else {
 			/* Same as above for remote_tu */
 			crtc_state->dp_m_n.tu = ALIGN(crtc_state->dp_m_n.tu,
-- 
2.44.2

